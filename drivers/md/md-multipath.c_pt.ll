; ModuleID = '/llk/IR_all_yes/drivers/md/md-multipath.c_pt.bc'
source_filename = "../drivers/md/md-multipath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.md_personality = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mpconf = type { ptr, ptr, i32, %struct.spinlock, %struct.list_head, %struct.mempool_s }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.multipath_bh = type { ptr, ptr, %struct.bio, i32, %struct.list_head }
%struct.multipath_info = type { ptr }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.81, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.82 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.81 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.82 = type { i16, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.80, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.80 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.md_thread = type { ptr, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr }

@multipath_personality = internal global { %struct.md_personality, [32 x i8] } { %struct.md_personality { ptr @.str, i32 -4, %struct.list_head zeroinitializer, ptr null, ptr @multipath_make_request, ptr @multipath_run, ptr null, ptr @multipath_free, ptr @multipath_status, ptr @multipath_error, ptr @multipath_add_disk, ptr @multipath_remove_disk, ptr null, ptr null, ptr null, ptr @multipath_size, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_multipath__294_471_multipath_init6 = internal global ptr @multipath_init, section ".initcall6.init", align 4
@__exitcall_multipath_exit = internal global ptr @multipath_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [36 x i8] c"multipath.file=drivers/md/multipath\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"multipath.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [72 x i8] c"multipath.description=simple multi-path personality for MD (deprecated)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [33 x i8] c"multipath.alias=md-personality-7\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [29 x i8] c"multipath.alias=md-multipath\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [28 x i8] c"multipath.alias=md-level--4\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multipath\00", [22 x i8] zeroinitializer }, align 32
@multipath_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/md/md-multipath.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@multipath_map._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.multipath_map = private unnamed_addr constant [14 x i8] c"multipath_map\00", align 1
@multipath_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.multipath_map, ptr @.str.1, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012multipath_map(): no more operational IO paths?\0A\00", [46 x i8] zeroinitializer }, align 32
@multipath_map._entry_ptr = internal global ptr @multipath_map._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@multipath_end_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016multipath: %s: rescheduling sector %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"multipath_end_request\00", [42 x i8] zeroinitializer }, align 32
@multipath_end_request._entry_ptr = internal global ptr @multipath_end_request._entry, section ".printk_index", align 4
@multipath_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014multipath: %s: raid level not set to multipath IO (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"multipath_run\00", [18 x i8] zeroinitializer }, align 32
@multipath_run._entry_ptr = internal global ptr @multipath_run._entry, section ".printk_index", align 4
@multipath_run.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&conf->device_lock\00", [45 x i8] zeroinitializer }, align 32
@multipath_run._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.1, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014multipath: no operational IO paths for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@multipath_run._entry_ptr.15 = internal global ptr @multipath_run._entry.13, section ".printk_index", align 4
@multipath_run._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.1, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016multipath: array %s active with %d out of %d IO paths\0A\00", [39 x i8] zeroinitializer }, align 32
@multipath_run._entry_ptr.18 = internal global ptr @multipath_run._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@multipathd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.1, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013multipath: %s: unrecoverable IO read error for block %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"multipathd\00", [21 x i8] zeroinitializer }, align 32
@multipathd._entry_ptr = internal global ptr @multipathd._entry, section ".printk_index", align 4
@multipathd._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.1, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013multipath: %s: redirecting sector %llu to another IO path\0A\00", [35 x i8] zeroinitializer }, align 32
@multipathd._entry_ptr.24 = internal global ptr @multipathd._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" [%d/%d] [\00", [21 x i8] zeroinitializer }, align 32
@multipath_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"_\00", [30 x i8] zeroinitializer }, align 32
@multipath_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014multipath: only one IO path left and IO error.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"multipath_error\00", [16 x i8] zeroinitializer }, align 32
@multipath_error._entry_ptr = internal global ptr @multipath_error._entry, section ".printk_index", align 4
@multipath_error._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.1, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013multipath: IO failure on %s, disabling IO path.\0Amultipath: Operation continuing on %d IO paths.\0A\00", [61 x i8] zeroinitializer }, align 32
@multipath_error._entry_ptr.33 = internal global ptr @multipath_error._entry.31, section ".printk_index", align 4
@print_multipath_conf.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.35, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"print_multipath_conf\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MULTIPATH conf printout:\0A\00", [38 x i8] zeroinitializer }, align 32
@print_multipath_conf.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.36, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(conf==NULL)\0A\00", [18 x i8] zeroinitializer }, align 32
@print_multipath_conf.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.37, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" --- wd:%d rd:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@print_multipath_conf.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.1, ptr @.str.38, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" disk%d, o:%d, dev:%s\0A\00", [41 x i8] zeroinitializer }, align 32
@multipath_remove_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.1, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014hot-remove-disk, slot %d is identified but is still operational!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"multipath_remove_disk\00", [42 x i8] zeroinitializer }, align 32
@multipath_remove_disk._entry_ptr = internal global ptr @multipath_remove_disk._entry, section ".printk_index", align 4
@multipath_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s does not support generic reshape\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.multipath_size = private unnamed_addr constant [15 x i8] c"multipath_size\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"multipath_personality\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 446, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 448, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 37, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 47, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 723, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 92, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 356, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 395, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 399, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 415, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 632, i32 54 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 314, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 319, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 143, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 148, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 148, i32 68 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 148, i32 74 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 168, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 183, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 194, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 196, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 199, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 206, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 261, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [29 x i8] c"../drivers/md/md-multipath.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 337, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_multipath_exit, ptr @__initcall__kmod_multipath__294_471_multipath_init6, ptr @multipath_end_request._entry, ptr @multipath_end_request._entry_ptr, ptr @multipath_error._entry, ptr @multipath_error._entry.31, ptr @multipath_error._entry_ptr, ptr @multipath_error._entry_ptr.33, ptr @multipath_exit, ptr @multipath_map._entry, ptr @multipath_map._entry_ptr, ptr @multipath_remove_disk._entry, ptr @multipath_remove_disk._entry_ptr, ptr @multipath_run._entry, ptr @multipath_run._entry.13, ptr @multipath_run._entry.16, ptr @multipath_run._entry_ptr, ptr @multipath_run._entry_ptr.15, ptr @multipath_run._entry_ptr.18, ptr @multipathd._entry, ptr @multipathd._entry.22, ptr @multipathd._entry_ptr, ptr @multipathd._entry_ptr.24, ptr @multipath_personality, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @multipath_map._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @multipath_run.__key, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_personality to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_map._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_end_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_run.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_run._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_run._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipathd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipathd._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_error._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_remove_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @multipath_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_md_personality(ptr noundef nonnull @multipath_personality) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_md_personality(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_md_personality(ptr noundef nonnull @multipath_personality) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @multipath_make_request(ptr noundef %mddev, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @md_flush_request(ptr noundef %mddev, ptr noundef %bio) #11
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pool = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 5
  %call4 = tail call noalias ptr @mempool_alloc(ptr noundef %pool, i32 noundef 3072) #11
  %master_bio = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %master_bio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %master_bio, align 4
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mddev, ptr %call4, align 8
  %call6 = tail call fastcc i32 @multipath_map(ptr noundef %1)
  %path = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 3
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #11
  tail call void @mempool_free(ptr noundef %call4, ptr noundef %pool) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %multipaths, align 4
  %add.ptr = getelementptr %struct.multipath_info, ptr %10, i32 %call6
  %bio13 = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2
  tail call void @bio_init(ptr noundef %bio13, ptr noundef null, i16 noundef zeroext 0) #11
  tail call void @__bio_clone_fast(ptr noundef %bio13, ptr noundef %bio) #11
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data_offset, align 8
  %bi_iter = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bi_iter, align 8
  %add = add i64 %16, %14
  store i64 %add, ptr %bi_iter, align 8
  %17 = load ptr, ptr %add.ptr, align 4
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %21, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %23, %19
  br i1 %cmp.not.i, label %if.end11.bio_set_dev.exit_crit_edge, label %if.then.i

if.end11.bio_set_dev.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %21, -2177
  %24 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end11.bio_set_dev.exit_crit_edge
  %25 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio13) #11
  %bi_opf19 = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %bi_opf19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf19, align 8
  %28 = or i32 %27, 512
  store i32 %28, ptr %bi_opf19, align 8
  %bi_end_io = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 10
  %29 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @multipath_end_request, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.multipath_bh, ptr %call4, i32 0, i32 2, i32 11
  %30 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call4, ptr %bi_private, align 4
  %and.i = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %bio_set_dev.exit.mddev_check_writesame.exit_crit_edge

bio_set_dev.exit.mddev_check_writesame.exit_crit_edge: ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mddev_check_writesame.exit

land.lhs.true.i:                                  ; preds = %bio_set_dev.exit
  %31 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 37, i32 15
  %37 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_write_same_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.then.i58, label %land.lhs.true.i.mddev_check_writesame.exit_crit_edge

land.lhs.true.i.mddev_check_writesame.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mddev_check_writesame.exit

if.then.i58:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %queue1.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %39 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue1.i, align 8
  %max_write_same_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 15
  %41 = ptrtoint ptr %max_write_same_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %max_write_same_sectors3.i, align 4
  br label %mddev_check_writesame.exit

mddev_check_writesame.exit:                       ; preds = %if.then.i58, %land.lhs.true.i.mddev_check_writesame.exit_crit_edge, %bio_set_dev.exit.mddev_check_writesame.exit_crit_edge
  %42 = ptrtoint ptr %bi_opf19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf19, align 8
  %and.i60 = and i32 %43, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i60)
  %cmp.i61 = icmp eq i32 %and.i60, 9
  br i1 %cmp.i61, label %land.lhs.true.i66, label %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge

mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge: ; preds = %mddev_check_writesame.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mddev_check_write_zeroes.exit

land.lhs.true.i66:                                ; preds = %mddev_check_writesame.exit
  %44 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i63 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %bd_disk.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_disk.i63, align 8
  %queue.i64 = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %queue.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue.i64, align 4
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 37, i32 16
  %50 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i65 = icmp eq i32 %51, 0
  br i1 %tobool.not.i65, label %if.then.i68, label %land.lhs.true.i66.mddev_check_write_zeroes.exit_crit_edge

land.lhs.true.i66.mddev_check_write_zeroes.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %mddev_check_write_zeroes.exit

if.then.i68:                                      ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #13
  %queue1.i67 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %52 = ptrtoint ptr %queue1.i67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queue1.i67, align 8
  %max_write_zeroes_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %53, i32 0, i32 37, i32 16
  %54 = ptrtoint ptr %max_write_zeroes_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %max_write_zeroes_sectors3.i, align 4
  br label %mddev_check_write_zeroes.exit

mddev_check_write_zeroes.exit:                    ; preds = %if.then.i68, %land.lhs.true.i66.mddev_check_write_zeroes.exit_crit_edge, %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %bio13) #11
  br label %cleanup

cleanup:                                          ; preds = %mddev_check_write_zeroes.exit, %if.then9, %land.lhs.true.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_run(ptr noundef %mddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @md_check_no_bitmap(ptr noundef %mddev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 23
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %cmp.not = icmp eq i32 %1, -4
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %2 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.19, ptr %disk_name.i
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %spec.select.i, i32 noundef %1) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 184) #15
  %5 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %mddev, align 8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %6 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #11
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !121

kcalloc.exit.thread:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %multipaths140 = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %multipaths140 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multipaths140, align 4
  br label %out_free_conf

if.end7.i.i:                                      ; preds = %if.end9
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #16
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %multipaths to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %multipaths, align 4
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.out_free_conf_crit_edge, label %if.end14

if.end7.i.i.out_free_conf_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_conf

if.end14:                                         ; preds = %if.end7.i.i
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %13 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %13)
  %rdev.0148 = load ptr, ptr %disks, align 8
  %cmp17.not149 = icmp eq ptr %rdev.0148, %disks
  br i1 %cmp17.not149, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rdev.0151 = phi ptr [ %rdev.0148, %for.body.lr.ph ], [ %rdev.0, %for.inc.for.body_crit_edge ]
  %working_disks.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %working_disks.1, %for.inc.for.body_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.0151, i32 0, i32 19
  %14 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %raid_disk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp slt i32 %15, 0
  br i1 %cmp18, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %16 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp20.not = icmp slt i32 %15, %17
  br i1 %cmp20.not, label %if.end22, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %multipaths, align 4
  %add.ptr24 = getelementptr %struct.multipath_info, ptr %19, i32 %15
  %20 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rdev.0151, ptr %add.ptr24, align 4
  %21 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gendisk, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev.0151, i32 0, i32 5
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.0151, i32 0, i32 10
  %25 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data_offset, align 8
  %shl = shl i64 %26, 9
  tail call void @disk_stack_limits(ptr noundef %22, ptr noundef %24, i64 noundef %shl) #11
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.0151, i32 0, i32 16
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %28, 1
  %29 = xor i32 %and1.i, 1
  %spec.select = add i32 %29, %working_disks.0150
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %working_disks.1 = phi i32 [ %working_disks.0150, %for.body.for.inc_crit_edge ], [ %working_disks.0150, %lor.lhs.false.for.inc_crit_edge ], [ %spec.select, %if.end22 ]
  %30 = ptrtoint ptr %rdev.0151 to i32
  call void @__asan_load4_noabort(i32 %30)
  %rdev.0 = load ptr, ptr %rdev.0151, align 8
  %cmp17.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %working_disks.0.lcssa = phi i32 [ 0, %if.end14.for.end_crit_edge ], [ %working_disks.1, %for.inc.for.end_crit_edge ]
  %31 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %raid_disks, align 8
  %raid_disks36 = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %raid_disks36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %raid_disks36, align 8
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mddev, ptr %call7.i.i, align 8
  %device_lock = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %device_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @multipath_run.__key, i16 noundef signext 3) #11
  %retry_list = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %retry_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %retry_list, ptr %retry_list, align 8
  %prev.i = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retry_list, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %working_disks.0.lcssa)
  %tobool42.not = icmp eq i32 %working_disks.0.lcssa, 0
  br i1 %tobool42.not, label %do.end46, label %if.end50

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %gendisk.i131 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %37 = ptrtoint ptr %gendisk.i131 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gendisk.i131, align 8
  %tobool.not.i132 = icmp eq ptr %38, null
  %disk_name.i133 = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 3
  %spec.select.i134 = select i1 %tobool.not.i132, ptr @.str.19, ptr %disk_name.i133
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %spec.select.i134) #14
  br label %out_free_conf

if.end50:                                         ; preds = %for.end
  %39 = ptrtoint ptr %raid_disks36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %raid_disks36, align 8
  %sub = sub i32 %40, %working_disks.0.lcssa
  %degraded = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %41 = ptrtoint ptr %degraded to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %degraded, align 8
  %pool = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 5
  %call.i = tail call i32 @mempool_init(ptr noundef %pool, i32 noundef 32, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 128 to ptr)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not = icmp eq i32 %call.i, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.out_free_conf_crit_edge

if.end50.out_free_conf_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_conf

if.end55:                                         ; preds = %if.end50
  %call56 = tail call ptr @md_register_thread(ptr noundef nonnull @multipathd, ptr noundef %mddev, ptr noundef nonnull @.str) #11
  %thread = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 40
  %42 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call56, ptr %thread, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %if.end55.out_free_conf_crit_edge, label %do.end63

if.end55.out_free_conf_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_conf

do.end63:                                         ; preds = %if.end55
  %gendisk.i135 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %43 = ptrtoint ptr %gendisk.i135 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gendisk.i135, align 8
  %tobool.not.i136 = icmp eq ptr %44, null
  %disk_name.i137 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 3
  %spec.select.i138 = select i1 %tobool.not.i136, ptr @.str.19, ptr %disk_name.i137
  %45 = ptrtoint ptr %raid_disks36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %raid_disks36, align 8
  %47 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %degraded, align 8
  %sub68 = sub i32 %46, %48
  %49 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %raid_disks, align 8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %spec.select.i138, i32 noundef %sub68, i32 noundef %50) #14
  %dev_sectors.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 28
  %51 = ptrtoint ptr %dev_sectors.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dev_sectors.i, align 8
  tail call void @md_set_array_sectors(ptr noundef %mddev, i64 noundef %52) #11
  %call72 = tail call i32 @md_integrity_register(ptr noundef %mddev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end63.cleanup_crit_edge, label %do.end63.out_free_conf_crit_edge

do.end63.out_free_conf_crit_edge:                 ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_conf

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_free_conf:                                    ; preds = %do.end63.out_free_conf_crit_edge, %if.end55.out_free_conf_crit_edge, %if.end50.out_free_conf_crit_edge, %do.end46, %if.end7.i.i.out_free_conf_crit_edge, %kcalloc.exit.thread
  %multipaths142 = phi ptr [ %multipaths140, %kcalloc.exit.thread ], [ %multipaths, %do.end63.out_free_conf_crit_edge ], [ %multipaths, %if.end55.out_free_conf_crit_edge ], [ %multipaths, %if.end50.out_free_conf_crit_edge ], [ %multipaths, %if.end7.i.i.out_free_conf_crit_edge ], [ %multipaths, %do.end46 ]
  %pool76 = getelementptr inbounds %struct.mpconf, ptr %call7.i.i, i32 0, i32 5
  tail call void @mempool_exit(ptr noundef %pool76) #11
  %53 = ptrtoint ptr %multipaths142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %multipaths142, align 4
  tail call void @kfree(ptr noundef %54) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %55 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %mddev, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_free_conf, %do.end63.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end63.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ -5, %out_free_conf ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_free(ptr nocapture noundef readnone %mddev, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr inbounds %struct.mpconf, ptr %priv, i32 0, i32 5
  tail call void @mempool_exit(ptr noundef %pool) #11
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %multipaths, align 4
  tail call void @kfree(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_status(ptr noundef %seq, ptr nocapture noundef readonly %mddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %raid_disks = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disks, align 4
  %degraded = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %4 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %degraded, align 8
  %sub = sub i32 %3, %5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %sub) #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raid_disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp34 = icmp sgt i32 %11, 0
  br i1 %cmp34, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %land.end.thread.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %land.end.thread.for.body_crit_edge ]
  %12 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %multipaths, align 4
  %arrayidx = getelementptr %struct.multipath_info, ptr %13, i32 %i.035
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end10_crit_edge

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @multipath_status.__warned, align 1
  br i1 %.b24, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @multipath_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @.str.2) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %for.body.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %do.end10.land.end.thread_crit_edge, label %land.end

do.end10.land.end.thread_crit_edge:               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.thread

land.end:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  %spec.select = select i1 %tobool14.not, ptr @.str.28, ptr @.str.27
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %do.end10.land.end.thread_crit_edge
  %19 = phi ptr [ @.str.28, %do.end10.land.end.thread_crit_edge ], [ %spec.select, %land.end ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, ptr noundef nonnull %19) #11
  %inc = add nuw nsw i32 %i.035, 1
  %20 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raid_disks, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %land.end.thread.for.body_crit_edge, label %land.end.thread.for.end_crit_edge

land.end.thread.for.end_crit_edge:                ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.end.thread.for.body_crit_edge:               ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %land.end.thread.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i25, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %for.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %22 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i32 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 93) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_error(ptr noundef %mddev, ptr noundef %rdev) #2 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %raid_disks = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %b, i32 255, i32 32)
  %3 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %raid_disks, align 4
  %degraded = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %5 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %degraded, align 8
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then2

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %device_lock = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %device_lock) #11
  %7 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %degraded, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %degraded, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %device_lock, i32 noundef %call9) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then2, %if.end.if.end16_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  %sb_flags = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags) #11
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %9 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev, align 4
  %call22 = call ptr @bdevname(ptr noundef %10, ptr noundef nonnull %b) #11
  %11 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raid_disks, align 4
  %13 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %degraded, align 8
  %sub25 = sub i32 %12, %14
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %call22, i32 noundef %sub25) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_add_disk(ptr noundef %mddev, ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %2 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disks, align 8
  %sub = add i32 %3, -1
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %4 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  %spec.select = select i1 %cmp, i32 %5, i32 0
  %spec.select65 = select i1 %cmp, i32 %5, i32 %sub
  tail call fastcc void @print_multipath_conf(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %spec.select65)
  %cmp2.not67 = icmp sgt i32 %spec.select, %spec.select65
  br i1 %cmp2.not67, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %multipaths, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %path.068 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.multipath_info, ptr %7, i32 %path.068
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %10 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gendisk, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 5
  %12 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 10
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data_offset, align 8
  %shl = shl i64 %15, 9
  tail call void @disk_stack_limits(ptr noundef %11, ptr noundef %13, i64 noundef %shl) #11
  %call = tail call i32 @md_integrity_add_rdev(ptr noundef %rdev, ptr noundef %mddev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %device_lock = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %device_lock) #11
  %degraded = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %16 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %degraded, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %degraded, align 8
  %18 = ptrtoint ptr %raid_disk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %path.068, ptr %raid_disk, align 4
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %device_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %rdev, ptr %add.ptr, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %path.068, 1
  %cmp2.not = icmp sgt i32 %inc, %spec.select65
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7, %if.then5.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then5.for.end_crit_edge ], [ 0, %if.end7 ], [ -17, %entry.for.end_crit_edge ], [ -17, %for.inc.for.end_crit_edge ]
  tail call fastcc void @print_multipath_conf(ptr noundef %1)
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_remove_disk(ptr noundef %mddev, ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %2 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disk, align 4
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %multipaths, align 4
  %add.ptr = getelementptr %struct.multipath_info, ptr %5, i32 %3
  tail call fastcc void @print_multipath_conf(ptr noundef %1)
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %cmp = icmp eq ptr %7, %rdev
  br i1 %cmp, label %if.then, label %entry.abort_crit_edge

entry.abort_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %nr_pending = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_pending, i32 noundef 4) #11
  %11 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %3) #14
  br label %abort

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.end
  tail call void @synchronize_rcu() #11
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_pending, i32 noundef 4) #11
  %17 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rdev, ptr %add.ptr, align 4
  br label %abort

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call18 = tail call i32 @md_integrity_register(ptr noundef %mddev) #11
  br label %abort

abort:                                            ; preds = %if.end17, %if.then14, %do.end, %entry.abort_crit_edge
  %err.0 = phi i32 [ -16, %do.end ], [ %call18, %if.end17 ], [ -16, %if.then14 ], [ 0, %entry.abort_crit_edge ]
  tail call fastcc void @print_multipath_conf(ptr noundef %1)
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @multipath_size(ptr nocapture noundef readonly %mddev, i64 noundef %sectors, i32 noundef %raid_disks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sectors)
  %tobool.not = icmp ne i64 %sectors, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raid_disks)
  %tobool1 = icmp ne i32 %raid_disks, 0
  %spec.select = or i1 %tobool.not, %tobool1
  br i1 %spec.select, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @multipath_size.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !120

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @multipath_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.multipath_size) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %dev_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 28
  %0 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_sectors, align 8
  ret i64 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @md_flush_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @multipath_map(ptr nocapture noundef readonly %conf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_disks = getelementptr inbounds %struct.mpconf, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp64 = icmp sgt i32 %1, 0
  br i1 %cmp64, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %conf, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %multipaths, align 4
  %arrayidx = getelementptr %struct.multipath_info, ptr %7, i32 %i.065
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end8_crit_edge

for.body.do.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @multipath_map.__warned, align 1
  br i1 %.b38, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @multipath_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull @.str.2) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %for.body.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.for.inc_crit_edge, label %land.lhs.true11

do.end8.for.inc_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true11:                                  ; preds = %do.end8
  %flags = getelementptr inbounds %struct.md_rdev, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i39 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i39)
  %tobool17.not = icmp eq i32 %and1.i39, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true14
  %nr_pending = getelementptr inbounds %struct.md_rdev, ptr %9, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nr_pending, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending, ptr %nr_pending, i32 1, ptr elementtype(i32) %nr_pending) #11, !srcloc !125
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i40, label %if.then18.cleanup_crit_edge, label %land.lhs.true.i43

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i43:                                ; preds = %if.then18
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.cleanup_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.cleanup_crit_edge:              ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.cleanup_crit_edge, label %if.then.i46

land.lhs.true2.i45.cleanup_crit_edge:             ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i46, %land.lhs.true2.i45.cleanup_crit_edge, %land.lhs.true.i43.cleanup_crit_edge, %if.then18.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %16 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i47 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup29

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %do.end8.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i49, label %for.end.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true.i52

for.end.rcu_read_unlock.exit59_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

land.lhs.true.i52:                                ; preds = %for.end
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit59

rcu_read_unlock.exit59:                           ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, %for.end.rcu_read_unlock.exit59_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %20 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i56 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i58 = add i32 %23, -1
  store volatile i32 %sub.i.i.i58, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @multipath_map._rs, ptr noundef nonnull @__func__.multipath_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %rcu_read_unlock.exit59.cleanup29_crit_edge, label %do.end25

rcu_read_unlock.exit59.cleanup29_crit_edge:       ; preds = %rcu_read_unlock.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup29

do.end25:                                         ; preds = %rcu_read_unlock.exit59
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup29

cleanup29:                                        ; preds = %do.end25, %rcu_read_unlock.exit59.cleanup29_crit_edge, %cleanup
  %retval.2 = phi i32 [ %i.065, %cleanup ], [ -1, %do.end25 ], [ -1, %rcu_read_unlock.exit59.cleanup29_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_clone_fast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_end_request(ptr nocapture noundef readonly %bio) #2 align 64 {
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
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %multipaths, align 4
  %path = getelementptr inbounds %struct.multipath_bh, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path, align 8
  %arrayidx = getelementptr %struct.multipath_info, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %12 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %master_bio.i = getelementptr inbounds %struct.multipath_bh, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_bio.i, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %15) #11
  %pool.i = getelementptr inbounds %struct.mpconf, ptr %5, i32 0, i32 5
  tail call void @mempool_free(ptr noundef %1, ptr noundef %pool.i) #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf, align 8
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %20 = call ptr @memset(ptr %b, i32 255, i32 32)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void @md_error(ptr noundef %22, ptr noundef %11) #11
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 5
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 4
  %call = call ptr @bdevname(ptr noundef %24, ptr noundef nonnull %b) #11
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %25 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bi_iter, align 8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %call, i64 noundef %26) #14
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %device_lock.i = getelementptr inbounds %struct.mpconf, ptr %30, i32 0, i32 3
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %device_lock.i) #11
  %retry_list.i = getelementptr inbounds %struct.multipath_bh, ptr %1, i32 0, i32 4
  %retry_list6.i = getelementptr inbounds %struct.mpconf, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %retry_list6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %retry_list6.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %retry_list.i, ptr noundef %retry_list6.i, ptr noundef %32) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.multipath_reschedule_retry.exit_crit_edge

if.then3.multipath_reschedule_retry.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %multipath_reschedule_retry.exit

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retry_list.i, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %retry_list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %retry_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.multipath_bh, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retry_list6.i, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %retry_list6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %retry_list.i, ptr %retry_list6.i, align 4
  br label %multipath_reschedule_retry.exit

multipath_reschedule_retry.exit:                  ; preds = %if.end.i.i.i, %if.then3.multipath_reschedule_retry.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %device_lock.i, i32 noundef %call3.i) #11
  %thread.i = getelementptr inbounds %struct.mddev, ptr %28, i32 0, i32 40
  %37 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thread.i, align 4
  call void @md_wakeup_thread(ptr noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %master_bio.i22 = getelementptr inbounds %struct.multipath_bh, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %master_bio.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master_bio.i22, align 4
  %bi_status.i23 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %bi_status.i23 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %13, ptr %bi_status.i23, align 2
  tail call void @bio_endio(ptr noundef %40) #11
  %pool.i24 = getelementptr inbounds %struct.mpconf, ptr %5, i32 0, i32 5
  tail call void @mempool_free(ptr noundef %1, ptr noundef %pool.i24) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %multipath_reschedule_retry.exit, %if.then
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 16
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %45, 1
  %nr_pending.i = getelementptr inbounds %struct.md_rdev, ptr %11, i32 0, i32 23
  %call.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %nr_pending.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  call void @llvm.prefetch.p0(ptr %nr_pending.i, i32 1, i32 3, i32 1) #11
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_pending.i, ptr %nr_pending.i, i32 1, ptr elementtype(i32) %nr_pending.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end8.rdev_dec_pending.exit_crit_edge, label %if.then.i

if.end8.rdev_dec_pending.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdev_dec_pending.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %recovery.i = getelementptr inbounds %struct.mddev, ptr %43, i32 0, i32 56
  call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i) #11
  %thread.i26 = getelementptr inbounds %struct.mddev, ptr %43, i32 0, i32 40
  %47 = ptrtoint ptr %thread.i26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %thread.i26, align 4
  call void @md_wakeup_thread(ptr noundef %48) #11
  br label %rdev_dec_pending.exit

rdev_dec_pending.exit:                            ; preds = %if.then.i, %if.end8.rdev_dec_pending.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_wakeup_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_check_no_bitmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_stack_limits(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @md_register_thread(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipathd(ptr nocapture noundef readonly %thread) #2 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev1 = getelementptr inbounds %struct.md_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %retry_list = getelementptr inbounds %struct.mpconf, ptr %3, i32 0, i32 4
  tail call void @md_check_recovery(ptr noundef %1) #11
  %device_lock = getelementptr inbounds %struct.mpconf, ptr %3, i32 0, i32 3
  %prev = getelementptr inbounds %struct.mpconf, ptr %3, i32 0, i32 4, i32 1
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %4 = call ptr @memset(ptr %b, i32 255, i32 32)
  %call376 = call i32 @_raw_spin_lock_irqsave(ptr noundef %device_lock) #11
  %5 = ptrtoint ptr %retry_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %retry_list, align 4
  %cmp.i.not77 = icmp eq ptr %6, %retry_list
  br i1 %cmp.i.not77, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %call378 = phi i32 [ %call3, %cleanup.if.end_crit_edge ], [ %call376, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -116
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %device_lock, i32 noundef %call378) #11
  %bio10 = getelementptr i8, ptr %8, i32 -108
  %master_bio = getelementptr i8, ptr %8, i32 -112
  %17 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master_bio, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bi_iter, align 8
  %bi_iter11 = getelementptr i8, ptr %8, i32 -84
  %21 = ptrtoint ptr %bi_iter11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %bi_iter11, align 8
  %call13 = call fastcc i32 @multipath_map(ptr noundef %3)
  %path = getelementptr i8, ptr %8, i32 -4
  %22 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call13, ptr %path, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  %call21 = call ptr @bio_devname(ptr noundef %bio10, ptr noundef nonnull %b) #11
  %23 = ptrtoint ptr %bi_iter11 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bi_iter11, align 8
  br i1 %cmp14, label %do.end19, label %do.end27

do.end19:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %call21, i64 noundef %24) #14
  %25 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master_bio, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %26) #11
  %pool.i = getelementptr inbounds %struct.mpconf, ptr %30, i32 0, i32 5
  call void @mempool_free(ptr noundef %add.ptr, ptr noundef %pool.i) #11
  br label %cleanup

do.end27:                                         ; preds = %list_del.exit
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %call21, i64 noundef %24) #14
  %32 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master_bio, align 4
  %34 = call ptr @memcpy(ptr %bio10, ptr %33, i32 104)
  %35 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %multipaths, align 4
  %37 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %path, align 8
  %arrayidx = getelementptr %struct.multipath_info, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %data_offset, align 8
  %43 = ptrtoint ptr %bi_iter11 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bi_iter11, align 8
  %add = add i64 %44, %42
  store i64 %add, ptr %bi_iter11, align 8
  %45 = load ptr, ptr %multipaths, align 4
  %arrayidx40 = getelementptr %struct.multipath_info, ptr %45, i32 %38
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx40, align 4
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr i8, ptr %8, i32 -96
  %50 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %51, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr i8, ptr %8, i32 -104
  %52 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %53, %49
  br i1 %cmp.not.i, label %do.end27.bio_set_dev.exit_crit_edge, label %if.then.i

do.end27.bio_set_dev.exit_crit_edge:              ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %51, -2177
  %54 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %do.end27.bio_set_dev.exit_crit_edge
  %55 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio10) #11
  %bi_opf = getelementptr i8, ptr %8, i32 -100
  %56 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_opf, align 8
  %58 = or i32 %57, 512
  store i32 %58, ptr %bi_opf, align 8
  %bi_end_io = getelementptr i8, ptr %8, i32 -60
  %59 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @multipath_end_request, ptr %bi_end_io, align 8
  %bi_private = getelementptr i8, ptr %8, i32 -56
  %60 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr, ptr %bi_private, align 4
  call void @submit_bio_noacct(ptr noundef %bio10) #11
  br label %cleanup

cleanup:                                          ; preds = %bio_set_dev.exit, %do.end19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %61 = call ptr @memset(ptr %b, i32 255, i32 32)
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %device_lock) #11
  %62 = ptrtoint ptr %retry_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %retry_list, align 4
  %cmp.i.not = icmp eq ptr %63, %retry_list
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %call3.lcssa = phi i32 [ %call376, %entry.for.end_crit_edge ], [ %call3, %cleanup.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %device_lock, i32 noundef %call3.lcssa) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_set_array_sectors(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_integrity_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_check_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_multipath_conf(ptr noundef readonly %conf) unnamed_addr #2 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_multipath_conf.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_multipath_conf, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @print_multipath_conf.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.35) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %conf, null
  br i1 %tobool4.not, label %do.body6, label %do.body23

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_multipath_conf.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_multipath_conf, %if.then18)) #11
          to label %cleanup [label %if.then18], !srcloc !129

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @print_multipath_conf.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.36) #11
  br label %cleanup

do.body23:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_multipath_conf.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_multipath_conf, %if.then35)) #11
          to label %do.end39 [label %if.then35], !srcloc !129

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %raid_disks = getelementptr inbounds %struct.mpconf, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %degraded = getelementptr inbounds %struct.mddev, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %degraded, align 8
  %sub = sub i32 %1, %5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @print_multipath_conf.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.37, i32 noundef %sub, i32 noundef %1) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %raid_disks40 = getelementptr inbounds %struct.mpconf, ptr %conf, i32 0, i32 2
  %6 = ptrtoint ptr %raid_disks40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp91 = icmp sgt i32 %7, 0
  br i1 %cmp91, label %for.body.lr.ph, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end39
  %multipaths = getelementptr inbounds %struct.mpconf, ptr %conf, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end66.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #11
  %8 = call ptr @memset(ptr %b, i32 255, i32 32)
  %9 = ptrtoint ptr %multipaths to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %multipaths, align 4
  %add.ptr = getelementptr %struct.multipath_info, ptr %10, i32 %i.092
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %tobool41.not = icmp eq ptr %12, null
  br i1 %tobool41.not, label %for.body.if.end66_crit_edge, label %do.body43

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.body43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_multipath_conf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_multipath_conf, %if.then55)) #11
          to label %if.end66 [label %if.then55], !srcloc !129

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %flags = getelementptr inbounds %struct.md_rdev, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  %17 = xor i32 %and1.i, 1
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %14, i32 0, i32 5
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %call62 = call ptr @bdevname(ptr noundef %19, ptr noundef nonnull %b) #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @print_multipath_conf.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.38, i32 noundef %i.092, i32 noundef %17, ptr noundef %call62) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then55, %do.body43, %for.body.if.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #11
  %inc = add nuw nsw i32 %i.092, 1
  %20 = ptrtoint ptr %raid_disks40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raid_disks40, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %if.end66.for.body_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end66.cleanup_crit_edge, %do.end39.cleanup_crit_edge, %if.then18, %do.body6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_integrity_add_rdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_md_personality(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_multipath__294_471_multipath_init6, !1, !"__initcall__kmod_multipath__294_471_multipath_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/md-multipath.c", i32 471, i32 1}
!2 = !{ptr @__exitcall_multipath_exit, !3, !"__exitcall_multipath_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/md-multipath.c", i32 472, i32 1}
!4 = !{ptr @__UNIQUE_ID_file295, !5, !"__UNIQUE_ID_file295", i1 false, i1 false}
!5 = !{!"../drivers/md/md-multipath.c", i32 473, i32 1}
!6 = !{ptr @__UNIQUE_ID_license296, !5, !"__UNIQUE_ID_license296", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description297, !8, !"__UNIQUE_ID_description297", i1 false, i1 false}
!8 = !{!"../drivers/md/md-multipath.c", i32 474, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias298, !10, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!10 = !{!"../drivers/md/md-multipath.c", i32 475, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias299, !12, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!12 = !{!"../drivers/md/md-multipath.c", i32 476, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias300, !14, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!14 = !{!"../drivers/md/md-multipath.c", i32 477, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/md-multipath.c", i32 448, i32 11}
!17 = !{ptr @multipath_personality, !18, !"multipath_personality", i1 false, i1 false}
!18 = !{!"../drivers/md/md-multipath.c", i32 446, i32 30}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/md/md-multipath.c", i32 37, i32 26}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/md-multipath.c", i32 47, i32 2}
!25 = !{ptr @multipath_map._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.multipath_map, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @multipath_map._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @multipath_map._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/md-multipath.c", i32 92, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @multipath_end_request._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @multipath_end_request._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/md-multipath.c", i32 356, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @multipath_run._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @multipath_run._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @multipath_run.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/md/md-multipath.c", i32 395, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/md-multipath.c", i32 399, i32 3}
!52 = !{ptr @multipath_run._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @multipath_run._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/md-multipath.c", i32 415, i32 2}
!56 = !{ptr @multipath_run._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @multipath_run._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/md.h", i32 632, i32 54}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/md-multipath.c", i32 314, i32 4}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @multipathd._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @multipathd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/md-multipath.c", i32 319, i32 4}
!67 = !{ptr @multipathd._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @multipathd._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/md-multipath.c", i32 143, i32 19}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../drivers/md/md-multipath.c", i32 147, i32 26}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/md-multipath.c", i32 148, i32 20}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/md-multipath.c", i32 148, i32 68}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/md-multipath.c", i32 148, i32 74}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/md-multipath.c", i32 168, i32 3}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @multipath_error._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @multipath_error._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/md-multipath.c", i32 183, i32 2}
!86 = !{ptr @multipath_error._entry.31, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @multipath_error._entry_ptr.33, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/md-multipath.c", i32 194, i32 2}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @print_multipath_conf.__UNIQUE_ID_ddebug287, !89, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/md-multipath.c", i32 196, i32 3}
!94 = !{ptr @print_multipath_conf.__UNIQUE_ID_ddebug288, !93, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/md-multipath.c", i32 199, i32 2}
!97 = !{ptr @print_multipath_conf.__UNIQUE_ID_ddebug289, !96, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/md-multipath.c", i32 206, i32 4}
!100 = !{ptr @print_multipath_conf.__UNIQUE_ID_ddebug290, !99, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/md-multipath.c", i32 261, i32 4}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @multipath_remove_disk._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @multipath_remove_disk._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/md/md-multipath.c", i32 337, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__func__.multipath_size, !107, !"<string literal>", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2149296920}
!123 = !{i64 2149297186}
!124 = !{i64 2154784147}
!125 = !{i64 2148469406, i64 2148469432, i64 2148469461, i64 2148469495, i64 2148469526, i64 2148469549}
!126 = !{i64 2148557858}
!127 = !{i64 2148472591, i64 2148472623, i64 2148472652, i64 2148472686, i64 2148472717, i64 2148472740}
!128 = !{i64 2148558087}
!129 = !{i64 2148282799, i64 2148282804, i64 2148282817, i64 2148282861, i64 2148282895, i64 2148282916}
