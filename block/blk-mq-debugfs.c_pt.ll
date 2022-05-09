; ModuleID = '/llk/IR_all_yes/block/blk-mq-debugfs.c_pt.bc'
source_filename = "../block/blk-mq-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__blk_mq_debugfs_rq_show\22, \22a\22\09"
module asm "\09.weak\09__crc___blk_mq_debugfs_rq_show\09\09\09\09"
module asm "\09.long\09__crc___blk_mq_debugfs_rq_show\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_mq_debugfs_rq_show\22\09\09\09\09\09"
module asm "__kstrtabns___blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_mq_debugfs_rq_show\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_debugfs_rq_show\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_debugfs_rq_show\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_debugfs_rq_show\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.spinlock, i32 }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.72, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.72 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ctx = type { %struct.anon.73, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.73 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.show_busy_params = type { ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%p {.op=\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", .cmd_flags=\00", [18 x i8] zeroinitializer }, align 32
@cmd_flag_name = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null, ptr @.str.28, ptr @.str.29], [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", .rq_flags=\00", [19 x i8] zeroinitializer }, align 32
@rqf_name = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr null, ptr @.str.30, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr null, ptr null, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr @.str.46], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", .state=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c", .tag=%d, .internal_tag=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab___blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_mq_debugfs_rq_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_mq_debugfs_rq_show to i32), ptr @__kstrtab___blk_mq_debugfs_rq_show, ptr @__kstrtabns___blk_mq_debugfs_rq_show }, section "___ksymtab_gpl+__blk_mq_debugfs_rq_show", align 4
@__kstrtab_blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_debugfs_rq_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_debugfs_rq_show to i32), ptr @__kstrtab_blk_mq_debugfs_rq_show, ptr @__kstrtabns_blk_mq_debugfs_rq_show }, section "___ksymtab_gpl+blk_mq_debugfs_rq_show", align 4
@blk_mq_debugfs_queue_attrs = internal constant { [7 x %struct.blk_mq_debugfs_attr], [52 x i8] } { [7 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.52, i16 256, ptr @queue_poll_stat_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.53, i16 256, ptr null, ptr null, ptr @queue_requeue_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.54, i16 384, ptr @queue_pm_only_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.55, i16 384, ptr @queue_state_show, ptr @queue_state_write, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.56, i16 384, ptr @queue_write_hint_show, ptr @queue_write_hint_store, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.57, i16 256, ptr @queue_zone_wlock_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hctx%u\00", [25 x i8] zeroinitializer }, align 32
@blk_mq_debugfs_hctx_attrs = internal constant { [14 x %struct.blk_mq_debugfs_attr], [72 x i8] } { [14 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.55, i16 256, ptr @hctx_state_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.102, i16 256, ptr @hctx_flags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.103, i16 256, ptr null, ptr null, ptr @hctx_dispatch_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.104, i16 256, ptr @hctx_busy_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.105, i16 256, ptr @hctx_ctx_map_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.106, i16 256, ptr @hctx_tags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.107, i16 256, ptr @hctx_tags_bitmap_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.108, i16 256, ptr @hctx_sched_tags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.109, i16 256, ptr @hctx_sched_tags_bitmap_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.89, i16 384, ptr @hctx_run_show, ptr @hctx_run_write, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.110, i16 256, ptr @hctx_active_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.111, i16 256, ptr @hctx_dispatch_busy_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.112, i16 256, ptr @hctx_type_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sched\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rqos\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FAILFAST_DEV\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FAILFAST_TRANSPORT\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FAILFAST_DRIVER\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SYNC\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"META\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PRIO\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOMERGE\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INTEGRITY\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FUA\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PREFLUSH\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAHEAD\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BACKGROUND\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOWAIT\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOUNMAP\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"POLLED\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STARTED\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOFTBARRIER\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FLUSH_SEQ\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIXED_MERGE\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MQ_INFLIGHT\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DONTPREP\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUIET\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ELVPRIV\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO_STAT\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PM\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HASHED\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STATS\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPECIAL_PAYLOAD\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ZONE_WRITE_LOCKED\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MQ_POLL_SLEPT\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ELV\00", [28 x i8] zeroinitializer }, align 32
@blk_mq_rq_state_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"block/blk-mq-debugfs.c\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"(?)\00", [28 x i8] zeroinitializer }, align 32
@blk_mq_rq_state_name_array = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_flight\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@blk_mq_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @blk_mq_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blk_mq_debugfs_open, ptr null, ptr @blk_mq_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@blk_mq_debugfs_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"poll_stat\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"requeue_list\00", [19 x i8] zeroinitializer }, align 32
@queue_requeue_list_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @queue_requeue_list_start, ptr @queue_requeue_list_stop, ptr @queue_requeue_list_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm_only\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_hints\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zone_wlock\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read  (%d Bytes): \00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write (%d Bytes): \00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"samples=%d, mean=%llu, min=%llu, max=%llu\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"samples=0\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@blk_queue_flag_name = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.64, ptr @.str.65, ptr null, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.39, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.23, ptr @.str.80, ptr @.str.42, ptr null, ptr @.str.81, ptr null, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STOPPED\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DYING\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NOMERGES\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SAME_COMP\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FAIL_IO\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NONROT\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISCARD\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOXMERGES\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADD_RANDOM\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECERASE\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SAME_FORCE\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEAD\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INIT_DONE\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STABLE_WRITES\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"POLL\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WC\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAX\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REGISTERED\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUIESCED\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI_P2PDMA\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ZONE_RESETALL\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RQ_ALLOC_TIME\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HCTX_ACTIVE\00", [20 x i8] zeroinitializer }, align 32
@queue_state_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.47, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: operation too long\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"queue_state_write\00", [46 x i8] zeroinitializer }, align 32
@queue_state_write._entry_ptr = internal global ptr @queue_state_write._entry, section ".printk_index", align 4
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kick\00", [27 x i8] zeroinitializer }, align 32
@queue_state_write._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.47, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: unsupported operation '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@queue_state_write._entry_ptr.94 = internal global ptr @queue_state_write._entry.92, section ".printk_index", align 4
@queue_state_write._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.47, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: use 'run', 'start' or 'kick'\0A\00", [60 x i8] zeroinitializer }, align 32
@queue_state_write._entry_ptr.97 = internal global ptr @queue_state_write._entry.95, section ".printk_index", align 4
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hint%d: %llu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dispatch\00", [23 x i8] zeroinitializer }, align 32
@hctx_dispatch_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @hctx_dispatch_start, ptr @hctx_dispatch_stop, ptr @hctx_dispatch_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctx_map\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tags\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tags_bitmap\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sched_tags\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sched_tags_bitmap\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dispatch_busy\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TAG_ACTIVE\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCHED_RESTART\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INACTIVE\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc_policy=\00", [18 x i8] zeroinitializer }, align 32
@alloc_policy_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.118, ptr @.str.119], [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@hctx_flag_name = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr null, ptr @.str.124, ptr @.str.125], [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIFO\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RR\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SHOULD_MERGE\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TAG_QUEUE_SHARED\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STACKING\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TAG_HCTX_SHARED\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BLOCKING\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NO_SCHED\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nr_tags=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr_reserved_tags=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"active_queues=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0Abitmap_tags:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0Abreserved_tags:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@hctx_types = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136], [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%u\00", [26 x i8] zeroinitializer }, align 32
@blk_mq_debugfs_ctx_attrs = internal constant { [4 x %struct.blk_mq_debugfs_attr], [48 x i8] } { [4 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.138, i16 256, ptr null, ptr null, ptr @ctx_default_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.139, i16 256, ptr null, ptr null, ptr @ctx_read_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.140, i16 256, ptr null, ptr null, ptr @ctx_poll_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"default_rq_list\00", [16 x i8] zeroinitializer }, align 32
@ctx_default_rq_list_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ctx_default_rq_list_start, ptr @ctx_default_rq_list_stop, ptr @ctx_default_rq_list_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_rq_list\00", [19 x i8] zeroinitializer }, align 32
@ctx_read_rq_list_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ctx_read_rq_list_start, ptr @ctx_read_rq_list_stop, ptr @ctx_read_rq_list_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poll_rq_list\00", [19 x i8] zeroinitializer }, align 32
@ctx_poll_rq_list_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ctx_poll_rq_list_start, ptr @ctx_poll_rq_list_stop, ptr @ctx_poll_rq_list_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wbt\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cost\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ioprio\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.blk_mq_debugfs_register_rqos = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 338, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 339, i32 21 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 340, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 342, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 343, i32 14 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"cmd_flag_name\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 276, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 346, i32 14 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"rqf_name\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 297, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 349, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 350, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 354, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"blk_mq_debugfs_queue_attrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 209, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 764, i32 31 }
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"blk_mq_debugfs_hctx_attrs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 670, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 812, i32 44 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 853, i32 44 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 89, i32 16 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 94, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 277, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 278, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 279, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 280, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 281, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 282, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 283, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 284, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 285, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 286, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 287, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 288, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 289, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 290, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 291, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 292, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 298, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 299, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 300, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 301, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 302, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 303, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 304, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 305, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 306, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 307, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 308, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 309, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 310, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 311, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 312, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 313, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 314, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 326, i32 6 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 328, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant [27 x i8] c"blk_mq_rq_state_name_array\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 318, i32 26 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 319, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 320, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 321, i32 21 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"blk_mq_debugfs_fops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 662, i32 37 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 210, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 211, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant [27 x i8] c"queue_requeue_list_seq_ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 72, i32 36 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 212, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 213, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 214, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 215, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 37, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 39, i32 15 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 41, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 21, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 24, i32 15 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 103, i32 16 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c"blk_queue_flag_name\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 108, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 109, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 110, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 111, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 112, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 113, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 114, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 116, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 117, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 118, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 119, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 120, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 121, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 122, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 123, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 124, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 125, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 127, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 129, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 130, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 131, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 132, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 133, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 134, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 164, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 171, i32 17 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 173, i32 24 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 175, i32 24 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 178, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 180, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 156, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 192, i32 17 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 672, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 673, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [22 x i8] c"hctx_dispatch_seq_ops\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 389, i32 36 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 674, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 675, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 676, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 677, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 678, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 679, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 681, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 682, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 683, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 222, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 223, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 224, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 261, i32 14 }
@___asan_gen_.515 = private unnamed_addr constant [18 x i8] c"alloc_policy_name\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 239, i32 26 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 267, i32 14 }
@___asan_gen_.521 = private unnamed_addr constant [15 x i8] c"hctx_flag_name\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 246, i32 26 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 240, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 241, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 247, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 248, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 251, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 252, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 249, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 250, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 453, i32 16 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 454, i32 16 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 455, i32 16 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 458, i32 14 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 462, i32 15 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 539, i32 16 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 564, i32 16 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 438, i32 16 }
@___asan_gen_.572 = private unnamed_addr constant [11 x i8] c"hctx_types\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 427, i32 26 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 428, i32 24 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 429, i32 21 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 430, i32 21 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 751, i32 31 }
@___asan_gen_.587 = private unnamed_addr constant [25 x i8] c"blk_mq_debugfs_ctx_attrs\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 687, i32 41 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 688, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant [28 x i8] c"ctx_default_rq_list_seq_ops\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 601, i32 1 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 689, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant [25 x i8] c"ctx_read_rq_list_seq_ops\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 602, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 690, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant [25 x i8] c"ctx_poll_rq_list_seq_ops\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 603, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 827, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 829, i32 10 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 831, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 833, i32 10 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.621 = private constant [26 x i8] c"../block/blk-mq-debugfs.c\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 835, i32 9 }
@___asan_gen_.623 = private unnamed_addr constant [42 x i8] c"switch.table.blk_mq_debugfs_register_rqos\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__ksymtab___blk_mq_debugfs_rq_show, ptr @__ksymtab_blk_mq_debugfs_rq_show, ptr @queue_state_write._entry, ptr @queue_state_write._entry.92, ptr @queue_state_write._entry.95, ptr @queue_state_write._entry_ptr, ptr @queue_state_write._entry_ptr.94, ptr @queue_state_write._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cmd_flag_name, ptr @.str.5, ptr @rqf_name, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @blk_mq_debugfs_queue_attrs, ptr @.str.9, ptr @blk_mq_debugfs_hctx_attrs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @blk_mq_rq_state_name_array, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @blk_mq_debugfs_fops, ptr @.str.52, ptr @.str.53, ptr @queue_requeue_list_seq_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @blk_queue_flag_name, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @hctx_dispatch_seq_ops, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @alloc_policy_name, ptr @.str.117, ptr @hctx_flag_name, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @hctx_types, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @blk_mq_debugfs_ctx_attrs, ptr @.str.138, ptr @ctx_default_rq_list_seq_ops, ptr @.str.139, ptr @ctx_read_rq_list_seq_ops, ptr @.str.140, ptr @ctx_poll_rq_list_seq_ops, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @switch.table.blk_mq_debugfs_register_rqos], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_flag_name to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rqf_name to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_debugfs_queue_attrs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_debugfs_hctx_attrs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_rq_state_name_array to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_requeue_list_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_queue_flag_name to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_state_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_state_write._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_state_write._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hctx_dispatch_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_policy_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hctx_flag_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hctx_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_debugfs_ctx_attrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_default_rq_list_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_read_rq_list_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_poll_rq_list_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.blk_mq_debugfs_register_rqos to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %mq_ops1 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_ops1, align 8
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %5, 255
  %call = tail call ptr @blk_op_str(i32 noundef %and) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, ptr noundef %rq) #9
  %call2 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(8) @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %and) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, ptr noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #9
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %and4 = and i32 %7, -256
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.03.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sep.0.off02.i = phi i1 [ false, %if.end ], [ %sep.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.03.i
  %and.i = and i32 %and4, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %sep.0.off02.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %i.03.i)
  %cmp4.i = icmp ult i32 %i.03.i, 25
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.else.i_crit_edge

if.end3.i.if.else.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %arrayidx.i = getelementptr ptr, ptr @cmd_flag_name, i32 %i.03.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %9) #9
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end3.i.if.else.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %i.03.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %sep.1.off0.i = phi i1 [ true, %if.then6.i ], [ true, %if.else.i ], [ %sep.0.off02.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %blk_flags_show.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

blk_flags_show.exit:                              ; preds = %for.inc.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #9
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %10 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_flags, align 8
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i51.for.body.i38_crit_edge, %blk_flags_show.exit
  %i.03.i33 = phi i32 [ 0, %blk_flags_show.exit ], [ %inc.i49, %for.inc.i51.for.body.i38_crit_edge ]
  %sep.0.off02.i34 = phi i1 [ false, %blk_flags_show.exit ], [ %sep.1.off0.i48, %for.inc.i51.for.body.i38_crit_edge ]
  %shl.i35 = shl nuw i32 1, %i.03.i33
  %and.i36 = and i32 %shl.i35, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %for.body.i38.for.inc.i51_crit_edge, label %if.end.i39

for.body.i38.for.inc.i51_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i51

if.end.i39:                                       ; preds = %for.body.i38
  br i1 %sep.0.off02.i34, label %if.then2.i40, label %if.end.i39.if.end3.i42_crit_edge

if.end.i39.if.end3.i42_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i42

if.then2.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.end3.i42

if.end3.i42:                                      ; preds = %if.then2.i40, %if.end.i39.if.end3.i42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.03.i33)
  %cmp4.i41 = icmp ult i32 %i.03.i33, 23
  br i1 %cmp4.i41, label %land.lhs.true.i45, label %if.end3.i42.if.else.i47_crit_edge

if.end3.i42.if.else.i47_crit_edge:                ; preds = %if.end3.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i47

land.lhs.true.i45:                                ; preds = %if.end3.i42
  %arrayidx.i43 = getelementptr ptr, ptr @rqf_name, i32 %i.03.i33
  %12 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i43, align 4
  %tobool5.not.i44 = icmp eq ptr %13, null
  br i1 %tobool5.not.i44, label %land.lhs.true.i45.if.else.i47_crit_edge, label %if.then6.i46

land.lhs.true.i45.if.else.i47_crit_edge:          ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i47

if.then6.i46:                                     ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %13) #9
  br label %for.inc.i51

if.else.i47:                                      ; preds = %land.lhs.true.i45.if.else.i47_crit_edge, %if.end3.i42.if.else.i47_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %i.03.i33) #9
  br label %for.inc.i51

for.inc.i51:                                      ; preds = %if.else.i47, %if.then6.i46, %for.body.i38.for.inc.i51_crit_edge
  %sep.1.off0.i48 = phi i1 [ true, %if.then6.i46 ], [ true, %if.else.i47 ], [ %sep.0.off02.i34, %for.body.i38.for.inc.i51_crit_edge ]
  %inc.i49 = add nuw nsw i32 %i.03.i33, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 32
  br i1 %exitcond.not.i50, label %blk_flags_show.exit52, label %for.inc.i51.for.body.i38_crit_edge

for.inc.i51.for.body.i38_crit_edge:               ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i38

blk_flags_show.exit52:                            ; preds = %for.inc.i51
  %state.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 25
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp ugt i32 %15, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %blk_flags_show.exit52
  %.b41.i = load i1, ptr @blk_mq_rq_state_name.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.blk_mq_rq_state_name.exit_crit_edge, label %if.then.i, !prof !341

land.rhs.i.blk_mq_rq_state_name.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_rq_state_name.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @blk_mq_rq_state_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef null) #9
  br label %blk_mq_rq_state_name.exit

if.end37.i:                                       ; preds = %blk_flags_show.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i53 = getelementptr [3 x ptr], ptr @blk_mq_rq_state_name_array, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i53, align 4
  br label %blk_mq_rq_state_name.exit

blk_mq_rq_state_name.exit:                        ; preds = %if.end37.i, %if.then.i, %land.rhs.i.blk_mq_rq_state_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end37.i ], [ @.str.48, %if.then.i ], [ @.str.48, %land.rhs.i.blk_mq_rq_state_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i) #9
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %18 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag, align 4
  %internal_tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 6
  %20 = ptrtoint ptr %internal_tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %internal_tag, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef %21) #9
  %show_rq = getelementptr inbounds %struct.blk_mq_ops, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %show_rq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %show_rq, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %blk_mq_rq_state_name.exit.if.end11_crit_edge, label %if.then9

blk_mq_rq_state_name.exit.if.end11_crit_edge:     ; preds = %blk_mq_rq_state_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %blk_mq_rq_state_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %m, ptr noundef %rq) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %blk_mq_rq_state_name.exit.if.end11_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_op_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -56
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 64
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.debugfs_create_files.exit_crit_edge, label %if.end.i

entry.debugfs_create_files.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %debugfs_create_files.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %q, ptr %i_private.i, align 4
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef nonnull @blk_mq_debugfs_queue_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 384, ptr noundef nonnull %1, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 384, ptr noundef nonnull %1, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 3), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 384, ptr noundef nonnull %1, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 4), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef nonnull %1, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 5), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  br label %debugfs_create_files.exit

debugfs_create_files.exit:                        ; preds = %if.end.i, %entry.debugfs_create_files.exit_crit_edge
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %5 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %debugfs_create_files.exit.if.end_crit_edge, label %land.lhs.true

debugfs_create_files.exit.if.end_crit_edge:       ; preds = %debugfs_create_files.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %debugfs_create_files.exit
  %sched_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 65
  %7 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sched_debugfs_dir, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not.i37 = icmp eq ptr %10, null
  br i1 %tobool.not.i37, label %if.then.if.end_crit_edge, label %if.end.i38

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i38:                                       ; preds = %if.then
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %queue_debugfs_attrs.i = getelementptr inbounds %struct.elevator_type, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %queue_debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_debugfs_attrs.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i38.if.end_crit_edge, label %if.end3.i

if.end.i38.if.end_crit_edge:                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i38
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %10) #9
  %15 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %sched_debugfs_dir, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i, null
  %cmp.i.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end3.i.if.end_crit_edge, label %if.end.i.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.end3.i
  %16 = ptrtoint ptr %queue_debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue_debugfs_attrs.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 54
  %20 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %q, ptr %i_private.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 4
  %tobool.not10.i.i = icmp eq ptr %22, null
  br i1 %tobool.not10.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %23 = phi ptr [ %27, %for.body.i.i.for.body.i.i_crit_edge ], [ %22, %if.end.i.i.for.body.i.i_crit_edge ]
  %attr.addr.011.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %17, %if.end.i.i.for.body.i.i_crit_edge ]
  %mode.i.i = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mode.i.i, align 4
  %call3.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull %23, i16 noundef zeroext %25, ptr noundef %call.i, ptr noundef %attr.addr.011.i.i, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %incdec.ptr.i.i = getelementptr %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i39, label %for.body.i.i.if.end_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge, %if.end.i38.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %debugfs_create_files.exit.if.end_crit_edge
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %28 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp61.not = icmp eq i32 %29, 0
  br i1 %cmp61.not, label %if.end.for.end_crit_edge, label %land.rhs.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.062 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %30 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %i.062
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %debugfs_dir3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %33, i32 0, i32 29
  %34 = ptrtoint ptr %debugfs_dir3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs_dir3, align 4
  %tobool4.not = icmp eq ptr %35, null
  br i1 %tobool4.not, label %if.then5, label %land.rhs.if.end6_crit_edge

land.rhs.if.end6_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @blk_mq_debugfs_register_hctx(ptr noundef %q, ptr noundef %33)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.rhs.if.end6_crit_edge
  %36 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %elevator, align 4
  %tobool8.not = icmp eq ptr %37, null
  br i1 %tobool8.not, label %if.end6.for.inc_crit_edge, label %land.lhs.true9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true9:                                   ; preds = %if.end6
  %sched_debugfs_dir10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %33, i32 0, i32 30
  %38 = ptrtoint ptr %sched_debugfs_dir10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sched_debugfs_dir10, align 8
  %tobool11.not = icmp eq ptr %39, null
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true9
  %40 = ptrtoint ptr %debugfs_dir3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debugfs_dir3, align 4
  %tobool.not.i41 = icmp eq ptr %41, null
  br i1 %tobool.not.i41, label %if.then12.for.inc_crit_edge, label %if.end.i44

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i44:                                       ; preds = %if.then12
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  %hctx_debugfs_attrs.i = getelementptr inbounds %struct.elevator_type, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %hctx_debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hctx_debugfs_attrs.i, align 4
  %tobool1.not.i43 = icmp eq ptr %45, null
  br i1 %tobool1.not.i43, label %if.end.i44.for.inc_crit_edge, label %if.end3.i50

if.end.i44.for.inc_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3.i50:                                      ; preds = %if.end.i44
  %call.i45 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %41) #9
  %46 = ptrtoint ptr %sched_debugfs_dir10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i45, ptr %sched_debugfs_dir10, align 8
  %tobool.not.i.i.i47 = icmp eq ptr %call.i45, null
  %cmp.i.i.i48 = icmp ugt ptr %call.i45, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i49 = or i1 %tobool.not.i.i.i47, %cmp.i.i.i48
  br i1 %spec.select.i.i.i49, label %if.end3.i50.for.inc_crit_edge, label %if.end.i.i54

if.end3.i50.for.inc_crit_edge:                    ; preds = %if.end3.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i54:                                     ; preds = %if.end3.i50
  %47 = ptrtoint ptr %hctx_debugfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hctx_debugfs_attrs.i, align 4
  %d_inode.i.i.i51 = getelementptr inbounds %struct.dentry, ptr %call.i45, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i.i51, align 8
  %i_private.i.i52 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 54
  %51 = ptrtoint ptr %i_private.i.i52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %33, ptr %i_private.i.i52, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %48, align 4
  %tobool.not10.i.i53 = icmp eq ptr %53, null
  br i1 %tobool.not10.i.i53, label %if.end.i.i54.for.inc_crit_edge, label %if.end.i.i54.for.body.i.i60_crit_edge

if.end.i.i54.for.body.i.i60_crit_edge:            ; preds = %if.end.i.i54
  br label %for.body.i.i60

if.end.i.i54.for.inc_crit_edge:                   ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i.i60:                                   ; preds = %for.body.i.i60.for.body.i.i60_crit_edge, %if.end.i.i54.for.body.i.i60_crit_edge
  %54 = phi ptr [ %58, %for.body.i.i60.for.body.i.i60_crit_edge ], [ %53, %if.end.i.i54.for.body.i.i60_crit_edge ]
  %attr.addr.011.i.i55 = phi ptr [ %incdec.ptr.i.i58, %for.body.i.i60.for.body.i.i60_crit_edge ], [ %48, %if.end.i.i54.for.body.i.i60_crit_edge ]
  %mode.i.i56 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i.i55, i32 0, i32 1
  %55 = ptrtoint ptr %mode.i.i56 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mode.i.i56, align 4
  %call3.i.i57 = tail call ptr @debugfs_create_file(ptr noundef nonnull %54, i16 noundef zeroext %56, ptr noundef %call.i45, ptr noundef %attr.addr.011.i.i55, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %incdec.ptr.i.i58 = getelementptr %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i.i55, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i.i58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %incdec.ptr.i.i58, align 4
  %tobool.not.i.i59 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i59, label %for.body.i.i60.for.inc_crit_edge, label %for.body.i.i60.for.body.i.i60_crit_edge

for.body.i.i60.for.body.i.i60_crit_edge:          ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i60

for.body.i.i60.for.inc_crit_edge:                 ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %for.body.i.i60.for.inc_crit_edge, %if.end.i.i54.for.inc_crit_edge, %if.end3.i50.for.inc_crit_edge, %if.end.i44.for.inc_crit_edge, %if.then12.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %inc = add nuw i32 %i.062, 1
  %59 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %61 = ptrtoint ptr %rq_qos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rq_qos, align 4
  %tobool14.not = icmp eq ptr %62, null
  br i1 %tobool14.not, label %for.end.if.end18_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %rqos.064 = phi ptr [ %64, %while.body.while.body_crit_edge ], [ %62, %for.end.while.body_crit_edge ]
  tail call void @blk_mq_debugfs_register_rqos(ptr noundef nonnull %rqos.064)
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.064, i32 0, i32 3
  %63 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %next, align 4
  %tobool17.not = icmp eq ptr %64, null
  br i1 %tobool17.not, label %while.body.if.end18_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %while.body.if.end18_crit_edge, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_sched(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 64
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %queue_debugfs_attrs = getelementptr inbounds %struct.elevator_type, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue_debugfs_attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_debugfs_attrs, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #9
  %sched_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 65
  %8 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %sched_debugfs_dir, align 4
  %tobool.not.i.i = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %queue_debugfs_attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_debugfs_attrs, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %q, ptr %i_private.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %tobool.not10.i = icmp eq ptr %15, null
  br i1 %tobool.not10.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %16 = phi ptr [ %20, %for.body.i.for.body.i_crit_edge ], [ %15, %if.end.i.for.body.i_crit_edge ]
  %attr.addr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %10, %if.end.i.for.body.i_crit_edge ]
  %mode.i = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 0, i32 1
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mode.i, align 4
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull %16, i16 noundef zeroext %18, ptr noundef %call, ptr noundef %attr.addr.011.i, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %incdec.ptr.i = getelementptr %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_hctx(ptr nocapture noundef readonly %q, ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [20 x i8], align 1
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #9
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %1 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %queue_num, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef %2)
  %debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 64
  %3 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_dir, align 8
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %4) #9
  %debugfs_dir3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 29
  %5 = ptrtoint ptr %debugfs_dir3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %debugfs_dir3, align 4
  %tobool.not.i.i = icmp eq ptr %call2, null
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.debugfs_create_files.exit_crit_edge, label %if.end.i

entry.debugfs_create_files.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %debugfs_create_files.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hctx, ptr %i_private.i, align 4
  %call3.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef nonnull @blk_mq_debugfs_hctx_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.102, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.103, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.3 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.104, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 3), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.105, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 4), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.106, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 5), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.6 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.107, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 6), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.108, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 7), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.8 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.109, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 8), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.9 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.89, i16 noundef zeroext 384, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 9), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.10 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.110, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 10), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.11 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.111, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 11), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.12 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.112, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 12), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  br label %debugfs_create_files.exit

debugfs_create_files.exit:                        ; preds = %if.end.i, %entry.debugfs_create_files.exit_crit_edge
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 14
  %9 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nr_ctx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp15.not = icmp eq i16 %10, 0
  br i1 %cmp15.not, label %debugfs_create_files.exit.for.end_crit_edge, label %for.body.lr.ph

debugfs_create_files.exit.for.end_crit_edge:      ; preds = %debugfs_create_files.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %debugfs_create_files.exit
  %ctxs = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %blk_mq_debugfs_register_ctx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %blk_mq_debugfs_register_ctx.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %ctxs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctxs, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.016
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name.i) #9
  %cpu.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %14, i32 0, i32 1
  %15 = call ptr @memset(ptr %name.i, i32 255, i32 20)
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 128
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 20, ptr noundef nonnull @.str.137, i32 noundef %17) #9
  %18 = ptrtoint ptr %debugfs_dir3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_dir3, align 4
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %19) #9
  %tobool.not.i.i.i = icmp eq ptr %call2.i, null
  %cmp.i.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body.blk_mq_debugfs_register_ctx.exit_crit_edge, label %if.end.i.i

for.body.blk_mq_debugfs_register_ctx.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_mq_debugfs_register_ctx.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 54
  %22 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %14, ptr %i_private.i.i, align 4
  %call3.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.138, i16 noundef zeroext 256, ptr noundef nonnull %call2.i, ptr noundef nonnull @blk_mq_debugfs_ctx_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.1.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.139, i16 noundef zeroext 256, ptr noundef nonnull %call2.i, ptr noundef getelementptr inbounds ([4 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_ctx_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %call3.i.2.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.140, i16 noundef zeroext 256, ptr noundef nonnull %call2.i, ptr noundef getelementptr inbounds ([4 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_ctx_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #9
  br label %blk_mq_debugfs_register_ctx.exit

blk_mq_debugfs_register_ctx.exit:                 ; preds = %if.end.i.i, %for.body.blk_mq_debugfs_register_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i) #9
  %inc = add nuw nsw i32 %i.016, 1
  %23 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_ctx, align 2
  %conv = zext i16 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %blk_mq_debugfs_register_ctx.exit.for.body_crit_edge, label %blk_mq_debugfs_register_ctx.exit.for.end_crit_edge

blk_mq_debugfs_register_ctx.exit.for.end_crit_edge: ; preds = %blk_mq_debugfs_register_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

blk_mq_debugfs_register_ctx.exit.for.body_crit_edge: ; preds = %blk_mq_debugfs_register_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %blk_mq_debugfs_register_ctx.exit.for.end_crit_edge, %debugfs_create_files.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_sched_hctx(ptr nocapture noundef readonly %q, ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 29
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hctx_debugfs_attrs = getelementptr inbounds %struct.elevator_type, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %hctx_debugfs_attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hctx_debugfs_attrs, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #9
  %sched_debugfs_dir = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 30
  %8 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %sched_debugfs_dir, align 8
  %tobool.not.i.i = icmp eq ptr %call, null
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %hctx_debugfs_attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hctx_debugfs_attrs, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hctx, ptr %i_private.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %tobool.not10.i = icmp eq ptr %15, null
  br i1 %tobool.not10.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %16 = phi ptr [ %20, %for.body.i.for.body.i_crit_edge ], [ %15, %if.end.i.for.body.i_crit_edge ]
  %attr.addr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %10, %if.end.i.for.body.i_crit_edge ]
  %mode.i = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 0, i32 1
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mode.i, align 4
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull %16, i16 noundef zeroext %18, ptr noundef %call, ptr noundef %attr.addr.011.i, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %incdec.ptr.i = getelementptr %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_rqos(ptr noundef %rqos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q1 = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 1
  %0 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q1, align 4
  %id = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %entry.rq_qos_id_to_name.exit_crit_edge

entry.rq_qos_id_to_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rq_qos_id_to_name.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.blk_mq_debugfs_register_rqos, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rq_qos_id_to_name.exit

rq_qos_id_to_name.exit:                           ; preds = %switch.lookup, %entry.rq_qos_id_to_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.145, %entry.rq_qos_id_to_name.exit_crit_edge ]
  %debugfs_dir = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_dir, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.lhs.false, label %rq_qos_id_to_name.exit.cleanup_crit_edge

rq_qos_id_to_name.exit.cleanup_crit_edge:         ; preds = %rq_qos_id_to_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %rq_qos_id_to_name.exit
  %8 = ptrtoint ptr %rqos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rqos, align 4
  %debugfs_attrs = getelementptr inbounds %struct.rq_qos_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %debugfs_attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_attrs, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rqos_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %rqos_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rqos_debugfs_dir, align 8
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %debugfs_dir5 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 64
  %14 = ptrtoint ptr %debugfs_dir5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_dir5, align 8
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %15) #9
  %16 = ptrtoint ptr %rqos_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %rqos_debugfs_dir, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q1, align 4
  %rqos_debugfs_dir10 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 66
  %19 = ptrtoint ptr %rqos_debugfs_dir10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rqos_debugfs_dir10, align 8
  %call11 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %retval.0.i, ptr noundef %20) #9
  %21 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %debugfs_dir, align 4
  %tobool.not.i.i = icmp eq ptr %call11, null
  %cmp.i.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %22 = ptrtoint ptr %rqos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rqos, align 4
  %debugfs_attrs15 = getelementptr inbounds %struct.rq_qos_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %debugfs_attrs15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs_attrs15, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 54
  %28 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rqos, ptr %i_private.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %tobool.not10.i = icmp eq ptr %30, null
  br i1 %tobool.not10.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %31 = phi ptr [ %35, %for.body.i.for.body.i_crit_edge ], [ %30, %if.end.i.for.body.i_crit_edge ]
  %attr.addr.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %25, %if.end.i.for.body.i_crit_edge ]
  %mode.i = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 0, i32 1
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode.i, align 4
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull %31, i16 noundef zeroext %33, ptr noundef %call11, ptr noundef %attr.addr.011.i, ptr noundef nonnull @blk_mq_debugfs_fops) #9
  %incdec.ptr.i = getelementptr %struct.blk_mq_debugfs_attr, ptr %attr.addr.011.i, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %rq_qos_id_to_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister(ptr nocapture noundef writeonly %q) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 65
  %0 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sched_debugfs_dir, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_hctx(ptr nocapture noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 29
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %sched_debugfs_dir = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 30
  %2 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sched_debugfs_dir, align 8
  %3 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %debugfs_dir, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_hctxs(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %0 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @blk_mq_debugfs_register_hctx(ptr noundef %q, ptr noundef %5)
  %inc = add nuw i32 %i.06, 1
  %6 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_hctxs(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %0 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %debugfs_dir.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %sched_debugfs_dir.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %sched_debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sched_debugfs_dir.i, align 8
  %9 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %debugfs_dir.i, align 4
  %inc = add nuw i32 %i.05, 1
  %10 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_sched(ptr nocapture noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 65
  %0 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sched_debugfs_dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_rqos(ptr nocapture noundef %rqos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.rq_qos, ptr %rqos, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_queue_rqos(ptr nocapture noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rqos_debugfs_dir = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 66
  %0 = ptrtoint ptr %rqos_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos_debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %rqos_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rqos_debugfs_dir, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_sched_hctx(ptr nocapture noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_debugfs_dir = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 30
  %0 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %sched_debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sched_debugfs_dir, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private, align 4
  %cmp = icmp eq ptr %3, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %write = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 %13(ptr noundef %11, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_private1 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %i_private1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private1, align 4
  %seq_ops = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %seq_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seq_ops, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %private, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %show = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %show, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %land.rhs, label %if.end48

land.rhs:                                         ; preds = %if.end6
  %.b63 = load i1, ptr @blk_mq_debugfs_open.__already_done, align 1
  br i1 %.b63, label %land.rhs.cleanup_crit_edge, label %if.then16, !prof !341

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @blk_mq_debugfs_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 646, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @blk_mq_debugfs_show, ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then16, %land.rhs.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end48 ], [ 0, %if.then5 ], [ %call3, %if.then.cleanup_crit_edge ], [ -1, %if.then16 ], [ -1, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %show = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 54
  %10 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private, align 4
  %show = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %show, align 4
  %call1 = tail call i32 %13(ptr noundef %11, ptr noundef %m) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_poll_stat_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_stat = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 28
  %0 = ptrtoint ptr %poll_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poll_stat, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %print_stat.exit27.for.body_crit_edge, %entry.for.body_crit_edge
  %bucket.028 = phi i32 [ %inc, %print_stat.exit27.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shl = shl i32 512, %bucket.028
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %shl) #9
  %2 = ptrtoint ptr %poll_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_stat, align 4
  %mul = shl nuw i32 %bucket.028, 1
  %nr_samples.i = getelementptr %struct.blk_rq_stat, ptr %3, i32 %mul, i32 3
  %4 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_samples.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.blk_rq_stat, ptr %3, i32 %mul
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %min.i = getelementptr %struct.blk_rq_stat, ptr %3, i32 %mul, i32 1
  %8 = ptrtoint ptr %min.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %min.i, align 8
  %max.i = getelementptr %struct.blk_rq_stat, ptr %3, i32 %mul, i32 2
  %10 = ptrtoint ptr %max.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #9
  br label %print_stat.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #9
  br label %print_stat.exit

print_stat.exit:                                  ; preds = %if.else.i, %if.then.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %shl) #9
  %12 = ptrtoint ptr %poll_stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %poll_stat, align 4
  %add6 = or i32 %mul, 1
  %nr_samples.i21 = getelementptr %struct.blk_rq_stat, ptr %13, i32 %add6, i32 3
  %14 = ptrtoint ptr %nr_samples.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_samples.i21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i22 = icmp eq i32 %15, 0
  br i1 %tobool.not.i22, label %if.else.i26, label %if.then.i25

if.then.i25:                                      ; preds = %print_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7 = getelementptr %struct.blk_rq_stat, ptr %13, i32 %add6
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx7, align 8
  %min.i23 = getelementptr %struct.blk_rq_stat, ptr %13, i32 %add6, i32 1
  %18 = ptrtoint ptr %min.i23 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %min.i23, align 8
  %max.i24 = getelementptr %struct.blk_rq_stat, ptr %13, i32 %add6, i32 2
  %20 = ptrtoint ptr %max.i24 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max.i24, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #9
  br label %print_stat.exit27

if.else.i26:                                      ; preds = %print_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #9
  br label %print_stat.exit27

print_stat.exit27:                                ; preds = %if.else.i26, %if.then.i25
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #9
  %inc = add nuw nsw i32 %bucket.028, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %print_stat.exit27.cleanup_crit_edge, label %print_stat.exit27.for.body_crit_edge

print_stat.exit27.for.body_crit_edge:             ; preds = %print_stat.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

print_stat.exit27.cleanup_crit_edge:              ; preds = %print_stat.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %print_stat.exit27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_pm_only_show(ptr noundef %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_only = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pm_only, i32 noundef 4) #9
  %0 = ptrtoint ptr %pm_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pm_only, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_state_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_flags, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sep.0.off02.i = phi i1 [ false, %entry ], [ %sep.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.03.i
  %and.i = and i32 %shl.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %sep.0.off02.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.03.i)
  %cmp4.i = icmp ult i32 %i.03.i, 30
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.else.i_crit_edge

if.end3.i.if.else.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %arrayidx.i = getelementptr ptr, ptr @blk_queue_flag_name, i32 %i.03.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %3) #9
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end3.i.if.else.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %i.03.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %sep.1.off0.i = phi i1 [ true, %if.then6.i ], [ true, %if.else.i ], [ %sep.0.off02.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %blk_flags_show.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

blk_flags_show.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_state_write(ptr noundef %data, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %opbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opbuf) #9
  %0 = call ptr @memset(ptr %opbuf, i32 0, i32 16)
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 11
  %1 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %queue_flags, align 4
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count)
  %cmp = icmp ugt i32 %count, 15
  br i1 %cmp, label %do.end, label %if.then.i.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #13
  br label %do.end28

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef nonnull %opbuf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.100, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #14, !srcloc !342
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !341

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opbuf, i32 noundef %count) #9
  %5 = call i32 @llvm.read_register.i32(metadata !331) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !343
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opbuf, ptr noundef %buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !344
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !341

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %opbuf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %opbuf) #9
  %call10 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(4) @.str.89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_mq_run_hw_queues(ptr noundef %data, i1 noundef zeroext true) #9
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %call13 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(6) @.str.90) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_mq_start_stopped_hw_queues(ptr noundef %data, i1 noundef zeroext true) #9
  br label %cleanup

if.else16:                                        ; preds = %if.else
  %call17 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %do.end23

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_mq_kick_requeue_list(ptr noundef %data) #9
  br label %cleanup

do.end23:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88, ptr noundef %call.i) #13
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.end
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.88) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then19, %if.then15, %if.then12, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ -2, %entry.cleanup_crit_edge ], [ %count, %if.then15 ], [ %count, %if.then19 ], [ %count, %if.then12 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_write_hint_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.request_queue, ptr %data, i32 0, i32 68, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 0, i64 noundef %1) #9
  %arrayidx.1 = getelementptr %struct.request_queue, ptr %data, i32 0, i32 68, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 1, i64 noundef %3) #9
  %arrayidx.2 = getelementptr %struct.request_queue, ptr %data, i32 0, i32 68, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 2, i64 noundef %5) #9
  %arrayidx.3 = getelementptr %struct.request_queue, ptr %data, i32 0, i32 68, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 3, i64 noundef %7) #9
  %arrayidx.4 = getelementptr %struct.request_queue, ptr %data, i32 0, i32 68, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef 4, i64 noundef %9) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @queue_write_hint_store(ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uglygep = getelementptr i8, ptr %data, i32 1832
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 40)
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @queue_zone_wlock_show(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @queue_requeue_list_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %requeue_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 49
  tail call void @_raw_spin_lock_irq(ptr noundef %requeue_lock) #9
  %requeue_list = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %requeue_list, i64 noundef %3) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @queue_requeue_list_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %requeue_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 49
  tail call void @_raw_spin_unlock_irq(ptr noundef %requeue_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @queue_requeue_list_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %requeue_list = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 48
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %requeue_list, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_stopped_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_kick_requeue_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_state_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.anon.72, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and.i.peel = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel)
  %tobool.not.i.peel = icmp eq i32 %and.i.peel, 0
  br i1 %tobool.not.i.peel, label %for.body.i.peel.next.thread, label %for.body.i.peel.next

for.body.i.peel.next:                             ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.64) #9
  %and.i.peel5 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel5)
  %tobool.not.i.peel6 = icmp eq i32 %and.i.peel5, 0
  br i1 %tobool.not.i.peel6, label %for.body.i.peel.next.for.body.i.peel.next2_crit_edge, label %if.then2.i.peel8

for.body.i.peel.next.for.body.i.peel.next2_crit_edge: ; preds = %for.body.i.peel.next
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.peel.next2

for.body.i.peel.next.thread:                      ; preds = %entry
  %and.i.peel558 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel558)
  %tobool.not.i.peel659 = icmp eq i32 %and.i.peel558, 0
  br i1 %tobool.not.i.peel659, label %for.body.i.peel.next2.thread, label %for.body.i.peel.next.thread.if.then6.i.peel14_crit_edge

for.body.i.peel.next.thread.if.then6.i.peel14_crit_edge: ; preds = %for.body.i.peel.next.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.peel14

if.then2.i.peel8:                                 ; preds = %for.body.i.peel.next
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.then6.i.peel14

if.then6.i.peel14:                                ; preds = %if.then2.i.peel8, %for.body.i.peel.next.thread.if.then6.i.peel14_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.113) #9
  br label %for.body.i.peel.next2

for.body.i.peel.next2:                            ; preds = %if.then6.i.peel14, %for.body.i.peel.next.for.body.i.peel.next2_crit_edge
  %and.i.peel23 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel23)
  %tobool.not.i.peel24 = icmp eq i32 %and.i.peel23, 0
  br i1 %tobool.not.i.peel24, label %for.body.i.peel.next2.for.body.i.peel.next20_crit_edge, label %if.then2.i.peel26

for.body.i.peel.next2.for.body.i.peel.next20_crit_edge: ; preds = %for.body.i.peel.next2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.peel.next20

for.body.i.peel.next2.thread:                     ; preds = %for.body.i.peel.next.thread
  %and.i.peel2363 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel2363)
  %tobool.not.i.peel2464 = icmp eq i32 %and.i.peel2363, 0
  br i1 %tobool.not.i.peel2464, label %for.body.i.peel.next20.thread, label %for.body.i.peel.next2.thread.if.then6.i.peel32_crit_edge

for.body.i.peel.next2.thread.if.then6.i.peel32_crit_edge: ; preds = %for.body.i.peel.next2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.peel32

if.then2.i.peel26:                                ; preds = %for.body.i.peel.next2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.then6.i.peel32

if.then6.i.peel32:                                ; preds = %if.then2.i.peel26, %for.body.i.peel.next2.thread.if.then6.i.peel32_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.114) #9
  br label %for.body.i.peel.next20

for.body.i.peel.next20:                           ; preds = %if.then6.i.peel32, %for.body.i.peel.next2.for.body.i.peel.next20_crit_edge
  %and.i.peel41 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel41)
  %tobool.not.i.peel42 = icmp eq i32 %and.i.peel41, 0
  br i1 %tobool.not.i.peel42, label %for.body.i.peel.next20.for.body.i.preheader_crit_edge, label %if.then2.i.peel44

for.body.i.peel.next20.for.body.i.preheader_crit_edge: ; preds = %for.body.i.peel.next20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

for.body.i.peel.next20.thread:                    ; preds = %for.body.i.peel.next2.thread
  %and.i.peel4168 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.peel4168)
  %tobool.not.i.peel4269 = icmp eq i32 %and.i.peel4168, 0
  br i1 %tobool.not.i.peel4269, label %for.body.i.peel.next20.thread.for.body.i.preheader_crit_edge, label %for.body.i.peel.next20.thread.if.then6.i.peel50_crit_edge

for.body.i.peel.next20.thread.if.then6.i.peel50_crit_edge: ; preds = %for.body.i.peel.next20.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.peel50

for.body.i.peel.next20.thread.for.body.i.preheader_crit_edge: ; preds = %for.body.i.peel.next20.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

if.then2.i.peel44:                                ; preds = %for.body.i.peel.next20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.then6.i.peel50

if.then6.i.peel50:                                ; preds = %if.then2.i.peel44, %for.body.i.peel.next20.thread.if.then6.i.peel50_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then6.i.peel50, %for.body.i.peel.next20.thread.for.body.i.preheader_crit_edge, %for.body.i.peel.next20.for.body.i.preheader_crit_edge
  %sep.0.off02.i.ph = phi i1 [ false, %for.body.i.peel.next20.thread.for.body.i.preheader_crit_edge ], [ true, %if.then6.i.peel50 ], [ true, %for.body.i.peel.next20.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 4, %for.body.i.preheader ]
  %sep.0.off02.i = phi i1 [ %sep.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ %sep.0.off02.i.ph, %for.body.i.preheader ]
  %shl.i = shl nuw i32 1, %i.03.i
  %and.i = and i32 %shl.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %sep.0.off02.i, label %if.then2.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.else.i

if.else.i:                                        ; preds = %if.then2.i, %if.end.i.if.else.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %i.03.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %sep.1.off0.i = phi i1 [ true, %if.else.i ], [ %sep.0.off02.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %blk_flags_show.exit, label %for.inc.i.for.body.i_crit_edge, !llvm.loop !346

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

blk_flags_show.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_flags_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 16
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 1
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.116) #9
  %arrayidx = getelementptr [2 x ptr], ptr @alloc_policy_name, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef %3) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.117) #9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 16
  %shl = shl nuw nsw i32 %and, 8
  %xor = xor i32 %5, %shl
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sep.0.off02.i = phi i1 [ false, %entry ], [ %sep.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.03.i
  %and.i = and i32 %shl.i, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %sep.0.off02.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.03.i)
  %cmp4.i = icmp ult i32 %i.03.i, 7
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.i.if.else.i_crit_edge

if.end3.i.if.else.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %arrayidx.i = getelementptr ptr, ptr @hctx_flag_name, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %7) #9
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end3.i.if.else.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %i.03.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %sep.1.off0.i = phi i1 [ true, %if.then6.i ], [ true, %if.else.i ], [ %sep.0.off02.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %blk_flags_show.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

blk_flags_show.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_busy_show(ptr noundef %data, ptr noundef %m) #0 align 64 {
entry:
  %params = alloca %struct.show_busy_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #9
  %0 = getelementptr inbounds %struct.show_busy_params, ptr %params, i32 0, i32 1
  %1 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %m, ptr %params, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %0, align 4
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 61
  %5 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tag_set, align 8
  call void @blk_mq_tagset_busy_iter(ptr noundef %6, ptr noundef nonnull @hctx_show_busy_rq, ptr noundef nonnull %params) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_ctx_map_show(ptr noundef %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 10
  tail call void @sbitmap_bitmap_show(ptr noundef %ctx_map, ptr noundef %m) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_tags_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @blk_mq_debugfs_tags_show(ptr noundef %m, ptr noundef nonnull %3)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #9
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_tags_bitmap_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags, align 16
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 3
  tail call void @sbitmap_bitmap_show(ptr noundef %bitmap_tags, ptr noundef %m) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #9
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_sched_tags_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 20
  %2 = ptrtoint ptr %sched_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_tags, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @blk_mq_debugfs_tags_show(ptr noundef %m, ptr noundef nonnull %3)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #9
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_sched_tags_bitmap_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sysfs_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 20
  %2 = ptrtoint ptr %sched_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_tags, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 3
  tail call void @sbitmap_bitmap_show(ptr noundef %bitmap_tags, ptr noundef %m) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #9
  br label %out

out:                                              ; preds = %if.end4, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_run_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %run = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %run, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.131, i32 noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hctx_run_write(ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %run = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %run, align 4
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_active_show(ptr noundef %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 16
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 8
  %nr_active_requests_shared_tags.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 31
  br label %__blk_mq_active_requests.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nr_active.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 25
  br label %__blk_mq_active_requests.exit

__blk_mq_active_requests.exit:                    ; preds = %if.end.i, %if.then.i
  %nr_active.sink.i = phi ptr [ %nr_active.i, %if.end.i ], [ %nr_active_requests_shared_tags.i, %if.then.i ]
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_active.sink.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %nr_active.sink.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i = load volatile i32, ptr %nr_active.sink.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_dispatch_busy_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %dispatch_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dispatch_busy, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.132, i32 noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hctx_type_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @hctx_types, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hctx_dispatch_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %dispatch = getelementptr inbounds %struct.anon.72, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %dispatch, i64 noundef %3) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hctx_dispatch_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hctx_dispatch_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dispatch = getelementptr inbounds %struct.anon.72, ptr %1, i32 0, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %dispatch, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hctx_show_busy_rq(ptr noundef %rq, ptr nocapture noundef readonly %data, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_hctx, align 8
  %hctx = getelementptr inbounds %struct.show_busy_params, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %hctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hctx, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %5, ptr noundef %rq)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_bitmap_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_mq_debugfs_tags_show(ptr noundef %m, ptr noundef %tags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.126, i32 noundef %1) #9
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 1
  %2 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_reserved_tags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.127, i32 noundef %3) #9
  %active_queues = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #9
  %4 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %active_queues, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, i32 noundef %5) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.129) #9
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3
  tail call void @sbitmap_queue_show(ptr noundef %bitmap_tags, ptr noundef %m) #9
  %6 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_reserved_tags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.130) #9
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4
  tail call void @sbitmap_queue_show(ptr noundef %breserved_tags, ptr noundef %m) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_default_rq_list_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %rq_lists = getelementptr inbounds %struct.anon.73, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %rq_lists, i64 noundef %3) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctx_default_rq_list_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_default_rq_list_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rq_lists = getelementptr inbounds %struct.anon.73, ptr %1, i32 0, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %rq_lists, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_read_rq_list_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %arrayidx = getelementptr %struct.anon.73, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %3) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctx_read_rq_list_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_read_rq_list_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx = getelementptr %struct.anon.73, ptr %1, i32 0, i32 1, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_poll_rq_list_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %arrayidx = getelementptr %struct.anon.73, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %3) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctx_poll_rq_list_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctx_poll_rq_list_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx = getelementptr %struct.anon.73, ptr %1, i32 0, i32 1, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !200, !202, !204, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329}
!llvm.named.register.sp = !{!331}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/blk-mq-debugfs.c", i32 338, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/blk-mq-debugfs.c", i32 339, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-mq-debugfs.c", i32 340, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/blk-mq-debugfs.c", i32 342, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/blk-mq-debugfs.c", i32 343, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/blk-mq-debugfs.c", i32 346, i32 14}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/blk-mq-debugfs.c", i32 349, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/blk-mq-debugfs.c", i32 350, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/blk-mq-debugfs.c", i32 354, i32 14}
!18 = !{ptr @__ksymtab___blk_mq_debugfs_rq_show, !19, !"__ksymtab___blk_mq_debugfs_rq_show", i1 false, i1 false}
!19 = !{!"../block/blk-mq-debugfs.c", i32 357, i32 1}
!20 = !{ptr @__ksymtab_blk_mq_debugfs_rq_show, !21, !"__ksymtab_blk_mq_debugfs_rq_show", i1 false, i1 false}
!21 = !{!"../block/blk-mq-debugfs.c", i32 363, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../block/blk-mq-debugfs.c", i32 764, i32 31}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/blk-mq-debugfs.c", i32 812, i32 44}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/blk-mq-debugfs.c", i32 853, i32 44}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/blk-mq-debugfs.c", i32 89, i32 16}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/blk-mq-debugfs.c", i32 94, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/blk-mq-debugfs.c", i32 277, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/blk-mq-debugfs.c", i32 278, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/blk-mq-debugfs.c", i32 279, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/blk-mq-debugfs.c", i32 280, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/blk-mq-debugfs.c", i32 281, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../block/blk-mq-debugfs.c", i32 282, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../block/blk-mq-debugfs.c", i32 283, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../block/blk-mq-debugfs.c", i32 284, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../block/blk-mq-debugfs.c", i32 285, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../block/blk-mq-debugfs.c", i32 286, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../block/blk-mq-debugfs.c", i32 287, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../block/blk-mq-debugfs.c", i32 288, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../block/blk-mq-debugfs.c", i32 289, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../block/blk-mq-debugfs.c", i32 290, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../block/blk-mq-debugfs.c", i32 291, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../block/blk-mq-debugfs.c", i32 292, i32 2}
!64 = !{ptr @cmd_flag_name, !65, !"cmd_flag_name", i1 false, i1 false}
!65 = !{!"../block/blk-mq-debugfs.c", i32 276, i32 26}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../block/blk-mq-debugfs.c", i32 298, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../block/blk-mq-debugfs.c", i32 299, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../block/blk-mq-debugfs.c", i32 300, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../block/blk-mq-debugfs.c", i32 301, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../block/blk-mq-debugfs.c", i32 302, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../block/blk-mq-debugfs.c", i32 303, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../block/blk-mq-debugfs.c", i32 304, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../block/blk-mq-debugfs.c", i32 305, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../block/blk-mq-debugfs.c", i32 306, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../block/blk-mq-debugfs.c", i32 307, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../block/blk-mq-debugfs.c", i32 308, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../block/blk-mq-debugfs.c", i32 309, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../block/blk-mq-debugfs.c", i32 310, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../block/blk-mq-debugfs.c", i32 311, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../block/blk-mq-debugfs.c", i32 312, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../block/blk-mq-debugfs.c", i32 313, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../block/blk-mq-debugfs.c", i32 314, i32 2}
!100 = !{ptr @rqf_name, !101, !"rqf_name", i1 false, i1 false}
!101 = !{!"../block/blk-mq-debugfs.c", i32 297, i32 26}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../block/blk-mq-debugfs.c", i32 326, i32 6}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../block/blk-mq-debugfs.c", i32 328, i32 10}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../block/blk-mq-debugfs.c", i32 319, i32 18}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../block/blk-mq-debugfs.c", i32 320, i32 22}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../block/blk-mq-debugfs.c", i32 321, i32 21}
!113 = !{ptr @blk_mq_rq_state_name_array, !114, !"blk_mq_rq_state_name_array", i1 false, i1 false}
!114 = !{!"../block/blk-mq-debugfs.c", i32 318, i32 26}
!115 = !{ptr @blk_mq_debugfs_fops, !116, !"blk_mq_debugfs_fops", i1 false, i1 false}
!116 = !{!"../block/blk-mq-debugfs.c", i32 662, i32 37}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../block/blk-mq-debugfs.c", i32 646, i32 6}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../block/blk-mq-debugfs.c", i32 210, i32 4}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../block/blk-mq-debugfs.c", i32 211, i32 4}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../block/blk-mq-debugfs.c", i32 212, i32 4}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../block/blk-mq-debugfs.c", i32 213, i32 4}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../block/blk-mq-debugfs.c", i32 214, i32 4}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../block/blk-mq-debugfs.c", i32 215, i32 4}
!131 = !{ptr @blk_mq_debugfs_queue_attrs, !132, !"blk_mq_debugfs_queue_attrs", i1 false, i1 false}
!132 = !{!"../block/blk-mq-debugfs.c", i32 209, i32 41}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../block/blk-mq-debugfs.c", i32 37, i32 17}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../block/blk-mq-debugfs.c", i32 39, i32 15}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../block/blk-mq-debugfs.c", i32 41, i32 17}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../block/blk-mq-debugfs.c", i32 21, i32 17}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../block/blk-mq-debugfs.c", i32 24, i32 15}
!143 = !{ptr @queue_requeue_list_seq_ops, !144, !"queue_requeue_list_seq_ops", i1 false, i1 false}
!144 = !{!"../block/blk-mq-debugfs.c", i32 72, i32 36}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../block/blk-mq-debugfs.c", i32 103, i32 16}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../block/blk-mq-debugfs.c", i32 109, i32 2}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../block/blk-mq-debugfs.c", i32 110, i32 2}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../block/blk-mq-debugfs.c", i32 111, i32 2}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../block/blk-mq-debugfs.c", i32 112, i32 2}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../block/blk-mq-debugfs.c", i32 113, i32 2}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../block/blk-mq-debugfs.c", i32 114, i32 2}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../block/blk-mq-debugfs.c", i32 116, i32 2}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../block/blk-mq-debugfs.c", i32 117, i32 2}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../block/blk-mq-debugfs.c", i32 118, i32 2}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../block/blk-mq-debugfs.c", i32 119, i32 2}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../block/blk-mq-debugfs.c", i32 120, i32 2}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../block/blk-mq-debugfs.c", i32 121, i32 2}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../block/blk-mq-debugfs.c", i32 122, i32 2}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../block/blk-mq-debugfs.c", i32 123, i32 2}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../block/blk-mq-debugfs.c", i32 124, i32 2}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../block/blk-mq-debugfs.c", i32 125, i32 2}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../block/blk-mq-debugfs.c", i32 127, i32 2}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../block/blk-mq-debugfs.c", i32 129, i32 2}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../block/blk-mq-debugfs.c", i32 130, i32 2}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../block/blk-mq-debugfs.c", i32 131, i32 2}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../block/blk-mq-debugfs.c", i32 132, i32 2}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../block/blk-mq-debugfs.c", i32 133, i32 2}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../block/blk-mq-debugfs.c", i32 134, i32 2}
!193 = !{ptr @blk_queue_flag_name, !194, !"blk_queue_flag_name", i1 false, i1 false}
!194 = !{!"../block/blk-mq-debugfs.c", i32 108, i32 26}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../block/blk-mq-debugfs.c", i32 164, i32 3}
!197 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @queue_state_write._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @queue_state_write._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../block/blk-mq-debugfs.c", i32 171, i32 17}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../block/blk-mq-debugfs.c", i32 173, i32 24}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../block/blk-mq-debugfs.c", i32 175, i32 24}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../block/blk-mq-debugfs.c", i32 178, i32 3}
!208 = !{ptr @queue_state_write._entry.92, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @queue_state_write._entry_ptr.94, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../block/blk-mq-debugfs.c", i32 180, i32 3}
!212 = !{ptr @queue_state_write._entry.95, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @queue_state_write._entry_ptr.97, !211, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!216 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../block/blk-mq-debugfs.c", i32 192, i32 17}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../block/blk-mq-debugfs.c", i32 672, i32 3}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../block/blk-mq-debugfs.c", i32 673, i32 3}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../block/blk-mq-debugfs.c", i32 674, i32 3}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../block/blk-mq-debugfs.c", i32 675, i32 3}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../block/blk-mq-debugfs.c", i32 676, i32 3}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../block/blk-mq-debugfs.c", i32 677, i32 3}
!235 = !{ptr @.str.108, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../block/blk-mq-debugfs.c", i32 678, i32 3}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../block/blk-mq-debugfs.c", i32 679, i32 3}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../block/blk-mq-debugfs.c", i32 681, i32 3}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../block/blk-mq-debugfs.c", i32 682, i32 3}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../block/blk-mq-debugfs.c", i32 683, i32 3}
!245 = !{ptr @blk_mq_debugfs_hctx_attrs, !246, !"blk_mq_debugfs_hctx_attrs", i1 false, i1 false}
!246 = !{!"../block/blk-mq-debugfs.c", i32 670, i32 41}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../block/blk-mq-debugfs.c", i32 222, i32 2}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../block/blk-mq-debugfs.c", i32 223, i32 2}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../block/blk-mq-debugfs.c", i32 224, i32 2}
!253 = distinct !{null, !254, !"hctx_state_name", i1 false, i1 false}
!254 = !{!"../block/blk-mq-debugfs.c", i32 220, i32 26}
!255 = !{ptr @.str.116, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../block/blk-mq-debugfs.c", i32 261, i32 14}
!257 = !{ptr @.str.117, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../block/blk-mq-debugfs.c", i32 267, i32 14}
!259 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../block/blk-mq-debugfs.c", i32 240, i32 2}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../block/blk-mq-debugfs.c", i32 241, i32 2}
!263 = !{ptr @alloc_policy_name, !264, !"alloc_policy_name", i1 false, i1 false}
!264 = !{!"../block/blk-mq-debugfs.c", i32 239, i32 26}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../block/blk-mq-debugfs.c", i32 247, i32 2}
!267 = !{ptr @.str.121, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../block/blk-mq-debugfs.c", i32 248, i32 2}
!269 = !{ptr @.str.122, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../block/blk-mq-debugfs.c", i32 251, i32 2}
!271 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../block/blk-mq-debugfs.c", i32 252, i32 2}
!273 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../block/blk-mq-debugfs.c", i32 249, i32 2}
!275 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../block/blk-mq-debugfs.c", i32 250, i32 2}
!277 = !{ptr @hctx_flag_name, !278, !"hctx_flag_name", i1 false, i1 false}
!278 = !{!"../block/blk-mq-debugfs.c", i32 246, i32 26}
!279 = !{ptr @hctx_dispatch_seq_ops, !280, !"hctx_dispatch_seq_ops", i1 false, i1 false}
!280 = !{!"../block/blk-mq-debugfs.c", i32 389, i32 36}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../block/blk-mq-debugfs.c", i32 453, i32 16}
!283 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../block/blk-mq-debugfs.c", i32 454, i32 16}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../block/blk-mq-debugfs.c", i32 455, i32 16}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../block/blk-mq-debugfs.c", i32 458, i32 14}
!289 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../block/blk-mq-debugfs.c", i32 462, i32 15}
!291 = !{ptr @.str.131, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../block/blk-mq-debugfs.c", i32 539, i32 16}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../block/blk-mq-debugfs.c", i32 564, i32 16}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../block/blk-mq-debugfs.c", i32 438, i32 16}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../block/blk-mq-debugfs.c", i32 428, i32 24}
!299 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../block/blk-mq-debugfs.c", i32 429, i32 21}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../block/blk-mq-debugfs.c", i32 430, i32 21}
!303 = !{ptr @hctx_types, !304, !"hctx_types", i1 false, i1 false}
!304 = !{!"../block/blk-mq-debugfs.c", i32 427, i32 26}
!305 = !{ptr @.str.137, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../block/blk-mq-debugfs.c", i32 751, i32 31}
!307 = !{ptr @.str.138, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../block/blk-mq-debugfs.c", i32 688, i32 3}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../block/blk-mq-debugfs.c", i32 689, i32 3}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../block/blk-mq-debugfs.c", i32 690, i32 3}
!313 = !{ptr @blk_mq_debugfs_ctx_attrs, !314, !"blk_mq_debugfs_ctx_attrs", i1 false, i1 false}
!314 = !{!"../block/blk-mq-debugfs.c", i32 687, i32 41}
!315 = !{ptr @ctx_default_rq_list_seq_ops, !316, !"ctx_default_rq_list_seq_ops", i1 false, i1 false}
!316 = !{!"../block/blk-mq-debugfs.c", i32 601, i32 1}
!317 = !{ptr @ctx_read_rq_list_seq_ops, !318, !"ctx_read_rq_list_seq_ops", i1 false, i1 false}
!318 = !{!"../block/blk-mq-debugfs.c", i32 602, i32 1}
!319 = !{ptr @ctx_poll_rq_list_seq_ops, !320, !"ctx_poll_rq_list_seq_ops", i1 false, i1 false}
!320 = !{!"../block/blk-mq-debugfs.c", i32 603, i32 1}
!321 = !{ptr @.str.141, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../block/blk-mq-debugfs.c", i32 827, i32 10}
!323 = !{ptr @.str.142, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../block/blk-mq-debugfs.c", i32 829, i32 10}
!325 = !{ptr @.str.143, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../block/blk-mq-debugfs.c", i32 831, i32 10}
!327 = !{ptr @.str.144, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../block/blk-mq-debugfs.c", i32 833, i32 10}
!329 = !{ptr @.str.145, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../block/blk-mq-debugfs.c", i32 835, i32 9}
!331 = !{!"sp"}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!341 = !{!"branch_weights", i32 2000, i32 1}
!342 = !{i64 2152272402, i64 2152272427}
!343 = !{i64 4767957}
!344 = !{i64 4768154}
!345 = !{i64 2152253387}
!346 = distinct !{!346, !347}
!347 = !{!"llvm.loop.peeled.count", i32 4}
