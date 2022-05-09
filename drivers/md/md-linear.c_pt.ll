; ModuleID = '/llk/IR_all_yes/drivers/md/md-linear.c_pt.bc'
source_filename = "../drivers/md/md-linear.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.md_personality = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.82 }
%struct.atomic_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.88, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.88 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.linear_conf = type { %struct.callback_head, i64, i32, [0 x %struct.dev_info] }
%struct.callback_head = type { ptr, ptr }
%struct.dev_info = type { ptr, i64 }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.89, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.90 }
%union.anon.89 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.90 = type { i16, i32, i64 }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { %struct.callback_head }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.86 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_linear__339_312_linear_init6 = internal global ptr @linear_init, section ".initcall6.init", align 4
@__exitcall_linear_exit = internal global ptr @linear_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [30 x i8] c"linear.file=drivers/md/linear\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [19 x i8] c"linear.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [79 x i8] c"linear.description=Linear device concatenation personality for MD (deprecated)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias343 = internal constant [30 x i8] c"linear.alias=md-personality-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias344 = internal constant [23 x i8] c"linear.alias=md-linear\00", section ".modinfo", align 1
@__UNIQUE_ID_alias345 = internal constant [25 x i8] c"linear.alias=md-level--1\00", section ".modinfo", align 1
@linear_personality = internal global { %struct.md_personality, [32 x i8] } { %struct.md_personality { ptr @.str, i32 -1, %struct.list_head zeroinitializer, ptr null, ptr @linear_make_request, ptr @linear_run, ptr null, ptr @linear_free, ptr @linear_status, ptr null, ptr @linear_add, ptr null, ptr null, ptr null, ptr null, ptr @linear_size, ptr null, ptr null, ptr null, ptr null, ptr @linear_quiesce, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@linear_make_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013md/linear:%s: make_request: Sector %llu out of bounds on dev %s: %llu sectors, offset %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linear_make_request\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/md-linear.c\00", [41 x i8] zeroinitializer }, align 32
@linear_make_request._entry_ptr = internal global ptr @linear_make_request._entry, section ".printk_index", align 4
@is_mddev_broken._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014md: %s: %s array has a missing/failed member\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_mddev_broken\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drivers/md/md.h\00", [16 x i8] zeroinitializer }, align 32
@is_mddev_broken._entry_ptr = internal global ptr @is_mddev_broken._entry, section ".printk_index", align 4
@__tracepoint_block_bio_remap = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_bio_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
@linear_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014md/linear:%s: disk numbering problem. Aborting!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"linear_conf\00", [20 x i8] zeroinitializer }, align 32
@linear_conf._entry_ptr = internal global ptr @linear_conf._entry, section ".printk_index", align 4
@linear_conf._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014md/linear:%s: not enough drives present. Aborting!\0A\00", [42 x i8] zeroinitializer }, align 32
@linear_conf._entry_ptr.15 = internal global ptr @linear_conf._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %dk rounding\00", [18 x i8] zeroinitializer }, align 32
@linear_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@linear_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"copied raid_disks doesn't match mddev->raid_disks\00", [46 x i8] zeroinitializer }, align 32
@linear_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s does not support generic reshape\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.linear_size = private unnamed_addr constant [12 x i8] c"linear_size\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"linear_personality\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 288, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 290, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 269, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 771, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 456, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 108, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 632, i32 54 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 82, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 104, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 281, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 196, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 199, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [26 x i8] c"../drivers/md/md-linear.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 55, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias343, ptr @__UNIQUE_ID_alias344, ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_linear_exit, ptr @__initcall__kmod_linear__339_312_linear_init6, ptr @is_mddev_broken._entry, ptr @is_mddev_broken._entry_ptr, ptr @linear_conf._entry, ptr @linear_conf._entry.13, ptr @linear_conf._entry_ptr, ptr @linear_conf._entry_ptr.15, ptr @linear_make_request._entry, ptr @linear_make_request._entry_ptr, ptr @linear_personality, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_personality to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_make_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_mddev_broken._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_conf._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @linear_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_md_personality(ptr noundef nonnull @linear_personality) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linear_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_md_personality(ptr noundef nonnull @linear_personality) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @linear_make_request(ptr noundef %mddev, ptr noundef %bio) #1 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #10
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  %1 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %3 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_opf, align 8
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @md_flush_request(ptr noundef %mddev, ptr noundef %bio) #10
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %raid_disks.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %6 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks.i, align 8
  %sub.i = add i32 %7, -1
  %8 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mddev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp11.i, label %if.end.while.body.i_crit_edge, label %if.end.which_dev.exit_crit_edge

if.end.which_dev.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %which_dev.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %hi.013.i = phi i32 [ %hi.1.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i, %if.end.while.body.i_crit_edge ]
  %lo.012.i = phi i32 [ %lo.1.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %add.i = add i32 %lo.012.i, %hi.013.i
  %div.i = sdiv i32 %add.i, 2
  %end_sector.i = getelementptr %struct.linear_conf, ptr %9, i32 0, i32 3, i32 %div.i, i32 1
  %10 = ptrtoint ptr %end_sector.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end_sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %2)
  %cmp1.i = icmp ugt i64 %11, %2
  %add2.i = add nsw i32 %div.i, 1
  %lo.1.i = select i1 %cmp1.i, i32 %lo.012.i, i32 %add2.i
  %hi.1.i = select i1 %cmp1.i, i32 %div.i, i32 %hi.013.i
  %cmp.i = icmp sgt i32 %hi.1.i, %lo.1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.which_dev.exit_crit_edge

while.body.i.which_dev.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %which_dev.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

which_dev.exit:                                   ; preds = %while.body.i.which_dev.exit_crit_edge, %if.end.which_dev.exit_crit_edge
  %lo.0.lcssa.i = phi i32 [ 0, %if.end.which_dev.exit_crit_edge ], [ %lo.1.i, %while.body.i.which_dev.exit_crit_edge ]
  %disks3.i = getelementptr inbounds %struct.linear_conf, ptr %9, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.dev_info, ptr %disks3.i, i32 %lo.0.lcssa.i
  %end_sector5 = getelementptr %struct.dev_info, ptr %disks3.i, i32 %lo.0.lcssa.i, i32 1
  %12 = ptrtoint ptr %end_sector5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end_sector5, align 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %sectors = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sectors, align 8
  %sub = sub i64 %13, %17
  %data_offset8 = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %data_offset8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data_offset8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %2)
  %cmp.not = icmp ule i64 %13, %2
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %sub)
  %cmp10 = icmp ult i64 %2, %sub
  %spec.select = select i1 %cmp.not, i1 true, i1 %cmp10
  br i1 %spec.select, label %do.end, label %if.end19, !prof !73

if.end19:                                         ; preds = %which_dev.exit
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %part0.i.i, align 4
  %bd_inode.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %bd_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_inode.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 28, i32 1
  %28 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.not.i, label %if.then.i, label %if.end29

if.then.i:                                        ; preds = %if.end19
  %mddev.i = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 2
  %30 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mddev.i, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %31, i32 0, i32 5
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i.if.then28_crit_edge

if.then.i.if.then28_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mddev.i, align 8
  %gendisk.i.i = getelementptr inbounds %struct.mddev, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %gendisk.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gendisk.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.10, ptr %disk_name.i.i
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %spec.select.i.i, ptr noundef nonnull @.str) #13
  br label %if.then28

if.then28:                                        ; preds = %do.end.i, %if.then.i.if.then28_crit_edge
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %36 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %37 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %40, 9
  %conv33 = zext i32 %shr to i64
  %add = add i64 %38, %conv33
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %13)
  %cmp34 = icmp ugt i64 %add, %13
  br i1 %cmp34, label %if.then42, label %if.end29.if.end46_crit_edge, !prof !73

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %sub43 = sub i64 %13, %2
  %conv44 = trunc i64 %sub43 to i32
  %bio_set = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 90
  %call45 = tail call ptr @bio_split(ptr noundef %bio, i32 noundef %conv44, i32 noundef 3072, ptr noundef %bio_set) #10
  tail call void @bio_chain(ptr noundef %call45, ptr noundef %bio) #10
  tail call void @submit_bio_noacct(ptr noundef %bio) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end29.if.end46_crit_edge
  %bio.addr.0 = phi ptr [ %call45, %if.then42 ], [ %bio, %if.end29.if.end46_crit_edge ]
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0, i32 0, i32 3
  %45 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %46, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0, i32 0, i32 1
  %47 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %48, %44
  br i1 %cmp.not.i, label %if.end46.bio_set_dev.exit_crit_edge, label %if.then.i134

if.end46.bio_set_dev.exit_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i134:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %46, -2177
  %49 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i134, %if.end46.bio_set_dev.exit_crit_edge
  %50 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio.addr.0) #10
  %bi_iter48 = getelementptr inbounds %struct.bio, ptr %bio.addr.0, i32 0, i32 8
  %51 = ptrtoint ptr %bi_iter48 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bi_iter48, align 8
  %sub50 = sub i64 %19, %sub
  %add51 = add i64 %sub50, %52
  store i64 %add51, ptr %bi_iter48, align 8
  %bi_opf54 = getelementptr inbounds %struct.bio, ptr %bio.addr.0, i32 0, i32 2
  %53 = ptrtoint ptr %bi_opf54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bi_opf54, align 8
  %and55 = and i32 %54, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 3
  br i1 %cmp56, label %land.rhs, label %bio_set_dev.exit.if.else_crit_edge

bio_set_dev.exit.if.else_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs:                                         ; preds = %bio_set_dev.exit
  %55 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %queue_flags, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool59.not = icmp eq i32 %63, 0
  br i1 %tobool59.not, label %if.then68, label %land.rhs.if.else_crit_edge, !prof !73

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then68:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_endio(ptr noundef %bio.addr.0) #10
  br label %cleanup

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %bio_set_dev.exit.if.else_crit_edge
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %64 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gendisk, align 8
  %tobool69.not = icmp eq ptr %65, null
  br i1 %tobool69.not, label %if.else.if.end73_crit_edge, label %if.then70

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i = shl i32 %67, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %69
  tail call fastcc void @trace_block_bio_remap(ptr noundef %bio.addr.0, i32 noundef %or.i, i64 noundef %2)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.else.if.end73_crit_edge
  %70 = ptrtoint ptr %bi_opf54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_opf54, align 8
  %and.i = and i32 %71, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i135 = icmp eq i32 %and.i, 7
  br i1 %cmp.i135, label %land.lhs.true.i, label %if.end73.mddev_check_writesame.exit_crit_edge

if.end73.mddev_check_writesame.exit_crit_edge:    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %mddev_check_writesame.exit

land.lhs.true.i:                                  ; preds = %if.end73
  %72 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i137 = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %bd_disk.i137 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bd_disk.i137, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue.i, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %77, i32 0, i32 37, i32 15
  %78 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_write_same_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i138 = icmp eq i32 %79, 0
  br i1 %tobool.not.i138, label %if.then.i139, label %land.lhs.true.i.mddev_check_writesame.exit_crit_edge

land.lhs.true.i.mddev_check_writesame.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mddev_check_writesame.exit

if.then.i139:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %queue1.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %80 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %queue1.i, align 8
  %max_write_same_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %81, i32 0, i32 37, i32 15
  %82 = ptrtoint ptr %max_write_same_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %max_write_same_sectors3.i, align 4
  br label %mddev_check_writesame.exit

mddev_check_writesame.exit:                       ; preds = %if.then.i139, %land.lhs.true.i.mddev_check_writesame.exit_crit_edge, %if.end73.mddev_check_writesame.exit_crit_edge
  %83 = ptrtoint ptr %bi_opf54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_opf54, align 8
  %and.i141 = and i32 %84, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i141)
  %cmp.i142 = icmp eq i32 %and.i141, 9
  br i1 %cmp.i142, label %land.lhs.true.i147, label %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge

mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge: ; preds = %mddev_check_writesame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mddev_check_write_zeroes.exit

land.lhs.true.i147:                               ; preds = %mddev_check_writesame.exit
  %85 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_bdev.i, align 4
  %bd_disk.i144 = getelementptr inbounds %struct.block_device, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %bd_disk.i144 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bd_disk.i144, align 8
  %queue.i145 = getelementptr inbounds %struct.gendisk, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %queue.i145 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %queue.i145, align 4
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 37, i32 16
  %91 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i146 = icmp eq i32 %92, 0
  br i1 %tobool.not.i146, label %if.then.i149, label %land.lhs.true.i147.mddev_check_write_zeroes.exit_crit_edge

land.lhs.true.i147.mddev_check_write_zeroes.exit_crit_edge: ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %mddev_check_write_zeroes.exit

if.then.i149:                                     ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #12
  %queue1.i148 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %93 = ptrtoint ptr %queue1.i148 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %queue1.i148, align 8
  %max_write_zeroes_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %94, i32 0, i32 37, i32 16
  %95 = ptrtoint ptr %max_write_zeroes_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %max_write_zeroes_sectors3.i, align 4
  br label %mddev_check_write_zeroes.exit

mddev_check_write_zeroes.exit:                    ; preds = %if.then.i149, %land.lhs.true.i147.mddev_check_write_zeroes.exit_crit_edge, %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %bio.addr.0) #10
  br label %cleanup

do.end:                                           ; preds = %which_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %96 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i150 = icmp eq ptr %97, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %97, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i150, ptr @.str.10, ptr %disk_name.i
  %98 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %bi_iter, align 8
  %bdev79 = getelementptr inbounds %struct.md_rdev, ptr %15, i32 0, i32 5
  %100 = ptrtoint ptr %bdev79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bdev79, align 4
  %call80 = call ptr @bdevname(ptr noundef %101, ptr noundef nonnull %b) #10
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 8
  %sectors82 = getelementptr inbounds %struct.md_rdev, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %sectors82 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %sectors82, align 8
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %spec.select.i, i64 noundef %99, ptr noundef %call80, i64 noundef %105, i64 noundef %sub) #13
  %bi_status.i151 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %106 = ptrtoint ptr %bi_status.i151 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 10, ptr %bi_status.i151, align 2
  call void @bio_endio(ptr noundef %bio) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mddev_check_write_zeroes.exit, %if.then68, %if.then28, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #10
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linear_run(ptr noundef %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @md_check_no_bitmap(ptr noundef %mddev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 8
  %call1 = tail call fastcc ptr @linear_conf(ptr noundef %mddev, i32 noundef %1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %mddev, align 8
  %array_sectors37.i = getelementptr inbounds %struct.linear_conf, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %array_sectors37.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %array_sectors37.i, align 8
  tail call void @md_set_array_sectors(ptr noundef %mddev, i64 noundef %4) #10
  %call6 = tail call i32 @md_integrity_register(ptr noundef %mddev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call1) #10
  %5 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mddev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linear_free(ptr nocapture noundef readnone %mddev, ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linear_status(ptr noundef %seq, ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %0 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_sectors, align 8
  %div = sdiv i32 %1, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %div) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linear_add(ptr noundef %mddev, ptr nocapture noundef %rdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 21
  %0 = ptrtoint ptr %saved_raid_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saved_raid_disk, align 4
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %2 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %4 = ptrtoint ptr %raid_disk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %raid_disk, align 4
  %5 = ptrtoint ptr %saved_raid_disk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %saved_raid_disk, align 4
  %6 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks, align 8
  %add = add i32 %7, 1
  %call = tail call fastcc ptr @linear_conf(ptr noundef %mddev, i32 noundef %add)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @mddev_suspend(ptr noundef %mddev) #10
  %dep_map = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 60, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end5
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b134 = load i1, ptr @linear_add.__warned, align 1
  br i1 %.b134, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @linear_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 197, ptr noundef nonnull @.str.17) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end5.do.end_crit_edge
  %8 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mddev, align 8
  %10 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raid_disks, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %raid_disks, align 8
  %raid_disks16 = getelementptr inbounds %struct.linear_conf, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %raid_disks16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raid_disks16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %13)
  %cmp17.not = icmp eq i32 %inc, %13
  br i1 %cmp17.not, label %do.end.if.end51_crit_edge, label %land.rhs

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.rhs:                                         ; preds = %do.end
  %.b132133 = load i1, ptr @linear_add.__already_done, align 1
  br i1 %.b132133, label %land.rhs.if.end51_crit_edge, label %if.then25, !prof !72

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @linear_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.18) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then25, %land.rhs.if.end51_crit_edge, %do.end.if.end51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %14 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call, ptr %mddev, align 8
  %array_sectors37.i = getelementptr inbounds %struct.linear_conf, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %array_sectors37.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %array_sectors37.i, align 8
  tail call void @md_set_array_sectors(ptr noundef %mddev, i64 noundef %16) #10
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %17 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gendisk, align 8
  %array_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 29
  %19 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %array_sectors, align 8
  %call99 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %18, i64 noundef %20) #10
  tail call void @mddev_resume(ptr noundef %mddev) #10
  %tobool101.not = icmp eq ptr %9, null
  br i1 %tobool101.not, label %if.end51.cleanup_crit_edge, label %do.end105

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end105:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end105 ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @linear_size(ptr nocapture noundef readonly %mddev, i64 noundef %sectors, i32 noundef %raid_disks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sectors)
  %tobool.not = icmp ne i64 %sectors, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raid_disks)
  %tobool1 = icmp ne i32 %raid_disks, 0
  %spec.select = or i1 %tobool.not, %tobool1
  br i1 %spec.select, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @linear_size.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !72

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @linear_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.linear_size) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %array_sectors37 = getelementptr inbounds %struct.linear_conf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %array_sectors37 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %array_sectors37, align 8
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @linear_quiesce(ptr nocapture noundef %mddev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @md_flush_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_remap(ptr noundef %bio, i32 noundef %dev, i64 noundef %from) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 1), ptr blockaddress(@trace_block_bio_remap, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !75

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !72

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %call42 = tail call i32 @__traceiter_block_bio_remap(ptr noundef null, ptr noundef %bio, i32 noundef %dev, i64 noundef %from) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !72

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_block_bio_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_block_bio_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 486, ptr noundef nonnull @.str.8) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_remap(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_check_no_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @linear_conf(ptr noundef readonly %mddev, i32 noundef %raid_disks) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %raid_disks, i32 16) #10
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 24) #10
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup268_crit_edge, label %if.end

entry.cleanup268_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup268

if.end:                                           ; preds = %entry
  %array_sectors = getelementptr inbounds %struct.linear_conf, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %array_sectors to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %array_sectors, align 8
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %4 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %4)
  %rdev.0431 = load ptr, ptr %disks, align 8
  %cmp.not432 = icmp eq ptr %rdev.0431, %disks
  br i1 %cmp.not432, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %disks3 = getelementptr inbounds %struct.linear_conf, ptr %call9.i.i, i32 0, i32 3
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %rdev.0435 = phi ptr [ %rdev.0431, %for.body.lr.ph ], [ %rdev.0, %cleanup.for.body_crit_edge ]
  %cnt.0434 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %discard_supported.0.off0433 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %cleanup.for.body_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.0435, i32 0, i32 19
  %5 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %raid_disk, align 4
  %add.ptr4 = getelementptr %struct.dev_info, ptr %disks3, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp5 = icmp sgt i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %raid_disks)
  %cmp6.not = icmp slt i32 %6, %raid_disks
  %or.cond = and i1 %cmp5, %cmp6.not
  br i1 %or.cond, label %lor.lhs.false7, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false7:                                   ; preds = %for.body
  %7 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr4, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end14, label %lor.lhs.false7.out_crit_edge

lor.lhs.false7.out_crit_edge:                     ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %lor.lhs.false7
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rdev.0435, ptr %add.ptr4, align 8
  %10 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %sectors18 = getelementptr inbounds %struct.md_rdev, ptr %rdev.0435, i32 0, i32 1
  %12 = ptrtoint ptr %sectors18 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sectors18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp189 = icmp ult i64 %13, 4294967296
  br i1 %cmp189, label %if.then194, label %if.else200, !prof !72

if.then194:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %conv195 = trunc i64 %13 to i32
  %div198 = udiv i32 %conv195, %11
  %conv199 = zext i32 %div198 to i64
  br label %if.end204

if.else200:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %13) #15, !srcloc !80
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then194
  %sectors.0 = phi i64 [ %conv199, %if.then194 ], [ %asmresult1.i, %if.else200 ]
  %conv207 = sext i32 %11 to i64
  %mul208 = mul i64 %sectors.0, %conv207
  %15 = ptrtoint ptr %sectors18 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul208, ptr %sectors18, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %if.end14.cleanup_crit_edge
  %16 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gendisk, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev.0435, i32 0, i32 5
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.0435, i32 0, i32 10
  %20 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data_offset, align 8
  %shl211 = shl i64 %21, 9
  tail call void @disk_stack_limits(ptr noundef %17, ptr noundef %19, i64 noundef %shl211) #10
  %sectors212 = getelementptr inbounds %struct.md_rdev, ptr %rdev.0435, i32 0, i32 1
  %22 = ptrtoint ptr %sectors212 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sectors212, align 8
  %24 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %array_sectors, align 8
  %add214 = add i64 %25, %23
  store i64 %add214, ptr %array_sectors, align 8
  %inc = add i32 %cnt.0434, 1
  %26 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %queue_flags, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool218.not = icmp ne i32 %32, 0
  %spec.select = select i1 %tobool218.not, i1 true, i1 %discard_supported.0.off0433
  %33 = ptrtoint ptr %rdev.0435 to i32
  call void @__asan_load4_noabort(i32 %33)
  %rdev.0 = load ptr, ptr %rdev.0435, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %raid_disks)
  %cmp228.not = icmp eq i32 %inc, %raid_disks
  br i1 %cmp228.not, label %if.end237, label %for.end.do.end233_crit_edge

for.end.do.end233_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end233

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raid_disks)
  %cmp228.not441 = icmp eq i32 %raid_disks, 0
  br i1 %cmp228.not441, label %for.end.thread.if.then239_crit_edge, label %for.end.thread.do.end233_crit_edge

for.end.thread.do.end233_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end233

for.end.thread.if.then239_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then239

do.end233:                                        ; preds = %for.end.thread.do.end233_crit_edge, %for.end.do.end233_crit_edge
  %gendisk.i400 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  br label %out

if.end237:                                        ; preds = %for.end
  br i1 %spec.select, label %if.else240, label %if.end237.if.then239_crit_edge

if.end237.if.then239_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then239

if.then239:                                       ; preds = %if.end237.if.then239_crit_edge, %for.end.thread.if.then239_crit_edge
  %queue = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue, align 8
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %35) #10
  br label %if.end242

if.else240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  %queue241 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %36 = ptrtoint ptr %queue241 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue241, align 8
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %37) #10
  br label %if.end242

if.end242:                                        ; preds = %if.else240, %if.then239
  %disks243 = getelementptr inbounds %struct.linear_conf, ptr %call9.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %disks243 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %disks243, align 8
  %sectors245 = getelementptr inbounds %struct.md_rdev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %sectors245 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sectors245, align 8
  %end_sector = getelementptr inbounds %struct.linear_conf, ptr %call9.i.i, i32 1, i32 1
  %42 = ptrtoint ptr %end_sector to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %end_sector, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %raid_disks)
  %cmp249437 = icmp sgt i32 %raid_disks, 1
  br i1 %cmp249437, label %if.end242.for.body251_crit_edge, label %if.end242.for.end266_crit_edge

if.end242.for.end266_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end266

if.end242.for.body251_crit_edge:                  ; preds = %if.end242
  br label %for.body251

for.body251:                                      ; preds = %for.body251.for.body251_crit_edge, %if.end242.for.body251_crit_edge
  %i.0438 = phi i32 [ %inc265, %for.body251.for.body251_crit_edge ], [ 1, %if.end242.for.body251_crit_edge ]
  %sub253 = add nsw i32 %i.0438, -1
  %end_sector255 = getelementptr %struct.linear_conf, ptr %call9.i.i, i32 0, i32 3, i32 %sub253, i32 1
  %43 = ptrtoint ptr %end_sector255 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %end_sector255, align 16
  %arrayidx257 = getelementptr %struct.linear_conf, ptr %call9.i.i, i32 0, i32 3, i32 %i.0438
  %45 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx257, align 8
  %sectors259 = getelementptr inbounds %struct.md_rdev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %sectors259 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sectors259, align 8
  %add260 = add i64 %48, %44
  %end_sector263 = getelementptr %struct.linear_conf, ptr %call9.i.i, i32 0, i32 3, i32 %i.0438, i32 1
  %49 = ptrtoint ptr %end_sector263 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add260, ptr %end_sector263, align 16
  %inc265 = add nuw nsw i32 %i.0438, 1
  %exitcond.not = icmp eq i32 %inc265, %raid_disks
  br i1 %exitcond.not, label %for.body251.for.end266_crit_edge, label %for.body251.for.body251_crit_edge

for.body251.for.body251_crit_edge:                ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body251

for.body251.for.end266_crit_edge:                 ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end266

for.end266:                                       ; preds = %for.body251.for.end266_crit_edge, %if.end242.for.end266_crit_edge
  %raid_disks267 = getelementptr inbounds %struct.linear_conf, ptr %call9.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %raid_disks267 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %raid_disks, ptr %raid_disks267, align 16
  br label %cleanup268

out:                                              ; preds = %do.end233, %lor.lhs.false7.out_crit_edge, %for.body.out_crit_edge
  %gendisk.sink = phi ptr [ %gendisk.i400, %do.end233 ], [ %gendisk, %lor.lhs.false7.out_crit_edge ], [ %gendisk, %for.body.out_crit_edge ]
  %.str.11.sink = phi ptr [ @.str.14, %do.end233 ], [ @.str.11, %lor.lhs.false7.out_crit_edge ], [ @.str.11, %for.body.out_crit_edge ]
  %51 = ptrtoint ptr %gendisk.sink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gendisk.sink, align 8
  %tobool.not.i = icmp eq ptr %52, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %52, i32 0, i32 3
  %spec.select.i398 = select i1 %tobool.not.i, ptr @.str.10, ptr %disk_name.i
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink, ptr noundef %spec.select.i398) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup268

cleanup268:                                       ; preds = %out, %for.end266, %entry.cleanup268_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %call9.i.i, %for.end266 ], [ null, %entry.cleanup268_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_set_array_sectors(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_integrity_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_stack_limits(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !57, !58, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_linear__339_312_linear_init6, !1, !"__initcall__kmod_linear__339_312_linear_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/md-linear.c", i32 312, i32 1}
!2 = !{ptr @__exitcall_linear_exit, !3, !"__exitcall_linear_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/md-linear.c", i32 313, i32 1}
!4 = !{ptr @__UNIQUE_ID_file340, !5, !"__UNIQUE_ID_file340", i1 false, i1 false}
!5 = !{!"../drivers/md/md-linear.c", i32 314, i32 1}
!6 = !{ptr @__UNIQUE_ID_license341, !5, !"__UNIQUE_ID_license341", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description342, !8, !"__UNIQUE_ID_description342", i1 false, i1 false}
!8 = !{!"../drivers/md/md-linear.c", i32 315, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias343, !10, !"__UNIQUE_ID_alias343", i1 false, i1 false}
!10 = !{!"../drivers/md/md-linear.c", i32 316, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias344, !12, !"__UNIQUE_ID_alias344", i1 false, i1 false}
!12 = !{!"../drivers/md/md-linear.c", i32 317, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias345, !14, !"__UNIQUE_ID_alias345", i1 false, i1 false}
!14 = !{!"../drivers/md/md-linear.c", i32 318, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/md-linear.c", i32 290, i32 11}
!17 = !{ptr @linear_personality, !18, !"linear_personality", i1 false, i1 false}
!18 = !{!"../drivers/md/md-linear.c", i32 288, i32 30}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/md-linear.c", i32 269, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @linear_make_request._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @linear_make_request._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/md.h", i32 771, i32 4}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @is_mddev_broken._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @is_mddev_broken._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/trace/events/block.h", i32 456, i32 1}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/md.h", i32 632, i32 54}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/md-linear.c", i32 82, i32 4}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @linear_conf._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @linear_conf._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/md-linear.c", i32 104, i32 3}
!48 = !{ptr @linear_conf._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @linear_conf._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/md-linear.c", i32 281, i32 18}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/md/md-linear.c", i32 196, i32 12}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/md/md-linear.c", i32 199, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/md/md-linear.c", i32 55, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__func__.linear_size, !59, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2155566386}
!75 = !{i64 2148278647, i64 2148278652, i64 2148278665, i64 2148278709, i64 2148278743, i64 2148278764}
!76 = !{i64 2155048948}
!77 = !{i64 2155049169}
!78 = !{i64 2149301327}
!79 = !{i64 2149302363}
!80 = !{i64 2148303834, i64 2148304114, i64 2148304448, i64 2148304782}
