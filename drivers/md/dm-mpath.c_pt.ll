; ModuleID = '/llk/IR_all_yes/drivers/md/dm-mpath.c_pt.bc'
source_filename = "../drivers/md/dm-mpath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.multipath = type { i32, %struct.spinlock, i32, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.list_head, ptr, ptr, %struct.wait_queue_head, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.work_struct, ptr, %struct.work_struct, %struct.bio_list, %struct.timer_list }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bio_list = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.priority_group = type { %struct.list_head, ptr, %struct.path_selector, i32, i32, %struct.list_head, i8 }
%struct.path_selector = type { ptr, ptr }
%struct.path_selector_type = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pgpath = type { %struct.list_head, ptr, i32, %struct.dm_path, %struct.delayed_work, i8 }
%struct.dm_path = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dm_mpath_io = type { ptr, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@kmpath_handlerd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmultipathd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@multipath_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 37, ptr @.str, ptr null, [3 x i32] [i32 1, i32 14, i32 0], ptr @multipath_ctr, ptr @multipath_dtr, ptr @multipath_map_bio, ptr @multipath_clone_and_map, ptr @multipath_release_clone, ptr @multipath_end_io_bio, ptr @multipath_end_io, ptr @multipath_presuspend, ptr null, ptr @multipath_postsuspend, ptr null, ptr @multipath_resume, ptr @multipath_status, ptr @multipath_message, ptr @multipath_prepare_ioctl, ptr null, ptr @multipath_busy, ptr @multipath_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_multipath__295_2245_dm_multipath_init6 = internal global ptr @dm_multipath_init, section ".initcall6.init", align 4
@__exitcall_dm_multipath_exit = internal global ptr @dm_multipath_exit, section ".exitcall.exit", align 4
@__param_str_queue_if_no_path_timeout_secs = internal constant [43 x i8] c"dm_multipath.queue_if_no_path_timeout_secs\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@queue_if_no_path_timeout_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_queue_if_no_path_timeout_secs = internal constant %struct.kernel_param { ptr @__param_str_queue_if_no_path_timeout_secs, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @queue_if_no_path_timeout_secs } }, section "__param", align 4
@__UNIQUE_ID_queue_if_no_path_timeout_secstype296 = internal constant [58 x i8] c"dm_multipath.parmtype=queue_if_no_path_timeout_secs:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_queue_if_no_path_timeout_secs297 = internal constant [95 x i8] c"dm_multipath.parm=queue_if_no_path_timeout_secs:No available paths queue IO timeout in seconds\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [56 x i8] c"dm_multipath.description=device-mapper multipath target\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [59 x i8] c"dm_multipath.author=Sistina Software <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [42 x i8] c"dm_multipath.file=drivers/md/dm-multipath\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [25 x i8] c"dm_multipath.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multipath\00", [22 x i8] zeroinitializer }, align 32
@multipath_ctr._args = internal constant { [2 x %struct.dm_arg], [40 x i8] } { [2 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 1024, ptr @.str.1 }, %struct.dm_arg { i32 0, i32 1024, ptr @.str.2 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid number of priority groups\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid initial priority group number\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't allocate multipath\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid initial priority group\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"priority group count mismatch\00", [34 x i8] zeroinitializer }, align 32
@alloc_multipath.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&m->lock\00", [23 x i8] zeroinitializer }, align 32
@alloc_multipath.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&m->trigger_event)\00", [59 x i8] zeroinitializer }, align 32
@alloc_multipath.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&m->work_mutex\00", [17 x i8] zeroinitializer }, align 32
@alloc_multipath.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&m->nopath_timer)\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@queue_if_no_path_timeout_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014device-mapper: multipath: queue_if_no_path timeout on %s, failing queued IO\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"queue_if_no_path_timeout_work\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-mpath.c\00", [42 x i8] zeroinitializer }, align 32
@queue_if_no_path_timeout_work._entry_ptr = internal global ptr @queue_if_no_path_timeout_work._entry, section ".printk_index", align 4
@queue_if_no_path.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.15, ptr @.str.18, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_multipath\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"queue_if_no_path\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"device-mapper: multipath: %s: %s caller=%s queue_if_no_path=%d save_old_value=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@queue_if_no_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.15, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013device-mapper: multipath: %s: QIFNP disabled but saved as enabled, saving again loses state, not saving!\0A\00", [52 x i8] zeroinitializer }, align 32
@queue_if_no_path._entry_ptr = internal global ptr @queue_if_no_path._entry, section ".printk_index", align 4
@queue_if_no_path.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.15, ptr @.str.20, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"device-mapper: multipath: %s: after %s changes; QIFNP = %d; SQIFNP = %d; DNFS = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@parse_features._args = internal constant { [3 x %struct.dm_arg], [60 x i8] } { [3 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 8, ptr @.str.21 }, %struct.dm_arg { i32 1, i32 50, ptr @.str.22 }, %struct.dm_arg { i32 0, i32 60000, ptr @.str.23 }], [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid number of feature args\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pg_init_retries must be between 1 and 50\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pg_init_delay_msecs must be between 0 and 60000\00", [48 x i8] zeroinitializer }, align 32
@__func__.parse_features = private unnamed_addr constant [15 x i8] c"parse_features\00", align 1
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"retain_attached_hw_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pg_init_retries\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pg_init_delay_msecs\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"queue_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bio\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rq\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mq\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown 'queue_mode' requested\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unrecognised multipath feature request\00", [57 x i8] zeroinitializer }, align 32
@alloc_multipath_stage2.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&m->process_queued_bios)\00", [53 x i8] zeroinitializer }, align 32
@alloc_multipath_stage2.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&m->pg_init_wait\00", [47 x i8] zeroinitializer }, align 32
@process_queued_bios.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"__multipath_map_bio() returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__multipath_map_bio._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__multipath_map_bio.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.38, ptr @.str.15, ptr @.str.39, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__multipath_map_bio\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"device-mapper: multipath: %s: returning EIO; QIFNP = %d; SQIFNP = %d; DNFS = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@parse_hw_handler._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 1024, ptr @.str.40 }], [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid number of hardware handler args\00", [56 x i8] zeroinitializer }, align 32
@parse_hw_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.15, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: multipath: bio-based multipath doesn't allow hardware handler args\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parse_hw_handler\00", [47 x i8] zeroinitializer }, align 32
@parse_hw_handler._entry_ptr = internal global ptr @parse_hw_handler._entry, section ".printk_index", align 4
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"memory allocation failed\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@parse_priority_group._args = internal constant { [2 x %struct.dm_arg], [40 x i8] } { [2 x %struct.dm_arg] [%struct.dm_arg { i32 1, i32 1024, ptr @.str.46 }, %struct.dm_arg { i32 0, i32 1024, ptr @.str.47 }], [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid number of paths\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid number of selector args\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough priority group arguments\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't allocate priority group\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"not enough path parameters\00", [37 x i8] zeroinitializer }, align 32
@parse_path_selector._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 1024, ptr @.str.51 }], [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid number of path selector args\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown path selector type\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"path selector constructor failed\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no device given\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting device\00", [43 x i8] zeroinitializer }, align 32
@parse_path.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&p->activate_path)->work)\00", [50 x i8] zeroinitializer }, align 32
@parse_path.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&p->activate_path)->timer\00", [36 x i8] zeroinitializer }, align 32
@pg_init_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.15, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013device-mapper: multipath: Could not failover the device: Handler scsi_dh_%s Error %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pg_init_done\00", [19 x i8] zeroinitializer }, align 32
@pg_init_done._entry_ptr = internal global ptr @pg_init_done._entry, section ".printk_index", align 4
@pg_init_done._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.15, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: multipath: Could not failover device. Error %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@pg_init_done._entry_ptr.63 = internal global ptr @pg_init_done._entry.61, section ".printk_index", align 4
@fail_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.15, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014device-mapper: multipath: %s: Failing path %s.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fail_path\00", [22 x i8] zeroinitializer }, align 32
@fail_path._entry_ptr = internal global ptr @fail_path._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@setup_scsi_dh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.15, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016dm-mpath: retaining handler on device %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup_scsi_dh\00", [18 x i8] zeroinitializer }, align 32
@setup_scsi_dh._entry_ptr = internal global ptr @setup_scsi_dh._entry, section ".printk_index", align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error attaching hardware handler\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to set hardware handler parameters\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@multipath_clone_and_map._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@multipath_clone_and_map.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.15, ptr @.str.39, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"multipath_clone_and_map\00", [40 x i8] zeroinitializer }, align 32
@multipath_end_io_bio._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@multipath_end_io_bio.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.71, ptr @.str.15, ptr @.str.39, i8 1, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multipath_end_io_bio\00", [43 x i8] zeroinitializer }, align 32
@multipath_end_io._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@multipath_end_io.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.72, ptr @.str.15, ptr @.str.39, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"multipath_end_io\00", [47 x i8] zeroinitializer }, align 32
@__func__.multipath_presuspend = private unnamed_addr constant [21 x i8] c"multipath_presuspend\00", align 1
@multipath_resume.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.73, ptr @.str.15, ptr @.str.74, i8 1, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"multipath_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device-mapper: multipath: %s: %s finished; QIFNP = %d; SQIFNP = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2 %u %u \00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"queue_if_no_path \00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pg_init_retries %u \00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pg_init_delay_msecs %u \00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"retain_attached_hw_handler \00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"queue_mode bio \00", [16 x i8] zeroinitializer }, align 32
@multipath_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1 %s \00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c \00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u \00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %u \00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",nr_priority_groups=%u\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",pg_state_%d=%c\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",nr_pgpaths_%d=%u\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",path_selector_name_%d=%s\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c",path_name_%d_%d=%s,is_active_%d_%d=%c,fail_count_%d_%d=%u\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c",path_selector_status_%d_%d=\00", [35 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@__func__.multipath_message = private unnamed_addr constant [18 x i8] c"multipath_message\00", align 1
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fail_if_no_path\00", [16 x i8] zeroinitializer }, align 32
@multipath_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.multipath_message, ptr @.str.15, i32 1980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014device-mapper: multipath: Invalid multipath message arguments. Expected 2 arguments, got %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@multipath_message._entry_ptr = internal global ptr @multipath_message._entry, section ".printk_index", align 4
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable_group\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_group\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"switch_group\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reinstate_path\00", [17 x i8] zeroinitializer }, align 32
@multipath_message._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @__func__.multipath_message, ptr @.str.15, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014device-mapper: multipath: Unrecognised multipath message received: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@multipath_message._entry_ptr.106 = internal global ptr @multipath_message._entry.104, section ".printk_index", align 4
@multipath_message._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @__func__.multipath_message, ptr @.str.15, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014device-mapper: multipath: message: error getting device %s\0A\00", [34 x i8] zeroinitializer }, align 32
@multipath_message._entry_ptr.109 = internal global ptr @multipath_message._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@bypass_pg_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.15, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014device-mapper: multipath: invalid PG number supplied to bypass_pg\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bypass_pg_num\00", [18 x i8] zeroinitializer }, align 32
@bypass_pg_num._entry_ptr = internal global ptr @bypass_pg_num._entry, section ".printk_index", align 4
@switch_pg_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.15, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014device-mapper: multipath: invalid PG number supplied to switch_pg_num\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"switch_pg_num\00", [18 x i8] zeroinitializer }, align 32
@switch_pg_num._entry_ptr = internal global ptr @switch_pg_num._entry, section ".printk_index", align 4
@reinstate_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.103, ptr @.str.15, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014device-mapper: multipath: %s: Reinstating path %s.\0A\00", [42 x i8] zeroinitializer }, align 32
@reinstate_path._entry_ptr = internal global ptr @reinstate_path._entry, section ".printk_index", align 4
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmpathd\00", [24 x i8] zeroinitializer }, align 32
@dm_multipath_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.15, i32 2201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: multipath: failed to create workqueue kmpathd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm_multipath_init\00", [46 x i8] zeroinitializer }, align 32
@dm_multipath_init._entry_ptr = internal global ptr @dm_multipath_init._entry, section ".printk_index", align 4
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmpath_handlerd\00", [16 x i8] zeroinitializer }, align 32
@dm_multipath_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.118, ptr @.str.15, i32 2215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: multipath: failed to create workqueue kmpath_handlerd\0A\00", [56 x i8] zeroinitializer }, align 32
@dm_multipath_init._entry_ptr.122 = internal global ptr @dm_multipath_init._entry.120, section ".printk_index", align 4
@dm_multipath_init._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.118, ptr @.str.15, i32 2222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: multipath: request-based register failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dm_multipath_init._entry_ptr.125 = internal global ptr @dm_multipath_init._entry.123, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 10, i64 11, i64 13, i64 16]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"kmpath_handlerd\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 112, i32 47 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"kmultipathd\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 112, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"multipath_target\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2172, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"queue_if_no_path_timeout_secs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 35, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2173, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1174, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1175, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1176, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1191, i32 15 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1217, i32 15 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1244, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 210, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 212, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 213, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 220, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 782, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 738, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 748, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 758, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1106, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1107, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1108, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1109, i32 14 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1128, i32 29 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1133, i32 29 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1140, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1147, i32 29 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1151, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1153, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1154, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1157, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1164, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 231, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 249, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 722, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 644, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1054, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1055, i32 13 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1066, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1082, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1086, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 978, i32 29 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 979, i32 13 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 980, i32 13 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 990, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 996, i32 15 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1022, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 840, i32 29 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 841, i32 13 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 846, i32 15 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 859, i32 15 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 936, i32 15 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 947, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 954, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1545, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1582, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1333, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 904, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 909, i32 13 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 916, i32 14 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 520, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1703, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1665, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1765, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1804, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1807, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1814, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1816, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1818, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1820, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1824, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1834, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1836, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1859, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1868, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1872, i32 5 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1885, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1910, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1911, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1921, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1922, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1923, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1927, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1932, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1942, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1972, i32 35 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1980, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1984, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1987, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1990, i32 34 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1993, i32 34 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1998, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2004, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1492, i32 31 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1494, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1462, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1374, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2199, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2201, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2212, i32 20 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2215, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.571 = private constant [25 x i8] c"../drivers/md/dm-mpath.c\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2222, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_queue_if_no_path_timeout_secs297, ptr @__UNIQUE_ID_queue_if_no_path_timeout_secstype296, ptr @__exitcall_dm_multipath_exit, ptr @__initcall__kmod_dm_multipath__295_2245_dm_multipath_init6, ptr @__param_queue_if_no_path_timeout_secs, ptr @bypass_pg_num._entry, ptr @bypass_pg_num._entry_ptr, ptr @dm_multipath_exit, ptr @dm_multipath_init._entry, ptr @dm_multipath_init._entry.120, ptr @dm_multipath_init._entry.123, ptr @dm_multipath_init._entry_ptr, ptr @dm_multipath_init._entry_ptr.122, ptr @dm_multipath_init._entry_ptr.125, ptr @fail_path._entry, ptr @fail_path._entry_ptr, ptr @multipath_message._entry, ptr @multipath_message._entry.104, ptr @multipath_message._entry.107, ptr @multipath_message._entry_ptr, ptr @multipath_message._entry_ptr.106, ptr @multipath_message._entry_ptr.109, ptr @parse_hw_handler._entry, ptr @parse_hw_handler._entry_ptr, ptr @pg_init_done._entry, ptr @pg_init_done._entry.61, ptr @pg_init_done._entry_ptr, ptr @pg_init_done._entry_ptr.63, ptr @queue_if_no_path._entry, ptr @queue_if_no_path._entry_ptr, ptr @queue_if_no_path_timeout_work._entry, ptr @queue_if_no_path_timeout_work._entry_ptr, ptr @reinstate_path._entry, ptr @reinstate_path._entry_ptr, ptr @setup_scsi_dh._entry, ptr @setup_scsi_dh._entry_ptr, ptr @switch_pg_num._entry, ptr @switch_pg_num._entry_ptr, ptr @kmpath_handlerd, ptr @kmultipathd, ptr @multipath_target, ptr @queue_if_no_path_timeout_secs, ptr @.str, ptr @multipath_ctr._args, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @alloc_multipath.__key, ptr @.str.6, ptr @alloc_multipath.__key.7, ptr @.str.8, ptr @alloc_multipath.__key.9, ptr @.str.10, ptr @alloc_multipath.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @parse_features._args, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @alloc_multipath_stage2.__key, ptr @.str.33, ptr @alloc_multipath_stage2.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @parse_hw_handler._args, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @parse_priority_group._args, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @parse_path_selector._args, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @parse_path.__key, ptr @.str.56, ptr @parse_path.__key.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @multipath_clone_and_map._rs, ptr @.str.70, ptr @multipath_end_io_bio._rs, ptr @.str.71, ptr @multipath_end_io._rs, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmpath_handlerd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmultipathd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_if_no_path_timeout_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_ctr._args to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_if_no_path_timeout_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_if_no_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_features._args to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath_stage2.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_multipath_stage2.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_hw_handler._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_hw_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_priority_group._args to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_path_selector._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_path.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_path.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_init_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pg_init_done._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_scsi_dh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_clone_and_map._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_end_io_bio._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_end_io._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_message._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multipath_message._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_pg_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_pg_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reinstate_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_multipath_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_multipath_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_multipath_init._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_multipath_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @kmpath_handlerd, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  %1 = load ptr, ptr @kmultipathd, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #13
  tail call void @dm_unregister_target(ptr noundef nonnull @multipath_target) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_multipath_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.116, i32 noundef 8, i32 noundef 0) #13
  store ptr %call, ptr @kmultipathd, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.119, i32 noundef 655370, i32 noundef 1) #13
  store ptr %call2, ptr @kmpath_handlerd, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #16
  br label %bad_alloc_kmpath_handlerd

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @dm_register_target(ptr noundef nonnull @multipath_target) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call11) #16
  %0 = load ptr, ptr @kmpath_handlerd, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  br label %bad_alloc_kmpath_handlerd

bad_alloc_kmpath_handlerd:                        ; preds = %do.end15, %do.end7
  %r.0 = phi i32 [ -22, %do.end15 ], [ -12, %do.end7 ]
  %1 = load ptr, ptr @kmultipathd, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %bad_alloc_kmpath_handlerd, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end10.cleanup_crit_edge ], [ %r.0, %bad_alloc_kmpath_handlerd ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %b.i.i.i = alloca [32 x i8], align 1
  %ps_argc.i.i = alloca i32, align 4
  %nr_selector_args.i = alloca i32, align 4
  %path_args.i = alloca %struct.dm_arg_set, align 4
  %hw_argc.i = alloca i32, align 4
  %argc.i = alloca i32, align 4
  %as = alloca %struct.dm_arg_set, align 4
  %next_pg_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #13
  %0 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_pg_num) #13
  %1 = ptrtoint ptr %next_pg_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %next_pg_num, align 4, !annotation !310
  %2 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %argc, ptr %as, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %argv, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 396) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %error, align 8
  br label %cleanup66

if.end:                                           ; preds = %entry
  %priority_groups.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %priority_groups.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %priority_groups.i, ptr %priority_groups.i, align 8
  %prev.i.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %priority_groups.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @alloc_multipath.__key, i16 noundef signext 3) #13
  %nr_valid_paths.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_valid_paths.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %nr_valid_paths.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %nr_valid_paths.i, align 8
  %trigger_event.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %trigger_event.i, i32 noundef 0) #13
  %9 = ptrtoint ptr %trigger_event.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %trigger_event.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @alloc_multipath.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry6.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i32.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 17, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry6.i, ptr %prev.i32.i, align 8
  %func.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @trigger_event, ptr %func.i, align 4
  %work_mutex.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %work_mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @alloc_multipath.__key.9) #13
  %queue_mode.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %queue_mode.i, align 8
  %ti13.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %ti13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ti, ptr %ti13.i, align 4
  %private.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %private.i, align 4
  %nopath_timer.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %nopath_timer.i, ptr noundef nonnull @queue_if_no_path_timeout_work, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @alloc_multipath.__key.11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc.i) #13
  %16 = ptrtoint ptr %argc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %argc.i, align 4, !annotation !310
  %17 = ptrtoint ptr %ti13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ti13.i, align 4
  %error.i = getelementptr inbounds %struct.dm_target, ptr %18, i32 0, i32 12
  %call.i = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_features._args, ptr noundef nonnull %as, ptr noundef nonnull %argc.i, ptr noundef %error.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i116 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i116, label %if.end.i, label %if.end.parse_features.exit.thread_crit_edge

if.end.parse_features.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_features.exit.thread

if.end.i:                                         ; preds = %if.end
  %19 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %argc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %parse_features.exit.thread159, label %do.body.preheader.i

parse_features.exit.thread159:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #13
  br label %if.end6

do.body.preheader.i:                              ; preds = %if.end.i
  %pg_init_retries.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 12
  %pg_init_delay_msecs.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 13
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %call5.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #13
  %21 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %argc.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %argc.i, align 4
  %call6.i = call i32 @strcasecmp(ptr noundef %call5.i, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @queue_if_no_path(ptr noundef %call7.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @__func__.parse_features) #13
  br label %do.cond.i

if.end10.i:                                       ; preds = %do.body.i
  %call11.i = call i32 @strcasecmp(ptr noundef %call5.i, ptr noundef nonnull @.str.24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 3, ptr noundef %call7.i.i.i) #13
  br label %do.cond.i

if.end14.i:                                       ; preds = %if.end10.i
  %call15.i = call i32 @strcasecmp(ptr noundef %call5.i, ptr noundef nonnull @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp ne i32 %call15.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end21.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([3 x %struct.dm_arg], ptr @parse_features._args, i32 0, i32 1), ptr noundef nonnull %as, ptr noundef %pg_init_retries.i, ptr noundef %error.i) #13
  %23 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %argc.i, align 4
  %dec20.i = add i32 %24, -1
  store i32 %dec20.i, ptr %argc.i, align 4
  br label %do.cond.i

if.end21.i:                                       ; preds = %if.end14.i
  %call22.i = call i32 @strcasecmp(ptr noundef %call5.i, ptr noundef nonnull @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true24.i, label %if.end30.i

land.lhs.true24.i:                                ; preds = %if.end21.i
  br i1 %cmp.not.i, label %land.lhs.true24.i.do.cond.thread.i_crit_edge, label %if.then26.i

land.lhs.true24.i.do.cond.thread.i_crit_edge:     ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

if.then26.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28.i = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([3 x %struct.dm_arg], ptr @parse_features._args, i32 0, i32 2), ptr noundef nonnull %as, ptr noundef %pg_init_delay_msecs.i, ptr noundef %error.i) #13
  %25 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %argc.i, align 4
  %dec29.i = add i32 %26, -1
  store i32 %dec29.i, ptr %argc.i, align 4
  br label %do.cond.i

if.end30.i:                                       ; preds = %if.end21.i
  %call31.i = call i32 @strcasecmp(ptr noundef %call5.i, ptr noundef nonnull @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp ne i32 %call31.i, 0
  %brmerge.i = select i1 %tobool32.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge.i, label %if.end30.i.do.cond.thread.i_crit_edge, label %if.then35.i

if.end30.i.do.cond.thread.i_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

if.then35.i:                                      ; preds = %if.end30.i
  %call36.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #13
  %call37.i = call i32 @strcasecmp(ptr noundef %call36.i, ptr noundef nonnull @.str.28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %queue_mode.i, align 8
  br label %if.end49.i

if.else.i:                                        ; preds = %if.then35.i
  %call40.i = call i32 @strcasecmp(ptr noundef %call36.i, ptr noundef nonnull @.str.29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.else.i.if.then44.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then44.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %call42.i = call i32 @strcasecmp(ptr noundef %call36.i, ptr noundef nonnull @.str.30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %lor.lhs.false.i.if.then44.i_crit_edge, label %if.else46.i

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %if.else.i.if.then44.i_crit_edge
  %28 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %queue_mode.i, align 8
  br label %if.end49.i

if.else46.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.31, ptr %error.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else46.i, %if.then44.i, %if.then39.i
  %r.1.i = phi i32 [ -22, %if.else46.i ], [ 0, %if.then44.i ], [ 0, %if.then39.i ]
  %30 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %argc.i, align 4
  %dec50.i = add i32 %31, -1
  store i32 %dec50.i, ptr %argc.i, align 4
  br label %do.cond.i

do.cond.thread.i:                                 ; preds = %if.end30.i.do.cond.thread.i_crit_edge, %land.lhs.true24.i.do.cond.thread.i_crit_edge
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.32, ptr %error.i, align 8
  br label %parse_features.exit.thread

do.cond.i:                                        ; preds = %if.end49.i, %if.then26.i, %if.then17.i, %if.then13.i, %if.then8.i
  %r.2.i = phi i32 [ %r.1.i, %if.end49.i ], [ %call28.i, %if.then26.i ], [ %call19.i, %if.then17.i ], [ 0, %if.then13.i ], [ 0, %if.then8.i ]
  %33 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %argc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool53.not.i = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2.i)
  %tobool54.not.i = icmp eq i32 %r.2.i, 0
  %or.cond80.i = select i1 %tobool53.not.i, i1 %tobool54.not.i, i1 false
  br i1 %or.cond80.i, label %do.cond.i.do.body.i_crit_edge, label %parse_features.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

parse_features.exit.thread:                       ; preds = %do.cond.thread.i, %if.end.parse_features.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #13
  br label %bad

parse_features.exit:                              ; preds = %do.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #13
  br i1 %tobool54.not.i, label %parse_features.exit.if.end6_crit_edge, label %parse_features.exit.bad_crit_edge

parse_features.exit.bad_crit_edge:                ; preds = %parse_features.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad

parse_features.exit.if.end6_crit_edge:            ; preds = %parse_features.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %parse_features.exit.if.end6_crit_edge, %parse_features.exit.thread159
  %35 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_mode.i, align 8
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %if.end6.alloc_multipath_stage2.exit_crit_edge [
    i32 0, label %if.then.i118
    i32 1, label %do.body.i122
  ]

if.end6.alloc_multipath_stage2.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_multipath_stage2.exit

if.then.i118:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %queue_mode.i, align 8
  br label %alloc_multipath_stage2.exit

do.body.i122:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %process_queued_bios.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 19
  call void @__init_work(ptr noundef %process_queued_bios.i, i32 noundef 0) #13
  %39 = ptrtoint ptr %process_queued_bios.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %process_queued_bios.i, align 8
  %lockdep_map.i119 = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 19, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i119, ptr noundef nonnull @.str.33, ptr noundef nonnull @alloc_multipath_stage2.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %40 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i120 = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 19, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i.i120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry8.i, ptr %prev.i.i120, align 8
  %func.i121 = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 19, i32 2
  %42 = ptrtoint ptr %func.i121 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @process_queued_bios, ptr %func.i121, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %call7.i.i.i) #13
  br label %alloc_multipath_stage2.exit

alloc_multipath_stage2.exit:                      ; preds = %do.body.i122, %if.then.i118, %if.end6.alloc_multipath_stage2.exit_crit_edge
  %43 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ti, align 8
  %45 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue_mode.i, align 8
  call void @dm_table_set_type(ptr noundef %44, i32 noundef %46) #13
  call void @_set_bit(i32 noundef 0, ptr noundef %call7.i.i.i) #13
  %pg_init_in_progress.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i123 = call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_in_progress.i, i32 noundef 4) #13
  %47 = ptrtoint ptr %pg_init_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %pg_init_in_progress.i, align 4
  %pg_init_count.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 15
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_count.i, i32 noundef 4) #13
  %48 = ptrtoint ptr %pg_init_count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %pg_init_count.i, align 8
  %pg_init_delay_msecs.i124 = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 13
  %49 = ptrtoint ptr %pg_init_delay_msecs.i124 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %pg_init_delay_msecs.i124, align 8
  %pg_init_wait.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %pg_init_wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_multipath_stage2.__key.34) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_argc.i) #13
  %50 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %hw_argc.i, align 4, !annotation !310
  %51 = ptrtoint ptr %ti13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ti13.i, align 4
  %error.i127 = getelementptr inbounds %struct.dm_target, ptr %52, i32 0, i32 12
  %call.i128 = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_hw_handler._args, ptr noundef nonnull %as, ptr noundef nonnull %hw_argc.i, ptr noundef %error.i127) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i131, label %alloc_multipath_stage2.exit.parse_hw_handler.exit_crit_edge

alloc_multipath_stage2.exit.parse_hw_handler.exit_crit_edge: ; preds = %alloc_multipath_stage2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_hw_handler.exit

if.end.i131:                                      ; preds = %alloc_multipath_stage2.exit
  %53 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_argc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool2.not.i130 = icmp eq i32 %54, 0
  br i1 %tobool2.not.i130, label %if.end.i131.if.end14_crit_edge, label %if.end4.i

if.end.i131.if.end14_crit_edge:                   ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end4.i:                                        ; preds = %if.end.i131
  %55 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i = icmp eq i32 %56, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dm_consume_args(ptr noundef nonnull %as, i32 noundef %54) #13
  %call6.i133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %if.end14

if.end7.i:                                        ; preds = %if.end4.i
  %call8.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #13
  %call9.i = call noalias ptr @kstrdup(ptr noundef %call8.i, i32 noundef 3264) #13
  %hw_handler_name.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %hw_handler_name.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i, ptr %hw_handler_name.i, align 8
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end7.i.parse_hw_handler.exit_crit_edge, label %if.end13.i

if.end7.i.parse_hw_handler.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_hw_handler.exit

if.end13.i:                                       ; preds = %if.end7.i
  %58 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_argc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp14.i = icmp ugt i32 %59, 1
  br i1 %cmp14.i, label %for.cond.preheader.i, label %if.end13.i.if.end42.i_crit_edge

if.end13.i.if.end42.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

for.cond.preheader.i:                             ; preds = %if.end13.i
  %sub.i = add i32 %59, -2
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %0, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %len.079.i = phi i32 [ 4, %for.cond.preheader.i ], [ %add18.i, %for.body.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %61, i32 %i.078.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %call17.i = call i32 @strlen(ptr noundef %63) #18
  %add.i = add i32 %call17.i, %len.079.i
  %add18.i = add i32 %add.i, 1
  %inc.i = add i32 %i.078.i, 1
  %cmp16.not.i = icmp ugt i32 %inc.i, %sub.i
  br i1 %cmp16.not.i, label %if.end8.i.i.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end8.i.i.i:                                    ; preds = %for.body.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add18.i, i32 noundef 3520) #19
  %hw_handler_params.i = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 10
  %64 = ptrtoint ptr %hw_handler_params.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i.i, ptr %hw_handler_params.i, align 4
  %tobool20.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool20.not.i, label %fail.i, label %if.end23.i

if.end23.i:                                       ; preds = %if.end8.i.i.i
  %65 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hw_argc.i, align 4
  %sub24.i = add i32 %66, -1
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.44, i32 noundef %sub24.i) #13
  %add26.i = add i32 %call25.i, 1
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %add26.i
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %0, align 4
  %69 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hw_argc.i, align 4
  %sub28.i = add i32 %70, -2
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %if.end23.i
  %i.182.i = phi i32 [ 0, %if.end23.i ], [ %inc35.i, %for.body30.i.for.body30.i_crit_edge ]
  %p.081.i = phi ptr [ %add.ptr.i, %if.end23.i ], [ %add.ptr37.i, %for.body30.i.for.body30.i_crit_edge ]
  %arrayidx32.i = getelementptr ptr, ptr %68, i32 %i.182.i
  %71 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx32.i, align 4
  %stpcpy.i = call ptr @stpcpy(ptr %p.081.i, ptr %72) #18
  %73 = ptrtoint ptr %stpcpy.i to i32
  %74 = ptrtoint ptr %p.081.i to i32
  %inc35.i = add i32 %i.182.i, 1
  %75 = sub i32 1, %74
  %add36.i = add i32 %75, %73
  %add.ptr37.i = getelementptr i8, ptr %p.081.i, i32 %add36.i
  %cmp29.not.i = icmp ugt i32 %inc35.i, %sub28.i
  br i1 %cmp29.not.i, label %for.body30.i.if.end42.i_crit_edge, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30.i

for.body30.i.if.end42.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.end42.i:                                       ; preds = %for.body30.i.if.end42.i_crit_edge, %if.end13.i.if.end42.i_crit_edge
  %76 = ptrtoint ptr %hw_argc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_argc.i, align 4
  %sub43.i = add i32 %77, -1
  call void @dm_consume_args(ptr noundef nonnull %as, i32 noundef %sub43.i) #13
  br label %if.end14

fail.i:                                           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %error.i127 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.43, ptr %error.i127, align 8
  %79 = ptrtoint ptr %hw_handler_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_handler_name.i, align 8
  call void @kfree(ptr noundef %80) #13
  %81 = ptrtoint ptr %hw_handler_name.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %hw_handler_name.i, align 8
  br label %parse_hw_handler.exit

parse_hw_handler.exit:                            ; preds = %fail.i, %if.end7.i.parse_hw_handler.exit_crit_edge, %alloc_multipath_stage2.exit.parse_hw_handler.exit_crit_edge
  %retval.0.i135 = phi i32 [ -12, %fail.i ], [ -22, %alloc_multipath_stage2.exit.parse_hw_handler.exit_crit_edge ], [ -22, %if.end7.i.parse_hw_handler.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_argc.i) #13
  br label %bad

if.end14:                                         ; preds = %if.end42.i, %if.then5.i, %if.end.i131.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_argc.i) #13
  %nr_priority_groups = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 7
  %error15 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call16 = call i32 @dm_read_arg(ptr noundef nonnull @multipath_ctr._args, ptr noundef nonnull %as, ptr noundef %nr_priority_groups, ptr noundef %error15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.bad_crit_edge

if.end14.bad_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad

if.end19:                                         ; preds = %if.end14
  %call21 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([2 x %struct.dm_arg], ptr @multipath_ctr._args, i32 0, i32 1), ptr noundef nonnull %as, ptr noundef nonnull %next_pg_num, ptr noundef %error15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.bad_crit_edge

if.end19.bad_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad

if.end24:                                         ; preds = %if.end19
  %82 = ptrtoint ptr %nr_priority_groups to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_priority_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool26.not = icmp eq i32 %83, 0
  %84 = ptrtoint ptr %next_pg_num to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %next_pg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool27.not = icmp eq i32 %85, 0
  br i1 %tobool26.not, label %land.lhs.true, label %land.lhs.true30

land.lhs.true:                                    ; preds = %if.end24
  br i1 %tobool27.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true30:                                  ; preds = %if.end24
  br i1 %tobool27.not, label %land.lhs.true30.if.then32_crit_edge, label %land.lhs.true30.if.end34_crit_edge

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true30.if.then32_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.then32:                                        ; preds = %land.lhs.true30.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %86 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.4, ptr %error15, align 8
  br label %bad

if.end34:                                         ; preds = %land.lhs.true30.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %87 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool36.not176 = icmp eq i32 %88, 0
  br i1 %tobool36.not176, label %if.end34.while.end_crit_edge, label %while.body.lr.ph

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end34
  %89 = getelementptr inbounds %struct.dm_arg_set, ptr %path_args.i, i32 0, i32 1
  %next_pg = getelementptr inbounds %struct.multipath, ptr %call7.i.i.i, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pg_count.0177 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths.i, i32 noundef 4) #13
  %90 = ptrtoint ptr %nr_valid_paths.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %nr_valid_paths.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_selector_args.i) #13
  %92 = ptrtoint ptr %nr_selector_args.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %nr_selector_args.i, align 4, !annotation !310
  %93 = ptrtoint ptr %ti13.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ti13.i, align 4
  %95 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp.i137 = icmp ult i32 %96, 2
  br i1 %cmp.i137, label %if.then.i139, label %if.end.i140

if.then.i139:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %as, align 4
  br label %parse_priority_group.exit.thread

if.end.i140:                                      ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i140.parse_priority_group.exit.thread_crit_edge, label %if.end7.i142

if.end.i140.parse_priority_group.exit.thread_crit_edge: ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_priority_group.exit.thread

if.end7.i142:                                     ; preds = %if.end.i140
  %pgpaths.i.i = getelementptr inbounds %struct.priority_group, ptr %call7.i.i.i.i, i32 0, i32 5
  %99 = ptrtoint ptr %pgpaths.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %pgpaths.i.i, ptr %pgpaths.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.priority_group, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %pgpaths.i.i, ptr %prev.i.i.i, align 8
  %m8.i = getelementptr inbounds %struct.priority_group, ptr %call7.i.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %m8.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i, ptr %m8.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ps_argc.i.i) #13
  %102 = ptrtoint ptr %ps_argc.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %ps_argc.i.i, align 4, !annotation !310
  %call.i.i141 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #13
  %call1.i.i = call ptr @dm_get_path_selector(ptr noundef %call.i.i141) #13
  %tobool.not.i80.i = icmp eq ptr %call1.i.i, null
  %error.i.i = getelementptr inbounds %struct.dm_target, ptr %94, i32 0, i32 12
  br i1 %tobool.not.i80.i, label %if.then.i81.i, label %if.end.i.i

if.then.i81.i:                                    ; preds = %if.end7.i142
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.52, ptr %error.i.i, align 8
  br label %parse_path_selector.exit.thread.i

if.end.i.i:                                       ; preds = %if.end7.i142
  %call3.i.i = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_path_selector._args, ptr noundef nonnull %as, ptr noundef nonnull %ps_argc.i.i, ptr noundef %error.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dm_put_path_selector(ptr noundef nonnull %call1.i.i) #13
  br label %parse_path_selector.exit.thread.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %create.i.i = getelementptr inbounds %struct.path_selector_type, ptr %call1.i.i, i32 0, i32 4
  %104 = ptrtoint ptr %create.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %create.i.i, align 4
  %ps.i.i = getelementptr inbounds %struct.priority_group, ptr %call7.i.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %ps_argc.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ps_argc.i.i, align 4
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %0, align 4
  %call7.i.i = call i32 %105(ptr noundef %ps.i.i, i32 noundef %107, ptr noundef %109) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end12.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dm_put_path_selector(ptr noundef nonnull %call1.i.i) #13
  %110 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.53, ptr %error.i.i, align 8
  br label %parse_path_selector.exit.thread.i

parse_path_selector.exit.thread.i:                ; preds = %if.then9.i.i, %if.then5.i.i, %if.then.i81.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.then.i81.i ], [ %call7.i.i, %if.then9.i.i ], [ -22, %if.then5.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ps_argc.i.i) #13
  br label %bad.i

if.end12.i:                                       ; preds = %if.end6.i.i
  %111 = ptrtoint ptr %ps.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call1.i.i, ptr %ps.i.i, align 4
  %112 = ptrtoint ptr %ps_argc.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ps_argc.i.i, align 4
  call void @dm_consume_args(ptr noundef nonnull %as, i32 noundef %113) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ps_argc.i.i) #13
  %nr_pgpaths.i = getelementptr inbounds %struct.priority_group, ptr %call7.i.i.i.i, i32 0, i32 4
  %call14.i = call i32 @dm_read_arg(ptr noundef nonnull @parse_priority_group._args, ptr noundef nonnull %as, ptr noundef %nr_pgpaths.i, ptr noundef %error.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.bad.i_crit_edge

if.end12.i.bad.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad.i

if.end17.i:                                       ; preds = %if.end12.i
  %call19.i143 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([2 x %struct.dm_arg], ptr @parse_priority_group._args, i32 0, i32 1), ptr noundef nonnull %as, ptr noundef nonnull %nr_selector_args.i, ptr noundef %error.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i143)
  %tobool20.not.i144 = icmp eq i32 %call19.i143, 0
  br i1 %tobool20.not.i144, label %if.end22.i, label %if.end17.i.bad.i_crit_edge

if.end17.i.bad.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad.i

if.end22.i:                                       ; preds = %if.end17.i
  %114 = ptrtoint ptr %nr_selector_args.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nr_selector_args.i, align 4
  %add.i145 = add i32 %115, 1
  %116 = ptrtoint ptr %nr_pgpaths.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr_pgpaths.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp24101.not.i = icmp eq i32 %117, 0
  br i1 %cmp24101.not.i, label %if.end22.i.parse_priority_group.exit_crit_edge, label %for.body.lr.ph.i

if.end22.i.parse_priority_group.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_priority_group.exit

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %private.i.i = getelementptr inbounds %struct.dm_target, ptr %94, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i145)
  %cmp.i.i = icmp eq i32 %add.i145, 0
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i.for.body.i146_crit_edge, %for.body.lr.ph.i
  %i.0102.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i151, %for.inc.i.for.body.i146_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path_args.i) #13
  %118 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %add.i145)
  %cmp26.i = icmp ult i32 %119, %add.i145
  br i1 %cmp26.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.50, ptr %error.i.i, align 8
  br label %cleanup.thread.i

if.end29.i:                                       ; preds = %for.body.i146
  %121 = ptrtoint ptr %path_args.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add.i145, ptr %path_args.i, align 4
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %0, align 4
  %124 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %89, align 4
  %125 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %private.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i83.i, label %if.end.i84.i

if.then.i83.i:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.54, ptr %error.i.i, align 8
  br label %if.then34.i

if.end.i84.i:                                     ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %128 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3520, i32 noundef 128) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i84.i.if.then34.i_crit_edge, label %if.end4.i.i

if.end.i84.i.if.then34.i_crit_edge:               ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34.i

if.end4.i.i:                                      ; preds = %if.end.i84.i
  %is_active.i.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %is_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load.i.i.i = load i8, ptr %is_active.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %is_active.i.i.i, align 4
  %call5.i.i = call ptr @dm_shift_arg(ptr noundef nonnull %path_args.i) #13
  %130 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %94, align 8
  %call6.i.i = call i32 @dm_table_get_mode(ptr noundef %131) #13
  %path.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %call7.i85.i = call i32 @dm_get_device(ptr noundef %94, ptr noundef %call5.i.i, i32 noundef %call6.i.i, ptr noundef %path.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i85.i)
  %tobool8.not.i86.i = icmp eq i32 %call7.i85.i, 0
  br i1 %tobool8.not.i86.i, label %if.end11.i88.i, label %if.then9.i87.i

if.then9.i87.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.55, ptr %error.i.i, align 8
  br label %bad.i.i

if.end11.i88.i:                                   ; preds = %if.end4.i.i
  %133 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %path.i.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %136, i32 0, i32 18
  %137 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bd_queue.i.i.i, align 4
  %call15.i.i = call ptr @scsi_dh_attached_handler_name(ptr noundef %138, i32 noundef 3264) #13
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %lor.lhs.false.i.i, label %if.end11.i88.i.do.body19.i.i_crit_edge

if.end11.i88.i.do.body19.i.i_crit_edge:           ; preds = %if.end11.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19.i.i

lor.lhs.false.i.i:                                ; preds = %if.end11.i88.i
  %hw_handler_name.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 9
  %139 = ptrtoint ptr %hw_handler_name.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw_handler_name.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %140, null
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i.if.end45.i.i_crit_edge, label %lor.lhs.false.i.i.do.body19.i.i_crit_edge

lor.lhs.false.i.i.do.body19.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19.i.i

lor.lhs.false.i.i.if.end45.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i.i

do.body19.i.i:                                    ; preds = %lor.lhs.false.i.i.do.body19.i.i_crit_edge, %if.end11.i88.i.do.body19.i.i_crit_edge
  %activate_path.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4
  call void @__init_work(ptr noundef %activate_path.i.i, i32 noundef 0) #13
  %141 = ptrtoint ptr %activate_path.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -64, ptr %activate_path.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @parse_path.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry26.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 1
  %142 = ptrtoint ptr %entry26.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %entry26.i.i, ptr %entry26.i.i, align 4
  %prev.i.i89.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %prev.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %entry26.i.i, ptr %prev.i.i89.i, align 8
  %func.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 2
  %144 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @activate_path_work, ptr %func.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.pgpath, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.58, ptr noundef nonnull @parse_path.__key.57) #13
  %145 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %path.i.i, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %bd_queue.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %148, i32 0, i32 18
  %149 = ptrtoint ptr %bd_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bd_queue.i.i.i.i, align 4
  %151 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %126, align 4
  %153 = and i32 %152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i.i.i.i147 = icmp eq i32 %153, 0
  br i1 %tobool.not.i.i.i.i147, label %do.body19.i.i.if.end12.i.i.i_crit_edge, label %mpath_double_check_test_bit.exit.i.i.i

do.body19.i.i.if.end12.i.i.i_crit_edge:           ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.i.i

mpath_double_check_test_bit.exit.i.i.i:           ; preds = %do.body19.i.i
  %lock.i.i.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 1
  %call5.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i) #13
  %154 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %126, align 4
  %156 = and i32 %155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool10.i.not.i.i.i = icmp eq i32 %156, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i, i32 noundef %call5.i.i.i.i) #13
  br i1 %tobool10.i.not.i.i.i, label %mpath_double_check_test_bit.exit.i.i.i.if.end12.i.i.i_crit_edge, label %mpath_double_check_test_bit.exit.i.i.i.retain.i.i.i_crit_edge

mpath_double_check_test_bit.exit.i.i.i.retain.i.i.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %retain.i.i.i

mpath_double_check_test_bit.exit.i.i.i.if.end12.i.i.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.i.i

retain.i.i.i:                                     ; preds = %if.then18.i.i.i, %mpath_double_check_test_bit.exit.i.i.i.retain.i.i.i_crit_edge
  %attached_handler_name.0.i.i = phi ptr [ %attached_handler_name.1.i.i, %if.then18.i.i.i ], [ %call15.i.i, %mpath_double_check_test_bit.exit.i.i.i.retain.i.i.i_crit_edge ]
  %tobool.not.i90.i.i = icmp eq ptr %attached_handler_name.0.i.i, null
  br i1 %tobool.not.i90.i.i, label %retain.i.i.i.if.end12.i.i.i_crit_edge, label %if.then2.i.i.i

retain.i.i.i.if.end12.i.i.i_crit_edge:            ; preds = %retain.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.i.i

if.then2.i.i.i:                                   ; preds = %retain.i.i.i
  %hw_handler_name.i.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 9
  %157 = ptrtoint ptr %hw_handler_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw_handler_name.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %158, null
  br i1 %tobool3.not.i.i.i, label %if.then2.i.i.i.if.end.i91.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then2.i.i.i.if.end.i91.i.i_crit_edge:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i91.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then2.i.i.i
  %call5.i.i.i = call i32 @strcmp(ptr noundef nonnull %attached_handler_name.0.i.i, ptr noundef nonnull %158) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i91.i.i_crit_edge, label %if.then7.i.i.i

land.lhs.true.i.i.i.if.end.i91.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i91.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw_handler_params.i.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 10
  %159 = ptrtoint ptr %hw_handler_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hw_handler_params.i.i.i, align 4
  call void @kfree(ptr noundef %160) #13
  %161 = ptrtoint ptr %hw_handler_params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %hw_handler_params.i.i.i, align 4
  br label %if.end.i91.i.i

if.end.i91.i.i:                                   ; preds = %if.then7.i.i.i, %land.lhs.true.i.i.i.if.end.i91.i.i_crit_edge, %if.then2.i.i.i.if.end.i91.i.i_crit_edge
  %162 = ptrtoint ptr %hw_handler_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw_handler_name.i.i.i, align 4
  call void @kfree(ptr noundef %163) #13
  %164 = ptrtoint ptr %hw_handler_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %attached_handler_name.0.i.i, ptr %hw_handler_name.i.i.i, align 4
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i91.i.i, %retain.i.i.i.if.end12.i.i.i_crit_edge, %mpath_double_check_test_bit.exit.i.i.i.if.end12.i.i.i_crit_edge, %do.body19.i.i.if.end12.i.i.i_crit_edge
  %attached_handler_name.1.i.i = phi ptr [ %call15.i.i, %do.body19.i.i.if.end12.i.i.i_crit_edge ], [ null, %retain.i.i.i.if.end12.i.i.i_crit_edge ], [ null, %if.end.i91.i.i ], [ %call15.i.i, %mpath_double_check_test_bit.exit.i.i.i.if.end12.i.i.i_crit_edge ]
  %hw_handler_name13.i.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 9
  %165 = ptrtoint ptr %hw_handler_name13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw_handler_name13.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %166, null
  br i1 %tobool14.not.i.i.i, label %if.end12.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge, label %if.then15.i.i.i

if.end12.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_scsi_dh.exit.thread.i.i

if.then15.i.i.i:                                  ; preds = %if.end12.i.i.i
  %call17.i.i.i = call i32 @scsi_dh_attach(ptr noundef %150, ptr noundef nonnull %166) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call17.i.i.i)
  %cmp.i.i.i148 = icmp eq i32 %call17.i.i.i, -16
  br i1 %cmp.i.i.i148, label %if.then18.i.i.i, label %if.end21.i.i.i

if.then18.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i.i.i) #13
  %167 = call ptr @memset(ptr %b.i.i.i, i32 255, i32 32)
  %call19.i.i.i = call ptr @bdevname(ptr noundef %148, ptr noundef nonnull %b.i.i.i) #13
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %call19.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i.i.i) #13
  br label %retain.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %call17.i.i.i, 0
  br i1 %cmp22.i.i.i, label %if.end21.i.i.i.if.then41.i.i_crit_edge, label %if.end24.i.i.i

if.end21.i.i.i.if.then41.i.i_crit_edge:           ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41.i.i

if.end24.i.i.i:                                   ; preds = %if.end21.i.i.i
  %hw_handler_params25.i.i.i = getelementptr inbounds %struct.multipath, ptr %126, i32 0, i32 10
  %168 = ptrtoint ptr %hw_handler_params25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw_handler_params25.i.i.i, align 4
  %tobool26.not.i.i.i = icmp eq ptr %169, null
  br i1 %tobool26.not.i.i.i, label %if.end24.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge, label %if.then27.i.i.i

if.end24.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge: ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_scsi_dh.exit.thread.i.i

if.then27.i.i.i:                                  ; preds = %if.end24.i.i.i
  %call29.i.i.i = call i32 @scsi_dh_set_params(ptr noundef %150, ptr noundef nonnull %169) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %cmp30.i.i.i = icmp slt i32 %call29.i.i.i, 0
  br i1 %cmp30.i.i.i, label %if.then27.i.i.i.if.then41.i.i_crit_edge, label %if.then27.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge

if.then27.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge: ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setup_scsi_dh.exit.thread.i.i

if.then27.i.i.i.if.then41.i.i_crit_edge:          ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41.i.i

setup_scsi_dh.exit.thread.i.i:                    ; preds = %if.then27.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge, %if.end24.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge, %if.end12.i.i.i.setup_scsi_dh.exit.thread.i.i_crit_edge
  call void @kfree(ptr noundef %attached_handler_name.1.i.i) #13
  br label %if.end45.i.i

if.then41.i.i:                                    ; preds = %if.then27.i.i.i.if.then41.i.i_crit_edge, %if.end21.i.i.i.if.then41.i.i_crit_edge
  %.str.69.sink.i.i.i = phi ptr [ @.str.68, %if.end21.i.i.i.if.then41.i.i_crit_edge ], [ @.str.69, %if.then27.i.i.i.if.then41.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ %call17.i.i.i, %if.end21.i.i.i.if.then41.i.i_crit_edge ], [ %call29.i.i.i, %if.then27.i.i.i.if.then41.i.i_crit_edge ]
  %170 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %.str.69.sink.i.i.i, ptr %error.i.i, align 4
  call void @kfree(ptr noundef %attached_handler_name.1.i.i) #13
  %171 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %path.i.i, align 8
  call void @dm_put_device(ptr noundef %94, ptr noundef %172) #13
  br label %bad.i.i

if.end45.i.i:                                     ; preds = %setup_scsi_dh.exit.thread.i.i, %lor.lhs.false.i.i.if.end45.i.i_crit_edge
  %173 = ptrtoint ptr %ps.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ps.i.i, align 4
  %add_path.i.i = getelementptr inbounds %struct.path_selector_type, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %add_path.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add_path.i.i, align 4
  %177 = ptrtoint ptr %path_args.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %path_args.i, align 4
  %179 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %89, align 4
  %call49.i.i = call i32 %176(ptr noundef %ps.i.i, ptr noundef %path.i.i, i32 noundef %178, ptr noundef %180, ptr noundef %error.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end45.i.i.parse_path.exit.i_crit_edge, label %if.then51.i.i

if.end45.i.i.parse_path.exit.i_crit_edge:         ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_path.exit.i

if.then51.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %181 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %path.i.i, align 8
  call void @dm_put_device(ptr noundef %94, ptr noundef %182) #13
  br label %bad.i.i

bad.i.i:                                          ; preds = %if.then51.i.i, %if.then41.i.i, %if.then9.i87.i
  %r.0.i.i = phi i32 [ %call7.i85.i, %if.then9.i87.i ], [ %retval.0.ph.i.i.i, %if.then41.i.i ], [ %call49.i.i, %if.then51.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #13
  %183 = inttoptr i32 %r.0.i.i to ptr
  br label %parse_path.exit.i

parse_path.exit.i:                                ; preds = %bad.i.i, %if.end45.i.i.parse_path.exit.i_crit_edge
  %retval.0.i91.i = phi ptr [ %183, %bad.i.i ], [ %call7.i.i.i.i.i, %if.end45.i.i.parse_path.exit.i_crit_edge ]
  %cmp.i92.i = icmp ugt ptr %retval.0.i91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.i, label %parse_path.exit.i.if.then34.i_crit_edge, label %if.end36.i

parse_path.exit.i.if.then34.i_crit_edge:          ; preds = %parse_path.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34.i

if.then34.i:                                      ; preds = %parse_path.exit.i.if.then34.i_crit_edge, %if.end.i84.i.if.then34.i_crit_edge, %if.then.i83.i
  %retval.0.i9197.i = phi ptr [ inttoptr (i32 -22 to ptr), %if.then.i83.i ], [ %retval.0.i91.i, %parse_path.exit.i.if.then34.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i84.i.if.then34.i_crit_edge ]
  %184 = ptrtoint ptr %retval.0.i9197.i to i32
  br label %cleanup.thread.i

if.end36.i:                                       ; preds = %parse_path.exit.i
  %pg37.i = getelementptr inbounds %struct.pgpath, ptr %retval.0.i91.i, i32 0, i32 1
  %185 = ptrtoint ptr %pg37.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call7.i.i.i.i, ptr %pg37.i, align 4
  %186 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i.i.i, align 8
  %call.i.i.i149 = call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i91.i, ptr noundef %187, ptr noundef %pgpaths.i.i) #13
  br i1 %call.i.i.i149, label %if.end.i.i.i150, label %if.end36.i.for.inc.i_crit_edge

if.end36.i.for.inc.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i.i150:                                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %188 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %retval.0.i91.i, ptr %prev.i.i.i, align 8
  %189 = ptrtoint ptr %retval.0.i91.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %pgpaths.i.i, ptr %retval.0.i91.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i91.i, i32 0, i32 1
  %190 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev3.i.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %retval.0.i91.i, ptr %187, align 4
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %if.then34.i, %if.then27.i
  %r.1.ph.i = phi i32 [ %184, %if.then34.i ], [ -22, %if.then27.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path_args.i) #13
  br label %bad.i

for.inc.i:                                        ; preds = %if.end.i.i.i150, %if.end36.i.for.inc.i_crit_edge
  call void @dm_consume_args(ptr noundef nonnull %as, i32 noundef %add.i145) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path_args.i) #13
  %inc.i151 = add nuw i32 %i.0102.i, 1
  %192 = ptrtoint ptr %nr_pgpaths.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nr_pgpaths.i, align 8
  %cmp24.i = icmp ult i32 %inc.i151, %193
  br i1 %cmp24.i, label %for.inc.i.for.body.i146_crit_edge, label %for.inc.i.parse_priority_group.exit_crit_edge

for.inc.i.parse_priority_group.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %parse_priority_group.exit

for.inc.i.for.body.i146_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i146

bad.i:                                            ; preds = %cleanup.thread.i, %if.end17.i.bad.i_crit_edge, %if.end12.i.bad.i_crit_edge, %parse_path_selector.exit.thread.i
  %r.2.i152 = phi i32 [ %call14.i, %if.end12.i.bad.i_crit_edge ], [ %call19.i143, %if.end17.i.bad.i_crit_edge ], [ %retval.0.i.ph.i, %parse_path_selector.exit.thread.i ], [ %r.1.ph.i, %cleanup.thread.i ]
  call fastcc void @free_priority_group(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %94) #13
  %194 = inttoptr i32 %r.2.i152 to ptr
  br label %parse_priority_group.exit

parse_priority_group.exit.thread:                 ; preds = %if.end.i140.parse_priority_group.exit.thread_crit_edge, %if.then.i139
  %.str.48.sink = phi ptr [ @.str.48, %if.then.i139 ], [ @.str.49, %if.end.i140.parse_priority_group.exit.thread_crit_edge ]
  %retval.0.i153.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.then.i139 ], [ inttoptr (i32 -12 to ptr), %if.end.i140.parse_priority_group.exit.thread_crit_edge ]
  %error.i138 = getelementptr inbounds %struct.dm_target, ptr %94, i32 0, i32 12
  %195 = ptrtoint ptr %error.i138 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %.str.48.sink, ptr %error.i138, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_selector_args.i) #13
  br label %cleanup.thread

parse_priority_group.exit:                        ; preds = %bad.i, %for.inc.i.parse_priority_group.exit_crit_edge, %if.end22.i.parse_priority_group.exit_crit_edge
  %retval.0.i153 = phi ptr [ %194, %bad.i ], [ %call7.i.i.i.i, %if.end22.i.parse_priority_group.exit_crit_edge ], [ %call7.i.i.i.i, %for.inc.i.parse_priority_group.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_selector_args.i) #13
  %cmp.i154 = icmp ugt ptr %retval.0.i153, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %parse_priority_group.exit.cleanup.thread_crit_edge, label %if.end43

parse_priority_group.exit.cleanup.thread_crit_edge: ; preds = %parse_priority_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %parse_priority_group.exit.cleanup.thread_crit_edge, %parse_priority_group.exit.thread
  %retval.0.i153166 = phi ptr [ %retval.0.i153.ph, %parse_priority_group.exit.thread ], [ %retval.0.i153, %parse_priority_group.exit.cleanup.thread_crit_edge ]
  %196 = ptrtoint ptr %retval.0.i153166 to i32
  br label %bad

if.end43:                                         ; preds = %parse_priority_group.exit
  %nr_pgpaths = getelementptr inbounds %struct.priority_group, ptr %retval.0.i153, i32 0, i32 4
  %197 = ptrtoint ptr %nr_pgpaths to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nr_pgpaths, align 4
  %add = add i32 %198, %91
  %call.i.i115 = call zeroext i1 @__kasan_check_write(ptr noundef %nr_valid_paths.i, i32 noundef 4) #13
  %199 = ptrtoint ptr %nr_valid_paths.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile i32 %add, ptr %nr_valid_paths.i, align 8
  %200 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i, align 4
  %call.i.i155 = call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i153, ptr noundef %201, ptr noundef %priority_groups.i) #13
  br i1 %call.i.i155, label %if.end.i.i156, label %if.end43.list_add_tail.exit_crit_edge

if.end43.list_add_tail.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i156:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %retval.0.i153, ptr %prev.i.i, align 4
  %203 = ptrtoint ptr %retval.0.i153 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %priority_groups.i, ptr %retval.0.i153, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i153, i32 0, i32 1
  %204 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %retval.0.i153, ptr %201, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i156, %if.end43.list_add_tail.exit_crit_edge
  %inc = add i32 %pg_count.0177, 1
  %pg_num = getelementptr inbounds %struct.priority_group, ptr %retval.0.i153, i32 0, i32 3
  %206 = ptrtoint ptr %pg_num to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %inc, ptr %pg_num, align 4
  %207 = ptrtoint ptr %next_pg_num to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %next_pg_num, align 4
  %dec = add i32 %208, -1
  store i32 %dec, ptr %next_pg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool45.not = icmp eq i32 %dec, 0
  br i1 %tobool45.not, label %if.then46, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %209 = ptrtoint ptr %next_pg to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %retval.0.i153, ptr %next_pg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %list_add_tail.exit.cleanup_crit_edge
  %210 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %as, align 4
  %tobool36.not = icmp eq i32 %211, 0
  br i1 %tobool36.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end34.while.end_crit_edge
  %pg_count.0.lcssa = phi i32 [ 0, %if.end34.while.end_crit_edge ], [ %inc, %cleanup.while.end_crit_edge ]
  %212 = ptrtoint ptr %nr_priority_groups to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %nr_priority_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pg_count.0.lcssa, i32 %213)
  %cmp.not = icmp eq i32 %pg_count.0.lcssa, %213
  br i1 %cmp.not, label %do.body53, label %if.then50

if.then50:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %214 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.5, ptr %error15, align 8
  br label %bad

do.body53:                                        ; preds = %while.end
  %call56 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  call fastcc void @enable_nopath_timeout(ptr noundef nonnull %call7.i.i.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call56) #13
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %215 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 1, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %216 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %num_discard_bios, align 8
  %num_write_same_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 8
  %217 = ptrtoint ptr %num_write_same_bios to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %num_write_same_bios, align 8
  %num_write_zeroes_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 9
  %218 = ptrtoint ptr %num_write_zeroes_bios to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %num_write_zeroes_bios, align 4
  %219 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %queue_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp60 = icmp eq i32 %220, 1
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 48, ptr %per_io_data_size, align 8
  br label %cleanup66

if.else:                                          ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %222 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 8, ptr %per_io_data_size, align 8
  br label %cleanup66

bad:                                              ; preds = %if.then50, %cleanup.thread, %if.then32, %if.end19.bad_crit_edge, %if.end14.bad_crit_edge, %parse_hw_handler.exit, %parse_features.exit.bad_crit_edge, %parse_features.exit.thread
  %r.2 = phi i32 [ %r.2.i, %parse_features.exit.bad_crit_edge ], [ %retval.0.i135, %parse_hw_handler.exit ], [ %call16, %if.end14.bad_crit_edge ], [ %call21, %if.end19.bad_crit_edge ], [ -22, %if.then50 ], [ -22, %if.then32 ], [ -22, %parse_features.exit.thread ], [ %196, %cleanup.thread ]
  call fastcc void @free_multipath(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup66

cleanup66:                                        ; preds = %bad, %if.else, %if.then62, %if.then
  %retval.0 = phi i32 [ %r.2, %bad ], [ -22, %if.then ], [ 0, %if.else ], [ 0, %if.then62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_pg_num) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_dtr(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %nopath_timer.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 21
  %call.i = tail call i32 @del_timer_sync(ptr noundef %nopath_timer.i) #13
  tail call fastcc void @flush_multipath_work(ptr noundef %1)
  tail call fastcc void @free_multipath(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_map_bio(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call1.i.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 48) #13
  %add.ptr.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 1
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size.i, align 8
  %nr_bytes.i = getelementptr inbounds %struct.dm_mpath_io, ptr %call1.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %nr_bytes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr_bytes.i, align 4
  %5 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call1.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev.i.i, align 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %add.ptr.i.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %9 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bi_flags.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %bi_flags2.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 2
  %11 = ptrtoint ptr %bi_flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i.i, ptr %bi_flags2.i.i, align 4
  %bi_iter.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 2, i32 1
  %bi_iter3.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = call ptr @memcpy(ptr %bi_iter.i.i, ptr %bi_iter3.i.i, i32 20)
  %__bi_remaining.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__bi_remaining.i.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %__bi_remaining.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %__bi_remaining.i.i, align 4
  %__bi_remaining4.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %__bi_remaining4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %__bi_remaining4.i.i, align 4
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %16 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_end_io.i.i, align 8
  %bi_end_io5.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 5
  %18 = ptrtoint ptr %bi_end_io5.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bi_end_io5.i.i, align 4
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf.i.i.i, align 8
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %entry.multipath_init_per_bio_data.exit_crit_edge, label %if.then.i.i.i

entry.multipath_init_per_bio_data.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %multipath_init_per_bio_data.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %22 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  br label %multipath_init_per_bio_data.exit

multipath_init_per_bio_data.exit:                 ; preds = %if.then.i.i.i, %entry.multipath_init_per_bio_data.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.then.i.i.i ], [ null, %entry.multipath_init_per_bio_data.exit_crit_edge ]
  %bi_integrity.i.i = getelementptr %struct.dm_mpath_io, ptr %call1.i.i, i32 5, i32 1
  %25 = ptrtoint ptr %bi_integrity.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i.i, ptr %bi_integrity.i.i, align 4
  %call = tail call fastcc i32 @__multipath_map_bio(ptr noundef %1, ptr noundef %bio, ptr noundef %call1.i.i)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_clone_and_map(ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %map_context, ptr nocapture noundef writeonly %__clone) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %2 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_len.i, align 8
  %4 = ptrtoint ptr %map_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_context, align 4
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %current_pgpath, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %1, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %mpath_double_check_test_bit.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

mpath_double_check_test_bit.exit:                 ; preds = %lor.lhs.false
  %lock.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %1, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.i.not = icmp eq i32 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #13
  br i1 %tobool10.i.not, label %mpath_double_check_test_bit.exit.if.end_crit_edge, label %mpath_double_check_test_bit.exit.if.else_crit_edge

mpath_double_check_test_bit.exit.if.else_crit_edge: ; preds = %mpath_double_check_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

mpath_double_check_test_bit.exit.if.end_crit_edge: ; preds = %mpath_double_check_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %mpath_double_check_test_bit.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call fastcc ptr @choose_pgpath(ptr noundef %1, i32 noundef %3)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then5:                                         ; preds = %if.end
  %lock.i105 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i105) #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %1, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i106 = icmp eq i32 %16, 0
  br i1 %tobool.not.i106, label %must_push_back_rq.exit, label %must_push_back_rq.exit.thread

must_push_back_rq.exit.thread:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i105, i32 noundef %call2.i) #13
  br label %cleanup

must_push_back_rq.exit:                           ; preds = %if.then5
  %ti.i.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ti.i.i, align 4
  %call.i.i107 = tail call i32 @dm_noflush_suspending(ptr noundef %18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %tobool.i.i.not = icmp eq i32 %call.i.i107, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i105, i32 noundef %call2.i) #13
  br i1 %tobool.i.i.not, label %do.body10, label %must_push_back_rq.exit.cleanup_crit_edge

must_push_back_rq.exit.cleanup_crit_edge:         ; preds = %must_push_back_rq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body10:                                        ; preds = %must_push_back_rq.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @multipath_clone_and_map.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@multipath_clone_and_map, %land.lhs.true)) #13
          to label %cleanup [label %land.lhs.true], !srcloc !311

land.lhs.true:                                    ; preds = %do.body10
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @multipath_clone_and_map._rs, ptr noundef nonnull @.str.70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ti.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %call20 = tail call ptr @dm_table_device_name(ptr noundef %22) #13
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %1, align 4
  %shr.i = lshr i32 %24, 1
  %and1.i = and i32 %shr.i, 1
  %25 = load volatile i32, ptr %1, align 4
  %shr.i101 = lshr i32 %25, 2
  %and1.i102 = and i32 %shr.i101, 1
  %26 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ti.i.i, align 4
  %call25 = tail call i32 @dm_noflush_suspending(ptr noundef %27) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @multipath_clone_and_map.descriptor, ptr noundef nonnull @.str.39, ptr noundef %call20, i32 noundef %and1.i, i32 noundef %and1.i102, i32 noundef %call25) #13
  br label %cleanup

if.else:                                          ; preds = %if.end.if.else_crit_edge, %mpath_double_check_test_bit.exit.if.else_crit_edge
  %pgpath.0131 = phi ptr [ %call3, %if.end.if.else_crit_edge ], [ %7, %mpath_double_check_test_bit.exit.if.else_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %1, align 4
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i108 = icmp eq i32 %30, 0
  br i1 %tobool.not.i108, label %if.else.lor.lhs.false32_crit_edge, label %mpath_double_check_test_bit.exit114

if.else.lor.lhs.false32_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false32

mpath_double_check_test_bit.exit114:              ; preds = %if.else
  %lock.i109 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call5.i110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i109) #13
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %1, align 4
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool10.i111.not = icmp eq i32 %33, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i109, i32 noundef %call5.i110) #13
  br i1 %tobool10.i111.not, label %mpath_double_check_test_bit.exit114.lor.lhs.false32_crit_edge, label %mpath_double_check_test_bit.exit114.if.then34_crit_edge

mpath_double_check_test_bit.exit114.if.then34_crit_edge: ; preds = %mpath_double_check_test_bit.exit114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

mpath_double_check_test_bit.exit114.lor.lhs.false32_crit_edge: ; preds = %mpath_double_check_test_bit.exit114
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %mpath_double_check_test_bit.exit114.lor.lhs.false32_crit_edge, %if.else.lor.lhs.false32_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %1, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i115 = icmp eq i32 %36, 0
  br i1 %tobool.not.i115, label %lor.lhs.false32.if.end37_crit_edge, label %mpath_double_check_test_bit.exit121

lor.lhs.false32.if.end37_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

mpath_double_check_test_bit.exit121:              ; preds = %lor.lhs.false32
  %lock.i116 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call5.i117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i116) #13
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %1, align 4
  %39 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool10.i118.not = icmp eq i32 %39, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i116, i32 noundef %call5.i117) #13
  br i1 %tobool10.i118.not, label %mpath_double_check_test_bit.exit121.if.end37_crit_edge, label %mpath_double_check_test_bit.exit121.if.then34_crit_edge

mpath_double_check_test_bit.exit121.if.then34_crit_edge: ; preds = %mpath_double_check_test_bit.exit121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

mpath_double_check_test_bit.exit121.if.end37_crit_edge: ; preds = %mpath_double_check_test_bit.exit121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then34:                                        ; preds = %mpath_double_check_test_bit.exit121.if.then34_crit_edge, %mpath_double_check_test_bit.exit114.if.then34_crit_edge
  %lock.i122 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call2.i123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i122) #13
  %call5.i124 = tail call fastcc i32 @__pg_init_all_paths(ptr noundef %1) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i122, i32 noundef %call2.i123) #13
  br label %cleanup

if.end37:                                         ; preds = %mpath_double_check_test_bit.exit121.if.end37_crit_edge, %lor.lhs.false32.if.end37_crit_edge
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pgpath.0131, ptr %5, align 4
  %nr_bytes39 = getelementptr inbounds %struct.dm_mpath_io, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %nr_bytes39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %3, ptr %nr_bytes39, align 4
  %path = getelementptr inbounds %struct.pgpath, ptr %pgpath.0131, i32 0, i32 3
  %42 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %path, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_queue.i, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %48 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd_flags, align 4
  %50 = or i32 %49, 16384
  %call43 = tail call ptr @blk_mq_alloc_request(ptr noundef %47, i32 noundef %50, i32 noundef 1) #13
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end37
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 11
  %51 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %queue_flags, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool47.not = icmp eq i32 %53, 0
  br i1 %tobool47.not, label %if.then45.cleanup_crit_edge, label %if.then48

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then48:                                        ; preds = %if.then45
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pg_init_in_progress, i32 1, i32 3, i32 1) #13
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pg_init_in_progress, ptr %pg_init_in_progress, i32 1, ptr elementtype(i32) %pg_init_in_progress) #13, !srcloc !312
  %55 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %path, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 18
  %59 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd_queue.i.i, align 4
  %is_active.i = getelementptr inbounds %struct.pgpath, ptr %pgpath.0131, i32 0, i32 5
  %61 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.then48.if.else.i_crit_edge, label %land.lhs.true.i

if.then48.if.else.i_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then48
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %60, i32 0, i32 11
  %62 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %queue_flags.i, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i125 = icmp eq i32 %64, 0
  br i1 %tobool.not.i125, label %if.then.i127, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i127:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i126 = tail call i32 @scsi_dh_activate(ptr noundef %60, ptr noundef nonnull @pg_init_done, ptr noundef nonnull %pgpath.0131) #13
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then48.if.else.i_crit_edge
  tail call void @pg_init_done(ptr noundef nonnull %pgpath.0131, i32 noundef 14) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %biotail = getelementptr inbounds %struct.request, ptr %call43, i32 0, i32 11
  %65 = ptrtoint ptr %biotail to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %biotail, align 4
  %bio = getelementptr inbounds %struct.request, ptr %call43, i32 0, i32 10
  %66 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %bio, align 8
  %cmd_flags51 = getelementptr inbounds %struct.request, ptr %call43, i32 0, i32 3
  %67 = ptrtoint ptr %cmd_flags51 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd_flags51, align 4
  %69 = or i32 %68, 512
  store i32 %69, ptr %cmd_flags51, align 4
  %70 = ptrtoint ptr %__clone to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call43, ptr %__clone, align 4
  %pg = getelementptr inbounds %struct.pgpath, ptr %pgpath.0131, i32 0, i32 1
  %71 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pg, align 4
  %ps = getelementptr inbounds %struct.priority_group, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ps, align 4
  %start_io = getelementptr inbounds %struct.path_selector_type, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %start_io to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %start_io, align 4
  %tobool55.not = icmp eq ptr %76, null
  br i1 %tobool55.not, label %if.end50.cleanup_crit_edge, label %if.then56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = tail call i32 %76(ptr noundef %ps, ptr noundef %path, i32 noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end50.cleanup_crit_edge, %if.else.i, %if.then.i127, %if.then45.cleanup_crit_edge, %if.then34, %if.then18, %land.lhs.true.cleanup_crit_edge, %do.body10, %must_push_back_rq.exit.cleanup_crit_edge, %must_push_back_rq.exit.thread
  %retval.0 = phi i32 [ 3, %if.then34 ], [ 3, %must_push_back_rq.exit.cleanup_crit_edge ], [ 4, %if.then18 ], [ 4, %land.lhs.true.cleanup_crit_edge ], [ 2, %if.then45.cleanup_crit_edge ], [ 1, %if.then56 ], [ 1, %if.end50.cleanup_crit_edge ], [ 3, %must_push_back_rq.exit.thread ], [ 4, %do.body10 ], [ 3, %if.then.i127 ], [ 3, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_release_clone(ptr noundef %clone, ptr noundef readonly %map_context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %map_context, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !313

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %map_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then.if.end14_crit_edge, label %land.lhs.true

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %pg = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pg, align 4
  %ps = getelementptr inbounds %struct.priority_group, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps, align 4
  %end_io = getelementptr inbounds %struct.path_selector_type, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end_io, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end14_crit_edge, label %if.then6

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %path = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 3
  %nr_bytes = getelementptr inbounds %struct.dm_mpath_io, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_bytes, align 4
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %clone, i32 0, i32 16
  %12 = ptrtoint ptr %io_start_time_ns to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %io_start_time_ns, align 8
  %call13 = tail call i32 %9(ptr noundef %ps, ptr noundef %path, i32 noundef %11, i64 noundef %13) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %land.lhs.true.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @blk_mq_free_request(ptr noundef %clone) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_end_io_bio(ptr nocapture noundef readonly %ti, ptr noundef %clone, ptr nocapture noundef %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call1.i = tail call ptr @dm_per_bio_data(ptr noundef %clone, i32 noundef 48) #13
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1.i, align 4
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %6 = icmp ult i8 %5, 9
  br i1 %6, label %switch.hole_check, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @fail_path(ptr noundef nonnull %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %7 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %nr_valid_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %do.body10, label %if.end6.if.end48_crit_edge

if.end6.if.end48_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.body10:                                        ; preds = %if.end6
  %lock = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %if.then18, label %if.end46

if.then18:                                        ; preds = %do.body10
  %ti.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti.i, align 4
  %call.i = tail call i32 @dm_noflush_suspending(ptr noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %do.body22, label %if.then18.if.end44_crit_edge

if.then18.if.end44_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body22:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @multipath_end_io_bio.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@multipath_end_io_bio, %land.lhs.true)) #13
          to label %do.end43 [label %land.lhs.true], !srcloc !311

land.lhs.true:                                    ; preds = %do.body22
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @multipath_end_io_bio._rs, ptr noundef nonnull @.str.71) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end43_crit_edge, label %if.then30

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ti.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call32 = tail call ptr @dm_table_device_name(ptr noundef %17) #13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %1, align 4
  %shr.i84 = lshr i32 %19, 1
  %and1.i85 = and i32 %shr.i84, 1
  %20 = load volatile i32, ptr %1, align 4
  %shr.i86 = lshr i32 %20, 2
  %and1.i87 = and i32 %shr.i86, 1
  %21 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ti.i, align 4
  %call38 = tail call i32 @dm_noflush_suspending(ptr noundef %22) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @multipath_end_io_bio.descriptor, ptr noundef nonnull @.str.39, ptr noundef %call32, i32 noundef %and1.i85, i32 noundef %and1.i87, i32 noundef %call38) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then30, %land.lhs.true.do.end43_crit_edge, %do.body22
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %error, align 1
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.then18.if.end44_crit_edge
  %r.0 = phi i32 [ 0, %do.end43 ], [ 2, %if.then18.if.end44_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #13
  br label %done

if.end46:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #13
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end6.if.end48_crit_edge
  %lock.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %24 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %clone, align 8
  %tail.i.i.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %clone, ptr %26, align 8
  br label %bio_list_add.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %queued_bios.i.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %queued_bios.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %clone, ptr %queued_bios.i.i, align 4
  br label %bio_list_add.exit.i.i

bio_list_add.exit.i.i:                            ; preds = %if.else.i.i.i, %if.then.i.i.i
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %clone, ptr %tail.i.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %1, align 4
  %and1.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %bio_list_add.exit.i.i.multipath_queue_bio.exit_crit_edge

bio_list_add.exit.i.i.multipath_queue_bio.exit_crit_edge: ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %multipath_queue_bio.exit

if.then.i.i:                                      ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %process_queued_bios.i.i) #13
  br label %multipath_queue_bio.exit

multipath_queue_bio.exit:                         ; preds = %if.then.i.i, %bio_list_add.exit.i.i.multipath_queue_bio.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  br label %done

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %5 to i16
  %switch.shifted = lshr i16 491, %switch.maskindex
  %33 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %switch.lobit.not = icmp eq i16 %33, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.hole_check.done_crit_edge

switch.hole_check.done_crit_edge:                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

done:                                             ; preds = %switch.hole_check.done_crit_edge, %multipath_queue_bio.exit, %if.end44
  %r.1 = phi i32 [ 1, %multipath_queue_bio.exit ], [ %r.0, %if.end44 ], [ 0, %switch.hole_check.done_crit_edge ]
  %tobool49.not = icmp eq ptr %3, null
  br i1 %tobool49.not, label %done.if.end59_crit_edge, label %if.then50

done.if.end59_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then50:                                        ; preds = %done
  %pg = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pg, align 4
  %ps51 = getelementptr inbounds %struct.priority_group, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ps51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ps51, align 4
  %end_io = getelementptr inbounds %struct.path_selector_type, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end_io, align 4
  %tobool52.not = icmp eq ptr %39, null
  br i1 %tobool52.not, label %if.then50.if.end59_crit_edge, label %if.then53

if.then50.if.end59_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  %path = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 3
  %nr_bytes = getelementptr inbounds %struct.dm_mpath_io, ptr %call1.i, i32 0, i32 1
  %40 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_bytes, align 4
  %call56 = tail call i64 @dm_start_time_ns_from_clone(ptr noundef %clone) #13
  %call57 = tail call i32 %39(ptr noundef %ps51, ptr noundef %path, i32 noundef %41, i64 noundef %call56) #13
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.then50.if.end59_crit_edge, %done.if.end59_crit_edge
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_end_io(ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %clone, i8 noundef zeroext %error, ptr nocapture noundef readonly %map_context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %error)
  %4 = icmp ult i8 %error, 9
  br i1 %4, label %switch.hole_check, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %switch.hole_check.if.then_crit_edge, %entry.if.then_crit_edge
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %error)
  %cmp = icmp eq i8 %error, 9
  %. = select i1 %cmp, i32 3, i32 2
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.then.if.end10_crit_edge, label %if.then8

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @fail_path(ptr noundef nonnull %3)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then.if.end10_crit_edge
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %6, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %7 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %nr_valid_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true13:                                  ; preds = %if.end10
  %lock.i = getelementptr inbounds %struct.multipath, ptr %6, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %6, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %must_push_back_rq.exit, label %must_push_back_rq.exit.thread

must_push_back_rq.exit.thread:                    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  br label %if.end41

must_push_back_rq.exit:                           ; preds = %land.lhs.true13
  %ti.i.i = getelementptr inbounds %struct.multipath, ptr %6, i32 0, i32 18
  %12 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti.i.i, align 4
  %call.i.i71 = tail call i32 @dm_noflush_suspending(ptr noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool.i.i.not = icmp eq i32 %call.i.i71, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  br i1 %tobool.i.i.not, label %if.then15, label %must_push_back_rq.exit.if.end41_crit_edge

must_push_back_rq.exit.if.end41_crit_edge:        ; preds = %must_push_back_rq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then15:                                        ; preds = %must_push_back_rq.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %error)
  %cmp17 = icmp eq i8 %error, 10
  br i1 %cmp17, label %do.body20, label %if.then15.if.end41_crit_edge

if.then15.if.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

do.body20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @multipath_end_io.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@multipath_end_io, %land.lhs.true25)) #13
          to label %if.end41 [label %land.lhs.true25], !srcloc !311

land.lhs.true25:                                  ; preds = %do.body20
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @multipath_end_io._rs, ptr noundef nonnull @.str.72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end41_crit_edge, label %if.then28

land.lhs.true25.if.end41_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ti.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %call30 = tail call ptr @dm_table_device_name(ptr noundef %17) #13
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %6, align 4
  %shr.i = lshr i32 %19, 1
  %and1.i = and i32 %shr.i, 1
  %20 = load volatile i32, ptr %6, align 4
  %shr.i68 = lshr i32 %20, 2
  %and1.i69 = and i32 %shr.i68, 1
  %21 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ti.i.i, align 4
  %call35 = tail call i32 @dm_noflush_suspending(ptr noundef %22) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @multipath_end_io.descriptor, ptr noundef nonnull @.str.39, ptr noundef %call30, i32 noundef %and1.i, i32 noundef %and1.i69, i32 noundef %call35) #13
  br label %if.end41

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %error to i16
  %switch.shifted = lshr i16 491, %switch.maskindex
  %23 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %switch.lobit.not = icmp eq i16 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then_crit_edge, label %switch.hole_check.if.end41_crit_edge

switch.hole_check.if.end41_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

switch.hole_check.if.then_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end41:                                         ; preds = %switch.hole_check.if.end41_crit_edge, %if.then28, %land.lhs.true25.if.end41_crit_edge, %do.body20, %if.then15.if.end41_crit_edge, %must_push_back_rq.exit.if.end41_crit_edge, %must_push_back_rq.exit.thread, %if.end10.if.end41_crit_edge
  %r.2 = phi i32 [ %., %if.end10.if.end41_crit_edge ], [ %., %must_push_back_rq.exit.if.end41_crit_edge ], [ 0, %land.lhs.true25.if.end41_crit_edge ], [ 0, %if.then28 ], [ 0, %if.then15.if.end41_crit_edge ], [ %., %must_push_back_rq.exit.thread ], [ 0, %do.body20 ], [ 0, %switch.hole_check.if.end41_crit_edge ]
  %tobool42.not = icmp eq ptr %3, null
  br i1 %tobool42.not, label %if.end41.if.end51_crit_edge, label %if.then43

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then43:                                        ; preds = %if.end41
  %pg = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pg, align 4
  %ps44 = getelementptr inbounds %struct.priority_group, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ps44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps44, align 4
  %end_io = getelementptr inbounds %struct.path_selector_type, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end_io, align 4
  %tobool45.not = icmp eq ptr %29, null
  br i1 %tobool45.not, label %if.then43.if.end51_crit_edge, label %if.then46

if.then43.if.end51_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %path = getelementptr inbounds %struct.pgpath, ptr %3, i32 0, i32 3
  %nr_bytes = getelementptr inbounds %struct.dm_mpath_io, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_bytes, align 4
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %clone, i32 0, i32 16
  %32 = ptrtoint ptr %io_start_time_ns to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %io_start_time_ns, align 8
  %call49 = tail call i32 %29(ptr noundef %ps44, ptr noundef %path, i32 noundef %31, i64 noundef %33) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then43.if.end51_crit_edge, %if.end41.if.end51_crit_edge
  ret i32 %r.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_presuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %queue_mode = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ti1 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ti1, align 4
  %call = tail call i32 @dm_noflush_suspending(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @queue_if_no_path(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull @__func__.multipath_presuspend)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %work_mutex = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %work_mutex, i32 noundef 0) #13
  tail call fastcc void @flush_multipath_work(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %work_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %lock = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %if.then

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %1) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %1) #13
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @multipath_resume.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@multipath_resume, %if.then15)) #13
          to label %do.end24 [label %if.then15], !srcloc !311

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %ti16 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %ti16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti16, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call17 = tail call ptr @dm_table_device_name(ptr noundef %8) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %1, align 4
  %shr.i33 = lshr i32 %10, 1
  %and1.i34 = and i32 %shr.i33, 1
  %11 = load volatile i32, ptr %1, align 4
  %shr.i35 = lshr i32 %11, 2
  %and1.i36 = and i32 %shr.i35, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @multipath_resume.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.74, ptr noundef %call17, ptr noundef nonnull @.str.73, i32 noundef %and1.i34, i32 noundef %and1.i36) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then15, %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @multipath_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %lock = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp5 = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp7 = icmp eq i32 %maxlen, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp7, label %if.then.if.then158_crit_edge, label %cond.false

if.then.if.then158_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then158

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and1.i = and i32 %3, 1
  %pg_init_count = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %pg_init_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pg_init_count, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.75, i32 noundef %and1.i, i32 noundef %5) #13
  br label %if.then158

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  br i1 %cmp7, label %cond.end36.thread, label %cond.end36

cond.end36:                                       ; preds = %if.else
  %shr.i = lshr i32 %7, 1
  %and1.i966 = and i32 %shr.i, 1
  %pg_init_retries = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %pg_init_retries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pg_init_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  %mul = select i1 %cmp21.not, i32 0, i32 2
  %add23 = or i32 %mul, %and1.i966
  %pg_init_delay_msecs = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %pg_init_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pg_init_delay_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp24.not = icmp eq i32 %11, -1
  %mul26 = select i1 %cmp24.not, i32 0, i32 2
  %add27 = add nuw nsw i32 %add23, %mul26
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %1, align 4
  %shr.i967 = lshr i32 %13, 3
  %and1.i968 = and i32 %shr.i967, 1
  %add30 = add nuw nsw i32 %add27, %and1.i968
  %queue_mode = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp31.not = icmp eq i32 %15, 2
  %mul33 = select i1 %cmp31.not, i32 0, i32 2
  %add34 = add nuw nsw i32 %add30, %mul33
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.76, i32 noundef %add34) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %1, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cond.end36.if.end_crit_edge, label %if.then41

cond.end36.if.end_crit_edge:                      ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cond.end36.thread:                                ; preds = %if.else
  %19 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not976 = icmp eq i32 %19, 0
  br i1 %tobool.not976, label %if.end.thread, label %cond.end36.thread.cond.end49_crit_edge

cond.end36.thread.cond.end49_crit_edge:           ; preds = %cond.end36.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end49

if.then41:                                        ; preds = %cond.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %maxlen)
  %cmp42.not = icmp ult i32 %call35, %maxlen
  br i1 %cmp42.not, label %cond.false45, label %if.then41.cond.end49_crit_edge

if.then41.cond.end49_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end49

cond.false45:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr46 = getelementptr i8, ptr %result, i32 %call35
  %sub47 = sub i32 %maxlen, %call35
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.77) #13
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false45, %if.then41.cond.end49_crit_edge, %cond.end36.thread.cond.end49_crit_edge
  %cond37977980 = phi i32 [ %call35, %cond.false45 ], [ %call35, %if.then41.cond.end49_crit_edge ], [ 0, %cond.end36.thread.cond.end49_crit_edge ]
  %cond50 = phi i32 [ %call48, %cond.false45 ], [ 0, %if.then41.cond.end49_crit_edge ], [ 0, %cond.end36.thread.cond.end49_crit_edge ]
  %add51 = add i32 %cond50, %cond37977980
  br label %if.end

if.end:                                           ; preds = %cond.end49, %cond.end36.if.end_crit_edge
  %sz.0 = phi i32 [ %add51, %cond.end49 ], [ %call35, %cond.end36.if.end_crit_edge ]
  %pg_init_retries52 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %pg_init_retries52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pg_init_retries52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool53.not = icmp eq i32 %21, 0
  br i1 %tobool53.not, label %if.end.if.end66_crit_edge, label %if.then54

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.end.thread:                                    ; preds = %cond.end36.thread
  %pg_init_retries52982 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %pg_init_retries52982 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pg_init_retries52982, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool53.not983 = icmp eq i32 %23, 0
  br i1 %tobool53.not983, label %if.end66.thread, label %if.end.thread.cond.end63_crit_edge

if.end.thread.cond.end63_crit_edge:               ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end63

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0, i32 %maxlen)
  %cmp55.not = icmp ult i32 %sz.0, %maxlen
  br i1 %cmp55.not, label %cond.false58, label %if.then54.cond.end63_crit_edge

if.then54.cond.end63_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end63

cond.false58:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr59 = getelementptr i8, ptr %result, i32 %sz.0
  %sub60 = sub i32 %maxlen, %sz.0
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.78, i32 noundef %21) #13
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false58, %if.then54.cond.end63_crit_edge, %if.end.thread.cond.end63_crit_edge
  %sz.0984987 = phi i32 [ %sz.0, %cond.false58 ], [ %sz.0, %if.then54.cond.end63_crit_edge ], [ 0, %if.end.thread.cond.end63_crit_edge ]
  %cond64 = phi i32 [ %call62, %cond.false58 ], [ 0, %if.then54.cond.end63_crit_edge ], [ 0, %if.end.thread.cond.end63_crit_edge ]
  %add65 = add i32 %cond64, %sz.0984987
  br label %if.end66

if.end66:                                         ; preds = %cond.end63, %if.end.if.end66_crit_edge
  %sz.1 = phi i32 [ %add65, %cond.end63 ], [ %sz.0, %if.end.if.end66_crit_edge ]
  %pg_init_delay_msecs67 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %pg_init_delay_msecs67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pg_init_delay_msecs67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp68.not = icmp eq i32 %25, -1
  br i1 %cmp68.not, label %if.end66.if.end82_crit_edge, label %if.then70

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.end66.thread:                                  ; preds = %if.end.thread
  %pg_init_delay_msecs67989 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %pg_init_delay_msecs67989 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pg_init_delay_msecs67989, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp68.not990 = icmp eq i32 %27, -1
  br i1 %cmp68.not990, label %if.end82.thread, label %if.end66.thread.cond.end79_crit_edge

if.end66.thread.cond.end79_crit_edge:             ; preds = %if.end66.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end79

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1, i32 %maxlen)
  %cmp71.not = icmp ult i32 %sz.1, %maxlen
  br i1 %cmp71.not, label %cond.false74, label %if.then70.cond.end79_crit_edge

if.then70.cond.end79_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end79

cond.false74:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr75 = getelementptr i8, ptr %result, i32 %sz.1
  %sub76 = sub i32 %maxlen, %sz.1
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.79, i32 noundef %25) #13
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false74, %if.then70.cond.end79_crit_edge, %if.end66.thread.cond.end79_crit_edge
  %sz.1991994 = phi i32 [ %sz.1, %cond.false74 ], [ %sz.1, %if.then70.cond.end79_crit_edge ], [ 0, %if.end66.thread.cond.end79_crit_edge ]
  %cond80 = phi i32 [ %call78, %cond.false74 ], [ 0, %if.then70.cond.end79_crit_edge ], [ 0, %if.end66.thread.cond.end79_crit_edge ]
  %add81 = add i32 %cond80, %sz.1991994
  br label %if.end82

if.end82:                                         ; preds = %cond.end79, %if.end66.if.end82_crit_edge
  %sz.2 = phi i32 [ %add81, %cond.end79 ], [ %sz.1, %if.end66.if.end82_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %1, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool85.not = icmp eq i32 %30, 0
  br i1 %tobool85.not, label %if.end82.if.end97_crit_edge, label %if.then86

if.end82.if.end97_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end82.thread:                                  ; preds = %if.end66.thread
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %1, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool85.not998 = icmp eq i32 %33, 0
  br i1 %tobool85.not998, label %if.end82.thread.if.end97_crit_edge, label %if.end82.thread.cond.end94_crit_edge

if.end82.thread.cond.end94_crit_edge:             ; preds = %if.end82.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end94

if.end82.thread.if.end97_crit_edge:               ; preds = %if.end82.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2, i32 %maxlen)
  %cmp87.not = icmp ult i32 %sz.2, %maxlen
  br i1 %cmp87.not, label %cond.false90, label %if.then86.cond.end94_crit_edge

if.then86.cond.end94_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end94

cond.false90:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr91 = getelementptr i8, ptr %result, i32 %sz.2
  %sub92 = sub i32 %maxlen, %sz.2
  %call93 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.80) #13
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false90, %if.then86.cond.end94_crit_edge, %if.end82.thread.cond.end94_crit_edge
  %sz.29991002 = phi i32 [ %sz.2, %cond.false90 ], [ %sz.2, %if.then86.cond.end94_crit_edge ], [ 0, %if.end82.thread.cond.end94_crit_edge ]
  %cond95 = phi i32 [ %call93, %cond.false90 ], [ 0, %if.then86.cond.end94_crit_edge ], [ 0, %if.end82.thread.cond.end94_crit_edge ]
  %add96 = add i32 %cond95, %sz.29991002
  br label %if.end97

if.end97:                                         ; preds = %cond.end94, %if.end82.thread.if.end97_crit_edge, %if.end82.if.end97_crit_edge
  %sz.3 = phi i32 [ %add96, %cond.end94 ], [ %sz.2, %if.end82.if.end97_crit_edge ], [ 0, %if.end82.thread.if.end97_crit_edge ]
  %queue_mode98 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %queue_mode98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %queue_mode98, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %35, label %land.end [
    i32 2, label %if.end97.if.end154_crit_edge
    i32 1, label %sw.bb
  ]

if.end97.if.end154_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

sw.bb:                                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3, i32 %maxlen)
  %cmp103.not = icmp ult i32 %sz.3, %maxlen
  br i1 %cmp103.not, label %cond.false106, label %sw.bb.cond.end110_crit_edge

sw.bb.cond.end110_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end110

cond.false106:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr107 = getelementptr i8, ptr %result, i32 %sz.3
  %sub108 = sub i32 %maxlen, %sz.3
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr107, i32 noundef %sub108, ptr noundef nonnull @.str.81) #13
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false106, %sw.bb.cond.end110_crit_edge
  %cond111 = phi i32 [ %call109, %cond.false106 ], [ 0, %sw.bb.cond.end110_crit_edge ]
  %add112 = add i32 %cond111, %sz.3
  br label %if.end154

land.end:                                         ; preds = %if.end97
  %.b964 = load i1, ptr @multipath_status.__already_done, align 1
  br i1 %.b964, label %land.end.if.end154_crit_edge, label %if.then119, !prof !313

land.end.if.end154_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then119:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @multipath_status.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1827, i32 noundef 9, ptr noundef null) #13
  br label %if.end154

if.end154:                                        ; preds = %if.then119, %land.end.if.end154_crit_edge, %cond.end110, %if.end97.if.end154_crit_edge
  %sz.4 = phi i32 [ %add112, %cond.end110 ], [ %sz.3, %if.end97.if.end154_crit_edge ], [ %sz.3, %if.then119 ], [ %sz.3, %land.end.if.end154_crit_edge ]
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_handler_name, align 4
  %tobool155.not = icmp eq ptr %38, null
  br i1 %tobool155.not, label %if.end154.if.then158_crit_edge, label %if.else169

if.end154.if.then158_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then158

if.then158:                                       ; preds = %if.end154.if.then158_crit_edge, %cond.false, %if.then.if.then158_crit_edge
  %sz.41007 = phi i32 [ %sz.4, %if.end154.if.then158_crit_edge ], [ 0, %if.then.if.then158_crit_edge ], [ %call12, %cond.false ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.41007, i32 %maxlen)
  %cmp159.not = icmp ult i32 %sz.41007, %maxlen
  br i1 %cmp159.not, label %cond.false162, label %if.then158.if.end181_crit_edge

if.then158.if.end181_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

cond.false162:                                    ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr163 = getelementptr i8, ptr %result, i32 %sz.41007
  %sub164 = sub i32 %maxlen, %sz.41007
  %call165 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr163, i32 noundef %sub164, ptr noundef nonnull @.str.82) #13
  br label %if.end181

if.else169:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.4, i32 %maxlen)
  %cmp170.not = icmp ult i32 %sz.4, %maxlen
  br i1 %cmp170.not, label %cond.false173, label %if.else169.if.end181_crit_edge

if.else169.if.end181_crit_edge:                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

cond.false173:                                    ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr174 = getelementptr i8, ptr %result, i32 %sz.4
  %sub175 = sub i32 %maxlen, %sz.4
  %call177 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr174, i32 noundef %sub175, ptr noundef nonnull @.str.83, ptr noundef nonnull %38) #13
  br label %if.end181

if.end181:                                        ; preds = %cond.false173, %if.else169.if.end181_crit_edge, %cond.false162, %if.then158.if.end181_crit_edge
  %sz.41008 = phi i32 [ %sz.41007, %cond.false162 ], [ %sz.41007, %if.then158.if.end181_crit_edge ], [ %sz.4, %cond.false173 ], [ %sz.4, %if.else169.if.end181_crit_edge ]
  %cond167.pn = phi i32 [ %call165, %cond.false162 ], [ 0, %if.then158.if.end181_crit_edge ], [ %call177, %cond.false173 ], [ 0, %if.else169.if.end181_crit_edge ]
  %sz.5 = add i32 %cond167.pn, %sz.41008
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.5, i32 %maxlen)
  %cmp182.not = icmp ult i32 %sz.5, %maxlen
  br i1 %cmp182.not, label %cond.false185, label %if.end181.cond.end189_crit_edge

if.end181.cond.end189_crit_edge:                  ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end189

cond.false185:                                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr186 = getelementptr i8, ptr %result, i32 %sz.5
  %sub187 = sub i32 %maxlen, %sz.5
  %nr_priority_groups = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %nr_priority_groups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_priority_groups, align 4
  %call188 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.76, i32 noundef %40) #13
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false185, %if.end181.cond.end189_crit_edge
  %cond190 = phi i32 [ %call188, %cond.false185 ], [ 0, %if.end181.cond.end189_crit_edge ]
  %add191 = add i32 %cond190, %sz.5
  %next_pg = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %next_pg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next_pg, align 4
  %tobool192.not = icmp eq ptr %42, null
  br i1 %tobool192.not, label %if.else196, label %if.then193

if.then193:                                       ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #15
  %pg_num195 = getelementptr inbounds %struct.priority_group, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %pg_num195 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pg_num195, align 4
  br label %if.end206

if.else196:                                       ; preds = %cond.end189
  %current_pg = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %current_pg, align 4
  %tobool197.not = icmp eq ptr %46, null
  br i1 %tobool197.not, label %if.else201, label %if.then198

if.then198:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  %pg_num200 = getelementptr inbounds %struct.priority_group, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %pg_num200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pg_num200, align 4
  br label %if.end206

if.else201:                                       ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #15
  %nr_priority_groups202 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %nr_priority_groups202 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_priority_groups202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool203.not = icmp ne i32 %50, 0
  %cond204 = zext i1 %tobool203.not to i32
  br label %if.end206

if.end206:                                        ; preds = %if.else201, %if.then198, %if.then193
  %pg_num.0 = phi i32 [ %44, %if.then193 ], [ %48, %if.then198 ], [ %cond204, %if.else201 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add191, i32 %maxlen)
  %cmp207.not = icmp ult i32 %add191, %maxlen
  br i1 %cmp207.not, label %cond.false210, label %if.end206.cond.end214_crit_edge

if.end206.cond.end214_crit_edge:                  ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end214

cond.false210:                                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr211 = getelementptr i8, ptr %result, i32 %add191
  %sub212 = sub i32 %maxlen, %add191
  %call213 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr211, i32 noundef %sub212, ptr noundef nonnull @.str.76, i32 noundef %pg_num.0) #13
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false210, %if.end206.cond.end214_crit_edge
  %cond215 = phi i32 [ %call213, %cond.false210 ], [ 0, %if.end206.cond.end214_crit_edge ]
  %add216 = add i32 %cond215, %add191
  %51 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %type, label %cond.end214.sw.epilog631_crit_edge [
    i32 0, label %sw.bb217
    i32 1, label %sw.bb334
    i32 2, label %sw.bb455
  ]

cond.end214.sw.epilog631_crit_edge:               ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

sw.bb217:                                         ; preds = %cond.end214
  %priority_groups = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %priority_groups to i32
  call void @__asan_load4_noabort(i32 %52)
  %pg.01046 = load ptr, ptr %priority_groups, align 4
  %cmp221.not1047 = icmp eq ptr %pg.01046, %priority_groups
  br i1 %cmp221.not1047, label %sw.bb217.sw.epilog631_crit_edge, label %for.body.lr.ph

sw.bb217.sw.epilog631_crit_edge:                  ; preds = %sw.bb217
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

for.body.lr.ph:                                   ; preds = %sw.bb217
  %current_pg227 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 4
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %cond.end277.for.cond.loopexit_crit_edge
  %sz.8.lcssa = phi i32 [ %add279, %cond.end277.for.cond.loopexit_crit_edge ], [ %sz.9, %for.inc.for.cond.loopexit_crit_edge ]
  %53 = ptrtoint ptr %pg.01050 to i32
  call void @__asan_load4_noabort(i32 %53)
  %pg.0 = load ptr, ptr %pg.01050, align 4
  %cmp221.not = icmp eq ptr %pg.0, %priority_groups
  br i1 %cmp221.not, label %for.cond.loopexit.sw.epilog631_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.loopexit.sw.epilog631_crit_edge:         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %pg.01050 = phi ptr [ %pg.01046, %for.body.lr.ph ], [ %pg.0, %for.cond.loopexit.for.body_crit_edge ]
  %sz.61048 = phi i32 [ %add216, %for.body.lr.ph ], [ %sz.8.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %bypassed = getelementptr inbounds %struct.priority_group, ptr %pg.01050, i32 0, i32 6
  %54 = ptrtoint ptr %bypassed to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %bypassed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else226, label %for.body.if.end233_crit_edge

for.body.if.end233_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.else226:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %current_pg227 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %current_pg227, align 4
  %cmp228 = icmp eq ptr %pg.01050, %56
  %. = select i1 %cmp228, i32 65, i32 69
  br label %if.end233

if.end233:                                        ; preds = %if.else226, %for.body.if.end233_crit_edge
  %state.0 = phi i32 [ 68, %for.body.if.end233_crit_edge ], [ %., %if.else226 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.61048, i32 %maxlen)
  %cmp234.not = icmp ult i32 %sz.61048, %maxlen
  br i1 %cmp234.not, label %cond.false237, label %if.end233.cond.end242_crit_edge

if.end233.cond.end242_crit_edge:                  ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end242

cond.false237:                                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr238 = getelementptr i8, ptr %result, i32 %sz.61048
  %sub239 = sub i32 %maxlen, %sz.61048
  %call241 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr238, i32 noundef %sub239, ptr noundef nonnull @.str.84, i32 noundef %state.0) #13
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false237, %if.end233.cond.end242_crit_edge
  %cond243 = phi i32 [ %call241, %cond.false237 ], [ 0, %if.end233.cond.end242_crit_edge ]
  %add244 = add i32 %cond243, %sz.61048
  %ps = getelementptr inbounds %struct.priority_group, ptr %pg.01050, i32 0, i32 2
  %57 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ps, align 4
  %status = getelementptr inbounds %struct.path_selector_type, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %status, align 4
  %tobool246.not = icmp eq ptr %60, null
  br i1 %tobool246.not, label %if.else256, label %if.then247

if.then247:                                       ; preds = %cond.end242
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr252 = getelementptr i8, ptr %result, i32 %add244
  %sub253 = sub i32 %maxlen, %add244
  %call254 = tail call i32 %60(ptr noundef %ps, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr252, i32 noundef %sub253) #13
  br label %if.end267

if.else256:                                       ; preds = %cond.end242
  call void @__sanitizer_cov_trace_cmp4(i32 %add244, i32 %maxlen)
  %cmp257.not = icmp ult i32 %add244, %maxlen
  br i1 %cmp257.not, label %cond.false260, label %if.else256.if.end267_crit_edge

if.else256.if.end267_crit_edge:                   ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end267

cond.false260:                                    ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr261 = getelementptr i8, ptr %result, i32 %add244
  %sub262 = sub i32 %maxlen, %add244
  %call263 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr261, i32 noundef %sub262, ptr noundef nonnull @.str.82) #13
  br label %if.end267

if.end267:                                        ; preds = %cond.false260, %if.else256.if.end267_crit_edge, %if.then247
  %call254.pn = phi i32 [ %call254, %if.then247 ], [ %call263, %cond.false260 ], [ 0, %if.else256.if.end267_crit_edge ]
  %sz.7 = add i32 %call254.pn, %add244
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.7, i32 %maxlen)
  %cmp268.not = icmp ult i32 %sz.7, %maxlen
  br i1 %cmp268.not, label %cond.false271, label %if.end267.cond.end277_crit_edge

if.end267.cond.end277_crit_edge:                  ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end277

cond.false271:                                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr272 = getelementptr i8, ptr %result, i32 %sz.7
  %sub273 = sub i32 %maxlen, %sz.7
  %nr_pgpaths = getelementptr inbounds %struct.priority_group, ptr %pg.01050, i32 0, i32 4
  %61 = ptrtoint ptr %nr_pgpaths to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_pgpaths, align 4
  %63 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ps, align 4
  %info_args = getelementptr inbounds %struct.path_selector_type, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %info_args to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %info_args, align 4
  %call276 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr272, i32 noundef %sub273, ptr noundef nonnull @.str.85, i32 noundef %62, i32 noundef %66) #13
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false271, %if.end267.cond.end277_crit_edge
  %cond278 = phi i32 [ %call276, %cond.false271 ], [ 0, %if.end267.cond.end277_crit_edge ]
  %add279 = add i32 %cond278, %sz.7
  %pgpaths = getelementptr inbounds %struct.priority_group, ptr %pg.01050, i32 0, i32 5
  %67 = ptrtoint ptr %pgpaths to i32
  call void @__asan_load4_noabort(i32 %67)
  %p.01040 = load ptr, ptr %pgpaths, align 4
  %cmp287.not1041 = icmp eq ptr %p.01040, %pgpaths
  br i1 %cmp287.not1041, label %cond.end277.for.cond.loopexit_crit_edge, label %cond.end277.for.body291_crit_edge

cond.end277.for.body291_crit_edge:                ; preds = %cond.end277
  br label %for.body291

cond.end277.for.cond.loopexit_crit_edge:          ; preds = %cond.end277
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

for.body291:                                      ; preds = %for.inc.for.body291_crit_edge, %cond.end277.for.body291_crit_edge
  %p.01044 = phi ptr [ %p.0, %for.inc.for.body291_crit_edge ], [ %p.01040, %cond.end277.for.body291_crit_edge ]
  %sz.81042 = phi i32 [ %sz.9, %for.inc.for.body291_crit_edge ], [ %add279, %cond.end277.for.body291_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.81042, i32 %maxlen)
  %cmp292.not = icmp ult i32 %sz.81042, %maxlen
  br i1 %cmp292.not, label %cond.false295, label %for.body291.cond.end304_crit_edge

for.body291.cond.end304_crit_edge:                ; preds = %for.body291
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end304

cond.false295:                                    ; preds = %for.body291
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr296 = getelementptr i8, ptr %result, i32 %sz.81042
  %sub297 = sub i32 %maxlen, %sz.81042
  %path = getelementptr inbounds %struct.pgpath, ptr %p.01044, i32 0, i32 3
  %68 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %path, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %69, i32 0, i32 3
  %is_active = getelementptr inbounds %struct.pgpath, ptr %p.01044, i32 0, i32 5
  %70 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load298 = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load298)
  %bf.cast300.not = icmp sgt i8 %bf.load298, -1
  %cond302 = select i1 %bf.cast300.not, ptr @.str.88, ptr @.str.87
  %fail_count = getelementptr inbounds %struct.pgpath, ptr %p.01044, i32 0, i32 2
  %71 = ptrtoint ptr %fail_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fail_count, align 4
  %call303 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr296, i32 noundef %sub297, ptr noundef nonnull @.str.86, ptr noundef %name, ptr noundef nonnull %cond302, i32 noundef %72) #13
  br label %cond.end304

cond.end304:                                      ; preds = %cond.false295, %for.body291.cond.end304_crit_edge
  %cond305 = phi i32 [ %call303, %cond.false295 ], [ 0, %for.body291.cond.end304_crit_edge ]
  %add306 = add i32 %cond305, %sz.81042
  %73 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ps, align 4
  %status309 = getelementptr inbounds %struct.path_selector_type, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %status309 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %status309, align 4
  %tobool310.not = icmp eq ptr %76, null
  br i1 %tobool310.not, label %cond.end304.for.inc_crit_edge, label %if.then311

cond.end304.for.inc_crit_edge:                    ; preds = %cond.end304
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then311:                                       ; preds = %cond.end304
  call void @__sanitizer_cov_trace_pc() #15
  %path316 = getelementptr inbounds %struct.pgpath, ptr %p.01044, i32 0, i32 3
  %add.ptr317 = getelementptr i8, ptr %result, i32 %add306
  %sub318 = sub i32 %maxlen, %add306
  %call319 = tail call i32 %76(ptr noundef %ps, ptr noundef %path316, i32 noundef 0, ptr noundef %add.ptr317, i32 noundef %sub318) #13
  %add320 = add i32 %call319, %add306
  br label %for.inc

for.inc:                                          ; preds = %if.then311, %cond.end304.for.inc_crit_edge
  %sz.9 = phi i32 [ %add320, %if.then311 ], [ %add306, %cond.end304.for.inc_crit_edge ]
  %77 = ptrtoint ptr %p.01044 to i32
  call void @__asan_load4_noabort(i32 %77)
  %p.0 = load ptr, ptr %p.01044, align 4
  %cmp287.not = icmp eq ptr %p.0, %pgpaths
  br i1 %cmp287.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body291_crit_edge

for.inc.for.body291_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body291

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

sw.bb334:                                         ; preds = %cond.end214
  %priority_groups336 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %priority_groups336 to i32
  call void @__asan_load4_noabort(i32 %78)
  %pg.11035 = load ptr, ptr %priority_groups336, align 4
  %cmp343.not1036 = icmp eq ptr %pg.11035, %priority_groups336
  br i1 %cmp343.not1036, label %sw.bb334.sw.epilog631_crit_edge, label %sw.bb334.for.body347_crit_edge

sw.bb334.for.body347_crit_edge:                   ; preds = %sw.bb334
  br label %for.body347

sw.bb334.sw.epilog631_crit_edge:                  ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

for.cond340.loopexit:                             ; preds = %for.inc441.for.cond340.loopexit_crit_edge, %cond.end396.for.cond340.loopexit_crit_edge
  %sz.12.lcssa = phi i32 [ %add398, %cond.end396.for.cond340.loopexit_crit_edge ], [ %sz.13, %for.inc441.for.cond340.loopexit_crit_edge ]
  %79 = ptrtoint ptr %pg.11039 to i32
  call void @__asan_load4_noabort(i32 %79)
  %pg.1 = load ptr, ptr %pg.11039, align 4
  %cmp343.not = icmp eq ptr %pg.1, %priority_groups336
  br i1 %cmp343.not, label %for.cond340.loopexit.sw.epilog631_crit_edge, label %for.cond340.loopexit.for.body347_crit_edge

for.cond340.loopexit.for.body347_crit_edge:       ; preds = %for.cond340.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body347

for.cond340.loopexit.sw.epilog631_crit_edge:      ; preds = %for.cond340.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

for.body347:                                      ; preds = %for.cond340.loopexit.for.body347_crit_edge, %sw.bb334.for.body347_crit_edge
  %pg.11039 = phi ptr [ %pg.1, %for.cond340.loopexit.for.body347_crit_edge ], [ %pg.11035, %sw.bb334.for.body347_crit_edge ]
  %sz.101037 = phi i32 [ %sz.12.lcssa, %for.cond340.loopexit.for.body347_crit_edge ], [ %add216, %sw.bb334.for.body347_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.101037, i32 %maxlen)
  %cmp348.not = icmp ult i32 %sz.101037, %maxlen
  br i1 %cmp348.not, label %cond.false351, label %for.body347.cond.end358_crit_edge

for.body347.cond.end358_crit_edge:                ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end358

cond.false351:                                    ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr352 = getelementptr i8, ptr %result, i32 %sz.101037
  %sub353 = sub i32 %maxlen, %sz.101037
  %ps354 = getelementptr inbounds %struct.priority_group, ptr %pg.11039, i32 0, i32 2
  %80 = ptrtoint ptr %ps354 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ps354, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %call357 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr352, i32 noundef %sub353, ptr noundef nonnull @.str.89, ptr noundef %83) #13
  br label %cond.end358

cond.end358:                                      ; preds = %cond.false351, %for.body347.cond.end358_crit_edge
  %cond359 = phi i32 [ %call357, %cond.false351 ], [ 0, %for.body347.cond.end358_crit_edge ]
  %add360 = add i32 %cond359, %sz.101037
  %ps361 = getelementptr inbounds %struct.priority_group, ptr %pg.11039, i32 0, i32 2
  %84 = ptrtoint ptr %ps361 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ps361, align 4
  %status363 = getelementptr inbounds %struct.path_selector_type, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %status363 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %status363, align 4
  %tobool364.not = icmp eq ptr %87, null
  br i1 %tobool364.not, label %if.else374, label %if.then365

if.then365:                                       ; preds = %cond.end358
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr370 = getelementptr i8, ptr %result, i32 %add360
  %sub371 = sub i32 %maxlen, %add360
  %call372 = tail call i32 %87(ptr noundef %ps361, ptr noundef null, i32 noundef 1, ptr noundef %add.ptr370, i32 noundef %sub371) #13
  br label %if.end385

if.else374:                                       ; preds = %cond.end358
  call void @__sanitizer_cov_trace_cmp4(i32 %add360, i32 %maxlen)
  %cmp375.not = icmp ult i32 %add360, %maxlen
  br i1 %cmp375.not, label %cond.false378, label %if.else374.if.end385_crit_edge

if.else374.if.end385_crit_edge:                   ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end385

cond.false378:                                    ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr379 = getelementptr i8, ptr %result, i32 %add360
  %sub380 = sub i32 %maxlen, %add360
  %call381 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr379, i32 noundef %sub380, ptr noundef nonnull @.str.82) #13
  br label %if.end385

if.end385:                                        ; preds = %cond.false378, %if.else374.if.end385_crit_edge, %if.then365
  %call372.pn = phi i32 [ %call372, %if.then365 ], [ %call381, %cond.false378 ], [ 0, %if.else374.if.end385_crit_edge ]
  %sz.11 = add i32 %call372.pn, %add360
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.11, i32 %maxlen)
  %cmp386.not = icmp ult i32 %sz.11, %maxlen
  br i1 %cmp386.not, label %cond.false389, label %if.end385.cond.end396_crit_edge

if.end385.cond.end396_crit_edge:                  ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end396

cond.false389:                                    ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr390 = getelementptr i8, ptr %result, i32 %sz.11
  %sub391 = sub i32 %maxlen, %sz.11
  %nr_pgpaths392 = getelementptr inbounds %struct.priority_group, ptr %pg.11039, i32 0, i32 4
  %88 = ptrtoint ptr %nr_pgpaths392 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_pgpaths392, align 4
  %90 = ptrtoint ptr %ps361 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ps361, align 4
  %table_args = getelementptr inbounds %struct.path_selector_type, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %table_args to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %table_args, align 4
  %call395 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr390, i32 noundef %sub391, ptr noundef nonnull @.str.85, i32 noundef %89, i32 noundef %93) #13
  br label %cond.end396

cond.end396:                                      ; preds = %cond.false389, %if.end385.cond.end396_crit_edge
  %cond397 = phi i32 [ %call395, %cond.false389 ], [ 0, %if.end385.cond.end396_crit_edge ]
  %add398 = add i32 %cond397, %sz.11
  %pgpaths400 = getelementptr inbounds %struct.priority_group, ptr %pg.11039, i32 0, i32 5
  %94 = ptrtoint ptr %pgpaths400 to i32
  call void @__asan_load4_noabort(i32 %94)
  %p.11029 = load ptr, ptr %pgpaths400, align 4
  %cmp407.not1030 = icmp eq ptr %p.11029, %pgpaths400
  br i1 %cmp407.not1030, label %cond.end396.for.cond340.loopexit_crit_edge, label %cond.end396.for.body411_crit_edge

cond.end396.for.body411_crit_edge:                ; preds = %cond.end396
  br label %for.body411

cond.end396.for.cond340.loopexit_crit_edge:       ; preds = %cond.end396
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond340.loopexit

for.body411:                                      ; preds = %for.inc441.for.body411_crit_edge, %cond.end396.for.body411_crit_edge
  %p.11033 = phi ptr [ %p.1, %for.inc441.for.body411_crit_edge ], [ %p.11029, %cond.end396.for.body411_crit_edge ]
  %sz.121031 = phi i32 [ %sz.13, %for.inc441.for.body411_crit_edge ], [ %add398, %cond.end396.for.body411_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.121031, i32 %maxlen)
  %cmp412.not = icmp ult i32 %sz.121031, %maxlen
  br i1 %cmp412.not, label %cond.false415, label %for.body411.cond.end423_crit_edge

for.body411.cond.end423_crit_edge:                ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end423

cond.false415:                                    ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr416 = getelementptr i8, ptr %result, i32 %sz.121031
  %sub417 = sub i32 %maxlen, %sz.121031
  %path418 = getelementptr inbounds %struct.pgpath, ptr %p.11033, i32 0, i32 3
  %95 = ptrtoint ptr %path418 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %path418, align 4
  %name420 = getelementptr inbounds %struct.dm_dev, ptr %96, i32 0, i32 3
  %call422 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr416, i32 noundef %sub417, ptr noundef nonnull @.str.89, ptr noundef %name420) #13
  br label %cond.end423

cond.end423:                                      ; preds = %cond.false415, %for.body411.cond.end423_crit_edge
  %cond424 = phi i32 [ %call422, %cond.false415 ], [ 0, %for.body411.cond.end423_crit_edge ]
  %add425 = add i32 %cond424, %sz.121031
  %97 = ptrtoint ptr %ps361 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ps361, align 4
  %status428 = getelementptr inbounds %struct.path_selector_type, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %status428 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %status428, align 4
  %tobool429.not = icmp eq ptr %100, null
  br i1 %tobool429.not, label %cond.end423.for.inc441_crit_edge, label %if.then430

cond.end423.for.inc441_crit_edge:                 ; preds = %cond.end423
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc441

if.then430:                                       ; preds = %cond.end423
  call void @__sanitizer_cov_trace_pc() #15
  %path435 = getelementptr inbounds %struct.pgpath, ptr %p.11033, i32 0, i32 3
  %add.ptr436 = getelementptr i8, ptr %result, i32 %add425
  %sub437 = sub i32 %maxlen, %add425
  %call438 = tail call i32 %100(ptr noundef %ps361, ptr noundef %path435, i32 noundef 1, ptr noundef %add.ptr436, i32 noundef %sub437) #13
  %add439 = add i32 %call438, %add425
  br label %for.inc441

for.inc441:                                       ; preds = %if.then430, %cond.end423.for.inc441_crit_edge
  %sz.13 = phi i32 [ %add439, %if.then430 ], [ %add425, %cond.end423.for.inc441_crit_edge ]
  %101 = ptrtoint ptr %p.11033 to i32
  call void @__asan_load4_noabort(i32 %101)
  %p.1 = load ptr, ptr %p.11033, align 4
  %cmp407.not = icmp eq ptr %p.1, %pgpaths400
  br i1 %cmp407.not, label %for.inc441.for.cond340.loopexit_crit_edge, label %for.inc441.for.body411_crit_edge

for.inc441.for.body411_crit_edge:                 ; preds = %for.inc441
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body411

for.inc441.for.cond340.loopexit_crit_edge:        ; preds = %for.inc441
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond340.loopexit

sw.bb455:                                         ; preds = %cond.end214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp456 = icmp eq i32 %maxlen, 0
  br i1 %cmp456, label %sw.bb455.cond.end472_crit_edge, label %cond.false459

sw.bb455.cond.end472_crit_edge:                   ; preds = %sw.bb455
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end472

cond.false459:                                    ; preds = %sw.bb455
  call void @__sanitizer_cov_trace_pc() #15
  %type462 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %102 = ptrtoint ptr %type462 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %type462, align 4
  %name463 = getelementptr inbounds %struct.target_type, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %name463 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name463, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %103, i32 0, i32 3
  %106 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %version, align 8
  %arrayidx467 = getelementptr %struct.target_type, ptr %103, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx467, align 4
  %arrayidx470 = getelementptr %struct.target_type, ptr %103, i32 0, i32 3, i32 2
  %110 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx470, align 8
  %call471 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.90, ptr noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111) #13
  br label %cond.end472

cond.end472:                                      ; preds = %cond.false459, %sw.bb455.cond.end472_crit_edge
  %cond473 = phi i32 [ %call471, %cond.false459 ], [ 0, %sw.bb455.cond.end472_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond473, i32 %maxlen)
  %cmp475.not = icmp ult i32 %cond473, %maxlen
  br i1 %cmp475.not, label %cond.false478, label %cond.end472.cond.end483_crit_edge

cond.end472.cond.end483_crit_edge:                ; preds = %cond.end472
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end483

cond.false478:                                    ; preds = %cond.end472
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr479 = getelementptr i8, ptr %result, i32 %cond473
  %sub480 = sub i32 %maxlen, %cond473
  %nr_priority_groups481 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 7
  %112 = ptrtoint ptr %nr_priority_groups481 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr_priority_groups481, align 4
  %call482 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr479, i32 noundef %sub480, ptr noundef nonnull @.str.91, i32 noundef %113) #13
  br label %cond.end483

cond.end483:                                      ; preds = %cond.false478, %cond.end472.cond.end483_crit_edge
  %cond484 = phi i32 [ %call482, %cond.false478 ], [ 0, %cond.end472.cond.end483_crit_edge ]
  %add485 = add i32 %cond484, %cond473
  %priority_groups487 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 8
  %114 = ptrtoint ptr %priority_groups487 to i32
  call void @__asan_load4_noabort(i32 %114)
  %pg.21019 = load ptr, ptr %priority_groups487, align 4
  %cmp494.not1020 = icmp eq ptr %pg.21019, %priority_groups487
  br i1 %cmp494.not1020, label %cond.end483.for.end620_crit_edge, label %for.body498.lr.ph

cond.end483.for.end620_crit_edge:                 ; preds = %cond.end483
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end620

for.body498.lr.ph:                                ; preds = %cond.end483
  %current_pg505 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 4
  br label %for.body498

for.body498:                                      ; preds = %for.end612.for.body498_crit_edge, %for.body498.lr.ph
  %pg.21027 = phi ptr [ %pg.21019, %for.body498.lr.ph ], [ %pg.2, %for.end612.for.body498_crit_edge ]
  %sz.141025 = phi i32 [ %add485, %for.body498.lr.ph ], [ %sz.15.lcssa, %for.end612.for.body498_crit_edge ]
  %pg_counter.01021 = phi i32 [ 0, %for.body498.lr.ph ], [ %inc613, %for.end612.for.body498_crit_edge ]
  %bypassed499 = getelementptr inbounds %struct.priority_group, ptr %pg.21027, i32 0, i32 6
  %115 = ptrtoint ptr %bypassed499 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load500 = load i8, ptr %bypassed499, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load500)
  %bf.cast502.not = icmp sgt i8 %bf.load500, -1
  br i1 %bf.cast502.not, label %if.else504, label %for.body498.if.end511_crit_edge

for.body498.if.end511_crit_edge:                  ; preds = %for.body498
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end511

if.else504:                                       ; preds = %for.body498
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %current_pg505 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %current_pg505, align 4
  %cmp506 = icmp eq ptr %pg.21027, %117
  %.965 = select i1 %cmp506, i32 65, i32 69
  br label %if.end511

if.end511:                                        ; preds = %if.else504, %for.body498.if.end511_crit_edge
  %state.1 = phi i32 [ 68, %for.body498.if.end511_crit_edge ], [ %.965, %if.else504 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.141025, i32 %maxlen)
  %cmp512.not = icmp ult i32 %sz.141025, %maxlen
  br i1 %cmp512.not, label %cond.false515, label %if.end511.cond.end520_crit_edge

if.end511.cond.end520_crit_edge:                  ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end520

cond.false515:                                    ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr516 = getelementptr i8, ptr %result, i32 %sz.141025
  %sub517 = sub i32 %maxlen, %sz.141025
  %call519 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr516, i32 noundef %sub517, ptr noundef nonnull @.str.92, i32 noundef %pg_counter.01021, i32 noundef %state.1) #13
  br label %cond.end520

cond.end520:                                      ; preds = %cond.false515, %if.end511.cond.end520_crit_edge
  %cond521 = phi i32 [ %call519, %cond.false515 ], [ 0, %if.end511.cond.end520_crit_edge ]
  %add522 = add i32 %cond521, %sz.141025
  call void @__sanitizer_cov_trace_cmp4(i32 %add522, i32 %maxlen)
  %cmp523.not = icmp ult i32 %add522, %maxlen
  br i1 %cmp523.not, label %cond.false526, label %cond.end520.cond.end531_crit_edge

cond.end520.cond.end531_crit_edge:                ; preds = %cond.end520
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end531

cond.false526:                                    ; preds = %cond.end520
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr527 = getelementptr i8, ptr %result, i32 %add522
  %sub528 = sub i32 %maxlen, %add522
  %nr_pgpaths529 = getelementptr inbounds %struct.priority_group, ptr %pg.21027, i32 0, i32 4
  %118 = ptrtoint ptr %nr_pgpaths529 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nr_pgpaths529, align 4
  %call530 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr527, i32 noundef %sub528, ptr noundef nonnull @.str.93, i32 noundef %pg_counter.01021, i32 noundef %119) #13
  br label %cond.end531

cond.end531:                                      ; preds = %cond.false526, %cond.end520.cond.end531_crit_edge
  %cond532 = phi i32 [ %call530, %cond.false526 ], [ 0, %cond.end520.cond.end531_crit_edge ]
  %add533 = add i32 %cond532, %add522
  call void @__sanitizer_cov_trace_cmp4(i32 %add533, i32 %maxlen)
  %cmp534.not = icmp ult i32 %add533, %maxlen
  br i1 %cmp534.not, label %cond.false537, label %cond.end531.cond.end544_crit_edge

cond.end531.cond.end544_crit_edge:                ; preds = %cond.end531
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end544

cond.false537:                                    ; preds = %cond.end531
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr538 = getelementptr i8, ptr %result, i32 %add533
  %sub539 = sub i32 %maxlen, %add533
  %ps540 = getelementptr inbounds %struct.priority_group, ptr %pg.21027, i32 0, i32 2
  %120 = ptrtoint ptr %ps540 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ps540, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %call543 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr538, i32 noundef %sub539, ptr noundef nonnull @.str.94, i32 noundef %pg_counter.01021, ptr noundef %123) #13
  br label %cond.end544

cond.end544:                                      ; preds = %cond.false537, %cond.end531.cond.end544_crit_edge
  %cond545 = phi i32 [ %call543, %cond.false537 ], [ 0, %cond.end531.cond.end544_crit_edge ]
  %add546 = add i32 %cond545, %add533
  %pgpaths548 = getelementptr inbounds %struct.priority_group, ptr %pg.21027, i32 0, i32 5
  %124 = ptrtoint ptr %pgpaths548 to i32
  call void @__asan_load4_noabort(i32 %124)
  %p.21010 = load ptr, ptr %pgpaths548, align 4
  %cmp555.not1011 = icmp eq ptr %p.21010, %pgpaths548
  br i1 %cmp555.not1011, label %cond.end544.for.end612_crit_edge, label %for.body559.lr.ph

cond.end544.for.end612_crit_edge:                 ; preds = %cond.end544
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end612

for.body559.lr.ph:                                ; preds = %cond.end544
  %ps581 = getelementptr inbounds %struct.priority_group, ptr %pg.21027, i32 0, i32 2
  br label %for.body559

for.body559:                                      ; preds = %if.end605.for.body559_crit_edge, %for.body559.lr.ph
  %p.21018 = phi ptr [ %p.21010, %for.body559.lr.ph ], [ %p.2, %if.end605.for.body559_crit_edge ]
  %sz.151016 = phi i32 [ %add546, %for.body559.lr.ph ], [ %sz.16, %if.end605.for.body559_crit_edge ]
  %pgpath_counter.01012 = phi i32 [ 0, %for.body559.lr.ph ], [ %inc, %if.end605.for.body559_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.151016, i32 %maxlen)
  %cmp560.not = icmp ult i32 %sz.151016, %maxlen
  br i1 %cmp560.not, label %cond.false563, label %for.body559.cond.end578_crit_edge

for.body559.cond.end578_crit_edge:                ; preds = %for.body559
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end578

cond.false563:                                    ; preds = %for.body559
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr564 = getelementptr i8, ptr %result, i32 %sz.151016
  %sub565 = sub i32 %maxlen, %sz.151016
  %path566 = getelementptr inbounds %struct.pgpath, ptr %p.21018, i32 0, i32 3
  %125 = ptrtoint ptr %path566 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %path566, align 4
  %name568 = getelementptr inbounds %struct.dm_dev, ptr %126, i32 0, i32 3
  %is_active570 = getelementptr inbounds %struct.pgpath, ptr %p.21018, i32 0, i32 5
  %127 = ptrtoint ptr %is_active570 to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load571 = load i8, ptr %is_active570, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load571)
  %bf.cast573.not = icmp sgt i8 %bf.load571, -1
  %cond575 = select i1 %bf.cast573.not, i32 70, i32 65
  %fail_count576 = getelementptr inbounds %struct.pgpath, ptr %p.21018, i32 0, i32 2
  %128 = ptrtoint ptr %fail_count576 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fail_count576, align 4
  %call577 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr564, i32 noundef %sub565, ptr noundef nonnull @.str.95, i32 noundef %pg_counter.01021, i32 noundef %pgpath_counter.01012, ptr noundef %name568, i32 noundef %pg_counter.01021, i32 noundef %pgpath_counter.01012, i32 noundef %cond575, i32 noundef %pg_counter.01021, i32 noundef %pgpath_counter.01012, i32 noundef %129) #13
  br label %cond.end578

cond.end578:                                      ; preds = %cond.false563, %for.body559.cond.end578_crit_edge
  %cond579 = phi i32 [ %call577, %cond.false563 ], [ 0, %for.body559.cond.end578_crit_edge ]
  %add580 = add i32 %cond579, %sz.151016
  %130 = ptrtoint ptr %ps581 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ps581, align 4
  %status583 = getelementptr inbounds %struct.path_selector_type, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %status583 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %status583, align 4
  %tobool584.not = icmp eq ptr %133, null
  br i1 %tobool584.not, label %cond.end578.if.end605_crit_edge, label %if.then585

cond.end578.if.end605_crit_edge:                  ; preds = %cond.end578
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end605

if.then585:                                       ; preds = %cond.end578
  call void @__sanitizer_cov_trace_cmp4(i32 %add580, i32 %maxlen)
  %cmp586.not = icmp ult i32 %add580, %maxlen
  br i1 %cmp586.not, label %cond.false589, label %if.then585.cond.end593_crit_edge

if.then585.cond.end593_crit_edge:                 ; preds = %if.then585
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end593

cond.false589:                                    ; preds = %if.then585
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr590 = getelementptr i8, ptr %result, i32 %add580
  %sub591 = sub i32 %maxlen, %add580
  %call592 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr590, i32 noundef %sub591, ptr noundef nonnull @.str.96, i32 noundef %pg_counter.01021, i32 noundef %pgpath_counter.01012) #13
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false589, %if.then585.cond.end593_crit_edge
  %cond594 = phi i32 [ %call592, %cond.false589 ], [ 0, %if.then585.cond.end593_crit_edge ]
  %add595 = add i32 %cond594, %add580
  %134 = ptrtoint ptr %ps581 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ps581, align 4
  %status598 = getelementptr inbounds %struct.path_selector_type, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %status598 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %status598, align 4
  %path600 = getelementptr inbounds %struct.pgpath, ptr %p.21018, i32 0, i32 3
  %add.ptr601 = getelementptr i8, ptr %result, i32 %add595
  %sub602 = sub i32 %maxlen, %add595
  %call603 = tail call i32 %137(ptr noundef %ps581, ptr noundef %path600, i32 noundef 2, ptr noundef %add.ptr601, i32 noundef %sub602) #13
  %add604 = add i32 %call603, %add595
  br label %if.end605

if.end605:                                        ; preds = %cond.end593, %cond.end578.if.end605_crit_edge
  %sz.16 = phi i32 [ %add604, %cond.end593 ], [ %add580, %cond.end578.if.end605_crit_edge ]
  %inc = add i32 %pgpath_counter.01012, 1
  %138 = ptrtoint ptr %p.21018 to i32
  call void @__asan_load4_noabort(i32 %138)
  %p.2 = load ptr, ptr %p.21018, align 4
  %cmp555.not = icmp eq ptr %p.2, %pgpaths548
  br i1 %cmp555.not, label %if.end605.for.end612_crit_edge, label %if.end605.for.body559_crit_edge

if.end605.for.body559_crit_edge:                  ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body559

if.end605.for.end612_crit_edge:                   ; preds = %if.end605
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end612

for.end612:                                       ; preds = %if.end605.for.end612_crit_edge, %cond.end544.for.end612_crit_edge
  %sz.15.lcssa = phi i32 [ %add546, %cond.end544.for.end612_crit_edge ], [ %sz.16, %if.end605.for.end612_crit_edge ]
  %inc613 = add i32 %pg_counter.01021, 1
  %139 = ptrtoint ptr %pg.21027 to i32
  call void @__asan_load4_noabort(i32 %139)
  %pg.2 = load ptr, ptr %pg.21027, align 4
  %cmp494.not = icmp eq ptr %pg.2, %priority_groups487
  br i1 %cmp494.not, label %for.end612.for.end620_crit_edge, label %for.end612.for.body498_crit_edge

for.end612.for.body498_crit_edge:                 ; preds = %for.end612
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body498

for.end612.for.end620_crit_edge:                  ; preds = %for.end612
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end620

for.end620:                                       ; preds = %for.end612.for.end620_crit_edge, %cond.end483.for.end620_crit_edge
  %sz.14.lcssa = phi i32 [ %add485, %cond.end483.for.end620_crit_edge ], [ %sz.15.lcssa, %for.end612.for.end620_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.14.lcssa, i32 %maxlen)
  %cmp621.not = icmp ult i32 %sz.14.lcssa, %maxlen
  br i1 %cmp621.not, label %cond.false624, label %for.end620.sw.epilog631_crit_edge

for.end620.sw.epilog631_crit_edge:                ; preds = %for.end620
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog631

cond.false624:                                    ; preds = %for.end620
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr625 = getelementptr i8, ptr %result, i32 %sz.14.lcssa
  %sub626 = sub i32 %maxlen, %sz.14.lcssa
  %call627 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr625, i32 noundef %sub626, ptr noundef nonnull @.str.97) #13
  br label %sw.epilog631

sw.epilog631:                                     ; preds = %cond.false624, %for.end620.sw.epilog631_crit_edge, %for.cond340.loopexit.sw.epilog631_crit_edge, %sw.bb334.sw.epilog631_crit_edge, %for.cond.loopexit.sw.epilog631_crit_edge, %sw.bb217.sw.epilog631_crit_edge, %cond.end214.sw.epilog631_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_message(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %pgnum.i = alloca i32, align 4
  %dummy.i = alloca i8, align 1
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !310
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %work_mutex = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %work_mutex, i32 noundef 0) #13
  %call = tail call i32 @dm_suspended(ptr noundef %ti) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %3 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %argc, label %if.end.do.end26_crit_edge [
    i32 1, label %if.then1
    i32 2, label %if.end29
  ]

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %argv, align 4
  %call2 = tail call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @queue_if_no_path(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @__func__.multipath_message)
  %lock = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call fastcc void @enable_nopath_timeout(ptr noundef %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #13
  br label %out

if.else:                                          ; preds = %if.then1
  %call14 = tail call i32 @strcasecmp(ptr noundef %5, ptr noundef nonnull @.str.98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else.do.end26_crit_edge

if.else.do.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @queue_if_no_path(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @__func__.multipath_message)
  %nopath_timer.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 21
  %call.i = tail call i32 @del_timer_sync(ptr noundef %nopath_timer.i) #13
  br label %out

do.end26:                                         ; preds = %if.else.do.end26_crit_edge, %if.end.do.end26_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %argc) #16
  br label %out

if.end29:                                         ; preds = %if.end
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %argv, align 4
  %call31 = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx34 = getelementptr ptr, ptr %argv, i32 1
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx34, align 4
  %call35 = tail call fastcc i32 @bypass_pg_num(ptr noundef %2, ptr noundef %9, i1 noundef zeroext true)
  br label %out

if.else36:                                        ; preds = %if.end29
  %call38 = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41 = getelementptr ptr, ptr %argv, i32 1
  %10 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx41, align 4
  %call42 = tail call fastcc i32 @bypass_pg_num(ptr noundef %2, ptr noundef %11, i1 noundef zeroext false)
  br label %out

if.else43:                                        ; preds = %if.else36
  %call45 = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.else43
  %arrayidx48 = getelementptr ptr, ptr %argv, i32 1
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgnum.i) #13
  %14 = ptrtoint ptr %pgnum.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %pgnum.i, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #13
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %dummy.i, align 1, !annotation !310
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then47.do.end.i_crit_edge, label %lor.lhs.false.i

if.then47.do.end.i_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then47
  %call.i116 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %13, ptr noundef nonnull @.str.110, ptr noundef nonnull %pgnum.i, ptr noundef nonnull %dummy.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116)
  %cmp.not.i = icmp eq i32 %call.i116, 1
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %pgnum.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %lor.lhs.false1.i.do.end.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false1.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false1.i
  %nr_priority_groups.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 7
  %18 = ptrtoint ptr %nr_priority_groups.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_priority_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp7.i = icmp ugt i32 %17, %19
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %lor.lhs.false3.i.do.end.i_crit_edge, label %do.body10.i

lor.lhs.false3.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false3.i.do.end.i_crit_edge, %lor.lhs.false1.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.then47.do.end.i_crit_edge
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #16
  br label %switch_pg_num.exit

do.body10.i:                                      ; preds = %lor.lhs.false3.i
  %lock.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 1
  %call14.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %priority_groups.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 8
  %20 = ptrtoint ptr %priority_groups.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %pg.050.i = load ptr, ptr %priority_groups.i, align 4
  %cmp21.not51.i = icmp eq ptr %pg.050.i, %priority_groups.i
  br i1 %cmp21.not51.i, label %do.body10.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body10.i.for.end.i_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body10.i
  %current_pgpath.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 3
  %current_pg.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 4
  %next_pg.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pg.052.i = phi ptr [ %pg.050.i, %for.body.lr.ph.i ], [ %pg.0.i, %for.inc.i.for.body.i_crit_edge ]
  %bypassed.i = getelementptr inbounds %struct.priority_group, ptr %pg.052.i, i32 0, i32 6
  %21 = ptrtoint ptr %bypassed.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %bypassed.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %bypassed.i, align 4
  %22 = ptrtoint ptr %pgnum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pgnum.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %pgnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %current_pgpath.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %current_pgpath.i, align 4
  %25 = ptrtoint ptr %current_pg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %current_pg.i, align 4
  %26 = ptrtoint ptr %next_pg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pg.052.i, ptr %next_pg.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %pg.052.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pg.0.i = load ptr, ptr %pg.052.i, align 4
  %cmp21.not.i = icmp eq ptr %pg.0.i, %priority_groups.i
  br i1 %cmp21.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body10.i.for.end.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14.i) #13
  %trigger_event.i = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %trigger_event.i) #13
  br label %switch_pg_num.exit

switch_pg_num.exit:                               ; preds = %for.end.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgnum.i) #13
  br label %out

if.else50:                                        ; preds = %if.else43
  %call52 = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.else50.if.end71_crit_edge, label %if.else55

if.else50.if.end71_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.else55:                                        ; preds = %if.else50
  %call57 = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else55.if.end71_crit_edge, label %do.end63

if.else55.if.end71_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

do.end63:                                         ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %7) #16
  br label %out

if.end71:                                         ; preds = %if.else55.if.end71_crit_edge, %if.else50.if.end71_crit_edge
  %action.0 = phi ptr [ @reinstate_path, %if.else50.if.end71_crit_edge ], [ @fail_path, %if.else55.if.end71_crit_edge ]
  %arrayidx72 = getelementptr ptr, ptr %argv, i32 1
  %29 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx72, align 4
  %31 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ti, align 8
  %call73 = tail call i32 @dm_table_get_mode(ptr noundef %32) #13
  %call74 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %30, i32 noundef %call73, ptr noundef nonnull %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end83, label %do.end79

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx72, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %34) #16
  br label %out

if.end83:                                         ; preds = %if.end71
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %priority_groups.i117 = getelementptr inbounds %struct.multipath, ptr %2, i32 0, i32 8
  %37 = ptrtoint ptr %priority_groups.i117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %pg.037.i = load ptr, ptr %priority_groups.i117, align 4
  %cmp.not38.i = icmp eq ptr %pg.037.i, %priority_groups.i117
  br i1 %cmp.not38.i, label %if.end83.action_dev.exit_crit_edge, label %if.end83.for.body.i120_crit_edge

if.end83.for.body.i120_crit_edge:                 ; preds = %if.end83
  br label %for.body.i120

if.end83.action_dev.exit_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %action_dev.exit

for.cond.loopexit.i:                              ; preds = %for.inc.i122.for.cond.loopexit.i_crit_edge, %for.body.i120.for.cond.loopexit.i_crit_edge
  %r.1.lcssa.i = phi i32 [ %r.039.i, %for.body.i120.for.cond.loopexit.i_crit_edge ], [ %r.2.i, %for.inc.i122.for.cond.loopexit.i_crit_edge ]
  %38 = ptrtoint ptr %pg.040.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %pg.0.i118 = load ptr, ptr %pg.040.i, align 4
  %cmp.not.i119 = icmp eq ptr %pg.0.i118, %priority_groups.i117
  br i1 %cmp.not.i119, label %for.cond.loopexit.i.action_dev.exit_crit_edge, label %for.cond.loopexit.i.for.body.i120_crit_edge

for.cond.loopexit.i.for.body.i120_crit_edge:      ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i120

for.cond.loopexit.i.action_dev.exit_crit_edge:    ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %action_dev.exit

for.body.i120:                                    ; preds = %for.cond.loopexit.i.for.body.i120_crit_edge, %if.end83.for.body.i120_crit_edge
  %pg.040.i = phi ptr [ %pg.0.i118, %for.cond.loopexit.i.for.body.i120_crit_edge ], [ %pg.037.i, %if.end83.for.body.i120_crit_edge ]
  %r.039.i = phi i32 [ %r.1.lcssa.i, %for.cond.loopexit.i.for.body.i120_crit_edge ], [ -22, %if.end83.for.body.i120_crit_edge ]
  %pgpaths.i = getelementptr inbounds %struct.priority_group, ptr %pg.040.i, i32 0, i32 5
  %39 = ptrtoint ptr %pgpaths.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %pgpath.033.i = load ptr, ptr %pgpaths.i, align 4
  %cmp9.not34.i = icmp eq ptr %pgpath.033.i, %pgpaths.i
  br i1 %cmp9.not34.i, label %for.body.i120.for.cond.loopexit.i_crit_edge, label %for.body.i120.for.body11.i_crit_edge

for.body.i120.for.body11.i_crit_edge:             ; preds = %for.body.i120
  br label %for.body11.i

for.body.i120.for.cond.loopexit.i_crit_edge:      ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i

for.body11.i:                                     ; preds = %for.inc.i122.for.body11.i_crit_edge, %for.body.i120.for.body11.i_crit_edge
  %pgpath.036.i = phi ptr [ %pgpath.0.i, %for.inc.i122.for.body11.i_crit_edge ], [ %pgpath.033.i, %for.body.i120.for.body11.i_crit_edge ]
  %r.135.i = phi i32 [ %r.2.i, %for.inc.i122.for.body11.i_crit_edge ], [ %r.039.i, %for.body.i120.for.body11.i_crit_edge ]
  %path.i = getelementptr inbounds %struct.pgpath, ptr %pgpath.036.i, i32 0, i32 3
  %40 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %path.i, align 4
  %cmp13.i = icmp eq ptr %41, %36
  br i1 %cmp13.i, label %if.then.i, label %for.body11.i.for.inc.i122_crit_edge

for.body11.i.for.inc.i122_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i122

if.then.i:                                        ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i121 = call i32 %action.0(ptr noundef %pgpath.036.i) #13, !callees !314
  br label %for.inc.i122

for.inc.i122:                                     ; preds = %if.then.i, %for.body11.i.for.inc.i122_crit_edge
  %r.2.i = phi i32 [ %call.i121, %if.then.i ], [ %r.135.i, %for.body11.i.for.inc.i122_crit_edge ]
  %42 = ptrtoint ptr %pgpath.036.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %pgpath.0.i = load ptr, ptr %pgpath.036.i, align 4
  %cmp9.not.i = icmp eq ptr %pgpath.0.i, %pgpaths.i
  br i1 %cmp9.not.i, label %for.inc.i122.for.cond.loopexit.i_crit_edge, label %for.inc.i122.for.body11.i_crit_edge

for.inc.i122.for.body11.i_crit_edge:              ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11.i

for.inc.i122.for.cond.loopexit.i_crit_edge:       ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i

action_dev.exit:                                  ; preds = %for.cond.loopexit.i.action_dev.exit_crit_edge, %if.end83.action_dev.exit_crit_edge
  %r.0.lcssa.i = phi i32 [ -22, %if.end83.action_dev.exit_crit_edge ], [ %r.1.lcssa.i, %for.cond.loopexit.i.action_dev.exit_crit_edge ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %44) #13
  br label %out

out:                                              ; preds = %action_dev.exit, %do.end79, %do.end63, %switch_pg_num.exit, %if.then40, %if.then33, %do.end26, %if.then16, %if.then4, %entry.out_crit_edge
  %r.0 = phi i32 [ -22, %do.end26 ], [ -22, %do.end63 ], [ %call74, %do.end79 ], [ %r.0.lcssa.i, %action_dev.exit ], [ %retval.0.i, %switch_pg_num.exit ], [ %call42, %if.then40 ], [ %call35, %if.then33 ], [ 0, %if.then16 ], [ 0, %if.then4 ], [ -16, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %work_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #13
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef %bdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %current_pgpath, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end_crit_edge, label %mpath_double_check_test_bit.exit

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

mpath_double_check_test_bit.exit:                 ; preds = %lor.lhs.false
  %lock.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %1, align 4
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.i.not = icmp eq i32 %9, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #13
  br i1 %tobool10.i.not, label %mpath_double_check_test_bit.exit.if.end_crit_edge, label %mpath_double_check_test_bit.exit.if.then3_crit_edge

mpath_double_check_test_bit.exit.if.then3_crit_edge: ; preds = %mpath_double_check_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

mpath_double_check_test_bit.exit.if.end_crit_edge: ; preds = %mpath_double_check_test_bit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %mpath_double_check_test_bit.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc ptr @choose_pgpath(ptr noundef %1, i32 noundef 0)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else8, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %mpath_double_check_test_bit.exit.if.then3_crit_edge
  %pgpath.0102 = phi ptr [ %call1, %if.end.if.then3_crit_edge ], [ %3, %mpath_double_check_test_bit.exit.if.then3_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %1, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i91 = icmp eq i32 %12, 0
  br i1 %tobool.not.i91, label %if.then3.land.lhs.true_crit_edge, label %mpath_double_check_test_bit.exit97

if.then3.land.lhs.true_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

mpath_double_check_test_bit.exit97:               ; preds = %if.then3
  %lock.i92 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call5.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i92) #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.i94.not = icmp eq i32 %15, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i92, i32 noundef %call5.i93) #13
  br i1 %tobool10.i94.not, label %mpath_double_check_test_bit.exit97.land.lhs.true_crit_edge, label %mpath_double_check_test_bit.exit97.do.end30_crit_edge

mpath_double_check_test_bit.exit97.do.end30_crit_edge: ; preds = %mpath_double_check_test_bit.exit97
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

mpath_double_check_test_bit.exit97.land.lhs.true_crit_edge: ; preds = %mpath_double_check_test_bit.exit97
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.else8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %1, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #13
  br i1 %tobool20.not, label %if.else8.if.end64_crit_edge, label %if.else8.do.end30_crit_edge

if.else8.do.end30_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.else8.if.end64_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.end30:                                         ; preds = %if.else8.do.end30_crit_edge, %mpath_double_check_test_bit.exit97.do.end30_crit_edge
  %current_pg = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %current_pg, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.then33, label %do.end30.do.body37_crit_edge

do.end30.do.body37_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body37

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = tail call fastcc ptr @choose_pgpath(ptr noundef %1, i32 noundef 0)
  br label %do.body37

do.body37:                                        ; preds = %if.then33, %do.end30.do.body37_crit_edge
  %lock43 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock43) #13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %1, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool52.not = icmp eq i32 %23, 0
  br i1 %tobool52.not, label %do.body37.if.end55_crit_edge, label %if.then53

do.body37.if.end55_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then53:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  %call54 = tail call fastcc i32 @__pg_init_all_paths(ptr noundef %1)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.body37.if.end55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock43, i32 noundef %call45) #13
  %ti57 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %ti57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ti57, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void @dm_table_run_md_queue_async(ptr noundef %27) #13
  %queue_mode.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queue_mode.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %29, label %if.end55.if.end64_crit_edge [
    i32 2, label %if.then.i98
    i32 1, label %if.then3.i
  ]

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then.i98:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ti57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ti57, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call.i = tail call ptr @dm_table_get_md(ptr noundef %34) #13
  tail call void @dm_mq_kick_requeue_list(ptr noundef %call.i) #13
  br label %if.end64

if.then3.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %35 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %process_queued_bios.i) #13
  br label %if.end64

land.lhs.true:                                    ; preds = %mpath_double_check_test_bit.exit97.land.lhs.true_crit_edge, %if.then3.land.lhs.true_crit_edge
  %path = getelementptr inbounds %struct.pgpath, ptr %pgpath.0102, i32 0, i32 3
  %36 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %path, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bdev, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %len, align 8
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp61.not = icmp eq i64 %42, %44
  br i1 %cmp61.not, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %if.then3.i, %if.then.i98, %if.end55.if.end64_crit_edge, %if.else8.if.end64_crit_edge
  %r.1107 = phi i32 [ 0, %land.lhs.true.if.end64_crit_edge ], [ -107, %if.end55.if.end64_crit_edge ], [ -107, %if.then.i98 ], [ -107, %if.then3.i ], [ -5, %if.else8.if.end64_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1107, %if.end64 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_busy(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %2 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pg_init_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup65_crit_edge

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end:                                           ; preds = %entry
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 6
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %4 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %nr_valid_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.do.end21_crit_edge

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

if.then3:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #13
  br i1 %tobool11.not, label %if.then3.do.end21_crit_edge, label %cleanup

if.then3.do.end21_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

cleanup:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %queue_mode = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp14 = icmp ne i32 %10, 2
  %conv15 = zext i1 %cmp14 to i32
  br label %cleanup65

do.end21:                                         ; preds = %if.then3.do.end21_crit_edge, %if.end.do.end21_crit_edge
  %current_pg = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %current_pg, align 4
  %next_pg27 = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %next_pg27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %next_pg27, align 4
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %current_pgpath, align 4
  %tobool32.not = icmp eq ptr %16, null
  %tobool33 = icmp ne ptr %14, null
  %spec.select = select i1 %tobool32.not, i1 %tobool33, i1 false
  br i1 %spec.select, label %do.end21.if.end42_crit_edge, label %if.end37, !prof !315

do.end21.if.end42_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end37:                                         ; preds = %do.end21
  %tobool38.not = icmp eq ptr %12, null
  br i1 %tobool38.not, label %if.end37.cleanup65_crit_edge, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end37.cleanup65_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end42:                                         ; preds = %if.end37.if.end42_crit_edge, %do.end21.if.end42_crit_edge
  %pg.095 = phi ptr [ %12, %if.end37.if.end42_crit_edge ], [ %14, %do.end21.if.end42_crit_edge ]
  %pgpaths = getelementptr inbounds %struct.priority_group, ptr %pg.095, i32 0, i32 5
  %17 = ptrtoint ptr %pgpaths to i32
  call void @__asan_load4_noabort(i32 %17)
  %pgpath.0100 = load ptr, ptr %pgpaths, align 4
  %cmp45.not101 = icmp eq ptr %pgpath.0100, %pgpaths
  br i1 %cmp45.not101, label %if.end42.cleanup65_crit_edge, label %if.end42.for.body.outer_crit_edge

if.end42.for.body.outer_crit_edge:                ; preds = %if.end42
  br label %for.body.outer

if.end42.cleanup65_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %if.end42.for.body.outer_crit_edge
  %pgpath.0103.ph = phi ptr [ %pgpath.0105, %for.inc.thread.for.body.outer_crit_edge ], [ %pgpath.0100, %if.end42.for.body.outer_crit_edge ]
  %has_active.0.off0102.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %if.end42.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %pgpath.0103 = phi ptr [ %pgpath.0, %for.inc.for.body_crit_edge ], [ %pgpath.0103.ph, %for.body.outer ]
  %is_active = getelementptr inbounds %struct.pgpath, ptr %pgpath.0103, i32 0, i32 5
  %18 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.inc, label %if.then49

if.then49:                                        ; preds = %for.body
  %path.i = getelementptr inbounds %struct.pgpath, ptr %pgpath.0103, i32 0, i32 3
  %19 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_queue.i.i, align 4
  %call1.i = tail call i32 @blk_lld_busy(ptr noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool51.not = icmp eq i32 %call1.i, 0
  br i1 %tobool51.not, label %if.then49.for.end.thread_crit_edge, label %for.inc.thread

if.then49.for.end.thread_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.inc:                                          ; preds = %for.body
  %25 = ptrtoint ptr %pgpath.0103 to i32
  call void @__asan_load4_noabort(i32 %25)
  %pgpath.0 = load ptr, ptr %pgpath.0103, align 4
  %cmp45.not = icmp eq ptr %pgpath.0, %pgpaths
  br i1 %cmp45.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.thread:                                   ; preds = %if.then49
  %26 = ptrtoint ptr %pgpath.0103 to i32
  call void @__asan_load4_noabort(i32 %26)
  %pgpath.0105 = load ptr, ptr %pgpath.0103, align 4
  %cmp45.not106 = icmp eq ptr %pgpath.0105, %pgpaths
  br i1 %cmp45.not106, label %for.inc.thread.for.end.thread_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.outer

for.inc.thread.for.end.thread_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end:                                          ; preds = %for.inc
  br i1 %has_active.0.off0102.ph, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup65_crit_edge

for.end.cleanup65_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %for.inc.thread.for.end.thread_crit_edge, %if.then49.for.end.thread_crit_edge
  %busy.0.off098 = phi i32 [ 1, %for.end.for.end.thread_crit_edge ], [ 1, %for.inc.thread.for.end.thread_crit_edge ], [ 0, %if.then49.for.end.thread_crit_edge ]
  br label %cleanup65

cleanup65:                                        ; preds = %for.end.thread, %for.end.cleanup65_crit_edge, %if.end42.cleanup65_crit_edge, %if.end37.cleanup65_crit_edge, %cleanup, %entry.cleanup65_crit_edge
  %retval.1 = phi i32 [ %conv15, %cleanup ], [ 1, %entry.cleanup65_crit_edge ], [ 0, %if.end37.cleanup65_crit_edge ], [ %busy.0.off098, %for.end.thread ], [ 0, %for.end.cleanup65_crit_edge ], [ 0, %if.end42.cleanup65_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multipath_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %priority_groups = getelementptr inbounds %struct.multipath, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %priority_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %pg.035 = load ptr, ptr %priority_groups, align 4
  %cmp.not36 = icmp eq ptr %pg.035, %priority_groups
  br i1 %cmp.not36, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond6
  %3 = ptrtoint ptr %pg.037 to i32
  call void @__asan_load4_noabort(i32 %3)
  %pg.0 = load ptr, ptr %pg.037, align 4
  %cmp.not = icmp eq ptr %pg.0, %priority_groups
  br i1 %cmp.not, label %for.cond.loopexit.out_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.loopexit.out_crit_edge:                  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %pg.037 = phi ptr [ %pg.035, %for.body.lr.ph ], [ %pg.0, %for.cond.loopexit.for.body_crit_edge ]
  %pgpaths = getelementptr inbounds %struct.priority_group, ptr %pg.037, i32 0, i32 5
  br label %for.cond6

for.cond6:                                        ; preds = %for.body11.for.cond6_crit_edge, %for.body
  %p.0.in = phi ptr [ %pgpaths, %for.body ], [ %p.0, %for.body11.for.cond6_crit_edge ]
  %4 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp9.not = icmp eq ptr %p.0, %pgpaths
  br i1 %cmp9.not, label %for.cond.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond6
  %path = getelementptr inbounds %struct.pgpath, ptr %p.0, i32 0, i32 3
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  %7 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %begin, align 8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %6, i64 noundef %8, i64 noundef %10, ptr noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body11.for.cond6_crit_edge, label %for.body11.out_crit_edge

for.body11.out_crit_edge:                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body11.for.cond6_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6

out:                                              ; preds = %for.body11.out_crit_edge, %for.cond.loopexit.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %call, %for.body11.out_crit_edge ], [ 0, %for.cond.loopexit.out_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_nopath_timeout(ptr noundef %m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @queue_if_no_path_timeout_secs, align 4
  %mul = mul i32 %0, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end13, label %land.rhs.if.end_crit_edge, !prof !315

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end13:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 796, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end13, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp28.not = icmp eq i32 %mul, 0
  br i1 %cmp28.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %2 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nr_valid_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30 = icmp eq i32 %3, 0
  br i1 %cmp30, label %land.lhs.true31, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true31:                                  ; preds = %land.lhs.true
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not = icmp eq i32 %6, 0
  br i1 %tobool33.not, label %land.lhs.true31.if.end36_crit_edge, label %if.then34

land.lhs.true31.if.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  %nopath_timer = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, %mul
  %call35 = tail call i32 @mod_timer(ptr noundef %nopath_timer, i32 noundef %add) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_multipath(ptr noundef %m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priority_groups = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 8
  %0 = ptrtoint ptr %priority_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priority_groups, align 4
  %cmp.not24 = icmp eq ptr %1, %priority_groups
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ti = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %pg.025 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.0, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %pg.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %pg.025, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pg.025) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pg.025, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pg.025 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pg.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %pg.025 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %pg.025, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pg.025, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ti, align 4
  tail call fastcc void @free_priority_group(ptr noundef %pg.025, ptr noundef %12)
  %cmp.not = icmp eq ptr %tmp.0, %priority_groups
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 9
  %13 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_handler_name, align 4
  tail call void @kfree(ptr noundef %14) #13
  %hw_handler_params = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 10
  %15 = ptrtoint ptr %hw_handler_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_handler_params, align 4
  tail call void @kfree(ptr noundef %16) #13
  %work_mutex = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %work_mutex) #13
  tail call void @kfree(ptr noundef %m) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_event(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ti = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @dm_table_event(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @queue_if_no_path_timeout_work(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -348
  %ti = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call ptr @dm_table_device_name(ptr noundef %3) #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call) #16
  tail call fastcc void @queue_if_no_path(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @.str.14)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_device_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_if_no_path(ptr noundef %m, i1 noundef zeroext %queue_if_no_path, i1 noundef zeroext %save_old_value, ptr noundef %caller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ti = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 18
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call ptr @dm_table_device_name(ptr noundef %3) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_if_no_path.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_if_no_path, %if.then)) #13
          to label %do.body10 [label %if.then], !srcloc !311

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i1 %queue_if_no_path to i32
  %conv8 = zext i1 %save_old_value to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_if_no_path.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.18, ptr noundef %call, ptr noundef nonnull @.str.17, ptr noundef %caller, i32 noundef %conv, i32 noundef %conv8) #13
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %m, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25 = icmp ne i32 %9, 0
  br i1 %save_old_value, label %if.then28, label %if.else47

if.then28:                                        ; preds = %do.body10
  %spec.select = select i1 %tobool21.not, i1 %tobool25, i1 false
  br i1 %spec.select, label %do.end41, label %if.else, !prof !315

do.end41:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %call) #16
  br label %if.end54

if.else:                                          ; preds = %if.then28
  br i1 %tobool21.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %m) #13
  br label %if.end54

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %m) #13
  br label %if.end54

if.else47:                                        ; preds = %do.body10
  %tobool25.not = xor i1 %tobool25, true
  %brmerge = select i1 %queue_if_no_path, i1 true, i1 %tobool25.not
  br i1 %brmerge, label %if.else47.if.end54_crit_edge, label %if.then51

if.else47.if.end54_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then51:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %m) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.else47.if.end54_crit_edge, %if.else.i, %if.then.i, %do.end41
  br i1 %queue_if_no_path, label %if.then.i3, label %if.else.i4

if.then.i3:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %m) #13
  br label %assign_bit.exit5

if.else.i4:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %m) #13
  br label %assign_bit.exit5

assign_bit.exit5:                                 ; preds = %if.else.i4, %if.then.i3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_if_no_path.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_if_no_path, %if.then69)) #13
          to label %do.end78 [label %if.then69], !srcloc !311

if.then69:                                        ; preds = %assign_bit.exit5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m, align 4
  %shr.i9 = lshr i32 %11, 1
  %and1.i10 = and i32 %shr.i9, 1
  %12 = load volatile i32, ptr %m, align 4
  %shr.i11 = lshr i32 %12, 2
  %and1.i12 = and i32 %shr.i11, 1
  %13 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ti, align 4
  %call75 = tail call i32 @dm_noflush_suspending(ptr noundef %14) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_if_no_path.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.20, ptr noundef %call, ptr noundef nonnull @.str.17, i32 noundef %and1.i10, i32 noundef %and1.i12, i32 noundef %call75) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then69, %assign_bit.exit5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #13
  br i1 %queue_if_no_path, label %do.end78.if.end84_crit_edge, label %if.then81

do.end78.if.end84_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then81:                                        ; preds = %do.end78
  %15 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ti, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void @dm_table_run_md_queue_async(ptr noundef %18) #13
  %queue_mode.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 2
  %19 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue_mode.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %20, label %if.then81.if.end84_crit_edge [
    i32 2, label %if.then.i13
    i32 1, label %if.then3.i
  ]

if.then81.if.end84_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then.i13:                                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ti, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %call.i = tail call ptr @dm_table_get_md(ptr noundef %25) #13
  tail call void @dm_mq_kick_requeue_list(ptr noundef %call.i) #13
  br label %if.end84

if.then3.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %26 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %process_queued_bios.i) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then3.i, %if.then.i13, %if.then81.if.end84_crit_edge, %do.end78.if.end84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_noflush_suspending(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_run_md_queue_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_mq_kick_requeue_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_queued_bios(ptr noundef %work) #2 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #13
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %add.ptr = getelementptr i8, ptr %work, i32 -296
  %lock = getelementptr i8, ptr %work, i32 -292
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %queued_bios = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %queued_bios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queued_bios, align 4
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.then, label %bio_list_merge.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %cleanup

bio_list_merge.exit:                              ; preds = %entry
  %tail.i84 = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %tail.i84 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tail.i84, align 4
  %4 = ptrtoint ptr %queued_bios to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %queued_bios, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  call void @blk_start_plug(ptr noundef nonnull %plug) #13
  br label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.if.then.i_crit_edge, %bio_list_merge.exit
  %bios.sroa.0.292 = phi ptr [ %2, %bio_list_merge.exit ], [ %6, %sw.epilog.if.then.i_crit_edge ]
  %5 = ptrtoint ptr %bios.sroa.0.292 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bios.sroa.0.292, align 8
  store ptr null, ptr %bios.sroa.0.292, align 8
  %call1.i = call ptr @dm_per_bio_data(ptr noundef nonnull %bios.sroa.0.292, i32 noundef 48) #13
  %add.ptr.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %bi_bdev1.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 1
  %9 = ptrtoint ptr %bi_bdev1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %bi_bdev1.i, align 4
  %bi_flags.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 2
  %10 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_flags.i, align 4
  %conv.i89 = trunc i32 %11 to i16
  %bi_flags2.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 3
  %12 = ptrtoint ptr %bi_flags2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i89, ptr %bi_flags2.i, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 8
  %bi_iter3.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 2, i32 1
  %13 = call ptr @memcpy(ptr %bi_iter.i, ptr %bi_iter3.i, i32 20)
  %__bi_remaining.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 7
  %__bi_remaining4.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 1, i32 1
  %14 = ptrtoint ptr %__bi_remaining4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__bi_remaining4.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_remaining.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %__bi_remaining.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %15, ptr %__bi_remaining.i, align 4
  %bi_end_io.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 5
  %17 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_end_io.i, align 4
  %bi_end_io5.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 10
  %19 = ptrtoint ptr %bi_end_io5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %bi_end_io5.i, align 8
  %bi_integrity.i = getelementptr %struct.dm_mpath_io, ptr %call1.i, i32 5, i32 1
  %20 = ptrtoint ptr %bi_integrity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_integrity.i, align 4
  %22 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 4
  %call15 = call fastcc i32 @__multipath_map_bio(ptr noundef %add.ptr, ptr noundef nonnull %bios.sroa.0.292, ptr noundef %call1.i)
  %24 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call15, label %land.end [
    i32 4, label %sw.bb
    i32 2, label %sw.bb16
    i32 1, label %sw.bb18
    i32 0, label %if.then.i.sw.epilog_crit_edge
  ]

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_status = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 6
  %25 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %bi_status, align 2
  call void @bio_endio(ptr noundef nonnull %bios.sroa.0.292) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_status17 = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.292, i32 0, i32 6
  %26 = ptrtoint ptr %bi_status17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 11, ptr %bi_status17, align 2
  call void @bio_endio(ptr noundef nonnull %bios.sroa.0.292) #13
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @submit_bio_noacct(ptr noundef nonnull %bios.sroa.0.292) #13
  br label %sw.epilog

land.end:                                         ; preds = %if.then.i
  %.b82 = load i1, ptr @process_queued_bios.__already_done, align 1
  br i1 %.b82, label %land.end.sw.epilog_crit_edge, label %if.then25, !prof !313

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then25:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @process_queued_bios.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 722, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %call15) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then25, %land.end.sw.epilog_crit_edge, %sw.bb18, %sw.bb16, %sw.bb, %if.then.i.sw.epilog_crit_edge
  %tobool.not.i85 = icmp eq ptr %6, null
  br i1 %tobool.not.i85, label %while.end, label %sw.epilog.if.then.i_crit_edge

sw.epilog.if.then.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.end:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_finish_plug(ptr noundef nonnull %plug) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_set_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__multipath_map_bio(ptr noundef %m, ptr noundef %bio, ptr nocapture noundef %mpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %current_pgpath.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %0 = ptrtoint ptr %current_pgpath.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %current_pgpath.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %lor.lhs.false.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m, align 4
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %mpath_double_check_test_bit.exit.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

mpath_double_check_test_bit.exit.i:               ; preds = %lor.lhs.false.i
  %lock.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #13
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %m, align 4
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.i.not.i = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call5.i.i) #13
  br i1 %tobool10.i.not.i, label %mpath_double_check_test_bit.exit.i.if.end.i_crit_edge, label %mpath_double_check_test_bit.exit.i.if.else.i_crit_edge

mpath_double_check_test_bit.exit.i.if.else.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

mpath_double_check_test_bit.exit.i.if.end.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %mpath_double_check_test_bit.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size.i, align 8
  %call1.i = tail call fastcc ptr @choose_pgpath(ptr noundef %m, i32 noundef %9) #13
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.body5.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

do.body5.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %10 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not.i = icmp eq i32 %12, 0
  br i1 %tobool15.not.i, label %do.body5.i.if.end18.i_crit_edge, label %if.then16.i

do.body5.i.if.end18.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then16.i:                                      ; preds = %do.body5.i
  %13 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bio, align 8
  %tail.i.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bio, ptr %15, align 8
  br label %bio_list_add.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %queued_bios.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 20
  %17 = ptrtoint ptr %queued_bios.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bio, ptr %queued_bios.i.i, align 4
  br label %bio_list_add.exit.i.i

bio_list_add.exit.i.i:                            ; preds = %if.else.i.i.i, %if.then.i.i.i
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bio, ptr %tail.i.i.i, align 4
  %19 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i45.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i45.i, label %if.then.i46.i, label %bio_list_add.exit.i.i.if.end18.i_crit_edge

bio_list_add.exit.i.i.if.end18.i_crit_edge:       ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then.i46.i:                                    ; preds = %bio_list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %process_queued_bios.i.i) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then.i46.i, %bio_list_add.exit.i.i.if.end18.i_crit_edge, %do.body5.i.if.end18.i_crit_edge
  %pgpath.1.i = phi ptr [ null, %do.body5.i.if.end18.i_crit_edge ], [ inttoptr (i32 -11 to ptr), %bio_list_add.exit.i.i.if.end18.i_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.then.i46.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #13
  br label %__map_bio.exit

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %mpath_double_check_test_bit.exit.i.if.else.i_crit_edge
  %pgpath.070.i = phi ptr [ %call1.i, %if.end.i.if.else.i_crit_edge ], [ %1, %mpath_double_check_test_bit.exit.i.if.else.i_crit_edge ]
  %22 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %m, align 4
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i47.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i47.i, label %if.else.i.lor.lhs.false22.i_crit_edge, label %mpath_double_check_test_bit.exit53.i

if.else.i.lor.lhs.false22.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false22.i

mpath_double_check_test_bit.exit53.i:             ; preds = %if.else.i
  %lock.i48.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call5.i49.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i48.i) #13
  %25 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %m, align 4
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.i50.not.i = icmp eq i32 %27, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i48.i, i32 noundef %call5.i49.i) #13
  br i1 %tobool10.i50.not.i, label %mpath_double_check_test_bit.exit53.i.lor.lhs.false22.i_crit_edge, label %mpath_double_check_test_bit.exit53.i.if.then25.i_crit_edge

mpath_double_check_test_bit.exit53.i.if.then25.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i

mpath_double_check_test_bit.exit53.i.lor.lhs.false22.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false22.i

lor.lhs.false22.i:                                ; preds = %mpath_double_check_test_bit.exit53.i.lor.lhs.false22.i_crit_edge, %if.else.i.lor.lhs.false22.i_crit_edge
  %28 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %m, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i54.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i54.i, label %lor.lhs.false22.i.__map_bio.exit_crit_edge, label %mpath_double_check_test_bit.exit60.i

lor.lhs.false22.i.__map_bio.exit_crit_edge:       ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__map_bio.exit

mpath_double_check_test_bit.exit60.i:             ; preds = %lor.lhs.false22.i
  %lock.i55.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call5.i56.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i55.i) #13
  %31 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %m, align 4
  %33 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool10.i57.not.i = icmp eq i32 %33, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i55.i, i32 noundef %call5.i56.i) #13
  br i1 %tobool10.i57.not.i, label %mpath_double_check_test_bit.exit60.i.__map_bio.exit_crit_edge, label %mpath_double_check_test_bit.exit60.i.if.then25.i_crit_edge

mpath_double_check_test_bit.exit60.i.if.then25.i_crit_edge: ; preds = %mpath_double_check_test_bit.exit60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i

mpath_double_check_test_bit.exit60.i.__map_bio.exit_crit_edge: ; preds = %mpath_double_check_test_bit.exit60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__map_bio.exit

if.then25.i:                                      ; preds = %mpath_double_check_test_bit.exit60.i.if.then25.i_crit_edge, %mpath_double_check_test_bit.exit53.i.if.then25.i_crit_edge
  %lock.i61.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61.i) #13
  %34 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bio, align 8
  %tail.i.i.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 20, i32 1
  %35 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %bio, ptr %36, align 8
  br label %bio_list_add.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  %queued_bios.i.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 20
  %38 = ptrtoint ptr %queued_bios.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bio, ptr %queued_bios.i.i.i, align 4
  br label %bio_list_add.exit.i.i.i

bio_list_add.exit.i.i.i:                          ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %39 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %bio, ptr %tail.i.i.i.i, align 4
  %40 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %m, align 4
  %and1.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i62.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i62.i, label %if.then.i.i63.i, label %bio_list_add.exit.i.i.i.__map_bio.exit.thread_crit_edge

bio_list_add.exit.i.i.i.__map_bio.exit.thread_crit_edge: ; preds = %bio_list_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__map_bio.exit.thread

if.then.i.i63.i:                                  ; preds = %bio_list_add.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i.i.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %process_queued_bios.i.i.i) #13
  br label %__map_bio.exit.thread

__map_bio.exit.thread:                            ; preds = %if.then.i.i63.i, %bio_list_add.exit.i.i.i.__map_bio.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61.i, i32 noundef %call2.i.i) #13
  %call2.i65.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61.i) #13
  %call5.i66.i = tail call fastcc i32 @__pg_init_all_paths(ptr noundef %m) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61.i, i32 noundef %call2.i65.i) #13
  br label %cleanup

__map_bio.exit:                                   ; preds = %mpath_double_check_test_bit.exit60.i.__map_bio.exit_crit_edge, %lor.lhs.false22.i.__map_bio.exit_crit_edge, %if.end18.i
  %retval.0.i55 = phi ptr [ %pgpath.070.i, %mpath_double_check_test_bit.exit60.i.__map_bio.exit_crit_edge ], [ %pgpath.1.i, %if.end18.i ], [ %pgpath.070.i, %lor.lhs.false22.i.__map_bio.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__map_bio.exit.cleanup_crit_edge, label %if.end

__map_bio.exit.cleanup_crit_edge:                 ; preds = %__map_bio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %__map_bio.exit
  %tobool.not = icmp eq ptr %retval.0.i55, null
  br i1 %tobool.not, label %if.then2, label %if.end23

if.then2:                                         ; preds = %if.end
  %ti.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 18
  %43 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ti.i, align 4
  %call.i = tail call i32 @dm_noflush_suspending(ptr noundef %44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %do.body6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__multipath_map_bio.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__multipath_map_bio, %land.lhs.true)) #13
          to label %cleanup [label %land.lhs.true], !srcloc !311

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @__multipath_map_bio._rs, ptr noundef nonnull @.str.38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ti.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %call14 = tail call ptr @dm_table_device_name(ptr noundef %48) #13
  %49 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %m, align 4
  %shr.i = lshr i32 %50, 1
  %and1.i = and i32 %shr.i, 1
  %51 = load volatile i32, ptr %m, align 4
  %shr.i53 = lshr i32 %51, 2
  %and1.i54 = and i32 %shr.i53, 1
  %52 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ti.i, align 4
  %call19 = tail call i32 @dm_noflush_suspending(ptr noundef %53) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__multipath_map_bio.descriptor, ptr noundef nonnull @.str.39, ptr noundef %call14, i32 noundef %and1.i, i32 noundef %and1.i54, i32 noundef %call19) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %54 = ptrtoint ptr %mpio to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i55, ptr %mpio, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %55 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %bi_status, align 2
  %path = getelementptr inbounds %struct.pgpath, ptr %retval.0.i55, i32 0, i32 3
  %56 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %path, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %60 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %61, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %62 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %63, %59
  br i1 %cmp.not.i, label %if.end23.bio_set_dev.exit_crit_edge, label %if.then.i

if.end23.bio_set_dev.exit_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i8.i = and i16 %61, -2177
  %64 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end23.bio_set_dev.exit_crit_edge
  %65 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #13
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %66 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bi_opf, align 8
  %68 = or i32 %67, 512
  store i32 %68, ptr %bi_opf, align 8
  %pg = getelementptr inbounds %struct.pgpath, ptr %retval.0.i55, i32 0, i32 1
  %69 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pg, align 4
  %ps = getelementptr inbounds %struct.priority_group, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ps, align 4
  %start_io = getelementptr inbounds %struct.path_selector_type, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %start_io to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %start_io, align 4
  %tobool26.not = icmp eq ptr %74, null
  br i1 %tobool26.not, label %bio_set_dev.exit.cleanup_crit_edge, label %if.then27

bio_set_dev.exit.cleanup_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %nr_bytes = getelementptr inbounds %struct.dm_mpath_io, ptr %mpio, i32 0, i32 1
  %75 = ptrtoint ptr %nr_bytes to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_bytes, align 4
  %call35 = tail call i32 %74(ptr noundef %ps, ptr noundef %path, i32 noundef %76) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %bio_set_dev.exit.cleanup_crit_edge, %if.then13, %land.lhs.true.cleanup_crit_edge, %do.body6, %if.then2.cleanup_crit_edge, %__map_bio.exit.cleanup_crit_edge, %__map_bio.exit.thread
  %retval.0 = phi i32 [ 0, %__map_bio.exit.cleanup_crit_edge ], [ 2, %if.then2.cleanup_crit_edge ], [ 4, %if.then13 ], [ 4, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %bio_set_dev.exit.cleanup_crit_edge ], [ 0, %__map_bio.exit.thread ], [ 4, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @choose_pgpath(ptr noundef %m, i32 noundef %nr_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %0 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nr_valid_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body1, label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %m) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %do.body97

do.end10:                                         ; preds = %entry
  %next_pg = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 5
  %2 = ptrtoint ptr %next_pg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next_pg, align 4
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %do.end10.do.end42_crit_edge, label %do.body15

do.end10.do.end42_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.body15:                                        ; preds = %do.end10
  %lock21 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #13
  %4 = ptrtoint ptr %next_pg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_pg, align 4
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #13
  br label %do.end42

if.end32:                                         ; preds = %do.body15
  %6 = ptrtoint ptr %next_pg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %next_pg, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #13
  %ps.i = getelementptr inbounds %struct.priority_group, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps.i, align 4
  %select_path.i = getelementptr inbounds %struct.path_selector_type, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %select_path.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %select_path.i, align 4
  %call.i = tail call ptr %10(ptr noundef %ps.i, i32 noundef %nr_bytes) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end32.do.end42_crit_edge, label %if.end.i

if.end32.do.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

if.end.i:                                         ; preds = %if.end32
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -16
  %current_pg.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %11 = ptrtoint ptr %current_pg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %current_pg.i, align 4
  %cmp.not.i = icmp eq ptr %12, %5
  br i1 %cmp.not.i, label %if.end.i.choose_path_in_pg.exit_crit_edge, label %do.body8.i, !prof !313

if.end.i.choose_path_in_pg.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %choose_path_in_pg.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #13
  %current_pgpath.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %13 = ptrtoint ptr %current_pgpath.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %current_pgpath.i, align 4
  tail call fastcc void @__switch_pg(ptr noundef %m, ptr noundef nonnull %5) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call12.i) #13
  br label %choose_path_in_pg.exit

choose_path_in_pg.exit:                           ; preds = %do.body8.i, %if.end.i.choose_path_in_pg.exit_crit_edge
  %tobool.not.i158 = icmp eq ptr %add.ptr.i, null
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i158, %cmp.i
  br i1 %spec.select.i, label %choose_path_in_pg.exit.do.end42_crit_edge, label %choose_path_in_pg.exit.cleanup_crit_edge

choose_path_in_pg.exit.cleanup_crit_edge:         ; preds = %choose_path_in_pg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

choose_path_in_pg.exit.do.end42_crit_edge:        ; preds = %choose_path_in_pg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end42:                                         ; preds = %choose_path_in_pg.exit.do.end42_crit_edge, %if.end32.do.end42_crit_edge, %if.then30, %do.end10.do.end42_crit_edge
  %current_pg = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %14 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %current_pg, align 4
  %tobool44.not = icmp eq ptr %15, null
  br i1 %tobool44.not, label %do.end42.if.end50_crit_edge, label %if.then45

do.end42.if.end50_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then45:                                        ; preds = %do.end42
  %ps.i159 = getelementptr inbounds %struct.priority_group, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ps.i159 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps.i159, align 4
  %select_path.i160 = getelementptr inbounds %struct.path_selector_type, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %select_path.i160 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %select_path.i160, align 4
  %call.i161 = tail call ptr %19(ptr noundef %ps.i159, i32 noundef %nr_bytes) #13
  %tobool.not.i162 = icmp eq ptr %call.i161, null
  br i1 %tobool.not.i162, label %if.then45.if.end50_crit_edge, label %if.end.i166

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end.i166:                                      ; preds = %if.then45
  %add.ptr.i163 = getelementptr i8, ptr %call.i161, i32 -16
  %20 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %current_pg, align 4
  %cmp.not.i165 = icmp eq ptr %21, %15
  br i1 %cmp.not.i165, label %if.end.i166.choose_path_in_pg.exit172_crit_edge, label %do.body8.i170, !prof !313

if.end.i166.choose_path_in_pg.exit172_crit_edge:  ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %choose_path_in_pg.exit172

do.body8.i170:                                    ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i167 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call12.i168 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i167) #13
  %current_pgpath.i169 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %22 = ptrtoint ptr %current_pgpath.i169 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i163, ptr %current_pgpath.i169, align 4
  tail call fastcc void @__switch_pg(ptr noundef %m, ptr noundef nonnull %15) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i167, i32 noundef %call12.i168) #13
  br label %choose_path_in_pg.exit172

choose_path_in_pg.exit172:                        ; preds = %do.body8.i170, %if.end.i166.choose_path_in_pg.exit172_crit_edge
  %tobool.not.i173 = icmp eq ptr %add.ptr.i163, null
  %cmp.i174 = icmp ugt ptr %add.ptr.i163, inttoptr (i32 -4096 to ptr)
  %spec.select.i175 = or i1 %tobool.not.i173, %cmp.i174
  br i1 %spec.select.i175, label %choose_path_in_pg.exit172.if.end50_crit_edge, label %choose_path_in_pg.exit172.cleanup_crit_edge

choose_path_in_pg.exit172.cleanup_crit_edge:      ; preds = %choose_path_in_pg.exit172
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

choose_path_in_pg.exit172.if.end50_crit_edge:     ; preds = %choose_path_in_pg.exit172
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end50:                                         ; preds = %choose_path_in_pg.exit172.if.end50_crit_edge, %if.then45.if.end50_crit_edge, %do.end42.if.end50_crit_edge
  %priority_groups = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 8
  %lock.i184 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %current_pgpath.i186 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %23 = ptrtoint ptr %priority_groups to i32
  call void @__asan_load4_noabort(i32 %23)
  %pg.0205 = load ptr, ptr %priority_groups, align 4
  %cmp54.not206 = icmp eq ptr %pg.0205, %priority_groups
  br i1 %cmp54.not206, label %if.end50.do.cond93_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  br label %for.body

if.end50.do.cond93_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond93

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end50.for.body_crit_edge
  %pg.0207 = phi ptr [ %pg.0, %for.inc.for.body_crit_edge ], [ %pg.0205, %if.end50.for.body_crit_edge ]
  %bypassed56 = getelementptr inbounds %struct.priority_group, ptr %pg.0207, i32 0, i32 6
  %24 = ptrtoint ptr %bypassed56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %bypassed56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp61 = icmp slt i8 %bf.load, 0
  br i1 %cmp61, label %for.body.for.inc_crit_edge, label %if.end64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end64:                                         ; preds = %for.body
  %ps.i176 = getelementptr inbounds %struct.priority_group, ptr %pg.0207, i32 0, i32 2
  %25 = ptrtoint ptr %ps.i176 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ps.i176, align 4
  %select_path.i177 = getelementptr inbounds %struct.path_selector_type, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %select_path.i177 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %select_path.i177, align 4
  %call.i178 = tail call ptr %28(ptr noundef %ps.i176, i32 noundef %nr_bytes) #13
  %tobool.not.i179 = icmp eq ptr %call.i178, null
  br i1 %tobool.not.i179, label %if.end64.for.inc_crit_edge, label %if.end.i183

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i183:                                      ; preds = %if.end64
  %add.ptr.i180 = getelementptr i8, ptr %call.i178, i32 -16
  %29 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %current_pg, align 4
  %cmp.not.i182 = icmp eq ptr %30, %pg.0207
  br i1 %cmp.not.i182, label %if.end.i183.choose_path_in_pg.exit189_crit_edge, label %do.body8.i187, !prof !313

if.end.i183.choose_path_in_pg.exit189_crit_edge:  ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #15
  br label %choose_path_in_pg.exit189

do.body8.i187:                                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i185 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i184) #13
  %31 = ptrtoint ptr %current_pgpath.i186 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i180, ptr %current_pgpath.i186, align 4
  tail call fastcc void @__switch_pg(ptr noundef %m, ptr noundef %pg.0207) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i184, i32 noundef %call12.i185) #13
  br label %choose_path_in_pg.exit189

choose_path_in_pg.exit189:                        ; preds = %do.body8.i187, %if.end.i183.choose_path_in_pg.exit189_crit_edge
  %tobool.not.i190 = icmp eq ptr %add.ptr.i180, null
  %cmp.i191 = icmp ugt ptr %add.ptr.i180, inttoptr (i32 -4096 to ptr)
  %spec.select.i192 = or i1 %tobool.not.i190, %cmp.i191
  br i1 %spec.select.i192, label %choose_path_in_pg.exit189.for.inc_crit_edge, label %choose_path_in_pg.exit189.cleanup_crit_edge

choose_path_in_pg.exit189.cleanup_crit_edge:      ; preds = %choose_path_in_pg.exit189
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

choose_path_in_pg.exit189.for.inc_crit_edge:      ; preds = %choose_path_in_pg.exit189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body71:                                        ; preds = %choose_path_in_pg.exit189.1
  call void @__sanitizer_cov_trace_pc() #15
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i184) #13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %m) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i184, i32 noundef %call79) #13
  br label %cleanup

for.inc:                                          ; preds = %choose_path_in_pg.exit189.for.inc_crit_edge, %if.end64.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %pg.0207 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pg.0 = load ptr, ptr %pg.0207, align 4
  %cmp54.not = icmp eq ptr %pg.0, %priority_groups
  br i1 %cmp54.not, label %for.inc.do.cond93_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.cond93_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond93

do.cond93:                                        ; preds = %for.inc.do.cond93_crit_edge, %if.end50.do.cond93_crit_edge
  %33 = ptrtoint ptr %priority_groups to i32
  call void @__asan_load4_noabort(i32 %33)
  %pg.0205.1 = load ptr, ptr %priority_groups, align 4
  %cmp54.not206.1 = icmp eq ptr %pg.0205.1, %priority_groups
  br i1 %cmp54.not206.1, label %do.cond93.do.body97_crit_edge, label %do.cond93.for.body.1_crit_edge

do.cond93.for.body.1_crit_edge:                   ; preds = %do.cond93
  br label %for.body.1

do.cond93.do.body97_crit_edge:                    ; preds = %do.cond93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body97

for.body.1:                                       ; preds = %for.inc.1.for.body.1_crit_edge, %do.cond93.for.body.1_crit_edge
  %pg.0207.1 = phi ptr [ %pg.0.1, %for.inc.1.for.body.1_crit_edge ], [ %pg.0205.1, %do.cond93.for.body.1_crit_edge ]
  %bypassed56.1 = getelementptr inbounds %struct.priority_group, ptr %pg.0207.1, i32 0, i32 6
  %34 = ptrtoint ptr %bypassed56.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.1 = load i8, ptr %bypassed56.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %cmp61.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %cmp61.1, label %for.body.1.for.inc.1_crit_edge, label %if.end64.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end64.1:                                       ; preds = %for.body.1
  %ps.i176.1 = getelementptr inbounds %struct.priority_group, ptr %pg.0207.1, i32 0, i32 2
  %35 = ptrtoint ptr %ps.i176.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ps.i176.1, align 4
  %select_path.i177.1 = getelementptr inbounds %struct.path_selector_type, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %select_path.i177.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %select_path.i177.1, align 4
  %call.i178.1 = tail call ptr %38(ptr noundef %ps.i176.1, i32 noundef %nr_bytes) #13
  %tobool.not.i179.1 = icmp eq ptr %call.i178.1, null
  br i1 %tobool.not.i179.1, label %if.end64.1.for.inc.1_crit_edge, label %if.end.i183.1

if.end64.1.for.inc.1_crit_edge:                   ; preds = %if.end64.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end.i183.1:                                    ; preds = %if.end64.1
  %add.ptr.i180.1 = getelementptr i8, ptr %call.i178.1, i32 -16
  %39 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %current_pg, align 4
  %cmp.not.i182.1 = icmp eq ptr %40, %pg.0207.1
  br i1 %cmp.not.i182.1, label %if.end.i183.1.choose_path_in_pg.exit189.1_crit_edge, label %do.body8.i187.1, !prof !313

if.end.i183.1.choose_path_in_pg.exit189.1_crit_edge: ; preds = %if.end.i183.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %choose_path_in_pg.exit189.1

do.body8.i187.1:                                  ; preds = %if.end.i183.1
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i185.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i184) #13
  %41 = ptrtoint ptr %current_pgpath.i186 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i180.1, ptr %current_pgpath.i186, align 4
  tail call fastcc void @__switch_pg(ptr noundef %m, ptr noundef %pg.0207.1) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i184, i32 noundef %call12.i185.1) #13
  br label %choose_path_in_pg.exit189.1

choose_path_in_pg.exit189.1:                      ; preds = %do.body8.i187.1, %if.end.i183.1.choose_path_in_pg.exit189.1_crit_edge
  %tobool.not.i190.1 = icmp eq ptr %add.ptr.i180.1, null
  %cmp.i191.1 = icmp ugt ptr %add.ptr.i180.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i192.1 = or i1 %tobool.not.i190.1, %cmp.i191.1
  br i1 %spec.select.i192.1, label %choose_path_in_pg.exit189.1.for.inc.1_crit_edge, label %do.body71

choose_path_in_pg.exit189.1.for.inc.1_crit_edge:  ; preds = %choose_path_in_pg.exit189.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %choose_path_in_pg.exit189.1.for.inc.1_crit_edge, %if.end64.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %42 = ptrtoint ptr %pg.0207.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %pg.0.1 = load ptr, ptr %pg.0207.1, align 4
  %cmp54.not.1 = icmp eq ptr %pg.0.1, %priority_groups
  br i1 %cmp54.not.1, label %for.inc.1.do.body97_crit_edge, label %for.inc.1.for.body.1_crit_edge

for.inc.1.for.body.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.1

for.inc.1.do.body97_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body97

do.body97:                                        ; preds = %for.inc.1.do.body97_crit_edge, %do.cond93.do.body97_crit_edge, %do.body1
  %lock103 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock103) #13
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %43 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %current_pgpath, align 4
  %current_pg110 = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %44 = ptrtoint ptr %current_pg110 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %current_pg110, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock103, i32 noundef %call105) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body97, %do.body71, %choose_path_in_pg.exit189.cleanup_crit_edge, %choose_path_in_pg.exit172.cleanup_crit_edge, %choose_path_in_pg.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body97 ], [ %add.ptr.i, %choose_path_in_pg.exit.cleanup_crit_edge ], [ %add.ptr.i163, %choose_path_in_pg.exit172.cleanup_crit_edge ], [ %add.ptr.i180.1, %do.body71 ], [ %add.ptr.i180, %choose_path_in_pg.exit189.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__switch_pg(ptr noundef %m, ptr noundef %pg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !315

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 352, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %current_pg = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %1 = ptrtoint ptr %current_pg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pg, ptr %current_pg, align 4
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 9
  %2 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_handler_name, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 5, ptr noundef %m) #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %m) #13
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %m) #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %m) #13
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  %pg_init_count = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %pg_init_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %pg_init_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pg_init_all_paths(ptr noundef %m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !315

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 312, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %1 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %pg_init_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool25.not = icmp eq i32 %2, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %m, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool27.not = icmp eq i32 %5, 0
  br i1 %tobool27.not, label %if.end29, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  %pg_init_count = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 15
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pg_init_count, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pg_init_count, ptr %pg_init_count, i32 1, ptr elementtype(i32) %pg_init_count) #13, !srcloc !312
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %m) #13
  %current_pg = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %7 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_pg, align 4
  %tobool31.not = icmp eq ptr %8, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %m, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool36.not = icmp eq i32 %11, 0
  br i1 %tobool36.not, label %if.end33.if.end41_crit_edge, label %if.else.i

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %pg_init_delay_msecs = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 13
  %12 = ptrtoint ptr %pg_init_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pg_init_delay_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp38.not = icmp eq i32 %13, -1
  %spec.select = select i1 %cmp38.not, i32 2000, i32 %13
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #13
  br label %if.end41

if.end41:                                         ; preds = %if.else.i, %if.end33.if.end41_crit_edge
  %pg_init_delay.0 = phi i32 [ 0, %if.end33.if.end41_crit_edge ], [ %call2.i, %if.else.i ]
  %14 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %current_pg, align 4
  %pgpaths = getelementptr inbounds %struct.priority_group, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %pgpaths to i32
  call void @__asan_load4_noabort(i32 %16)
  %pgpath.085 = load ptr, ptr %pgpaths, align 4
  %cmp46.not87 = icmp eq ptr %pgpath.085, %pgpaths
  br i1 %cmp46.not87, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end41.for.body_crit_edge
  %pgpath.088 = phi ptr [ %pgpath.0, %for.inc.for.body_crit_edge ], [ %pgpath.085, %if.end41.for.body_crit_edge ]
  %is_active = getelementptr inbounds %struct.pgpath, ptr %pgpath.088, i32 0, i32 5
  %17 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.body.for.inc_crit_edge, label %if.end50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end50:                                         ; preds = %for.body
  %18 = load ptr, ptr @kmpath_handlerd, align 4
  %activate_path = getelementptr inbounds %struct.pgpath, ptr %pgpath.088, i32 0, i32 4
  %call.i84 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %activate_path, i32 noundef %pg_init_delay.0) #13
  br i1 %call.i84, label %if.then52, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pg_init_in_progress, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pg_init_in_progress, ptr %pg_init_in_progress, i32 1, ptr elementtype(i32) %pg_init_in_progress) #13, !srcloc !312
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %if.end50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %pgpath.088 to i32
  call void @__asan_load4_noabort(i32 %20)
  %pgpath.0 = load ptr, ptr %pgpath.088, align 4
  %21 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_pg, align 4
  %pgpaths45 = getelementptr inbounds %struct.priority_group, ptr %22, i32 0, i32 5
  %cmp46.not = icmp eq ptr %pgpath.0, %pgpaths45
  br i1 %cmp46.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end41.for.end_crit_edge
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %23 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %pg_init_in_progress, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end29.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_consume_args(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_priority_group(ptr noundef %pg, ptr noundef %ti) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps1 = getelementptr inbounds %struct.priority_group, ptr %pg, i32 0, i32 2
  %0 = ptrtoint ptr %ps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %destroy = getelementptr inbounds %struct.path_selector_type, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy, align 4
  tail call void %3(ptr noundef %ps1) #13
  %4 = ptrtoint ptr %ps1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps1, align 4
  tail call void @dm_put_path_selector(ptr noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pgpaths = getelementptr inbounds %struct.priority_group, ptr %pg, i32 0, i32 5
  %6 = ptrtoint ptr %pgpaths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgpaths, align 4
  %cmp.not19.i = icmp eq ptr %7, %pgpaths
  br i1 %cmp.not19.i, label %if.end.free_pgpaths.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.free_pgpaths.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_pgpaths.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pgpath.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %7, %if.end.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pgpath.020.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i = load ptr, ptr %pgpath.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pgpath.020.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pgpath.020.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %pgpath.020.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgpath.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %pgpath.020.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %pgpath.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pgpath.020.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %path.i = getelementptr inbounds %struct.pgpath, ptr %pgpath.020.i, i32 0, i32 3
  %17 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path.i, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %18) #13
  tail call void @kfree(ptr noundef %pgpath.020.i) #13
  %cmp.not.i = icmp eq ptr %tmp.0.i, %pgpaths
  br i1 %cmp.not.i, label %list_del.exit.i.free_pgpaths.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.free_pgpaths.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_pgpaths.exit

free_pgpaths.exit:                                ; preds = %list_del.exit.i.free_pgpaths.exit_crit_edge, %if.end.free_pgpaths.exit_crit_edge
  tail call void @kfree(ptr noundef %pg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_path_selector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_path_selector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_dh_attached_handler_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @activate_path_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %path.i = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i.i, align 4
  %is_active.i = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %is_active.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 @scsi_dh_activate(ptr noundef %5, ptr noundef nonnull @pg_init_done, ptr noundef %add.ptr) #13
  br label %activate_or_offline_path.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void @pg_init_done(ptr noundef %add.ptr, i32 noundef 14) #13
  br label %activate_or_offline_path.exit

activate_or_offline_path.exit:                    ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dh_activate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pg_init_done(ptr noundef %data, i32 noundef %errors) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pg1 = getelementptr inbounds %struct.pgpath, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg1, align 4
  %m2 = getelementptr inbounds %struct.priority_group, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2, align 4
  %4 = zext i32 %errors to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %errors, label %do.body15 [
    i32 0, label %entry.do.body15.thread_crit_edge
    i32 16, label %sw.bb
    i32 2, label %sw.bb5
    i32 10, label %sw.bb6
    i32 11, label %entry.sw.bb7_crit_edge
    i32 13, label %entry.sw.bb7_crit_edge120
  ]

entry.sw.bb7_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

entry.do.body15.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15.thread

sw.bb:                                            ; preds = %entry
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_handler_name, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.do.body15.thread_crit_edge, label %do.end

sw.bb.do.body15.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15.thread

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %6, i32 noundef 16) #16
  %call4 = tail call i32 @fail_path(ptr noundef %data)
  br label %if.then24

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %bypassed5.i = getelementptr inbounds %struct.priority_group, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %bypassed5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %bypassed5.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %bypassed5.i, align 4
  %current_pgpath.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %current_pgpath.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %current_pgpath.i, align 4
  %current_pg.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %current_pg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %current_pg.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %trigger_event.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %trigger_event.i) #13
  br label %if.then24

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge120
  %delay_retry.0.off0 = phi i1 [ false, %entry.sw.bb7_crit_edge ], [ false, %entry.sw.bb7_crit_edge120 ], [ true, %sw.bb6 ]
  %lock.i92 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call2.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i92) #13
  %pg_init_count.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 15
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_count.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %pg_init_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %pg_init_count.i, align 4
  %pg_init_retries.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %pg_init_retries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pg_init_retries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp6.not.i = icmp ugt i32 %12, %14
  br i1 %cmp6.not.i, label %sw.bb7.if.then9_crit_edge, label %land.lhs.true.i

sw.bb7.if.then9_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

land.lhs.true.i:                                  ; preds = %sw.bb7
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %3, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %pg_init_limit_reached.exit, label %land.lhs.true.i.if.then9_crit_edge

land.lhs.true.i.if.then9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

pg_init_limit_reached.exit:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 5, ptr noundef %3) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i92, i32 noundef %call2.i93) #13
  br label %do.body15.thread

if.then9:                                         ; preds = %land.lhs.true.i.if.then9_crit_edge, %sw.bb7.if.then9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i92, i32 noundef %call2.i93) #13
  %call10 = tail call i32 @fail_path(ptr noundef %data)
  br label %do.body15.thread

do.body15.thread:                                 ; preds = %if.then9, %pg_init_limit_reached.exit, %sw.bb.do.body15.thread_crit_edge, %entry.do.body15.thread_crit_edge
  %delay_retry.1.off0.ph = phi i1 [ %delay_retry.0.off0, %pg_init_limit_reached.exit ], [ %delay_retry.0.off0, %if.then9 ], [ false, %sw.bb.do.body15.thread_crit_edge ], [ false, %entry.do.body15.thread_crit_edge ]
  %lock100 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call18101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock100) #13
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %3, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %if.then38, label %do.body15.thread.if.end40_crit_edge

do.body15.thread.if.end40_crit_edge:              ; preds = %do.body15.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @fail_path(ptr noundef %data)
  br label %if.then24

if.then24:                                        ; preds = %do.body15, %sw.bb5, %do.end
  %lock.sink = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.sink) #13
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_pgpath, align 4
  %cmp25 = icmp eq ptr %22, %data
  br i1 %cmp25, label %do.end30, label %if.then24.if.end40_crit_edge

if.then24.if.end40_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %errors) #16
  %23 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %current_pgpath, align 4
  %current_pg = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %current_pg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %current_pg, align 4
  br label %if.end40

if.then38:                                        ; preds = %do.body15.thread
  call void @__sanitizer_cov_trace_pc() #15
  %bypassed = getelementptr inbounds %struct.priority_group, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %bypassed to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %bypassed, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %bypassed, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.end30, %if.then24.if.end40_crit_edge, %do.body15.thread.if.end40_crit_edge
  %call18107 = phi i32 [ %call18101, %do.body15.thread.if.end40_crit_edge ], [ %call18101, %if.then38 ], [ %call18, %if.then24.if.end40_crit_edge ], [ %call18, %do.end30 ]
  %lock105 = phi ptr [ %lock100, %do.body15.thread.if.end40_crit_edge ], [ %lock100, %if.then38 ], [ %lock.sink, %if.then24.if.end40_crit_edge ], [ %lock.sink, %do.end30 ]
  %delay_retry.1.off0103 = phi i1 [ %delay_retry.1.off0.ph, %do.body15.thread.if.end40_crit_edge ], [ %delay_retry.1.off0.ph, %if.then38 ], [ false, %if.then24.if.end40_crit_edge ], [ false, %do.end30 ]
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !316
  tail call void @llvm.prefetch.p0(ptr %pg_init_in_progress, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pg_init_in_progress, ptr %pg_init_in_progress, i32 1, ptr elementtype(i32) %pg_init_in_progress) #13, !srcloc !317
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp42 = icmp sgt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp42, label %if.end40.out_crit_edge, label %if.end45

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end45:                                         ; preds = %if.end40
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %3, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not = icmp eq i32 %29, 0
  br i1 %tobool48.not, label %if.end45.if.end60_crit_edge, label %if.then49

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then49:                                        ; preds = %if.end45
  br i1 %delay_retry.1.off0103, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 6, ptr noundef %3) #13
  br label %if.end55

if.else53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %3) #13
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %call56 = tail call fastcc i32 @__pg_init_all_paths(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.end55.out_crit_edge

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %if.end55.if.end60_crit_edge, %if.end45.if.end60_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #13
  %queue_mode.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %queue_mode.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %31, label %if.end60.process_queued_io_list.exit_crit_edge [
    i32 2, label %if.then.i95
    i32 1, label %if.then3.i
  ]

if.end60.process_queued_io_list.exit_crit_edge:   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_queued_io_list.exit

if.then.i95:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %ti.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 18
  %33 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ti.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %call.i = tail call ptr @dm_table_get_md(ptr noundef %36) #13
  tail call void @dm_mq_kick_requeue_list(ptr noundef %call.i) #13
  br label %process_queued_io_list.exit

if.then3.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %37 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 19
  %call.i.i96 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %process_queued_bios.i) #13
  br label %process_queued_io_list.exit

process_queued_io_list.exit:                      ; preds = %if.then3.i, %if.then.i95, %if.end60.process_queued_io_list.exit_crit_edge
  %pg_init_wait = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %pg_init_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %out

out:                                              ; preds = %process_queued_io_list.exit, %if.end55.out_crit_edge, %if.end40.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock105, i32 noundef %call18107) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_path(ptr noundef %pgpath) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pg = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 1
  %0 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg, align 4
  %m1 = getelementptr inbounds %struct.priority_group, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m1, align 4
  %lock = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %is_active = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 5
  %4 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.out_crit_edge, label %do.end8

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end8:                                          ; preds = %entry
  %ti = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call10 = tail call ptr @dm_table_device_name(ptr noundef %8) #13
  %path = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 3
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %call10, ptr noundef %name) #16
  %11 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pg, align 4
  %ps = getelementptr inbounds %struct.priority_group, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps, align 4
  %fail_path = getelementptr inbounds %struct.path_selector_type, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %fail_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fail_path, align 4
  tail call void %16(ptr noundef %ps, ptr noundef %path) #13
  %17 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load17 = load i8, ptr %is_active, align 4
  %bf.clear = and i8 %bf.load17, 127
  store i8 %bf.clear, ptr %is_active, align 4
  %fail_count = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 2
  %18 = ptrtoint ptr %fail_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fail_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %fail_count, align 4
  %nr_valid_paths = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nr_valid_paths, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_valid_paths, ptr %nr_valid_paths, i32 1, ptr elementtype(i32) %nr_valid_paths) #13, !srcloc !319
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_pgpath, align 4
  %cmp18 = icmp eq ptr %22, %pgpath
  br i1 %cmp18, label %if.then20, label %do.end8.if.end22_crit_edge

do.end8.if.end22_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %current_pgpath, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end8.if.end22_crit_edge
  %24 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ti, align 4
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  %name26 = getelementptr inbounds %struct.dm_dev, ptr %27, i32 0, i32 3
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_valid_paths, i32 noundef 4) #13
  %28 = ptrtoint ptr %nr_valid_paths to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %nr_valid_paths, align 4
  tail call void @dm_path_uevent(i32 noundef 0, ptr noundef %25, ptr noundef %name26, i32 noundef %29) #13
  %trigger_event = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i51 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %trigger_event) #13
  tail call fastcc void @enable_nopath_timeout(ptr noundef %3)
  br label %out

out:                                              ; preds = %if.end22, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_path_uevent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dh_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dh_set_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_multipath_work(ptr noundef %m) unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 9
  %0 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_handler_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.skip_crit_edge, label %if.then

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip

if.then:                                          ; preds = %entry
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %2 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pg_init_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.skip_crit_edge, label %do.body3

if.then.skip_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip

do.body3:                                         ; preds = %if.then
  %lock = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %4 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pg_init_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %do.body3.if.end31_crit_edge, label %land.lhs.true

do.body3.if.end31_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true:                                    ; preds = %do.body3
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %m) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then14:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #13
  %6 = load ptr, ptr @kmpath_handlerd, align 4
  tail call void @flush_workqueue(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #13
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !300) #13
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @autoremove_wake_function, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %10, align 4
  %pg_init_wait.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 11
  call void @prepare_to_wait(ptr noundef %pg_init_wait.i, ptr noundef nonnull %wait.i, i32 noundef 2) #13
  %call.i.i8.i = call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %20 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %pg_init_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not9.i = icmp eq i32 %21, 0
  br i1 %tobool.not9.i, label %if.then14.multipath_wait_for_pg_init_completion.exit_crit_edge, label %if.then14.if.end.i_crit_edge

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  br label %if.end.i

if.then14.multipath_wait_for_pg_init_completion.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %multipath_wait_for_pg_init_completion.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then14.if.end.i_crit_edge
  call void @io_schedule() #13
  call void @prepare_to_wait(ptr noundef %pg_init_wait.i, ptr noundef nonnull %wait.i, i32 noundef 2) #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  %22 = ptrtoint ptr %pg_init_in_progress to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %pg_init_in_progress, align 4
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i.multipath_wait_for_pg_init_completion.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.multipath_wait_for_pg_init_completion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %multipath_wait_for_pg_init_completion.exit

multipath_wait_for_pg_init_completion.exit:       ; preds = %if.end.i.multipath_wait_for_pg_init_completion.exit_crit_edge, %if.then14.multipath_wait_for_pg_init_completion.exit_crit_edge
  call void @finish_wait(ptr noundef %pg_init_wait.i, ptr noundef nonnull %wait.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #13
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @_clear_bit(i32 noundef 4, ptr noundef %m) #13
  br label %if.end31

if.end31:                                         ; preds = %multipath_wait_for_pg_init_completion.exit, %land.lhs.true.if.end31_crit_edge, %do.body3.if.end31_crit_edge
  %flags.0 = phi i32 [ %call5, %land.lhs.true.if.end31_crit_edge ], [ %call25, %multipath_wait_for_pg_init_completion.exit ], [ %call5, %do.body3.if.end31_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #13
  br label %skip

skip:                                             ; preds = %if.end31, %if.then.skip_crit_edge, %entry.skip_crit_edge
  %queue_mode = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 2
  %24 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp34 = icmp eq i32 %25, 1
  br i1 %cmp34, label %if.then36, label %skip.if.end38_crit_edge

skip.if.end38_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #15
  %process_queued_bios = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 19
  %call37 = call zeroext i1 @flush_work(ptr noundef %process_queued_bios) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %skip.if.end38_crit_edge
  %trigger_event = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 17
  %call39 = call zeroext i1 @flush_work(ptr noundef %trigger_event) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_start_time_ns_from_clone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bypass_pg_num(ptr noundef %m, ptr noundef readonly %pgstr, i1 noundef zeroext %bypassed) unnamed_addr #2 align 64 {
entry:
  %pgnum = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pgnum) #13
  %0 = ptrtoint ptr %pgnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pgnum, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #13
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !310
  %tobool.not = icmp eq ptr %pgstr, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %pgstr, ptr noundef nonnull @.str.110, ptr noundef nonnull %pgnum, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false1.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false1.do.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %nr_priority_groups = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 7
  %4 = ptrtoint ptr %nr_priority_groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_priority_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7 = icmp ugt i32 %3, %5
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %lor.lhs.false3.do.end_crit_edge, label %if.end

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false1.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %priority_groups = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %pg.0.in = phi ptr [ %priority_groups, %if.end ], [ %pg.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %pg.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %pg.0 = load ptr, ptr %pg.0.in, align 4
  %cmp11.not = icmp eq ptr %pg.0, %priority_groups
  br i1 %cmp11.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %pgnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pgnum, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %pgnum, align 4
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %pg.0.lcssa = phi ptr [ %pg.0, %for.body.for.end_crit_edge ], [ %priority_groups, %for.cond.for.end_crit_edge ]
  %lock.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %bypassed5.i = getelementptr inbounds %struct.priority_group, ptr %pg.0.lcssa, i32 0, i32 6
  %9 = ptrtoint ptr %bypassed5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %bypassed5.i, align 4
  %bf.shl.i = select i1 %bypassed, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %bypassed5.i, align 4
  %current_pgpath.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 3
  %10 = ptrtoint ptr %current_pgpath.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %current_pgpath.i, align 4
  %current_pg.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 4
  %11 = ptrtoint ptr %current_pg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %current_pg.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #13
  %trigger_event.i = getelementptr inbounds %struct.multipath, ptr %m, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %trigger_event.i) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pgnum) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reinstate_path(ptr noundef %pgpath) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pg = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 1
  %0 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg, align 4
  %m1 = getelementptr inbounds %struct.priority_group, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m1, align 4
  %lock = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %is_active = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 5
  %4 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end8, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

do.end8:                                          ; preds = %entry
  %ti = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call10 = tail call ptr @dm_table_device_name(ptr noundef %8) #13
  %path = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 3
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %call10, ptr noundef %name) #16
  %11 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pg, align 4
  %ps = getelementptr inbounds %struct.priority_group, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps, align 4
  %reinstate_path = getelementptr inbounds %struct.path_selector_type, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %reinstate_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reinstate_path, align 4
  %call16 = tail call i32 %16(ptr noundef %ps, ptr noundef %path) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %do.end8.out.thread_crit_edge

do.end8.out.thread_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end18:                                         ; preds = %do.end8
  %17 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load20 = load i8, ptr %is_active, align 4
  %bf.set = or i8 %bf.load20, -128
  store i8 %bf.set, ptr %is_active, align 4
  %nr_valid_paths21 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_valid_paths21, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %nr_valid_paths21, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_valid_paths21, ptr %nr_valid_paths21, i32 1, ptr elementtype(i32) %nr_valid_paths21) #13, !srcloc !321
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp23 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end18
  %current_pgpath = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %current_pgpath to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %current_pgpath, align 4
  %20 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ti, align 4
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path, align 4
  %name39.c = getelementptr inbounds %struct.dm_dev, ptr %23, i32 0, i32 3
  tail call void @dm_path_uevent(i32 noundef 1, ptr noundef %21, ptr noundef %name39.c, i32 noundef 1) #13
  %trigger_event.c = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i79.c = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %trigger_event.c) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %25 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ti, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void @dm_table_run_md_queue_async(ptr noundef %28) #13
  %queue_mode.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_mode.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %30, label %if.then25.if.end47_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then25.if.end47_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.else:                                          ; preds = %if.end18
  %hw_handler_name = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %hw_handler_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_handler_name, align 4
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.end47.critedge98, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %current_pg = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %current_pg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %current_pg, align 4
  %36 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pg, align 4
  %cmp28 = icmp eq ptr %35, %37
  br i1 %cmp28, label %if.then30, label %if.end47.critedge94

if.then30:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr @kmpath_handlerd, align 4
  %activate_path = getelementptr inbounds %struct.pgpath, ptr %pgpath, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %activate_path) #13
  br i1 %call.i, label %if.then32, label %if.end47.critedge

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %pg_init_in_progress = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 14
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pg_init_in_progress, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pg_init_in_progress, i32 1, i32 3, i32 1) #13
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pg_init_in_progress, ptr %pg_init_in_progress, i32 1, ptr elementtype(i32) %pg_init_in_progress) #13, !srcloc !312
  %40 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ti, align 4
  %42 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %path, align 4
  %name39.c91 = getelementptr inbounds %struct.dm_dev, ptr %43, i32 0, i32 3
  tail call void @dm_path_uevent(i32 noundef 1, ptr noundef %41, ptr noundef %name39.c91, i32 noundef %asmresult.i.i.i.i) #13
  %trigger_event.c92 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i79.c93 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %trigger_event.c92) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end47

out.thread:                                       ; preds = %do.end8.out.thread_crit_edge, %entry.out.thread_crit_edge
  %r.0.ph = phi i32 [ %call16, %do.end8.out.thread_crit_edge ], [ 0, %entry.out.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end47

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ti, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %call.i80 = tail call ptr @dm_table_get_md(ptr noundef %48) #13
  tail call void @dm_mq_kick_requeue_list(ptr noundef %call.i80) #13
  br label %if.end47

if.then3.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %49 = load ptr, ptr @kmultipathd, align 4
  %process_queued_bios.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 19
  %call.i.i81 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %process_queued_bios.i) #13
  br label %if.end47

if.end47.critedge:                                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ti, align 4
  %52 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %path, align 4
  %name39.c87 = getelementptr inbounds %struct.dm_dev, ptr %53, i32 0, i32 3
  tail call void @dm_path_uevent(i32 noundef 1, ptr noundef %51, ptr noundef %name39.c87, i32 noundef %asmresult.i.i.i.i) #13
  %trigger_event.c88 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i79.c89 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %trigger_event.c88) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end47

if.end47.critedge94:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ti, align 4
  %57 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %path, align 4
  %name39.c95 = getelementptr inbounds %struct.dm_dev, ptr %58, i32 0, i32 3
  tail call void @dm_path_uevent(i32 noundef 1, ptr noundef %56, ptr noundef %name39.c95, i32 noundef %asmresult.i.i.i.i) #13
  %trigger_event.c96 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i79.c97 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %trigger_event.c96) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end47

if.end47.critedge98:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ti, align 4
  %62 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %path, align 4
  %name39.c99 = getelementptr inbounds %struct.dm_dev, ptr %63, i32 0, i32 3
  tail call void @dm_path_uevent(i32 noundef 1, ptr noundef %61, ptr noundef %name39.c99, i32 noundef %asmresult.i.i.i.i) #13
  %trigger_event.c100 = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %64 = load ptr, ptr @system_wq, align 4
  %call.i.i79.c101 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %trigger_event.c100) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %if.end47

if.end47:                                         ; preds = %if.end47.critedge98, %if.end47.critedge94, %if.end47.critedge, %if.then3.i, %if.then.i, %out.thread, %if.then32, %if.then25.if.end47_crit_edge
  %r.086 = phi i32 [ %r.0.ph, %out.thread ], [ 0, %if.then25.if.end47_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then3.i ], [ 0, %if.end47.critedge ], [ 0, %if.then32 ], [ 0, %if.end47.critedge94 ], [ 0, %if.end47.critedge98 ]
  %65 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load49 = load i8, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load49)
  %bf.cast51.not = icmp sgt i8 %bf.load49, -1
  br i1 %bf.cast51.not, label %if.end47.if.end53_crit_edge, label %if.then52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %nopath_timer.i = getelementptr inbounds %struct.multipath, ptr %3, i32 0, i32 21
  %call.i82 = tail call i32 @del_timer_sync(ptr noundef %nopath_timer.i) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  ret i32 %r.086
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_lld_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !248, !250, !252, !254, !256, !258, !259, !260, !262, !263, !264, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !284, !285, !286, !287, !289, !291, !292, !293, !295, !296, !297, !298}
!llvm.named.register.sp = !{!300}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__initcall__kmod_dm_multipath__295_2245_dm_multipath_init6, !1, !"__initcall__kmod_dm_multipath__295_2245_dm_multipath_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-mpath.c", i32 2245, i32 1}
!2 = !{ptr @__exitcall_dm_multipath_exit, !3, !"__exitcall_dm_multipath_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-mpath.c", i32 2246, i32 1}
!4 = !{ptr @__param_queue_if_no_path_timeout_secs, !5, !"__param_queue_if_no_path_timeout_secs", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-mpath.c", i32 2248, i32 1}
!6 = !{ptr @__UNIQUE_ID_queue_if_no_path_timeout_secstype296, !5, !"__UNIQUE_ID_queue_if_no_path_timeout_secstype296", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_queue_if_no_path_timeout_secs297, !8, !"__UNIQUE_ID_queue_if_no_path_timeout_secs297", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-mpath.c", i32 2250, i32 1}
!9 = !{ptr @__UNIQUE_ID_description298, !10, !"__UNIQUE_ID_description298", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-mpath.c", i32 2252, i32 1}
!11 = !{ptr @__UNIQUE_ID_author299, !12, !"__UNIQUE_ID_author299", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-mpath.c", i32 2253, i32 1}
!13 = !{ptr @__UNIQUE_ID_file300, !14, !"__UNIQUE_ID_file300", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-mpath.c", i32 2254, i32 1}
!15 = !{ptr @__UNIQUE_ID_license301, !14, !"__UNIQUE_ID_license301", i1 false, i1 false}
!16 = !{ptr @kmultipathd, !17, !"kmultipathd", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-mpath.c", i32 112, i32 33}
!18 = !{ptr @kmpath_handlerd, !19, !"kmpath_handlerd", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-mpath.c", i32 112, i32 47}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-mpath.c", i32 2173, i32 10}
!22 = !{ptr @multipath_target, !23, !"multipath_target", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-mpath.c", i32 2172, i32 27}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-mpath.c", i32 1175, i32 13}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-mpath.c", i32 1176, i32 13}
!28 = !{ptr @multipath_ctr._args, !29, !"_args", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-mpath.c", i32 1174, i32 29}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-mpath.c", i32 1191, i32 15}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-mpath.c", i32 1217, i32 15}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-mpath.c", i32 1244, i32 15}
!36 = !{ptr @alloc_multipath.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-mpath.c", i32 210, i32 3}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @alloc_multipath.__key.7, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-mpath.c", i32 212, i32 3}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @alloc_multipath.__key.9, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-mpath.c", i32 213, i32 3}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @alloc_multipath.__key.11, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-mpath.c", i32 220, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-mpath.c", i32 782, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @queue_if_no_path_timeout_work._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @queue_if_no_path_timeout_work._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-mpath.c", i32 738, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @queue_if_no_path.__UNIQUE_ID_ddebug286, !55, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-mpath.c", i32 748, i32 4}
!61 = !{ptr @queue_if_no_path._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @queue_if_no_path._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-mpath.c", i32 758, i32 2}
!65 = !{ptr @queue_if_no_path.__UNIQUE_ID_ddebug287, !64, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-mpath.c", i32 1107, i32 10}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-mpath.c", i32 1108, i32 11}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-mpath.c", i32 1109, i32 14}
!72 = !{ptr @parse_features._args, !73, !"_args", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-mpath.c", i32 1106, i32 29}
!74 = !{ptr @__func__.parse_features, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-mpath.c", i32 1124, i32 41}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-mpath.c", i32 1128, i32 29}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-mpath.c", i32 1133, i32 29}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-mpath.c", i32 1140, i32 29}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-mpath.c", i32 1147, i32 29}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-mpath.c", i32 1151, i32 37}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-mpath.c", i32 1153, i32 42}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-mpath.c", i32 1154, i32 35}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-mpath.c", i32 1157, i32 17}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-mpath.c", i32 1164, i32 15}
!94 = !{ptr @alloc_multipath_stage2.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-mpath.c", i32 231, i32 3}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @alloc_multipath_stage2.__key.34, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-mpath.c", i32 249, i32 2}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-mpath.c", i32 722, i32 4}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-mpath.c", i32 644, i32 3}
!105 = !{ptr @__multipath_map_bio._rs, !104, !"_rs", i1 false, i1 false}
!106 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__multipath_map_bio.descriptor, !104, !"descriptor", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-mpath.c", i32 1055, i32 13}
!111 = !{ptr @parse_hw_handler._args, !112, !"_args", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-mpath.c", i32 1054, i32 29}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-mpath.c", i32 1066, i32 3}
!115 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @parse_hw_handler._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @parse_hw_handler._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/dm-mpath.c", i32 1082, i32 16}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-mpath.c", i32 1086, i32 18}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/md/dm-mpath.c", i32 1088, i32 19}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-mpath.c", i32 979, i32 13}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-mpath.c", i32 980, i32 13}
!128 = !{ptr @parse_priority_group._args, !129, !"_args", i1 false, i1 false}
!129 = !{!"../drivers/md/dm-mpath.c", i32 978, i32 29}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/dm-mpath.c", i32 990, i32 15}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/md/dm-mpath.c", i32 996, i32 15}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/md/dm-mpath.c", i32 1022, i32 16}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/dm-mpath.c", i32 841, i32 13}
!138 = !{ptr @parse_path_selector._args, !139, !"_args", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-mpath.c", i32 840, i32 29}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/dm-mpath.c", i32 846, i32 15}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/md/dm-mpath.c", i32 859, i32 15}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/md/dm-mpath.c", i32 936, i32 15}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/md/dm-mpath.c", i32 947, i32 15}
!148 = !{ptr @parse_path.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/md/dm-mpath.c", i32 954, i32 3}
!150 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @parse_path.__key.57, !149, !"__key", i1 false, i1 false}
!152 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/dm-mpath.c", i32 1545, i32 3}
!155 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @pg_init_done._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @pg_init_done._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/md/dm-mpath.c", i32 1582, i32 4}
!160 = !{ptr @pg_init_done._entry.61, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @pg_init_done._entry_ptr.63, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/md/dm-mpath.c", i32 1333, i32 2}
!164 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @fail_path._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @fail_path._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/md/dm-mpath.c", i32 904, i32 4}
!169 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @setup_scsi_dh._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @setup_scsi_dh._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/dm-mpath.c", i32 909, i32 13}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/dm-mpath.c", i32 916, i32 14}
!176 = !{ptr @multipath_clone_and_map._rs, !177, !"_rs", i1 false, i1 false}
!177 = !{!"../drivers/md/dm-mpath.c", i32 520, i32 3}
!178 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @multipath_clone_and_map.descriptor, !177, !"descriptor", i1 false, i1 false}
!180 = !{ptr @multipath_end_io_bio._rs, !181, !"_rs", i1 false, i1 false}
!181 = !{!"../drivers/md/dm-mpath.c", i32 1703, i32 5}
!182 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @multipath_end_io_bio.descriptor, !181, !"descriptor", i1 false, i1 false}
!184 = !{ptr @multipath_end_io._rs, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../drivers/md/dm-mpath.c", i32 1665, i32 5}
!186 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @multipath_end_io.descriptor, !185, !"descriptor", i1 false, i1 false}
!188 = !{ptr @__func__.multipath_presuspend, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/md/dm-mpath.c", i32 1739, i32 36}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/md/dm-mpath.c", i32 1765, i32 2}
!192 = !{ptr @.str.74, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @multipath_resume.__UNIQUE_ID_ddebug289, !191, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!194 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/md/dm-mpath.c", i32 1804, i32 3}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/md/dm-mpath.c", i32 1807, i32 3}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/md/dm-mpath.c", i32 1814, i32 4}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/md/dm-mpath.c", i32 1816, i32 4}
!202 = !{ptr @.str.79, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/md/dm-mpath.c", i32 1818, i32 4}
!204 = !{ptr @.str.80, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/md/dm-mpath.c", i32 1820, i32 4}
!206 = !{ptr @.str.81, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/md/dm-mpath.c", i32 1824, i32 5}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../drivers/md/dm-mpath.c", i32 1827, i32 5}
!210 = !{ptr @.str.82, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/md/dm-mpath.c", i32 1834, i32 3}
!212 = !{ptr @.str.83, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/md/dm-mpath.c", i32 1836, i32 3}
!214 = !{ptr @.str.84, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/md/dm-mpath.c", i32 1859, i32 4}
!216 = !{ptr @.str.85, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/md/dm-mpath.c", i32 1868, i32 4}
!218 = !{ptr @.str.86, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/md/dm-mpath.c", i32 1872, i32 5}
!220 = !{ptr @.str.87, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/md/dm-mpath.c", i32 1885, i32 4}
!224 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/md/dm-mpath.c", i32 1910, i32 3}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/md/dm-mpath.c", i32 1911, i32 3}
!228 = !{ptr @.str.92, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/md/dm-mpath.c", i32 1921, i32 4}
!230 = !{ptr @.str.93, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/md/dm-mpath.c", i32 1922, i32 4}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/md/dm-mpath.c", i32 1923, i32 4}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/md/dm-mpath.c", i32 1927, i32 5}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/md/dm-mpath.c", i32 1932, i32 6}
!238 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/md/dm-mpath.c", i32 1942, i32 3}
!240 = !{ptr @__func__.multipath_message, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/md/dm-mpath.c", i32 1967, i32 41}
!242 = !{ptr @.str.98, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/md/dm-mpath.c", i32 1972, i32 35}
!244 = !{ptr @.str.99, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/dm-mpath.c", i32 1980, i32 3}
!246 = !{ptr @multipath_message._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @multipath_message._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/md/dm-mpath.c", i32 1984, i32 27}
!250 = !{ptr @.str.101, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-mpath.c", i32 1987, i32 34}
!252 = !{ptr @.str.102, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/md/dm-mpath.c", i32 1990, i32 34}
!254 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/md/dm-mpath.c", i32 1993, i32 34}
!256 = !{ptr @.str.105, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/md/dm-mpath.c", i32 1998, i32 3}
!258 = !{ptr @multipath_message._entry.104, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @multipath_message._entry_ptr.106, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/md/dm-mpath.c", i32 2004, i32 3}
!262 = !{ptr @multipath_message._entry.107, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @multipath_message._entry_ptr.109, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/md/dm-mpath.c", i32 1492, i32 31}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/md/dm-mpath.c", i32 1494, i32 3}
!268 = !{ptr @.str.112, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @bypass_pg_num._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @bypass_pg_num._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.113, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/md/dm-mpath.c", i32 1462, i32 3}
!273 = !{ptr @.str.114, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @switch_pg_num._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @switch_pg_num._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.115, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/md/dm-mpath.c", i32 1374, i32 2}
!278 = !{ptr @reinstate_path._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @reinstate_path._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.116, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/md/dm-mpath.c", i32 2199, i32 32}
!282 = !{ptr @.str.117, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/md/dm-mpath.c", i32 2201, i32 3}
!284 = !{ptr @.str.118, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @dm_multipath_init._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @dm_multipath_init._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/md/dm-mpath.c", i32 2212, i32 20}
!289 = !{ptr @.str.121, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/md/dm-mpath.c", i32 2215, i32 3}
!291 = !{ptr @dm_multipath_init._entry.120, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @dm_multipath_init._entry_ptr.122, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/md/dm-mpath.c", i32 2222, i32 3}
!295 = !{ptr @dm_multipath_init._entry.123, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @dm_multipath_init._entry_ptr.125, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @__param_str_queue_if_no_path_timeout_secs, !5, !"__param_str_queue_if_no_path_timeout_secs", i1 false, i1 false}
!298 = !{ptr @queue_if_no_path_timeout_secs, !299, !"queue_if_no_path_timeout_secs", i1 false, i1 false}
!299 = !{!"../drivers/md/dm-mpath.c", i32 35, i32 22}
!300 = !{!"sp"}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{!"auto-init"}
!311 = !{i64 2148443011, i64 2148443016, i64 2148443029, i64 2148443073, i64 2148443107, i64 2148443128}
!312 = !{i64 2148618413, i64 2148618439, i64 2148618468, i64 2148618502, i64 2148618533, i64 2148618556}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{ptr @fail_path, ptr @reinstate_path}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{i64 2148706889}
!317 = !{i64 2148621598, i64 2148621630, i64 2148621659, i64 2148621693, i64 2148621724, i64 2148621747}
!318 = !{i64 2148707118}
!319 = !{i64 2148620878, i64 2148620904, i64 2148620933, i64 2148620967, i64 2148620998, i64 2148621021}
!320 = !{i64 2148703848}
!321 = !{i64 2148619133, i64 2148619165, i64 2148619194, i64 2148619228, i64 2148619259, i64 2148619282}
!322 = !{i64 2148704077}
