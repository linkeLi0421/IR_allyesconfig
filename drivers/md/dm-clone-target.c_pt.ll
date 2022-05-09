; ModuleID = '/llk/IR_all_yes/drivers/md/dm-clone-target.c_pt.bc'
source_filename = "../drivers/md/dm-clone-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.clone = type { ptr, ptr, ptr, ptr, i32, i64, i32, %struct.mutex, ptr, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.bio_list, %struct.bio_list, %struct.bio_list, i32, i32, i32, %struct.atomic_t, i32, ptr, ptr, %struct.work_struct, %struct.delayed_work, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hash_table_bucket = type { %struct.hlist_head, %struct.spinlock }
%struct.hlist_head = type { ptr }
%struct.dm_clone_region_hydration = type { ptr, i32, ptr, ptr, %struct.bio_list, i8, %struct.list_head, %struct.hlist_node }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.dm_io_region = type { ptr, i64, i64 }

@__param_str_clone_hydration_throttle = internal constant [34 x i8] c"dm_clone.clone_hydration_throttle\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dm_kcopyd_throttle = internal global { %struct.dm_kcopyd_throttle, [44 x i8] } { %struct.dm_kcopyd_throttle { i32 100, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__param_clone_hydration_throttle = internal constant %struct.kernel_param { ptr @__param_str_clone_hydration_throttle, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @dm_kcopyd_throttle } }, section "__param", align 4
@__UNIQUE_ID_clone_hydration_throttletype283 = internal constant [48 x i8] c"dm_clone.parmtype=clone_hydration_throttle:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_clone_hydration_throttle284 = internal constant [92 x i8] c"dm_clone.parm=clone_hydration_throttle:A percentage of time allocated for hydrating regions\00", section ".modinfo", align 1
@clone_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 0, i32 0], ptr @clone_ctr, ptr @clone_dtr, ptr @clone_map, ptr null, ptr null, ptr @clone_endio, ptr null, ptr null, ptr null, ptr @clone_postsuspend, ptr null, ptr @clone_resume, ptr @clone_status, ptr @clone_message, ptr null, ptr null, ptr null, ptr @clone_iterate_devices, ptr @clone_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@_hydration_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_dm_clone__293_2231_dm_clone_init6 = internal global ptr @dm_clone_init, section ".initcall6.init", align 4
@__exitcall_dm_clone_exit = internal global ptr @dm_clone_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [48 x i8] c"dm_clone.description=device-mapper clone target\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [55 x i8] c"dm_clone.author=Nikos Tsironis <ntsironis@arrikto.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [34 x i8] c"dm_clone.file=drivers/md/dm-clone\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"dm_clone.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clone\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid number of arguments\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate clone structure\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Too many regions. Consider increasing the region size\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set max io len\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to load metadata\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Unable to get write access to metadata, please check/repair metadata\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate hydration hash table\00", [56 x i8] zeroinitializer }, align 32
@clone_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&clone->hydration_stopped\00", [38 x i8] zeroinitializer }, align 32
@clone_ctr.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&clone->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm-clone\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate workqueue\00", [35 x i8] zeroinitializer }, align 32
@clone_ctr.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&clone->worker)\00", [62 x i8] zeroinitializer }, align 32
@clone_ctr.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&clone->waker)->work)\00", [54 x i8] zeroinitializer }, align 32
@clone_ctr.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&clone->waker)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to create dm_clone_region_hydration memory pool\00", [41 x i8] zeroinitializer }, align 32
@clone_ctr.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&clone->commit_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error opening metadata device\00", [34 x i8] zeroinitializer }, align 32
@parse_metadata_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014device-mapper: clone: Metadata device %s is larger than %u sectors: excess space will not be used.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parse_metadata_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/md/dm-clone-target.c\00", [35 x i8] zeroinitializer }, align 32
@parse_metadata_dev._entry_ptr = internal global ptr @parse_metadata_dev._entry, section ".printk_index", align 4
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error opening destination device\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device size larger than destination device\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error opening source device\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device size larger than source device\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid region size\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Region size is not a power of 2\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Region size is not a multiple of device logical block size\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid number of feature arguments\00", [60 x i8] zeroinitializer }, align 32
@__const.parse_feature_args.args = private unnamed_addr constant %struct.dm_arg { i32 0, i32 2, ptr @.str.33 }, align 4
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_hydration\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no_discard_passdown\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid feature argument\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid number of core arguments\00", [63 x i8] zeroinitializer }, align 32
@__const.parse_core_args.args = private unnamed_addr constant %struct.dm_arg { i32 0, i32 4, ptr @.str.37 }, align 4
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Number of core arguments must be even\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hydration_threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid value for argument `hydration_threshold'\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hydration_batch_size\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid value for argument `hydration_batch_size'\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid core argument\00", [42 x i8] zeroinitializer }, align 32
@__set_clone_mode.descs = internal unnamed_addr constant [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read-write\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@__set_clone_mode._entry = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.25, i32 192, ptr null, ptr null }, align 1
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016device-mapper: clone: %s: Switching to %s mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__set_clone_mode\00", [47 x i8] zeroinitializer }, align 32
@__set_clone_mode._entry_ptr = internal global ptr @__set_clone_mode._entry, section ".printk_index", align 4
@hash_table_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bucket->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dm_clone_metadata_pre_commit\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flush destination device\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dm_clone_metadata_commit\00", [39 x i8] zeroinitializer }, align 32
@__metadata_operation_failed._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.25, i32 228, ptr null, ptr null }, align 1
@.str.53 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: clone: %s: Metadata operation `%s' failed: error = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__metadata_operation_failed\00", [36 x i8] zeroinitializer }, align 32
@__metadata_operation_failed._entry_ptr = internal global ptr @__metadata_operation_failed._entry, section ".printk_index", align 4
@__abort_transaction._entry = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.25, i32 203, ptr null, ptr null }, align 1
@.str.55 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: clone: %s: Aborting current metadata transaction\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__abort_transaction\00", [44 x i8] zeroinitializer }, align 32
@__abort_transaction._entry_ptr = internal global ptr @__abort_transaction._entry, section ".printk_index", align 4
@__abort_transaction._entry.57 = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.25, i32 205, ptr null, ptr null }, align 1
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: clone: %s: Failed to abort metadata transaction\0A\00", [62 x i8] zeroinitializer }, align 32
@__abort_transaction._entry_ptr.59 = internal global ptr @__abort_transaction._entry.57, section ".printk_index", align 4
@__reload_in_core_bitset._entry = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.25, i32 218, ptr null, ptr null }, align 1
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016device-mapper: clone: %s: Reloading on-disk bitmap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__reload_in_core_bitset\00", [40 x i8] zeroinitializer }, align 32
@__reload_in_core_bitset._entry_ptr = internal global ptr @__reload_in_core_bitset._entry, section ".printk_index", align 4
@__reload_in_core_bitset._entry.62 = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.25, i32 220, ptr null, ptr null }, align 1
@.str.63 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: clone: %s: Failed to reload on-disk bitmap\0A\00", [35 x i8] zeroinitializer }, align 32
@__reload_in_core_bitset._entry_ptr.64 = internal global ptr @__reload_in_core_bitset._entry.62, section ".printk_index", align 4
@hydration_kcopyd_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hydration_kcopyd_callback = private unnamed_addr constant [26 x i8] c"hydration_kcopyd_callback\00", align 1
@hydration_kcopyd_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.hydration_kcopyd_callback, ptr @.str.25, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013device-mapper: clone: %s: hydration failed\0A\00", [50 x i8] zeroinitializer }, align 32
@hydration_kcopyd_callback._entry_ptr = internal global ptr @hydration_kcopyd_callback._entry, section ".printk_index", align 4
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate memory for table line\00", [55 x i8] zeroinitializer }, align 32
@process_discard_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.25, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013device-mapper: clone: %s: Invalid range (%lu + %lu, total regions %lu) for discard (%llu + %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_discard_bio\00", [44 x i8] zeroinitializer }, align 32
@process_discard_bio._entry_ptr = internal global ptr @process_discard_bio._entry, section ".printk_index", align 4
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fail\00", [27 x i8] zeroinitializer }, align 32
@clone_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.25, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: clone: %s: dm_clone_get_free_metadata_block_count returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clone_status\00", [19 x i8] zeroinitializer }, align 32
@clone_status._entry_ptr = internal global ptr @clone_status._entry, section ".printk_index", align 4
@clone_status._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.25, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: clone: %s: dm_clone_get_metadata_dev_size returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@clone_status._entry_ptr.75 = internal global ptr @clone_status._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%u %llu/%llu %llu %u/%lu %u \00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no_hydration \00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no_discard_passdown \00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%u hydration_threshold %u hydration_batch_size %u \00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable_hydration\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disable_hydration\00", [46 x i8] zeroinitializer }, align 32
@clone_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.25, i32 2182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: clone: %s: Unsupported message `%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clone_message\00", [18 x i8] zeroinitializer }, align 32
@clone_message._entry_ptr = internal global ptr @clone_message._entry, section ".printk_index", align 4
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard unsupported\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"max discard sectors smaller than a region\00", [54 x i8] zeroinitializer }, align 32
@disable_passdown_if_not_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.25, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014device-mapper: clone: Destination device (%s) %s: Disabling discard passdown.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disable_passdown_if_not_supported\00", [62 x i8] zeroinitializer }, align 32
@disable_passdown_if_not_supported._entry_ptr = internal global ptr @disable_passdown_if_not_supported._entry, section ".printk_index", align 4
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dm_clone_region_hydration\00", [38 x i8] zeroinitializer }, align 32
@dm_clone_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.25, i32 2215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: clone: Failed to register clone target\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_clone_init\00", [18 x i8] zeroinitializer }, align 32
@dm_clone_init._entry_ptr = internal global ptr @dm_clone_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"dm_kcopyd_throttle\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 54, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"clone_target\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2186, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"_hydration_cache\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 58, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2187, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1783, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1792, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1824, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1837, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1853, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1861, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1871, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1876, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1877, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1885, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1887, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1892, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1893, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1904, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1913, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1690, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1696, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1710, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1717, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1732, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1739, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1643, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1651, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1658, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1551, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1566, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1568, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1571, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1590, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1606, i32 15 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1614, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1616, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1620, i32 36 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1622, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1627, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 165, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 166, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 167, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 191, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 591, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1148, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1154, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1163, i32 38 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 227, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 203, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 205, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 218, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 220, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 771, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1771, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 486, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1441, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1452, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1460, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1465, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1479, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1482, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1491, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1492, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1498, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1501, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1512, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1395, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1398, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1401, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1412, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2151, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2156, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2182, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2042, i32 12 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2044, i32 12 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2047, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2209, i32 21 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private constant [32 x i8] c"../drivers/md/dm-clone-target.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 2215, i32 3 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_clone_hydration_throttle284, ptr @__UNIQUE_ID_clone_hydration_throttletype283, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__abort_transaction._entry, ptr @__abort_transaction._entry.57, ptr @__abort_transaction._entry_ptr, ptr @__abort_transaction._entry_ptr.59, ptr @__exitcall_dm_clone_exit, ptr @__initcall__kmod_dm_clone__293_2231_dm_clone_init6, ptr @__metadata_operation_failed._entry, ptr @__metadata_operation_failed._entry_ptr, ptr @__param_clone_hydration_throttle, ptr @__reload_in_core_bitset._entry, ptr @__reload_in_core_bitset._entry.62, ptr @__reload_in_core_bitset._entry_ptr, ptr @__reload_in_core_bitset._entry_ptr.64, ptr @__set_clone_mode._entry, ptr @__set_clone_mode._entry_ptr, ptr @clone_message._entry, ptr @clone_message._entry_ptr, ptr @clone_status._entry, ptr @clone_status._entry.73, ptr @clone_status._entry_ptr, ptr @clone_status._entry_ptr.75, ptr @disable_passdown_if_not_supported._entry, ptr @disable_passdown_if_not_supported._entry_ptr, ptr @dm_clone_exit, ptr @dm_clone_init._entry, ptr @dm_clone_init._entry_ptr, ptr @hydration_kcopyd_callback._entry, ptr @hydration_kcopyd_callback._entry_ptr, ptr @parse_metadata_dev._entry, ptr @parse_metadata_dev._entry_ptr, ptr @process_discard_bio._entry, ptr @process_discard_bio._entry_ptr, ptr @dm_kcopyd_throttle, ptr @clone_target, ptr @_hydration_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @clone_ctr.__key, ptr @.str.8, ptr @clone_ctr.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @clone_ctr.__key.13, ptr @.str.14, ptr @clone_ctr.__key.15, ptr @.str.16, ptr @clone_ctr.__key.17, ptr @.str.18, ptr @.str.19, ptr @clone_ctr.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @hash_table_init.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @hydration_kcopyd_callback._rs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_kcopyd_throttle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hydration_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_ctr.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_metadata_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_table_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hydration_kcopyd_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hydration_kcopyd_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_discard_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_status._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_passdown_if_not_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_clone_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dm_unregister_target(ptr noundef nonnull @clone_target) #11
  %0 = load ptr, ptr @_hydration_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  store ptr null, ptr @_hydration_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_clone_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.96, i32 noundef 44, i32 noundef 4, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @_hydration_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dm_register_target(ptr noundef nonnull @clone_target) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clone_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %b.i = alloca [32 x i8], align 1
  %as = alloca %struct.dm_arg_set, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp = icmp ult i32 %argc, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  %2 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %argc, ptr %as, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %argv, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 576) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error4 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %5 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %error4, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ti, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 30
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or.i533 = or i32 %8, 7
  store i32 %or.i533, ptr %flags, align 4
  %error9 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i) #11
  %9 = call ptr @memset(ptr %b.i, i32 255, i32 32)
  %call.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #11
  %metadata_dev.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 1
  %call1.i = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call.i, i32 noundef 3, ptr noundef %metadata_dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %parse_metadata_dev.exit

if.end.i:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %metadata_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metadata_dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %15)
  %cmp.i = icmp ugt i64 %15, 33554432
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call ptr @bdevname(ptr noundef %13, ptr noundef nonnull %b.i) #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %call6.i, i32 noundef 33292800) #14
  br label %if.end13

parse_metadata_dev.exit:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.22, ptr %error9, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #11
  br label %out_with_clone

if.end13:                                         ; preds = %do.end.i, %if.end.i.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #11
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %call.i535 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #11
  %dest_dev.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 2
  %call1.i536 = call i32 @dm_get_device(ptr noundef %18, ptr noundef %call.i535, i32 noundef 3, ptr noundef %dest_dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i536)
  %tobool.not.i537 = icmp eq i32 %call1.i536, 0
  br i1 %tobool.not.i537, label %if.end.i540, label %if.end13.parse_dest_dev.exit_crit_edge

if.end13.parse_dest_dev.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_dest_dev.exit

if.end.i540:                                      ; preds = %if.end13
  %19 = ptrtoint ptr %dest_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dest_dev.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %bd_nr_sectors.i.i.i538 = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bd_nr_sectors.i.i.i538 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bd_nr_sectors.i.i.i538, align 8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %len.i = getelementptr inbounds %struct.dm_target, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %28)
  %cmp.i539 = icmp ult i64 %24, %28
  br i1 %cmp.i539, label %if.then5.i, label %if.end18

if.then5.i:                                       ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #13
  call void @dm_put_device(ptr noundef %26, ptr noundef %20) #11
  br label %parse_dest_dev.exit

parse_dest_dev.exit:                              ; preds = %if.then5.i, %if.end13.parse_dest_dev.exit_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.27, %if.then5.i ], [ @.str.26, %if.end13.parse_dest_dev.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then5.i ], [ %call1.i536, %if.end13.parse_dest_dev.exit_crit_edge ]
  %29 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.str.27.sink.i, ptr %error9, align 4
  br label %out_with_meta_dev

if.end18:                                         ; preds = %if.end.i540
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %call.i541 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #11
  %source_dev.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 3
  %call1.i542 = call i32 @dm_get_device(ptr noundef %31, ptr noundef %call.i541, i32 noundef 1, ptr noundef %source_dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i542)
  %tobool.not.i543 = icmp eq i32 %call1.i542, 0
  br i1 %tobool.not.i543, label %if.end.i547, label %if.end18.parse_source_dev.exit_crit_edge

if.end18.parse_source_dev.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_source_dev.exit

if.end.i547:                                      ; preds = %if.end18
  %32 = ptrtoint ptr %source_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %source_dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %bd_nr_sectors.i.i.i544 = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bd_nr_sectors.i.i.i544 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bd_nr_sectors.i.i.i544, align 8
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %len.i545 = getelementptr inbounds %struct.dm_target, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %len.i545 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %len.i545, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %41)
  %cmp.i546 = icmp ult i64 %37, %41
  br i1 %cmp.i546, label %if.then5.i548, label %if.end23

if.then5.i548:                                    ; preds = %if.end.i547
  call void @__sanitizer_cov_trace_pc() #13
  call void @dm_put_device(ptr noundef %39, ptr noundef %33) #11
  br label %parse_source_dev.exit

parse_source_dev.exit:                            ; preds = %if.then5.i548, %if.end18.parse_source_dev.exit_crit_edge
  %.str.29.sink.i = phi ptr [ @.str.29, %if.then5.i548 ], [ @.str.28, %if.end18.parse_source_dev.exit_crit_edge ]
  %retval.0.ph.i549 = phi i32 [ -22, %if.then5.i548 ], [ %call1.i542, %if.end18.parse_source_dev.exit_crit_edge ]
  %42 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.str.29.sink.i, ptr %error9, align 4
  br label %out_with_dest_dev

if.end23:                                         ; preds = %if.end.i547
  %call25 = call fastcc i32 @parse_region_size(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %as, ptr noundef %error9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.out_with_source_dev_crit_edge

if.end23.out_with_source_dev_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_with_source_dev

if.end28:                                         ; preds = %if.end23
  %region_size = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %region_size, align 8
  %conv = trunc i64 %44 to i32
  %45 = call i32 @llvm.cttz.i32(i32 %conv, i1 false) #11, !range !232
  %region_shift = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %region_shift to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %region_shift, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %len, align 8
  %add = add i64 %44, -1
  %sub = add i64 %add, %48
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp205 = icmp ult i64 %sub, 4294967296
  br i1 %cmp205, label %if.end219.thread, label %if.else215, !prof !233

if.end219.thread:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %conv210 = trunc i64 %sub to i32
  %div213 = udiv i32 %conv210, %conv
  br label %if.end228

if.else215:                                       ; preds = %if.end28
  %49 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %sub) #16, !srcloc !234
  %asmresult1.i = extractvalue { i64, i64 } %49, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %asmresult1.i)
  %50 = icmp ult i64 %asmresult1.i, 4294967296
  %extract.t579 = trunc i64 %asmresult1.i to i32
  br i1 %50, label %if.else215.if.end228_crit_edge, label %if.then226

if.else215.if.end228_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then226:                                       ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.3, ptr %error9, align 8
  br label %out_with_source_dev

if.end228:                                        ; preds = %if.else215.if.end228_crit_edge, %if.end219.thread
  %_r.0576.off0 = phi i32 [ %div213, %if.end219.thread ], [ %extract.t579, %if.else215.if.end228_crit_edge ]
  %nr_regions230 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %nr_regions230 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %_r.0576.off0, ptr %nr_regions230, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %_r.0576.off0)
  %cmp.i553 = icmp ugt i32 %_r.0576.off0, -2147483648
  br i1 %cmp.i553, label %validate_nr_regions.exit, label %if.end236

validate_nr_regions.exit:                         ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.3, ptr %error9, align 4
  br label %out_with_source_dev

if.end236:                                        ; preds = %if.end228
  %54 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %region_size, align 8
  %call238 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end242, label %if.then240

if.then240:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.4, ptr %error9, align 8
  br label %out_with_source_dev

if.end242:                                        ; preds = %if.end236
  %call243 = call fastcc i32 @parse_feature_args(ptr noundef nonnull %as, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end246, label %if.end242.out_with_source_dev_crit_edge

if.end242.out_with_source_dev_crit_edge:          ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_with_source_dev

if.end246:                                        ; preds = %if.end242
  %call247 = call fastcc i32 @parse_core_args(ptr noundef nonnull %as, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %if.end246.out_with_source_dev_crit_edge

if.end246.out_with_source_dev_crit_edge:          ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_with_source_dev

if.end250:                                        ; preds = %if.end246
  %57 = ptrtoint ptr %metadata_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %metadata_dev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %len, align 8
  %63 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %region_size, align 8
  %call253 = call ptr @dm_clone_metadata_open(ptr noundef %60, i64 noundef %62, i64 noundef %64) #11
  %cmd = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 8
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call253, ptr %cmd, align 8
  %cmp.i556 = icmp ugt ptr %call253, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i556, label %if.then256, label %if.end260

if.then256:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.5, ptr %error9, align 8
  %67 = ptrtoint ptr %call253 to i32
  br label %out_with_source_dev

if.end260:                                        ; preds = %if.end250
  call fastcc void @__set_clone_mode(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  %mode.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 29
  %68 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp262.not = icmp eq i32 %69, 0
  br i1 %cmp262.not, label %if.end266, label %if.then264

if.then264:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.6, ptr %error9, align 8
  br label %out_with_metadata

if.end266:                                        ; preds = %if.end260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %last_commit_jiffies = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 13
  %72 = ptrtoint ptr %last_commit_jiffies to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %last_commit_jiffies, align 8
  %call267 = call fastcc i32 @hash_table_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end271, label %if.then269

if.then269:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.7, ptr %error9, align 8
  br label %out_with_metadata

if.end271:                                        ; preds = %if.end266
  %ios_in_flight = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_flight, i32 noundef 4) #11
  %74 = ptrtoint ptr %ios_in_flight to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %ios_in_flight, align 8
  %hydration_stopped = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %hydration_stopped, ptr noundef nonnull @.str.8, ptr noundef nonnull @clone_ctr.__key) #11
  %lock = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @clone_ctr.__key.9, i16 noundef signext 3) #11
  %deferred_bios = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 15
  %hydration_offset = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 21
  %75 = ptrtoint ptr %hydration_offset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hydration_offset, align 8
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 22
  %76 = call ptr @memset(ptr %deferred_bios, i32 0, i32 32)
  %call.i.i534 = call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  %77 = ptrtoint ptr %hydrations_in_flight to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 0, ptr %hydrations_in_flight, align 4
  %call276 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef 0) #11
  %wq = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 25
  %78 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call276, ptr %wq, align 8
  %tobool278.not = icmp eq ptr %call276, null
  br i1 %tobool278.not, label %if.then279, label %do.body282

if.then279:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.12, ptr %error9, align 8
  br label %out_with_ht

do.body282:                                       ; preds = %if.end271
  %worker = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 26
  call void @__init_work(ptr noundef %worker, i32 noundef 0) #11
  %80 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 26, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @clone_ctr.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry286 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 26, i32 1
  %81 = ptrtoint ptr %entry286 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry286, ptr %entry286, align 8
  %prev.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 26, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry286, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 26, i32 2
  %83 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @do_worker, ptr %func, align 8
  %waker = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27
  call void @__init_work(ptr noundef %waker, i32 noundef 0) #11
  %84 = ptrtoint ptr %waker to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -64, ptr %waker, align 8
  %lockdep_map299 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map299, ptr noundef nonnull @.str.16, ptr noundef nonnull @clone_ctr.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry302 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 1
  %85 = ptrtoint ptr %entry302 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %entry302, ptr %entry302, align 4
  %prev.i560 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i560 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %entry302, ptr %prev.i560, align 8
  %func305 = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27, i32 0, i32 2
  %87 = ptrtoint ptr %func305 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @do_waker, ptr %func305, align 4
  %timer = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 27, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @clone_ctr.__key.17) #11
  %call314 = call ptr @dm_kcopyd_client_create(ptr noundef nonnull @dm_kcopyd_throttle) #11
  %kcopyd_client = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 28
  %88 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call314, ptr %kcopyd_client, align 4
  %cmp.i561 = icmp ugt ptr %call314, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i561, label %if.then317, label %if.end320

if.then317:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %call314 to i32
  br label %out_with_wq

if.end320:                                        ; preds = %do.body282
  %hydration_pool = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 12
  %90 = load ptr, ptr @_hydration_cache, align 4
  %call.i562 = call i32 @mempool_init(ptr noundef %hydration_pool, i32 noundef 256, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i562)
  %tobool322.not = icmp eq i32 %call.i562, 0
  br i1 %tobool322.not, label %if.end325, label %if.then323

if.then323:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.19, ptr %error9, align 8
  br label %out_with_kcopyd

if.end325:                                        ; preds = %if.end320
  %sub326 = add i32 %argc, -3
  %add.ptr = getelementptr ptr, ptr %argv, i32 3
  %call328 = call fastcc i32 @copy_ctr_args(ptr noundef nonnull %call7.i.i, i32 noundef %sub326, ptr noundef %add.ptr, ptr noundef %error9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %do.body332, label %out_with_mempool

do.body332:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  %commit_lock = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %commit_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @clone_ctr.__key.20) #11
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %92 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %num_flush_bios, align 4
  %flush_supported = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %93 = ptrtoint ptr %flush_supported to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load = load i8, ptr %flush_supported, align 4
  %bf.set337 = or i8 %bf.load, -64
  store i8 %bf.set337, ptr %flush_supported, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %94 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %num_discard_bios, align 8
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %95 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

out_with_mempool:                                 ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  call void @mempool_exit(ptr noundef %hydration_pool) #11
  br label %out_with_kcopyd

out_with_kcopyd:                                  ; preds = %out_with_mempool, %if.then323
  %r.0 = phi i32 [ %call.i562, %if.then323 ], [ %call328, %out_with_mempool ]
  %96 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %kcopyd_client, align 4
  call void @dm_kcopyd_client_destroy(ptr noundef %97) #11
  br label %out_with_wq

out_with_wq:                                      ; preds = %out_with_kcopyd, %if.then317
  %r.1 = phi i32 [ %89, %if.then317 ], [ %r.0, %out_with_kcopyd ]
  %98 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wq, align 8
  call void @destroy_workqueue(ptr noundef %99) #11
  br label %out_with_ht

out_with_ht:                                      ; preds = %out_with_wq, %if.then279
  %r.2 = phi i32 [ %r.1, %out_with_wq ], [ -12, %if.then279 ]
  %ht.i = getelementptr inbounds %struct.clone, ptr %call7.i.i, i32 0, i32 9
  %100 = ptrtoint ptr %ht.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ht.i, align 4
  call void @kvfree(ptr noundef %101) #11
  br label %out_with_metadata

out_with_metadata:                                ; preds = %out_with_ht, %if.then269, %if.then264
  %r.3 = phi i32 [ -1, %if.then264 ], [ %call267, %if.then269 ], [ %r.2, %out_with_ht ]
  %102 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cmd, align 8
  call void @dm_clone_metadata_close(ptr noundef %103) #11
  br label %out_with_source_dev

out_with_source_dev:                              ; preds = %out_with_metadata, %if.then256, %if.end246.out_with_source_dev_crit_edge, %if.end242.out_with_source_dev_crit_edge, %if.then240, %validate_nr_regions.exit, %if.then226, %if.end23.out_with_source_dev_crit_edge
  %r.4 = phi i32 [ %call25, %if.end23.out_with_source_dev_crit_edge ], [ -75, %if.then226 ], [ -22, %validate_nr_regions.exit ], [ %call238, %if.then240 ], [ %call243, %if.end242.out_with_source_dev_crit_edge ], [ %call247, %if.end246.out_with_source_dev_crit_edge ], [ %67, %if.then256 ], [ %r.3, %out_with_metadata ]
  %104 = ptrtoint ptr %source_dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %source_dev.i, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %105) #11
  br label %out_with_dest_dev

out_with_dest_dev:                                ; preds = %out_with_source_dev, %parse_source_dev.exit
  %r.5 = phi i32 [ %retval.0.ph.i549, %parse_source_dev.exit ], [ %r.4, %out_with_source_dev ]
  %106 = ptrtoint ptr %dest_dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dest_dev.i, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %107) #11
  br label %out_with_meta_dev

out_with_meta_dev:                                ; preds = %out_with_dest_dev, %parse_dest_dev.exit
  %r.6 = phi i32 [ %retval.0.ph.i, %parse_dest_dev.exit ], [ %r.5, %out_with_dest_dev ]
  %108 = ptrtoint ptr %metadata_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %metadata_dev.i, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %109) #11
  br label %out_with_clone

out_with_clone:                                   ; preds = %out_with_meta_dev, %parse_metadata_dev.exit
  %r.7 = phi i32 [ %call1.i, %parse_metadata_dev.exit ], [ %r.6, %out_with_meta_dev ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_with_clone, %do.body332, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %r.7, %out_with_clone ], [ 0, %do.body332 ], [ -12, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %commit_lock = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %commit_lock) #11
  %nr_ctr_args = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_ctr_args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ctr_args = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %ctr_args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctr_args, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #11
  %inc = add nuw i32 %i.020, 1
  %8 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_ctr_args, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ctr_args1 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %ctr_args1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctr_args1, align 4
  tail call void @kfree(ptr noundef %11) #11
  %hydration_pool = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 12
  tail call void @mempool_exit(ptr noundef %hydration_pool) #11
  %kcopyd_client = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kcopyd_client, align 4
  tail call void @dm_kcopyd_client_destroy(ptr noundef %13) #11
  %wq = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %15) #11
  %ht.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %ht.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ht.i, align 4
  tail call void @kvfree(ptr noundef %17) #11
  %cmd = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 8
  tail call void @dm_clone_metadata_close(ptr noundef %19) #11
  %source_dev = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %source_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %source_dev, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %21) #11
  %dest_dev = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dest_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dest_dev, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %23) #11
  %metadata_dev = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %metadata_dev, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %25) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clone_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ios_in_flight = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_flight, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ios_in_flight, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_in_flight, ptr %ios_in_flight, i32 1, ptr elementtype(i32) %ios_in_flight) #11, !srcloc !235
  %mode.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !236

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %dest_dev.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dest_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_dev.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %12 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %13, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %14 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %15, %11
  br i1 %cmp.not.i.i.i, label %if.then3.remap_and_issue.exit_crit_edge, label %if.then.i.i.i

if.then3.remap_and_issue.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %remap_and_issue.exit

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i.i = and i16 %13, -2177
  %16 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %remap_and_issue.exit

remap_and_issue.exit:                             ; preds = %if.then.i.i.i, %if.then3.remap_and_issue.exit_crit_edge
  %17 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  tail call fastcc void @issue_bio(ptr noundef %1, ptr noundef %bio) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %18 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %20 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %begin, align 8
  %sub = sub i64 %19, %21
  store i64 %sub, ptr %bi_iter, align 8
  %and8 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 3
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  %region_size.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %region_size.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %region_size.i.i, align 8
  %add.i.i = add i64 %sub, -1
  %sub.i.i = add i64 %add.i.i, %23
  %conv.i.i = trunc i64 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp169.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !233

if.then173.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i = trunc i64 %sub.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %conv.i.i
  br label %bio_region_range.exit.i

if.else179.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i, i64 %sub.i.i) #16, !srcloc !234
  %asmresult1.i.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t315.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %bio_region_range.exit.i

bio_region_range.exit.i:                          ; preds = %if.else179.i.i, %if.then173.i.i
  %_r.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t315.i.i, %if.else179.i.i ]
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_size.i.i, align 8
  %shr190.i.i = lshr i32 %26, 9
  %conv191.i.i = zext i32 %shr190.i.i to i64
  %add192.i.i = add i64 %sub, %conv191.i.i
  %region_shift.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %region_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %region_shift.i.i, align 8
  %sh_prom193.i.i = zext i32 %28 to i64
  %shr194.i.i = lshr i64 %add192.i.i, %sh_prom193.i.i
  %conv195.i.i = trunc i64 %shr194.i.i to i32
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %conv195.i.i, i32 %_r.0.off0.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %_r.0.off0.i.i, i32 %conv195.i.i)
  %tobool.not.not.i = icmp ult i32 %_r.0.off0.i.i, %conv195.i.i
  br i1 %tobool.not.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %bio_region_range.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %cleanup

if.end.i:                                         ; preds = %bio_region_range.exit.i
  %nr_regions1.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %nr_regions1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_regions1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %_r.0.off0.i.i, i32 %31)
  %cmp.not.i = icmp ult i32 %_r.0.off0.i.i, %31
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %add.i = add i32 %29, %_r.0.off0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %_r.0.off0.i.i)
  %cmp2.i = icmp ult i32 %add.i, %_r.0.off0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp5.i = icmp ugt i32 %add.i, %31
  %spec.select.i = select i1 %cmp2.i, i1 true, i1 %cmp5.i
  br i1 %spec.select.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end36.i, !prof !236

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 485, i32 noundef 9, ptr noundef null) #11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %call.i.i48 = tail call ptr @dm_table_device_name(ptr noundef %35) #11
  %36 = ptrtoint ptr %nr_regions1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_regions1.i, align 8
  %38 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %bi_iter, align 8
  %40 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_size.i.i, align 8
  %shr.i = lshr i32 %41, 9
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %call.i.i48, i32 noundef %_r.0.off0.i.i, i32 noundef %29, i32 noundef %37, i64 noundef %39, i32 noundef %shr.i) #14
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %cleanup

if.end36.i:                                       ; preds = %lor.lhs.false.i
  %cmd.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd.i, align 8
  %call37.i = tail call zeroext i1 @dm_clone_is_range_hydrated(ptr noundef %43, i32 noundef %_r.0.off0.i.i, i32 noundef %29) #11
  br i1 %call37.i, label %if.then38.i, label %if.end39.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @complete_discard_bio(ptr noundef %1, ptr noundef %bio, i1 noundef zeroext true) #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.end36.i
  %44 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp41.not.i = icmp eq i32 %45, 0
  br i1 %cmp41.not.i, label %if.end49.i, label %if.then48.i, !prof !233

if.then48.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %cleanup

if.end49.i:                                       ; preds = %if.end39.i
  %lock.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %46 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 16, i32 1
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i73.i = icmp eq ptr %48, null
  br i1 %tobool.not.i73.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bio, ptr %48, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_discard_bios.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %deferred_discard_bios.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %bio, ptr %deferred_discard_bios.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bio, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %wq.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %52 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wq.i.i, align 8
  %worker.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %worker.i.i) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %region_shift.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %region_shift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %region_shift.i, align 8
  %sh_prom.i = zext i32 %55 to i64
  %shr.i49 = lshr i64 %sub, %sh_prom.i
  %conv.i = trunc i64 %shr.i49 to i32
  %cmd = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd, align 8
  %call14 = tail call zeroext i1 @dm_clone_is_region_hydrated(ptr noundef %57, i32 noundef %conv.i) #11
  br i1 %call14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %dest_dev.i.i50 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %dest_dev.i.i50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dest_dev.i.i50, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %bi_flags.i.i.i.i51 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %62 = ptrtoint ptr %bi_flags.i.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bi_flags.i.i.i.i51, align 4
  %conv1.i.i.i.i52 = and i16 %63, -2049
  store i16 %conv1.i.i.i.i52, ptr %bi_flags.i.i.i.i51, align 4
  %bi_bdev.i.i.i53 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %64 = ptrtoint ptr %bi_bdev.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bi_bdev.i.i.i53, align 4
  %cmp.not.i.i.i54 = icmp eq ptr %65, %61
  br i1 %cmp.not.i.i.i54, label %if.then15.remap_and_issue.exit57_crit_edge, label %if.then.i.i.i56

if.then15.remap_and_issue.exit57_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %remap_and_issue.exit57

if.then.i.i.i56:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i.i55 = and i16 %63, -2177
  %66 = ptrtoint ptr %bi_flags.i.i.i.i51 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv1.i8.i.i.i55, ptr %bi_flags.i.i.i.i51, align 4
  br label %remap_and_issue.exit57

remap_and_issue.exit57:                           ; preds = %if.then.i.i.i56, %if.then15.remap_and_issue.exit57_crit_edge
  %67 = ptrtoint ptr %bi_bdev.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %61, ptr %bi_bdev.i.i.i53, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  tail call fastcc void @issue_bio(ptr noundef %1, ptr noundef %bio) #11
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %68 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else
  %source_dev.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %source_dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %source_dev.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %74 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %75, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %76 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %77, %73
  br i1 %cmp.not.i.i, label %if.then22.remap_to_source.exit_crit_edge, label %if.then.i.i58

if.then22.remap_to_source.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %remap_to_source.exit

if.then.i.i58:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = and i16 %75, -2177
  %78 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_to_source.exit

remap_to_source.exit:                             ; preds = %if.then.i.i58, %if.then22.remap_to_source.exit_crit_edge
  %79 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %73, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %dest_dev.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %dest_dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dest_dev.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %bi_flags.i.i.i59 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %84 = ptrtoint ptr %bi_flags.i.i.i59 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %bi_flags.i.i.i59, align 4
  %conv1.i.i.i60 = and i16 %85, -2049
  store i16 %conv1.i.i.i60, ptr %bi_flags.i.i.i59, align 4
  %bi_bdev.i.i61 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %86 = ptrtoint ptr %bi_bdev.i.i61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bi_bdev.i.i61, align 4
  %cmp.not.i.i62 = icmp eq ptr %87, %83
  br i1 %cmp.not.i.i62, label %if.end24.remap_to_dest.exit_crit_edge, label %if.then.i.i64

if.end24.remap_to_dest.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %remap_to_dest.exit

if.then.i.i64:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i63 = and i16 %85, -2177
  %88 = ptrtoint ptr %bi_flags.i.i.i59 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv1.i8.i.i63, ptr %bi_flags.i.i.i59, align 4
  br label %remap_to_dest.exit

remap_to_dest.exit:                               ; preds = %if.then.i.i64, %if.end24.remap_to_dest.exit_crit_edge
  %89 = ptrtoint ptr %bi_bdev.i.i61 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %83, ptr %bi_bdev.i.i61, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  %90 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %bi_iter, align 8
  %92 = ptrtoint ptr %region_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %region_shift.i, align 8
  %sh_prom.i.i67 = zext i32 %93 to i64
  %shr.i.i68 = lshr i64 %91, %sh_prom.i.i67
  %conv.i.i69 = trunc i64 %shr.i.i68 to i32
  %ht.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %ht.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ht.i.i, align 4
  %mul.i.i.i.i = mul i32 %conv.i.i69, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 17
  %arrayidx.i.i = getelementptr %struct.hash_table_bucket, ptr %95, i32 %shr.i.i.i
  %lock.i70 = getelementptr %struct.hash_table_bucket, ptr %95, i32 %shr.i.i.i, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i70) #11
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i71 = icmp eq ptr %97, null
  %add.ptr.i.i = getelementptr i8, ptr %97, i32 -36
  %tobool2.not2326.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not23.i.i = or i1 %tobool.not.i.i71, %tobool2.not2326.i.i
  br i1 %tobool2.not23.i.i, label %remap_to_dest.exit.if.end.i79_crit_edge, label %remap_to_dest.exit.for.body.i.i_crit_edge

remap_to_dest.exit.for.body.i.i_crit_edge:        ; preds = %remap_to_dest.exit
  br label %for.body.i.i

remap_to_dest.exit.if.end.i79_crit_edge:          ; preds = %remap_to_dest.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i79

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %remap_to_dest.exit.for.body.i.i_crit_edge
  %hd.024.i.i = phi ptr [ %add.ptr10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %remap_to_dest.exit.for.body.i.i_crit_edge ]
  %region_nr3.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %region_nr3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %region_nr3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %conv.i.i69)
  %cmp.i.i72 = icmp eq i32 %99, %conv.i.i69
  br i1 %cmp.i.i72, label %if.then.i74, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %h.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i, i32 0, i32 7
  %100 = ptrtoint ptr %h.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %h.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %101, null
  %add.ptr10.i.i = getelementptr i8, ptr %101, i32 -36
  %tobool2.not27.i.i = icmp eq ptr %add.ptr10.i.i, null
  %tobool2.not.i.i = or i1 %tobool6.not.i.i, %tobool2.not27.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.if.end.i79_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end.i79_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i79

if.then.i74:                                      ; preds = %for.body.i.i
  %102 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %bio, align 8
  %tail.i.i73 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %tail.i.i73 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i.i73, align 4
  %tobool.not.i80.i = icmp eq ptr %104, null
  br i1 %tobool.not.i80.i, label %if.else.i.i76, label %if.then.i.i75

if.then.i.i75:                                    ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %bio, ptr %104, align 8
  br label %bio_list_add.exit.i77

if.else.i.i76:                                    ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_bios.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %bio, ptr %deferred_bios.i, align 4
  br label %bio_list_add.exit.i77

bio_list_add.exit.i77:                            ; preds = %if.else.i.i76, %if.then.i.i75
  %107 = ptrtoint ptr %tail.i.i73 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %bio, ptr %tail.i.i73, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  br label %cleanup

if.end.i79:                                       ; preds = %for.inc.i.i.if.end.i79_crit_edge, %remap_to_dest.exit.if.end.i79_crit_edge
  %108 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cmd, align 8
  %call4.i = tail call zeroext i1 @dm_clone_is_region_hydrated(ptr noundef %109, i32 noundef %conv.i.i69) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  br i1 %call4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @issue_bio(ptr noundef %1, ptr noundef %bio) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i79
  %hydration_pool.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 12
  %call.i.i80 = tail call noalias ptr @mempool_alloc(ptr noundef %hydration_pool.i.i, i32 noundef 3072) #11
  %110 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %1, ptr %call.i.i80, align 4
  %region_nr1.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 1
  %111 = ptrtoint ptr %region_nr1.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv.i.i69, ptr %region_nr1.i.i, align 4
  %overwrite_bio.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 2
  %112 = ptrtoint ptr %overwrite_bio.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %overwrite_bio.i.i, align 4
  %deferred_bios.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 4
  %tail.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %tail.i.i.i, align 4
  %114 = ptrtoint ptr %deferred_bios.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %deferred_bios.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 5
  %115 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %status.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 6
  %116 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %h.i81.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 7
  %118 = ptrtoint ptr %h.i81.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %h.i81.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i80, i32 0, i32 7, i32 1
  %119 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %pprev.i.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i70) #11
  %120 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cmd, align 8
  %call12.i = tail call zeroext i1 @dm_clone_is_region_hydrated(ptr noundef %121, i32 noundef %conv.i.i69) #11
  br i1 %call12.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  %122 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i.i80, align 4
  %hydration_pool.i82.i = getelementptr inbounds %struct.clone, ptr %123, i32 0, i32 12
  tail call void @mempool_free(ptr noundef %call.i.i80, ptr noundef %hydration_pool.i82.i) #11
  tail call fastcc void @issue_bio(ptr noundef %1, ptr noundef %bio) #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end7.i
  %124 = ptrtoint ptr %region_nr1.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %region_nr1.i.i, align 4
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %127, null
  %add.ptr.i.i.i = getelementptr i8, ptr %127, i32 -36
  %tobool2.not2326.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not23.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2326.i.i.i
  br i1 %tobool2.not23.i.i.i, label %if.end15.i.if.end.i.i_crit_edge, label %if.end15.i.for.body.i.i.i_crit_edge

if.end15.i.for.body.i.i.i_crit_edge:              ; preds = %if.end15.i
  br label %for.body.i.i.i

if.end15.i.if.end.i.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end15.i.for.body.i.i.i_crit_edge
  %hd.024.i.i.i = phi ptr [ %add.ptr10.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end15.i.for.body.i.i.i_crit_edge ]
  %region_nr3.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %region_nr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %region_nr3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %125)
  %cmp.i.i.i = icmp eq i32 %129, %125
  br i1 %cmp.i.i.i, label %__find_or_insert_region_hydration.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %h.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %h.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %131, null
  %add.ptr10.i.i.i = getelementptr i8, ptr %131, i32 -36
  %tobool2.not27.i.i.i = icmp eq ptr %add.ptr10.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool6.not.i.i.i, %tobool2.not27.i.i.i
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i.if.end.i.i_crit_edge, %if.end15.i.if.end.i.i_crit_edge
  %132 = ptrtoint ptr %h.i81.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %127, ptr %h.i81.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__find_or_insert_region_hydration.exit.thread.i_crit_edge, label %do.body12.i.i.i.i

if.end.i.i.__find_or_insert_region_hydration.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__find_or_insert_region_hydration.exit.thread.i

do.body12.i.i.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %127, i32 0, i32 1
  %133 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %h.i81.i, ptr %pprev.i.i.i.i, align 4
  br label %__find_or_insert_region_hydration.exit.thread.i

__find_or_insert_region_hydration.exit.thread.i:  ; preds = %do.body12.i.i.i.i, %if.end.i.i.__find_or_insert_region_hydration.exit.thread.i_crit_edge
  %134 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %h.i81.i, ptr %arrayidx.i.i, align 4
  %135 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i, align 4
  br label %if.end20.i

__find_or_insert_region_hydration.exit.i:         ; preds = %for.body.i.i.i
  %cmp.not.i81 = icmp eq ptr %hd.024.i.i.i, %call.i.i80
  br i1 %cmp.not.i81, label %__find_or_insert_region_hydration.exit.i.if.end20.i_crit_edge, label %if.then17.i

__find_or_insert_region_hydration.exit.i.if.end20.i_crit_edge: ; preds = %__find_or_insert_region_hydration.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then17.i:                                      ; preds = %__find_or_insert_region_hydration.exit.i
  %136 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %bio, align 8
  %tail.i83.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %tail.i83.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tail.i83.i, align 4
  %tobool.not.i84.i = icmp eq ptr %138, null
  br i1 %tobool.not.i84.i, label %if.else.i86.i, label %if.then.i85.i

if.then.i85.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %bio, ptr %138, align 8
  br label %bio_list_add.exit88.i

if.else.i86.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_bios18.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %deferred_bios18.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %bio, ptr %deferred_bios18.i, align 4
  br label %bio_list_add.exit88.i

bio_list_add.exit88.i:                            ; preds = %if.else.i86.i, %if.then.i85.i
  %141 = ptrtoint ptr %tail.i83.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %bio, ptr %tail.i83.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  %142 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call.i.i80, align 4
  %hydration_pool.i89.i = getelementptr inbounds %struct.clone, ptr %143, i32 0, i32 12
  tail call void @mempool_free(ptr noundef %call.i.i80, ptr noundef %hydration_pool.i89.i) #11
  br label %cleanup

if.end20.i:                                       ; preds = %__find_or_insert_region_hydration.exit.i.if.end20.i_crit_edge, %__find_or_insert_region_hydration.exit.thread.i
  %144 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp22.not.i = icmp eq i32 %145, 0
  br i1 %cmp22.not.i, label %if.end27.i, label %if.then25.i, !prof !233

if.then25.i:                                      ; preds = %if.end20.i
  %146 = ptrtoint ptr %h.i81.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %h.i81.i, align 4
  %148 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pprev.i.i.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %147, ptr %149, align 4
  %tobool.not.i.i90.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i90.i, label %if.then25.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.then25.i.hlist_del.exit.i_crit_edge:           ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %147, i32 0, i32 1
  %151 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %149, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.then25.i.hlist_del.exit.i_crit_edge
  %152 = ptrtoint ptr %h.i81.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 256 to ptr), ptr %h.i81.i, align 4
  %153 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  %154 = ptrtoint ptr %call.i.i80 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i.i80, align 4
  %hydration_pool.i91.i = getelementptr inbounds %struct.clone, ptr %155, i32 0, i32 12
  tail call void @mempool_free(ptr noundef %call.i.i80, ptr noundef %hydration_pool.i91.i) #11
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %156 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %cleanup

if.end27.i:                                       ; preds = %if.end20.i
  %157 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bi_opf, align 8
  %and.i.i.i83 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i83)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i83, 0
  br i1 %tobool.i.not.i.i, label %if.end27.i.if.else.i_crit_edge, label %is_overwrite_bio.exit.i

if.end27.i.if.else.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

is_overwrite_bio.exit.i:                          ; preds = %if.end27.i
  %bi_size.i.i84 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %159 = ptrtoint ptr %bi_size.i.i84 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bi_size.i.i84, align 8
  %shr.i92.i = lshr i32 %160, 9
  %conv.i93.i = zext i32 %shr.i92.i to i64
  %region_size.i.i85 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 5
  %161 = ptrtoint ptr %region_size.i.i85 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %region_size.i.i85, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %162, i64 %conv.i93.i)
  %cmp1.i.i = icmp eq i64 %162, %conv.i93.i
  br i1 %cmp1.i.i, label %if.then29.i, label %is_overwrite_bio.exit.i.if.else.i_crit_edge

is_overwrite_bio.exit.i.if.else.i_crit_edge:      ; preds = %is_overwrite_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then29.i:                                      ; preds = %is_overwrite_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  tail call fastcc void @hydration_overwrite(ptr noundef %call.i.i80, ptr noundef %bio) #11
  br label %cleanup

if.else.i:                                        ; preds = %is_overwrite_bio.exit.i.if.else.i_crit_edge, %if.end27.i.if.else.i_crit_edge
  %163 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %bio, align 8
  %164 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tail.i.i.i, align 4
  %tobool.not.i95.i = icmp eq ptr %165, null
  br i1 %tobool.not.i95.i, label %if.else.i97.i, label %if.then.i96.i

if.then.i96.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %bio, ptr %165, align 8
  br label %bio_list_add.exit99.i

if.else.i97.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %deferred_bios.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %bio, ptr %deferred_bios.i.i, align 4
  br label %bio_list_add.exit99.i

bio_list_add.exit99.i:                            ; preds = %if.else.i97.i, %if.then.i96.i
  %168 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %bio, ptr %tail.i.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i70) #11
  tail call fastcc void @hydration_copy(ptr noundef %call.i.i80, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %bio_list_add.exit99.i, %if.then29.i, %hlist_del.exit.i, %bio_list_add.exit88.i, %if.then13.i, %if.then5.i, %bio_list_add.exit.i77, %remap_to_source.exit, %remap_and_issue.exit57, %bio_list_add.exit.i, %if.then48.i, %if.then38.i, %do.end.i, %if.then.i, %remap_and_issue.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %remap_and_issue.exit ], [ 0, %remap_and_issue.exit57 ], [ 1, %remap_to_source.exit ], [ 4, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end.i ], [ 0, %if.then38.i ], [ 0, %if.then48.i ], [ 0, %bio_list_add.exit.i ], [ 0, %bio_list_add.exit.i77 ], [ 0, %if.then5.i ], [ 0, %if.then13.i ], [ 0, %bio_list_add.exit88.i ], [ 0, %hlist_del.exit.i ], [ 0, %if.then29.i ], [ 0, %bio_list_add.exit99.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clone_endio(ptr nocapture noundef readonly %ti, ptr nocapture noundef readnone %bio, ptr nocapture noundef readnone %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ios_in_flight = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_flight, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ios_in_flight, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_in_flight, ptr %ios_in_flight, i32 1, ptr elementtype(i32) %ios_in_flight) #11, !srcloc !237
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %waker = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 27
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %waker) #11
  %flags = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !238
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 2006) #11
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  %2 = ptrtoint ptr %hydrations_in_flight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hydrations_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %if.end

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %hydration_stopped = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 11
  %call1232 = call i32 @prepare_to_wait_event(ptr noundef %hydration_stopped, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call.i.i2933 = call zeroext i1 @__kasan_check_read(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  %5 = ptrtoint ptr %hydrations_in_flight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %hydrations_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not34 = icmp eq i32 %6, 0
  br i1 %tobool15.not34, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %hydration_stopped, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call.i.i29 = call zeroext i1 @__kasan_check_read(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  %7 = ptrtoint ptr %hydrations_in_flight to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %hydrations_in_flight, align 4
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %hydration_stopped, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end20

do.end20:                                         ; preds = %for.end, %entry.do.end20_crit_edge
  %wq = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 8
  call void @flush_workqueue(ptr noundef %10) #11
  %call21 = call fastcc i32 @commit_metadata(ptr noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %flags = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  %waker = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 27
  %wq.i.i = getelementptr %struct.clone, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq.i.i, align 8
  %worker.i.i = getelementptr %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %worker.i.i) #11
  %4 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq.i.i, align 8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %waker, i32 noundef 100) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_status(ptr noundef %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %nr_free_metadata_blocks = alloca i64, align 8
  %nr_metadata_blocks = alloca i64, align 8
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_free_metadata_blocks) #11
  %0 = ptrtoint ptr %nr_free_metadata_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %nr_free_metadata_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_metadata_blocks) #11
  %1 = ptrtoint ptr %nr_metadata_blocks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %nr_metadata_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb69
    i32 2, label %sw.bb139
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mode.i = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 29
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp1.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp1.not.not, label %if.then.cleanup_crit_edge, label %cond.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %and = and i32 %status_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @dm_suspended(ptr noundef %ti) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call fastcc i32 @commit_metadata(ptr noundef %4, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %cmd = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 8
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 8
  %call8 = call i32 @dm_clone_get_free_metadata_block_count(ptr noundef %9, ptr noundef nonnull %nr_free_metadata_blocks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call.i = call ptr @dm_table_device_name(ptr noundef %13) #11
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %call.i, i32 noundef %call8) #14
  br label %error

if.end13:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 8
  %call15 = call i32 @dm_clone_get_metadata_dev_size(ptr noundef %15, ptr noundef nonnull %nr_metadata_blocks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call.i224 = call ptr @dm_table_device_name(ptr noundef %19) #11
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %call.i224, i32 noundef %call15) #14
  br label %error

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp25.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp25.not.not, label %if.end24.cond.end35_crit_edge, label %cond.false27

if.end24.cond.end35_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end35

cond.false27:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %nr_metadata_blocks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nr_metadata_blocks, align 8
  %22 = ptrtoint ptr %nr_free_metadata_blocks to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nr_free_metadata_blocks, align 8
  %sub30 = sub i64 %21, %23
  %region_size = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 5
  %24 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %region_size, align 8
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 8
  %call32 = call i32 @dm_clone_nr_of_hydrated_regions(ptr noundef %27) #11
  %nr_regions = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 4
  %28 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_regions, align 8
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 22
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  %30 = ptrtoint ptr %hydrations_in_flight to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %hydrations_in_flight, align 4
  %call34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.76, i32 noundef 8, i64 noundef %sub30, i64 noundef %21, i64 noundef %25, i32 noundef %call32, i32 noundef %29, i32 noundef %31) #11
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false27, %if.end24.cond.end35_crit_edge
  %cond36 = phi i32 [ %call34, %cond.false27 ], [ 0, %if.end24.cond.end35_crit_edge ]
  %flags.i = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 30
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %34 = load volatile i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond36, i32 %maxlen)
  %cmp.not.i = icmp ult i32 %cond36, %maxlen
  br i1 %cmp.not.i, label %cond.false.i, label %cond.end35.cond.end.i_crit_edge

cond.end35.cond.end.i_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i58.i = and i32 %34, 1
  %35 = lshr i32 %33, 1
  %.lobit.i = and i32 %35, 1
  %36 = xor i32 %.lobit.i, 1
  %37 = xor i32 %and1.i58.i, 1
  %add.i = add nuw nsw i32 %36, %37
  %add.ptr.i = getelementptr i8, ptr %result, i32 %cond36
  %sub.i = sub i32 %maxlen, %cond36
  %call6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.84, i32 noundef %add.i) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.end35.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call6.i, %cond.false.i ], [ 0, %cond.end35.cond.end.i_crit_edge ]
  %add7.i = add i32 %cond.i, %cond36
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool10.not.i = icmp eq i32 %40, 0
  br i1 %tobool10.not.i, label %if.then.i, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %maxlen)
  %cmp11.not.i = icmp ult i32 %add7.i, %maxlen
  br i1 %cmp11.not.i, label %cond.false13.i, label %if.then.i.cond.end17.i_crit_edge

if.then.i.cond.end17.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end17.i

cond.false13.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr14.i = getelementptr i8, ptr %result, i32 %add7.i
  %sub15.i = sub i32 %maxlen, %add7.i
  %call16.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.i, i32 noundef %sub15.i, ptr noundef nonnull @.str.85) #11
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false13.i, %if.then.i.cond.end17.i_crit_edge
  %cond18.i = phi i32 [ %call16.i, %cond.false13.i ], [ 0, %if.then.i.cond.end17.i_crit_edge ]
  %add19.i = add i32 %cond18.i, %add7.i
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end17.i, %cond.end.i.if.end.i_crit_edge
  %sz.0.i = phi i32 [ %add7.i, %cond.end.i.if.end.i_crit_edge ], [ %add19.i, %cond.end17.i ]
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i, align 4
  %and1.i61.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i61.i)
  %tobool22.not.i = icmp eq i32 %and1.i61.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end.i.emit_flags.exit_crit_edge

if.end.i.emit_flags.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %emit_flags.exit

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %maxlen)
  %cmp24.not.i = icmp ult i32 %sz.0.i, %maxlen
  br i1 %cmp24.not.i, label %cond.false26.i, label %if.then23.i.cond.end30.i_crit_edge

if.then23.i.cond.end30.i_crit_edge:               ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end30.i

cond.false26.i:                                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr27.i = getelementptr i8, ptr %result, i32 %sz.0.i
  %sub28.i = sub i32 %maxlen, %sz.0.i
  %call29.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.86) #11
  br label %cond.end30.i

cond.end30.i:                                     ; preds = %cond.false26.i, %if.then23.i.cond.end30.i_crit_edge
  %cond31.i = phi i32 [ %call29.i, %cond.false26.i ], [ 0, %if.then23.i.cond.end30.i_crit_edge ]
  %add32.i = add i32 %cond31.i, %sz.0.i
  br label %emit_flags.exit

emit_flags.exit:                                  ; preds = %cond.end30.i, %if.end.i.emit_flags.exit_crit_edge
  %sz.1.i = phi i32 [ %sz.0.i, %if.end.i.emit_flags.exit_crit_edge ], [ %add32.i, %cond.end30.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.i, i32 %maxlen)
  %cmp.not.i225 = icmp ult i32 %sz.1.i, %maxlen
  br i1 %cmp.not.i225, label %cond.false.i229, label %emit_flags.exit.emit_core_args.exit_crit_edge

emit_flags.exit.emit_core_args.exit_crit_edge:    ; preds = %emit_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %emit_core_args.exit

cond.false.i229:                                  ; preds = %emit_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i226 = getelementptr i8, ptr %result, i32 %sz.1.i
  %sub.i227 = sub i32 %maxlen, %sz.1.i
  %hydration_threshold.i = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 19
  %43 = ptrtoint ptr %hydration_threshold.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %hydration_threshold.i, align 8
  %hydration_batch_size.i = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 20
  %45 = ptrtoint ptr %hydration_batch_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %hydration_batch_size.i, align 4
  %call.i228 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i226, i32 noundef %sub.i227, ptr noundef nonnull @.str.87, i32 noundef 4, i32 noundef %44, i32 noundef %46) #11
  br label %emit_core_args.exit

emit_core_args.exit:                              ; preds = %cond.false.i229, %emit_flags.exit.emit_core_args.exit_crit_edge
  %cond.i230 = phi i32 [ %call.i228, %cond.false.i229 ], [ 0, %emit_flags.exit.emit_core_args.exit_crit_edge ]
  %add.i231 = add i32 %cond.i230, %sz.1.i
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %mode.i, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %48, label %emit_core_args.exit.cleanup_crit_edge [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb49
    i32 2, label %sw.bb59
  ]

emit_core_args.exit.cleanup_crit_edge:            ; preds = %emit_core_args.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb39:                                          ; preds = %emit_core_args.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231, i32 %maxlen)
  %cmp40.not = icmp ult i32 %add.i231, %maxlen
  br i1 %cmp40.not, label %cond.false42, label %sw.bb39.cleanup_crit_edge

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false42:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr43 = getelementptr i8, ptr %result, i32 %add.i231
  %sub44 = sub i32 %maxlen, %add.i231
  %call45 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.77) #11
  br label %cleanup

sw.bb49:                                          ; preds = %emit_core_args.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231, i32 %maxlen)
  %cmp50.not = icmp ult i32 %add.i231, %maxlen
  br i1 %cmp50.not, label %cond.false52, label %sw.bb49.cleanup_crit_edge

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false52:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr53 = getelementptr i8, ptr %result, i32 %add.i231
  %sub54 = sub i32 %maxlen, %add.i231
  %call55 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.78) #11
  br label %cleanup

sw.bb59:                                          ; preds = %emit_core_args.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231, i32 %maxlen)
  %cmp60.not = icmp ult i32 %add.i231, %maxlen
  br i1 %cmp60.not, label %cond.false62, label %sw.bb59.cleanup_crit_edge

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false62:                                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63 = getelementptr i8, ptr %result, i32 %add.i231
  %sub64 = sub i32 %maxlen, %add.i231
  %call65 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.70) #11
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %metadata_dev = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 1
  %50 = ptrtoint ptr %metadata_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %metadata_dev, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %55, 20
  %and73 = and i32 %55, 1048575
  %call74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.79, i32 noundef %shr, i32 noundef %and73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp77.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp77.not.not, label %sw.bb69.cond.end84_crit_edge, label %cond.false79

sw.bb69.cond.end84_crit_edge:                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end84

cond.false79:                                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.80, ptr noundef nonnull %buf) #11
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false79, %sw.bb69.cond.end84_crit_edge
  %cond85 = phi i32 [ %call83, %cond.false79 ], [ 0, %sw.bb69.cond.end84_crit_edge ]
  %dest_dev = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 2
  %56 = ptrtoint ptr %dest_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dest_dev, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %bd_dev89 = getelementptr inbounds %struct.block_device, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %bd_dev89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bd_dev89, align 4
  %shr90 = lshr i32 %61, 20
  %and94 = and i32 %61, 1048575
  %call95 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.79, i32 noundef %shr90, i32 noundef %and94)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond85, i32 %maxlen)
  %cmp98.not = icmp ult i32 %cond85, %maxlen
  br i1 %cmp98.not, label %cond.false100, label %cond.end84.cond.end105_crit_edge

cond.end84.cond.end105_crit_edge:                 ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end105

cond.false100:                                    ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr101 = getelementptr i8, ptr %result, i32 %cond85
  %sub102 = sub i32 %maxlen, %cond85
  %call104 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.80, ptr noundef nonnull %buf) #11
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false100, %cond.end84.cond.end105_crit_edge
  %cond106 = phi i32 [ %call104, %cond.false100 ], [ 0, %cond.end84.cond.end105_crit_edge ]
  %add107 = add i32 %cond106, %cond85
  %source_dev = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 3
  %62 = ptrtoint ptr %source_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %source_dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %bd_dev110 = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %bd_dev110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bd_dev110, align 4
  %shr111 = lshr i32 %67, 20
  %and115 = and i32 %67, 1048575
  %call116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.79, i32 noundef %shr111, i32 noundef %and115)
  call void @__sanitizer_cov_trace_cmp4(i32 %add107, i32 %maxlen)
  %cmp119.not = icmp ult i32 %add107, %maxlen
  br i1 %cmp119.not, label %cond.false121, label %cond.end105.cond.end126_crit_edge

cond.end105.cond.end126_crit_edge:                ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end126

cond.false121:                                    ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr122 = getelementptr i8, ptr %result, i32 %add107
  %sub123 = sub i32 %maxlen, %add107
  %call125 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122, i32 noundef %sub123, ptr noundef nonnull @.str.81, ptr noundef nonnull %buf) #11
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false121, %cond.end105.cond.end126_crit_edge
  %cond127 = phi i32 [ %call125, %cond.false121 ], [ 0, %cond.end105.cond.end126_crit_edge ]
  %nr_ctr_args = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 23
  %68 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_ctr_args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp129255.not = icmp eq i32 %69, 0
  br i1 %cmp129255.not, label %cond.end126.cleanup_crit_edge, label %for.body.lr.ph

cond.end126.cleanup_crit_edge:                    ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %cond.end126
  %add128 = add i32 %cond127, %add107
  %ctr_args = getelementptr inbounds %struct.clone, ptr %4, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %cond.end136.for.body_crit_edge, %for.body.lr.ph
  %i.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end136.for.body_crit_edge ]
  %sz.0256 = phi i32 [ %add128, %for.body.lr.ph ], [ %add138, %cond.end136.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0256, i32 %maxlen)
  %cmp130.not = icmp ult i32 %sz.0256, %maxlen
  br i1 %cmp130.not, label %cond.false132, label %for.body.cond.end136_crit_edge

for.body.cond.end136_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end136

cond.false132:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr133 = getelementptr i8, ptr %result, i32 %sz.0256
  %sub134 = sub i32 %maxlen, %sz.0256
  %70 = ptrtoint ptr %ctr_args to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctr_args, align 4
  %arrayidx = getelementptr ptr, ptr %71, i32 %i.0257
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  %call135 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.82, ptr noundef %73) #11
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false132, %for.body.cond.end136_crit_edge
  %cond137 = phi i32 [ %call135, %cond.false132 ], [ 0, %for.body.cond.end136_crit_edge ]
  %add138 = add i32 %cond137, %sz.0256
  %inc = add nuw i32 %i.0257, 1
  %74 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_ctr_args, align 8
  %cmp129 = icmp ult i32 %inc, %75
  br i1 %cmp129, label %cond.end136.for.body_crit_edge, label %cond.end136.cleanup_crit_edge

cond.end136.cleanup_crit_edge:                    ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end136.for.body_crit_edge:                   ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.bb139:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %result, align 1
  br label %cleanup

error:                                            ; preds = %do.end20, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp141.not.not = icmp eq i32 %maxlen, 0
  br i1 %cmp141.not.not, label %error.cleanup_crit_edge, label %cond.false143

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false143:                                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %call146 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.83) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.false143, %error.cleanup_crit_edge, %sw.bb139, %cond.end136.cleanup_crit_edge, %cond.end126.cleanup_crit_edge, %cond.false62, %sw.bb59.cleanup_crit_edge, %cond.false52, %sw.bb49.cleanup_crit_edge, %cond.false42, %sw.bb39.cleanup_crit_edge, %emit_core_args.exit.cleanup_crit_edge, %cond.false, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_metadata_blocks) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_free_metadata_blocks) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clone_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef nonnull @.str.88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq.i.i, align 8
  %worker.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %worker.i.i) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef nonnull @.str.89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i46 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i46) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %call12 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef nonnull @.str.39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end10
  %arrayidx15 = getelementptr ptr, ptr %argv, i32 1
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx15, align 4
  %call16 = call i32 @kstrtouint(ptr noundef %8, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %hydration_threshold.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %hydration_threshold.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %hydration_threshold.i, align 8
  %wq.i.i47 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %wq.i.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq.i.i47, align 8
  %worker.i.i48 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i49 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %worker.i.i48) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call22 = tail call i32 @strcasecmp(ptr noundef %4, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %do.end

if.then24:                                        ; preds = %if.end20
  %arrayidx25 = getelementptr ptr, ptr %argv, i32 1
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  %call26 = call i32 @kstrtouint(ptr noundef %15, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %hydration_batch_size.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %hydration_batch_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %17, ptr %hydration_batch_size.i, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %call.i50 = tail call ptr @dm_table_device_name(ptr noundef %22) #11
  %23 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %argv, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %call.i50, ptr noundef %24) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end29, %if.then24.cleanup_crit_edge, %if.end19, %if.then14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7, %if.then.i, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end29 ], [ 0, %if.end19 ], [ 0, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clone_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dest_dev1 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dest_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dest_dev1, align 8
  %source_dev2 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %source_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %source_dev2, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %5, i64 noundef 0, i64 noundef %7, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %call4 = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %9, ptr noundef %data) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call4, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #2 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %io_opt = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 12
  %2 = ptrtoint ptr %io_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_opt, align 4
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  %region_size = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %region_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp ugt i64 %5, %conv
  %.pre = trunc i64 %5 to i32
  br i1 %cmp, label %entry.if.then188_crit_edge, label %if.end185

entry.if.then188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then188

if.end185:                                        ; preds = %entry
  %rem177 = urem i32 %shr, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem177)
  %tobool187.not = icmp eq i32 %rem177, 0
  br i1 %tobool187.not, label %if.end185.if.end195_crit_edge, label %if.end185.if.then188_crit_edge

if.end185.if.then188_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then188

if.end185.if.end195_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then188:                                       ; preds = %if.end185.if.then188_crit_edge, %entry.if.then188_crit_edge
  %conv191 = shl i32 %.pre, 9
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef %conv191) #11
  %6 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %region_size, align 8
  %.tr283 = trunc i64 %7 to i32
  %conv194 = shl i32 %.tr283, 9
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef %conv194) #11
  br label %if.end195

if.end195:                                        ; preds = %if.then188, %if.end185.if.end195_crit_edge
  %dest_dev1.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dest_dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dest_dev1.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #11
  %flags.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end195.disable_passdown_if_not_supported.exit_crit_edge, label %if.end.i

if.end195.disable_passdown_if_not_supported.exit_crit_edge: ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_passdown_if_not_supported.exit

if.end.i:                                         ; preds = %if.end195
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %bdev_supports_discards.exit.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

bdev_supports_discards.exit.i:                    ; preds = %if.end.i
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 11
  %17 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %queue_flags.i.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.i.not.i, label %bdev_supports_discards.exit.i.do.end.i_crit_edge, label %if.end8.i

bdev_supports_discards.exit.i.do.end.i_crit_edge: ; preds = %bdev_supports_discards.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end8.i:                                        ; preds = %bdev_supports_discards.exit.i
  %max_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 13
  %20 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_discard_sectors.i, align 4
  %conv.i288 = zext i32 %21 to i64
  %22 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %region_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv.i288)
  %cmp.i = icmp ugt i64 %23, %conv.i288
  br i1 %cmp.i, label %if.end8.i.do.end.i_crit_edge, label %if.end8.i.disable_passdown_if_not_supported.exit_crit_edge

if.end8.i.disable_passdown_if_not_supported.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_passdown_if_not_supported.exit

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end8.i.do.end.i_crit_edge, %bdev_supports_discards.exit.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %reason.027.i = phi ptr [ @.str.93, %if.end8.i.do.end.i_crit_edge ], [ @.str.92, %bdev_supports_discards.exit.i.do.end.i_crit_edge ], [ @.str.92, %if.end.i.do.end.i_crit_edge ]
  %call11.i = call ptr @bdevname(ptr noundef %11, ptr noundef nonnull %buf.i) #11
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %call11.i, ptr noundef nonnull %reason.027.i) #14
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #11
  br label %disable_passdown_if_not_supported.exit

disable_passdown_if_not_supported.exit:           ; preds = %do.end.i, %if.end8.i.disable_passdown_if_not_supported.exit_crit_edge, %if.end195.disable_passdown_if_not_supported.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #11
  %24 = ptrtoint ptr %dest_dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dest_dev1.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %bd_queue.i.i289 = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %bd_queue.i.i289 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_queue.i.i289, align 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i291 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i291)
  %tobool.not.i292 = icmp eq i32 %and1.i.i291, 0
  br i1 %tobool.not.i292, label %if.then.i, label %if.end.i297

if.then.i:                                        ; preds = %disable_passdown_if_not_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %region_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %region_size, align 8
  %.tr.i = trunc i64 %33 to i32
  %conv.i294 = shl i32 %.tr.i, 9
  %discard_granularity.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %34 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i294, ptr %discard_granularity.i, align 4
  %35 = load i64, ptr %region_size, align 8
  %36 = trunc i64 %35 to i32
  %neg.i = sub i32 0, %36
  %and.i295 = and i32 %neg.i, 8388607
  %max_discard_sectors.i296 = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %37 = ptrtoint ptr %max_discard_sectors.i296 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i295, ptr %max_discard_sectors.i296, align 4
  br label %set_discard_limits.exit

if.end.i297:                                      ; preds = %disable_passdown_if_not_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  %max_discard_sectors5.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 13
  %38 = ptrtoint ptr %max_discard_sectors5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_discard_sectors5.i, align 4
  %max_discard_sectors6.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %40 = ptrtoint ptr %max_discard_sectors6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %max_discard_sectors6.i, align 4
  %max_hw_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 14
  %41 = ptrtoint ptr %max_hw_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_hw_discard_sectors.i, align 4
  %max_hw_discard_sectors7.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 14
  %43 = ptrtoint ptr %max_hw_discard_sectors7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_hw_discard_sectors7.i, align 4
  %discard_granularity8.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 18
  %44 = ptrtoint ptr %discard_granularity8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %discard_granularity8.i, align 4
  %discard_granularity9.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %46 = ptrtoint ptr %discard_granularity9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %discard_granularity9.i, align 4
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 19
  %47 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %discard_alignment.i, align 4
  %discard_alignment10.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 19
  %49 = ptrtoint ptr %discard_alignment10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %discard_alignment10.i, align 4
  %discard_misaligned.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 25
  %50 = ptrtoint ptr %discard_misaligned.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %discard_misaligned.i, align 1
  %discard_misaligned11.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 25
  %52 = ptrtoint ptr %discard_misaligned11.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %discard_misaligned11.i, align 1
  %max_discard_segments.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 23
  %53 = ptrtoint ptr %max_discard_segments.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %max_discard_segments.i, align 4
  %max_discard_segments12.i = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 23
  %55 = ptrtoint ptr %max_discard_segments12.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %max_discard_segments12.i, align 4
  br label %set_discard_limits.exit

set_discard_limits.exit:                          ; preds = %if.end.i297, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_region_size(ptr nocapture noundef %clone, ptr noundef %as, ptr noundef %error) unnamed_addr #2 align 64 {
entry:
  %region_size = alloca i32, align 4
  %arg = alloca %struct.dm_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %region_size) #11
  %0 = ptrtoint ptr %region_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region_size, align 4, !annotation !239
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arg) #11
  %1 = getelementptr inbounds %struct.dm_arg, ptr %arg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dm_arg, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %arg, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2097152, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.30, ptr %2, align 4
  %call = call i32 @dm_read_arg(ptr noundef nonnull %arg, ptr noundef %as, ptr noundef nonnull %region_size, ptr noundef %error) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %region_size, align 4
  %8 = call i32 @llvm.ctpop.i32(i32 %7) #11, !range !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.31, ptr %error, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %source_dev = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 3
  %11 = ptrtoint ptr %source_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %source_dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end4.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end4.bdev_logical_block_size.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 9
  %17 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i = icmp eq i32 %18, 0
  %.op = lshr i32 %18, 9
  %phi.bo = select i1 %tobool2.not.i.i, i32 1, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end4.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 1, %if.end4.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %rem = urem i32 %7, %retval1.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %bdev_logical_block_size.exit.if.then12_crit_edge

bdev_logical_block_size.exit.if.then12_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %bdev_logical_block_size.exit
  %dest_dev = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 2
  %19 = ptrtoint ptr %dest_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dest_dev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %bd_queue.i.i22 = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %bd_queue.i.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_queue.i.i22, align 4
  %tobool.not.i.i23 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i23, label %lor.lhs.false.bdev_logical_block_size.exit29_crit_edge, label %land.lhs.true.i.i27

lor.lhs.false.bdev_logical_block_size.exit29_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %bdev_logical_block_size.exit29

land.lhs.true.i.i27:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %logical_block_size.i.i24 = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 37, i32 9
  %25 = ptrtoint ptr %logical_block_size.i.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %logical_block_size.i.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i.i25 = icmp eq i32 %26, 0
  %.op31 = lshr i32 %26, 9
  %phi.bo30 = select i1 %tobool2.not.i.i25, i32 1, i32 %.op31
  br label %bdev_logical_block_size.exit29

bdev_logical_block_size.exit29:                   ; preds = %land.lhs.true.i.i27, %lor.lhs.false.bdev_logical_block_size.exit29_crit_edge
  %retval1.0.i.i28 = phi i32 [ 1, %lor.lhs.false.bdev_logical_block_size.exit29_crit_edge ], [ %phi.bo30, %land.lhs.true.i.i27 ]
  %rem10 = urem i32 %7, %retval1.0.i.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %tobool11.not = icmp eq i32 %rem10, 0
  br i1 %tobool11.not, label %if.end13, label %bdev_logical_block_size.exit29.if.then12_crit_edge

bdev_logical_block_size.exit29.if.then12_crit_edge: ; preds = %bdev_logical_block_size.exit29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %bdev_logical_block_size.exit29.if.then12_crit_edge, %bdev_logical_block_size.exit.if.then12_crit_edge
  %27 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.32, ptr %error, align 4
  br label %cleanup

if.end13:                                         ; preds = %bdev_logical_block_size.exit29
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %7 to i64
  %region_size14 = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 5
  %28 = ptrtoint ptr %region_size14 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %region_size14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12 ], [ 0, %if.end13 ], [ -22, %if.then3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %region_size) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_feature_args(ptr noundef %as, ptr nocapture noundef %clone) unnamed_addr #2 align 64 {
entry:
  %argc = alloca i32, align 4
  %args = alloca %struct.dm_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #11
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %argc, align 4, !annotation !239
  %1 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clone, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %3 = call ptr @memcpy(ptr %args, ptr @__const.parse_feature_args.args, i32 12)
  %4 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.dm_target, ptr %2, i32 0, i32 12
  %call = call i32 @dm_read_arg_group(ptr noundef nonnull %args, ptr noundef %as, ptr noundef nonnull %argc, ptr noundef %error) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %6 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not31 = icmp eq i32 %7, 0
  br i1 %tobool6.not31, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags14 = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %call7 = call ptr @dm_shift_arg(ptr noundef %as) #11
  %8 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %argc, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %argc, align 4
  %call8 = call i32 @strcasecmp(ptr noundef %call7, ptr noundef nonnull @.str.34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.body.if.end18_crit_edge, label %if.else

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else:                                          ; preds = %while.body
  %call11 = call i32 @strcasecmp(ptr noundef %call7, ptr noundef nonnull @.str.35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.if.end18_crit_edge, label %if.else15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.36, ptr %error, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %.sink32 = phi i32 [ -3, %while.body.if.end18_crit_edge ], [ -2, %if.else.if.end18_crit_edge ]
  %11 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags14, align 4
  %and.i30 = and i32 %12, %.sink32
  store i32 %and.i30, ptr %flags14, align 4
  %13 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %argc, align 4
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %if.end18.cleanup_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.else15, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else15 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_core_args(ptr noundef %as, ptr nocapture noundef %clone) unnamed_addr #2 align 64 {
entry:
  %argc = alloca i32, align 4
  %value = alloca i32, align 4
  %args = alloca %struct.dm_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #11
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %argc, align 4, !annotation !239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4, !annotation !239
  %2 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clone, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %4 = call ptr @memcpy(ptr %args, ptr @__const.parse_core_args.args, i32 12)
  %hydration_batch_size = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 20
  %5 = ptrtoint ptr %hydration_batch_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %hydration_batch_size, align 4
  %hydration_threshold = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 19
  %6 = ptrtoint ptr %hydration_threshold to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %hydration_threshold, align 8
  %7 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %call = call i32 @dm_read_arg_group(ptr noundef nonnull %args, ptr noundef %as, ptr noundef nonnull %argc, ptr noundef %error) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %argc, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.cond.preheader:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not55 = icmp eq i32 %10, 0
  br i1 %tobool10.not55, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call11 = call ptr @dm_shift_arg(ptr noundef %as) #11
  %11 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %argc, align 4
  %sub = add i32 %12, -2
  store i32 %sub, ptr %argc, align 4
  %call12 = call i32 @strcasecmp(ptr noundef %call11, ptr noundef nonnull @.str.39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  %call15 = call ptr @dm_shift_arg(ptr noundef %as) #11
  %call16 = call i32 @kstrtouint(ptr noundef %call15, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %15 = ptrtoint ptr %hydration_threshold to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hydration_threshold, align 8
  br label %if.end35

if.else:                                          ; preds = %while.body
  %call22 = call i32 @strcasecmp(ptr noundef %call11, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then24:                                        ; preds = %if.else
  %call25 = call ptr @dm_shift_arg(ptr noundef %as) #11
  %call26 = call i32 @kstrtouint(ptr noundef %call25, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then24.cleanup.sink.split_crit_edge

if.then24.cleanup.sink.split_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %18 = ptrtoint ptr %hydration_batch_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hydration_batch_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %if.end20
  %19 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %argc, align 4
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.end35.cleanup_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then24.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.38, %if.end5.cleanup.sink.split_crit_edge ], [ @.str.40, %if.then14.cleanup.sink.split_crit_edge ], [ @.str.42, %if.then24.cleanup.sink.split_crit_edge ], [ @.str.43, %if.else.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.str.43.sink, ptr %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_clone_metadata_open(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_clone_mode(ptr noundef %clone, i32 noundef %new_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 29
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %spec.select = select i1 %cmp, i32 2, i32 %new_mode
  %2 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %spec.select, label %entry.do.body4_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge26
    i32 0, label %sw.bb1
  ]

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26
  %cmd = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 8
  tail call void @dm_clone_metadata_set_read_only(ptr noundef %4) #11
  br label %do.body4

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cmd2 = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %5 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd2, align 8
  tail call void @dm_clone_metadata_set_read_write(ptr noundef %6) #11
  br label %do.body4

do.body4:                                         ; preds = %sw.bb1, %sw.bb, %entry.do.body4_crit_edge
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %spec.select, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %1)
  %cmp9.not = icmp eq i32 %spec.select, %1
  br i1 %cmp9.not, label %do.body4.if.end16_crit_edge, label %if.then10

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clone, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void @dm_table_event(ptr noundef %11) #11
  %12 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clone, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %15) #11
  %arrayidx = getelementptr [3 x ptr], ptr @__set_clone_mode.descs, i32 0, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %call.i, ptr noundef %17) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %do.body4.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_table_init(ptr nocapture noundef %clone) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1572864, i32 noundef 3264, i32 noundef -1) #17
  %ht = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 9
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %ht, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ht, align 4
  %add.ptr = getelementptr %struct.hash_table_bucket, ptr %2, i32 %i.012
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %add.ptr, align 4
  %lock = getelementptr %struct.hash_table_bucket, ptr %2, i32 %i.012, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @hash_table_init.__key, i16 noundef signext 3) #11
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 32768
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_worker(ptr noundef %work) #2 align 64 {
entry:
  %dest_dev_flushed.i = alloca i8, align 1
  %plug.i = alloca %struct.blk_plug, align 4
  %plug.i.i = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -420
  %lock.i = getelementptr i8, ptr %work, i32 -104
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %deferred_bios.i = getelementptr i8, ptr %work, i32 -60
  %0 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %deferred_bios.i, align 4
  %tail.i6.i = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %tail.i6.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tail.i6.i, align 4
  store ptr null, ptr %deferred_bios.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.process_deferred_bios.exit_crit_edge, label %if.end.i

entry.process_deferred_bios.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_bios.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i.i) #11
  %3 = call ptr @memset(ptr %plug.i.i, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i.i) #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i.i.if.then.i.i.i_crit_edge, %if.end.i
  %4 = phi ptr [ %6, %if.then.i.i.i.if.then.i.i.i_crit_edge ], [ %1, %if.end.i ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %tobool4.not.i.i.i = icmp eq ptr %6, null
  store ptr null, ptr %4, align 8
  call void @submit_bio_noacct(ptr noundef nonnull %4) #11
  br i1 %tobool4.not.i.i.i, label %submit_bios.exit.i, label %if.then.i.i.i.if.then.i.i.i_crit_edge

if.then.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

submit_bios.exit.i:                               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_finish_plug(ptr noundef nonnull %plug.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i.i) #11
  br label %process_deferred_bios.exit

process_deferred_bios.exit:                       ; preds = %submit_bios.exit.i, %entry.process_deferred_bios.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #11
  %7 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %deferred_discard_bios.i = getelementptr i8, ptr %work, i32 -52
  %8 = ptrtoint ptr %deferred_discard_bios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %deferred_discard_bios.i, align 4
  %tail.i38.i = getelementptr i8, ptr %work, i32 -48
  %10 = ptrtoint ptr %tail.i38.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tail.i38.i, align 4
  store ptr null, ptr %deferred_discard_bios.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %cmp.i.not.i = icmp eq ptr %9, null
  br i1 %cmp.i.not.i, label %process_deferred_bios.exit.process_deferred_discards.exit_crit_edge, label %if.end.i5

process_deferred_bios.exit.process_deferred_discards.exit_crit_edge: ; preds = %process_deferred_bios.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_discards.exit

if.end.i5:                                        ; preds = %process_deferred_bios.exit
  %mode.i.i = getelementptr i8, ptr %work, i32 148
  %11 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %for.body.lr.ph.i, label %if.end.i5.if.then.i.lr.ph.i_crit_edge, !prof !233

if.end.i5.if.then.i.lr.ph.i_crit_edge:            ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i5
  %region_size.i.i = getelementptr i8, ptr %work, i32 -396
  %region_shift.i.i = getelementptr i8, ptr %work, i32 -388
  %cmd.i = getelementptr i8, ptr %work, i32 -292
  br label %for.body.i

for.cond.i:                                       ; preds = %bio_region_range.exit.i
  %13 = ptrtoint ptr %bio.049.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bio.0.i = load ptr, ptr %bio.049.i, align 8
  %tobool8.not.i = icmp eq ptr %bio.0.i, null
  br i1 %tobool8.not.i, label %for.cond.i.if.then.i.lr.ph.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.if.then.i.lr.ph.i_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.lr.ph.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bio.049.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %bio.0.i, %for.cond.i.for.body.i_crit_edge ]
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio.049.i, i32 0, i32 8
  %14 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bi_iter.i.i, align 8
  %16 = ptrtoint ptr %region_size.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %region_size.i.i, align 8
  %add.i.i = add i64 %15, -1
  %sub.i.i = add i64 %add.i.i, %17
  %conv.i39.i = trunc i64 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp169.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !233

if.then173.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i.i = trunc i64 %sub.i.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %conv.i39.i
  br label %bio_region_range.exit.i

if.else179.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i39.i, i64 %sub.i.i) #16, !srcloc !234
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t315.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %bio_region_range.exit.i

bio_region_range.exit.i:                          ; preds = %if.else179.i.i, %if.then173.i.i
  %_r.0.off0.i.i = phi i32 [ %div177.i.i, %if.then173.i.i ], [ %extract.t315.i.i, %if.else179.i.i ]
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio.049.i, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_size.i.i, align 8
  %shr190.i.i = lshr i32 %20, 9
  %conv191.i.i = zext i32 %shr190.i.i to i64
  %add192.i.i = add i64 %15, %conv191.i.i
  %21 = ptrtoint ptr %region_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %region_shift.i.i, align 8
  %sh_prom193.i.i = zext i32 %22 to i64
  %shr194.i.i = lshr i64 %add192.i.i, %sh_prom193.i.i
  %conv195.i.i = trunc i64 %shr194.i.i to i32
  %23 = call i32 @llvm.usub.sat.i32(i32 %conv195.i.i, i32 %_r.0.off0.i.i) #11
  %24 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd.i, align 8
  %call9.i = call i32 @dm_clone_cond_set_range(ptr noundef %25, i32 noundef %_r.0.off0.i.i, i32 noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %bio_region_range.exit.i.if.then.i.lr.ph.i_crit_edge, !prof !233

bio_region_range.exit.i.if.then.i.lr.ph.i_crit_edge: ; preds = %bio_region_range.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.lr.ph.i

if.then.i.lr.ph.i:                                ; preds = %bio_region_range.exit.i.if.then.i.lr.ph.i_crit_edge, %for.cond.i.if.then.i.lr.ph.i_crit_edge, %if.end.i5.if.then.i.lr.ph.i_crit_edge
  %r.1.i = phi i32 [ -1, %if.end.i5.if.then.i.lr.ph.i_crit_edge ], [ 0, %for.cond.i.if.then.i.lr.ph.i_crit_edge ], [ %call9.i, %bio_region_range.exit.i.if.then.i.lr.ph.i_crit_edge ]
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1.i)
  %cmp21.i = icmp eq i32 %r.1.i, 0
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.i.if.then.i.i_crit_edge, %if.then.i.lr.ph.i
  %26 = phi ptr [ %9, %if.then.i.lr.ph.i ], [ %28, %if.then.i.i.if.then.i.i_crit_edge ]
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  store ptr null, ptr %26, align 8
  call fastcc void @complete_discard_bio(ptr noundef %add.ptr, ptr noundef nonnull %26, i1 noundef zeroext %cmp21.i) #11
  %tobool.not.i42.i = icmp eq ptr %28, null
  br i1 %tobool.not.i42.i, label %while.end.i, label %if.then.i.i.if.then.i.i_crit_edge

if.then.i.i.if.then.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

while.end.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #11
  br label %process_deferred_discards.exit

process_deferred_discards.exit:                   ; preds = %while.end.i, %process_deferred_bios.exit.process_deferred_discards.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dest_dev_flushed.i) #11
  %29 = ptrtoint ptr %dest_dev_flushed.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %dest_dev_flushed.i, align 1, !annotation !239
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %deferred_flush_bios.i = getelementptr i8, ptr %work, i32 -44
  %30 = ptrtoint ptr %deferred_flush_bios.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %deferred_flush_bios.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %process_deferred_discards.exit.bio_list_merge.exit.i_crit_edge, label %if.end7.i.i

process_deferred_discards.exit.bio_list_merge.exit.i_crit_edge: ; preds = %process_deferred_discards.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_merge.exit.i

if.end7.i.i:                                      ; preds = %process_deferred_discards.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tail8.i.i = getelementptr i8, ptr %work, i32 -40
  %32 = ptrtoint ptr %tail8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail8.i.i, align 4
  br label %bio_list_merge.exit.i

bio_list_merge.exit.i:                            ; preds = %if.end7.i.i, %process_deferred_discards.exit.bio_list_merge.exit.i_crit_edge
  %bios.sroa.10.0.i = phi ptr [ null, %process_deferred_discards.exit.bio_list_merge.exit.i_crit_edge ], [ %33, %if.end7.i.i ]
  %tail.i48.i = getelementptr i8, ptr %work, i32 -40
  %34 = ptrtoint ptr %tail.i48.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %tail.i48.i, align 4
  %35 = ptrtoint ptr %deferred_flush_bios.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %deferred_flush_bios.i, align 4
  %deferred_flush_completions.i = getelementptr i8, ptr %work, i32 -36
  %36 = ptrtoint ptr %deferred_flush_completions.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %deferred_flush_completions.i, align 4
  %tail.i58.i = getelementptr i8, ptr %work, i32 -32
  %38 = ptrtoint ptr %tail.i58.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %tail.i58.i, align 4
  store ptr null, ptr %deferred_flush_completions.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  %cmp.i59.not.i = icmp eq ptr %37, null
  %or.cond.i = select i1 %tobool.not.i.i, i1 %cmp.i59.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true6.i, label %bio_list_merge.exit.i.if.end.i10_crit_edge

bio_list_merge.exit.i.if.end.i10_crit_edge:       ; preds = %bio_list_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

land.lhs.true6.i:                                 ; preds = %bio_list_merge.exit.i
  %cmd.i7 = getelementptr i8, ptr %work, i32 -292
  %39 = ptrtoint ptr %cmd.i7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmd.i7, align 8
  %call7.i = call zeroext i1 @dm_clone_changed_this_transaction(ptr noundef %40) #11
  br i1 %call7.i, label %land.lhs.true8.i, label %land.lhs.true6.i.process_deferred_flush_bios.exit_crit_edge

land.lhs.true6.i.process_deferred_flush_bios.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_commit_jiffies.i.i = getelementptr i8, ptr %work, i32 -108
  %42 = ptrtoint ptr %last_commit_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_commit_jiffies.i.i, align 8
  %sub.i.i8 = sub i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i8)
  %cmp.i61.i = icmp sgt i32 %sub.i.i8, -1
  br i1 %cmp.i61.i, label %need_commit_due_to_time.exit.i, label %land.lhs.true8.i.if.end.i10_crit_edge

land.lhs.true8.i.if.end.i10_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

need_commit_due_to_time.exit.i:                   ; preds = %land.lhs.true8.i
  %add.i.i9 = add i32 %43, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub2.i.i = sub i32 %add.i.i9, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i.i)
  %cmp3.i.i = icmp slt i32 %sub2.i.i, 0
  br i1 %cmp3.i.i, label %need_commit_due_to_time.exit.i.if.end.i10_crit_edge, label %need_commit_due_to_time.exit.i.process_deferred_flush_bios.exit_crit_edge

need_commit_due_to_time.exit.i.process_deferred_flush_bios.exit_crit_edge: ; preds = %need_commit_due_to_time.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

need_commit_due_to_time.exit.i.if.end.i10_crit_edge: ; preds = %need_commit_due_to_time.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

if.end.i10:                                       ; preds = %need_commit_due_to_time.exit.i.if.end.i10_crit_edge, %land.lhs.true8.i.if.end.i10_crit_edge, %bio_list_merge.exit.i.if.end.i10_crit_edge
  %call10.i = call fastcc i32 @commit_metadata(ptr noundef %add.ptr, ptr noundef nonnull %dest_dev_flushed.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i10
  br i1 %cmp.i59.not.i, label %if.then12.i.bio_list_merge.exit70.i_crit_edge, label %if.end.i65.i

if.then12.i.bio_list_merge.exit70.i_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_merge.exit70.i

if.end.i65.i:                                     ; preds = %if.then12.i
  %tobool1.not.i64.i = icmp eq ptr %bios.sroa.10.0.i, null
  br i1 %tobool1.not.i64.i, label %if.end.i65.i.if.then.i.i11.preheader_crit_edge, label %if.then2.i66.i

if.end.i65.i.if.then.i.i11.preheader_crit_edge:   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i11.preheader

if.then2.i66.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %bios.sroa.10.0.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %37, ptr %bios.sroa.10.0.i, align 8
  br label %bio_list_merge.exit70.i

bio_list_merge.exit70.i:                          ; preds = %if.then2.i66.i, %if.then12.i.bio_list_merge.exit70.i_crit_edge
  br i1 %tobool.not.i.i, label %bio_list_merge.exit70.i.process_deferred_flush_bios.exit_crit_edge, label %bio_list_merge.exit70.i.if.then.i.i11.preheader_crit_edge

bio_list_merge.exit70.i.if.then.i.i11.preheader_crit_edge: ; preds = %bio_list_merge.exit70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i11.preheader

bio_list_merge.exit70.i.process_deferred_flush_bios.exit_crit_edge: ; preds = %bio_list_merge.exit70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

if.then.i.i11.preheader:                          ; preds = %bio_list_merge.exit70.i.if.then.i.i11.preheader_crit_edge, %if.end.i65.i.if.then.i.i11.preheader_crit_edge
  %bios.sroa.0.4103.i.ph = phi ptr [ %37, %if.end.i65.i.if.then.i.i11.preheader_crit_edge ], [ %31, %bio_list_merge.exit70.i.if.then.i.i11.preheader_crit_edge ]
  br label %if.then.i.i11

if.then.i.i11:                                    ; preds = %if.then.i.i11.if.then.i.i11_crit_edge, %if.then.i.i11.preheader
  %bios.sroa.0.4103.i = phi ptr [ %47, %if.then.i.i11.if.then.i.i11_crit_edge ], [ %bios.sroa.0.4103.i.ph, %if.then.i.i11.preheader ]
  %46 = ptrtoint ptr %bios.sroa.0.4103.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bios.sroa.0.4103.i, align 8
  store ptr null, ptr %bios.sroa.0.4103.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.4103.i, i32 0, i32 6
  %48 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %bi_status.i.i, align 2
  call void @bio_endio(ptr noundef nonnull %bios.sroa.0.4103.i) #11
  %tobool.not.i71.i = icmp eq ptr %47, null
  br i1 %tobool.not.i71.i, label %if.then.i.i11.process_deferred_flush_bios.exit_crit_edge, label %if.then.i.i11.if.then.i.i11_crit_edge

if.then.i.i11.if.then.i.i11_crit_edge:            ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i11

if.then.i.i11.process_deferred_flush_bios.exit_crit_edge: ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

if.end15.i:                                       ; preds = %if.end.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %last_commit_jiffies.i = getelementptr i8, ptr %work, i32 -108
  %50 = ptrtoint ptr %last_commit_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %last_commit_jiffies.i, align 8
  br i1 %cmp.i59.not.i, label %if.end15.i.while.cond21.preheader.i_crit_edge, label %if.end15.i.if.then.i77.i_crit_edge

if.end15.i.if.then.i77.i_crit_edge:               ; preds = %if.end15.i
  br label %if.then.i77.i

if.end15.i.while.cond21.preheader.i_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond21.preheader.i

while.cond21.preheader.i:                         ; preds = %if.then.i77.i.while.cond21.preheader.i_crit_edge, %if.end15.i.while.cond21.preheader.i_crit_edge
  br i1 %tobool.not.i.i, label %while.cond21.preheader.i.process_deferred_flush_bios.exit_crit_edge, label %while.cond21.preheader.i.if.then.i85.i_crit_edge

while.cond21.preheader.i.if.then.i85.i_crit_edge: ; preds = %while.cond21.preheader.i
  br label %if.then.i85.i

while.cond21.preheader.i.process_deferred_flush_bios.exit_crit_edge: ; preds = %while.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

if.then.i77.i:                                    ; preds = %if.then.i77.i.if.then.i77.i_crit_edge, %if.end15.i.if.then.i77.i_crit_edge
  %bio_completions.sroa.0.2105.i = phi ptr [ %52, %if.then.i77.i.if.then.i77.i_crit_edge ], [ %37, %if.end15.i.if.then.i77.i_crit_edge ]
  %51 = ptrtoint ptr %bio_completions.sroa.0.2105.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bio_completions.sroa.0.2105.i, align 8
  store ptr null, ptr %bio_completions.sroa.0.2105.i, align 8
  call void @bio_endio(ptr noundef nonnull %bio_completions.sroa.0.2105.i) #11
  %tobool.not.i75.i = icmp eq ptr %52, null
  br i1 %tobool.not.i75.i, label %if.then.i77.i.while.cond21.preheader.i_crit_edge, label %if.then.i77.i.if.then.i77.i_crit_edge

if.then.i77.i.if.then.i77.i_crit_edge:            ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i77.i

if.then.i77.i.while.cond21.preheader.i_crit_edge: ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond21.preheader.i

if.then.i85.i:                                    ; preds = %if.end30.i.if.then.i85.i_crit_edge, %while.cond21.preheader.i.if.then.i85.i_crit_edge
  %bios.sroa.0.6107.i = phi ptr [ %54, %if.end30.i.if.then.i85.i_crit_edge ], [ %31, %while.cond21.preheader.i.if.then.i85.i_crit_edge ]
  %53 = ptrtoint ptr %bios.sroa.0.6107.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bios.sroa.0.6107.i, align 8
  store ptr null, ptr %bios.sroa.0.6107.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bios.sroa.0.6107.i, i32 0, i32 2
  %55 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bi_opf.i, align 8
  %57 = and i32 %56, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool25.not.i = icmp eq i32 %57, 0
  br i1 %tobool25.not.i, label %if.then.i85.i.if.else.i_crit_edge, label %land.lhs.true26.i

if.then.i85.i.if.else.i_crit_edge:                ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true26.i:                                ; preds = %if.then.i85.i
  %58 = ptrtoint ptr %dest_dev_flushed.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dest_dev_flushed.i, align 1, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool27.not.i = icmp eq i8 %59, 0
  br i1 %tobool27.not.i, label %land.lhs.true26.i.if.else.i_crit_edge, label %if.then29.i

land.lhs.true26.i.if.else.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @bio_endio(ptr noundef nonnull %bios.sroa.0.6107.i) #11
  br label %if.end30.i

if.else.i:                                        ; preds = %land.lhs.true26.i.if.else.i_crit_edge, %if.then.i85.i.if.else.i_crit_edge
  call void @submit_bio_noacct(ptr noundef nonnull %bios.sroa.0.6107.i) #11
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then29.i
  %tobool.not.i83.i = icmp eq ptr %54, null
  br i1 %tobool.not.i83.i, label %if.end30.i.process_deferred_flush_bios.exit_crit_edge, label %if.end30.i.if.then.i85.i_crit_edge

if.end30.i.if.then.i85.i_crit_edge:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i85.i

if.end30.i.process_deferred_flush_bios.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_deferred_flush_bios.exit

process_deferred_flush_bios.exit:                 ; preds = %if.end30.i.process_deferred_flush_bios.exit_crit_edge, %while.cond21.preheader.i.process_deferred_flush_bios.exit_crit_edge, %if.then.i.i11.process_deferred_flush_bios.exit_crit_edge, %bio_list_merge.exit70.i.process_deferred_flush_bios.exit_crit_edge, %need_commit_due_to_time.exit.i.process_deferred_flush_bios.exit_crit_edge, %land.lhs.true6.i.process_deferred_flush_bios.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dest_dev_flushed.i) #11
  %nr_regions1.i = getelementptr i8, ptr %work, i32 -404
  %60 = ptrtoint ptr %nr_regions1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_regions1.i, align 8
  %mode.i.i12 = getelementptr i8, ptr %work, i32 148
  %62 = ptrtoint ptr %mode.i.i12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %mode.i.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i13 = icmp eq i32 %63, 0
  br i1 %cmp.not.i13, label %if.end.i15, label %process_deferred_flush_bios.exit.do_hydration.exit_crit_edge, !prof !233

process_deferred_flush_bios.exit.do_hydration.exit_crit_edge: ; preds = %process_deferred_flush_bios.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_hydration.exit

if.end.i15:                                       ; preds = %process_deferred_flush_bios.exit
  %cmd.i14 = getelementptr i8, ptr %work, i32 -292
  %64 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cmd.i14, align 8
  %call3.i = call zeroext i1 @dm_clone_is_hydration_done(ptr noundef %65) #11
  br i1 %call3.i, label %if.end.i15.do_hydration.exit_crit_edge, label %if.end5.i

if.end.i15.do_hydration.exit_crit_edge:           ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_hydration.exit

if.end5.i:                                        ; preds = %if.end.i15
  %hydrations_in_flight.i = getelementptr i8, ptr %work, i32 -16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %hydrations_in_flight.i, i32 1, i32 3, i32 1) #11
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hydrations_in_flight.i, ptr %hydrations_in_flight.i, i32 1, ptr elementtype(i32) %hydrations_in_flight.i) #11, !srcloc !235
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !241
  %hydration_offset.i = getelementptr i8, ptr %work, i32 -20
  %67 = ptrtoint ptr %hydration_offset.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hydration_offset.i, align 8
  %flags.i = getelementptr i8, ptr %work, i32 152
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i, align 4
  %71 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool10.not95.i = icmp eq i32 %71, 0
  br i1 %tobool10.not95.i, label %land.lhs.true.lr.ph.i, label %if.end5.i.if.end39.i_crit_edge, !prof !233

if.end5.i.if.end39.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

land.lhs.true.lr.ph.i:                            ; preds = %if.end5.i
  %ios_in_flight.i = getelementptr i8, ptr %work, i32 -284
  %hydration_threshold.i = getelementptr i8, ptr %work, i32 -28
  %hydration_pool.i.i.i = getelementptr i8, ptr %work, i32 -228
  %ht.i.i.i = getelementptr i8, ptr %work, i32 -288
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %__start_next_hydration.exit.i.land.lhs.true.i_crit_edge, %land.lhs.true.lr.ph.i
  %offset.0100.i = phi i32 [ %68, %land.lhs.true.lr.ph.i ], [ %retval.0.i.i, %__start_next_hydration.exit.i.land.lhs.true.i_crit_edge ]
  %batch.sroa.0.098.i = phi ptr [ null, %land.lhs.true.lr.ph.i ], [ %batch.sroa.0.3.i, %__start_next_hydration.exit.i.land.lhs.true.i_crit_edge ]
  %batch.sroa.8.096.i = phi i32 [ 0, %land.lhs.true.lr.ph.i ], [ %batch.sroa.8.4.i, %__start_next_hydration.exit.i.land.lhs.true.i_crit_edge ]
  %call.i.i71.i = call zeroext i1 @__kasan_check_read(ptr noundef %ios_in_flight.i, i32 noundef 4) #11
  %72 = ptrtoint ptr %ios_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %ios_in_flight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool20.not.i = icmp eq i32 %73, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %land.lhs.true.i.while.end.i21_crit_edge

land.lhs.true.i.while.end.i21_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i21

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i, align 4
  %76 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool24.not.i = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0100.i, i32 %61)
  %cmp25.i = icmp ult i32 %offset.0100.i, %61
  %or.cond.i16 = select i1 %tobool24.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i16, label %while.body.i, label %land.lhs.true21.i.while.end.i21_crit_edge

land.lhs.true21.i.while.end.i21_crit_edge:        ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i21

while.body.i:                                     ; preds = %land.lhs.true21.i
  %call.i.i74.i = call zeroext i1 @__kasan_check_read(ptr noundef %hydrations_in_flight.i, i32 noundef 4) #11
  %77 = ptrtoint ptr %hydrations_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %hydrations_in_flight.i, align 4
  %add.i = add i32 %78, %batch.sroa.8.096.i
  %79 = ptrtoint ptr %hydration_threshold.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %hydration_threshold.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %80)
  %cmp31.i = icmp ugt i32 %add.i, %80
  br i1 %cmp31.i, label %while.body.i.while.end.i21_crit_edge, label %if.end33.i

while.body.i.while.end.i21_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i21

if.end33.i:                                       ; preds = %while.body.i
  %81 = ptrtoint ptr %nr_regions1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_regions1.i, align 8
  %call.i.i76.i = call noalias ptr @mempool_alloc(ptr noundef %hydration_pool.i.i.i, i32 noundef 3072) #11
  %83 = ptrtoint ptr %call.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr, ptr %call.i.i76.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end9.i.i.do.body.i.i_crit_edge, %if.end33.i
  %offset.addr.0.i.i = phi i32 [ %offset.0100.i, %if.end33.i ], [ %inc.i.i, %if.end9.i.i.do.body.i.i_crit_edge ]
  %84 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmd.i14, align 8
  %call2.i.i = call i32 @dm_clone_find_next_unhydrated_region(ptr noundef %85, i32 noundef %offset.addr.0.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i, i32 %82)
  %cmp.i.i17 = icmp eq i32 %call2.i.i, %82
  br i1 %cmp.i.i17, label %do.body.i.i.do.end.i.i_crit_edge, label %if.end.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %86 = ptrtoint ptr %ht.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ht.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %call2.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 17
  %arrayidx.i.i.i = getelementptr %struct.hash_table_bucket, ptr %87, i32 %shr.i.i.i.i
  %lock.i.i = getelementptr %struct.hash_table_bucket, ptr %87, i32 %shr.i.i.i.i, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #11
  %88 = ptrtoint ptr %cmd.i14 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd.i14, align 8
  %call5.i.i = call zeroext i1 @dm_clone_is_region_hydrated(ptr noundef %89, i32 noundef %call2.i.i) #11
  br i1 %call5.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %90 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %91, null
  %add.ptr.i.i.i = getelementptr i8, ptr %91, i32 -36
  %tobool2.not2326.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not23.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2326.i.i.i
  br i1 %tobool2.not23.i.i.i, label %land.lhs.true.i.i.if.then7.i.i_crit_edge, label %land.lhs.true.i.i.for.body.i.i.i_crit_edge

land.lhs.true.i.i.for.body.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  br label %for.body.i.i.i

land.lhs.true.i.i.if.then7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %land.lhs.true.i.i.for.body.i.i.i_crit_edge
  %hd.024.i.i.i = phi ptr [ %add.ptr10.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %land.lhs.true.i.i.for.body.i.i.i_crit_edge ]
  %region_nr3.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %region_nr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %region_nr3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %call2.i.i)
  %cmp.i.i77.i = icmp eq i32 %93, %call2.i.i
  br i1 %cmp.i.i77.i, label %for.body.i.i.i.if.end9.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.if.end9.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %h.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.024.i.i.i, i32 0, i32 7
  %94 = ptrtoint ptr %h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %h.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %95, null
  %add.ptr10.i.i.i = getelementptr i8, ptr %95, i32 -36
  %tobool2.not27.i.i.i = icmp eq ptr %add.ptr10.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool6.not.i.i.i, %tobool2.not27.i.i.i
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i.if.then7.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.if.then7.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %for.inc.i.i.i.if.then7.i.i_crit_edge, %land.lhs.true.i.i.if.then7.i.i_crit_edge
  %region_nr1.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 1
  %96 = ptrtoint ptr %region_nr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call2.i.i, ptr %region_nr1.i.i.i, align 4
  %overwrite_bio.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 2
  %97 = ptrtoint ptr %overwrite_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %overwrite_bio.i.i.i, align 4
  %deferred_bios.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 4
  %tail.i.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %tail.i.i.i.i, align 4
  %99 = ptrtoint ptr %deferred_bios.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %deferred_bios.i.i.i, align 4
  %status.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 5
  %100 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %status.i.i.i, align 4
  %list.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 6
  %101 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 6, i32 1
  %102 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  %h.i38.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 7
  %103 = ptrtoint ptr %h.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %h.i38.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %call.i.i76.i, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i.i, align 4
  store volatile ptr %106, ptr %h.i38.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i.i, label %if.then7.i.i.__insert_region_hydration.exit.i.i_crit_edge, label %do.body12.i.i.i.i

if.then7.i.i.__insert_region_hydration.exit.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__insert_region_hydration.exit.i.i

do.body12.i.i.i.i:                                ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i40.i.i = getelementptr inbounds %struct.hlist_node, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %pprev.i.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %h.i38.i.i, ptr %pprev.i.i40.i.i, align 4
  br label %__insert_region_hydration.exit.i.i

__insert_region_hydration.exit.i.i:               ; preds = %do.body12.i.i.i.i, %if.then7.i.i.__insert_region_hydration.exit.i.i_crit_edge
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %h.i38.i.i, ptr %arrayidx.i.i.i, align 4
  %109 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev.i.i.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  %110 = ptrtoint ptr %call.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i.i76.i, align 4
  %hydration_batch_size.i.i.i = getelementptr inbounds %struct.clone, ptr %111, i32 0, i32 20
  %112 = ptrtoint ptr %hydration_batch_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %hydration_batch_size.i.i.i, align 4
  %tobool.not.i41.i.i = icmp eq ptr %batch.sroa.0.098.i, null
  br i1 %tobool.not.i41.i.i, label %__insert_region_hydration.exit.i.i.if.end19.i.i.i_crit_edge, label %if.then.i.i.i18

__insert_region_hydration.exit.i.i.if.end19.i.i.i_crit_edge: ; preds = %__insert_region_hydration.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i.i.i

if.then.i.i.i18:                                  ; preds = %__insert_region_hydration.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %batch.sroa.8.096.i, i32 %113)
  %cmp.i42.i.i = icmp ult i32 %batch.sroa.8.096.i, %113
  br i1 %cmp.i42.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.i18.if.end.i.i.i_crit_edge

if.then.i.i.i18.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i18
  %region_nr.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %batch.sroa.0.098.i, i32 0, i32 1
  %114 = ptrtoint ptr %region_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %region_nr.i.i.i, align 4
  %add.i.i.i = add i32 %115, %batch.sroa.8.096.i
  %116 = ptrtoint ptr %region_nr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %region_nr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %117)
  %cmp5.i.i.i = icmp eq i32 %add.i.i.i, %117
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %list8.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %batch.sroa.0.098.i, i32 0, i32 6
  %prev.i.i44.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %batch.sroa.0.098.i, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %prev.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i44.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i, ptr noundef %119, ptr noundef %list8.i.i.i) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then6.i.i.i.list_add_tail.exit.i.i.i_crit_edge

if.then6.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %prev.i.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %list.i.i.i, ptr %prev.i.i44.i.i, align 4
  %121 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %list8.i.i.i, ptr %list.i.i.i, align 4
  %122 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev.i.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %list.i.i.i, ptr %119, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then6.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %batch.sroa.8.096.i, 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i18.if.end.i.i.i_crit_edge
  %batch.sroa.8.1.i = phi i32 [ %inc.i.i.i, %list_add_tail.exit.i.i.i ], [ %batch.sroa.8.096.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ], [ %batch.sroa.8.096.i, %if.then.i.i.i18.if.end.i.i.i_crit_edge ]
  %hd.addr.0.i.i.i = phi ptr [ null, %list_add_tail.exit.i.i.i ], [ %call.i.i76.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ], [ %call.i.i76.i, %if.then.i.i.i18.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %batch.sroa.8.1.i, i32 %113)
  %cmp11.not.i.i.i = icmp ult i32 %batch.sroa.8.1.i, %113
  %tobool12.not.i.i.i = icmp eq ptr %hd.addr.0.i.i.i, null
  %or.cond.i.i.i = and i1 %cmp11.not.i.i.i, %tobool12.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.__batch_hydration.exit.i.i_crit_edge, label %if.then13.i.i.i

if.end.i.i.i.__batch_hydration.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__batch_hydration.exit.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hydration_copy(ptr noundef nonnull %batch.sroa.0.098.i, i32 noundef %batch.sroa.8.1.i) #11
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then13.i.i.i, %__insert_region_hydration.exit.i.i.if.end19.i.i.i_crit_edge
  %batch.sroa.8.2.i = phi i32 [ %batch.sroa.8.096.i, %__insert_region_hydration.exit.i.i.if.end19.i.i.i_crit_edge ], [ 0, %if.then13.i.i.i ]
  %hd.addr.1.i.i.i = phi ptr [ %call.i.i76.i, %__insert_region_hydration.exit.i.i.if.end19.i.i.i_crit_edge ], [ %hd.addr.0.i.i.i, %if.then13.i.i.i ]
  %tobool20.not.i.i.i = icmp eq ptr %hd.addr.1.i.i.i, null
  br i1 %tobool20.not.i.i.i, label %if.end19.i.i.i.__batch_hydration.exit.i.i_crit_edge, label %if.end22.i.i.i

if.end19.i.i.i.__batch_hydration.exit.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__batch_hydration.exit.i.i

if.end22.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp23.i.i.i = icmp ult i32 %113, 2
  br i1 %cmp23.i.i.i, label %if.then24.i.i.i, label %do.body26.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hydration_copy(ptr noundef nonnull %hd.addr.1.i.i.i, i32 noundef 1) #11
  br label %__batch_hydration.exit.i.i

do.body26.i.i.i:                                  ; preds = %if.end22.i.i.i
  %list27.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd.addr.1.i.i.i, i32 0, i32 6
  %124 = ptrtoint ptr %list27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %list27.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %125, %list27.i.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body26.i.i.i.__batch_hydration.exit.i.i_crit_edge, label %do.body33.i.i.i, !prof !233

do.body26.i.i.i.__batch_hydration.exit.i.i_crit_edge: ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__batch_hydration.exit.i.i

do.body33.i.i.i:                                  ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-clone-target.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1011, 0\0A.popsection", ""() #11, !srcloc !242
  unreachable

__batch_hydration.exit.i.i:                       ; preds = %do.body26.i.i.i.__batch_hydration.exit.i.i_crit_edge, %if.then24.i.i.i, %if.end19.i.i.i.__batch_hydration.exit.i.i_crit_edge, %if.end.i.i.i.__batch_hydration.exit.i.i_crit_edge
  %batch.sroa.8.3.i = phi i32 [ %batch.sroa.8.2.i, %if.end19.i.i.i.__batch_hydration.exit.i.i_crit_edge ], [ %batch.sroa.8.2.i, %if.then24.i.i.i ], [ %batch.sroa.8.1.i, %if.end.i.i.i.__batch_hydration.exit.i.i_crit_edge ], [ 1, %do.body26.i.i.i.__batch_hydration.exit.i.i_crit_edge ]
  %batch.sroa.0.2.i = phi ptr [ null, %if.end19.i.i.i.__batch_hydration.exit.i.i_crit_edge ], [ null, %if.then24.i.i.i ], [ %batch.sroa.0.098.i, %if.end.i.i.i.__batch_hydration.exit.i.i_crit_edge ], [ %hd.addr.1.i.i.i, %do.body26.i.i.i.__batch_hydration.exit.i.i_crit_edge ]
  %add.i.i19 = add i32 %call2.i.i, 1
  br label %__start_next_hydration.exit.i

if.end9.i.i:                                      ; preds = %for.body.i.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #11
  %inc.i.i = add i32 %call2.i.i, 1
  %cmp11.i.i = icmp ult i32 %inc.i.i, %82
  br i1 %cmp11.i.i, label %if.end9.i.i.do.body.i.i_crit_edge, label %if.end9.i.i.do.end.i.i_crit_edge

if.end9.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end9.i.i.do.body.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %if.end9.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %offset.addr.1.i.i = phi i32 [ %82, %do.body.i.i.do.end.i.i_crit_edge ], [ %inc.i.i, %if.end9.i.i.do.end.i.i_crit_edge ]
  %tobool12.not.i.i = icmp eq ptr %call.i.i76.i, null
  br i1 %tobool12.not.i.i, label %do.end.i.i.__start_next_hydration.exit.i_crit_edge, label %if.then13.i.i

do.end.i.i.__start_next_hydration.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__start_next_hydration.exit.i

if.then13.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %call.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i.i76.i, align 4
  %hydration_pool.i45.i.i = getelementptr inbounds %struct.clone, ptr %127, i32 0, i32 12
  call void @mempool_free(ptr noundef nonnull %call.i.i76.i, ptr noundef %hydration_pool.i45.i.i) #11
  br label %__start_next_hydration.exit.i

__start_next_hydration.exit.i:                    ; preds = %if.then13.i.i, %do.end.i.i.__start_next_hydration.exit.i_crit_edge, %__batch_hydration.exit.i.i
  %batch.sroa.8.4.i = phi i32 [ %batch.sroa.8.096.i, %do.end.i.i.__start_next_hydration.exit.i_crit_edge ], [ %batch.sroa.8.096.i, %if.then13.i.i ], [ %batch.sroa.8.3.i, %__batch_hydration.exit.i.i ]
  %batch.sroa.0.3.i = phi ptr [ %batch.sroa.0.098.i, %do.end.i.i.__start_next_hydration.exit.i_crit_edge ], [ %batch.sroa.0.098.i, %if.then13.i.i ], [ %batch.sroa.0.2.i, %__batch_hydration.exit.i.i ]
  %retval.0.i.i = phi i32 [ %offset.addr.1.i.i, %do.end.i.i.__start_next_hydration.exit.i_crit_edge ], [ %offset.addr.1.i.i, %if.then13.i.i ], [ %add.i.i19, %__batch_hydration.exit.i.i ]
  %128 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %flags.i, align 4
  %130 = and i32 %129, 4
  %tobool10.not.i20 = icmp eq i32 %130, 0
  br i1 %tobool10.not.i20, label %__start_next_hydration.exit.i.land.lhs.true.i_crit_edge, label %__start_next_hydration.exit.i.while.end.i21_crit_edge, !prof !233

__start_next_hydration.exit.i.while.end.i21_crit_edge: ; preds = %__start_next_hydration.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i21

__start_next_hydration.exit.i.land.lhs.true.i_crit_edge: ; preds = %__start_next_hydration.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

while.end.i21:                                    ; preds = %__start_next_hydration.exit.i.while.end.i21_crit_edge, %while.body.i.while.end.i21_crit_edge, %land.lhs.true21.i.while.end.i21_crit_edge, %land.lhs.true.i.while.end.i21_crit_edge
  %batch.sroa.8.0.lcssa.i = phi i32 [ %batch.sroa.8.096.i, %while.body.i.while.end.i21_crit_edge ], [ %batch.sroa.8.096.i, %land.lhs.true21.i.while.end.i21_crit_edge ], [ %batch.sroa.8.096.i, %land.lhs.true.i.while.end.i21_crit_edge ], [ %batch.sroa.8.4.i, %__start_next_hydration.exit.i.while.end.i21_crit_edge ]
  %batch.sroa.0.0.lcssa.i = phi ptr [ %batch.sroa.0.098.i, %while.body.i.while.end.i21_crit_edge ], [ %batch.sroa.0.098.i, %land.lhs.true21.i.while.end.i21_crit_edge ], [ %batch.sroa.0.098.i, %land.lhs.true.i.while.end.i21_crit_edge ], [ %batch.sroa.0.3.i, %__start_next_hydration.exit.i.while.end.i21_crit_edge ]
  %offset.0.lcssa.i = phi i32 [ %offset.0100.i, %while.body.i.while.end.i21_crit_edge ], [ %offset.0100.i, %land.lhs.true21.i.while.end.i21_crit_edge ], [ %offset.0100.i, %land.lhs.true.i.while.end.i21_crit_edge ], [ %retval.0.i.i, %__start_next_hydration.exit.i.while.end.i21_crit_edge ]
  %tobool35.not.i = icmp eq ptr %batch.sroa.0.0.lcssa.i, null
  br i1 %tobool35.not.i, label %while.end.i21.if.end39.i_crit_edge, label %if.then36.i

while.end.i21.if.end39.i_crit_edge:               ; preds = %while.end.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then36.i:                                      ; preds = %while.end.i21
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hydration_copy(ptr noundef nonnull %batch.sroa.0.0.lcssa.i, i32 noundef %batch.sroa.8.0.lcssa.i) #11
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %while.end.i21.if.end39.i_crit_edge, %if.end5.i.if.end39.i_crit_edge
  %offset.0.lcssa124.i = phi i32 [ %offset.0.lcssa.i, %if.then36.i ], [ %offset.0.lcssa.i, %while.end.i21.if.end39.i_crit_edge ], [ %68, %if.end5.i.if.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa124.i, i32 %61)
  %cmp40.not.i = icmp ult i32 %offset.0.lcssa124.i, %61
  %spec.store.select.i = select i1 %cmp40.not.i, i32 %offset.0.lcssa124.i, i32 0
  %131 = ptrtoint ptr %hydration_offset.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %spec.store.select.i, ptr %hydration_offset.i, align 8
  %call.i.i75.i = call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !243
  call void @llvm.prefetch.p0(ptr %hydrations_in_flight.i, i32 1, i32 3, i32 1) #11
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hydrations_in_flight.i, ptr %hydrations_in_flight.i, i32 1, ptr elementtype(i32) %hydrations_in_flight.i) #11, !srcloc !244
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then46.i, label %if.end39.i.do_hydration.exit_crit_edge

if.end39.i.do_hydration.exit_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_hydration.exit

if.then46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %hydration_stopped.i.i = getelementptr i8, ptr %work, i32 -280
  call void @__wake_up(ptr noundef %hydration_stopped.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %do_hydration.exit

do_hydration.exit:                                ; preds = %if.then46.i, %if.end39.i.do_hydration.exit_crit_edge, %if.end.i15.do_hydration.exit_crit_edge, %process_deferred_flush_bios.exit.do_hydration.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_waker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq.i = getelementptr i8, ptr %work, i32 -48
  %0 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq.i, align 8
  %worker.i = getelementptr i8, ptr %work, i32 -44
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %worker.i) #11
  %2 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq.i, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 100) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_ctr_args(ptr nocapture noundef writeonly %clone, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef writeonly %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %argc, i32 4) #11
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.error9_crit_edge, label %if.end7.i.i, !prof !236

entry.error9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error9

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.error9_crit_edge, label %for.cond.preheader

if.end7.i.i.error9_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error9

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp28.not = icmp eq i32 %argc, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %argv, i32 %i.029
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %4, i32 noundef 3264) #11
  %arrayidx2 = getelementptr ptr, ptr %call8.i.i, i32 %i.029
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %arrayidx2, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029)
  %tobool6.not30 = icmp eq i32 %i.029, 0
  br i1 %tobool6.not30, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.131 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.029, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.131, -1
  %arrayidx7 = getelementptr ptr, ptr %call8.i.i, i32 %dec
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  tail call void @kfree(ptr noundef %7) #11
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %error9

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %argc
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_ctr_args = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 23
  %8 = ptrtoint ptr %nr_ctr_args to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %argc, ptr %nr_ctr_args, align 8
  %ctr_args = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 24
  %9 = ptrtoint ptr %ctr_args to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %ctr_args, align 4
  br label %cleanup

error9:                                           ; preds = %while.end, %if.end7.i.i.error9_crit_edge, %entry.error9_crit_edge
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.67, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %error9, %for.end
  %retval.0 = phi i32 [ -12, %error9 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_clone_metadata_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_clone_metadata_set_read_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_clone_metadata_set_read_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_device_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_cond_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_discard_bio(ptr noundef %clone, ptr noundef %bio, i1 noundef zeroext %success) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 30
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp ne i32 %and1.i, 0
  %2 = and i1 %tobool.not, %success
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dest_dev.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 2
  %3 = ptrtoint ptr %dest_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dest_dev.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %7 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %8, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %9 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %10, %6
  br i1 %cmp.not.i.i, label %if.then.remap_to_dest.exit_crit_edge, label %if.then.i.i

if.then.remap_to_dest.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %remap_to_dest.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = and i16 %8, -2177
  %11 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_to_dest.exit

remap_to_dest.exit:                               ; preds = %if.then.i.i, %if.then.remap_to_dest.exit_crit_edge
  %12 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %13 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bi_iter.i, align 8
  %region_size.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 5
  %15 = ptrtoint ptr %region_size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %region_size.i, align 8
  %add.i = add i64 %14, -1
  %sub.i = add i64 %add.i, %16
  %conv.i = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp169.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !233

if.then173.i:                                     ; preds = %remap_to_dest.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv174.i = trunc i64 %sub.i to i32
  %div177.i = udiv i32 %conv174.i, %conv.i
  br label %bio_region_range.exit

if.else179.i:                                     ; preds = %remap_to_dest.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub.i) #16, !srcloc !234
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract.t315.i = trunc i64 %asmresult1.i.i to i32
  br label %bio_region_range.exit

bio_region_range.exit:                            ; preds = %if.else179.i, %if.then173.i
  %_r.0.off0.i = phi i32 [ %div177.i, %if.then173.i ], [ %extract.t315.i, %if.else179.i ]
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_size.i, align 8
  %shr190.i = lshr i32 %19, 9
  %conv191.i = zext i32 %shr190.i to i64
  %add192.i = add i64 %14, %conv191.i
  %region_shift.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 6
  %20 = ptrtoint ptr %region_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %region_shift.i, align 8
  %sh_prom193.i = zext i32 %21 to i64
  %shr194.i = lshr i64 %add192.i, %sh_prom193.i
  %conv195.i = trunc i64 %shr194.i to i32
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %conv195.i, i32 %_r.0.off0.i) #11
  %conv.i12 = zext i32 %_r.0.off0.i to i64
  %shl.i15 = shl i64 %conv.i12, %sh_prom193.i
  %shl = shl i32 %22, %21
  %23 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i15, ptr %bi_iter.i, align 8
  %conv.i.i = shl i32 %shl, 9
  %24 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i.i, ptr %bi_size.i, align 8
  tail call void @submit_bio_noacct(ptr noundef %bio) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %bio_region_range.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_clone_changed_this_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @commit_metadata(ptr noundef %clone, ptr noundef writeonly %dest_dev_flushed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dest_dev_flushed, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dest_dev_flushed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dest_dev_flushed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %commit_lock = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %commit_lock, i32 noundef 0) #11
  %cmd = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd, align 8
  %call = tail call zeroext i1 @dm_clone_changed_this_transaction(ptr noundef %2) #11
  br i1 %call, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2:                                          ; preds = %if.end
  %mode.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 29
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end7, label %if.end2.out_crit_edge, !prof !233

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end2
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 8
  %call9 = tail call i32 @dm_clone_metadata_pre_commit(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %if.then17, !prof !233

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__metadata_operation_failed(ptr noundef %clone, ptr noundef nonnull @.str.50, i32 noundef %call9)
  br label %out

if.end18:                                         ; preds = %if.end7
  %dest_dev = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 2
  %7 = ptrtoint ptr %dest_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dest_dev, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call19 = tail call i32 @blkdev_issue_flush(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %if.then27, !prof !233

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__metadata_operation_failed(ptr noundef %clone, ptr noundef nonnull @.str.51, i32 noundef %call19)
  br label %out

if.end28:                                         ; preds = %if.end18
  br i1 %tobool.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dest_dev_flushed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %dest_dev_flushed, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd, align 8
  %call33 = tail call i32 @dm_clone_metadata_commit(ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end42, label %if.then41, !prof !233

if.then41:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__metadata_operation_failed(ptr noundef %clone, ptr noundef nonnull @.str.52, i32 noundef %call33)
  br label %out

if.end42:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 8
  %call44 = tail call zeroext i1 @dm_clone_is_hydration_done(ptr noundef %15) #11
  br i1 %call44, label %if.then45, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clone, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @dm_table_event(ptr noundef %19) #11
  br label %out

out:                                              ; preds = %if.then45, %if.end42.out_crit_edge, %if.then41, %if.then27, %if.then17, %if.end2.out_crit_edge, %if.end.out_crit_edge
  %r.0 = phi i32 [ %call9, %if.then17 ], [ %call19, %if.then27 ], [ %call33, %if.then41 ], [ 0, %if.then45 ], [ 0, %if.end42.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ -1, %if.end2.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %commit_lock) #11
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_metadata_pre_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__metadata_operation_failed(ptr noundef %clone, ptr noundef %op, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clone, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @dm_table_device_name(ptr noundef %3) #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %call.i, ptr noundef %op, i32 noundef %r) #14
  %4 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clone, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i.i = tail call ptr @dm_table_device_name(ptr noundef %7) #11
  %mode.i.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 29
  %8 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %do.end.i, label %entry.__abort_transaction.exit_crit_edge

entry.__abort_transaction.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__abort_transaction.exit

do.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %call.i.i) #14
  %cmd.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd.i, align 8
  %call3.i = tail call i32 @dm_clone_metadata_abort(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.end.i.__abort_transaction.exit_crit_edge, label %do.end7.i

do.end.i.__abort_transaction.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__abort_transaction.exit

do.end7.i:                                        ; preds = %do.end.i
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %call.i.i) #14
  %12 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %mode.i.i, align 8
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd.i, align 8
  tail call void @dm_clone_metadata_set_read_only(ptr noundef %15) #11
  %16 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp9.not.i = icmp eq i32 %13, 2
  br i1 %cmp9.not.i, label %do.end7.i.__abort_transaction.exit_crit_edge, label %if.then10.i

do.end7.i.__abort_transaction.exit_crit_edge:     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__abort_transaction.exit

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clone, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void @dm_table_event(ptr noundef %20) #11
  %21 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clone, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %call.i.i17 = tail call ptr @dm_table_device_name(ptr noundef %24) #11
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %call.i.i17, ptr noundef nonnull @.str.46) #14
  br label %__abort_transaction.exit

__abort_transaction.exit:                         ; preds = %if.then10.i, %do.end7.i.__abort_transaction.exit_crit_edge, %do.end.i.__abort_transaction.exit_crit_edge, %entry.__abort_transaction.exit_crit_edge
  tail call fastcc void @__set_clone_mode(ptr noundef %clone, i32 noundef 1)
  %25 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clone, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %call.i.i5 = tail call ptr @dm_table_device_name(ptr noundef %28) #11
  %29 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i = icmp eq i32 %30, 2
  br i1 %cmp.i, label %__abort_transaction.exit.__reload_in_core_bitset.exit_crit_edge, label %do.end.i11

__abort_transaction.exit.__reload_in_core_bitset.exit_crit_edge: ; preds = %__abort_transaction.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__reload_in_core_bitset.exit

do.end.i11:                                       ; preds = %__abort_transaction.exit
  %call2.i7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %call.i.i5) #14
  %cmd.i8 = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %31 = ptrtoint ptr %cmd.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd.i8, align 8
  %call3.i9 = tail call i32 @dm_clone_reload_in_core_bitset(ptr noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i9)
  %tobool.not.i10 = icmp eq i32 %call3.i9, 0
  br i1 %tobool.not.i10, label %do.end.i11.__reload_in_core_bitset.exit_crit_edge, label %do.end7.i13

do.end.i11.__reload_in_core_bitset.exit_crit_edge: ; preds = %do.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %__reload_in_core_bitset.exit

do.end7.i13:                                      ; preds = %do.end.i11
  %call9.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %call.i.i5) #14
  %33 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %mode.i.i, align 8
  %35 = ptrtoint ptr %cmd.i8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd.i8, align 8
  tail call void @dm_clone_metadata_set_read_only(ptr noundef %36) #11
  %37 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 2, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp9.not.i21 = icmp eq i32 %34, 2
  br i1 %cmp9.not.i21, label %do.end7.i13.__reload_in_core_bitset.exit_crit_edge, label %if.then10.i24

do.end7.i13.__reload_in_core_bitset.exit_crit_edge: ; preds = %do.end7.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %__reload_in_core_bitset.exit

if.then10.i24:                                    ; preds = %do.end7.i13
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clone, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void @dm_table_event(ptr noundef %41) #11
  %42 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clone, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %call.i.i22 = tail call ptr @dm_table_device_name(ptr noundef %45) #11
  %call15.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %call.i.i22, ptr noundef nonnull @.str.46) #14
  br label %__reload_in_core_bitset.exit

__reload_in_core_bitset.exit:                     ; preds = %if.then10.i24, %do.end7.i13.__reload_in_core_bitset.exit_crit_edge, %do.end.i11.__reload_in_core_bitset.exit_crit_edge, %__abort_transaction.exit.__reload_in_core_bitset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_metadata_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_clone_is_hydration_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_metadata_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_reload_in_core_bitset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hydration_copy(ptr noundef %hd, i32 noundef %nr_regions) unnamed_addr #2 align 64 {
entry:
  %from = alloca %struct.dm_io_region, align 8
  %to = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #11
  %0 = ptrtoint ptr %from to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %from, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %to) #11
  %1 = ptrtoint ptr %to to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %to, align 8
  %2 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_regions)
  %tobool.not = icmp eq i32 %nr_regions, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 800, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %region_size25 = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %region_size25 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %region_size25, align 8
  %region_nr = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 1
  %6 = ptrtoint ptr %region_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %region_nr, align 4
  %add = add i32 %7, %nr_regions
  %sub26 = add i32 %nr_regions, -1
  %conv.i = zext i32 %sub26 to i64
  %region_shift.i = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %region_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %region_shift.i, align 8
  %sh_prom.i = zext i32 %9 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %nr_regions27 = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %nr_regions27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_regions27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp eq i32 %add, %11
  br i1 %cmp, label %if.then29, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len, align 8
  %sub30 = add i64 %5, -1
  %and = and i64 %15, %sub30
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool31.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool31.not, i64 %5, i64 %and
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge
  %tail_size.0 = phi i64 [ %spec.select, %if.then29 ], [ %5, %if.end24.if.end34_crit_edge ]
  %add35 = add i64 %tail_size.0, %shl.i
  %source_dev = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %source_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %source_dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %from, align 8
  %conv.i70 = zext i32 %7 to i64
  %shl.i73 = shl i64 %conv.i70, %sh_prom.i
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %from, i32 0, i32 1
  %21 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl.i73, ptr %sector, align 8
  %count = getelementptr inbounds %struct.dm_io_region, ptr %from, i32 0, i32 2
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add35, ptr %count, align 8
  %dest_dev = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %dest_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dest_dev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %to, align 8
  %sector41 = getelementptr inbounds %struct.dm_io_region, ptr %to, i32 0, i32 1
  %28 = ptrtoint ptr %sector41 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %shl.i73, ptr %sector41, align 8
  %count43 = getelementptr inbounds %struct.dm_io_region, ptr %to, i32 0, i32 2
  %29 = ptrtoint ptr %count43 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add35, ptr %count43, align 8
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %hydrations_in_flight, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hydrations_in_flight, ptr %hydrations_in_flight, i32 %nr_regions, ptr elementtype(i32) %hydrations_in_flight) #11, !srcloc !235
  %kcopyd_client = getelementptr inbounds %struct.clone, ptr %3, i32 0, i32 28
  %31 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kcopyd_client, align 4
  call void @dm_kcopyd_copy(ptr noundef %32, ptr noundef nonnull %from, i32 noundef 1, ptr noundef nonnull %to, i32 noundef 0, ptr noundef nonnull @hydration_kcopyd_callback, ptr noundef %hd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %to) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #11
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_find_next_unhydrated_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_clone_is_region_hydrated(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hydration_kcopyd_callback(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #2 align 64 {
entry:
  %batched_hydrations = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %batched_hydrations) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %batched_hydrations, i32 0, i32 1
  %3 = ptrtoint ptr %batched_hydrations to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %batched_hydrations, ptr %batched_hydrations, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %batched_hydrations, ptr %2, align 4
  %5 = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = call i32 @___ratelimit(ptr noundef nonnull @hydration_kcopyd_callback._rs, ptr noundef nonnull @__func__.hydration_kcopyd_callback) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i = call ptr @dm_table_device_name(ptr noundef %10) #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %call.i) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %status.0 = phi i8 [ 10, %do.end ], [ 10, %if.then.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %list = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %context, i32 0, i32 6
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %12, %list
  br i1 %cmp.i.not.i, label %if.end8.list_splice_tail.exit_crit_edge, label %if.then.i

if.end8.list_splice_tail.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %prev2.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %context, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %batched_hydrations, ptr %16, align 4
  store ptr %16, ptr %2, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %if.end8.list_splice_tail.exit_crit_edge
  %status9 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %context, i32 0, i32 5
  %20 = ptrtoint ptr %status9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %status.0, ptr %status9, align 4
  call fastcc void @hydration_complete(ptr noundef %context)
  %21 = ptrtoint ptr %batched_hydrations to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %batched_hydrations, align 4
  %cmp.not44 = icmp eq ptr %22, %batched_hydrations
  br i1 %cmp.not44, label %list_splice_tail.exit.for.end_crit_edge, label %list_splice_tail.exit.for.body_crit_edge

list_splice_tail.exit.for.body_crit_edge:         ; preds = %list_splice_tail.exit
  br label %for.body

list_splice_tail.exit.for.end_crit_edge:          ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_tail.exit.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %22, %list_splice_tail.exit.for.body_crit_edge ]
  %hd.0 = getelementptr i8, ptr %.pn.in45, i32 -28
  %23 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn.in45, align 4
  %status18 = getelementptr i8, ptr %.pn.in45, i32 -4
  %24 = ptrtoint ptr %status18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %status.0, ptr %status18, align 4
  call fastcc void @hydration_complete(ptr noundef %hd.0)
  %cmp.not = icmp eq ptr %.pn, %batched_hydrations
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_tail.exit.for.end_crit_edge
  %flags = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 30
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %for.end.if.end29_crit_edge, label %land.lhs.true

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %for.end
  %ios_in_flight = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ios_in_flight, i32 noundef 4) #11
  %28 = ptrtoint ptr %ios_in_flight to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %ios_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %30 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq.i, align 8
  %worker.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i43 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %worker.i) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true.if.end29_crit_edge, %for.end.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %batched_hydrations) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hydration_complete(ptr noundef %hd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd, align 4
  %mode.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %land.lhs.true.i, label %entry.if.end16.i_crit_edge, !prof !233

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %entry
  %status.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 5
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12.i = icmp eq i8 %5, 0
  br i1 %cmp12.i, label %if.then14.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmd.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd.i, align 8
  %region_nr.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 1
  %8 = ptrtoint ptr %region_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %region_nr.i, align 4
  %call15.i = tail call i32 @dm_clone_set_region_hydrated(ptr noundef %7, i32 noundef %9) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end16.i_crit_edge, %entry.if.end16.i_crit_edge
  %r.1.i = phi i32 [ %call15.i, %if.then14.i ], [ 0, %land.lhs.true.i.if.end16.i_crit_edge ], [ -1, %entry.if.end16.i_crit_edge ]
  %region_nr17.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 1
  %10 = ptrtoint ptr %region_nr17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %region_nr17.i, align 4
  %ht.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %ht.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ht.i.i, align 4
  %mul.i.i.i.i = mul i32 %11, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 17
  %lock.i = getelementptr %struct.hash_table_bucket, ptr %13, i32 %shr.i.i.i, i32 1
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %h.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 7
  %14 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev2.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end16.i.hydration_update_metadata.exit_crit_edge, label %do.body13.i.i.i

if.end16.i.hydration_update_metadata.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hydration_update_metadata.exit

do.body13.i.i.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %pprev14.i.i.i, align 4
  br label %hydration_update_metadata.exit

hydration_update_metadata.exit:                   ; preds = %do.body13.i.i.i, %if.end16.i.hydration_update_metadata.exit_crit_edge
  %20 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %h.i, align 4
  %21 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call23.i) #11
  %status2 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 5
  %22 = ptrtoint ptr %status2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1.i)
  %tobool.not = icmp eq i32 %r.1.i, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else, !prof !246

if.then:                                          ; preds = %hydration_update_metadata.exit
  %overwrite_bio = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 2
  %24 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %overwrite_bio, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then8:                                         ; preds = %if.then
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf.i, align 8
  %28 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef nonnull %25) #11
  br label %if.end

if.end.i:                                         ; preds = %if.then8
  %29 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i42 = icmp eq i32 %30, 0
  br i1 %cmp.not.i42, label %do.body6.i, label %if.then4.i, !prof !233

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %25, i32 0, i32 6
  %31 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %25) #11
  br label %if.end

do.body6.i:                                       ; preds = %if.end.i
  %lock.i43 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 14
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i43) #11
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %25, align 8
  %tail.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %25, ptr %34, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_flush_completions.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %deferred_flush_completions.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %25, ptr %deferred_flush_completions.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %25, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i43, i32 noundef %call10.i) #11
  %wq.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %38 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wq.i.i, align 8
  %worker.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %worker.i.i) #11
  br label %if.end

if.end:                                           ; preds = %bio_list_add.exit.i, %if.then4.i, %if.then.i, %if.then.if.end_crit_edge
  %deferred_bios = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4
  %40 = ptrtoint ptr %deferred_bios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %deferred_bios, align 4
  %cmp.i.not.i = icmp eq ptr %41, null
  br i1 %cmp.i.not.i, label %if.end.if.end21_crit_edge, label %if.then.i.lr.ph.i

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then.i.lr.ph.i:                                ; preds = %if.end
  %tail.i.i44 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4, i32 1
  %cmd.i.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 8
  br label %if.then.i.i45

if.then.i.i45:                                    ; preds = %if.end5.i.if.then.i.i45_crit_edge, %if.then.i.lr.ph.i
  %normal_bios.sroa.0.054.i = phi ptr [ null, %if.then.i.lr.ph.i ], [ %normal_bios.sroa.0.2.i, %if.end5.i.if.then.i.i45_crit_edge ]
  %normal_bios.sroa.5.052.i = phi ptr [ null, %if.then.i.lr.ph.i ], [ %normal_bios.sroa.5.1.i, %if.end5.i.if.then.i.i45_crit_edge ]
  %flush_bios.sroa.0.050.i = phi ptr [ null, %if.then.i.lr.ph.i ], [ %flush_bios.sroa.0.2.i, %if.end5.i.if.then.i.i45_crit_edge ]
  %flush_bios.sroa.5.049.i = phi ptr [ null, %if.then.i.lr.ph.i ], [ %flush_bios.sroa.5.1.i, %if.end5.i.if.then.i.i45_crit_edge ]
  %42 = phi ptr [ %41, %if.then.i.lr.ph.i ], [ %.pr.i, %if.end5.i.if.then.i.i45_crit_edge ]
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = ptrtoint ptr %deferred_bios to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %deferred_bios, align 4
  %tobool4.not.i.i = icmp eq ptr %44, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.then.i.i45.while.body.i_crit_edge

if.then.i.i45.while.body.i_crit_edge:             ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.then5.i.i:                                     ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %tail.i.i44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %tail.i.i44, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.then5.i.i, %if.then.i.i45.while.body.i_crit_edge
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %42, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %42, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_opf.i.i, align 8
  %50 = and i32 %49, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.if.else.i_crit_edge, label %bio_triggers_commit.exit.i

while.body.i.if.else.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

bio_triggers_commit.exit.i:                       ; preds = %while.body.i
  %51 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd.i.i, align 8
  %call1.i.i = tail call zeroext i1 @dm_clone_changed_this_transaction(ptr noundef %52) #11
  br i1 %call1.i.i, label %if.then4.i46, label %bio_triggers_commit.exit.i.if.else.i_crit_edge

bio_triggers_commit.exit.i.if.else.i_crit_edge:   ; preds = %bio_triggers_commit.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then4.i46:                                     ; preds = %bio_triggers_commit.exit.i
  %53 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %42, align 8
  %tobool.not.i24.i = icmp eq ptr %flush_bios.sroa.5.049.i, null
  br i1 %tobool.not.i24.i, label %if.then4.i46.if.end5.i_crit_edge, label %if.then4.i46.if.end5.sink.split.i_crit_edge

if.then4.i46.if.end5.sink.split.i_crit_edge:      ; preds = %if.then4.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split.i

if.then4.i46.if.end5.i_crit_edge:                 ; preds = %if.then4.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.else.i:                                        ; preds = %bio_triggers_commit.exit.i.if.else.i_crit_edge, %while.body.i.if.else.i_crit_edge
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %42, align 8
  %tobool.not.i28.i = icmp eq ptr %normal_bios.sroa.5.052.i, null
  br i1 %tobool.not.i28.i, label %if.else.i.if.end5.i_crit_edge, label %if.else.i.if.end5.sink.split.i_crit_edge

if.else.i.if.end5.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split.i

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.sink.split.i:                             ; preds = %if.else.i.if.end5.sink.split.i_crit_edge, %if.then4.i46.if.end5.sink.split.i_crit_edge
  %normal_bios.sroa.5.052.sink.i = phi ptr [ %flush_bios.sroa.5.049.i, %if.then4.i46.if.end5.sink.split.i_crit_edge ], [ %normal_bios.sroa.5.052.i, %if.else.i.if.end5.sink.split.i_crit_edge ]
  %flush_bios.sroa.5.1.ph.i = phi ptr [ %42, %if.then4.i46.if.end5.sink.split.i_crit_edge ], [ %flush_bios.sroa.5.049.i, %if.else.i.if.end5.sink.split.i_crit_edge ]
  %normal_bios.sroa.5.1.ph.i = phi ptr [ %normal_bios.sroa.5.052.i, %if.then4.i46.if.end5.sink.split.i_crit_edge ], [ %42, %if.else.i.if.end5.sink.split.i_crit_edge ]
  %55 = ptrtoint ptr %normal_bios.sroa.5.052.sink.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %42, ptr %normal_bios.sroa.5.052.sink.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.sink.split.i, %if.else.i.if.end5.i_crit_edge, %if.then4.i46.if.end5.i_crit_edge
  %flush_bios.sroa.5.1.i = phi ptr [ %42, %if.then4.i46.if.end5.i_crit_edge ], [ %flush_bios.sroa.5.049.i, %if.else.i.if.end5.i_crit_edge ], [ %flush_bios.sroa.5.1.ph.i, %if.end5.sink.split.i ]
  %flush_bios.sroa.0.2.i = phi ptr [ %42, %if.then4.i46.if.end5.i_crit_edge ], [ %flush_bios.sroa.0.050.i, %if.else.i.if.end5.i_crit_edge ], [ %flush_bios.sroa.0.050.i, %if.end5.sink.split.i ]
  %normal_bios.sroa.5.1.i = phi ptr [ %normal_bios.sroa.5.052.i, %if.then4.i46.if.end5.i_crit_edge ], [ %42, %if.else.i.if.end5.i_crit_edge ], [ %normal_bios.sroa.5.1.ph.i, %if.end5.sink.split.i ]
  %normal_bios.sroa.0.2.i = phi ptr [ %normal_bios.sroa.0.054.i, %if.then4.i46.if.end5.i_crit_edge ], [ %42, %if.else.i.if.end5.i_crit_edge ], [ %normal_bios.sroa.0.054.i, %if.end5.sink.split.i ]
  %56 = ptrtoint ptr %deferred_bios to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i = load ptr, ptr %deferred_bios, align 4
  %tobool.not.i.i47 = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i47, label %do.body6.i49, label %if.end5.i.if.then.i.i45_crit_edge

if.end5.i.if.then.i.i45_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i45

do.body6.i49:                                     ; preds = %if.end5.i
  %lock.i48 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 14
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i48) #11
  %deferred_bios.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 15
  %tobool.not.i33.i = icmp eq ptr %normal_bios.sroa.0.2.i, null
  br i1 %tobool.not.i33.i, label %do.body6.i49.bio_list_merge.exit.i_crit_edge, label %if.end.i35.i

do.body6.i49.bio_list_merge.exit.i_crit_edge:     ; preds = %do.body6.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_merge.exit.i

if.end.i35.i:                                     ; preds = %do.body6.i49
  %tail.i34.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 15, i32 1
  %57 = ptrtoint ptr %tail.i34.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i34.i, align 4
  %tobool1.not.i.i = icmp eq ptr %58, null
  br i1 %tobool1.not.i.i, label %if.else.i36.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %normal_bios.sroa.0.2.i, ptr %58, align 8
  br label %if.end7.i.i

if.else.i36.i:                                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %deferred_bios.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %normal_bios.sroa.0.2.i, ptr %deferred_bios.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i36.i, %if.then2.i.i
  %61 = ptrtoint ptr %tail.i34.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %normal_bios.sroa.5.1.i, ptr %tail.i34.i, align 4
  br label %bio_list_merge.exit.i

bio_list_merge.exit.i:                            ; preds = %if.end7.i.i, %do.body6.i49.bio_list_merge.exit.i_crit_edge
  %deferred_flush_bios.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 17
  %tobool.not.i37.i = icmp eq ptr %flush_bios.sroa.0.2.i, null
  br i1 %tobool.not.i37.i, label %bio_list_merge.exit.i.bio_list_merge.exit45.i_crit_edge, label %if.end.i40.i

bio_list_merge.exit.i.bio_list_merge.exit45.i_crit_edge: ; preds = %bio_list_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_merge.exit45.i

if.end.i40.i:                                     ; preds = %bio_list_merge.exit.i
  %tail.i38.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 17, i32 1
  %62 = ptrtoint ptr %tail.i38.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i38.i, align 4
  %tobool1.not.i39.i = icmp eq ptr %63, null
  br i1 %tobool1.not.i39.i, label %if.else.i42.i, label %if.then2.i41.i

if.then2.i41.i:                                   ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %flush_bios.sroa.0.2.i, ptr %63, align 8
  br label %if.end7.i44.i

if.else.i42.i:                                    ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %deferred_flush_bios.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %flush_bios.sroa.0.2.i, ptr %deferred_flush_bios.i, align 4
  br label %if.end7.i44.i

if.end7.i44.i:                                    ; preds = %if.else.i42.i, %if.then2.i41.i
  %66 = ptrtoint ptr %tail.i38.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %flush_bios.sroa.5.1.i, ptr %tail.i38.i, align 4
  br label %bio_list_merge.exit45.i

bio_list_merge.exit45.i:                          ; preds = %if.end7.i44.i, %bio_list_merge.exit.i.bio_list_merge.exit45.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i48, i32 noundef %call8.i) #11
  %wq.i.i50 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 25
  %67 = ptrtoint ptr %wq.i.i50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wq.i.i50, align 8
  %worker.i.i51 = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 26
  %call.i.i.i52 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %worker.i.i51) #11
  br label %if.end21

if.else:                                          ; preds = %hydration_update_metadata.exit
  %spec.select = select i1 %tobool.not, i8 %23, i8 10
  %overwrite_bio14 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 2
  %69 = ptrtoint ptr %overwrite_bio14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %overwrite_bio14, align 4
  %tobool15.not = icmp eq ptr %70, null
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %if.then16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.else
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %70, align 8
  %tail.i = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i, align 4
  %tobool.not.i53 = icmp eq ptr %73, null
  br i1 %tobool.not.i53, label %if.else.i55, label %if.then.i54

if.then.i54:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %70, ptr %73, align 8
  br label %bio_list_add.exit

if.else.i55:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_bios17 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4
  %75 = ptrtoint ptr %deferred_bios17 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %70, ptr %deferred_bios17, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i55, %if.then.i54
  %76 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %tail.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %bio_list_add.exit, %if.else.if.end19_crit_edge
  %deferred_bios20 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4
  %77 = ptrtoint ptr %deferred_bios20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %deferred_bios20, align 4
  %tobool.not.i2.i = icmp eq ptr %78, null
  br i1 %tobool.not.i2.i, label %if.end19.if.end21_crit_edge, label %if.then.i.lr.ph.i58

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then.i.lr.ph.i58:                              ; preds = %if.end19
  %tail.i.i57 = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 4, i32 1
  br label %if.then.i.i60

if.then.i.i60:                                    ; preds = %while.body.i63.if.then.i.i60_crit_edge, %if.then.i.lr.ph.i58
  %79 = phi ptr [ %78, %if.then.i.lr.ph.i58 ], [ %87, %while.body.i63.if.then.i.i60_crit_edge ]
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = ptrtoint ptr %deferred_bios20 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %deferred_bios20, align 4
  %tobool4.not.i.i59 = icmp eq ptr %81, null
  br i1 %tobool4.not.i.i59, label %if.then5.i.i61, label %if.then.i.i60.while.body.i63_crit_edge

if.then.i.i60.while.body.i63_crit_edge:           ; preds = %if.then.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i63

if.then5.i.i61:                                   ; preds = %if.then.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %tail.i.i57 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %tail.i.i57, align 4
  br label %while.body.i63

while.body.i63:                                   ; preds = %if.then5.i.i61, %if.then.i.i60.while.body.i63_crit_edge
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %79, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %79, i32 0, i32 6
  %85 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.select, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %79) #11
  %86 = ptrtoint ptr %deferred_bios20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %deferred_bios20, align 4
  %tobool.not.i.i62 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i62, label %while.body.i63.if.end21_crit_edge, label %while.body.i63.if.then.i.i60_crit_edge

while.body.i63.if.then.i.i60_crit_edge:           ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i60

while.body.i63.if.end21_crit_edge:                ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %while.body.i63.if.end21_crit_edge, %if.end19.if.end21_crit_edge, %bio_list_merge.exit45.i, %if.end.if.end21_crit_edge
  %88 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hd, align 4
  %hydration_pool.i = getelementptr inbounds %struct.clone, ptr %89, i32 0, i32 12
  tail call void @mempool_free(ptr noundef %hd, ptr noundef %hydration_pool.i) #11
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @llvm.prefetch.p0(ptr %hydrations_in_flight, i32 1, i32 3, i32 1) #11
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hydrations_in_flight, ptr %hydrations_in_flight, i32 1, ptr elementtype(i32) %hydrations_in_flight) #11, !srcloc !244
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then23, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %hydration_stopped.i = getelementptr inbounds %struct.clone, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %hydration_stopped.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_set_region_hydrated(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @issue_bio(ptr noundef %clone, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %entry.if.then_crit_edge, label %bio_triggers_commit.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bio_triggers_commit.exit:                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 8
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd.i, align 8
  %call1.i = tail call zeroext i1 @dm_clone_changed_this_transaction(ptr noundef %4) #11
  br i1 %call1.i, label %if.end, label %bio_triggers_commit.exit.if.then_crit_edge

bio_triggers_commit.exit.if.then_crit_edge:       ; preds = %bio_triggers_commit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %bio_triggers_commit.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @submit_bio_noacct(ptr noundef %bio) #11
  br label %return

if.end:                                           ; preds = %bio_triggers_commit.exit
  %mode.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 29
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end4, label %if.then3, !prof !233

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %return

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %8 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %10, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %deferred_flush_bios = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 17
  %12 = ptrtoint ptr %deferred_flush_bios to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %deferred_flush_bios, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %wq.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 25
  %14 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq.i, align 8
  %worker.i = getelementptr inbounds %struct.clone, ptr %clone, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %worker.i) #11
  br label %return

return:                                           ; preds = %bio_list_add.exit, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_clone_is_range_hydrated(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hydration_overwrite(ptr noundef %hd, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %overwrite_bio = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 2
  %0 = ptrtoint ptr %overwrite_bio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %overwrite_bio, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %1 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bi_end_io, align 8
  %overwrite_bio_end_io = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %hd, i32 0, i32 3
  %3 = ptrtoint ptr %overwrite_bio_end_io to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %overwrite_bio_end_io, align 4
  store ptr @overwrite_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %4 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hd, ptr %bi_private, align 4
  %5 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hd, align 4
  %hydrations_in_flight = getelementptr inbounds %struct.clone, ptr %6, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hydrations_in_flight, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %hydrations_in_flight, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hydrations_in_flight, ptr %hydrations_in_flight, i32 1, ptr elementtype(i32) %hydrations_in_flight) #11, !srcloc !235
  tail call void @submit_bio_noacct(ptr noundef %bio) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @overwrite_endio(ptr nocapture noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %overwrite_bio_end_io = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %overwrite_bio_end_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %overwrite_bio_end_io, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %4 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bi_end_io, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %5 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bi_status, align 2
  %status = getelementptr inbounds %struct.dm_clone_region_hydration, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %status, align 4
  tail call fastcc void @hydration_complete(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_get_free_metadata_block_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_get_metadata_dev_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_clone_nr_of_hydrated_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !47, !49, !50, !52, !53, !54, !55, !57, !59, !60, !62, !64, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !155, !156, !158, !160, !161, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !207, !209, !211, !213, !214, !215, !216, !218, !220, !221, !222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__param_clone_hydration_throttle, !1, !"__param_clone_hydration_throttle", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-clone-target.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_clone_hydration_throttletype283, !1, !"__UNIQUE_ID_clone_hydration_throttletype283", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_clone_hydration_throttle284, !1, !"__UNIQUE_ID_clone_hydration_throttle284", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dm_clone__293_2231_dm_clone_init6, !5, !"__initcall__kmod_dm_clone__293_2231_dm_clone_init6", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-clone-target.c", i32 2231, i32 1}
!6 = !{ptr @__exitcall_dm_clone_exit, !7, !"__exitcall_dm_clone_exit", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-clone-target.c", i32 2232, i32 1}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-clone-target.c", i32 2234, i32 1}
!10 = !{ptr @__UNIQUE_ID_author295, !11, !"__UNIQUE_ID_author295", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-clone-target.c", i32 2235, i32 1}
!12 = !{ptr @__UNIQUE_ID_file296, !13, !"__UNIQUE_ID_file296", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-clone-target.c", i32 2236, i32 1}
!14 = !{ptr @__UNIQUE_ID_license297, !13, !"__UNIQUE_ID_license297", i1 false, i1 false}
!15 = !{ptr @_hydration_cache, !16, !"_hydration_cache", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-clone-target.c", i32 58, i32 27}
!17 = !{ptr @__param_str_clone_hydration_throttle, !1, !"__param_str_clone_hydration_throttle", i1 false, i1 false}
!18 = !{ptr @dm_kcopyd_throttle, !1, !"dm_kcopyd_throttle", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-clone-target.c", i32 2187, i32 10}
!21 = !{ptr @clone_target, !22, !"clone_target", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-clone-target.c", i32 2186, i32 27}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-clone-target.c", i32 1783, i32 15}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-clone-target.c", i32 1792, i32 15}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-clone-target.c", i32 1824, i32 15}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-clone-target.c", i32 1837, i32 15}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-clone-target.c", i32 1853, i32 15}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-clone-target.c", i32 1861, i32 15}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-clone-target.c", i32 1871, i32 15}
!37 = !{ptr @clone_ctr.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-clone-target.c", i32 1876, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @clone_ctr.__key.9, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-clone-target.c", i32 1877, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-clone-target.c", i32 1885, i32 30}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-clone-target.c", i32 1887, i32 15}
!47 = !{ptr @clone_ctr.__key.13, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-clone-target.c", i32 1892, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @clone_ctr.__key.15, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-clone-target.c", i32 1893, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @clone_ctr.__key.17, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-clone-target.c", i32 1904, i32 15}
!57 = !{ptr @clone_ctr.__key.20, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-clone-target.c", i32 1913, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-clone-target.c", i32 1690, i32 12}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-clone-target.c", i32 1696, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @parse_metadata_dev._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @parse_metadata_dev._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-clone-target.c", i32 1710, i32 12}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-clone-target.c", i32 1717, i32 12}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-clone-target.c", i32 1732, i32 12}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-clone-target.c", i32 1739, i32 12}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-clone-target.c", i32 1643, i32 14}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-clone-target.c", i32 1651, i32 12}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-clone-target.c", i32 1658, i32 12}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-clone-target.c", i32 1551, i32 12}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-clone-target.c", i32 1566, i32 29}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-clone-target.c", i32 1568, i32 36}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-clone-target.c", i32 1571, i32 16}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-clone-target.c", i32 1590, i32 12}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-clone-target.c", i32 1606, i32 15}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-clone-target.c", i32 1614, i32 29}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-clone-target.c", i32 1616, i32 17}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-clone-target.c", i32 1620, i32 36}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-clone-target.c", i32 1622, i32 17}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-clone-target.c", i32 1627, i32 16}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-clone-target.c", i32 165, i32 3}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-clone-target.c", i32 166, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-clone-target.c", i32 167, i32 3}
!110 = !{ptr @__set_clone_mode.descs, !111, !"descs", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-clone-target.c", i32 164, i32 28}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/dm-clone-target.c", i32 191, i32 3}
!114 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @__set_clone_mode._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @__set_clone_mode._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @hash_table_init.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-clone-target.c", i32 591, i32 3}
!119 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-clone-target.c", i32 1148, i32 38}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/md/dm-clone-target.c", i32 1154, i32 38}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-clone-target.c", i32 1163, i32 38}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-clone-target.c", i32 227, i32 2}
!128 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__metadata_operation_failed._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @__metadata_operation_failed._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-clone-target.c", i32 203, i32 2}
!133 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__abort_transaction._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @__abort_transaction._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/md/dm-clone-target.c", i32 205, i32 3}
!138 = !{ptr @__abort_transaction._entry.57, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @__abort_transaction._entry_ptr.59, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/dm-clone-target.c", i32 218, i32 2}
!142 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @__reload_in_core_bitset._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @__reload_in_core_bitset._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-clone-target.c", i32 220, i32 3}
!147 = !{ptr @__reload_in_core_bitset._entry.62, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @__reload_in_core_bitset._entry_ptr.64, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-clone-target.c", i32 771, i32 3}
!151 = !{ptr @hydration_kcopyd_callback._rs, !150, !"_rs", i1 false, i1 false}
!152 = !{ptr @__func__.hydration_kcopyd_callback, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hydration_kcopyd_callback._entry, !150, !"_entry", i1 false, i1 false}
!155 = !{ptr @hydration_kcopyd_callback._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/md/dm-clone-target.c", i32 1771, i32 11}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/md/dm-clone-target.c", i32 486, i32 3}
!160 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @process_discard_bio._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @process_discard_bio._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-clone-target.c", i32 1441, i32 4}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/dm-clone-target.c", i32 1452, i32 4}
!167 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @clone_status._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @clone_status._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/md/dm-clone-target.c", i32 1460, i32 4}
!172 = !{ptr @clone_status._entry.73, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @clone_status._entry_ptr.75, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/dm-clone-target.c", i32 1465, i32 3}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/md/dm-clone-target.c", i32 1479, i32 4}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/md/dm-clone-target.c", i32 1482, i32 4}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/md/dm-clone-target.c", i32 1491, i32 3}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/md/dm-clone-target.c", i32 1492, i32 3}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/md/dm-clone-target.c", i32 1498, i32 3}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/md/dm-clone-target.c", i32 1501, i32 4}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/md/dm-clone-target.c", i32 1512, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/md/dm-clone-target.c", i32 1395, i32 2}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/md/dm-clone-target.c", i32 1398, i32 3}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/md/dm-clone-target.c", i32 1401, i32 3}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/md/dm-clone-target.c", i32 1412, i32 2}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/md/dm-clone-target.c", i32 2151, i32 27}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/md/dm-clone-target.c", i32 2156, i32 27}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/md/dm-clone-target.c", i32 2182, i32 2}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @clone_message._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @clone_message._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-clone-target.c", i32 2042, i32 12}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-clone-target.c", i32 2044, i32 12}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/dm-clone-target.c", i32 2047, i32 3}
!213 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @disable_passdown_if_not_supported._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @disable_passdown_if_not_supported._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/md/dm-clone-target.c", i32 2209, i32 21}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/md/dm-clone-target.c", i32 2215, i32 3}
!220 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @dm_clone_init._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @dm_clone_init._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i32 0, i32 33}
!233 = !{!"branch_weights", i32 2000, i32 1}
!234 = !{i64 2148568991, i64 2148569271, i64 2148569605, i64 2148569939}
!235 = !{i64 2148719206, i64 2148719232, i64 2148719261, i64 2148719295, i64 2148719326, i64 2148719349}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{i64 2148721671, i64 2148721697, i64 2148721726, i64 2148721760, i64 2148721791, i64 2148721814}
!238 = !{i64 2154898590}
!239 = !{!"auto-init"}
!240 = !{i8 0, i8 2}
!241 = !{i64 2154863074}
!242 = !{i64 2154857387, i64 2154857881, i64 2154857424, i64 2154857480, i64 2154857514, i64 2154857538, i64 2154857579, i64 2154857600, i64 2154857628, i64 2154857662}
!243 = !{i64 2148807682}
!244 = !{i64 2148722391, i64 2148722423, i64 2148722452, i64 2148722486, i64 2148722517, i64 2148722540}
!245 = !{i64 2148807911}
!246 = !{!"branch_weights", i32 2000, i32 2002}
