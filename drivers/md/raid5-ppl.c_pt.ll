; ModuleID = '/llk/IR_all_yes/drivers/md/raid5-ppl.c_pt.bc'
source_filename = "../drivers/md/raid5-ppl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.md_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.stripe_head = type { %struct.hlist_node, %struct.list_head, %struct.llist_node, ptr, i16, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.spinlock, i32, ptr, ptr, %struct.spinlock, %struct.list_head, %union.anon.83, %struct.list_head, i64, %struct.list_head, ptr, %struct.stripe_operations, [1 x %struct.r5dev] }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.83 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.stripe_operations = type { i32, i32, i32 }
%struct.r5dev = type { %struct.bio, %struct.bio, %struct.bio_vec, %struct.bio_vec, ptr, ptr, i32, ptr, ptr, ptr, ptr, i64, i32, i32, i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.raid5_percpu = type { ptr, ptr, i32, %struct.local_lock_t }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.r5conf = type { ptr, [8 x %struct.spinlock], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i16, %struct.seqcount_spinlock, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, %struct.atomic_t, i32, [2 x [32 x i8]], ptr, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.hlist_node, %struct.atomic_t, [8 x %struct.list_head], %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.shrinker, i32, %struct.spinlock, ptr, %struct.bio_set, ptr, [8 x %struct.list_head], ptr, i32, i32, ptr, ptr, %struct.spinlock, i8, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ppl_conf = type { ptr, ptr, i32, i32, i32, %struct.atomic64_t, ptr, %struct.mempool_s, %struct.bio_set, %struct.bio_set, i32, i32, %struct.list_head, %struct.spinlock, i16 }
%struct.atomic64_t = type { i64 }
%struct.ppl_log = type { ptr, ptr, %struct.mutex, ptr, %struct.spinlock, %struct.list_head, i64, i32, i8, i8, i32 }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.80, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.81 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.anon.81 = type { i16, i32, i64 }
%struct.ppl_io_unit = type { ptr, ptr, i32, i32, i64, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i8, %struct.bio, [32 x %struct.bio_vec] }
%struct.ppl_header = type { [512 x i8], i32, i32, i64, i32, i32, [148 x %struct.ppl_header_entry] }
%struct.ppl_header_entry = type { i64, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.disk_info = type { ptr, ptr, ptr }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.82, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.82 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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

@ops_run_partial_parity.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"raid456\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ops_run_partial_parity\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/raid5-ppl.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: stripe %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@ppl_init_log.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppl_init_log\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"md/raid:%s: enabling distributed Partial Parity Log\0A\00", [43 x i8] zeroinitializer }, align 32
@ppl_init_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014md/raid:%s PPL is not compatible with raid level %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ppl_init_log._entry_ptr = internal global ptr @ppl_init_log._entry, section ".printk_index", align 4
@ppl_init_log._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014md/raid:%s PPL is not compatible with bitmap\0A\00", [48 x i8] zeroinitializer }, align 32
@ppl_init_log._entry_ptr.9 = internal global ptr @ppl_init_log._entry.7, section ".printk_index", align 4
@ppl_init_log._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014md/raid:%s PPL is not compatible with journal\0A\00", [47 x i8] zeroinitializer }, align 32
@ppl_init_log._entry_ptr.12 = internal global ptr @ppl_init_log._entry.10, section ".printk_index", align 4
@ppl_init_log._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014md/raid:%s PPL doesn't support over %d disks in the array\0A\00", [35 x i8] zeroinitializer }, align 32
@ppl_init_log._entry_ptr.15 = internal global ptr @ppl_init_log._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppl_io_unit\00", [20 x i8] zeroinitializer }, align 32
@ppl_init_log.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&ppl_conf->no_mem_stripes_lock\00", [33 x i8] zeroinitializer }, align 32
@ppl_init_log.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&log->io_mutex\00", [17 x i8] zeroinitializer }, align 32
@ppl_init_log.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&log->io_list_lock\00", [45 x i8] zeroinitializer }, align 32
@ppl_modify_log.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppl_modify_log\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: disk: %d operation: %s dev: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppl_write_hint\00", [17 x i8] zeroinitializer }, align 32
@ppl_write_hint = dso_local global { %struct.md_sysfs_entry, [36 x i8] } { %struct.md_sysfs_entry { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ppl_write_hint_show, ptr @ppl_write_hint_store }, [36 x i8] zeroinitializer }, align 32
@ppl_log_stripe.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppl_log_stripe\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: stripe: %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@ppl_log_stripe.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: add io_unit blocked by seq: %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@ppl_log_stripe.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: seq: %llu data_sector: %llu data_disks: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ppl_submit_iounit.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppl_submit_iounit\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: seq: %llu entry: %d data_sector: %llu pp_size: %u data_size: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ppl_submit_iounit.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: log->current_io_sector: %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@ppl_log_endio.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppl_log_endio\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: seq: %llu\0A\00", [17 x i8] zeroinitializer }, align 32
@ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppl_submit_iounit_bio\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: seq: %llu size: %u sector: %llu dev: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@ppl_do_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ppl_do_flush.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppl_do_flush\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: dev: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ppl_flush_endio.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.40, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppl_flush_endio\00", [16 x i8] zeroinitializer }, align 32
@ppl_io_unit_finished.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.35, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppl_io_unit_finished\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ppl_validate_rdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014md/raid:%s: PPL space too small on %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppl_validate_rdev\00", [46 x i8] zeroinitializer }, align 32
@ppl_validate_rdev._entry_ptr = internal global ptr @ppl_validate_rdev._entry, section ".printk_index", align 4
@ppl_validate_rdev._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014md/raid:%s: PPL space overlaps with data on %s\0A\00", [46 x i8] zeroinitializer }, align 32
@ppl_validate_rdev._entry_ptr.52 = internal global ptr @ppl_validate_rdev._entry.50, section ".printk_index", align 4
@ppl_validate_rdev._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014md/raid:%s: PPL space overlaps with superblock on %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ppl_validate_rdev._entry_ptr.55 = internal global ptr @ppl_validate_rdev._entry.53, section ".printk_index", align 4
@ppl_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014md/raid:%s: PPL header signature does not match on all member drives\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ppl_load\00", [23 x i8] zeroinitializer }, align 32
@ppl_load._entry_ptr = internal global ptr @ppl_load._entry, section ".printk_index", align 4
@ppl_load.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: return: %d mismatch_count: %d recovered_entries: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ppl_load_distributed.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ppl_load_distributed\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: disk: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ppl_load_distributed.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: ppl header crc does not match: stored: 0x%x calculated: 0x%x (offset: %llu)\0A\00", [47 x i8] zeroinitializer }, align 32
@ppl_load_distributed.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s: ppl header signature does not match: stored: 0x%x configured: 0x%x (offset: %llu)\0A\00", [41 x i8] zeroinitializer }, align 32
@ppl_load_distributed.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.63, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: latest PPL found at offset: %llu, with generation: %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@ppl_load_distributed.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.58, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ppl_recover.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppl_recover\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: disk: %d entry: %d ppl_sector: %llu pp_size: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ppl_recover.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.66, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: ppl entry crc does not match: stored: 0x%x calculated: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppl_recover_entry\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: array sector first: %llu last: %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.69, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:%*s iter %d start\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.71, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%*s data member disk %d start\0A\00", [62 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.72, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%*s array sector %llu doesn't need parity update\0A\00", [43 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.73, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%*s processing array sector %llu => data member disk %d, sector %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.74, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%*s data member disk %d missing\0A\00", [60 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.75, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%*s reading data member disk %s sector %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.76, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%*s read failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.77, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%*s reading pp disk sector %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.76, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ppl_recover_entry.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.78, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%*s write parity at sector %llu, disk %s\0A\00", [51 x i8] zeroinitializer }, align 32
@ppl_recover_entry.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.79, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%*s parity write error!\0A\00", [36 x i8] zeroinitializer }, align 32
@ppl_write_empty_header.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ppl_write_empty_header\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: disk: %d ppl_sector: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 166, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1338, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1345, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1351, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1357, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1365, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1376, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1405, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1419, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1420, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1474, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1555, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"ppl_write_hint\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1555, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 276, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 281, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 309, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 448, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 474, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 404, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 421, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 631, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 646, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 695, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 723, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 595, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 560, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 632, i32 54 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1279, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1290, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1298, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1221, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1229, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1091, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1123, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1140, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1172, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 994, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1026, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 841, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 860, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 873, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 878, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 890, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 898, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 904, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 910, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 925, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 949, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 955, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1053, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [26 x i8] c"../drivers/md/raid5-ppl.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1513, i32 21 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @ppl_init_log._entry, ptr @ppl_init_log._entry.10, ptr @ppl_init_log._entry.13, ptr @ppl_init_log._entry.7, ptr @ppl_init_log._entry_ptr, ptr @ppl_init_log._entry_ptr.12, ptr @ppl_init_log._entry_ptr.15, ptr @ppl_init_log._entry_ptr.9, ptr @ppl_load._entry, ptr @ppl_load._entry_ptr, ptr @ppl_validate_rdev._entry, ptr @ppl_validate_rdev._entry.50, ptr @ppl_validate_rdev._entry.53, ptr @ppl_validate_rdev._entry_ptr, ptr @ppl_validate_rdev._entry_ptr.52, ptr @ppl_validate_rdev._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @ppl_init_log.__key, ptr @.str.17, ptr @ppl_init_log.__key.18, ptr @.str.19, ptr @ppl_init_log.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ppl_write_hint, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_init_log.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_write_hint to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_validate_rdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_validate_rdev._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_validate_rdev._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppl_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ops_run_partial_parity(ptr noundef %sh, ptr nocapture noundef readonly %percpu, ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  %submit = alloca %struct.async_submit_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %disks1 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %0 = ptrtoint ptr %disks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disks1, align 4
  %scribble = getelementptr inbounds %struct.raid5_percpu, ptr %percpu, i32 0, i32 1
  %2 = ptrtoint ptr %scribble to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scribble, align 4
  %pd_idx2 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %4 = ptrtoint ptr %pd_idx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pd_idx2, align 8
  %conv = sext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %submit) #11
  %6 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %7 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %8 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %9 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ops_run_partial_parity.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ops_run_partial_parity, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %10 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ops_run_partial_parity.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i64 noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reconstruct_state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 16
  %12 = ptrtoint ptr %reconstruct_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reconstruct_state, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.cleanup_crit_edge [
    i32 1, label %if.then6
    i32 2, label %for.cond.preheader
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not65 = icmp eq i32 %1, 0
  br i1 %tobool12.not65, label %for.cond.preheader.if.end25_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %page = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %conv, i32 4
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %3, align 4
  br label %if.end25

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dec67.in = phi i32 [ %dec67, %if.end22.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %count.066 = phi i32 [ %count.1, %if.end22.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %dec67 = add i32 %dec67.in, -1
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec67, i32 12
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %for.body.if.end22_crit_edge, label %if.then18

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %page19 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %dec67, i32 4
  %20 = ptrtoint ptr %page19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page19, align 8
  %inc20 = add i32 %count.066, 1
  %arrayidx21 = getelementptr ptr, ptr %3, i32 %count.066
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.body.if.end22_crit_edge
  %count.1 = phi i32 [ %inc20, %if.then18 ], [ %count.066, %for.body.if.end22_crit_edge ]
  %tobool12.not = icmp eq i32 %dec67, 0
  br i1 %tobool12.not, label %if.end22.if.end25_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %if.then6, %for.cond.preheader.if.end25_crit_edge
  %count.2 = phi i32 [ 1, %if.then6 ], [ 0, %for.cond.preheader.if.end25_crit_edge ], [ %count.1, %if.end22.if.end25_crit_edge ]
  %23 = ptrtoint ptr %disks1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %disks1, align 4
  %add.ptr = getelementptr ptr, ptr %3, i32 %24
  %add.ptr27 = getelementptr ptr, ptr %add.ptr, i32 2
  %25 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 9, ptr %submit, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tx, ptr %6, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %7, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sh, ptr %8, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr27, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.2)
  %cmp28 = icmp eq i32 %count.2, 1
  %ppl_page = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 27
  %30 = ptrtoint ptr %ppl_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ppl_page, align 8
  br i1 %cmp28, label %if.then30, label %if.else33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %call32 = call ptr @async_memcpy(ptr noundef %31, ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %submit) #11
  br label %cleanup

if.else33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call ptr @async_xor(ptr noundef %31, ptr noundef %3, i32 noundef 0, i32 noundef %count.2, i32 noundef 4096, ptr noundef nonnull %submit) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.then30, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %tx, %do.end.cleanup_crit_edge ], [ %call32, %if.then30 ], [ %call35, %if.else33 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %submit) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_memcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_xor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ppl_write_stripe(ptr nocapture noundef readonly %conf, ptr noundef %sh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %0 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_private, align 4
  %2 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ppl_page = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 27
  %8 = ptrtoint ptr %ppl_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppl_page, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %10 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pd_idx, align 8
  %idxprom = sext i16 %11 to i32
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %idxprom, i32 12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false7

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %lor.lhs.false7.if.then_crit_edge, label %if.end

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %state15 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %state15) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %child_logs, align 4
  %arrayidx18 = getelementptr %struct.ppl_log, ptr %19, i32 %idxprom
  %io_mutex = getelementptr %struct.ppl_log, ptr %19, i32 %idxprom, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #11
  %rdev = getelementptr %struct.ppl_log, ptr %19, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end.if.then25_crit_edge, label %lor.lhs.false20

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false20:                                  ; preds = %if.end
  %flags22 = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags22, align 4
  %and1.i63 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i63)
  %tobool24.not = icmp eq i32 %and1.i63, 0
  br i1 %tobool24.not, label %if.end27, label %lor.lhs.false20.if.then25_crit_edge

lor.lhs.false20.if.then25_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false20.if.then25_crit_edge, %if.end.if.then25_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #11
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false20
  tail call void @_set_bit(i32 noundef 23, ptr noundef %state) #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #11
  %count = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #11, !srcloc !193
  %call30 = tail call fastcc i32 @ppl_log_stripe(ptr noundef %arrayidx18, ptr noundef %sh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.if.end34_crit_edge, label %if.then32

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  %no_mem_stripes_lock = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %no_mem_stripes_lock) #11
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %no_mem_stripes = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %26, ptr noundef %no_mem_stripes) #11
  br i1 %call.i.i64, label %if.end.i.i, label %if.then32.list_add_tail.exit_crit_edge

if.then32.list_add_tail.exit_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %log_list, ptr %prev.i, align 4
  %28 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %no_mem_stripes, ptr %log_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %log_list, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then32.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %no_mem_stripes_lock) #11
  br label %if.end34

if.end34:                                         ; preds = %list_add_tail.exit, %if.end27.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then25, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ -11, %if.then25 ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_log_stripe(ptr noundef %log, ptr noundef %sh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_io = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 3
  %0 = ptrtoint ptr %current_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_io, align 4
  %raid_conf = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 3
  %2 = ptrtoint ptr %raid_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_conf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_log_stripe.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_log_stripe, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sector = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_log_stripe.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i64 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.then24_crit_edge, label %land.lhs.true

do.end.if.then24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

land.lhs.true:                                    ; preds = %do.end
  %pp_size = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pp_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pp_size, align 4
  %entry_space = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 7
  %8 = ptrtoint ptr %entry_space to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_space, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.lhs.true.do.body6_crit_edge, label %lor.lhs.false

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.lhs.false:                                    ; preds = %land.lhs.true
  %entries_count = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %11)
  %cmp4 = icmp eq i32 %11, 148
  br i1 %cmp4, label %lor.lhs.false.do.body6_crit_edge, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

lor.lhs.false.do.body6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %lor.lhs.false.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_log_stripe.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_log_stripe, %if.then18)) #11
          to label %if.then24 [label %if.then18], !srcloc !192

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_log_stripe.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i64 noundef %13) #11
  br label %if.then24

if.then24:                                        ; preds = %if.then18, %do.body6, %do.end.if.then24_crit_edge
  %14 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log, align 8
  %io_pool.i = getelementptr inbounds %struct.ppl_conf, ptr %15, i32 0, i32 7
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %io_pool.i, i32 noundef 2048) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %header_page2.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %call.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 536)
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %log, ptr %call.i, align 8
  %log_sibling.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %log_sibling.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %log_sibling.i, ptr %log_sibling.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %log_sibling.i, ptr %prev.i.i, align 4
  %stripe_list.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %stripe_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %stripe_list.i, ptr %stripe_list.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %stripe_list.i, ptr %prev.i3.i, align 4
  %pending_stripes.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripes.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %pending_stripes.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %pending_stripes.i, align 4
  %pending_flushes.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 8
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_flushes.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %pending_flushes.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %pending_flushes.i, align 4
  %bio.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 10
  %biovec.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 11
  tail call void @bio_init(ptr noundef %bio.i, ptr noundef %biovec.i, i16 noundef zeroext 32) #11
  %25 = ptrtoint ptr %header_page2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %header_page2.i, align 4
  %call6.i = tail call ptr @page_address(ptr noundef %26) #11
  %27 = getelementptr inbounds i8, ptr %call6.i, i32 512
  %28 = call ptr @memset(ptr %27, i32 0, i32 3584)
  %29 = call ptr @memset(ptr %call6.i, i32 255, i32 512)
  %signature.i = getelementptr inbounds %struct.ppl_conf, ptr %15, i32 0, i32 4
  %30 = ptrtoint ptr %signature.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %signature.i, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %27, align 1
  %seq.i = getelementptr inbounds %struct.ppl_conf, ptr %15, i32 0, i32 5
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seq.i, i32 noundef 8) #11
  %call.i.i251 = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %seq.i) #11
  %seq10.i = getelementptr inbounds %struct.ppl_io_unit, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %seq10.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call.i.i251, ptr %seq10.i, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %call.i.i251) #11
  %generation.i = getelementptr inbounds %struct.ppl_header, ptr %call6.i, i32 0, i32 3
  %36 = ptrtoint ptr %generation.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %generation.i, align 1
  %io_list_lock = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #11
  %io_list = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i252 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_sibling.i, ptr noundef %38, ptr noundef %io_list) #11
  br i1 %call.i.i252, label %if.end.i.i, label %if.end28.list_add_tail.exit_crit_edge

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %log_sibling.i, ptr %prev.i, align 4
  %40 = ptrtoint ptr %log_sibling.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %io_list, ptr %log_sibling.i, align 4
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %log_sibling.i, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end28.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #11
  %43 = ptrtoint ptr %current_io to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %current_io, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_add_tail.exit, %lor.lhs.false.if.end31_crit_edge
  %io.1 = phi ptr [ %call.i, %list_add_tail.exit ], [ %1, %lor.lhs.false.if.end31_crit_edge ]
  %disks = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 13
  %44 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp32283 = icmp sgt i32 %45, 0
  br i1 %cmp32283, label %for.body.lr.ph, label %if.end31.do.body61_crit_edge

if.end31.do.body61_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

for.body.lr.ph:                                   ; preds = %if.end31
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %46 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pd_idx, align 8
  %conv = sext i16 %47 to i32
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc49, %if.end48.for.body_crit_edge ]
  %data_sector.0285 = phi i64 [ 0, %for.body.lr.ph ], [ %data_sector.2, %if.end48.for.body_crit_edge ]
  %data_disks.0284 = phi i32 [ 0, %for.body.lr.ph ], [ %data_disks.1, %if.end48.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0286, i32 %conv)
  %cmp34.not = icmp eq i32 %i.0286, %conv
  br i1 %cmp34.not, label %for.body.if.end48_crit_edge, label %land.lhs.true36

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true36:                                  ; preds = %for.body
  %flags = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0286, i32 12
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %50 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool38.not = icmp eq i32 %50, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end48_crit_edge, label %if.then39

land.lhs.true36.if.end48_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_disks.0284)
  %tobool40.not = icmp eq i32 %data_disks.0284, 0
  br i1 %tobool40.not, label %if.then39.if.then45_crit_edge, label %lor.lhs.false41

if.then39.if.then45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

lor.lhs.false41:                                  ; preds = %if.then39
  %sector42 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0286, i32 11
  %51 = ptrtoint ptr %sector42 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sector42, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %data_sector.0285)
  %cmp43 = icmp ult i64 %52, %data_sector.0285
  br i1 %cmp43, label %lor.lhs.false41.if.then45_crit_edge, label %lor.lhs.false41.if.end47_crit_edge

lor.lhs.false41.if.end47_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

lor.lhs.false41.if.then45_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false41.if.then45_crit_edge, %if.then39.if.then45_crit_edge
  %sector46 = getelementptr %struct.stripe_head, ptr %sh, i32 0, i32 29, i32 %i.0286, i32 11
  %53 = ptrtoint ptr %sector46 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sector46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %lor.lhs.false41.if.end47_crit_edge
  %data_sector.1 = phi i64 [ %54, %if.then45 ], [ %data_sector.0285, %lor.lhs.false41.if.end47_crit_edge ]
  %inc = add i32 %data_disks.0284, 1
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true36.if.end48_crit_edge, %for.body.if.end48_crit_edge
  %data_disks.1 = phi i32 [ %inc, %if.end47 ], [ %data_disks.0284, %land.lhs.true36.if.end48_crit_edge ], [ %data_disks.0284, %for.body.if.end48_crit_edge ]
  %data_sector.2 = phi i64 [ %data_sector.1, %if.end47 ], [ %data_sector.0285, %land.lhs.true36.if.end48_crit_edge ], [ %data_sector.0285, %for.body.if.end48_crit_edge ]
  %inc49 = add nuw nsw i32 %i.0286, 1
  %exitcond.not = icmp eq i32 %inc49, %45
  br i1 %exitcond.not, label %do.body50, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_disks.1)
  %tobool51.not = icmp eq i32 %data_disks.1, 0
  br i1 %tobool51.not, label %do.body50.do.body61_crit_edge, label %do.body70, !prof !194

do.body50.do.body61_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body61

do.body61:                                        ; preds = %do.body50.do.body61_crit_edge, %if.end31.do.body61_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-ppl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #11, !srcloc !195
  unreachable

do.body70:                                        ; preds = %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_log_stripe.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_log_stripe, %if.then82)) #11
          to label %do.end86 [label %if.then82], !srcloc !192

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %seq83 = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 4
  %55 = ptrtoint ptr %seq83 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %seq83, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_log_stripe.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i64 noundef %56, i64 noundef %data_sector.2, i32 noundef %data_disks.1) #11
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body70
  %header_page = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 1
  %57 = ptrtoint ptr %header_page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %header_page, align 4
  %call87 = tail call ptr @page_address(ptr noundef %58) #11
  %entries_count88 = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 2
  %59 = ptrtoint ptr %entries_count88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %entries_count88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp89.not = icmp eq i32 %60, 0
  br i1 %cmp89.not, label %do.end86.if.then146_crit_edge, label %if.then91

do.end86.if.then146_crit_edge:                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

if.then91:                                        ; preds = %do.end86
  %sub = add i32 %60, -1
  %arrayidx93 = getelementptr %struct.ppl_header, ptr %call87, i32 0, i32 6, i32 %sub
  %prev = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev, align 4
  %63 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %arrayidx93, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64)
  %data_size = getelementptr %struct.ppl_header, ptr %call87, i32 0, i32 6, i32 %sub, i32 2
  %66 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %data_size, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %sector96 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 5
  %69 = ptrtoint ptr %sector96 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sector96, align 8
  %sector97 = getelementptr i8, ptr %62, i32 -156
  %71 = ptrtoint ptr %sector97 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %sector97, align 8
  %add = add i64 %72, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %add)
  %cmp98 = icmp eq i64 %70, %add
  br i1 %cmp98, label %cond.end129, label %if.then91.if.then146_crit_edge

if.then91.if.then146_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

cond.end129:                                      ; preds = %if.then91
  %chunk_sectors = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i = icmp eq i32 %74, 0
  %75 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 true) #11, !range !196
  %sub.i.op.i = xor i32 %75, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %data_sector.2, %sh_prom
  %sh_prom131 = zext i32 %sub.i to i64
  %shr132 = lshr i64 %65, %sh_prom131
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %shr132)
  %cmp133 = icmp eq i64 %shr, %shr132
  br i1 %cmp133, label %land.lhs.true135, label %cond.end129.if.then146_crit_edge

cond.end129.if.then146_crit_edge:                 ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

land.lhs.true135:                                 ; preds = %cond.end129
  %sub136 = sub i64 %data_sector.2, %65
  %conv137 = sext i32 %data_disks.1 to i64
  %mul = mul i64 %sub136, %conv137
  %shr138 = lshr i32 %68, 9
  %conv139 = zext i32 %shr138 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv139)
  %cmp140 = icmp ne i64 %mul, %conv139
  %tobool145.not = icmp eq ptr %arrayidx93, null
  %or.cond = or i1 %tobool145.not, %cmp140
  br i1 %or.cond, label %land.lhs.true135.if.then146_crit_edge, label %land.lhs.true135.if.end154_crit_edge

land.lhs.true135.if.end154_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

land.lhs.true135.if.then146_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

if.then146:                                       ; preds = %land.lhs.true135.if.then146_crit_edge, %cond.end129.if.then146_crit_edge, %if.then91.if.then146_crit_edge, %do.end86.if.then146_crit_edge
  %inc149 = add i32 %60, 1
  %76 = ptrtoint ptr %entries_count88 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc149, ptr %entries_count88, align 8
  %arrayidx150 = getelementptr %struct.ppl_header, ptr %call87, i32 0, i32 6, i32 %60
  %77 = tail call i64 @llvm.bswap.i64(i64 %data_sector.2)
  %78 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %arrayidx150, align 1
  %pd_idx152 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %79 = ptrtoint ptr %pd_idx152 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pd_idx152, align 8
  %conv153 = sext i16 %80 to i32
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv153)
  %parity_disk = getelementptr %struct.ppl_header, ptr %call87, i32 0, i32 6, i32 %60, i32 3
  %82 = ptrtoint ptr %parity_disk to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %parity_disk, align 1
  %checksum = getelementptr %struct.ppl_header, ptr %call87, i32 0, i32 6, i32 %60, i32 4
  %83 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 -1, ptr %checksum, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then146, %land.lhs.true135.if.end154_crit_edge
  %e.2 = phi ptr [ %arrayidx150, %if.then146 ], [ %arrayidx93, %land.lhs.true135.if.end154_crit_edge ]
  %data_size155 = getelementptr inbounds %struct.ppl_header_entry, ptr %e.2, i32 0, i32 2
  %shl = shl i32 %data_disks.1, 12
  %84 = ptrtoint ptr %data_size155 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_size155, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  %add.i = add i32 %86, %shl
  %87 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %88 = ptrtoint ptr %data_size155 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %data_size155, align 4
  %state = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 10
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %state, align 4
  %91 = and i32 %90, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool157.not = icmp eq i32 %91, 0
  br i1 %tobool157.not, label %if.then158, label %if.end154.if.end166_crit_edge

if.end154.if.end166_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %pp_size159 = getelementptr inbounds %struct.ppl_header_entry, ptr %e.2, i32 0, i32 1
  %92 = ptrtoint ptr %pp_size159 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pp_size159, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #11
  %add.i256 = add i32 %94, 4096
  %95 = tail call i32 @llvm.bswap.i32(i32 %add.i256) #11
  %96 = ptrtoint ptr %pp_size159 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %pp_size159, align 4
  %pp_size160 = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 3
  %97 = ptrtoint ptr %pp_size160 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pp_size160, align 4
  %add161 = add i32 %98, 4096
  store i32 %add161, ptr %pp_size160, align 4
  %checksum162 = getelementptr inbounds %struct.ppl_header_entry, ptr %e.2, i32 0, i32 4
  %99 = ptrtoint ptr %checksum162 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %checksum162, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %ppl_page = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 27
  %102 = ptrtoint ptr %ppl_page to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ppl_page, align 8
  %call163 = tail call ptr @page_address(ptr noundef %103) #11
  %call164 = tail call i32 @crc32c(i32 noundef %101, ptr noundef %call163, i32 noundef 4096) #11
  %104 = tail call i32 @llvm.bswap.i32(i32 %call164)
  %105 = ptrtoint ptr %checksum162 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %checksum162, align 1
  br label %if.end166

if.end166:                                        ; preds = %if.then158, %if.end154.if.end166_crit_edge
  %log_list = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24
  %stripe_list167 = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 6
  %prev.i257 = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 6, i32 1
  %106 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i257, align 4
  %call.i.i258 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %107, ptr noundef %stripe_list167) #11
  br i1 %call.i.i258, label %if.end.i.i260, label %if.end166.list_add_tail.exit261_crit_edge

if.end166.list_add_tail.exit261_crit_edge:        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit261

if.end.i.i260:                                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %log_list, ptr %prev.i257, align 4
  %109 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %stripe_list167, ptr %log_list, align 4
  %prev3.i.i259 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 24, i32 1
  %110 = ptrtoint ptr %prev3.i.i259 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i259, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %log_list, ptr %107, align 4
  br label %list_add_tail.exit261

list_add_tail.exit261:                            ; preds = %if.end.i.i260, %if.end166.list_add_tail.exit261_crit_edge
  %pending_stripes = getelementptr inbounds %struct.ppl_io_unit, ptr %io.1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %pending_stripes, i32 1, i32 3, i32 1) #11
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripes, ptr %pending_stripes, i32 1, ptr elementtype(i32) %pending_stripes) #11, !srcloc !193
  %113 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %io.1, ptr %113, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit261, %if.then24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit261 ], [ -12, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ppl_write_stripe_run(ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %0 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_private, align 4
  %count = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ppl_submit_current_io.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ppl_submit_current_io.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child_logs, align 4
  %io_mutex = getelementptr %struct.ppl_log, ptr %5, i32 %i.08, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #11
  %io_list_lock.i = getelementptr %struct.ppl_log, ptr %5, i32 %i.08, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %io_list_lock.i) #11
  %io_list.i = getelementptr %struct.ppl_log, ptr %5, i32 %i.08, i32 5
  %6 = ptrtoint ptr %io_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %io_list.i, align 4
  %cmp.not.i = icmp eq ptr %7, %io_list.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -24
  %tobool.not26.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not26.i
  br i1 %tobool.not.i, label %for.body.if.end.thread.i_crit_edge, label %land.lhs.true.i

for.body.if.end.thread.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %for.body
  %submitted.i = getelementptr i8, ptr %7, i32 24
  %8 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %submitted.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.then6.i, label %land.lhs.true.i.if.end.thread.i_crit_edge

land.lhs.true.i.if.end.thread.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i.if.end.thread.i_crit_edge, %for.body.if.end.thread.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock.i) #11
  br label %ppl_submit_current_io.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock.i) #11
  %10 = ptrtoint ptr %submitted.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %submitted.i, align 8
  %current_io.i = getelementptr %struct.ppl_log, ptr %5, i32 %i.08, i32 3
  %11 = ptrtoint ptr %current_io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_io.i, align 4
  %cmp8.i = icmp eq ptr %add.ptr.i, %12
  br i1 %cmp8.i, label %if.then9.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %current_io.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %current_io.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end11.i_crit_edge
  tail call fastcc void @ppl_submit_iounit(ptr noundef nonnull %add.ptr.i) #11
  br label %ppl_submit_current_io.exit

ppl_submit_current_io.exit:                       ; preds = %if.end11.i, %if.end.thread.i
  tail call void @mutex_unlock(ptr noundef %io_mutex) #11
  %inc = add nuw nsw i32 %i.08, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %ppl_submit_current_io.exit.for.body_crit_edge, label %ppl_submit_current_io.exit.for.end_crit_edge

ppl_submit_current_io.exit.for.end_crit_edge:     ; preds = %ppl_submit_current_io.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

ppl_submit_current_io.exit.for.body_crit_edge:    ; preds = %ppl_submit_current_io.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %ppl_submit_current_io.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ppl_quiesce(ptr noundef %conf, i32 noundef %quiesce) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %0 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiesce)
  %tobool.not = icmp eq i32 %quiesce, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %for.cond.preheader

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42 = icmp sgt i32 %3, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond.preheader.if.end12_crit_edge

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 1
  %wait_for_quiescent = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 59
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child_logs, align 4
  %io_list_lock = getelementptr %struct.ppl_log, ptr %5, i32 %i.043, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #11
  %io_list.i = getelementptr %struct.ppl_log, ptr %5, i32 %i.043, i32 5
  %6 = ptrtoint ptr %io_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %io_list.i, align 4
  %cmp.not.i = icmp eq ptr %7, %io_list.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -24
  %tobool.not1.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not1.i
  br i1 %tobool.not.i, label %for.body.do.end_crit_edge, label %ppl_no_io_unit_submitted.exit

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

ppl_no_io_unit_submitted.exit:                    ; preds = %for.body
  %submitted.i = getelementptr i8, ptr %7, i32 24
  %8 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %submitted.i, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %ppl_no_io_unit_submitted.exit.do.end_crit_edge, label %if.end

ppl_no_io_unit_submitted.exit.do.end_crit_edge:   ; preds = %ppl_no_io_unit_submitted.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %ppl_no_io_unit_submitted.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call336 = call i32 @prepare_to_wait_event(ptr noundef %wait_for_quiescent, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %11 = ptrtoint ptr %io_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %io_list.i, align 4
  %cmp.not.i2637 = icmp eq ptr %12, %io_list.i
  %add.ptr.i2738 = getelementptr i8, ptr %12, i32 -24
  %tobool.not1.i2839 = icmp eq ptr %add.ptr.i2738, null
  %tobool.not.i2940 = or i1 %cmp.not.i2637, %tobool.not1.i2839
  br i1 %tobool.not.i2940, label %if.end.for.end_crit_edge, label %if.end.ppl_no_io_unit_submitted.exit33_crit_edge

if.end.ppl_no_io_unit_submitted.exit33_crit_edge: ; preds = %if.end
  br label %ppl_no_io_unit_submitted.exit33

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

ppl_no_io_unit_submitted.exit33:                  ; preds = %cleanup.ppl_no_io_unit_submitted.exit33_crit_edge, %if.end.ppl_no_io_unit_submitted.exit33_crit_edge
  %13 = phi ptr [ %17, %cleanup.ppl_no_io_unit_submitted.exit33_crit_edge ], [ %12, %if.end.ppl_no_io_unit_submitted.exit33_crit_edge ]
  %submitted.i30 = getelementptr i8, ptr %13, i32 24
  %14 = ptrtoint ptr %submitted.i30 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %submitted.i30, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i31 = icmp eq i8 %15, 0
  br i1 %tobool3.not.i31, label %ppl_no_io_unit_submitted.exit33.for.end_crit_edge, label %cleanup

ppl_no_io_unit_submitted.exit33.for.end_crit_edge: ; preds = %ppl_no_io_unit_submitted.exit33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %ppl_no_io_unit_submitted.exit33
  call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #11
  call void @schedule() #11
  call void @_raw_spin_lock_irq(ptr noundef %io_list_lock) #11
  %call3 = call i32 @prepare_to_wait_event(ptr noundef %wait_for_quiescent, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %16 = ptrtoint ptr %io_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %io_list.i, align 4
  %cmp.not.i26 = icmp eq ptr %17, %io_list.i
  %add.ptr.i27 = getelementptr i8, ptr %17, i32 -24
  %tobool.not1.i28 = icmp eq ptr %add.ptr.i27, null
  %tobool.not.i29 = or i1 %cmp.not.i26, %tobool.not1.i28
  br i1 %tobool.not.i29, label %cleanup.for.end_crit_edge, label %cleanup.ppl_no_io_unit_submitted.exit33_crit_edge

cleanup.ppl_no_io_unit_submitted.exit33_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %ppl_no_io_unit_submitted.exit33

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %ppl_no_io_unit_submitted.exit33.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_for_quiescent, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end

do.end:                                           ; preds = %for.end, %ppl_no_io_unit_submitted.exit.do.end_crit_edge, %for.body.do.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %io_list_lock) #11
  %inc = add nuw nsw i32 %i.043, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end12:                                         ; preds = %do.end.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ppl_handle_flush_request(ptr nocapture noundef readnone %log, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, -262145
  store i32 %4, ptr %bi_opf, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ppl_stripe_write_finished(ptr nocapture noundef %sh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 23
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %land.lhs.true

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true:                                    ; preds = %entry
  %pending_stripes = getelementptr inbounds %struct.ppl_io_unit, ptr %2, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_stripes, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %pending_stripes, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_stripes, ptr %pending_stripes, i32 1, ptr elementtype(i32) %pending_stripes) #11, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %disk_flush_bitmap = getelementptr inbounds %struct.ppl_log, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %disk_flush_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disk_flush_bitmap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ppl_do_flush(ptr noundef nonnull %2)
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ppl_io_unit_finished(ptr noundef nonnull %2)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppl_do_flush(ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %raid_disks3 = getelementptr inbounds %struct.r5conf, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %raid_disks3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %raid_disks3, align 4
  %pending_flushes = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_flushes, i32 noundef 4) #11
  %10 = ptrtoint ptr %pending_flushes to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %pending_flushes, align 4
  %disk_flush_bitmap = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 10
  %call = tail call i32 @_find_next_bit_be(ptr noundef %disk_flush_bitmap, i32 noundef %9, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp89 = icmp slt i32 %call, %9
  br i1 %cmp89, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %disks = getelementptr inbounds %struct.r5conf, ptr %7, i32 0, i32 66
  %flush_bs = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ %call, %for.body.lr.ph ], [ %call37, %if.end35.for.body_crit_edge ]
  %flushed_disks.090 = phi i32 [ 0, %for.body.lr.ph ], [ %flushed_disks.1, %if.end35.for.body_crit_edge ]
  %11 = call i32 @llvm.read_register.i32(metadata !182) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %15 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disks, align 8
  %arrayidx = getelementptr %struct.disk_info, ptr %16, i32 %i.091
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx, align 4
  %call6 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @ppl_do_flush.__warned, align 1
  br i1 %.b76, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ppl_do_flush.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 631, ptr noundef nonnull @.str.38) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %do.end12.if.end20_crit_edge, label %land.lhs.true15

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true15:                                  ; preds = %do.end12
  %flags = getelementptr inbounds %struct.md_rdev, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true15.if.end20_crit_edge

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %bdev19 = getelementptr inbounds %struct.md_rdev, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %bdev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true15.if.end20_crit_edge, %do.end12.if.end20_crit_edge
  %bdev.0 = phi ptr [ null, %land.lhs.true15.if.end20_crit_edge ], [ %22, %if.then18 ], [ null, %do.end12.if.end20_crit_edge ]
  %call.i78 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i78, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %if.end20
  %call1.i79 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %23 = call i32 @llvm.read_register.i32(metadata !182) #11
  %and.i.i.i.i.i85 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool21.not = icmp eq ptr %bdev.0, null
  br i1 %tobool21.not, label %rcu_read_unlock.exit.if.end35_crit_edge, label %if.then22

rcu_read_unlock.exit.if.end35_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then22:                                        ; preds = %rcu_read_unlock.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %27 = call ptr @memset(ptr %b, i32 255, i32 32)
  %call23 = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %flush_bs) #11
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 3
  %28 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %29, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 1
  %30 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %31, %bdev.0
  br i1 %cmp.not.i, label %if.then22.bio_set_dev.exit_crit_edge, label %if.then.i87

if.then22.bio_set_dev.exit_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i87:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %29, -2177
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i87, %if.then22.bio_set_dev.exit_crit_edge
  %33 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bdev.0, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call23) #11
  %bi_private = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 11
  %34 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %io, ptr %bi_private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 2
  %35 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262145, ptr %bi_opf, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 10
  %36 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ppl_flush_endio, ptr %bi_end_io, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_do_flush.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_do_flush, %if.then30)) #11
          to label %do.end34 [label %if.then30], !srcloc !192

if.then30:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call ptr @bio_devname(ptr noundef %call23, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_do_flush.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, ptr noundef %call31) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %bio_set_dev.exit
  call void @submit_bio(ptr noundef %call23) #11
  %inc = add i32 %flushed_disks.090, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %rcu_read_unlock.exit.if.end35_crit_edge
  %flushed_disks.1 = phi i32 [ %inc, %do.end34 ], [ %flushed_disks.090, %rcu_read_unlock.exit.if.end35_crit_edge ]
  %add = add nsw i32 %i.091, 1
  %call37 = call i32 @_find_next_bit_be(ptr noundef %disk_flush_bitmap, i32 noundef %9, i32 noundef %add) #11
  %cmp = icmp slt i32 %call37, %9
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %entry.for.end_crit_edge
  %flushed_disks.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %flushed_disks.1, %if.end35.for.end_crit_edge ]
  %37 = ptrtoint ptr %disk_flush_bitmap to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %disk_flush_bitmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %flushed_disks.0.lcssa, i32 %9)
  %cmp4092 = icmp slt i32 %flushed_disks.0.lcssa, %9
  br i1 %cmp4092, label %for.end.for.body41_crit_edge, label %for.end.for.end48_crit_edge

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.end.for.body41_crit_edge:                     ; preds = %for.end
  br label %for.body41

for.body41:                                       ; preds = %for.inc46.for.body41_crit_edge, %for.end.for.body41_crit_edge
  %i.193 = phi i32 [ %inc47, %for.inc46.for.body41_crit_edge ], [ %flushed_disks.0.lcssa, %for.end.for.body41_crit_edge ]
  %call.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %pending_flushes, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @llvm.prefetch.p0(ptr %pending_flushes, i32 1, i32 3, i32 1) #11
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_flushes, ptr %pending_flushes, i32 1, ptr elementtype(i32) %pending_flushes) #11, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then44, label %for.body41.for.inc46_crit_edge

for.body41.for.inc46_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.then44:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ppl_io_unit_finished(ptr noundef %io)
  br label %for.inc46

for.inc46:                                        ; preds = %if.then44, %for.body41.for.inc46_crit_edge
  %inc47 = add i32 %i.193, 1
  %exitcond.not = icmp eq i32 %inc47, %9
  br i1 %exitcond.not, label %for.inc46.for.end48_crit_edge, label %for.inc46.for.body41_crit_edge

for.inc46.for.body41_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %for.end.for.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppl_io_unit_finished(ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_io_unit_finished.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_io_unit_finished, %if.then)) #11
          to label %do.body6 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 4
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_io_unit_finished.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.45, i64 noundef %9) #11
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !203
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %if.then19, label %do.body6.do.end22_crit_edge

do.body6.do.end22_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.then19:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body6.do.end22_crit_edge
  %io_list_lock = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %io_list_lock) #11
  %log_sibling = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %log_sibling) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end22.list_del.exit_crit_edge

do.end22.list_del.exit_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %log_sibling to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log_sibling, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end22.list_del.exit_crit_edge
  %17 = ptrtoint ptr %log_sibling to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %log_sibling, align 4
  %prev.i = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %io_list_lock) #11
  %io_pool = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 7
  tail call void @mempool_free(ptr noundef %io, ptr noundef %io_pool) #11
  %no_mem_stripes_lock = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %no_mem_stripes_lock) #11
  %no_mem_stripes = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %no_mem_stripes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %no_mem_stripes, align 4
  %cmp.i.not = icmp eq ptr %20, %no_mem_stripes
  br i1 %cmp.i.not, label %list_del.exit.if.end29_crit_edge, label %if.then26

list_del.exit.if.end29_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %list_del.exit
  %add.ptr = getelementptr i8, ptr %20, i32 -188
  %call.i.i81 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #11
  br i1 %call.i.i81, label %if.end.i.i84, label %if.then26.list_del_init.exit_crit_edge

if.then26.list_del_init.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i84:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i82 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i82, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i83, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i84, %if.then26.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %20, ptr %20, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %20, ptr %prev.i3.i, align 4
  %state = getelementptr i8, ptr %20, i32 -140
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #11
  tail call void @raid5_release_stripe(ptr noundef %add.ptr) #11
  br label %if.end29

if.end29:                                         ; preds = %list_del_init.exit, %list_del.exit.if.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %no_mem_stripes_lock) #11
  br i1 %tobool18.not, label %if.then40, label %if.end29.do.body42_crit_edge

if.end29.do.body42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body42

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %if.end29.do.body42_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !204
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool50.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool50.not, label %if.then59, label %do.body42.do.end62_crit_edge, !prof !194

do.body42.do.end62_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

if.then59:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body42.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !205
  %wait_for_quiescent = getelementptr inbounds %struct.r5conf, ptr %7, i32 0, i32 59
  tail call void @__wake_up(ptr noundef %wait_for_quiescent, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ppl_exit_log(ptr nocapture noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %0 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %flags2.i = getelementptr inbounds %struct.mddev, ptr %5, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags2.i) #11
  %child_logs.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %child_logs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child_logs.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %bs.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 8
  tail call void @bioset_exit(ptr noundef %bs.i) #11
  %flush_bs.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 9
  tail call void @bioset_exit(ptr noundef %flush_bs.i) #11
  %io_pool.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 7
  tail call void @mempool_exit(ptr noundef %io_pool.i) #11
  %io_kc.i = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %io_kc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_kc.i, align 8
  tail call void @kmem_cache_destroy(ptr noundef %9) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  %10 = ptrtoint ptr %log_private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %log_private, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ppl_init_log(ptr nocapture noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev1 = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_init_log.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_init_log, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev1, align 4
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.46, ptr %disk_name.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_init_log.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.5, ptr noundef %spec.select.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %level = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.not = icmp eq i32 %7, 5
  br i1 %cmp.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i209 = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %gendisk.i209 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gendisk.i209, align 8
  %tobool.not.i210 = icmp eq ptr %9, null
  %disk_name.i211 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %spec.select.i212 = select i1 %tobool.not.i210, ptr @.str.46, ptr %disk_name.i211
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %spec.select.i212, i32 noundef %7) #14
  br label %cleanup134

if.end14:                                         ; preds = %do.end
  %bitmap_info = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 86
  %10 = ptrtoint ptr %bitmap_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap_info, align 8
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end14.do.end21_crit_edge

if.end14.do.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

lor.lhs.false:                                    ; preds = %if.end14
  %offset = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 86, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool17.not = icmp eq i64 %13, 0
  br i1 %tobool17.not, label %if.end25, label %lor.lhs.false.do.end21_crit_edge

lor.lhs.false.do.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end21:                                         ; preds = %lor.lhs.false.do.end21_crit_edge, %if.end14.do.end21_crit_edge
  %gendisk.i213 = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %gendisk.i213 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gendisk.i213, align 8
  %tobool.not.i214 = icmp eq ptr %15, null
  %disk_name.i215 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 3
  %spec.select.i216 = select i1 %tobool.not.i214, ptr @.str.46, ptr %disk_name.i215
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %spec.select.i216) #14
  br label %cleanup134

if.end25:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %if.end35, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i217 = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %gendisk.i217 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gendisk.i217, align 8
  %tobool.not.i218 = icmp eq ptr %20, null
  %disk_name.i219 = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 3
  %spec.select.i220 = select i1 %tobool.not.i218, ptr @.str.46, ptr %disk_name.i219
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %spec.select.i220) #14
  br label %cleanup134

if.end35:                                         ; preds = %if.end25
  %raid_disks = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 8
  %21 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %raid_disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp36 = icmp sgt i32 %22, 32
  br i1 %cmp36, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i221 = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %gendisk.i221 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gendisk.i221, align 8
  %tobool.not.i222 = icmp eq ptr %24, null
  %disk_name.i223 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 3
  %spec.select.i224 = select i1 %tobool.not.i222, ptr @.str.46, ptr %disk_name.i223
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %spec.select.i224, i32 noundef 32) #14
  br label %cleanup134

if.end44:                                         ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 1432) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup134_crit_edge, label %if.end48

if.end44.cleanup134_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup134

if.end48:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %call7.i.i, align 8
  %call50 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 544, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  %io_kc = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %io_kc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call50, ptr %io_kc, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end48.err_crit_edge, label %if.end54

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end54:                                         ; preds = %if.end48
  %io_pool = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %raid_disks, align 4
  %call57 = tail call i32 @mempool_init(ptr noundef %io_pool, i32 noundef %29, ptr noundef nonnull @ppl_io_pool_alloc, ptr noundef nonnull @ppl_io_pool_free, ptr noundef nonnull %call50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.err_crit_edge

if.end54.err_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end60:                                         ; preds = %if.end54
  %bs = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %raid_disks, align 4
  %call62 = tail call i32 @bioset_init(ptr noundef %bs, i32 noundef %31, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.err_crit_edge

if.end60.err_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end65:                                         ; preds = %if.end60
  %flush_bs = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raid_disks, align 4
  %call67 = tail call i32 @bioset_init(ptr noundef %flush_bs, i32 noundef %33, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.err_crit_edge

if.end65.err_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end70:                                         ; preds = %if.end65
  %34 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %raid_disks, align 4
  %count = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %count, align 8
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 184) #11
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !194

kcalloc.exit.thread:                              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %child_logs232 = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %child_logs232 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %child_logs232, align 4
  br label %err

if.end7.i.i:                                      ; preds = %if.end70
  %40 = extractvalue { i32, i1 } %37, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #16
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %child_logs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i.i, ptr %child_logs, align 4
  %tobool75.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool75.not, label %if.end7.i.i.err_crit_edge, label %if.end77

if.end7.i.i.err_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end77:                                         ; preds = %if.end7.i.i
  %seq = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seq, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %seq, i64 noundef 0) #11
  %no_mem_stripes = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %no_mem_stripes to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %no_mem_stripes, ptr %no_mem_stripes, align 4
  %prev.i = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %no_mem_stripes, ptr %prev.i, align 8
  %no_mem_stripes_lock = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %no_mem_stripes_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ppl_init_log.__key, i16 noundef signext 3) #11
  %write_hint = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %write_hint to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %write_hint, align 8
  %external = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 18
  %45 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %external, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool82.not = icmp eq i32 %46, 0
  br i1 %tobool82.not, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %uuid = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 33
  %call84 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %uuid, i32 noundef 16) #11
  %neg = xor i32 %call84, -1
  %signature = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %signature to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %neg, ptr %signature, align 8
  br label %if.end87

if.else:                                          ; preds = %if.end77
  %queue = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 84
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue, align 8
  %tobool.not.i225 = icmp eq ptr %49, null
  br i1 %tobool.not.i225, label %if.else.if.end87_crit_edge, label %land.lhs.true.i

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 37, i32 9
  %50 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i = icmp eq i32 %51, 0
  %spec.select.i226 = select i1 %tobool2.not.i, i32 512, i32 %51
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true.i, %if.else.if.end87_crit_edge, %if.then83
  %retval1.0.i.sink = phi i32 [ 512, %if.then83 ], [ 512, %if.else.if.end87_crit_edge ], [ %spec.select.i226, %land.lhs.true.i ]
  %block_size86 = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %block_size86 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval1.0.i.sink, ptr %block_size86, align 4
  %53 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp89242 = icmp sgt i32 %54, 0
  br i1 %cmp89242, label %for.body.lr.ph, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end87
  %disks = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 66
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %55 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %child_logs, align 4
  %arrayidx = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243
  %57 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disks, align 8
  %arrayidx91 = getelementptr %struct.disk_info, ptr %58, i32 %i.0243
  %59 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx91, align 4
  %io_mutex = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 2
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @ppl_init_log.__key.18) #11
  %io_list_lock = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %io_list_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @ppl_init_log.__key.20, i16 noundef signext 3) #11
  %io_list = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 5
  %61 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i227 = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 5, i32 1
  %62 = ptrtoint ptr %prev.i227 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %io_list, ptr %prev.i227, align 4
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %arrayidx, align 8
  %rdev101 = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 1
  %64 = ptrtoint ptr %rdev101 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %60, ptr %rdev101, align 4
  %tobool102.not = icmp eq ptr %60, null
  br i1 %tobool102.not, label %for.body.for.inc_crit_edge, label %if.then103

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then103:                                       ; preds = %for.body
  %call104 = tail call fastcc i32 @ppl_validate_rdev(ptr noundef nonnull %60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then103.err_crit_edge

if.then103.err_crit_edge:                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end107:                                        ; preds = %if.then103
  %size.i = getelementptr inbounds %struct.md_rdev, ptr %60, i32 0, i32 33, i32 1
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %66, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 270335, i32 %shl.i)
  %cmp.i = icmp ugt i32 %shl.i, 270335
  %use_multippl.i = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %use_multippl.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %use_multippl.i, align 4
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %71, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %use_multippl.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %use_multippl.i, align 4
  %73 = ptrtoint ptr %rdev101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rdev101, align 4
  %size4.i = getelementptr inbounds %struct.md_rdev, ptr %74, i32 0, i32 33, i32 1
  %75 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size4.i, align 4
  %shl5.i = shl i32 %76, 9
  %sub.i = add i32 %shl5.i, -4096
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %sub.sink.i = phi i32 [ 131072, %if.then.i ], [ %sub.i, %if.else.i ]
  %77 = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 7
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.sink.i, ptr %77, align 8
  %sector.i = getelementptr inbounds %struct.md_rdev, ptr %60, i32 0, i32 33, i32 2
  %79 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sector.i, align 8
  %next_io_sector.i = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 6
  %81 = ptrtoint ptr %next_io_sector.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %next_io_sector.i, align 8
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %60, i32 0, i32 5
  %82 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %83, i32 0, i32 18
  %84 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %queue_flags.i, align 4
  %88 = and i32 %87, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i228 = icmp eq i32 %88, 0
  br i1 %tobool.not.i228, label %if.end.i.for.inc_crit_edge, label %if.then9.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %wb_cache_on.i = getelementptr %struct.ppl_log, ptr %56, i32 %i.0243, i32 9
  %89 = ptrtoint ptr %wb_cache_on.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %wb_cache_on.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then9.i, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0243, 1
  %90 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count, align 8
  %cmp89 = icmp slt i32 %inc, %91
  br i1 %cmp89, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end87.for.end_crit_edge
  %call110 = tail call fastcc i32 @ppl_load(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.else113, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.else113:                                       ; preds = %for.end
  %pers = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pers, align 4
  %tobool114.not = icmp eq ptr %93, null
  br i1 %tobool114.not, label %land.lhs.true, label %land.lhs.true125

land.lhs.true:                                    ; preds = %if.else113
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 67
  %94 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %cmp115 = icmp eq i64 %95, 0
  br i1 %cmp115, label %land.lhs.true116, label %land.lhs.true.if.end131_crit_edge

land.lhs.true.if.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.lhs.true116:                                 ; preds = %land.lhs.true
  %recovered_entries = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 10
  %96 = ptrtoint ptr %recovered_entries to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %recovered_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp117 = icmp sgt i32 %97, 0
  br i1 %cmp117, label %land.lhs.true118, label %land.lhs.true116.if.end131_crit_edge

land.lhs.true116.if.end131_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.lhs.true118:                                 ; preds = %land.lhs.true116
  %mismatch_count = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 11
  %98 = ptrtoint ptr %mismatch_count to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mismatch_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp119 = icmp eq i32 %99, 0
  br i1 %cmp119, label %if.then120, label %land.lhs.true118.if.end131_crit_edge

land.lhs.true118.if.end131_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then120:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 -1, ptr %recovery_cp, align 8
  %sb_flags = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %sb_flags) #11
  br label %if.end131

land.lhs.true125:                                 ; preds = %if.else113
  %mismatch_count126 = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 11
  %101 = ptrtoint ptr %mismatch_count126 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mismatch_count126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp127 = icmp sgt i32 %102, 0
  br i1 %cmp127, label %land.lhs.true125.err_crit_edge, label %land.lhs.true125.if.end131_crit_edge

land.lhs.true125.if.end131_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.lhs.true125.err_crit_edge:                   ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end131:                                        ; preds = %land.lhs.true125.if.end131_crit_edge, %if.then120, %land.lhs.true118.if.end131_crit_edge, %land.lhs.true116.if.end131_crit_edge, %land.lhs.true.if.end131_crit_edge
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %103 = ptrtoint ptr %log_private to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i, ptr %log_private, align 4
  %104 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i.i, align 8
  %flags133 = getelementptr inbounds %struct.mddev, ptr %105, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags133) #11
  br label %cleanup134

err:                                              ; preds = %land.lhs.true125.err_crit_edge, %for.end.err_crit_edge, %if.then103.err_crit_edge, %if.end7.i.i.err_crit_edge, %kcalloc.exit.thread, %if.end65.err_crit_edge, %if.end60.err_crit_edge, %if.end54.err_crit_edge, %if.end48.err_crit_edge
  %ret.3 = phi i32 [ %call57, %if.end54.err_crit_edge ], [ %call62, %if.end60.err_crit_edge ], [ %call67, %if.end65.err_crit_edge ], [ %call110, %for.end.err_crit_edge ], [ -12, %if.end48.err_crit_edge ], [ -12, %if.end7.i.i.err_crit_edge ], [ -22, %land.lhs.true125.err_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %call104, %if.then103.err_crit_edge ]
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i, align 8
  %flags.i229 = getelementptr inbounds %struct.mddev, ptr %107, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i229) #11
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %flags2.i = getelementptr inbounds %struct.mddev, ptr %109, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags2.i) #11
  %child_logs.i = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %child_logs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %child_logs.i, align 4
  tail call void @kfree(ptr noundef %111) #11
  %bs.i = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 8
  tail call void @bioset_exit(ptr noundef %bs.i) #11
  %flush_bs.i = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 9
  tail call void @bioset_exit(ptr noundef %flush_bs.i) #11
  %io_pool.i = getelementptr inbounds %struct.ppl_conf, ptr %call7.i.i, i32 0, i32 7
  tail call void @mempool_exit(ptr noundef %io_pool.i) #11
  %112 = ptrtoint ptr %io_kc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_kc, align 8
  tail call void @kmem_cache_destroy(ptr noundef %113) #11
  tail call void @kfree(ptr noundef %call7.i.i) #11
  br label %cleanup134

cleanup134:                                       ; preds = %err, %if.end131, %if.end44.cleanup134_crit_edge, %do.end40, %do.end31, %do.end21, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end21 ], [ -22, %do.end31 ], [ -22, %do.end40 ], [ %ret.3, %err ], [ 0, %if.end131 ], [ -12, %if.end44.cleanup134_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ppl_io_pool_alloc(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %pool_data, i32 noundef %gfp_mask) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %header_page = getelementptr inbounds %struct.ppl_io_unit, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %header_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call38.i.i.i, ptr %header_page, align 4
  %tobool3.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kmem_cache_free(ptr noundef %pool_data, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppl_io_pool_free(ptr noundef %element, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %header_page = getelementptr inbounds %struct.ppl_io_unit, ptr %element, i32 0, i32 1
  %0 = ptrtoint ptr %header_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %header_page, align 4
  tail call void @__free_pages(ptr noundef %1, i32 noundef 0) #11
  tail call void @kmem_cache_free(ptr noundef %pool_data, ptr noundef %element) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_validate_rdev(ptr nocapture noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %ppl = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 33
  %size = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 33, i32 1
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %sub = add i32 %2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  %sub1 = and i32 %sub, -8
  %spec.select = select i1 %cmp, i32 %sub1, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp2 = icmp slt i32 %spec.select, 1
  br i1 %cmp2, label %do.end, label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mddev, align 8
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.46, ptr %disk_name.i
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev, align 4
  %call5 = call ptr @bdevname(ptr noundef %8, ptr noundef nonnull %b) #11
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %spec.select.i, ptr noundef %call5) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add = add nuw i32 %spec.select, 8
  %sector = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 33, i32 2
  %9 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sector, align 8
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 10
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp9 = icmp ult i64 %10, %12
  br i1 %cmp9, label %land.lhs.true, label %land.lhs.true21

land.lhs.true:                                    ; preds = %if.end7
  %conv = sext i32 %add to i64
  %add12 = add i64 %10, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add12, i64 %12)
  %cmp14 = icmp ugt i64 %add12, %12
  br i1 %cmp14, label %land.lhs.true.do.end31_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

land.lhs.true21:                                  ; preds = %if.end7
  %sectors = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 1
  %13 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sectors, align 8
  %add23 = add i64 %14, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add23, i64 %10)
  %cmp26 = icmp ugt i64 %add23, %10
  br i1 %cmp26, label %land.lhs.true21.do.end31_crit_edge, label %land.lhs.true21.if.end39_crit_edge

land.lhs.true21.if.end39_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true21.do.end31_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end31:                                         ; preds = %land.lhs.true21.do.end31_crit_edge, %land.lhs.true.do.end31_crit_edge
  %mddev33 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 2
  %15 = ptrtoint ptr %mddev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mddev33, align 8
  %gendisk.i112 = getelementptr inbounds %struct.mddev, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %gendisk.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gendisk.i112, align 8
  %tobool.not.i113 = icmp eq ptr %18, null
  %disk_name.i114 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %spec.select.i115 = select i1 %tobool.not.i113, ptr @.str.46, ptr %disk_name.i114
  %bdev35 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %19 = ptrtoint ptr %bdev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev35, align 4
  %call37 = call ptr @bdevname(ptr noundef %20, ptr noundef nonnull %b) #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %spec.select.i115, ptr noundef %call37) #14
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true21.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge
  %mddev40 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 2
  %21 = ptrtoint ptr %mddev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mddev40, align 8
  %external = getelementptr inbounds %struct.mddev, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %external, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %land.lhs.true41, label %if.end39.if.end76_crit_edge

if.end39.if.end76_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true41:                                  ; preds = %if.end39
  %25 = ptrtoint ptr %ppl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ppl, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp44 = icmp sgt i16 %26, 0
  br i1 %cmp44, label %land.lhs.true46, label %lor.lhs.false52

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %conv43125 = zext i16 %26 to i32
  %sb_size = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 13
  %27 = ptrtoint ptr %sb_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_size, align 8
  %shr = ashr i32 %28, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv43125)
  %cmp50 = icmp sgt i32 %shr, %conv43125
  br i1 %cmp50, label %land.lhs.true46.do.end68_crit_edge, label %land.lhs.true46.if.end76_crit_edge

land.lhs.true46.if.end76_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true46.do.end68_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

lor.lhs.false52:                                  ; preds = %land.lhs.true41
  %conv55 = sext i16 %26 to i32
  %add62 = add i32 %add, %conv55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add62)
  %cmp63 = icmp sgt i32 %add62, 0
  br i1 %cmp63, label %lor.lhs.false52.do.end68_crit_edge, label %lor.lhs.false52.if.end76_crit_edge

lor.lhs.false52.if.end76_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

lor.lhs.false52.do.end68_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

do.end68:                                         ; preds = %lor.lhs.false52.do.end68_crit_edge, %land.lhs.true46.do.end68_crit_edge
  %gendisk.i116 = getelementptr inbounds %struct.mddev, ptr %22, i32 0, i32 11
  %29 = ptrtoint ptr %gendisk.i116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gendisk.i116, align 8
  %tobool.not.i117 = icmp eq ptr %30, null
  %disk_name.i118 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 3
  %spec.select.i119 = select i1 %tobool.not.i117, ptr @.str.46, ptr %disk_name.i118
  %bdev72 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %31 = ptrtoint ptr %bdev72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev72, align 4
  %call74 = call ptr @bdevname(ptr noundef %32, ptr noundef nonnull %b) #11
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %spec.select.i119, ptr noundef %call74) #14
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false52.if.end76_crit_edge, %land.lhs.true46.if.end76_crit_edge, %if.end39.if.end76_crit_edge
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end68, %do.end31, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ -22, %do.end31 ], [ 0, %if.end76 ], [ -22, %do.end68 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_load(ptr nocapture noundef readonly %ppl_conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ppl_conf, ptr %ppl_conf, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp60 = icmp sgt i32 %1, 0
  br i1 %cmp60, label %for.body.lr.ph, label %entry.do.body18_crit_edge

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

for.body.lr.ph:                                   ; preds = %entry
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %ppl_conf, i32 0, i32 1
  %signature8 = getelementptr inbounds %struct.ppl_conf, ptr %ppl_conf, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %signature.064 = phi i32 [ 0, %for.body.lr.ph ], [ %signature.2.ph, %for.inc.for.body_crit_edge ]
  %signature_set.0.off063 = phi i1 [ false, %for.body.lr.ph ], [ %signature_set.2.off0.ph, %for.inc.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child_logs, align 4
  %rdev = getelementptr %struct.ppl_log, ptr %3, i32 %i.061, i32 1
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.ppl_log, ptr %3, i32 %i.061
  %call = tail call fastcc i32 @ppl_load_distributed(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.do.body18_crit_edge

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ppl_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppl_conf, align 8
  %external = getelementptr inbounds %struct.mddev, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %external, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end3.for.inc_crit_edge, label %if.then5

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then5:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %signature8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %signature8, align 8
  br i1 %signature_set.0.off063, label %if.else, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_cmp4(i32 %signature.064, i32 %11)
  %cmp10.not = icmp eq i32 %signature.064, %11
  br i1 %cmp10.not, label %if.else.for.inc_crit_edge, label %do.end

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.46, ptr %disk_name.i
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %spec.select.i) #14
  br label %do.body18

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then5.for.inc_crit_edge, %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %signature_set.2.off0.ph = phi i1 [ %signature_set.0.off063, %if.end3.for.inc_crit_edge ], [ true, %if.else.for.inc_crit_edge ], [ %signature_set.0.off063, %for.body.for.inc_crit_edge ], [ true, %if.then5.for.inc_crit_edge ]
  %signature.2.ph = phi i32 [ %signature.064, %if.end3.for.inc_crit_edge ], [ %signature.064, %if.else.for.inc_crit_edge ], [ %signature.064, %for.body.for.inc_crit_edge ], [ %11, %if.then5.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.061, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body18_crit_edge

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body18:                                        ; preds = %for.inc.do.body18_crit_edge, %do.end, %if.end.do.body18_crit_edge, %entry.do.body18_crit_edge
  %ret.2 = phi i32 [ -22, %do.end ], [ 0, %entry.do.body18_crit_edge ], [ 0, %for.inc.do.body18_crit_edge ], [ %call, %if.end.do.body18_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load, %if.then24)) #11
          to label %do.end27 [label %if.then24], !srcloc !192

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %mismatch_count = getelementptr inbounds %struct.ppl_conf, ptr %ppl_conf, i32 0, i32 11
  %16 = ptrtoint ptr %mismatch_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mismatch_count, align 8
  %recovered_entries = getelementptr inbounds %struct.ppl_conf, ptr %ppl_conf, i32 0, i32 10
  %18 = ptrtoint ptr %recovered_entries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %recovered_entries, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %ret.2, i32 noundef %17, i32 noundef %19) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body18
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ppl_modify_log(ptr nocapture noundef readonly %conf, ptr noundef %rdev, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_private = getelementptr inbounds %struct.r5conf, ptr %conf, i32 0, i32 74
  %0 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_private, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %tobool.not = icmp eq ptr %rdev, null
  %2 = call ptr @memset(ptr %b, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_modify_log.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_modify_log, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !192

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %3 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %raid_disk, align 4
  %cond = select i1 %add, ptr @.str.24, ptr @.str.25
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %call7 = call ptr @bdevname(ptr noundef %6, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_modify_log.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %4, ptr noundef nonnull %cond, ptr noundef %call7) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %raid_disk9 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %7 = ptrtoint ptr %raid_disk9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raid_disk9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %count = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp13.not = icmp slt i32 %8, %10
  br i1 %cmp13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child_logs, align 4
  %arrayidx = getelementptr %struct.ppl_log, ptr %12, i32 %8
  %io_mutex = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 2
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #11
  br i1 %add, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %call19 = call fastcc i32 @ppl_validate_rdev(ptr noundef nonnull %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.then18
  %rdev22 = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 1
  %13 = ptrtoint ptr %rdev22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rdev, ptr %rdev22, align 4
  %call23 = call fastcc i32 @ppl_write_empty_header(ptr noundef %arrayidx)
  %size.i = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 33, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %shl.i = shl i32 %15, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 270335, i32 %shl.i)
  %cmp.i = icmp ugt i32 %shl.i, 270335
  %use_multippl.i = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %use_multippl.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %use_multippl.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %20, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %use_multippl.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %use_multippl.i, align 4
  %22 = ptrtoint ptr %rdev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdev22, align 4
  %size4.i = getelementptr inbounds %struct.md_rdev, ptr %23, i32 0, i32 33, i32 1
  %24 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size4.i, align 4
  %shl5.i = shl i32 %25, 9
  %sub.i = add i32 %shl5.i, -4096
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %sub.sink.i = phi i32 [ 131072, %if.then.i ], [ %sub.i, %if.else.i ]
  %26 = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 7
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.sink.i, ptr %26, align 8
  %sector.i = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 33, i32 2
  %28 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sector.i, align 8
  %next_io_sector.i = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 6
  %30 = ptrtoint ptr %next_io_sector.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %next_io_sector.i, align 8
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %31 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_queue.i.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %queue_flags.i, align 4
  %37 = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i.if.end26_crit_edge, label %if.then9.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %wb_cache_on.i = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 9
  %38 = ptrtoint ptr %wb_cache_on.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %wb_cache_on.i, align 1
  br label %if.end26

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %rdev25 = getelementptr %struct.ppl_log, ptr %12, i32 %8, i32 1
  %39 = ptrtoint ptr %rdev25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rdev25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then9.i, %if.end.i.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then18.if.end26_crit_edge ], [ 0, %if.else ], [ %call23, %if.end.i.if.end26_crit_edge ], [ %call23, %if.then9.i ]
  call void @mutex_unlock(ptr noundef %io_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_write_empty_header(ptr nocapture noundef readonly %log) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev1 = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 1
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_write_empty_header.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_write_empty_header, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disk, align 4
  %sector = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 33, i32 2
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_write_empty_header.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef %3, i64 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3328, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev, align 4
  %sector10 = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 33, i32 2
  %8 = ptrtoint ptr %sector10 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sector10, align 8
  %10 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev1, align 4
  %size = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %conv = zext i32 %13 to i64
  %call13 = tail call i32 @blkdev_issue_zeroout(ptr noundef %7, i64 noundef %9, i64 noundef %conv, i32 noundef 3072, i32 noundef 0) #11
  %14 = call ptr @memset(ptr %call8, i32 255, i32 512)
  %15 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log, align 8
  %signature = getelementptr inbounds %struct.ppl_conf, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signature, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %signature14 = getelementptr inbounds %struct.ppl_header, ptr %call8, i32 0, i32 1
  %20 = ptrtoint ptr %signature14 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %signature14, align 1
  %call15 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %call8, i32 noundef 4096) #11
  %neg = xor i32 %call15, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %checksum = getelementptr inbounds %struct.ppl_header, ptr %call8, i32 0, i32 5
  %22 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %checksum, align 1
  %23 = ptrtoint ptr %sector10 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sector10, align 8
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data_offset, align 8
  %sub = sub i64 %24, %26
  %call18 = tail call i32 @sync_page_io(ptr noundef %1, i64 noundef %sub, i32 noundef 4096, ptr noundef nonnull %call38.i.i.i, i32 noundef 133121, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end7.if.end21_crit_edge

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %mddev = getelementptr inbounds %struct.md_rdev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mddev, align 8
  tail call void @md_error(ptr noundef %28, ptr noundef %1) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end7.if.end21_crit_edge
  %ret.0 = phi i32 [ 0, %if.end7.if.end21_crit_edge ], [ -5, %if.then20 ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end21 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppl_write_hint_show(ptr noundef %mddev, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %mddev.i = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev.i, align 4
  %flags.i = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %land.lhs.true.cond.end_crit_edge, label %if.end

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end:                                           ; preds = %land.lhs.true
  %log_private = getelementptr inbounds %struct.r5conf, ptr %1, i32 0, i32 74
  %7 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_private, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %write_hint = getelementptr inbounds %struct.ppl_conf, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %write_hint to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %write_hint, align 8
  %conv = zext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.82, i32 noundef %cond)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppl_write_hint_store(ptr noundef %mddev, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %new = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new) #11
  %0 = ptrtoint ptr %new to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %new, align 2, !annotation !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len)
  %cmp = icmp ugt i32 %len, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %new) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %reconfig_mutex.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 60
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %1 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mddev, align 8
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %if.end6.cleanup.sink.split_crit_edge, label %if.else

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end6
  %mddev.i = getelementptr inbounds %struct.r5conf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mddev.i, align 4
  %flags.i = getelementptr inbounds %struct.mddev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.else.cleanup.sink.split_crit_edge, label %if.then10

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then10:                                        ; preds = %if.else
  %log_private = getelementptr inbounds %struct.r5conf, ptr %2, i32 0, i32 74
  %8 = ptrtoint ptr %log_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log_private, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.then10.cleanup.sink.split_crit_edge, label %10

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

10:                                               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %new to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %new, align 2
  %write_hint = getelementptr inbounds %struct.ppl_conf, ptr %9, i32 0, i32 14
  %13 = ptrtoint ptr %write_hint to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %write_hint, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %10, %if.then10.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %10 ], [ -22, %if.else.cleanup.sink.split_crit_edge ], [ -22, %if.then10.cleanup.sink.split_crit_edge ], [ -19, %if.end6.cleanup.sink.split_crit_edge ]
  call void @mddev_unlock(ptr noundef %mddev) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppl_submit_iounit(ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  %b.i268 = alloca [32 x i8], align 1
  %b.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %header_page = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 1
  %4 = ptrtoint ptr %header_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header_page, align 4
  %call = tail call ptr @page_address(ptr noundef %5) #11
  %bio3 = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10
  %bi_private = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 11
  %6 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %io, ptr %bi_private, align 4
  %rdev = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.md_rdev, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false
  %entries_count = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 2
  %11 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entries_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp277.not = icmp eq i32 %12, 0
  br i1 %cmp277.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %seq = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 4
  %block_size = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ppl_log_endio(ptr noundef %bio3)
  br label %cleanup

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ppl_header, ptr %call, i32 0, i32 6, i32 %i.0278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_submit_iounit.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_submit_iounit, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !192

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seq, align 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %pp_size = getelementptr %struct.ppl_header, ptr %call, i32 0, i32 6, i32 %i.0278, i32 1
  %18 = ptrtoint ptr %pp_size to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %pp_size, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %data_size = getelementptr %struct.ppl_header, ptr %call, i32 0, i32 6, i32 %i.0278, i32 2
  %21 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %data_size, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_submit_iounit.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %14, i32 noundef %i.0278, i64 noundef %17, i32 noundef %20, i32 noundef %23) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %for.body
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %28)
  %tobool.not.i.i = icmp ult i32 %28, 512
  %shr = ashr i32 %28, 9
  %29 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #11, !range !196
  %sub.i.op.i = xor i32 %29, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %sh_prom = zext i32 %sub.i to i64
  %shr26 = lshr i64 %26, %sh_prom
  %30 = tail call i64 @llvm.bswap.i64(i64 %shr26)
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %arrayidx, align 1
  %checksum = getelementptr %struct.ppl_header, ptr %call, i32 0, i32 6, i32 %i.0278, i32 4
  %32 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %checksum, align 1
  %34 = xor i32 %33, -1
  store i32 %34, ptr %checksum, align 1
  %inc = add nuw i32 %i.0278, 1
  %35 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %entries_count, align 8
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %36, %do.end.for.end_crit_edge ]
  %37 = tail call i32 @llvm.bswap.i32(i32 %.lcssa)
  %entries_count30 = getelementptr inbounds %struct.ppl_header, ptr %call, i32 0, i32 4
  %38 = ptrtoint ptr %entries_count30 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %entries_count30, align 1
  %call31 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %call, i32 noundef 4096) #11
  %neg32 = xor i32 %call31, -1
  %39 = tail call i32 @llvm.bswap.i32(i32 %neg32)
  %checksum33 = getelementptr inbounds %struct.ppl_header, ptr %call, i32 0, i32 5
  %40 = ptrtoint ptr %checksum33 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %checksum33, align 1
  %use_multippl = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %use_multippl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_multippl, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool34.not = icmp eq i8 %42, 0
  br i1 %tobool34.not, label %for.end.if.end52_crit_edge, label %land.lhs.true

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true:                                    ; preds = %for.end
  %43 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev, align 4
  %sector = getelementptr inbounds %struct.md_rdev, ptr %44, i32 0, i32 33, i32 2
  %45 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.md_rdev, ptr %44, i32 0, i32 33, i32 1
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %conv39 = zext i32 %48 to i64
  %add = add i64 %46, %conv39
  %next_io_sector = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %next_io_sector to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %next_io_sector, align 8
  %sub40 = sub i64 %add, %50
  %pp_size41 = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 3
  %51 = ptrtoint ptr %pp_size41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pp_size41, align 4
  %add42 = add i32 %52, 4096
  %shr43 = lshr i32 %add42, 9
  %conv44 = zext i32 %shr43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub40, i64 %conv44)
  %cmp45 = icmp ult i64 %sub40, %conv44
  br i1 %cmp45, label %if.then47, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %next_io_sector to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %46, ptr %next_io_sector, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %bi_end_io = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 10
  %54 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ppl_log_endio, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 2
  %55 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 131073, ptr %bi_opf, align 8
  %56 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rdev, align 4
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 3
  %60 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %61, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %63, %59
  br i1 %cmp.not.i, label %if.end52.bio_set_dev.exit_crit_edge, label %if.then.i

if.end52.bio_set_dev.exit_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %61, -2177
  %64 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end52.bio_set_dev.exit_crit_edge
  %65 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio3) #11
  %next_io_sector54 = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %next_io_sector54 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %next_io_sector54, align 8
  %bi_iter = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 8
  %68 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %bi_iter, align 8
  %69 = ptrtoint ptr %header_page to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %header_page, align 4
  %call56 = tail call i32 @bio_add_page(ptr noundef %bio3, ptr noundef %70, i32 noundef 4096, i32 noundef 0) #11
  %write_hint = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 14
  %71 = ptrtoint ptr %write_hint to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %write_hint, align 8
  %bi_write_hint = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 10, i32 5
  %73 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %bi_write_hint, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_submit_iounit.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_submit_iounit, %if.then69)) #11
          to label %do.end73 [label %if.then69], !srcloc !192

if.then69:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %next_io_sector54 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %next_io_sector54, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_submit_iounit.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i64 noundef %75) #11
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %bio_set_dev.exit
  %76 = ptrtoint ptr %use_multippl to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %use_multippl, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool75.not = icmp eq i8 %77, 0
  br i1 %tobool75.not, label %do.end73.if.end83_crit_edge, label %if.then76

do.end73.if.end83_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then76:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  %pp_size77 = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 3
  %78 = ptrtoint ptr %pp_size77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pp_size77, align 4
  %add78 = add i32 %79, 4096
  %shr79 = lshr i32 %add78, 9
  %conv80 = zext i32 %shr79 to i64
  %80 = ptrtoint ptr %next_io_sector54 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %next_io_sector54, align 8
  %add82 = add i64 %81, %conv80
  store i64 %add82, ptr %next_io_sector54, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then76, %do.end73.if.end83_crit_edge
  %disk_flush_bitmap = getelementptr inbounds %struct.ppl_log, ptr %1, i32 0, i32 10
  %82 = ptrtoint ptr %disk_flush_bitmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %disk_flush_bitmap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp84.not = icmp eq i32 %83, 0
  br i1 %cmp84.not, label %if.end83.if.end107_crit_edge, label %do.end101, !prof !207

if.end83.if.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

do.end101:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 480, i32 noundef 9, ptr noundef null) #11
  br label %if.end107

if.end107:                                        ; preds = %do.end101, %if.end83.if.end107_crit_edge
  %stripe_list = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 6
  %84 = ptrtoint ptr %stripe_list to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn283 = load ptr, ptr %stripe_list, align 4
  %cmp118.not284 = icmp eq ptr %.pn283, %stripe_list
  br i1 %cmp118.not284, label %if.end107.for.end171_crit_edge, label %for.cond123.preheader.lr.ph

if.end107.for.end171_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end171

for.cond123.preheader.lr.ph:                      ; preds = %if.end107
  %child_logs = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 1
  %bs = getelementptr inbounds %struct.ppl_conf, ptr %3, i32 0, i32 8
  %seq.i = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 4
  br label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.inc165.for.cond123.preheader_crit_edge, %for.cond123.preheader.lr.ph
  %.pn286 = phi ptr [ %.pn283, %for.cond123.preheader.lr.ph ], [ %.pn, %for.inc165.for.cond123.preheader_crit_edge ]
  %bio.0285 = phi ptr [ %bio3, %for.cond123.preheader.lr.ph ], [ %bio.1, %for.inc165.for.cond123.preheader_crit_edge ]
  %disks = getelementptr i8, ptr %.pn286, i32 -128
  %85 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp124280 = icmp sgt i32 %86, 0
  br i1 %cmp124280, label %for.body126.lr.ph, label %for.cond123.preheader.for.end141_crit_edge

for.cond123.preheader.for.end141_crit_edge:       ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

for.body126.lr.ph:                                ; preds = %for.cond123.preheader
  %dev127 = getelementptr i8, ptr %.pn286, i32 44
  br label %for.body126

for.body126:                                      ; preds = %if.end138.for.body126_crit_edge, %for.body126.lr.ph
  %i.1281 = phi i32 [ 0, %for.body126.lr.ph ], [ %inc140, %if.end138.for.body126_crit_edge ]
  %87 = ptrtoint ptr %child_logs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %child_logs, align 4
  %wb_cache_on = getelementptr %struct.ppl_log, ptr %88, i32 %i.1281, i32 9
  %89 = ptrtoint ptr %wb_cache_on to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %wb_cache_on, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool130.not = icmp eq i8 %90, 0
  br i1 %tobool130.not, label %for.body126.if.end138_crit_edge, label %land.lhs.true132

for.body126.if.end138_crit_edge:                  ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

land.lhs.true132:                                 ; preds = %for.body126
  %arrayidx128 = getelementptr [1 x %struct.r5dev], ptr %dev127, i32 0, i32 %i.1281
  %flags133 = getelementptr inbounds %struct.r5dev, ptr %arrayidx128, i32 0, i32 12
  %91 = ptrtoint ptr %flags133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags133, align 4
  %93 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool135.not = icmp eq i32 %93, 0
  br i1 %tobool135.not, label %land.lhs.true132.if.end138_crit_edge, label %if.then136

land.lhs.true132.if.end138_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.then136:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef %i.1281, ptr noundef %disk_flush_bitmap) #11
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %land.lhs.true132.if.end138_crit_edge, %for.body126.if.end138_crit_edge
  %inc140 = add nuw nsw i32 %i.1281, 1
  %94 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %disks, align 4
  %cmp124 = icmp slt i32 %inc140, %95
  br i1 %cmp124, label %if.end138.for.body126_crit_edge, label %if.end138.for.end141_crit_edge

if.end138.for.end141_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

if.end138.for.body126_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body126

for.end141:                                       ; preds = %if.end138.for.end141_crit_edge, %for.cond123.preheader.for.end141_crit_edge
  %state = getelementptr i8, ptr %.pn286, i32 -140
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %state, align 4
  %98 = and i32 %97, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool143.not = icmp eq i32 %98, 0
  br i1 %tobool143.not, label %if.end145, label %for.end141.for.inc165_crit_edge

for.end141.for.inc165_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc165

if.end145:                                        ; preds = %for.end141
  %ppl_page = getelementptr i8, ptr %.pn286, i32 28
  %99 = ptrtoint ptr %ppl_page to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ppl_page, align 8
  %call146 = call i32 @bio_add_page(ptr noundef %bio.0285, ptr noundef %100, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then148, label %if.end145.for.inc165_crit_edge

if.end145.for.inc165_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc165

if.then148:                                       ; preds = %if.end145
  %call149 = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef %bs) #11
  %bi_opf150 = getelementptr inbounds %struct.bio, ptr %bio.0285, i32 0, i32 2
  %101 = ptrtoint ptr %bi_opf150 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bi_opf150, align 8
  %bi_opf151 = getelementptr inbounds %struct.bio, ptr %call149, i32 0, i32 2
  %103 = ptrtoint ptr %bi_opf151 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %bi_opf151, align 8
  %bi_write_hint152 = getelementptr inbounds %struct.bio, ptr %bio.0285, i32 0, i32 5
  %104 = ptrtoint ptr %bi_write_hint152 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %bi_write_hint152, align 8
  %bi_write_hint153 = getelementptr inbounds %struct.bio, ptr %call149, i32 0, i32 5
  %106 = ptrtoint ptr %bi_write_hint153 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %bi_write_hint153, align 8
  %bi_flags.i.i264 = getelementptr inbounds %struct.bio, ptr %call149, i32 0, i32 3
  %107 = ptrtoint ptr %bi_flags.i.i264 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %bi_flags.i.i264, align 4
  %conv1.i.i265 = and i16 %108, -2049
  store i16 %conv1.i.i265, ptr %bi_flags.i.i264, align 4
  %bi_bdev.i266 = getelementptr inbounds %struct.bio, ptr %bio.0285, i32 0, i32 1
  %109 = ptrtoint ptr %bi_bdev.i266 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bi_bdev.i266, align 4
  %bi_bdev1.i = getelementptr inbounds %struct.bio, ptr %call149, i32 0, i32 1
  %111 = ptrtoint ptr %bi_bdev1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %bi_bdev1.i, align 4
  call void @bio_clone_blkg_association(ptr noundef %call149, ptr noundef %bio.0285) #11
  %bi_iter154 = getelementptr inbounds %struct.bio, ptr %bio.0285, i32 0, i32 8
  %112 = ptrtoint ptr %bi_iter154 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %bi_iter154, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio.0285, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bi_size, align 8
  %shr157 = lshr i32 %115, 9
  %conv158 = zext i32 %shr157 to i64
  %add159 = add i64 %113, %conv158
  %bi_iter160 = getelementptr inbounds %struct.bio, ptr %call149, i32 0, i32 8
  %116 = ptrtoint ptr %bi_iter160 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add159, ptr %bi_iter160, align 8
  %117 = ptrtoint ptr %ppl_page to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ppl_page, align 8
  %call163 = call i32 @bio_add_page(ptr noundef %call149, ptr noundef %118, i32 noundef 4096, i32 noundef 0) #11
  call void @bio_chain(ptr noundef %call149, ptr noundef %bio.0285) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i) #11
  %119 = call ptr @memset(ptr %b.i, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_submit_iounit, %if.then.i267)) #11
          to label %ppl_submit_iounit_bio.exit [label %if.then.i267], !srcloc !192

if.then.i267:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %seq.i, align 8
  %122 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bi_size, align 8
  %124 = ptrtoint ptr %bi_iter154 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %bi_iter154, align 8
  %call4.i = call ptr @bio_devname(ptr noundef %bio.0285, ptr noundef nonnull %b.i) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i64 noundef %121, i32 noundef %123, i64 noundef %125, ptr noundef %call4.i) #11
  br label %ppl_submit_iounit_bio.exit

ppl_submit_iounit_bio.exit:                       ; preds = %if.then.i267, %if.then148
  call void @submit_bio(ptr noundef %bio.0285) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #11
  br label %for.inc165

for.inc165:                                       ; preds = %ppl_submit_iounit_bio.exit, %if.end145.for.inc165_crit_edge, %for.end141.for.inc165_crit_edge
  %bio.1 = phi ptr [ %bio.0285, %for.end141.for.inc165_crit_edge ], [ %bio.0285, %if.end145.for.inc165_crit_edge ], [ %call149, %ppl_submit_iounit_bio.exit ]
  %126 = ptrtoint ptr %.pn286 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn = load ptr, ptr %.pn286, align 4
  %cmp118.not = icmp eq ptr %.pn, %stripe_list
  br i1 %cmp118.not, label %for.inc165.for.end171_crit_edge, label %for.inc165.for.cond123.preheader_crit_edge

for.inc165.for.cond123.preheader_crit_edge:       ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond123.preheader

for.inc165.for.end171_crit_edge:                  ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end171

for.end171:                                       ; preds = %for.inc165.for.end171_crit_edge, %if.end107.for.end171_crit_edge
  %bio.0.lcssa = phi ptr [ %bio3, %if.end107.for.end171_crit_edge ], [ %bio.1, %for.inc165.for.end171_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i268) #11
  %127 = call ptr @memset(ptr %b.i268, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_submit_iounit, %if.then.i273)) #11
          to label %ppl_submit_iounit_bio.exit274 [label %if.then.i273], !srcloc !192

if.then.i273:                                     ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #13
  %seq.i269 = getelementptr inbounds %struct.ppl_io_unit, ptr %io, i32 0, i32 4
  %128 = ptrtoint ptr %seq.i269 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %seq.i269, align 8
  %bi_iter.i270 = getelementptr inbounds %struct.bio, ptr %bio.0.lcssa, i32 0, i32 8
  %bi_size.i271 = getelementptr inbounds %struct.bio, ptr %bio.0.lcssa, i32 0, i32 8, i32 1
  %130 = ptrtoint ptr %bi_size.i271 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bi_size.i271, align 8
  %132 = ptrtoint ptr %bi_iter.i270 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %bi_iter.i270, align 8
  %call4.i272 = call ptr @bio_devname(ptr noundef %bio.0.lcssa, ptr noundef nonnull %b.i268) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i64 noundef %129, i32 noundef %131, i64 noundef %133, ptr noundef %call4.i272) #11
  br label %ppl_submit_iounit_bio.exit274

ppl_submit_iounit_bio.exit274:                    ; preds = %if.then.i273, %for.end171
  call void @submit_bio(ptr noundef %bio.0.lcssa) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i268) #11
  br label %cleanup

cleanup:                                          ; preds = %ppl_submit_iounit_bio.exit274, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppl_log_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_log_endio.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_log_endio, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_log_endio.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i64 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %rdev = getelementptr inbounds %struct.ppl_log, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 4
  tail call void @md_error(ptr noundef %11, ptr noundef %13) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %stripe_list = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %stripe_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stripe_list, align 8
  %cmp.not36 = icmp eq ptr %15, %stripe_list
  br i1 %cmp.not36, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end7.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %15, %if.end7.for.body_crit_edge ]
  %sh.0 = getelementptr i8, ptr %.pn.in37, i32 -188
  %16 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in37, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %.pn.in37, ptr %.pn.in37, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in37, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in37, ptr %prev.i3.i, align 4
  %state = getelementptr i8, ptr %.pn.in37, i32 -140
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #11
  tail call void @raid5_release_stripe(ptr noundef %sh.0) #11
  %cmp.not = icmp eq ptr %.pn, %stripe_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end7.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raid5_release_stripe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppl_flush_endio(ptr noundef %bio) #0 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %10 = call ptr @memset(ptr %b, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_flush_endio.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_flush_endio, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call ptr @bio_devname(ptr noundef %bio, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_flush_endio.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.44, ptr noundef %call5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %do.end.if.end15_crit_edge, label %if.then7

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7:                                         ; preds = %do.end
  %13 = call i32 @llvm.read_register.i32(metadata !182) #11
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then7.rcu_read_lock.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 696, ptr noundef nonnull @.str.42) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then7.rcu_read_lock.exit_crit_edge
  %mddev8 = getelementptr inbounds %struct.r5conf, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %mddev8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mddev8, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %19 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_disk, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i = shl i32 %24, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %26
  %call10 = call ptr @md_find_rdev_rcu(ptr noundef %18, i32 noundef %or.i) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %rcu_read_lock.exit.if.end14_crit_edge, label %if.then12

rcu_read_lock.exit.if.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mddev13 = getelementptr inbounds %struct.md_rdev, ptr %call10, i32 0, i32 2
  %27 = ptrtoint ptr %mddev13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mddev13, align 8
  call void @md_error(ptr noundef %28, ptr noundef nonnull %call10) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %rcu_read_lock.exit.if.end14_crit_edge
  %call.i29 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i29, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %if.end14
  %call1.i30 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 724, ptr noundef nonnull @.str.43) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %29 = call i32 @llvm.read_register.i32(metadata !182) #11
  %and.i.i.i.i.i36 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end15

if.end15:                                         ; preds = %rcu_read_unlock.exit, %do.end.if.end15_crit_edge
  call void @bio_put(ptr noundef %bio) #11
  %pending_flushes = getelementptr inbounds %struct.ppl_io_unit, ptr %1, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_flushes, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  call void @llvm.prefetch.p0(ptr %pending_flushes, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_flushes, ptr %pending_flushes, i32 1, ptr elementtype(i32) %pending_flushes) #11, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ppl_io_unit_finished(ptr noundef %1)
  %mddev18 = getelementptr inbounds %struct.r5conf, ptr %9, i32 0, i32 2
  %34 = ptrtoint ptr %mddev18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mddev18, align 4
  %thread = getelementptr inbounds %struct.mddev, ptr %35, i32 0, i32 40
  %36 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %thread, align 4
  call void @md_wakeup_thread(ptr noundef %37) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @md_find_rdev_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_wakeup_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_load_distributed(ptr nocapture noundef readonly %log) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %rdev2 = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 1
  %2 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev2, align 4
  %mddev3 = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mddev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mddev3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load_distributed.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load_distributed, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disk, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load_distributed.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool7.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call38.i.i.i225 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool11.not = icmp eq ptr %call38.i.i.i225, null
  br i1 %tobool11.not, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  %size = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 33, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp294.not = icmp eq i32 %9, 8
  br i1 %cmp294.not, label %while.cond.preheader.if.then86_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.then86_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sector = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 33, i32 2
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 10
  %external = getelementptr inbounds %struct.mddev, ptr %5, i32 0, i32 18
  %signature47 = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 4
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %cleanup

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %page.0301 = phi ptr [ %call38.i.i.i, %while.body.lr.ph ], [ %page2.0299, %for.end.while.body_crit_edge ]
  %page2.0299 = phi ptr [ %call38.i.i.i225, %while.body.lr.ph ], [ %page.0301, %for.end.while.body_crit_edge ]
  %pplhdr.0298 = phi ptr [ null, %while.body.lr.ph ], [ %call21, %for.end.while.body_crit_edge ]
  %prev_pplhdr_offset.0297 = phi i64 [ 0, %while.body.lr.ph ], [ %pplhdr_offset.0295, %for.end.while.body_crit_edge ]
  %pplhdr_offset.0295 = phi i64 [ 0, %while.body.lr.ph ], [ %add84, %for.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sector, align 8
  %12 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_offset, align 8
  %sub16 = add i64 %11, %pplhdr_offset.0295
  %add = sub i64 %sub16, %13
  %call17 = tail call i32 @sync_page_io(ptr noundef %3, i64 noundef %add, i32 noundef 4096, ptr noundef %page.0301, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %while.end.thread, label %if.end20

while.end.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @md_error(ptr noundef %5, ptr noundef %3) #11
  br label %if.then86

if.end20:                                         ; preds = %while.body
  %call21 = tail call ptr @page_address(ptr noundef %page.0301) #11
  %checksum = getelementptr inbounds %struct.ppl_header, ptr %call21, i32 0, i32 5
  %14 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %checksum, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %checksum, align 1
  %call23 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %call21, i32 noundef 4096) #11
  %neg = xor i32 %call23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %neg)
  %cmp24.not = icmp eq i32 %16, %neg
  br i1 %cmp24.not, label %if.end43, label %do.body27

do.body27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load_distributed.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load_distributed, %if.then39)) #11
          to label %while.end [label %if.then39], !srcloc !192

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load_distributed.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %16, i32 noundef %neg, i64 noundef %pplhdr_offset.0295) #11
  br label %while.end

if.end43:                                         ; preds = %if.end20
  %signature44 = getelementptr inbounds %struct.ppl_header, ptr %call21, i32 0, i32 1
  %18 = ptrtoint ptr %signature44 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %signature44, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %external, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool45.not = icmp eq i32 %22, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %signature47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %signature47, align 8
  br label %if.end70

if.else:                                          ; preds = %if.end43
  %24 = ptrtoint ptr %signature47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signature47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp49.not = icmp eq i32 %25, %20
  br i1 %cmp49.not, label %if.else.if.end70_crit_edge, label %do.body52

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.body52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load_distributed.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load_distributed, %if.then64)) #11
          to label %while.end [label %if.then64], !srcloc !192

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %signature47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signature47, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load_distributed.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef %20, i32 noundef %27, i64 noundef %pplhdr_offset.0295) #11
  br label %while.end

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %if.then46
  %tobool71.not = icmp eq ptr %pplhdr.0298, null
  br i1 %tobool71.not, label %if.end70.if.end76_crit_edge, label %land.lhs.true

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end70
  %generation = getelementptr inbounds %struct.ppl_header, ptr %pplhdr.0298, i32 0, i32 3
  %28 = ptrtoint ptr %generation to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %generation, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %generation72 = getelementptr inbounds %struct.ppl_header, ptr %call21, i32 0, i32 3
  %31 = ptrtoint ptr %generation72 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %generation72, align 1
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %33)
  %cmp73 = icmp ugt i64 %30, %33
  br i1 %cmp73, label %land.lhs.true.do.body89_crit_edge, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true.do.body89_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body89

if.end76:                                         ; preds = %land.lhs.true.if.end76_crit_edge, %if.end70.if.end76_crit_edge
  %entries_count = getelementptr inbounds %struct.ppl_header, ptr %call21, i32 0, i32 4
  %34 = ptrtoint ptr %entries_count to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %entries_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp80289.not = icmp eq i32 %35, 0
  br i1 %cmp80289.not, label %if.end76.for.end_crit_edge, label %for.body.preheader

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end76
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %umax = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pplhdr_offset.1291 = phi i64 [ %add83, %for.body.for.body_crit_edge ], [ %pplhdr_offset.0295, %for.body.preheader ]
  %i.0290 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pp_size = getelementptr %struct.ppl_header, ptr %call21, i32 0, i32 6, i32 %i.0290, i32 1
  %37 = ptrtoint ptr %pp_size to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %pp_size, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %shr = lshr i32 %39, 9
  %conv82 = zext i32 %shr to i64
  %add83 = add i64 %pplhdr_offset.1291, %conv82
  %inc = add nuw i32 %i.0290, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end76.for.end_crit_edge
  %pplhdr_offset.1.lcssa = phi i64 [ %pplhdr_offset.0295, %if.end76.for.end_crit_edge ], [ %add83, %for.body.for.end_crit_edge ]
  %add84 = add i64 %pplhdr_offset.1.lcssa, 8
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %sub = add i32 %41, -8
  %conv = zext i32 %sub to i64
  %cmp = icmp ult i64 %add84, %conv
  br i1 %cmp, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.then64, %do.body52, %if.then39, %do.body27
  %pplhdr.0273 = phi ptr [ %pplhdr.0298, %if.then39 ], [ %pplhdr.0298, %if.then64 ], [ %pplhdr.0298, %do.body27 ], [ %pplhdr.0298, %do.body52 ], [ %call21, %for.end.while.end_crit_edge ]
  %page2.0267 = phi ptr [ %page2.0299, %if.then39 ], [ %page2.0299, %if.then64 ], [ %page2.0299, %do.body27 ], [ %page2.0299, %do.body52 ], [ %page.0301, %for.end.while.end_crit_edge ]
  %page.0257 = phi ptr [ %page.0301, %if.then39 ], [ %page.0301, %if.then64 ], [ %page.0301, %do.body27 ], [ %page.0301, %do.body52 ], [ %page2.0299, %for.end.while.end_crit_edge ]
  %pplhdr_offset.2 = phi i64 [ %prev_pplhdr_offset.0297, %if.then39 ], [ %prev_pplhdr_offset.0297, %if.then64 ], [ %prev_pplhdr_offset.0297, %do.body27 ], [ %prev_pplhdr_offset.0297, %do.body52 ], [ %add84, %for.end.while.end_crit_edge ]
  %tobool85.not = icmp eq ptr %pplhdr.0273, null
  br i1 %tobool85.not, label %while.end.if.then86_crit_edge, label %while.end.do.body89_crit_edge

while.end.do.body89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body89

while.end.if.then86_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.then86:                                        ; preds = %while.end.if.then86_crit_edge, %while.end.thread, %while.cond.preheader.if.then86_crit_edge
  %page2.0266 = phi ptr [ %page2.0299, %while.end.thread ], [ %page2.0267, %while.end.if.then86_crit_edge ], [ %call38.i.i.i225, %while.cond.preheader.if.then86_crit_edge ]
  %page.0256 = phi ptr [ %page.0301, %while.end.thread ], [ %page.0257, %while.end.if.then86_crit_edge ], [ %call38.i.i.i, %while.cond.preheader.if.then86_crit_edge ]
  %ret.0233 = phi i32 [ -5, %while.end.thread ], [ 0, %while.end.if.then86_crit_edge ], [ 0, %while.cond.preheader.if.then86_crit_edge ]
  %mismatch_count = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %mismatch_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mismatch_count, align 8
  %inc87 = add i32 %43, 1
  store i32 %inc87, ptr %mismatch_count, align 8
  br label %if.end115

do.body89:                                        ; preds = %while.end.do.body89_crit_edge, %land.lhs.true.do.body89_crit_edge
  %pplhdr.0272 = phi ptr [ %pplhdr.0273, %while.end.do.body89_crit_edge ], [ %pplhdr.0298, %land.lhs.true.do.body89_crit_edge ]
  %page2.0265 = phi ptr [ %page2.0267, %while.end.do.body89_crit_edge ], [ %page2.0299, %land.lhs.true.do.body89_crit_edge ]
  %page.0255 = phi ptr [ %page.0257, %while.end.do.body89_crit_edge ], [ %page.0301, %land.lhs.true.do.body89_crit_edge ]
  %pplhdr_offset.2242 = phi i64 [ %pplhdr_offset.2, %while.end.do.body89_crit_edge ], [ %prev_pplhdr_offset.0297, %land.lhs.true.do.body89_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load_distributed.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load_distributed, %if.then101)) #11
          to label %land.lhs.true108 [label %if.then101], !srcloc !192

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #13
  %generation102 = getelementptr inbounds %struct.ppl_header, ptr %pplhdr.0272, i32 0, i32 3
  %44 = ptrtoint ptr %generation102 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %generation102, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load_distributed.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i64 noundef %pplhdr_offset.2242, i64 noundef %46) #11
  br label %land.lhs.true108

land.lhs.true108:                                 ; preds = %if.then101, %do.body89
  %pers = getelementptr inbounds %struct.mddev, ptr %5, i32 0, i32 1
  %47 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pers, align 4
  %tobool109.not = icmp eq ptr %48, null
  br i1 %tobool109.not, label %land.lhs.true110, label %land.lhs.true108.land.lhs.true117_crit_edge

land.lhs.true108.land.lhs.true117_crit_edge:      ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true117

land.lhs.true110:                                 ; preds = %land.lhs.true108
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %5, i32 0, i32 67
  %49 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp111.not = icmp eq i64 %50, -1
  br i1 %cmp111.not, label %land.lhs.true110.land.lhs.true117_crit_edge, label %if.then113

land.lhs.true110.land.lhs.true117_crit_edge:      ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true117

if.then113:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  %call114 = tail call fastcc i32 @ppl_recover(ptr noundef %log, ptr noundef nonnull %pplhdr.0272, i64 noundef %pplhdr_offset.2242)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then86
  %page2.0264 = phi ptr [ %page2.0265, %if.then113 ], [ %page2.0266, %if.then86 ]
  %page.0254 = phi ptr [ %page.0255, %if.then113 ], [ %page.0256, %if.then86 ]
  %ret.1 = phi i32 [ %call114, %if.then113 ], [ %ret.0233, %if.then86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool116.not = icmp eq i32 %ret.1, 0
  br i1 %tobool116.not, label %if.end115.land.lhs.true117_crit_edge, label %if.end115.if.end122_crit_edge

if.end115.if.end122_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.end115.land.lhs.true117_crit_edge:             ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end115.land.lhs.true117_crit_edge, %land.lhs.true110.land.lhs.true117_crit_edge, %land.lhs.true108.land.lhs.true117_crit_edge
  %page2.0263 = phi ptr [ %page2.0265, %land.lhs.true110.land.lhs.true117_crit_edge ], [ %page2.0265, %land.lhs.true108.land.lhs.true117_crit_edge ], [ %page2.0264, %if.end115.land.lhs.true117_crit_edge ]
  %page.0253 = phi ptr [ %page.0255, %land.lhs.true110.land.lhs.true117_crit_edge ], [ %page.0255, %land.lhs.true108.land.lhs.true117_crit_edge ], [ %page.0254, %if.end115.land.lhs.true117_crit_edge ]
  %pers118 = getelementptr inbounds %struct.mddev, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %pers118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pers118, align 4
  %tobool119.not = icmp eq ptr %52, null
  br i1 %tobool119.not, label %if.then120, label %land.lhs.true117.if.end122_crit_edge

land.lhs.true117.if.end122_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then120:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  %call121 = tail call fastcc i32 @ppl_write_empty_header(ptr noundef %log)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %land.lhs.true117.if.end122_crit_edge, %if.end115.if.end122_crit_edge
  %page2.0262 = phi ptr [ %page2.0264, %if.end115.if.end122_crit_edge ], [ %page2.0263, %land.lhs.true117.if.end122_crit_edge ], [ %page2.0263, %if.then120 ]
  %page.0252 = phi ptr [ %page.0254, %if.end115.if.end122_crit_edge ], [ %page.0253, %land.lhs.true117.if.end122_crit_edge ], [ %page.0253, %if.then120 ]
  %ret.2 = phi i32 [ %ret.1, %if.end115.if.end122_crit_edge ], [ 0, %land.lhs.true117.if.end122_crit_edge ], [ %call121, %if.then120 ]
  tail call void @__free_pages(ptr noundef %page.0252, i32 noundef 0) #11
  tail call void @__free_pages(ptr noundef %page2.0262, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_load_distributed.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_load_distributed, %if.then135)) #11
          to label %cleanup [label %if.then135], !srcloc !192

if.then135:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %mismatch_count136 = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %mismatch_count136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mismatch_count136, align 8
  %recovered_entries = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %recovered_entries to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %recovered_entries, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_load_distributed.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %ret.2, i32 noundef %54, i32 noundef %56) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %if.end122, %if.then12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then12 ], [ -12, %do.end.cleanup_crit_edge ], [ %ret.2, %if.then135 ], [ %ret.2, %if.end122 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_page_io(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_recover(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %pplhdr, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %rdev2 = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 1
  %2 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev2, align 4
  %mddev3 = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mddev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mddev3, align 8
  %sector = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 33, i32 2
  %6 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sector, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.end:                                           ; preds = %entry
  %entries_count = getelementptr inbounds %struct.ppl_header, ptr %pplhdr, i32 0, i32 4
  %8 = ptrtoint ptr %entries_count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %entries_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp124.not = icmp eq i32 %9, 0
  br i1 %cmp124.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i64 %offset, 8
  %add4 = add i64 %add, %7
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 19
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 10
  %mismatch_count = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 11
  %recovered_entries = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %ppl_sector.0125 = phi i64 [ %add4, %for.body.lr.ph ], [ %add50, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ppl_header, ptr %pplhdr, i32 0, i32 6, i32 %i.0128
  %pp_size5 = getelementptr %struct.ppl_header, ptr %pplhdr, i32 0, i32 6, i32 %i.0128, i32 1
  %10 = ptrtoint ptr %pp_size5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %pp_size5, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shr = lshr i32 %12, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !192

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %raid_disk, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef %14, i32 noundef %i.0128, i64 noundef %ppl_sector.0125, i32 noundef %12) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %for.body
  %checksum = getelementptr %struct.ppl_header, ptr %pplhdr, i32 0, i32 6, i32 %i.0128, i32 4
  %15 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %checksum, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not120 = icmp eq i32 %11, 0
  br i1 %tobool13.not120, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end.while.body_crit_edge
  %crc.0123 = phi i32 [ %call20, %cleanup.while.body_crit_edge ], [ -1, %do.end.while.body_crit_edge ]
  %sector6.0122 = phi i64 [ %add23, %cleanup.while.body_crit_edge ], [ %ppl_sector.0125, %do.end.while.body_crit_edge ]
  %pp_size.0121 = phi i32 [ %sub21, %cleanup.while.body_crit_edge ], [ %12, %do.end.while.body_crit_edge ]
  %18 = tail call i32 @llvm.umin.i32(i32 %pp_size.0121, i32 4096)
  %19 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data_offset, align 8
  %sub = sub i64 %sector6.0122, %20
  %call15 = tail call i32 @sync_page_io(ptr noundef %3, i64 noundef %sub, i32 noundef %18, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @md_error(ptr noundef %5, ptr noundef %3) #11
  br label %out

cleanup:                                          ; preds = %while.body
  %call19 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %call20 = tail call i32 @crc32c(i32 noundef %crc.0123, ptr noundef %call19, i32 noundef %18) #11
  %sub21 = sub i32 %pp_size.0121, %18
  %shr22118 = lshr i32 %18, 9
  %21 = zext i32 %shr22118 to i64
  %add23 = add i64 %sector6.0122, %21
  %tobool13.not = icmp eq i32 %sub21, 0
  br i1 %tobool13.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end.while.end_crit_edge
  %crc.0.lcssa = phi i32 [ -1, %do.end.while.end_crit_edge ], [ %call20, %cleanup.while.end_crit_edge ]
  %neg = xor i32 %crc.0.lcssa, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %neg)
  %cmp24.not = icmp eq i32 %17, %neg
  br i1 %cmp24.not, label %if.else, label %do.body27

do.body27:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover, %if.then39)) #11
          to label %do.end42 [label %if.then39], !srcloc !192

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %17, i32 noundef %neg) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27
  %22 = ptrtoint ptr %mismatch_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mismatch_count, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %mismatch_count, align 8
  br label %for.inc

if.else:                                          ; preds = %while.end
  %call43 = tail call fastcc i32 @ppl_recover_entry(ptr noundef %log, ptr noundef %arrayidx, i64 noundef %ppl_sector.0125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %recovered_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %recovered_entries, align 4
  %inc47 = add i32 %25, 1
  store i32 %inc47, ptr %recovered_entries, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %do.end42
  %26 = zext i32 %shr to i64
  %add50 = add i64 %ppl_sector.0125, %26
  %inc59 = add nuw i32 %i.0128, 1
  %27 = ptrtoint ptr %entries_count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %entries_count, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %cmp = icmp ult i32 %inc59, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev, align 4
  %call60 = tail call i32 @blkdev_issue_flush(ptr noundef %31) #11
  br label %out

out:                                              ; preds = %for.end, %if.else.out_crit_edge, %cleanup.thread
  %ret.5 = phi i32 [ %call60, %for.end ], [ -5, %cleanup.thread ], [ %call43, %if.else.out_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %cleanup61

cleanup61:                                        ; preds = %out, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ %ret.5, %out ], [ -12, %entry.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppl_recover_entry(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %e, i64 noundef %ppl_sector) unnamed_addr #0 align 64 {
entry:
  %submit.i509 = alloca %struct.async_submit_ctl, align 4
  %tx.i510 = alloca ptr, align 4
  %xor_srcs.i511 = alloca [2 x ptr], align 4
  %submit.i = alloca %struct.async_submit_ctl, align 4
  %tx.i = alloca ptr, align 4
  %xor_srcs.i = alloca [2 x ptr], align 4
  %b = alloca [32 x i8], align 1
  %sh = alloca %struct.stripe_head, align 8
  %disk = alloca i32, align 4
  %dd_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %block_size3 = getelementptr inbounds %struct.ppl_conf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %block_size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %pp_size4 = getelementptr inbounds %struct.ppl_header_entry, ptr %e, i32 0, i32 1
  %8 = call ptr @memset(ptr %b, i32 255, i32 32)
  %9 = ptrtoint ptr %pp_size4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %pp_size4, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %data_size5 = getelementptr inbounds %struct.ppl_header_entry, ptr %e, i32 0, i32 2
  %12 = ptrtoint ptr %data_size5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %data_size5, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %call38.i.i.i508 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  %tobool7.not = icmp eq ptr %call38.i.i.i508, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %e to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %e, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %shr = ashr i32 %7, 9
  %conv = sext i32 %shr to i64
  %mul = mul i64 %17, %conv
  %shr8 = lshr i32 %11, 9
  %chunk_sectors = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %19)
  %cmp = icmp ult i32 %shr8, %19
  br i1 %cmp, label %if.then10, label %if.else24

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %div = udiv i32 %14, %11
  br label %if.end17

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disks = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raid_disks, align 4
  %max_degraded = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %max_degraded to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_degraded, align 8
  %sub = sub i32 %21, %23
  %shr15 = lshr i32 %14, 9
  %div16 = udiv i32 %shr15, %sub
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  %data_disks.0 = phi i32 [ %div, %if.then13 ], [ %sub, %if.else ]
  %strip_sectors.0 = phi i32 [ %shr8, %if.then13 ], [ %div16, %if.else ]
  %sub18 = add i32 %data_disks.0, -1
  %mul20 = mul i32 %sub18, %19
  %conv21 = sext i32 %mul20 to i64
  %conv22555 = zext i32 %strip_sectors.0 to i64
  %add = add i64 %mul, %conv22555
  %add23 = add i64 %add, %conv21
  br label %do.body

if.else24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disks25 = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %raid_disks25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %raid_disks25, align 4
  %max_degraded26 = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %max_degraded26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_degraded26, align 8
  %sub27 = sub i32 %25, %27
  %shr29 = lshr i32 %14, 9
  %conv30 = zext i32 %shr29 to i64
  %add31 = add i64 %mul, %conv30
  br label %do.body

do.body:                                          ; preds = %if.else24, %if.end17
  %data_disks.1 = phi i32 [ %data_disks.0, %if.end17 ], [ %sub27, %if.else24 ]
  %strip_sectors.1 = phi i32 [ %strip_sectors.0, %if.end17 ], [ %19, %if.else24 ]
  %r_sector_last.0 = phi i64 [ %add23, %if.end17 ], [ %add31, %if.else24 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then37)) #11
          to label %do.end [label %if.then37], !srcloc !192

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i64 noundef %mul, i64 noundef %r_sector_last.0) #11
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp39 = icmp eq i32 %7, 512
  br i1 %cmp39, label %land.lhs.true, label %do.end.if.end48_crit_edge

do.end.if.end48_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i64 %mul, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp41 = icmp eq i64 %and, 0
  %and44 = and i64 %r_sector_last.0, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %cmp45 = icmp eq i64 %and44, 0
  %or.cond474 = select i1 %cmp41, i1 %cmp45, i1 false
  %spec.select = select i1 %or.cond474, i32 4096, i32 512
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true, %do.end.if.end48_crit_edge
  %block_size.0 = phi i32 [ %7, %do.end.if.end48_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strip_sectors.1)
  %cmp49584 = icmp sgt i32 %strip_sectors.1, 0
  br i1 %cmp49584, label %for.body.lr.ph, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph:                                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_disks.1)
  %cmp70571 = icmp sgt i32 %data_disks.1, 0
  %disks = getelementptr inbounds %struct.r5conf, ptr %5, i32 0, i32 66
  %28 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i, i32 0, i32 1
  %29 = getelementptr inbounds [2 x ptr], ptr %xor_srcs.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp204.not = icmp eq i32 %10, 0
  %rdev225 = getelementptr inbounds %struct.ppl_log, ptr %log, i32 0, i32 1
  %30 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i509, i32 0, i32 1
  %31 = getelementptr inbounds [2 x ptr], ptr %xor_srcs.i511, i32 0, i32 1
  %pd_idx = getelementptr inbounds %struct.stripe_head, ptr %sh, i32 0, i32 6
  %parity_disk = getelementptr inbounds %struct.ppl_header_entry, ptr %e, i32 0, i32 3
  %shr350 = ashr i32 %block_size.0, 9
  br label %for.body

for.body:                                         ; preds = %cleanup341.thread.for.body_crit_edge, %for.body.lr.ph
  %i.0586 = phi i32 [ 0, %for.body.lr.ph ], [ %add351, %cleanup341.thread.for.body_crit_edge ]
  %ret.0585 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.4.ph, %cleanup341.thread.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %sh) #11
  %32 = call ptr @memset(ptr %sh, i32 255, i32 520)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disk) #11
  %33 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %disk, align 4, !annotation !206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then63)) #11
          to label %do.end66 [label %if.then63], !srcloc !192

if.then63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull @.str.70, i32 noundef %i.0586) #11
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %for.body
  %call68 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %34 = call ptr @memset(ptr %call68, i32 0, i32 4096)
  %35 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %disk, align 4
  br i1 %cmp70571, label %for.body72.lr.ph, label %do.end66.cleanup341.thread_crit_edge

do.end66.cleanup341.thread_crit_edge:             ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341.thread

for.body72.lr.ph:                                 ; preds = %do.end66
  %conv73 = sext i32 %i.0586 to i64
  %add74 = add i64 %mul, %conv73
  br label %for.body72

for.body72:                                       ; preds = %for.inc.for.body72_crit_edge, %for.body72.lr.ph
  %ret.1576 = phi i32 [ %ret.0585, %for.body72.lr.ph ], [ %ret.2527, %for.inc.for.body72_crit_edge ]
  %update_parity.0.off0575 = phi i1 [ false, %for.body72.lr.ph ], [ %update_parity.1.off0526, %for.inc.for.body72_crit_edge ]
  %indent.0573 = phi i32 [ 2, %for.body72.lr.ph ], [ %indent.1525, %for.inc.for.body72_crit_edge ]
  %storemerge572 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc, %for.inc.for.body72_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dd_idx) #11
  %36 = ptrtoint ptr %dd_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dd_idx, align 4, !annotation !206
  %37 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk_sectors, align 8
  %mul76 = mul i32 %38, %storemerge572
  %conv77 = sext i32 %mul76 to i64
  %add78 = add i64 %add74, %conv77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then91)) #11
          to label %do.end94 [label %if.then91], !srcloc !192

if.then91:                                        ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %disk, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67, i32 noundef %indent.0573, ptr noundef nonnull @.str.70, i32 noundef %40) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %for.body72
  %add95 = add i32 %indent.0573, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %add78, i64 %r_sector_last.0)
  %cmp96.not = icmp ult i64 %add78, %r_sector_last.0
  br i1 %cmp96.not, label %if.end116, label %do.body99

do.body99:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then111)) #11
          to label %cleanup [label %if.then111], !srcloc !192

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %add95, ptr noundef nonnull @.str.70, i64 noundef %add78) #11
  br label %cleanup.thread

if.end116:                                        ; preds = %do.end94
  %call117 = call i64 @raid5_compute_sector(ptr noundef %5, i64 noundef %add78, i32 noundef 0, ptr noundef nonnull %dd_idx, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then130)) #11
          to label %do.end133 [label %if.then130], !srcloc !192

if.then130:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dd_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dd_idx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.67, i32 noundef %add95, ptr noundef nonnull @.str.70, i64 noundef %add78, i32 noundef %42, i64 noundef %call117) #11
  br label %do.end133

do.end133:                                        ; preds = %if.then130, %if.end116
  %43 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disks, align 8
  %45 = ptrtoint ptr %dd_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dd_idx, align 4
  %arrayidx = getelementptr %struct.disk_info, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %tobool135.not = icmp eq ptr %48, null
  br i1 %tobool135.not, label %do.end133.do.body143_crit_edge, label %lor.lhs.false136

do.end133.do.body143_crit_edge:                   ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

lor.lhs.false136:                                 ; preds = %do.end133
  %flags = getelementptr inbounds %struct.md_rdev, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool138.not = icmp eq i32 %51, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %lor.lhs.false136.do.body160_crit_edge

lor.lhs.false136.do.body160_crit_edge:            ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160

land.lhs.true139:                                 ; preds = %lor.lhs.false136
  %52 = getelementptr inbounds %struct.md_rdev, ptr %48, i32 0, i32 22
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call117, i64 %54)
  %cmp140.not = icmp ult i64 %call117, %54
  br i1 %cmp140.not, label %land.lhs.true139.do.body160_crit_edge, label %land.lhs.true139.do.body143_crit_edge

land.lhs.true139.do.body143_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

land.lhs.true139.do.body160_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160

do.body143:                                       ; preds = %land.lhs.true139.do.body143_crit_edge, %do.end133.do.body143_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %for.end.thread)) #11
          to label %cleanup [label %for.end.thread], !srcloc !192

for.end.thread:                                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %dd_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dd_idx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.67, i32 noundef %add95, ptr noundef nonnull @.str.70, i32 noundef %56) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd_idx) #11
  br label %cleanup341.thread

do.body160:                                       ; preds = %land.lhs.true139.do.body160_crit_edge, %lor.lhs.false136.do.body160_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then172)) #11
          to label %do.end176 [label %if.then172], !srcloc !192

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %48, i32 0, i32 5
  %57 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bdev, align 4
  %call173 = call ptr @bdevname(ptr noundef %58, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.67, i32 noundef %add95, ptr noundef nonnull @.str.70, ptr noundef %call173, i64 noundef %call117) #11
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body160
  %call177 = call i32 @sync_page_io(ptr noundef nonnull %48, i64 noundef %call117, i32 noundef %block_size.0, ptr noundef nonnull %call38.i.i.i508, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then179, label %if.end196

if.then179:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #13
  call void @md_error(ptr noundef %3, ptr noundef nonnull %48) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %cleanup.thread528)) #11
          to label %cleanup [label %cleanup.thread528], !srcloc !192

cleanup.thread528:                                ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.67, i32 noundef %add95, ptr noundef nonnull @.str.70) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd_idx) #11
  br label %cleanup341.thread552

if.end196:                                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %submit.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xor_srcs.i) #11
  %59 = ptrtoint ptr %xor_srcs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call38.i.i.i, ptr %xor_srcs.i, align 4
  %60 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call38.i.i.i508, ptr %29, align 4
  %61 = ptrtoint ptr %submit.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %submit.i, align 4
  %62 = call ptr @memset(ptr %28, i32 0, i32 16)
  %call.i = call ptr @async_xor(ptr noundef %call38.i.i.i, ptr noundef nonnull %xor_srcs.i, i32 noundef 0, i32 noundef 2, i32 noundef %block_size.0, ptr noundef nonnull %submit.i) #11
  %63 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %tx.i, align 4
  call void @async_tx_quiesce(ptr noundef nonnull %tx.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xor_srcs.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %submit.i) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end196, %if.then111
  %update_parity.1.off0.ph = phi i1 [ %update_parity.0.off0575, %if.then111 ], [ true, %if.end196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd_idx) #11
  br label %for.inc

cleanup:                                          ; preds = %if.then179, %do.body143, %do.body99
  %indent.1 = phi i32 [ %indent.0573, %do.body99 ], [ %add95, %do.body143 ], [ %add95, %if.then179 ]
  %cond = phi i1 [ false, %do.body99 ], [ false, %do.body143 ], [ true, %if.then179 ]
  %cleanup.dest.slot.0 = phi i32 [ 12, %do.body99 ], [ 10, %do.body143 ], [ 2, %if.then179 ]
  %update_parity.1.off0 = phi i1 [ %update_parity.0.off0575, %do.body99 ], [ false, %do.body143 ], [ true, %if.then179 ]
  %ret.2 = phi i32 [ %ret.1576, %do.body99 ], [ %ret.1576, %do.body143 ], [ -5, %if.then179 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dd_idx) #11
  %64 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %cleanup.dest.slot.0, label %cleanup341 [
    i32 10, label %cleanup.for.end_crit_edge
    i32 12, label %cleanup.for.inc_crit_edge
  ]

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %ret.2527 = phi i32 [ %ret.1576, %cleanup.thread ], [ %ret.2, %cleanup.for.inc_crit_edge ]
  %update_parity.1.off0526 = phi i1 [ %update_parity.1.off0.ph, %cleanup.thread ], [ %update_parity.1.off0, %cleanup.for.inc_crit_edge ]
  %indent.1525 = phi i32 [ %indent.0573, %cleanup.thread ], [ %indent.1, %cleanup.for.inc_crit_edge ]
  %65 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %disk, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %disk, align 4
  %cmp70 = icmp slt i32 %inc, %data_disks.1
  br i1 %cmp70, label %for.inc.for.body72_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body72_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge
  %indent.2 = phi i32 [ %indent.1525, %for.inc.for.end_crit_edge ], [ %indent.1, %cleanup.for.end_crit_edge ]
  %update_parity.2.off0 = phi i1 [ %update_parity.1.off0526, %for.inc.for.end_crit_edge ], [ %update_parity.1.off0, %cleanup.for.end_crit_edge ]
  %ret.3 = phi i32 [ %ret.2527, %for.inc.for.end_crit_edge ], [ %ret.2, %cleanup.for.end_crit_edge ]
  br i1 %update_parity.2.off0, label %if.end203, label %for.end.cleanup341.thread_crit_edge

for.end.cleanup341.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341.thread

if.end203:                                        ; preds = %for.end
  br i1 %cmp204.not, label %if.end203.if.end251_crit_edge, label %do.body207

if.end203.if.end251_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = sext i32 %i.0586 to i64
  br label %if.end251

do.body207:                                       ; preds = %if.end203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then219)) #11
          to label %do.end224 [label %if.then219], !srcloc !192

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  %conv220 = sext i32 %i.0586 to i64
  %add221 = add i64 %conv220, %ppl_sector
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.67, i32 noundef %indent.2, ptr noundef nonnull @.str.70, i64 noundef %add221) #11
  br label %do.end224

do.end224:                                        ; preds = %if.then219, %do.body207
  %67 = ptrtoint ptr %rdev225 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rdev225, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %data_offset, align 8
  %conv228 = sext i32 %i.0586 to i64
  %sub227 = add i64 %conv228, %ppl_sector
  %add229 = sub i64 %sub227, %70
  %call230 = call i32 @sync_page_io(ptr noundef %68, i64 noundef %add229, i32 noundef %block_size.0, ptr noundef nonnull %call38.i.i.i508, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %do.body233, label %if.end250

do.body233:                                       ; preds = %do.end224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then245)) #11
          to label %do.end248 [label %if.then245], !srcloc !192

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.67, i32 noundef %indent.2, ptr noundef nonnull @.str.70) #11
  br label %do.end248

do.end248:                                        ; preds = %if.then245, %do.body233
  %71 = ptrtoint ptr %rdev225 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rdev225, align 4
  call void @md_error(ptr noundef %3, ptr noundef %72) #11
  br label %cleanup341.thread552

if.end250:                                        ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %submit.i509) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx.i510) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xor_srcs.i511) #11
  %73 = ptrtoint ptr %xor_srcs.i511 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call38.i.i.i, ptr %xor_srcs.i511, align 4
  %74 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call38.i.i.i508, ptr %31, align 4
  %75 = ptrtoint ptr %submit.i509 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %submit.i509, align 4
  %76 = call ptr @memset(ptr %30, i32 0, i32 16)
  %call.i512 = call ptr @async_xor(ptr noundef %call38.i.i.i, ptr noundef nonnull %xor_srcs.i511, i32 noundef 0, i32 noundef 2, i32 noundef %block_size.0, ptr noundef nonnull %submit.i509) #11
  %77 = ptrtoint ptr %tx.i510 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i512, ptr %tx.i510, align 4
  call void @async_tx_quiesce(ptr noundef nonnull %tx.i510) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xor_srcs.i511) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx.i510) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %submit.i509) #11
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end203.if.end251_crit_edge
  %conv252.pre-phi = phi i64 [ %.pre, %if.end203.if.end251_crit_edge ], [ %conv228, %if.end250 ]
  %add253 = add i64 %mul, %conv252.pre-phi
  %call254 = call i64 @raid5_compute_sector(ptr noundef %5, i64 noundef %add253, i32 noundef 0, ptr noundef nonnull %disk, ptr noundef nonnull %sh) #11
  %78 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pd_idx, align 8
  %conv256 = sext i16 %79 to i32
  %80 = ptrtoint ptr %parity_disk to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %parity_disk, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv256)
  %cmp257.not = icmp eq i32 %82, %conv256
  br i1 %cmp257.not, label %do.end274, label %do.body266, !prof !207

do.body266:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-ppl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 945, 0\0A.popsection", ""() #11, !srcloc !208
  unreachable

do.end274:                                        ; preds = %if.end251
  %83 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %disks, align 8
  %arrayidx277 = getelementptr %struct.disk_info, ptr %84, i32 %conv256
  %85 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx277, align 4
  %bdev280 = getelementptr inbounds %struct.md_rdev, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %bdev280 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bdev280, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bd_dev, align 4
  %91 = ptrtoint ptr %rdev225 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rdev225, align 4
  %bdev282 = getelementptr inbounds %struct.md_rdev, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %bdev282 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bdev282, align 4
  %bd_dev283 = getelementptr inbounds %struct.block_device, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %bd_dev283 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bd_dev283, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %96)
  %cmp284.not = icmp eq i32 %90, %96
  br i1 %cmp284.not, label %do.body302, label %do.body293, !prof !207

do.body293:                                       ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid5-ppl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 948, 0\0A.popsection", ""() #11, !srcloc !209
  unreachable

do.body302:                                       ; preds = %do.end274
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then314)) #11
          to label %do.end320 [label %if.then314], !srcloc !192

if.then314:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %bdev280 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bdev280, align 4
  %call317 = call ptr @bdevname(ptr noundef %98, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.67, i32 noundef %indent.2, ptr noundef nonnull @.str.70, i64 noundef %call254, ptr noundef %call317) #11
  br label %do.end320

do.end320:                                        ; preds = %if.then314, %do.body302
  %call321 = call i32 @sync_page_io(ptr noundef %86, i64 noundef %call254, i32 noundef %block_size.0, ptr noundef nonnull %call38.i.i.i, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %do.body324, label %do.end320.cleanup341.thread_crit_edge

do.end320.cleanup341.thread_crit_edge:            ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341.thread

do.body324:                                       ; preds = %do.end320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppl_recover_entry.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppl_recover_entry, %if.then336)) #11
          to label %do.end339 [label %if.then336], !srcloc !192

if.then336:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppl_recover_entry.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.67, i32 noundef %indent.2, ptr noundef nonnull @.str.70) #11
  br label %do.end339

do.end339:                                        ; preds = %if.then336, %do.body324
  call void @md_error(ptr noundef %3, ptr noundef %86) #11
  br label %cleanup341.thread552

cleanup341.thread:                                ; preds = %do.end320.cleanup341.thread_crit_edge, %for.end.cleanup341.thread_crit_edge, %for.end.thread, %do.end66.cleanup341.thread_crit_edge
  %ret.4.ph = phi i32 [ %ret.1576, %for.end.thread ], [ %ret.3, %do.end320.cleanup341.thread_crit_edge ], [ %ret.3, %for.end.cleanup341.thread_crit_edge ], [ %ret.0585, %do.end66.cleanup341.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disk) #11
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %sh) #11
  %add351 = add i32 %i.0586, %shr350
  %cmp49 = icmp slt i32 %add351, %strip_sectors.1
  br i1 %cmp49, label %cleanup341.thread.for.body_crit_edge, label %cleanup341.thread.out_crit_edge

cleanup341.thread.out_crit_edge:                  ; preds = %cleanup341.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup341.thread.for.body_crit_edge:             ; preds = %cleanup341.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup341.thread552:                             ; preds = %do.end339, %do.end248, %cleanup.thread528
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disk) #11
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %sh) #11
  br label %out

cleanup341:                                       ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disk) #11
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %sh) #11
  br i1 %cond, label %cleanup341.out_crit_edge, label %cleanup341.cleanup359_crit_edge

cleanup341.cleanup359_crit_edge:                  ; preds = %cleanup341
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup359

cleanup341.out_crit_edge:                         ; preds = %cleanup341
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %cleanup341.out_crit_edge, %cleanup341.thread552, %cleanup341.thread.out_crit_edge, %if.end48.out_crit_edge, %entry.out_crit_edge
  %ret.5 = phi i32 [ %ret.2, %cleanup341.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ -5, %cleanup341.thread552 ], [ 0, %if.end48.out_crit_edge ], [ %ret.4.ph, %cleanup341.thread.out_crit_edge ]
  br i1 %tobool.not, label %out.if.end355_crit_edge, label %if.then354

out.if.end355_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end355

if.then354:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %if.end355

if.end355:                                        ; preds = %if.then354, %out.if.end355_crit_edge
  br i1 %tobool7.not, label %if.end355.cleanup359_crit_edge, label %if.then357

if.end355.cleanup359_crit_edge:                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup359

if.then357:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #13
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i508, i32 noundef 0) #11
  br label %cleanup359

cleanup359:                                       ; preds = %if.then357, %if.end355.cleanup359_crit_edge, %cleanup341.cleanup359_crit_edge
  %retval.0 = phi i32 [ undef, %cleanup341.cleanup359_crit_edge ], [ %ret.5, %if.then357 ], [ %ret.5, %if.end355.cleanup359_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @raid5_compute_sector(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_quiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !173, !175, !176, !178, !179, !180}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/raid5-ppl.c", i32 166, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ops_run_partial_parity.__UNIQUE_ID_ddebug283, !1, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/raid5-ppl.c", i32 1338, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ppl_init_log.__UNIQUE_ID_ddebug319, !7, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/raid5-ppl.c", i32 1345, i32 3}
!12 = !{ptr @ppl_init_log._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ppl_init_log._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/raid5-ppl.c", i32 1351, i32 3}
!16 = !{ptr @ppl_init_log._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ppl_init_log._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/raid5-ppl.c", i32 1357, i32 3}
!20 = !{ptr @ppl_init_log._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ppl_init_log._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/raid5-ppl.c", i32 1365, i32 3}
!24 = !{ptr @ppl_init_log._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ppl_init_log._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/raid5-ppl.c", i32 1376, i32 20}
!28 = !{ptr @ppl_init_log.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/md/raid5-ppl.c", i32 1405, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ppl_init_log.__key.18, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/md/raid5-ppl.c", i32 1419, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ppl_init_log.__key.20, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/md/raid5-ppl.c", i32 1420, i32 3}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/raid5-ppl.c", i32 1474, i32 2}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ppl_modify_log.__UNIQUE_ID_ddebug320, !38, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/raid5-ppl.c", i32 1555, i32 18}
!45 = !{ptr @ppl_write_hint, !46, !"ppl_write_hint", i1 false, i1 false}
!46 = !{!"../drivers/md/raid5-ppl.c", i32 1555, i32 1}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/raid5-ppl.c", i32 276, i32 2}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ppl_log_stripe.__UNIQUE_ID_ddebug284, !48, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/raid5-ppl.c", i32 281, i32 3}
!53 = !{ptr @ppl_log_stripe.__UNIQUE_ID_ddebug285, !52, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/raid5-ppl.c", i32 309, i32 2}
!56 = !{ptr @ppl_log_stripe.__UNIQUE_ID_ddebug286, !55, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/raid5-ppl.c", i32 448, i32 3}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ppl_submit_iounit.__UNIQUE_ID_ddebug289, !58, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/raid5-ppl.c", i32 474, i32 2}
!63 = !{ptr @ppl_submit_iounit.__UNIQUE_ID_ddebug290, !62, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/raid5-ppl.c", i32 404, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ppl_log_endio.__UNIQUE_ID_ddebug287, !65, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/raid5-ppl.c", i32 421, i32 2}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ppl_submit_iounit_bio.__UNIQUE_ID_ddebug288, !69, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../drivers/md/raid5-ppl.c", i32 631, i32 10}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/raid5-ppl.c", i32 646, i32 4}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ppl_do_flush.__UNIQUE_ID_ddebug296, !76, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/raid5-ppl.c", i32 595, i32 2}
!88 = !{ptr @ppl_flush_endio.__UNIQUE_ID_ddebug293, !87, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/raid5-ppl.c", i32 560, i32 2}
!91 = !{ptr @ppl_io_unit_finished.__UNIQUE_ID_ddebug292, !90, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/md.h", i32 632, i32 54}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/raid5-ppl.c", i32 1279, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ppl_validate_rdev._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ppl_validate_rdev._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/raid5-ppl.c", i32 1290, i32 3}
!103 = !{ptr @ppl_validate_rdev._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ppl_validate_rdev._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/raid5-ppl.c", i32 1298, i32 3}
!107 = !{ptr @ppl_validate_rdev._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ppl_validate_rdev._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/raid5-ppl.c", i32 1221, i32 5}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ppl_load._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ppl_load._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/md/raid5-ppl.c", i32 1229, i32 2}
!116 = !{ptr @ppl_load.__UNIQUE_ID_ddebug318, !115, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/raid5-ppl.c", i32 1091, i32 2}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ppl_load_distributed.__UNIQUE_ID_ddebug313, !118, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/raid5-ppl.c", i32 1123, i32 4}
!123 = !{ptr @ppl_load_distributed.__UNIQUE_ID_ddebug314, !122, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/raid5-ppl.c", i32 1140, i32 4}
!126 = !{ptr @ppl_load_distributed.__UNIQUE_ID_ddebug315, !125, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/raid5-ppl.c", i32 1172, i32 3}
!129 = !{ptr @ppl_load_distributed.__UNIQUE_ID_ddebug316, !128, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!130 = !{ptr @ppl_load_distributed.__UNIQUE_ID_ddebug317, !131, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!131 = !{!"../drivers/md/raid5-ppl.c", i32 1187, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/md/raid5-ppl.c", i32 994, i32 3}
!134 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ppl_recover.__UNIQUE_ID_ddebug310, !133, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/raid5-ppl.c", i32 1026, i32 4}
!138 = !{ptr @ppl_recover.__UNIQUE_ID_ddebug311, !137, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/raid5-ppl.c", i32 841, i32 2}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug298, !140, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/raid5-ppl.c", i32 860, i32 3}
!145 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug299, !144, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!146 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/md/raid5-ppl.c", i32 873, i32 4}
!149 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug300, !148, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/md/raid5-ppl.c", i32 878, i32 5}
!152 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug301, !151, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/raid5-ppl.c", i32 890, i32 4}
!155 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug302, !154, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/md/raid5-ppl.c", i32 898, i32 5}
!158 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug303, !157, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/md/raid5-ppl.c", i32 904, i32 4}
!161 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug304, !160, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/md/raid5-ppl.c", i32 910, i32 5}
!164 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug305, !163, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/raid5-ppl.c", i32 925, i32 4}
!167 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug306, !166, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!168 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug307, !169, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!169 = !{!"../drivers/md/raid5-ppl.c", i32 932, i32 5}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/raid5-ppl.c", i32 949, i32 3}
!172 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug308, !171, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/md/raid5-ppl.c", i32 955, i32 4}
!175 = !{ptr @ppl_recover_entry.__UNIQUE_ID_ddebug309, !174, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/md/raid5-ppl.c", i32 1053, i32 2}
!178 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ppl_write_empty_header.__UNIQUE_ID_ddebug312, !177, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/md/raid5-ppl.c", i32 1513, i32 21}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2148733060, i64 2148733065, i64 2148733078, i64 2148733122, i64 2148733156, i64 2148733177}
!193 = !{i64 2148251245, i64 2148251271, i64 2148251300, i64 2148251334, i64 2148251365, i64 2148251388}
!194 = !{!"branch_weights", i32 1, i32 2000}
!195 = !{i64 2154947196, i64 2154951744, i64 2154947233, i64 2154947289, i64 2154947323, i64 2154947347, i64 2154947388, i64 2154947409, i64 2154947437, i64 2154947471}
!196 = !{i32 0, i32 33}
!197 = !{i8 0, i8 2}
!198 = !{i64 2148339697}
!199 = !{i64 2148254430, i64 2148254462, i64 2148254491, i64 2148254525, i64 2148254556, i64 2148254579}
!200 = !{i64 2148339926}
!201 = !{i64 2149328090}
!202 = !{i64 2149328356}
!203 = !{i64 643726, i64 643787}
!204 = !{i64 646458}
!205 = !{i64 646743}
!206 = !{!"auto-init"}
!207 = !{!"branch_weights", i32 2000, i32 1}
!208 = !{i64 2155034985, i64 2155035472, i64 2155035022, i64 2155035078, i64 2155035112, i64 2155035136, i64 2155035177, i64 2155035198, i64 2155035226, i64 2155035260}
!209 = !{i64 2155036654, i64 2155037141, i64 2155036691, i64 2155036747, i64 2155036781, i64 2155036805, i64 2155036846, i64 2155036867, i64 2155036895, i64 2155036929}
