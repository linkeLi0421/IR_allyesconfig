; ModuleID = '/llk/IR_all_yes/drivers/md/raid0.c_pt.bc'
source_filename = "../drivers/md/raid0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.81 }
%union.anon.81 = type { ptr }
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
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.90, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.anon.90 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.r0conf = type { ptr, ptr, i32, i32 }
%struct.strip_zone = type { i64, i64, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.91, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.92 }
%union.anon.91 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.92 = type { i16, i32, i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
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

@__param_str_default_layout = internal constant [21 x i8] c"raid0.default_layout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@default_layout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_layout = internal constant %struct.kernel_param { ptr @__param_str_default_layout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.81 { ptr @default_layout } }, section "__param", align 4
@__UNIQUE_ID_default_layouttype335 = internal constant [34 x i8] c"raid0.parmtype=default_layout:int\00", section ".modinfo", align 1
@__initcall__kmod_raid0__357_796_raid0_init6 = internal global ptr @raid0_init, section ".initcall6.init", align 4
@__exitcall_raid0_exit = internal global ptr @raid0_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file358 = internal constant [28 x i8] c"raid0.file=drivers/md/raid0\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [18 x i8] c"raid0.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [54 x i8] c"raid0.description=RAID0 (striping) personality for MD\00", section ".modinfo", align 1
@__UNIQUE_ID_alias361 = internal constant [29 x i8] c"raid0.alias=md-personality-2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias362 = internal constant [21 x i8] c"raid0.alias=md-raid0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias363 = internal constant [23 x i8] c"raid0.alias=md-level-0\00", section ".modinfo", align 1
@raid0_personality = internal global { %struct.md_personality, [32 x i8] } { %struct.md_personality { ptr @.str, i32 0, %struct.list_head zeroinitializer, ptr null, ptr @raid0_make_request, ptr @raid0_run, ptr null, ptr @raid0_free, ptr @raid0_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raid0_size, ptr null, ptr null, ptr null, ptr null, ptr @raid0_quiesce, ptr @raid0_takeover, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid0\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/md/raid0.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"md/raid0:%s: Invalid layout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
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
@raid0_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014md/raid0:%s: chunk size must be set.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"raid0_run\00", [22 x i8] zeroinitializer }, align 32
@raid0_run._entry_ptr = internal global ptr @raid0_run._entry, section ".printk_index", align 4
@raid0_run._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.1, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013md/raid0:%s: alloc acct bioset failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@raid0_run._entry_ptr.14 = internal global ptr @raid0_run._entry.12, section ".printk_index", align 4
@raid0_run.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.1, ptr @.str.15, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"md/raid0:%s: md_size is %llu sectors.\0A\00", [57 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.17, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create_strip_zones\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"md/raid0:%s: looking at %s\0A\00", [36 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.18, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"md/raid0:%s:   comparing %s(%llu) with %s(%llu)\0A\00", [47 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.19, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"md/raid0:%s:   END\0A\00", [44 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.20, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"md/raid0:%s:   EQUAL\0A\00", [42 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.21, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"md/raid0:%s:   NOT EQUAL\0A\00", [38 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.22, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"md/raid0:%s:   ==> UNIQUE\0A\00", [37 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.23, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"md/raid0:%s: %d zones\0A\00", [41 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.24, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"md/raid0:%s: FINAL %d zones\0A\00", [35 x i8] zeroinitializer }, align 32
@create_strip_zones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.1, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013md/raid0:%s: cannot assemble multi-zone RAID0 with default_layout setting\0A\00", [51 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr = internal global ptr @create_strip_zones._entry, section ".printk_index", align 4
@create_strip_zones._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.1, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013md/raid0: please set raid0.default_layout to 1 or 2\0A\00", [41 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.28 = internal global ptr @create_strip_zones._entry.26, section ".printk_index", align 4
@create_strip_zones._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.1, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014md/raid0:%s: chunk_size of %d not multiple of block size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.31 = internal global ptr @create_strip_zones._entry.29, section ".printk_index", align 4
@create_strip_zones._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.1, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014md/raid0:%s: remove inactive devices before converting to RAID0\0A\00", [61 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.34 = internal global ptr @create_strip_zones._entry.32, section ".printk_index", align 4
@create_strip_zones._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.1, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014md/raid0:%s: bad disk number %d - aborting!\0A\00", [49 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.37 = internal global ptr @create_strip_zones._entry.35, section ".printk_index", align 4
@create_strip_zones._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.16, ptr @.str.1, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014md/raid0:%s: multiple devices for %d - aborting!\0A\00", [44 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.40 = internal global ptr @create_strip_zones._entry.38, section ".printk_index", align 4
@create_strip_zones._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.16, ptr @.str.1, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014md/raid0:%s: too few disks (%d of %d) - aborting!\0A\00", [43 x i8] zeroinitializer }, align 32
@create_strip_zones._entry_ptr.43 = internal global ptr @create_strip_zones._entry.41, section ".printk_index", align 4
@create_strip_zones.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.44, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"md/raid0:%s: zone %d\0A\00", [42 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.45, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"md/raid0:%s: checking %s ... nope\0A\00", [61 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.46, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"md/raid0:%s: checking %s ... contained as device %d\0A\00", [43 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.47, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"md/raid0:%s:  (%llu) is smallest!.\0A\00", [60 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.48, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"md/raid0:%s: zone->nb_dev: %d, sectors: %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.49, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"md/raid0:%s: current zone start: %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@create_strip_zones.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.1, ptr @.str.50, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"md/raid0:%s: done.\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dump_zones.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.1, ptr @.str.52, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_zones\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"md: RAID0 configuration for %s - %d zone%s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@dump_zones.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.1, ptr @.str.57, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"md: zone%d=[%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@dump_zones.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.1, ptr @.str.58, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"      zone-offset=%10lluKB, device-offset=%10lluKB, size=%10lluKB\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %dk chunks\00", [20 x i8] zeroinitializer }, align 32
@raid0_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s does not support generic reshape\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.raid0_size = private unnamed_addr constant [11 x i8] c"raid0_size\00", align 1
@raid0_takeover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.1, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014md/raid0: %s: cannot takeover array with bitmap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raid0_takeover\00", [17 x i8] zeroinitializer }, align 32
@raid0_takeover._entry_ptr = internal global ptr @raid0_takeover._entry, section ".printk_index", align 4
@raid0_takeover._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.1, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014md/raid0:%s: Raid can only takeover Raid5 with layout: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@raid0_takeover._entry_ptr.65 = internal global ptr @raid0_takeover._entry.63, section ".printk_index", align 4
@raid0_takeover._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.1, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Takeover from raid%i to raid0 not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@raid0_takeover._entry_ptr.68 = internal global ptr @raid0_takeover._entry.66, section ".printk_index", align 4
@raid0_takeover_raid45._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.1, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014md/raid0:%s: raid5 must be degraded! Degraded disks: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"raid0_takeover_raid45\00", [42 x i8] zeroinitializer }, align 32
@raid0_takeover_raid45._entry_ptr = internal global ptr @raid0_takeover_raid45._entry, section ".printk_index", align 4
@raid0_takeover_raid45._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.1, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014md/raid0:%s: raid5 must have missing parity disk!\0A\00", [43 x i8] zeroinitializer }, align 32
@raid0_takeover_raid45._entry_ptr.73 = internal global ptr @raid0_takeover_raid45._entry.71, section ".printk_index", align 4
@raid0_takeover_raid10._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.1, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014md/raid0:%s:: Raid0 cannot takeover layout: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"raid0_takeover_raid10\00", [42 x i8] zeroinitializer }, align 32
@raid0_takeover_raid10._entry_ptr = internal global ptr @raid0_takeover_raid10._entry, section ".printk_index", align 4
@raid0_takeover_raid10._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.1, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014md/raid0:%s: Raid0 cannot takeover Raid10 with odd disk number.\0A\00", [61 x i8] zeroinitializer }, align 32
@raid0_takeover_raid10._entry_ptr.78 = internal global ptr @raid0_takeover_raid10._entry.76, section ".printk_index", align 4
@raid0_takeover_raid10._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.1, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014md/raid0:%s: All mirrors must be already degraded!\0A\00", [42 x i8] zeroinitializer }, align 32
@raid0_takeover_raid10._entry_ptr.81 = internal global ptr @raid0_takeover_raid10._entry.79, section ".printk_index", align 4
@raid0_takeover_raid1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.1, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013md/raid0:%s: (N - 1) mirrors drives must be already faulty!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raid0_takeover_raid1\00", [43 x i8] zeroinitializer }, align 32
@raid0_takeover_raid1._entry_ptr = internal global ptr @raid0_takeover_raid1._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"default_layout\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 22, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"raid0_personality\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 772, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 774, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 580, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 632, i32 54 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 771, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 456, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 381, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 388, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 428, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 81, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 95, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 103, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 112, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 117, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 121, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 124, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 128, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 140, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 142, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 151, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 197, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 202, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 207, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 218, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 235, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 243, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 248, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 256, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 264, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 271, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 276, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 43, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 51, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 51, i32 49 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 54, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 57, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 605, i32 18 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 349, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 741, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 752, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 762, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 615, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 624, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 657, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 663, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 668, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [22 x i8] c"../drivers/md/raid0.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 697, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_alias361, ptr @__UNIQUE_ID_alias362, ptr @__UNIQUE_ID_alias363, ptr @__UNIQUE_ID_default_layouttype335, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__exitcall_raid0_exit, ptr @__initcall__kmod_raid0__357_796_raid0_init6, ptr @__param_default_layout, ptr @create_strip_zones._entry, ptr @create_strip_zones._entry.26, ptr @create_strip_zones._entry.29, ptr @create_strip_zones._entry.32, ptr @create_strip_zones._entry.35, ptr @create_strip_zones._entry.38, ptr @create_strip_zones._entry.41, ptr @create_strip_zones._entry_ptr, ptr @create_strip_zones._entry_ptr.28, ptr @create_strip_zones._entry_ptr.31, ptr @create_strip_zones._entry_ptr.34, ptr @create_strip_zones._entry_ptr.37, ptr @create_strip_zones._entry_ptr.40, ptr @create_strip_zones._entry_ptr.43, ptr @is_mddev_broken._entry, ptr @is_mddev_broken._entry_ptr, ptr @raid0_run._entry, ptr @raid0_run._entry.12, ptr @raid0_run._entry_ptr, ptr @raid0_run._entry_ptr.14, ptr @raid0_takeover._entry, ptr @raid0_takeover._entry.63, ptr @raid0_takeover._entry.66, ptr @raid0_takeover._entry_ptr, ptr @raid0_takeover._entry_ptr.65, ptr @raid0_takeover._entry_ptr.68, ptr @raid0_takeover_raid1._entry, ptr @raid0_takeover_raid1._entry_ptr, ptr @raid0_takeover_raid10._entry, ptr @raid0_takeover_raid10._entry.76, ptr @raid0_takeover_raid10._entry.79, ptr @raid0_takeover_raid10._entry_ptr, ptr @raid0_takeover_raid10._entry_ptr.78, ptr @raid0_takeover_raid10._entry_ptr.81, ptr @raid0_takeover_raid45._entry, ptr @raid0_takeover_raid45._entry.71, ptr @raid0_takeover_raid45._entry_ptr, ptr @raid0_takeover_raid45._entry_ptr.73, ptr @default_layout, ptr @raid0_personality, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_layout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_personality to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_mddev_broken._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_run._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_strip_zones._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid45._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid45._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid10._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid10._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid10._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid0_takeover_raid1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raid0_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_md_personality(ptr noundef nonnull @raid0_personality) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid0_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_md_personality(ptr noundef nonnull @raid0_personality) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @raid0_make_request(ptr noundef %mddev, ptr noundef %bio) #1 align 64 {
entry:
  %bio.addr = alloca ptr, align 4
  %sector = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %bio.addr, align 4
  %1 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mddev, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sector) #12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %3 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_opf, align 8
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !202

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @md_flush_request(ptr noundef %mddev, ptr noundef %bio) #12
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bio.addr, align 4
  %bi_opf4 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf4, align 8
  %and5 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and5)
  %cmp = icmp eq i32 %and5, 3
  br i1 %cmp, label %if.then13, label %if.end14, !prof !203

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @raid0_handle_discard(ptr noundef %mddev, ptr noundef %7)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter, align 8
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %12 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunk_sectors, align 8
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #12, !range !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %.not426 = icmp eq i32 %14, 1
  br i1 %.not426, label %cond.true, label %if.else198, !prof !205

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %13, -1
  %15 = trunc i64 %11 to i32
  %extract.t = and i32 %sub, %15
  br label %cond.end221

if.else198:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp200 = icmp ult i64 %11, 4294967296
  br i1 %cmp200, label %if.then208, label %if.else214, !prof !202

if.then208:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #14
  %conv209 = trunc i64 %11 to i32
  %rem210 = urem i32 %conv209, %13
  br label %cond.end221

if.else214:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %11) #15, !srcloc !206
  %asmresult.i = extractvalue { i64, i64 } %16, 0
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %cond.end221

cond.end221:                                      ; preds = %if.else214, %if.then208, %cond.true
  %cond222.off0 = phi i32 [ %extract.t, %cond.true ], [ %rem210, %if.then208 ], [ %conv.i, %if.else214 ]
  %conv224 = sub i32 %13, %cond222.off0
  %17 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %11, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_size, align 8
  %shr226 = lshr i32 %19, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv224, i32 %shr226)
  %cmp227 = icmp ult i32 %conv224, %shr226
  br i1 %cmp227, label %if.then229, label %cond.end221.if.end231_crit_edge

cond.end221.if.end231_crit_edge:                  ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

if.then229:                                       ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #14
  %bio_set = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 90
  %call230 = tail call ptr @bio_split(ptr noundef %7, i32 noundef %conv224, i32 noundef 3072, ptr noundef %bio_set) #12
  %20 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bio.addr, align 4
  tail call void @bio_chain(ptr noundef %call230, ptr noundef %21) #12
  tail call void @submit_bio_noacct(ptr noundef %21) #12
  %22 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call230, ptr %bio.addr, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %cond.end221.if.end231_crit_edge
  %23 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio.addr, align 4
  %bi_pool = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %bi_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bi_pool, align 4
  %bio_set232 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 90
  %cmp233.not = icmp eq ptr %26, %bio_set232
  br i1 %cmp233.not, label %if.end231.if.end236_crit_edge, label %if.then235

if.end231.if.end236_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  call void @md_account_bio(ptr noundef %mddev, ptr noundef nonnull %bio.addr) #12
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.end231.if.end236_crit_edge
  %27 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mddev, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %nr_strip_zones.i = getelementptr inbounds %struct.r0conf, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %nr_strip_zones.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_strip_zones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23.i = icmp sgt i32 %32, 0
  br i1 %cmp23.i, label %if.end236.for.body.i_crit_edge, label %if.end236.do.body.i_crit_edge

if.end236.do.body.i_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.end236.for.body.i_crit_edge:                   ; preds = %if.end236
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end236.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end236.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.strip_zone, ptr %30, i32 %i.024.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %34)
  %cmp1.i399 = icmp ult i64 %11, %34
  br i1 %cmp1.i399, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i)
  %tobool.not.i = icmp eq i32 %i.024.i, 0
  br i1 %tobool.not.i, label %if.then.i.find_zone.exit_crit_edge, label %if.then2.i

if.then.i.find_zone.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_zone.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i400 = add nsw i32 %i.024.i, -1
  %arrayidx3.i = getelementptr %struct.strip_zone, ptr %30, i32 %sub.i400
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx3.i, align 8
  %sub5.i = sub i64 %11, %36
  %37 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sub5.i, ptr %sector, align 8
  br label %find_zone.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end236.do.body.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #12, !srcloc !207
  unreachable

find_zone.exit:                                   ; preds = %if.then2.i, %if.then.i.find_zone.exit_crit_edge
  %layout = getelementptr inbounds %struct.r0conf, ptr %2, i32 0, i32 3
  %38 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %layout, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %do.end [
    i32 1, label %find_zone.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb240
  ]

find_zone.exit.sw.epilog_crit_edge:               ; preds = %find_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb240:                                         ; preds = %find_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sector, align 8
  br label %sw.epilog

do.end:                                           ; preds = %find_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %43 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i401 = icmp eq ptr %44, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i401, ptr @.str.3, ptr %disk_name.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %spec.select.i) #12
  %45 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bio.addr, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %46) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb240, %find_zone.exit.sw.epilog_crit_edge
  %.sink = phi i64 [ %42, %sw.bb240 ], [ %11, %find_zone.exit.sw.epilog_crit_edge ]
  %call241 = call fastcc ptr @map_sector(ptr noundef %mddev, ptr noundef %arrayidx.i, i64 noundef %.sink, ptr noundef nonnull %sector)
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %call241, i32 0, i32 5
  %48 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev.i, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %part0.i.i, align 4
  %bd_inode.i.i = getelementptr inbounds %struct.block_device, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %bd_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bd_inode.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 28, i32 1
  %56 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i.not.i, label %if.then.i403, label %if.end273

if.then.i403:                                     ; preds = %sw.epilog
  %mddev.i = getelementptr inbounds %struct.md_rdev, ptr %call241, i32 0, i32 2
  %58 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mddev.i, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %59, i32 0, i32 5
  %call1.i = call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i402 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i402, label %do.end.i, label %if.then.i403.if.then272_crit_edge

if.then.i403.if.then272_crit_edge:                ; preds = %if.then.i403
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then272

do.end.i:                                         ; preds = %if.then.i403
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mddev.i, align 8
  %gendisk.i.i = getelementptr inbounds %struct.mddev, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %gendisk.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gendisk.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %63, null
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.3, ptr %disk_name.i.i
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %spec.select.i.i, ptr noundef nonnull @.str) #16
  br label %if.then272

if.then272:                                       ; preds = %do.end.i, %if.then.i403.if.then272_crit_edge
  %64 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bio.addr, align 4
  %bi_status.i404 = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %bi_status.i404 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %bi_status.i404, align 2
  call void @bio_endio(ptr noundef %65) #12
  br label %cleanup

if.end273:                                        ; preds = %sw.epilog
  %67 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bio.addr, align 4
  %69 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %72, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i405 = icmp eq ptr %74, %70
  br i1 %cmp.not.i405, label %if.end273.bio_set_dev.exit_crit_edge, label %if.then.i406

if.end273.bio_set_dev.exit_crit_edge:             ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i406:                                     ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %72, -2177
  %75 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i406, %if.end273.bio_set_dev.exit_crit_edge
  %76 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %68) #12
  %77 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %sector, align 8
  %dev_start = getelementptr %struct.strip_zone, ptr %30, i32 %i.024.i, i32 1
  %79 = ptrtoint ptr %dev_start to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %dev_start, align 8
  %add274 = add i64 %80, %78
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %call241, i32 0, i32 10
  %81 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %data_offset, align 8
  %add275 = add i64 %add274, %82
  %83 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bio.addr, align 4
  %bi_iter276 = getelementptr inbounds %struct.bio, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %bi_iter276 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %add275, ptr %bi_iter276, align 8
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %86 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gendisk, align 8
  %tobool278.not = icmp eq ptr %87, null
  br i1 %tobool278.not, label %bio_set_dev.exit.if.end282_crit_edge, label %if.then279

bio_set_dev.exit.if.end282_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.then279:                                       ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i = shl i32 %89, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %91
  call fastcc void @trace_block_bio_remap(ptr noundef %84, i32 noundef %or.i, i64 noundef %11)
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %bio_set_dev.exit.if.end282_crit_edge
  %92 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bio.addr, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %95, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end282.mddev_check_writesame.exit_crit_edge

if.end282.mddev_check_writesame.exit_crit_edge:   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  br label %mddev_check_writesame.exit

land.lhs.true.i:                                  ; preds = %if.end282
  %bi_bdev.i407 = getelementptr inbounds %struct.bio, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %bi_bdev.i407 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bi_bdev.i407, align 4
  %bd_disk.i408 = getelementptr inbounds %struct.block_device, ptr %97, i32 0, i32 17
  %98 = ptrtoint ptr %bd_disk.i408 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bd_disk.i408, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %queue.i, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %101, i32 0, i32 37, i32 15
  %102 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_write_same_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i409 = icmp eq i32 %103, 0
  br i1 %tobool.not.i409, label %if.then.i410, label %land.lhs.true.i.mddev_check_writesame.exit_crit_edge

land.lhs.true.i.mddev_check_writesame.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mddev_check_writesame.exit

if.then.i410:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %queue1.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %104 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %queue1.i, align 8
  %max_write_same_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %105, i32 0, i32 37, i32 15
  %106 = ptrtoint ptr %max_write_same_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %max_write_same_sectors3.i, align 4
  br label %mddev_check_writesame.exit

mddev_check_writesame.exit:                       ; preds = %if.then.i410, %land.lhs.true.i.mddev_check_writesame.exit_crit_edge, %if.end282.mddev_check_writesame.exit_crit_edge
  %107 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bi_opf.i, align 8
  %and.i412 = and i32 %108, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i412)
  %cmp.i413 = icmp eq i32 %and.i412, 9
  br i1 %cmp.i413, label %land.lhs.true.i418, label %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge

mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge: ; preds = %mddev_check_writesame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mddev_check_write_zeroes.exit

land.lhs.true.i418:                               ; preds = %mddev_check_writesame.exit
  %bi_bdev.i414 = getelementptr inbounds %struct.bio, ptr %93, i32 0, i32 1
  %109 = ptrtoint ptr %bi_bdev.i414 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bi_bdev.i414, align 4
  %bd_disk.i415 = getelementptr inbounds %struct.block_device, ptr %110, i32 0, i32 17
  %111 = ptrtoint ptr %bd_disk.i415 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bd_disk.i415, align 8
  %queue.i416 = getelementptr inbounds %struct.gendisk, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %queue.i416 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %queue.i416, align 4
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %114, i32 0, i32 37, i32 16
  %115 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i417 = icmp eq i32 %116, 0
  br i1 %tobool.not.i417, label %if.then.i420, label %land.lhs.true.i418.mddev_check_write_zeroes.exit_crit_edge

land.lhs.true.i418.mddev_check_write_zeroes.exit_crit_edge: ; preds = %land.lhs.true.i418
  call void @__sanitizer_cov_trace_pc() #14
  br label %mddev_check_write_zeroes.exit

if.then.i420:                                     ; preds = %land.lhs.true.i418
  call void @__sanitizer_cov_trace_pc() #14
  %queue1.i419 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %117 = ptrtoint ptr %queue1.i419 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %queue1.i419, align 8
  %max_write_zeroes_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %118, i32 0, i32 37, i32 16
  %119 = ptrtoint ptr %max_write_zeroes_sectors3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %max_write_zeroes_sectors3.i, align 4
  br label %mddev_check_write_zeroes.exit

mddev_check_write_zeroes.exit:                    ; preds = %if.then.i420, %land.lhs.true.i418.mddev_check_write_zeroes.exit_crit_edge, %mddev_check_writesame.exit.mddev_check_write_zeroes.exit_crit_edge
  call void @submit_bio_noacct(ptr noundef %93) #12
  br label %cleanup

cleanup:                                          ; preds = %mddev_check_write_zeroes.exit, %if.then272, %do.end, %if.then13, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sector) #12
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid0_run(ptr noundef %mddev) #1 align 64 {
entry:
  %conf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf) #12
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conf, align 4, !annotation !208
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %1 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %3 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %disk_name.i
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %spec.select.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @md_check_no_bitmap(ptr noundef %mddev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @acct_bioset_init(ptr noundef %mddev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i119 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %5 = ptrtoint ptr %gendisk.i119 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gendisk.i119, align 8
  %tobool.not.i120 = icmp eq ptr %6, null
  %disk_name.i121 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %spec.select.i122 = select i1 %tobool.not.i120, ptr @.str.3, ptr %disk_name.i121
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %spec.select.i122) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mddev, align 8
  %cmp15 = icmp eq ptr %8, null
  br i1 %cmp15, label %if.then16, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc i32 @create_strip_zones(ptr noundef %mddev, ptr noundef nonnull %conf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.exit_acct_set_crit_edge, label %if.end20

if.then16.exit_acct_set_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_acct_set

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conf, align 4
  %11 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mddev, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end14.if.end22_crit_edge
  %12 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mddev, align 8
  %14 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %conf, align 4
  %queue = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 84
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 8
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %if.end22.if.end58_crit_edge, label %if.then25

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then25:                                        ; preds = %if.end22
  %17 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chunk_sectors, align 8
  tail call void @blk_queue_max_hw_sectors(ptr noundef nonnull %16, i32 noundef %18) #12
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 8
  %21 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_sectors, align 8
  tail call void @blk_queue_max_write_same_sectors(ptr noundef %20, i32 noundef %22) #12
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 8
  %25 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chunk_sectors, align 8
  tail call void @blk_queue_max_write_zeroes_sectors(ptr noundef %24, i32 noundef %26) #12
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue, align 8
  tail call void @blk_queue_max_discard_sectors(ptr noundef %28, i32 noundef -1) #12
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 8
  %31 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chunk_sectors, align 8
  %shl = shl i32 %32, 9
  tail call void @blk_queue_io_min(ptr noundef %30, i32 noundef %shl) #12
  %33 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue, align 8
  %35 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chunk_sectors, align 8
  %shl37 = shl i32 %36, 9
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %37 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %raid_disks, align 8
  %mul = mul i32 %shl37, %38
  tail call void @blk_queue_io_opt(ptr noundef %34, i32 noundef %mul) #12
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %39 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %39)
  %rdev.0128 = load ptr, ptr %disks, align 8
  %cmp40.not129 = icmp eq ptr %rdev.0128, %disks
  br i1 %cmp40.not129, label %if.then25.if.then54_crit_edge, label %for.body.lr.ph

if.then25.if.then54_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

for.body.lr.ph:                                   ; preds = %if.then25
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %rdev.0131 = phi ptr [ %rdev.0128, %for.body.lr.ph ], [ %rdev.0, %for.body.for.body_crit_edge ]
  %discard_supported.0.off0130 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %40 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gendisk, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev.0131, i32 0, i32 5
  %42 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.0131, i32 0, i32 10
  %44 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data_offset, align 8
  %shl41 = shl i64 %45, 9
  tail call void @disk_stack_limits(ptr noundef %41, ptr noundef %43, i64 noundef %shl41) #12
  %46 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %queue_flags, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool45.not = icmp ne i32 %52, 0
  %spec.select = select i1 %tobool45.not, i1 true, i1 %discard_supported.0.off0130
  %53 = ptrtoint ptr %rdev.0131 to i32
  call void @__asan_load4_noabort(i32 %53)
  %rdev.0 = load ptr, ptr %rdev.0131, align 8
  %cmp40.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp40.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %spec.select, label %if.else, label %for.end.if.then54_crit_edge

for.end.if.then54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.then54:                                        ; preds = %for.end.if.then54_crit_edge, %if.then25.if.then54_crit_edge
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queue, align 8
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %55) #12
  br label %if.end58

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue, align 8
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %57) #12
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54, %if.end22.if.end58_crit_edge
  %disks.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %58 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %rdev.055.i = load ptr, ptr %disks.i, align 8
  %cmp.not56.i = icmp eq ptr %rdev.055.i, %disks.i
  br i1 %cmp.not56.i, label %if.end58.raid0_size.exit_crit_edge, label %for.body.lr.ph.i

if.end58.raid0_size.exit_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %raid0_size.exit

for.body.lr.ph.i:                                 ; preds = %if.end58
  %59 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chunk_sectors, align 8
  %61 = sub i32 0, %60
  %neg.i = sext i32 %61 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rdev.058.i = phi ptr [ %rdev.055.i, %for.body.lr.ph.i ], [ %rdev.0.i, %for.body.i.for.body.i_crit_edge ]
  %array_sectors.057.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %sectors41.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.058.i, i32 0, i32 1
  %62 = ptrtoint ptr %sectors41.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %sectors41.i, align 8
  %and.i = and i64 %63, %neg.i
  %add.i = add i64 %and.i, %array_sectors.057.i
  %64 = ptrtoint ptr %rdev.058.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %rdev.0.i = load ptr, ptr %rdev.058.i, align 8
  %cmp.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i, label %for.body.i.raid0_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.raid0_size.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %raid0_size.exit

raid0_size.exit:                                  ; preds = %for.body.i.raid0_size.exit_crit_edge, %if.end58.raid0_size.exit_crit_edge
  %array_sectors.0.lcssa.i = phi i64 [ 0, %if.end58.raid0_size.exit_crit_edge ], [ %add.i, %for.body.i.raid0_size.exit_crit_edge ]
  tail call void @md_set_array_sectors(ptr noundef %mddev, i64 noundef %array_sectors.0.lcssa.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raid0_run.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@raid0_run, %if.then67)) #12
          to label %do.end71 [label %if.then67], !srcloc !209

if.then67:                                        ; preds = %raid0_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i123 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %65 = ptrtoint ptr %gendisk.i123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gendisk.i123, align 8
  %tobool.not.i124 = icmp eq ptr %66, null
  %disk_name.i125 = getelementptr inbounds %struct.gendisk, ptr %66, i32 0, i32 3
  %spec.select.i126 = select i1 %tobool.not.i124, ptr @.str.3, ptr %disk_name.i125
  %array_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 29
  %67 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %array_sectors, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @raid0_run.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.15, ptr noundef %spec.select.i126, i64 noundef %68) #12
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %raid0_size.exit
  tail call fastcc void @dump_zones(ptr noundef %mddev)
  %call72 = tail call i32 @md_integrity_register(ptr noundef %mddev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end71.cleanup_crit_edge, label %free

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

free:                                             ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %70) #12
  %devlist.i = getelementptr inbounds %struct.r0conf, ptr %13, i32 0, i32 1
  %71 = ptrtoint ptr %devlist.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %devlist.i, align 4
  tail call void @kfree(ptr noundef %72) #12
  tail call void @kfree(ptr noundef %13) #12
  %73 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %mddev, align 8
  br label %exit_acct_set

exit_acct_set:                                    ; preds = %free, %if.then16.exit_acct_set_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then16.exit_acct_set_crit_edge ], [ %call72, %free ]
  tail call void @acct_bioset_exit(ptr noundef %mddev) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_acct_set, %do.end71.cleanup_crit_edge, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end10 ], [ %ret.0, %exit_acct_set ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid0_free(ptr noundef %mddev, ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #12
  %devlist.i = getelementptr inbounds %struct.r0conf, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %devlist.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlist.i, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %priv) #12
  %4 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mddev, align 8
  tail call void @acct_bioset_exit(ptr noundef %mddev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid0_status(ptr noundef %seq, ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %0 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_sectors, align 8
  %div = sdiv i32 %1, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, i32 noundef %div) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @raid0_size(ptr noundef readonly %mddev, i64 noundef %sectors, i32 noundef %raid_disks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sectors)
  %tobool.not = icmp ne i64 %sectors, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raid_disks)
  %tobool1 = icmp ne i32 %raid_disks, 0
  %spec.select = or i1 %tobool.not, %tobool1
  br i1 %spec.select, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @raid0_size.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !202

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @raid0_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 350, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.raid0_size) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %0 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %rdev.055 = load ptr, ptr %disks, align 8
  %cmp.not56 = icmp eq ptr %rdev.055, %disks
  br i1 %cmp.not56, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %1 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chunk_sectors, align 8
  %3 = sub i32 0, %2
  %neg = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %rdev.058 = phi ptr [ %rdev.055, %for.body.lr.ph ], [ %rdev.0, %for.body.for.body_crit_edge ]
  %array_sectors.057 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %sectors41 = getelementptr inbounds %struct.md_rdev, ptr %rdev.058, i32 0, i32 1
  %4 = ptrtoint ptr %sectors41 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sectors41, align 8
  %and = and i64 %5, %neg
  %add = add i64 %and, %array_sectors.057
  %6 = ptrtoint ptr %rdev.058 to i32
  call void @__asan_load4_noabort(i32 %6)
  %rdev.0 = load ptr, ptr %rdev.058, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  %array_sectors.0.lcssa = phi i64 [ 0, %if.end29.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i64 %array_sectors.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @raid0_quiesce(ptr nocapture noundef %mddev, i32 noundef %quiesce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @raid0_takeover(ptr noundef %mddev) #1 align 64 {
entry:
  %priv_conf.i53 = alloca ptr, align 4
  %priv_conf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 85
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %2 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %disk_name.i
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %spec.select.i) #16
  br label %return

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 23
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %if.end.if.end18_crit_edge [
    i32 4, label %if.then3
    i32 5, label %if.then8
  ]

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc ptr @raid0_takeover_raid45(ptr noundef %mddev)
  br label %return

if.then8:                                         ; preds = %if.end
  %layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 24
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp9 = icmp eq i32 %8, 5
  br i1 %cmp9, label %if.then10, label %do.end14

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc ptr @raid0_takeover_raid45(ptr noundef %mddev)
  br label %return

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i48 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %9 = ptrtoint ptr %gendisk.i48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gendisk.i48, align 8
  %tobool.not.i49 = icmp eq ptr %10, null
  %disk_name.i50 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 3
  %spec.select.i51 = select i1 %tobool.not.i49, ptr @.str.3, ptr %disk_name.i50
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %spec.select.i51, i32 noundef 5) #16
  %11 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %level, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end.if.end18_crit_edge
  %12 = phi i32 [ %5, %if.end.if.end18_crit_edge ], [ %.pr, %do.end14 ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %12, label %do.end30 [
    i32 10, label %if.then21
    i32 1, label %if.then26
  ]

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priv_conf.i) #12
  %14 = ptrtoint ptr %priv_conf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %priv_conf.i, align 4, !annotation !208
  %layout.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 24
  %15 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 258
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %17 = ptrtoint ptr %gendisk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gendisk.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  %disk_name.i.i = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.3, ptr %disk_name.i.i
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %spec.select.i.i, i32 noundef %16) #16
  br label %raid0_takeover_raid10.exit

if.end.i:                                         ; preds = %if.then21
  %raid_disks.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %19 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %raid_disks.i, align 8
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i52 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i52, label %if.end12.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i48.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %21 = ptrtoint ptr %gendisk.i48.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gendisk.i48.i, align 8
  %tobool.not.i49.i = icmp eq ptr %22, null
  %disk_name.i50.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 3
  %spec.select.i51.i = select i1 %tobool.not.i49.i, ptr @.str.3, ptr %disk_name.i50.i
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %spec.select.i51.i) #16
  br label %raid0_takeover_raid10.exit

if.end12.i:                                       ; preds = %if.end.i
  %degraded.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %23 = ptrtoint ptr %degraded.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %degraded.i, align 8
  %shr.i = ashr i32 %20, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %shr.i)
  %cmp14.not.i = icmp eq i32 %24, %shr.i
  br i1 %cmp14.not.i, label %if.end23.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i52.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %25 = ptrtoint ptr %gendisk.i52.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gendisk.i52.i, align 8
  %tobool.not.i53.i = icmp eq ptr %26, null
  %disk_name.i54.i = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 3
  %spec.select.i55.i = select i1 %tobool.not.i53.i, ptr @.str.3, ptr %disk_name.i54.i
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %spec.select.i55.i) #16
  br label %raid0_takeover_raid10.exit

if.end23.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %new_level.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 36
  %27 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %new_level.i, align 4
  %new_layout.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 37
  %28 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %new_layout.i, align 8
  %chunk_sectors.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %29 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunk_sectors.i, align 8
  %new_chunk_sectors.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 38
  %31 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %new_chunk_sectors.i, align 4
  %sub.i = sub i32 0, %20
  %div.i = sdiv i32 %sub.i, 2
  %delta_disks.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 35
  %32 = ptrtoint ptr %delta_disks.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div.i, ptr %delta_disks.i, align 8
  %add.i = add i32 %div.i, %20
  %33 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %raid_disks.i, align 8
  %34 = ptrtoint ptr %degraded.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %degraded.i, align 8
  %recovery_cp.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %35 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %recovery_cp.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %37, -237
  store i32 %and.i.i, ptr %flags.i.i, align 8
  %call28.i = call fastcc i32 @create_strip_zones(ptr noundef %mddev, ptr noundef nonnull %priv_conf.i) #12
  %38 = ptrtoint ptr %priv_conf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv_conf.i, align 4
  br label %raid0_takeover_raid10.exit

raid0_takeover_raid10.exit:                       ; preds = %if.end23.i, %do.end18.i, %do.end7.i, %do.end.i
  %retval.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -22 to ptr), %do.end7.i ], [ inttoptr (i32 -22 to ptr), %do.end18.i ], [ %39, %if.end23.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priv_conf.i) #12
  br label %return

if.then26:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priv_conf.i53) #12
  %40 = ptrtoint ptr %priv_conf.i53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %priv_conf.i53, align 4, !annotation !208
  %raid_disks.i54 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %41 = ptrtoint ptr %raid_disks.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %raid_disks.i54, align 8
  %sub.i55 = add i32 %42, -1
  %degraded.i56 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %43 = ptrtoint ptr %degraded.i56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %degraded.i56, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i55, i32 %44)
  %cmp.not.i57 = icmp eq i32 %sub.i55, %44
  br i1 %cmp.not.i57, label %while.cond.preheader.i, label %do.end.i63

while.cond.preheader.i:                           ; preds = %if.then26
  %array_sectors.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 29
  %45 = ptrtoint ptr %array_sectors.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %array_sectors.i, align 8
  %and.i58 = and i64 %46, 127
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i58)
  %tobool4.not.i = icmp eq i64 %and.i58, 0
  br i1 %tobool4.not.i, label %while.cond.preheader.i.if.end9.i_crit_edge, label %while.body.i

while.cond.preheader.i.if.end9.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.end.i63:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i.i59 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %47 = ptrtoint ptr %gendisk.i.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gendisk.i.i59, align 8
  %tobool.not.i.i60 = icmp eq ptr %48, null
  %disk_name.i.i61 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 3
  %spec.select.i.i62 = select i1 %tobool.not.i.i60, ptr @.str.3, ptr %disk_name.i.i61
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %spec.select.i.i62) #16
  br label %raid0_takeover_raid1.exit

while.body.i:                                     ; preds = %while.cond.preheader.i
  %and.1.i = and i64 %46, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i)
  %tobool4.not.1.i = icmp eq i64 %and.1.i, 0
  br i1 %tobool4.not.1.i, label %while.body.i.if.end9.i_crit_edge, label %while.body.1.i

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

while.body.1.i:                                   ; preds = %while.body.i
  %and.2.i = and i64 %46, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2.i)
  %tobool4.not.2.i = icmp eq i64 %and.2.i, 0
  br i1 %tobool4.not.2.i, label %while.body.1.i.if.end9.i_crit_edge, label %while.body.2.i

while.body.1.i.if.end9.i_crit_edge:               ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

while.body.2.i:                                   ; preds = %while.body.1.i
  %and.3.i = and i64 %46, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3.i)
  %tobool4.not.3.i = icmp eq i64 %and.3.i, 0
  br i1 %tobool4.not.3.i, label %while.body.2.i.if.end9.i_crit_edge, label %while.body.3.i

while.body.2.i.if.end9.i_crit_edge:               ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

while.body.3.i:                                   ; preds = %while.body.2.i
  %and.4.i = and i64 %46, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4.i)
  %tobool4.not.4.i = icmp eq i64 %and.4.i, 0
  br i1 %tobool4.not.4.i, label %while.body.3.i.if.end9.i_crit_edge, label %while.body.3.i.raid0_takeover_raid1.exit_crit_edge

while.body.3.i.raid0_takeover_raid1.exit_crit_edge: ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %raid0_takeover_raid1.exit

while.body.3.i.if.end9.i_crit_edge:               ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %while.body.3.i.if.end9.i_crit_edge, %while.body.2.i.if.end9.i_crit_edge, %while.body.1.i.if.end9.i_crit_edge, %while.body.i.if.end9.i_crit_edge, %while.cond.preheader.i.if.end9.i_crit_edge
  %chunksect.035.lcssa.ph.i = phi i32 [ 128, %while.cond.preheader.i.if.end9.i_crit_edge ], [ 64, %while.body.i.if.end9.i_crit_edge ], [ 32, %while.body.1.i.if.end9.i_crit_edge ], [ 16, %while.body.2.i.if.end9.i_crit_edge ], [ 8, %while.body.3.i.if.end9.i_crit_edge ]
  %new_level.i64 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 36
  %49 = ptrtoint ptr %new_level.i64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %new_level.i64, align 4
  %new_layout.i65 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 37
  %50 = ptrtoint ptr %new_layout.i65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %new_layout.i65, align 8
  %new_chunk_sectors.i66 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 38
  %51 = ptrtoint ptr %new_chunk_sectors.i66 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %chunksect.035.lcssa.ph.i, ptr %new_chunk_sectors.i66, align 4
  %chunk_sectors.i67 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %52 = ptrtoint ptr %chunk_sectors.i67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %chunksect.035.lcssa.ph.i, ptr %chunk_sectors.i67, align 8
  %sub11.i = sub i32 1, %42
  %delta_disks.i68 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 35
  %53 = ptrtoint ptr %delta_disks.i68 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub11.i, ptr %delta_disks.i68, align 8
  %54 = ptrtoint ptr %raid_disks.i54 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %raid_disks.i54, align 8
  %recovery_cp.i69 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %55 = ptrtoint ptr %recovery_cp.i69 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %recovery_cp.i69, align 8
  %flags.i.i70 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %56 = ptrtoint ptr %flags.i.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i.i70, align 8
  %and.i.i71 = and i32 %57, -237
  store i32 %and.i.i71, ptr %flags.i.i70, align 8
  %call13.i = call fastcc i32 @create_strip_zones(ptr noundef %mddev, ptr noundef nonnull %priv_conf.i53) #12
  %58 = ptrtoint ptr %priv_conf.i53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv_conf.i53, align 4
  br label %raid0_takeover_raid1.exit

raid0_takeover_raid1.exit:                        ; preds = %if.end9.i, %while.body.3.i.raid0_takeover_raid1.exit_crit_edge, %do.end.i63
  %retval.0.i72 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i63 ], [ %59, %if.end9.i ], [ inttoptr (i32 -22 to ptr), %while.body.3.i.raid0_takeover_raid1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priv_conf.i53) #12
  br label %return

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %12) #16
  br label %return

return:                                           ; preds = %do.end30, %raid0_takeover_raid1.exit, %raid0_takeover_raid10.exit, %if.then10, %if.then3, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %do.end ], [ %call4, %if.then3 ], [ %call11, %if.then10 ], [ %retval.0.i, %raid0_takeover_raid10.exit ], [ %retval.0.i72, %raid0_takeover_raid1.exit ], [ inttoptr (i32 -22 to ptr), %do.end30 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @md_flush_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @raid0_handle_discard(ptr noundef %mddev, ptr noundef %bio) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %nr_strip_zones.i = getelementptr inbounds %struct.r0conf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nr_strip_zones.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_strip_zones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.i = icmp sgt i32 %7, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.strip_zone, ptr %5, i32 %i.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %3)
  %cmp1.i = icmp ugt i64 %9, %3
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i)
  %tobool.not.i = icmp eq i32 %i.024.i, 0
  br i1 %tobool.not.i, label %if.then.i.find_zone.exit_crit_edge, label %if.then2.i

if.then.i.find_zone.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_zone.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nsw i32 %i.024.i, -1
  %arrayidx3.i = getelementptr %struct.strip_zone, ptr %5, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx3.i, align 8
  %sub5.i = sub i64 %3, %11
  br label %find_zone.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/raid0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #12, !srcloc !207
  unreachable

find_zone.exit:                                   ; preds = %if.then2.i, %if.then.i.find_zone.exit_crit_edge
  %start.0 = phi i64 [ %3, %if.then.i.find_zone.exit_crit_edge ], [ %sub5.i, %if.then2.i ]
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %13, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %3, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp = icmp ugt i64 %add, %9
  br i1 %cmp, label %if.then, label %find_zone.exit.if.end_crit_edge

find_zone.exit.if.end_crit_edge:                  ; preds = %find_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %find_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i64 %9, %3
  %conv8 = trunc i64 %sub to i32
  %bio_set = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 90
  %call9 = tail call ptr @bio_split(ptr noundef %bio, i32 noundef %conv8, i32 noundef 3072, ptr noundef %bio_set) #12
  tail call void @bio_chain(ptr noundef %call9, ptr noundef %bio) #12
  tail call void @submit_bio_noacct(ptr noundef %bio) #12
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %find_zone.exit.if.end_crit_edge
  %end.0 = phi i64 [ %15, %if.then ], [ %add, %find_zone.exit.if.end_crit_edge ]
  %bio.addr.0 = phi ptr [ %call9, %if.then ], [ %bio, %find_zone.exit.if.end_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %cmp18.not = icmp eq ptr %arrayidx.i, %17
  br i1 %cmp18.not, label %if.end.if.end23_crit_edge, label %if.then20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.strip_zone, ptr %arrayidx.i, i32 -1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %sub22 = sub i64 %end.0, %19
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge
  %end.1 = phi i64 [ %sub22, %if.then20 ], [ %end.0, %if.end.if.end23_crit_edge ]
  %nb_dev = getelementptr %struct.strip_zone, ptr %5, i32 %i.024.i, i32 2
  %20 = ptrtoint ptr %nb_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_dev, align 8
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %22 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chunk_sectors, align 8
  %mul = mul i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %start.0)
  %cmp198 = icmp ult i64 %start.0, 4294967296
  br i1 %cmp198, label %if.then202, label %if.else208, !prof !202

if.then202:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %conv203 = trunc i64 %start.0 to i32
  %div206 = udiv i32 %conv203, %mul
  %conv207 = zext i32 %div206 to i64
  br label %if.else413

if.else208:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %start.0) #15, !srcloc !206
  %asmresult1.i = extractvalue { i64, i64 } %24, 1
  br label %if.else413

if.else413:                                       ; preds = %if.else208, %if.then202
  %first_stripe_index.0 = phi i64 [ %conv207, %if.then202 ], [ %asmresult1.i, %if.else208 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %end.1)
  %cmp415 = icmp ult i64 %end.1, 4294967296
  br i1 %cmp415, label %if.then423, label %if.else429, !prof !202

if.then423:                                       ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #14
  %conv424 = trunc i64 %end.1 to i32
  %div427 = udiv i32 %conv424, %mul
  %conv428 = zext i32 %div427 to i64
  br label %if.end433

if.else429:                                       ; preds = %if.else413
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %end.1) #15, !srcloc !206
  %asmresult1.i768 = extractvalue { i64, i64 } %25, 1
  br label %if.end433

if.end433:                                        ; preds = %if.else429, %if.then423
  %last_stripe_index.0 = phi i64 [ %conv428, %if.then423 ], [ %asmresult1.i768, %if.else429 ]
  %conv435 = zext i32 %mul to i64
  %mul436 = mul i64 %first_stripe_index.0, %conv435
  %sub437 = sub i64 %start.0, %mul436
  %conv438 = trunc i64 %sub437 to i32
  %conv438.frozen = freeze i32 %conv438
  %.frozen = freeze i32 %23
  %div440 = sdiv i32 %conv438.frozen, %.frozen
  %26 = mul i32 %div440, %.frozen
  %rem446.decomposed = sub i32 %conv438.frozen, %26
  %conv447 = sext i32 %rem446.decomposed to i64
  %conv449 = sext i32 %23 to i64
  %mul450 = mul i64 %first_stripe_index.0, %conv449
  %add451 = add i64 %mul450, %conv447
  %mul453 = mul i64 %last_stripe_index.0, %conv435
  %sub454 = sub i64 %end.1, %mul453
  %conv455 = trunc i64 %sub454 to i32
  %conv455.frozen = freeze i32 %conv455
  %.frozen863 = freeze i32 %23
  %div457 = sdiv i32 %conv455.frozen, %.frozen863
  %27 = mul i32 %div457, %.frozen863
  %rem463.decomposed = sub i32 %conv455.frozen, %27
  %conv464 = sext i32 %rem463.decomposed to i64
  %mul467 = mul i64 %last_stripe_index.0, %conv449
  %add468 = add i64 %mul467, %conv464
  %28 = ptrtoint ptr %nb_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp470842.not = icmp eq i32 %29, 0
  br i1 %cmp470842.not, label %if.end433.for.end_crit_edge, label %for.body.lr.ph

if.end433.for.end_crit_edge:                      ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end433
  %add475 = add i64 %first_stripe_index.0, 1
  %add492 = add i64 %last_stripe_index.0, 1
  %devlist = getelementptr inbounds %struct.r0conf, ptr %1, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx.i to i32
  %dev_start517 = getelementptr %struct.strip_zone, ptr %5, i32 %i.024.i, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %disk.0843 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %disk.0843, i32 %div440)
  %cmp472 = icmp ult i32 %disk.0843, %div440
  br i1 %cmp472, label %for.body.if.end488.sink.split_crit_edge, label %if.else479

for.body.if.end488.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488.sink.split

if.else479:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %disk.0843, i32 %div440)
  %cmp480 = icmp ugt i32 %disk.0843, %div440
  br i1 %cmp480, label %if.else479.if.end488.sink.split_crit_edge, label %if.else479.if.end488_crit_edge

if.else479.if.end488_crit_edge:                   ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488

if.else479.if.end488.sink.split_crit_edge:        ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488.sink.split

if.end488.sink.split:                             ; preds = %if.else479.if.end488.sink.split_crit_edge, %for.body.if.end488.sink.split_crit_edge
  %first_stripe_index.0804.sink = phi i64 [ %add475, %for.body.if.end488.sink.split_crit_edge ], [ %first_stripe_index.0, %if.else479.if.end488.sink.split_crit_edge ]
  %30 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chunk_sectors, align 8
  %conv484 = sext i32 %31 to i64
  %mul485 = mul i64 %first_stripe_index.0804.sink, %conv484
  br label %if.end488

if.end488:                                        ; preds = %if.end488.sink.split, %if.else479.if.end488_crit_edge
  %dev_start.0 = phi i64 [ %add451, %if.else479.if.end488_crit_edge ], [ %mul485, %if.end488.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %disk.0843, i32 %div457)
  %cmp489 = icmp ult i32 %disk.0843, %div457
  br i1 %cmp489, label %if.end488.if.end505.sink.split_crit_edge, label %if.else496

if.end488.if.end505.sink.split_crit_edge:         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end505.sink.split

if.else496:                                       ; preds = %if.end488
  call void @__sanitizer_cov_trace_cmp4(i32 %disk.0843, i32 %div457)
  %cmp497 = icmp ugt i32 %disk.0843, %div457
  br i1 %cmp497, label %if.else496.if.end505.sink.split_crit_edge, label %if.else496.if.end505_crit_edge

if.else496.if.end505_crit_edge:                   ; preds = %if.else496
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end505

if.else496.if.end505.sink.split_crit_edge:        ; preds = %if.else496
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end505.sink.split

if.end505.sink.split:                             ; preds = %if.else496.if.end505.sink.split_crit_edge, %if.end488.if.end505.sink.split_crit_edge
  %last_stripe_index.0.sink = phi i64 [ %add492, %if.end488.if.end505.sink.split_crit_edge ], [ %last_stripe_index.0, %if.else496.if.end505.sink.split_crit_edge ]
  %32 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chunk_sectors, align 8
  %conv501 = sext i32 %33 to i64
  %mul502 = mul i64 %last_stripe_index.0.sink, %conv501
  br label %if.end505

if.end505:                                        ; preds = %if.end505.sink.split, %if.else496.if.end505_crit_edge
  %dev_end.0 = phi i64 [ %add468, %if.else496.if.end505_crit_edge ], [ %mul502, %if.end505.sink.split ]
  call void @__sanitizer_cov_trace_cmp8(i64 %dev_end.0, i64 %dev_start.0)
  %cmp506.not = icmp ugt i64 %dev_end.0, %dev_start.0
  br i1 %cmp506.not, label %if.end509, label %if.end505.cleanup_crit_edge

if.end505.cleanup_crit_edge:                      ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end509:                                        ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devlist, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %nb_dev513 = getelementptr inbounds %struct.strip_zone, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %nb_dev513 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nb_dev513, align 8
  %mul514 = mul i32 %sub.ptr.div, %39
  %add515 = add i32 %mul514, %disk.0843
  %arrayidx516 = getelementptr ptr, ptr %35, i32 %add515
  %40 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx516, align 4
  %42 = ptrtoint ptr %dev_start517 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dev_start517, align 8
  %add518 = add i64 %43, %dev_start.0
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %41, i32 0, i32 10
  %44 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data_offset, align 8
  %add519 = add i64 %add518, %45
  %sub520 = sub i64 %dev_end.0, %dev_start.0
  tail call void @md_submit_discard_bio(ptr noundef %mddev, ptr noundef %41, ptr noundef %bio.addr.0, i64 noundef %add519, i64 noundef %sub520) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end509, %if.end505.cleanup_crit_edge
  %inc = add nuw i32 %disk.0843, 1
  %46 = ptrtoint ptr %nb_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nb_dev, align 8
  %cmp470 = icmp ult i32 %inc, %47
  br i1 %cmp470, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end433.for.end_crit_edge
  tail call void @bio_endio(ptr noundef %bio.addr.0) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_account_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @map_sector(ptr nocapture noundef readonly %mddev, ptr noundef %zone, i64 noundef %sector, ptr nocapture noundef %sector_offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nb_dev = getelementptr inbounds %struct.strip_zone, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nb_dev, align 8
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %6 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_sectors, align 8
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #12, !range !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %.not1387 = icmp eq i32 %8, 1
  br i1 %.not1387, label %if.then, label %if.else394

if.then:                                          ; preds = %entry
  %9 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #12, !range !204
  %sub = add i32 %7, -1
  %10 = trunc i64 %sector to i32
  %conv3 = and i32 %sub, %10
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %sector, %sh_prom
  %11 = ptrtoint ptr %sector_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sector_offset, align 8
  %nb_dev4 = getelementptr inbounds %struct.strip_zone, ptr %zone, i32 0, i32 2
  %13 = ptrtoint ptr %nb_dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_dev4, align 8
  %shl = shl i32 %14, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %cmp178 = icmp ult i64 %12, 4294967296
  br i1 %cmp178, label %if.then182, label %if.else188, !prof !202

if.then182:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv183 = trunc i64 %12 to i32
  %div186 = udiv i32 %conv183, %shl
  %conv187 = zext i32 %div186 to i64
  br label %if.end639

if.else188:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %12) #15, !srcloc !206
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  br label %if.end639

if.else394:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sector)
  %cmp396 = icmp ult i64 %sector, 4294967296
  br i1 %cmp396, label %if.then404, label %if.else410, !prof !202

if.then404:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %conv405 = trunc i64 %sector to i32
  %.frozen = freeze i32 %7
  %div408 = udiv i32 %conv405, %.frozen
  %16 = mul i32 %div408, %.frozen
  %rem406.decomposed = sub i32 %conv405, %16
  %conv409 = zext i32 %div408 to i64
  br label %if.end414

if.else410:                                       ; preds = %if.else394
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sector) #15, !srcloc !206
  %asmresult.i1232 = extractvalue { i64, i64 } %17, 0
  %asmresult1.i1233 = extractvalue { i64, i64 } %17, 1
  %shr.i1234 = lshr i64 %asmresult.i1232, 32
  %conv.i1235 = trunc i64 %shr.i1234 to i32
  br label %if.end414

if.end414:                                        ; preds = %if.else410, %if.then404
  %sector.addr.0 = phi i64 [ %conv409, %if.then404 ], [ %asmresult1.i1233, %if.else410 ]
  %__rem196.0 = phi i32 [ %rem406.decomposed, %if.then404 ], [ %conv.i1235, %if.else410 ]
  %18 = ptrtoint ptr %sector_offset to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sector_offset, align 8
  %nb_dev417 = getelementptr inbounds %struct.strip_zone, ptr %zone, i32 0, i32 2
  %20 = ptrtoint ptr %nb_dev417 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_dev417, align 8
  %mul418 = mul i32 %21, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %19)
  %cmp619 = icmp ult i64 %19, 4294967296
  br i1 %cmp619, label %if.then627, label %if.else633, !prof !202

if.then627:                                       ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #14
  %conv628 = trunc i64 %19 to i32
  %div631 = udiv i32 %conv628, %mul418
  %conv632 = zext i32 %div631 to i64
  br label %if.end639

if.else633:                                       ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul418, i64 %19) #15, !srcloc !206
  %asmresult1.i1261 = extractvalue { i64, i64 } %22, 1
  br label %if.end639

if.end639:                                        ; preds = %if.else633, %if.then627, %if.else188, %if.then182
  %sector.addr.1 = phi i64 [ %shr, %if.then182 ], [ %shr, %if.else188 ], [ %sector.addr.0, %if.then627 ], [ %sector.addr.0, %if.else633 ]
  %chunk.0 = phi i64 [ %conv187, %if.then182 ], [ %asmresult1.i, %if.else188 ], [ %conv632, %if.then627 ], [ %asmresult1.i1261, %if.else633 ]
  %sect_in_chunk.0 = phi i32 [ %conv3, %if.then182 ], [ %conv3, %if.else188 ], [ %__rem196.0, %if.then627 ], [ %__rem196.0, %if.else633 ]
  %conv640 = zext i32 %7 to i64
  %mul641 = mul i64 %chunk.0, %conv640
  %conv642 = zext i32 %sect_in_chunk.0 to i64
  %add643 = add i64 %mul641, %conv642
  %23 = ptrtoint ptr %sector_offset to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add643, ptr %sector_offset, align 8
  %devlist = getelementptr inbounds %struct.r0conf, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devlist, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %nb_dev647 = getelementptr inbounds %struct.strip_zone, ptr %zone, i32 0, i32 2
  %28 = ptrtoint ptr %nb_dev647 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nb_dev647, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sector.addr.1)
  %cmp848 = icmp ult i64 %sector.addr.1, 4294967296
  br i1 %cmp848, label %if.then856, label %if.else862, !prof !202

if.then856:                                       ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #14
  %conv857 = trunc i64 %sector.addr.1 to i32
  %rem858 = urem i32 %conv857, %29
  br label %if.end866

if.else862:                                       ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #14
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %sector.addr.1) #15, !srcloc !206
  %asmresult.i1288 = extractvalue { i64, i64 } %30, 0
  %shr.i1290 = lshr i64 %asmresult.i1288, 32
  %conv.i1291 = trunc i64 %shr.i1290 to i32
  br label %if.end866

if.end866:                                        ; preds = %if.else862, %if.then856
  %__rem648.0 = phi i32 [ %rem858, %if.then856 ], [ %conv.i1291, %if.else862 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %zone to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %mul645 = mul i32 %sub.ptr.div, %5
  %add868 = add i32 %__rem648.0, %mul645
  %arrayidx869 = getelementptr ptr, ptr %25, i32 %add868
  %31 = ptrtoint ptr %arrayidx869 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx869, align 4
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_remap(ptr noundef %bio, i32 noundef %dev, i64 noundef %from) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 1), ptr blockaddress(@trace_block_bio_remap, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !209

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !192) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !202

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !210
  %call42 = tail call i32 @__traceiter_block_bio_remap(ptr noundef null, ptr noundef %bio, i32 noundef %dev, i64 noundef %from) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !211
  %13 = tail call i32 @llvm.read_register.i32(metadata !192) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !192) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !202

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !192) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_block_bio_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 486, ptr noundef nonnull @.str.8) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !213
  %31 = tail call i32 @llvm.read_register.i32(metadata !192) #12
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
declare dso_local void @md_submit_discard_bio(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_remap(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_check_no_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @acct_bioset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_strip_zones(ptr noundef readonly %mddev, ptr nocapture noundef writeonly %private_conf) unnamed_addr #1 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  %b2 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #12
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b2) #12
  %1 = call ptr @memset(ptr %b2, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #17
  %3 = ptrtoint ptr %private_conf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -12 to ptr), ptr %private_conf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup717_crit_edge, label %if.end

entry.cleanup717_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup717

if.end:                                           ; preds = %entry
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %4 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %4)
  %rdev1.01157 = load ptr, ptr %disks, align 8
  %cmp.not1158 = icmp eq ptr %rdev1.01157, %disks
  br i1 %cmp.not1158, label %if.end.do.body365_crit_edge, label %do.body.lr.ph

if.end.do.body365_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body365

do.body.lr.ph:                                    ; preds = %if.end
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %nr_strip_zones = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.inc358.do.body_crit_edge, %do.body.lr.ph
  %rdev1.01160 = phi ptr [ %rdev1.01157, %do.body.lr.ph ], [ %rdev1.0, %for.inc358.do.body_crit_edge ]
  %blksize.01159 = phi i32 [ 512, %do.body.lr.ph ], [ %23, %for.inc358.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !209

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %disk_name.i
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev1.01160, i32 0, i32 5
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev, align 4
  %call11 = call ptr @bdevname(ptr noundef %8, ptr noundef nonnull %b) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.17, ptr noundef %spec.select.i, ptr noundef %call11) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %sectors13 = getelementptr inbounds %struct.md_rdev, ptr %rdev1.01160, i32 0, i32 1
  %9 = ptrtoint ptr %sectors13 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sectors13, align 8
  %11 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp183 = icmp ult i64 %10, 4294967296
  br i1 %cmp183, label %if.then191, label %if.else197, !prof !202

if.then191:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv192 = trunc i64 %10 to i32
  %div195 = udiv i32 %conv192, %12
  %conv196 = zext i32 %div195 to i64
  br label %if.end201

if.else197:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %10) #15, !srcloc !206
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %sectors.0 = phi i64 [ %conv196, %if.then191 ], [ %asmresult1.i, %if.else197 ]
  %conv204 = sext i32 %12 to i64
  %mul205 = mul i64 %sectors.0, %conv204
  %14 = ptrtoint ptr %sectors13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mul205, ptr %sectors13, align 8
  %bdev207 = getelementptr inbounds %struct.md_rdev, ptr %rdev1.01160, i32 0, i32 5
  %15 = ptrtoint ptr %bdev207 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev207, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %tobool.not.i1003 = icmp eq ptr %20, null
  br i1 %tobool.not.i1003, label %if.end201.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

if.end201.queue_logical_block_size.exit_crit_edge: ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 9
  %21 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  %spec.select.i1004 = select i1 %tobool2.not.i, i32 512, i32 %22
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %if.end201.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %if.end201.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i1004, %land.lhs.true.i ]
  %23 = call i32 @llvm.umax.i32(i32 %blksize.01159, i32 %retval1.0.i)
  %24 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %24)
  %rdev2.01154 = load ptr, ptr %disks, align 8
  %cmp224.not1155 = icmp eq ptr %rdev2.01154, %disks
  br i1 %cmp224.not1155, label %queue_logical_block_size.exit.do.body322_crit_edge, label %queue_logical_block_size.exit.do.body229_crit_edge

queue_logical_block_size.exit.do.body229_crit_edge: ; preds = %queue_logical_block_size.exit
  br label %do.body229

queue_logical_block_size.exit.do.body322_crit_edge: ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body322

do.body229:                                       ; preds = %for.inc.do.body229_crit_edge, %queue_logical_block_size.exit.do.body229_crit_edge
  %rdev2.01156 = phi ptr [ %rdev2.0, %for.inc.do.body229_crit_edge ], [ %rdev2.01154, %queue_logical_block_size.exit.do.body229_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then241)) #12
          to label %do.end253 [label %if.then241], !srcloc !209

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1006 = icmp eq ptr %26, null
  %disk_name.i1007 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 3
  %spec.select.i1008 = select i1 %tobool.not.i1006, ptr @.str.3, ptr %disk_name.i1007
  %27 = ptrtoint ptr %bdev207 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev207, align 4
  %call245 = call ptr @bdevname(ptr noundef %28, ptr noundef nonnull %b) #12
  %29 = ptrtoint ptr %sectors13 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sectors13, align 8
  %bdev247 = getelementptr inbounds %struct.md_rdev, ptr %rdev2.01156, i32 0, i32 5
  %31 = ptrtoint ptr %bdev247 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev247, align 4
  %call249 = call ptr @bdevname(ptr noundef %32, ptr noundef nonnull %b2) #12
  %sectors250 = getelementptr inbounds %struct.md_rdev, ptr %rdev2.01156, i32 0, i32 1
  %33 = ptrtoint ptr %sectors250 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sectors250, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.18, ptr noundef %spec.select.i1008, ptr noundef %call245, i64 noundef %30, ptr noundef %call249, i64 noundef %34) #12
  br label %do.end253

do.end253:                                        ; preds = %if.then241, %do.body229
  %cmp254 = icmp eq ptr %rdev2.01156, %rdev1.01160
  br i1 %cmp254, label %do.body257, label %if.end274

do.body257:                                       ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then269)) #12
          to label %do.body322 [label %if.then269], !srcloc !209

if.then269:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1010 = icmp eq ptr %36, null
  %disk_name.i1011 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 3
  %spec.select.i1012 = select i1 %tobool.not.i1010, ptr @.str.3, ptr %disk_name.i1011
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.19, ptr noundef %spec.select.i1012) #12
  br label %do.body322

if.end274:                                        ; preds = %do.end253
  %sectors275 = getelementptr inbounds %struct.md_rdev, ptr %rdev2.01156, i32 0, i32 1
  %37 = ptrtoint ptr %sectors275 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sectors275, align 8
  %39 = ptrtoint ptr %sectors13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sectors13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp277 = icmp eq i64 %38, %40
  br i1 %cmp277, label %do.body280, label %do.body298

do.body280:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then292)) #12
          to label %for.inc358 [label %if.then292], !srcloc !209

if.then292:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1014 = icmp eq ptr %42, null
  %disk_name.i1015 = getelementptr inbounds %struct.gendisk, ptr %42, i32 0, i32 3
  %spec.select.i1016 = select i1 %tobool.not.i1014, ptr @.str.3, ptr %disk_name.i1015
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.20, ptr noundef %spec.select.i1016) #12
  br label %for.inc358

do.body298:                                       ; preds = %if.end274
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then310)) #12
          to label %for.inc [label %if.then310], !srcloc !209

if.then310:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1018 = icmp eq ptr %44, null
  %disk_name.i1019 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 3
  %spec.select.i1020 = select i1 %tobool.not.i1018, ptr @.str.3, ptr %disk_name.i1019
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.21, ptr noundef %spec.select.i1020) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then310, %do.body298
  %45 = ptrtoint ptr %rdev2.01156 to i32
  call void @__asan_load4_noabort(i32 %45)
  %rdev2.0 = load ptr, ptr %rdev2.01156, align 8
  %cmp224.not = icmp eq ptr %rdev2.0, %disks
  br i1 %cmp224.not, label %for.inc.do.body322_crit_edge, label %for.inc.do.body229_crit_edge

for.inc.do.body229_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body229

for.inc.do.body322_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body322

do.body322:                                       ; preds = %for.inc.do.body322_crit_edge, %if.then269, %do.body257, %queue_logical_block_size.exit.do.body322_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then334)) #12
          to label %do.end338 [label %if.then334], !srcloc !209

if.then334:                                       ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1022 = icmp eq ptr %47, null
  %disk_name.i1023 = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 3
  %spec.select.i1024 = select i1 %tobool.not.i1022, ptr @.str.3, ptr %disk_name.i1023
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.22, ptr noundef %spec.select.i1024) #12
  br label %do.end338

do.end338:                                        ; preds = %if.then334, %do.body322
  %48 = ptrtoint ptr %nr_strip_zones to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_strip_zones, align 8
  %inc = add i32 %49, 1
  store i32 %inc, ptr %nr_strip_zones, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then351)) #12
          to label %for.inc358 [label %if.then351], !srcloc !209

if.then351:                                       ; preds = %do.end338
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i1026 = icmp eq ptr %51, null
  %disk_name.i1027 = getelementptr inbounds %struct.gendisk, ptr %51, i32 0, i32 3
  %spec.select.i1028 = select i1 %tobool.not.i1026, ptr @.str.3, ptr %disk_name.i1027
  %52 = ptrtoint ptr %nr_strip_zones to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_strip_zones, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.23, ptr noundef %spec.select.i1028, i32 noundef %53) #12
  br label %for.inc358

for.inc358:                                       ; preds = %if.then351, %do.end338, %if.then292, %do.body280
  %54 = ptrtoint ptr %rdev1.01160 to i32
  call void @__asan_load4_noabort(i32 %54)
  %rdev1.0 = load ptr, ptr %rdev1.01160, align 8
  %cmp.not = icmp eq ptr %rdev1.0, %disks
  br i1 %cmp.not, label %for.inc358.do.body365_crit_edge, label %for.inc358.do.body_crit_edge

for.inc358.do.body_crit_edge:                     ; preds = %for.inc358
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.inc358.do.body365_crit_edge:                  ; preds = %for.inc358
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body365

do.body365:                                       ; preds = %for.inc358.do.body365_crit_edge, %if.end.do.body365_crit_edge
  %blksize.0.lcssa = phi i32 [ 512, %if.end.do.body365_crit_edge ], [ %23, %for.inc358.do.body365_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then377)) #12
          to label %do.end382 [label %if.then377], !srcloc !209

if.then377:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1029 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %55 = ptrtoint ptr %gendisk.i1029 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gendisk.i1029, align 8
  %tobool.not.i1030 = icmp eq ptr %56, null
  %disk_name.i1031 = getelementptr inbounds %struct.gendisk, ptr %56, i32 0, i32 3
  %spec.select.i1032 = select i1 %tobool.not.i1030, ptr @.str.3, ptr %disk_name.i1031
  %nr_strip_zones379 = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %nr_strip_zones379 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_strip_zones379, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.24, ptr noundef %spec.select.i1032, i32 noundef %58) #12
  br label %do.end382

do.end382:                                        ; preds = %if.then377, %do.body365
  %nr_strip_zones383 = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %nr_strip_zones383 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_strip_zones383, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp384 = icmp eq i32 %60, 1
  br i1 %cmp384, label %do.end382.if.end419_crit_edge, label %if.else387

do.end382.if.end419_crit_edge:                    ; preds = %do.end382
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.else387:                                       ; preds = %do.end382
  %layout388 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 24
  %61 = ptrtoint ptr %layout388 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %layout388, align 4
  %.off = add i32 %62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else387.if.end419_crit_edge, label %if.else397

if.else387.if.end419_crit_edge:                   ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.else397:                                       ; preds = %if.else387
  %63 = load i32, ptr @default_layout, align 4
  %.off957 = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off957)
  %switch958 = icmp ult i32 %.off957, 2
  br i1 %switch958, label %if.else397.if.end419_crit_edge, label %do.end408

if.else397.if.end419_crit_edge:                   ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

do.end408:                                        ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1033 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %64 = ptrtoint ptr %gendisk.i1033 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gendisk.i1033, align 8
  %tobool.not.i1034 = icmp eq ptr %65, null
  %disk_name.i1035 = getelementptr inbounds %struct.gendisk, ptr %65, i32 0, i32 3
  %spec.select.i1036 = select i1 %tobool.not.i1034, ptr @.str.3, ptr %disk_name.i1035
  %call411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %spec.select.i1036) #16
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  br label %abort

if.end419:                                        ; preds = %if.else397.if.end419_crit_edge, %if.else387.if.end419_crit_edge, %do.end382.if.end419_crit_edge
  %.sink = phi i32 [ 1, %do.end382.if.end419_crit_edge ], [ %62, %if.else387.if.end419_crit_edge ], [ %63, %if.else397.if.end419_crit_edge ]
  %layout396 = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %layout396 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink, ptr %layout396, align 4
  %chunk_sectors420 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %67 = ptrtoint ptr %chunk_sectors420 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chunk_sectors420, align 8
  %shl421 = shl i32 %68, 9
  %rem422 = urem i32 %shl421, %blksize.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem422)
  %tobool423.not = icmp eq i32 %rem422, 0
  br i1 %tobool423.not, label %if.end433, label %do.end427

do.end427:                                        ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1037 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %69 = ptrtoint ptr %gendisk.i1037 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gendisk.i1037, align 8
  %tobool.not.i1038 = icmp eq ptr %70, null
  %disk_name.i1039 = getelementptr inbounds %struct.gendisk, ptr %70, i32 0, i32 3
  %spec.select.i1040 = select i1 %tobool.not.i1038, ptr @.str.3, ptr %disk_name.i1039
  %call432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %spec.select.i1040, i32 noundef %shl421, i32 noundef %blksize.0.lcssa) #16
  br label %abort

if.end433:                                        ; preds = %if.end419
  %71 = ptrtoint ptr %nr_strip_zones383 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_strip_zones383, align 8
  %73 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 24) #12
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !203

kcalloc.exit.thread:                              ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %call7.i.i, align 8
  br label %abort

if.end7.i.i:                                      ; preds = %if.end433
  %76 = extractvalue { i32, i1 } %73, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %76, i32 noundef 3520) #18
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool437.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool437.not, label %if.end7.i.i.abort_crit_edge, label %if.end439

if.end7.i.i.abort_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %abort

if.end439:                                        ; preds = %if.end7.i.i
  %78 = ptrtoint ptr %nr_strip_zones383 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_strip_zones383, align 8
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %80 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 4) #12
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %if.end439.if.end8.i.i_crit_edge, label %if.end.i

if.end439.if.end8.i.i_crit_edge:                  ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end.i:                                         ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %raid_disks, align 8
  %84 = extractvalue { i32, i1 } %80, 0
  %85 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %84, i32 %83) #12
  %86 = extractvalue { i32, i1 } %85, 1
  %87 = extractvalue { i32, i1 } %85, 0
  %spec.select.i1041 = select i1 %86, i32 -1, i32 %87
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i, %if.end439.if.end8.i.i_crit_edge
  %retval.0.i1042 = phi i32 [ -1, %if.end439.if.end8.i.i_crit_edge ], [ %spec.select.i1041, %if.end.i ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i1042, i32 noundef 3520) #18
  %devlist = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %devlist to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call9.i.i, ptr %devlist, align 4
  %tobool444.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool444.not, label %if.end8.i.i.abort_crit_edge, label %if.end446

if.end8.i.i.abort_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %abort

if.end446:                                        ; preds = %if.end8.i.i
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %91 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %91)
  %rdev1.11161 = load ptr, ptr %disks, align 8
  %cmp457.not1162 = icmp eq ptr %rdev1.11161, %disks
  br i1 %cmp457.not1162, label %if.end446.for.end520_crit_edge, label %for.body461.lr.ph

if.end446.for.end520_crit_edge:                   ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end520

for.body461.lr.ph:                                ; preds = %if.end446
  %level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 23
  br label %for.body461

for.body461:                                      ; preds = %cleanup.for.body461_crit_edge, %for.body461.lr.ph
  %rdev1.11165 = phi ptr [ %rdev1.11161, %for.body461.lr.ph ], [ %rdev1.1, %cleanup.for.body461_crit_edge ]
  %smallest.01164 = phi ptr [ null, %for.body461.lr.ph ], [ %smallest.1, %cleanup.for.body461_crit_edge ]
  %cnt.01163 = phi i32 [ 0, %for.body461.lr.ph ], [ %inc513, %cleanup.for.body461_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev1.11165, i32 0, i32 19
  %92 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %raid_disk, align 4
  %94 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %95)
  %cmp462 = icmp eq i32 %95, 10
  br i1 %cmp462, label %if.then464, label %for.body461.if.end466_crit_edge

for.body461.if.end466_crit_edge:                  ; preds = %for.body461
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end466

if.then464:                                       ; preds = %for.body461
  call void @__sanitizer_cov_trace_pc() #14
  %div465 = sdiv i32 %93, 2
  %new_raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev1.11165, i32 0, i32 20
  %96 = ptrtoint ptr %new_raid_disk to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %div465, ptr %new_raid_disk, align 8
  %97 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr = load i32, ptr %level, align 8
  br label %if.end466

if.end466:                                        ; preds = %if.then464, %for.body461.if.end466_crit_edge
  %98 = phi i32 [ %.pr, %if.then464 ], [ %95, %for.body461.if.end466_crit_edge ]
  %j.0 = phi i32 [ %div465, %if.then464 ], [ %93, %for.body461.if.end466_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp468 = icmp eq i32 %98, 1
  br i1 %cmp468, label %if.end472.thread, label %if.end472

if.end472.thread:                                 ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #14
  %new_raid_disk471 = getelementptr inbounds %struct.md_rdev, ptr %rdev1.11165, i32 0, i32 20
  %99 = ptrtoint ptr %new_raid_disk471 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %new_raid_disk471, align 8
  br label %if.end482

if.end472:                                        ; preds = %if.end466
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0)
  %cmp473 = icmp slt i32 %j.0, 0
  br i1 %cmp473, label %do.end478, label %if.end472.if.end482_crit_edge

if.end472.if.end482_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end482

do.end478:                                        ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1048 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %100 = ptrtoint ptr %gendisk.i1048 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %gendisk.i1048, align 8
  %tobool.not.i1049 = icmp eq ptr %101, null
  %disk_name.i1050 = getelementptr inbounds %struct.gendisk, ptr %101, i32 0, i32 3
  %spec.select.i1051 = select i1 %tobool.not.i1049, ptr @.str.3, ptr %disk_name.i1050
  %call481 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %spec.select.i1051) #16
  br label %abort

if.end482:                                        ; preds = %if.end472.if.end482_crit_edge, %if.end472.thread
  %j.11136 = phi i32 [ 0, %if.end472.thread ], [ %j.0, %if.end472.if.end482_crit_edge ]
  %102 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.11136, i32 %103)
  %cmp484.not = icmp slt i32 %j.11136, %103
  br i1 %cmp484.not, label %if.end493, label %do.end489

do.end489:                                        ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1052 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %104 = ptrtoint ptr %gendisk.i1052 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gendisk.i1052, align 8
  %tobool.not.i1053 = icmp eq ptr %105, null
  %disk_name.i1054 = getelementptr inbounds %struct.gendisk, ptr %105, i32 0, i32 3
  %spec.select.i1055 = select i1 %tobool.not.i1053, ptr @.str.3, ptr %disk_name.i1054
  %call492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %spec.select.i1055, i32 noundef %j.11136) #16
  br label %abort

if.end493:                                        ; preds = %if.end482
  %arrayidx494 = getelementptr ptr, ptr %call9.i.i, i32 %j.11136
  %106 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx494, align 4
  %tobool495.not = icmp eq ptr %107, null
  br i1 %tobool495.not, label %if.end503, label %do.end499

do.end499:                                        ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1056 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %108 = ptrtoint ptr %gendisk.i1056 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gendisk.i1056, align 8
  %tobool.not.i1057 = icmp eq ptr %109, null
  %disk_name.i1058 = getelementptr inbounds %struct.gendisk, ptr %109, i32 0, i32 3
  %spec.select.i1059 = select i1 %tobool.not.i1057, ptr @.str.3, ptr %disk_name.i1058
  %call502 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %spec.select.i1059, i32 noundef %j.11136) #16
  br label %abort

if.end503:                                        ; preds = %if.end493
  %110 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %rdev1.11165, ptr %arrayidx494, align 4
  %tobool505.not = icmp eq ptr %smallest.01164, null
  br i1 %tobool505.not, label %if.end503.if.then511_crit_edge, label %lor.lhs.false506

if.end503.if.then511_crit_edge:                   ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then511

lor.lhs.false506:                                 ; preds = %if.end503
  %sectors507 = getelementptr inbounds %struct.md_rdev, ptr %rdev1.11165, i32 0, i32 1
  %111 = ptrtoint ptr %sectors507 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %sectors507, align 8
  %sectors508 = getelementptr inbounds %struct.md_rdev, ptr %smallest.01164, i32 0, i32 1
  %113 = ptrtoint ptr %sectors508 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %sectors508, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %112, i64 %114)
  %cmp509 = icmp ult i64 %112, %114
  br i1 %cmp509, label %lor.lhs.false506.if.then511_crit_edge, label %lor.lhs.false506.cleanup_crit_edge

lor.lhs.false506.cleanup_crit_edge:               ; preds = %lor.lhs.false506
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false506.if.then511_crit_edge:            ; preds = %lor.lhs.false506
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then511

if.then511:                                       ; preds = %lor.lhs.false506.if.then511_crit_edge, %if.end503.if.then511_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then511, %lor.lhs.false506.cleanup_crit_edge
  %smallest.1 = phi ptr [ %rdev1.11165, %if.then511 ], [ %smallest.01164, %lor.lhs.false506.cleanup_crit_edge ]
  %inc513 = add i32 %cnt.01163, 1
  %115 = ptrtoint ptr %rdev1.11165 to i32
  call void @__asan_load4_noabort(i32 %115)
  %rdev1.1 = load ptr, ptr %rdev1.11165, align 8
  %cmp457.not = icmp eq ptr %rdev1.1, %disks
  br i1 %cmp457.not, label %cleanup.for.end520_crit_edge, label %cleanup.for.body461_crit_edge

cleanup.for.body461_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body461

cleanup.for.end520_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end520

for.end520:                                       ; preds = %cleanup.for.end520_crit_edge, %if.end446.for.end520_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %if.end446.for.end520_crit_edge ], [ %inc513, %cleanup.for.end520_crit_edge ]
  %smallest.0.lcssa = phi ptr [ null, %if.end446.for.end520_crit_edge ], [ %smallest.1, %cleanup.for.end520_crit_edge ]
  %116 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.lcssa, i32 %117)
  %cmp522.not = icmp eq i32 %cnt.0.lcssa, %117
  br i1 %cmp522.not, label %if.end532, label %do.end527

do.end527:                                        ; preds = %for.end520
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1060 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %118 = ptrtoint ptr %gendisk.i1060 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %gendisk.i1060, align 8
  %tobool.not.i1061 = icmp eq ptr %119, null
  %disk_name.i1062 = getelementptr inbounds %struct.gendisk, ptr %119, i32 0, i32 3
  %spec.select.i1063 = select i1 %tobool.not.i1061, ptr @.str.3, ptr %disk_name.i1062
  %call531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %spec.select.i1063, i32 noundef %cnt.0.lcssa, i32 noundef %117) #16
  br label %abort

if.end532:                                        ; preds = %for.end520
  %nb_dev = getelementptr inbounds %struct.strip_zone, ptr %90, i32 0, i32 2
  %120 = ptrtoint ptr %nb_dev to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %cnt.0.lcssa, ptr %nb_dev, align 8
  %sectors533 = getelementptr inbounds %struct.md_rdev, ptr %smallest.0.lcssa, i32 0, i32 1
  %121 = ptrtoint ptr %sectors533 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %sectors533, align 8
  %conv534 = sext i32 %cnt.0.lcssa to i64
  %mul535 = mul i64 %122, %conv534
  %123 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %mul535, ptr %90, align 8
  %124 = ptrtoint ptr %nr_strip_zones383 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_strip_zones383, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp5391174 = icmp sgt i32 %125, 1
  br i1 %cmp5391174, label %for.body541.lr.ph, label %if.end532.do.body697_crit_edge

if.end532.do.body697_crit_edge:                   ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body697

for.body541.lr.ph:                                ; preds = %if.end532
  %gendisk.i1064 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa)
  %cmp5681168 = icmp sgt i32 %cnt.0.lcssa, 0
  br label %for.body541

for.body541:                                      ; preds = %do.end693.for.body541_crit_edge, %for.body541.lr.ph
  %i.01177 = phi i32 [ 1, %for.body541.lr.ph ], [ %inc695, %do.end693.for.body541_crit_edge ]
  %curr_zone_end.01176 = phi i64 [ %mul535, %for.body541.lr.ph ], [ %add674, %do.end693.for.body541_crit_edge ]
  %smallest.31175 = phi ptr [ %smallest.0.lcssa, %for.body541.lr.ph ], [ %smallest.4.lcssa, %do.end693.for.body541_crit_edge ]
  %126 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call7.i.i, align 8
  %add.ptr544 = getelementptr %struct.strip_zone, ptr %127, i32 %i.01177
  %128 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %devlist, align 4
  %130 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %raid_disks, align 8
  %mul547 = mul i32 %131, %i.01177
  %add.ptr548 = getelementptr ptr, ptr %129, i32 %mul547
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then561)) #12
          to label %do.end565 [label %if.then561], !srcloc !209

if.then561:                                       ; preds = %for.body541
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1065 = icmp eq ptr %133, null
  %disk_name.i1066 = getelementptr inbounds %struct.gendisk, ptr %133, i32 0, i32 3
  %spec.select.i1067 = select i1 %tobool.not.i1065, ptr @.str.3, ptr %disk_name.i1066
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.44, ptr noundef %spec.select.i1067, i32 noundef %i.01177) #12
  br label %do.end565

do.end565:                                        ; preds = %if.then561, %for.body541
  %sectors566 = getelementptr inbounds %struct.md_rdev, ptr %smallest.31175, i32 0, i32 1
  %134 = ptrtoint ptr %sectors566 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %sectors566, align 8
  %dev_start = getelementptr %struct.strip_zone, ptr %127, i32 %i.01177, i32 1
  %136 = ptrtoint ptr %dev_start to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %dev_start, align 8
  br i1 %cmp5681168, label %do.end565.for.body570_crit_edge, label %do.end565.for.end649_crit_edge

do.end565.for.end649_crit_edge:                   ; preds = %do.end565
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end649

do.end565.for.body570_crit_edge:                  ; preds = %do.end565
  br label %for.body570

for.body570:                                      ; preds = %for.inc647.for.body570_crit_edge, %do.end565.for.body570_crit_edge
  %c.11171 = phi i32 [ %c.2, %for.inc647.for.body570_crit_edge ], [ 0, %do.end565.for.body570_crit_edge ]
  %smallest.41170 = phi ptr [ %smallest.5, %for.inc647.for.body570_crit_edge ], [ null, %do.end565.for.body570_crit_edge ]
  %j542.01169 = phi i32 [ %inc648, %for.inc647.for.body570_crit_edge ], [ 0, %do.end565.for.body570_crit_edge ]
  %137 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %devlist, align 4
  %arrayidx572 = getelementptr ptr, ptr %138, i32 %j542.01169
  %139 = ptrtoint ptr %arrayidx572 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx572, align 4
  %sectors573 = getelementptr inbounds %struct.md_rdev, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %sectors573 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %sectors573, align 8
  %143 = ptrtoint ptr %dev_start to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %dev_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %144)
  %cmp575.not = icmp ugt i64 %142, %144
  br i1 %cmp575.not, label %do.body599, label %do.body578

do.body578:                                       ; preds = %for.body570
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then590)) #12
          to label %for.inc647 [label %if.then590], !srcloc !209

if.then590:                                       ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1069 = icmp eq ptr %146, null
  %disk_name.i1070 = getelementptr inbounds %struct.gendisk, ptr %146, i32 0, i32 3
  %spec.select.i1071 = select i1 %tobool.not.i1069, ptr @.str.3, ptr %disk_name.i1070
  %bdev592 = getelementptr inbounds %struct.md_rdev, ptr %140, i32 0, i32 5
  %147 = ptrtoint ptr %bdev592 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bdev592, align 4
  %call594 = call ptr @bdevname(ptr noundef %148, ptr noundef nonnull %b) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.45, ptr noundef %spec.select.i1071, ptr noundef %call594) #12
  br label %for.inc647

do.body599:                                       ; preds = %for.body570
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then611)) #12
          to label %do.end618 [label %if.then611], !srcloc !209

if.then611:                                       ; preds = %do.body599
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1073 = icmp eq ptr %150, null
  %disk_name.i1074 = getelementptr inbounds %struct.gendisk, ptr %150, i32 0, i32 3
  %spec.select.i1075 = select i1 %tobool.not.i1073, ptr @.str.3, ptr %disk_name.i1074
  %bdev613 = getelementptr inbounds %struct.md_rdev, ptr %140, i32 0, i32 5
  %151 = ptrtoint ptr %bdev613 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bdev613, align 4
  %call615 = call ptr @bdevname(ptr noundef %152, ptr noundef nonnull %b) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.46, ptr noundef %spec.select.i1075, ptr noundef %call615, i32 noundef %c.11171) #12
  br label %do.end618

do.end618:                                        ; preds = %if.then611, %do.body599
  %arrayidx619 = getelementptr ptr, ptr %add.ptr548, i32 %c.11171
  %153 = ptrtoint ptr %arrayidx619 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %140, ptr %arrayidx619, align 4
  %inc620 = add i32 %c.11171, 1
  %tobool621.not = icmp eq ptr %smallest.41170, null
  br i1 %tobool621.not, label %do.end618.if.then627_crit_edge, label %lor.lhs.false622

do.end618.if.then627_crit_edge:                   ; preds = %do.end618
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then627

lor.lhs.false622:                                 ; preds = %do.end618
  %154 = ptrtoint ptr %sectors573 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %sectors573, align 8
  %sectors624 = getelementptr inbounds %struct.md_rdev, ptr %smallest.41170, i32 0, i32 1
  %156 = ptrtoint ptr %sectors624 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %sectors624, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %155, i64 %157)
  %cmp625 = icmp ult i64 %155, %157
  br i1 %cmp625, label %lor.lhs.false622.if.then627_crit_edge, label %lor.lhs.false622.for.inc647_crit_edge

lor.lhs.false622.for.inc647_crit_edge:            ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc647

lor.lhs.false622.if.then627_crit_edge:            ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then627

if.then627:                                       ; preds = %lor.lhs.false622.if.then627_crit_edge, %do.end618.if.then627_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then640)) #12
          to label %for.inc647 [label %if.then640], !srcloc !209

if.then640:                                       ; preds = %if.then627
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1077 = icmp eq ptr %159, null
  %disk_name.i1078 = getelementptr inbounds %struct.gendisk, ptr %159, i32 0, i32 3
  %spec.select.i1079 = select i1 %tobool.not.i1077, ptr @.str.3, ptr %disk_name.i1078
  %160 = ptrtoint ptr %sectors573 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %sectors573, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.47, ptr noundef %spec.select.i1079, i64 noundef %161) #12
  br label %for.inc647

for.inc647:                                       ; preds = %if.then640, %if.then627, %lor.lhs.false622.for.inc647_crit_edge, %if.then590, %do.body578
  %smallest.5 = phi ptr [ %smallest.41170, %if.then590 ], [ %140, %if.then640 ], [ %smallest.41170, %lor.lhs.false622.for.inc647_crit_edge ], [ %smallest.41170, %do.body578 ], [ %140, %if.then627 ]
  %c.2 = phi i32 [ %c.11171, %if.then590 ], [ %inc620, %if.then640 ], [ %inc620, %lor.lhs.false622.for.inc647_crit_edge ], [ %c.11171, %do.body578 ], [ %inc620, %if.then627 ]
  %inc648 = add nuw nsw i32 %j542.01169, 1
  %exitcond.not = icmp eq i32 %inc648, %cnt.0.lcssa
  br i1 %exitcond.not, label %for.inc647.for.end649_crit_edge, label %for.inc647.for.body570_crit_edge

for.inc647.for.body570_crit_edge:                 ; preds = %for.inc647
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body570

for.inc647.for.end649_crit_edge:                  ; preds = %for.inc647
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end649

for.end649:                                       ; preds = %for.inc647.for.end649_crit_edge, %do.end565.for.end649_crit_edge
  %smallest.4.lcssa = phi ptr [ null, %do.end565.for.end649_crit_edge ], [ %smallest.5, %for.inc647.for.end649_crit_edge ]
  %c.1.lcssa = phi i32 [ 0, %do.end565.for.end649_crit_edge ], [ %c.2, %for.inc647.for.end649_crit_edge ]
  %nb_dev650 = getelementptr %struct.strip_zone, ptr %127, i32 %i.01177, i32 2
  %162 = ptrtoint ptr %nb_dev650 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %c.1.lcssa, ptr %nb_dev650, align 8
  %sectors651 = getelementptr inbounds %struct.md_rdev, ptr %smallest.4.lcssa, i32 0, i32 1
  %163 = ptrtoint ptr %sectors651 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %sectors651, align 8
  %165 = ptrtoint ptr %dev_start to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %dev_start, align 8
  %sub653 = sub i64 %164, %166
  %conv654 = sext i32 %c.1.lcssa to i64
  %mul655 = mul i64 %sub653, %conv654
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then668)) #12
          to label %do.end673 [label %if.then668], !srcloc !209

if.then668:                                       ; preds = %for.end649
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1081 = icmp eq ptr %168, null
  %disk_name.i1082 = getelementptr inbounds %struct.gendisk, ptr %168, i32 0, i32 3
  %spec.select.i1083 = select i1 %tobool.not.i1081, ptr @.str.3, ptr %disk_name.i1082
  %169 = ptrtoint ptr %nb_dev650 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nb_dev650, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.48, ptr noundef %spec.select.i1083, i32 noundef %170, i64 noundef %mul655) #12
  br label %do.end673

do.end673:                                        ; preds = %if.then668, %for.end649
  %add674 = add i64 %mul655, %curr_zone_end.01176
  %171 = ptrtoint ptr %add.ptr544 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %add674, ptr %add.ptr544, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then688)) #12
          to label %do.end693 [label %if.then688], !srcloc !209

if.then688:                                       ; preds = %do.end673
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %gendisk.i1064 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gendisk.i1064, align 8
  %tobool.not.i1085 = icmp eq ptr %173, null
  %disk_name.i1086 = getelementptr inbounds %struct.gendisk, ptr %173, i32 0, i32 3
  %spec.select.i1087 = select i1 %tobool.not.i1085, ptr @.str.3, ptr %disk_name.i1086
  %174 = ptrtoint ptr %sectors651 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %sectors651, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.49, ptr noundef %spec.select.i1087, i64 noundef %175) #12
  br label %do.end693

do.end693:                                        ; preds = %if.then688, %do.end673
  %inc695 = add nuw nsw i32 %i.01177, 1
  %176 = ptrtoint ptr %nr_strip_zones383 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr_strip_zones383, align 8
  %cmp539 = icmp slt i32 %inc695, %177
  br i1 %cmp539, label %do.end693.for.body541_crit_edge, label %do.end693.do.body697_crit_edge

do.end693.do.body697_crit_edge:                   ; preds = %do.end693
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body697

do.end693.for.body541_crit_edge:                  ; preds = %do.end693
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body541

do.body697:                                       ; preds = %do.end693.do.body697_crit_edge, %if.end532.do.body697_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_strip_zones.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_strip_zones, %if.then709)) #12
          to label %cleanup717.sink.split [label %if.then709], !srcloc !209

if.then709:                                       ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i1088 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %178 = ptrtoint ptr %gendisk.i1088 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %gendisk.i1088, align 8
  %tobool.not.i1089 = icmp eq ptr %179, null
  %disk_name.i1090 = getelementptr inbounds %struct.gendisk, ptr %179, i32 0, i32 3
  %spec.select.i1091 = select i1 %tobool.not.i1089, ptr @.str.3, ptr %disk_name.i1090
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_strip_zones.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.50, ptr noundef %spec.select.i1091) #12
  br label %cleanup717.sink.split

abort:                                            ; preds = %do.end527, %do.end499, %do.end489, %do.end478, %if.end8.i.i.abort_crit_edge, %if.end7.i.i.abort_crit_edge, %kcalloc.exit.thread, %do.end427, %do.end408
  %err.0 = phi i32 [ -22, %do.end427 ], [ -22, %do.end527 ], [ -12, %if.end8.i.i.abort_crit_edge ], [ -12, %if.end7.i.i.abort_crit_edge ], [ -524, %do.end408 ], [ -12, %kcalloc.exit.thread ], [ -22, %do.end478 ], [ -22, %do.end489 ], [ -22, %do.end499 ]
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %181) #12
  %devlist715 = getelementptr inbounds %struct.r0conf, ptr %call7.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %devlist715 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %devlist715, align 4
  call void @kfree(ptr noundef %183) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %184 = inttoptr i32 %err.0 to ptr
  br label %cleanup717.sink.split

cleanup717.sink.split:                            ; preds = %abort, %if.then709, %do.body697
  %.sink1182 = phi ptr [ %184, %abort ], [ %call7.i.i, %do.body697 ], [ %call7.i.i, %if.then709 ]
  %retval.0.ph = phi i32 [ %err.0, %abort ], [ 0, %do.body697 ], [ 0, %if.then709 ]
  %185 = ptrtoint ptr %private_conf to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %.sink1182, ptr %private_conf, align 4
  br label %cleanup717

cleanup717:                                       ; preds = %cleanup717.sink.split, %entry.cleanup717_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup717_crit_edge ], [ %retval.0.ph, %cleanup717.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_same_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_stack_limits(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_set_array_sectors(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_zones(ptr nocapture noundef readonly %mddev) unnamed_addr #1 align 64 {
entry:
  %b = alloca [32 x i8], align 1
  %line = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #12
  %0 = call ptr @memset(ptr %b, i32 255, i32 32)
  %1 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mddev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %nb_dev = getelementptr inbounds %struct.strip_zone, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nb_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nb_dev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_zones.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_zones, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %7 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %disk_name.i
  %nr_strip_zones = getelementptr inbounds %struct.r0conf, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %nr_strip_zones to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_strip_zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %cond = select i1 %cmp, ptr @.str.53, ptr @.str.54
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_zones.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.52, ptr noundef %spec.select.i, i32 noundef %10, ptr noundef nonnull %cond) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nr_strip_zones5 = getelementptr inbounds %struct.r0conf, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %nr_strip_zones5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_strip_zones5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6101 = icmp sgt i32 %12, 0
  br i1 %cmp6101, label %for.body.lr.ph, label %do.end.for.end65_crit_edge

do.end.for.end65_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.body.lr.ph:                                   ; preds = %do.end
  %devlist = getelementptr inbounds %struct.r0conf, ptr %2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end59.for.body_crit_edge, %for.body.lr.ph
  %j.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc64, %do.end59.for.body_crit_edge ]
  %zone_start.0102 = phi i64 [ 0, %for.body.lr.ph ], [ %39, %do.end59.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %line) #12
  %13 = call ptr @memset(ptr %line, i32 255, i32 200)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %nb_dev1097 = getelementptr %struct.strip_zone, ptr %15, i32 %j.0103, i32 2
  %16 = ptrtoint ptr %nb_dev1097 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nb_dev1097, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1198 = icmp sgt i32 %17, 0
  br i1 %cmp1198, label %for.body12.lr.ph, label %for.body.do.body20_crit_edge

for.body.do.body20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

for.body12.lr.ph:                                 ; preds = %for.body
  %mul = mul i32 %j.0103, %6
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %k.0100 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.body12.for.body12_crit_edge ]
  %len.099 = phi i32 [ 0, %for.body12.lr.ph ], [ %add19, %for.body12.for.body12_crit_edge ]
  %add.ptr = getelementptr i8, ptr %line, i32 %len.099
  %sub = sub i32 200, %len.099
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0100)
  %tobool13.not = icmp eq i32 %k.0100, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.53, ptr @.str.56
  %18 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devlist, align 4
  %add = add i32 %k.0100, %mul
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %add
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev, align 4
  %call17 = call ptr @bdevname(ptr noundef %23, ptr noundef nonnull %b) #12
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond14, ptr noundef %call17)
  %add19 = add i32 %call18, %len.099
  %inc = add nuw nsw i32 %k.0100, 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %nb_dev10 = getelementptr %struct.strip_zone, ptr %25, i32 %j.0103, i32 2
  %26 = ptrtoint ptr %nb_dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nb_dev10, align 8
  %cmp11 = icmp slt i32 %inc, %27
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.do.body20_crit_edge

for.body12.do.body20_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

do.body20:                                        ; preds = %for.body12.do.body20_crit_edge, %for.body.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_zones.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_zones, %if.then32)) #12
          to label %do.end36 [label %if.then32], !srcloc !209

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_zones.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.57, i32 noundef %j.0103, ptr noundef nonnull %line) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %arrayidx38 = getelementptr %struct.strip_zone, ptr %29, i32 %j.0103
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx38, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_zones.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_zones, %if.then52)) #12
          to label %do.end59 [label %if.then52], !srcloc !209

if.then52:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  %sub39 = sub i64 %31, %zone_start.0102
  %shr = lshr i64 %zone_start.0102, 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %dev_start = getelementptr %struct.strip_zone, ptr %33, i32 %j.0103, i32 1
  %34 = ptrtoint ptr %dev_start to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dev_start, align 8
  %shr55 = lshr i64 %35, 1
  %shr56 = lshr i64 %sub39, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_zones.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.58, i64 noundef %shr, i64 noundef %shr55, i64 noundef %shr56) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %do.end36
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %arrayidx61 = getelementptr %struct.strip_zone, ptr %37, i32 %j.0103
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx61, align 8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %line) #12
  %inc64 = add nuw nsw i32 %j.0103, 1
  %40 = ptrtoint ptr %nr_strip_zones5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_strip_zones5, align 4
  %cmp6 = icmp slt i32 %inc64, %41
  br i1 %cmp6, label %do.end59.for.body_crit_edge, label %do.end59.for.end65_crit_edge

do.end59.for.end65_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

do.end59.for.body_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end65:                                        ; preds = %do.end59.for.end65_crit_edge, %do.end.for.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_integrity_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @raid0_takeover_raid45(ptr noundef %mddev) unnamed_addr #1 align 64 {
entry:
  %priv_conf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priv_conf) #12
  %0 = ptrtoint ptr %priv_conf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %priv_conf, align 4, !annotation !208
  %degraded = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 64
  %1 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %degraded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %3 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %disk_name.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %spec.select.i, i32 noundef %2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %5 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %5)
  %rdev.048 = load ptr, ptr %disks, align 8
  %cmp6.not49 = icmp eq ptr %rdev.048, %disks
  br i1 %cmp6.not49, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %raid_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %dev_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %rdev.050 = phi ptr [ %rdev.048, %for.body.lr.ph ], [ %rdev.0, %if.end16.for.body_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.050, i32 0, i32 19
  %6 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disk, align 4
  %8 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %raid_disks, align 8
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp7 = icmp eq i32 %7, %sub
  br i1 %cmp7, label %do.end11, label %if.end16

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %gendisk.i44 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %10 = ptrtoint ptr %gendisk.i44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gendisk.i44, align 8
  %tobool.not.i45 = icmp eq ptr %11, null
  %disk_name.i46 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 3
  %spec.select.i47 = select i1 %tobool.not.i45, ptr @.str.3, ptr %disk_name.i46
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %spec.select.i47) #16
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %12 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dev_sectors, align 8
  %sectors = getelementptr inbounds %struct.md_rdev, ptr %rdev.050, i32 0, i32 1
  %14 = ptrtoint ptr %sectors to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sectors, align 8
  %15 = ptrtoint ptr %rdev.050 to i32
  call void @__asan_load4_noabort(i32 %15)
  %rdev.0 = load ptr, ptr %rdev.050, align 8
  %cmp6.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp6.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.end.for.end_crit_edge
  %new_level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 36
  %16 = ptrtoint ptr %new_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %new_level, align 4
  %new_layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 37
  %17 = ptrtoint ptr %new_layout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %new_layout, align 8
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %18 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_sectors, align 8
  %new_chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 38
  %20 = ptrtoint ptr %new_chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %new_chunk_sectors, align 4
  %raid_disks22 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %21 = ptrtoint ptr %raid_disks22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %raid_disks22, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %raid_disks22, align 8
  %delta_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 35
  %23 = ptrtoint ptr %delta_disks to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %delta_disks, align 8
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %24 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %recovery_cp, align 8
  %flags.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %26, -237
  store i32 %and.i, ptr %flags.i, align 8
  %call23 = call fastcc i32 @create_strip_zones(ptr noundef %mddev, ptr noundef nonnull %priv_conf)
  %27 = ptrtoint ptr %priv_conf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv_conf, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end11 ], [ %28, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priv_conf) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !135, !136, !138, !140, !142, !143, !145, !146, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191}
!llvm.named.register.sp = !{!192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @__param_default_layout, !1, !"__param_default_layout", i1 false, i1 false}
!1 = !{!"../drivers/md/raid0.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_default_layouttype335, !1, !"__UNIQUE_ID_default_layouttype335", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_raid0__357_796_raid0_init6, !4, !"__initcall__kmod_raid0__357_796_raid0_init6", i1 false, i1 false}
!4 = !{!"../drivers/md/raid0.c", i32 796, i32 1}
!5 = !{ptr @__exitcall_raid0_exit, !6, !"__exitcall_raid0_exit", i1 false, i1 false}
!6 = !{!"../drivers/md/raid0.c", i32 797, i32 1}
!7 = !{ptr @__UNIQUE_ID_file358, !8, !"__UNIQUE_ID_file358", i1 false, i1 false}
!8 = !{!"../drivers/md/raid0.c", i32 798, i32 1}
!9 = !{ptr @__UNIQUE_ID_license359, !8, !"__UNIQUE_ID_license359", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description360, !11, !"__UNIQUE_ID_description360", i1 false, i1 false}
!11 = !{!"../drivers/md/raid0.c", i32 799, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias361, !13, !"__UNIQUE_ID_alias361", i1 false, i1 false}
!13 = !{!"../drivers/md/raid0.c", i32 800, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias362, !15, !"__UNIQUE_ID_alias362", i1 false, i1 false}
!15 = !{!"../drivers/md/raid0.c", i32 801, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias363, !17, !"__UNIQUE_ID_alias363", i1 false, i1 false}
!17 = !{!"../drivers/md/raid0.c", i32 802, i32 1}
!18 = !{ptr @__param_str_default_layout, !1, !"__param_str_default_layout", i1 false, i1 false}
!19 = !{ptr @default_layout, !20, !"default_layout", i1 false, i1 false}
!20 = !{!"../drivers/md/raid0.c", i32 22, i32 12}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/raid0.c", i32 774, i32 11}
!23 = !{ptr @raid0_personality, !24, !"raid0_personality", i1 false, i1 false}
!24 = !{!"../drivers/md/raid0.c", i32 772, i32 30}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/raid0.c", i32 580, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/md.h", i32 632, i32 54}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/md.h", i32 771, i32 4}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @is_mddev_broken._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @is_mddev_broken._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/block.h", i32 456, i32 1}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/raid0.c", i32 381, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @raid0_run._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @raid0_run._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/raid0.c", i32 388, i32 3}
!51 = !{ptr @raid0_run._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @raid0_run._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/raid0.c", i32 428, i32 2}
!55 = !{ptr @raid0_run.__UNIQUE_ID_ddebug356, !54, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/raid0.c", i32 81, i32 3}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug339, !57, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/raid0.c", i32 95, i32 4}
!62 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug342, !61, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/raid0.c", i32 103, i32 5}
!65 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug343, !64, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/raid0.c", i32 112, i32 5}
!68 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug344, !67, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/raid0.c", i32 117, i32 4}
!71 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug345, !70, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/raid0.c", i32 121, i32 4}
!74 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug346, !73, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/raid0.c", i32 124, i32 4}
!77 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug347, !76, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/raid0.c", i32 128, i32 2}
!80 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug348, !79, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/raid0.c", i32 140, i32 3}
!83 = !{ptr @create_strip_zones._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @create_strip_zones._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/raid0.c", i32 142, i32 3}
!87 = !{ptr @create_strip_zones._entry.26, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @create_strip_zones._entry_ptr.28, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/raid0.c", i32 151, i32 3}
!91 = !{ptr @create_strip_zones._entry.29, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @create_strip_zones._entry_ptr.31, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/raid0.c", i32 197, i32 4}
!95 = !{ptr @create_strip_zones._entry.32, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @create_strip_zones._entry_ptr.34, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/raid0.c", i32 202, i32 4}
!99 = !{ptr @create_strip_zones._entry.35, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @create_strip_zones._entry_ptr.37, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/raid0.c", i32 207, i32 4}
!103 = !{ptr @create_strip_zones._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @create_strip_zones._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/raid0.c", i32 218, i32 3}
!107 = !{ptr @create_strip_zones._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @create_strip_zones._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/raid0.c", i32 235, i32 3}
!111 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug349, !110, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/raid0.c", i32 243, i32 5}
!114 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug350, !113, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/raid0.c", i32 248, i32 4}
!117 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug351, !116, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/raid0.c", i32 256, i32 5}
!120 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug352, !119, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/raid0.c", i32 264, i32 3}
!123 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug353, !122, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/raid0.c", i32 271, i32 3}
!126 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug354, !125, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/raid0.c", i32 276, i32 2}
!129 = !{ptr @create_strip_zones.__UNIQUE_ID_ddebug355, !128, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/raid0.c", i32 43, i32 2}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @dump_zones.__UNIQUE_ID_ddebug336, !131, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!134 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/raid0.c", i32 51, i32 39}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/md/raid0.c", i32 51, i32 49}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/raid0.c", i32 54, i32 3}
!142 = !{ptr @dump_zones.__UNIQUE_ID_ddebug337, !141, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/raid0.c", i32 57, i32 3}
!145 = !{ptr @dump_zones.__UNIQUE_ID_ddebug338, !144, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/md/raid0.c", i32 605, i32 18}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../drivers/md/raid0.c", i32 349, i32 2}
!150 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__func__.raid0_size, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/md/raid0.c", i32 741, i32 3}
!154 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @raid0_takeover._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @raid0_takeover._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/md/raid0.c", i32 752, i32 3}
!159 = !{ptr @raid0_takeover._entry.63, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @raid0_takeover._entry_ptr.65, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/md/raid0.c", i32 762, i32 2}
!163 = !{ptr @raid0_takeover._entry.66, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @raid0_takeover._entry_ptr.68, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/raid0.c", i32 615, i32 3}
!167 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @raid0_takeover_raid45._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @raid0_takeover_raid45._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/raid0.c", i32 624, i32 4}
!172 = !{ptr @raid0_takeover_raid45._entry.71, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @raid0_takeover_raid45._entry_ptr.73, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/raid0.c", i32 657, i32 3}
!176 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @raid0_takeover_raid10._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @raid0_takeover_raid10._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/raid0.c", i32 663, i32 3}
!181 = !{ptr @raid0_takeover_raid10._entry.76, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @raid0_takeover_raid10._entry_ptr.78, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/md/raid0.c", i32 668, i32 3}
!185 = !{ptr @raid0_takeover_raid10._entry.79, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @raid0_takeover_raid10._entry_ptr.81, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/raid0.c", i32 697, i32 3}
!189 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @raid0_takeover_raid1._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @raid0_takeover_raid1._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{!"sp"}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i32 0, i32 33}
!205 = !{!"branch_weights", i32 -102759400, i32 4193255}
!206 = !{i64 2148316665, i64 2148316945, i64 2148317279, i64 2148317613}
!207 = !{i64 2155738398, i64 2155738881, i64 2155738435, i64 2155738491, i64 2155738525, i64 2155738549, i64 2155738590, i64 2155738611, i64 2155738639, i64 2155738673}
!208 = !{!"auto-init"}
!209 = !{i64 2148291478, i64 2148291483, i64 2148291496, i64 2148291540, i64 2148291574, i64 2148291595}
!210 = !{i64 2155057279}
!211 = !{i64 2155057500}
!212 = !{i64 2149314158}
!213 = !{i64 2149315194}
