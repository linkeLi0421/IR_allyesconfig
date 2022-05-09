; ModuleID = '/llk/IR_all_yes/drivers/md/dm-raid1.c_pt.bc'
source_filename = "../drivers/md/dm-raid1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dm_dirty_log_type = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mirror_set = type { ptr, %struct.list_head, i64, %struct.spinlock, %struct.bio_list, %struct.bio_list, %struct.bio_list, %struct.bio_list, ptr, ptr, ptr, i64, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.work_struct, i32, [0 x %struct.mirror] }
%struct.bio_list = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mirror = type { ptr, %struct.atomic_t, i32, ptr, i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_raid1_bio_record = type { ptr, %struct.dm_bio_details, i64 }
%struct.dm_bio_details = type { ptr, i32, i32, %struct.bvec_iter, ptr, ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_io_request = type { i32, i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.85 }
%union.anon.85 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }

@__param_str_raid1_resync_throttle = internal constant [32 x i8] c"dm_mirror.raid1_resync_throttle\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dm_kcopyd_throttle = internal global { %struct.dm_kcopyd_throttle, [44 x i8] } { %struct.dm_kcopyd_throttle { i32 100, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__param_raid1_resync_throttle = internal constant %struct.kernel_param { ptr @__param_str_raid1_resync_throttle, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dm_kcopyd_throttle } }, section "__param", align 4
@__UNIQUE_ID_raid1_resync_throttletype280 = internal constant [46 x i8] c"dm_mirror.parmtype=raid1_resync_throttle:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_raid1_resync_throttle281 = internal constant [95 x i8] c"dm_mirror.parm=raid1_resync_throttle:A percentage of time allocated for raid resynchronization\00", section ".modinfo", align 1
@mirror_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 14, i32 0], ptr @mirror_ctr, ptr @mirror_dtr, ptr @mirror_map, ptr null, ptr null, ptr @mirror_end_io, ptr null, ptr @mirror_presuspend, ptr null, ptr @mirror_postsuspend, ptr null, ptr @mirror_resume, ptr @mirror_status, ptr null, ptr null, ptr null, ptr null, ptr @mirror_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_mirror__282_1509_dm_mirror_init6 = internal global ptr @dm_mirror_init, section ".initcall6.init", align 4
@__exitcall_dm_mirror_exit = internal global ptr @dm_mirror_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description283 = internal constant [50 x i8] c"dm_mirror.description=device-mapper mirror target\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [30 x i8] c"dm_mirror.author=Joe Thornber\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [36 x i8] c"dm_mirror.file=drivers/md/dm-mirror\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [22 x i8] c"dm_mirror.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mirror\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid number of mirrors\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Too few mirror arguments\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kmirrord\00", [23 x i8] zeroinitializer }, align 32
@mirror_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: raid1: couldn't start kmirrord\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mirror_ctr\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-raid1.c\00", [42 x i8] zeroinitializer }, align 32
@mirror_ctr._entry_ptr = internal global ptr @mirror_ctr._entry, section ".printk_index", align 4
@mirror_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ms->kmirrord_work)\00", [58 x i8] zeroinitializer }, align 32
@mirror_ctr.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ms->timer)\00", [19 x i8] zeroinitializer }, align 32
@mirror_ctr.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ms->trigger_event)\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too many mirror arguments\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Insufficient mirror log arguments\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid mirror log argument count\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error creating mirror dirty log\00", [32 x i8] zeroinitializer }, align 32
@fail_mirror._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013device-mapper: raid1: Primary mirror (%s) failed while out-of-sync: Reads may fail.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fail_mirror\00", [20 x i8] zeroinitializer }, align 32
@fail_mirror._entry_ptr = internal global ptr @fail_mirror._entry, section ".printk_index", align 4
@fail_mirror._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.7, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014device-mapper: raid1: All sides of mirror have failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@fail_mirror._entry_ptr.21 = internal global ptr @fail_mirror._entry.19, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot allocate mirror context\00", [33 x i8] zeroinitializer }, align 32
@alloc_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ms->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error creating dm_io client\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error creating dirty region hash\00", [63 x i8] zeroinitializer }, align 32
@_kmirrord_recovery_stopped = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @_kmirrord_recovery_stopped, i64 44), ptr getelementptr (i8, ptr @_kmirrord_recovery_stopped, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_kmirrord_recovery_stopped.lock\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid offset\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device lookup failure\00", [42 x i8] zeroinitializer }, align 32
@recovery_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.recovery_complete = private unnamed_addr constant [18 x i8] c"recovery_complete\00", align 1
@recovery_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.recovery_complete, ptr @.str.7, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: raid1: Unable to read primary mirror during recovery\0A\00", [57 x i8] zeroinitializer }, align 32
@recovery_complete._entry_ptr = internal global ptr @recovery_complete._entry, section ".printk_index", align 4
@recovery_complete._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@recovery_complete._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.recovery_complete, ptr @.str.7, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: raid1: Write error during recovery (error = 0x%lx)\0A\00", [59 x i8] zeroinitializer }, align 32
@recovery_complete._entry_ptr.35 = internal global ptr @recovery_complete._entry.33, section ".printk_index", align 4
@read_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.read_callback = private unnamed_addr constant [14 x i8] c"read_callback\00", align 1
@read_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.read_callback, ptr @.str.7, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014device-mapper: raid1: Read failure on mirror device %s.  Trying alternative device.\0A\00", [41 x i8] zeroinitializer }, align 32
@read_callback._entry_ptr = internal global ptr @read_callback._entry, section ".printk_index", align 4
@read_callback._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@read_callback._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.read_callback, ptr @.str.7, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: raid1: Read failure on mirror device %s.  Failing I/O.\0A\00", [55 x i8] zeroinitializer }, align 32
@read_callback._entry_ptr.40 = internal global ptr @read_callback._entry.38, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid number of features\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Not enough arguments to support feature count\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"keep_log\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unrecognised feature requested\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"keep_log feature requires the handle_errors feature\00", [44 x i8] zeroinitializer }, align 32
@mirror_end_io._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mirror_end_io = private unnamed_addr constant [14 x i8] c"mirror_end_io\00", align 1
@mirror_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.mirror_end_io, ptr @.str.7, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013device-mapper: raid1: Mirror read failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@mirror_end_io._entry_ptr = internal global ptr @mirror_end_io._entry, section ".printk_index", align 4
@mirror_end_io._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.mirror_end_io, ptr @.str.7, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: raid1: Mirror read failed from %s. Trying alternative device.\0A\00", [48 x i8] zeroinitializer }, align 32
@mirror_end_io._entry_ptr.50 = internal global ptr @mirror_end_io._entry.48, section ".printk_index", align 4
@mirror_end_io._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.mirror_end_io, ptr @.str.7, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: raid1: All replicated volumes dead, failing I/O\0A\00", [62 x i8] zeroinitializer }, align 32
@mirror_end_io._entry_ptr.53 = internal global ptr @mirror_end_io._entry.51, section ".printk_index", align 4
@mirror_presuspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014device-mapper: raid1: log presuspend failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mirror_presuspend\00", [46 x i8] zeroinitializer }, align 32
@mirror_presuspend._entry_ptr = internal global ptr @mirror_presuspend._entry, section ".printk_index", align 4
@mirror_postsuspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014device-mapper: raid1: log postsuspend failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mirror_postsuspend\00", [45 x i8] zeroinitializer }, align 32
@mirror_postsuspend._entry_ptr = internal global ptr @mirror_postsuspend._entry, section ".printk_index", align 4
@mirror_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014device-mapper: raid1: log resume failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mirror_resume\00", [18 x i8] zeroinitializer }, align 32
@mirror_resume._entry_ptr = internal global ptr @mirror_resume._entry, section ".printk_index", align 4
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llu/%llu 1 %s \00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s %llu\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" handle_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" keep_log\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",nr_mirrors=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",mirror_device_%d=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c",mirror_device_%d_status=%c\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",handle_errors=%c\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",keep_log=%c\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",log_type_status=\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@dm_mirror_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: raid1: Failed to register mirror target\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_mirror_init\00", [17 x i8] zeroinitializer }, align 32
@dm_mirror_init._entry_ptr = internal global ptr @dm_mirror_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"dm_kcopyd_throttle\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 89, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"mirror_target\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1472, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1473, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1078, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1080, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1088, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1120, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1122, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1126, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1127, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1129, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1148, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 976, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 981, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 995, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 239, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 248, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 885, i32 15 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 889, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 906, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 916, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"_kmirrord_recovery_stopped\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 33, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 943, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 945, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 952, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 305, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 310, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 521, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 528, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1016, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1025, i32 15 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1030, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1032, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1035, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1044, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1266, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1272, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1291, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1335, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1353, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1364, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1404, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1406, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1411, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1422, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1424, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1430, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1432, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1434, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1440, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1441, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1443, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1444, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1448, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1449, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1451, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1453, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [25 x i8] c"../drivers/md/dm-raid1.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1493, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__UNIQUE_ID_raid1_resync_throttle281, ptr @__UNIQUE_ID_raid1_resync_throttletype280, ptr @__exitcall_dm_mirror_exit, ptr @__initcall__kmod_dm_mirror__282_1509_dm_mirror_init6, ptr @__param_raid1_resync_throttle, ptr @dm_mirror_exit, ptr @dm_mirror_init._entry, ptr @dm_mirror_init._entry_ptr, ptr @fail_mirror._entry, ptr @fail_mirror._entry.19, ptr @fail_mirror._entry_ptr, ptr @fail_mirror._entry_ptr.21, ptr @mirror_ctr._entry, ptr @mirror_ctr._entry_ptr, ptr @mirror_end_io._entry, ptr @mirror_end_io._entry.48, ptr @mirror_end_io._entry.51, ptr @mirror_end_io._entry_ptr, ptr @mirror_end_io._entry_ptr.50, ptr @mirror_end_io._entry_ptr.53, ptr @mirror_postsuspend._entry, ptr @mirror_postsuspend._entry_ptr, ptr @mirror_presuspend._entry, ptr @mirror_presuspend._entry_ptr, ptr @mirror_resume._entry, ptr @mirror_resume._entry_ptr, ptr @read_callback._entry, ptr @read_callback._entry.38, ptr @read_callback._entry_ptr, ptr @read_callback._entry_ptr.40, ptr @recovery_complete._entry, ptr @recovery_complete._entry.33, ptr @recovery_complete._entry_ptr, ptr @recovery_complete._entry_ptr.35, ptr @dm_kcopyd_throttle, ptr @mirror_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mirror_ctr.__key, ptr @.str.8, ptr @mirror_ctr.__key.9, ptr @.str.10, ptr @mirror_ctr.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @alloc_context.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @_kmirrord_recovery_stopped, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @recovery_complete._rs, ptr @.str.30, ptr @.str.31, ptr @recovery_complete._rs.32, ptr @.str.34, ptr @read_callback._rs, ptr @.str.36, ptr @read_callback._rs.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mirror_end_io._rs, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_kcopyd_throttle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_ctr.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_ctr.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_mirror._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_mirror._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_kmirrord_recovery_stopped to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovery_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovery_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovery_complete._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovery_complete._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_callback._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_callback._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_end_io._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_end_io._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_end_io._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_presuspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_postsuspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_mirror_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_mirror_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dm_unregister_target(ptr noundef nonnull @mirror_target) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_mirror_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @mirror_target) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirror_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %offset.i = alloca i64, align 8
  %dummy.i155 = alloca i8, align 1
  %param_count.i = alloca i32, align 4
  %dummy.i = alloca i8, align 1
  %nr_mirrors = alloca i32, align 4
  %args_used = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_mirrors) #11
  %0 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_mirrors, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args_used) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #11
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_count.i) #11
  %2 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %param_count.i, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i) #11
  %3 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dummy.i, align 1, !annotation !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.i = icmp ult i32 %argc, 2
  br i1 %cmp.i, label %entry.create_dirty_log.exit.thread_crit_edge, label %if.end.i

entry.create_dirty_log.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_dirty_log.exit.thread

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %param_count.i, ptr noundef nonnull %dummy.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i.create_dirty_log.exit.thread_crit_edge

if.end.i.create_dirty_log.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_dirty_log.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param_count.i, align 4
  %add.i = add i32 %7, 2
  %8 = ptrtoint ptr %args_used to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %args_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %argc)
  %cmp5.i = icmp ugt i32 %add.i, %argc
  br i1 %cmp5.i, label %if.end4.i.create_dirty_log.exit.thread_crit_edge, label %if.end8.i

if.end4.i.create_dirty_log.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_dirty_log.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %9 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %argv, align 4
  %add.ptr.i = getelementptr ptr, ptr %argv, i32 2
  %call10.i = call ptr @dm_dirty_log_create(ptr noundef %10, ptr noundef %ti, ptr noundef nonnull @mirror_flush, i32 noundef %7, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %if.end8.i.create_dirty_log.exit.thread_crit_edge, label %if.end

if.end8.i.create_dirty_log.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_dirty_log.exit.thread

create_dirty_log.exit.thread:                     ; preds = %if.end8.i.create_dirty_log.exit.thread_crit_edge, %if.end4.i.create_dirty_log.exit.thread_crit_edge, %if.end.i.create_dirty_log.exit.thread_crit_edge, %entry.create_dirty_log.exit.thread_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.14, %entry.create_dirty_log.exit.thread_crit_edge ], [ @.str.15, %if.end.i.create_dirty_log.exit.thread_crit_edge ], [ @.str.14, %if.end4.i.create_dirty_log.exit.thread_crit_edge ], [ @.str.16, %if.end8.i.create_dirty_log.exit.thread_crit_edge ]
  %error12.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %11 = ptrtoint ptr %error12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.str.16.sink.i, ptr %error12.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_count.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_count.i) #11
  %12 = ptrtoint ptr %args_used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %args_used, align 4
  %add.ptr = getelementptr ptr, ptr %argv, i32 %13
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %argc)
  %tobool1.not = icmp eq i32 %13, %argc
  br i1 %tobool1.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull %nr_mirrors, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %lor.lhs.false3, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_mirrors, align 4
  %18 = add i32 %17, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %18)
  %19 = icmp ult i32 %18, -8
  br i1 %19, label %lor.lhs.false3.if.then7_crit_edge, label %if.end8

lor.lhs.false3.if.then7_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false3.if.then7_crit_edge, %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %error, align 8
  call void @dm_dirty_log_destroy(ptr noundef nonnull %call10.i) #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false3
  %incdec.ptr = getelementptr ptr, ptr %add.ptr, i32 1
  %21 = xor i32 %13, -1
  %dec = add i32 %21, %argc
  %mul = shl nuw nsw i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %mul)
  %cmp9 = icmp ult i32 %dec, %mul
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %error11 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %22 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.3, ptr %error11, align 8
  call void @dm_dirty_log_destroy(ptr noundef nonnull %call10.i) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %23 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call10.i, align 4
  %get_region_size = getelementptr inbounds %struct.dm_dirty_log_type, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %get_region_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_region_size, align 4
  %call13 = call i32 %26(ptr noundef nonnull %call10.i) #11
  %27 = mul nuw nsw i32 %17, 24
  %spec.select.i.i175 = add nuw nsw i32 %27, 288
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i175, i32 noundef 3520) #15
  %tobool.not.i151 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i151, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %error.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.22, ptr %error.i, align 8
  br label %if.then16

do.body.i:                                        ; preds = %if.end12
  %lock.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @alloc_context.__key, i16 noundef signext 3) #11
  %reads.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 4
  %29 = call ptr @memset(ptr %reads.i, i32 0, i32 32)
  %30 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ti, ptr %call9.i.i.i, align 128
  %nr_mirrors4.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 22
  %31 = ptrtoint ptr %nr_mirrors4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %17, ptr %nr_mirrors4.i, align 4
  %len.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %len.i, align 8
  %conv.i = zext i32 %call13 to i64
  %add.i152 = add nsw i64 %conv.i, -1
  %sub.i = add i64 %33, %add.i152
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp176.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp176.i, label %if.then180.i, label %if.else186.i, !prof !190

if.then180.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv181.i = trunc i64 %sub.i to i32
  %div184.i = udiv i32 %conv181.i, %call13
  %conv185.i = zext i32 %div184.i to i64
  br label %if.end190.i

if.else186.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call13, i64 %sub.i) #16, !srcloc !191
  %asmresult1.i.i = extractvalue { i64, i64 } %34, 1
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.else186.i, %if.then180.i
  %_r.0.i = phi i64 [ %conv185.i, %if.then180.i ], [ %asmresult1.i.i, %if.else186.i ]
  %nr_regions.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %_r.0.i, ptr %nr_regions.i, align 16
  %in_sync.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 12
  %36 = ptrtoint ptr %in_sync.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %in_sync.i, align 8
  %log_failure.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 13
  %37 = ptrtoint ptr %log_failure.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %log_failure.i, align 4
  %leg_failure.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 14
  %38 = ptrtoint ptr %leg_failure.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %leg_failure.i, align 128
  %suspend.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspend.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %suspend.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %suspend.i, align 4
  %default_mirror.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 16
  %call.i.i319.i = call zeroext i1 @__kasan_check_write(ptr noundef %default_mirror.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %default_mirror.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %default_mirror.i, align 8
  %call193.i = call ptr @dm_io_client_create() #11
  %io_client.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %io_client.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call193.i, ptr %io_client.i, align 4
  %cmp.i.i = icmp ugt ptr %call193.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then196.i, label %if.end198.i

if.then196.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  %error197.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %42 = ptrtoint ptr %error197.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.24, ptr %error197.i, align 8
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %if.then16

if.end198.i:                                      ; preds = %if.end190.i
  %43 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call9.i.i.i, align 128
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %begin.i, align 8
  %47 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %nr_regions.i, align 16
  %call201.i = call ptr @dm_region_hash_create(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @dispatch_bios, ptr noundef nonnull @wakeup_mirrord, ptr noundef nonnull @wakeup_all_recovery_waiters, i64 noundef %46, i32 noundef 1, ptr noundef nonnull %call10.i, i32 noundef %call13, i64 noundef %48) #11
  %rh.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %rh.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call201.i, ptr %rh.i, align 4
  %cmp.i324.i = icmp ugt ptr %call201.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324.i, label %if.then204.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end198.i
  %50 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp18183.not = icmp eq i32 %51, 0
  br i1 %cmp18183.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then204.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #13
  %error205.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %52 = ptrtoint ptr %error205.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.25, ptr %error205.i, align 8
  %53 = ptrtoint ptr %io_client.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_client.i, align 4
  call void @dm_io_client_destroy(ptr noundef %54) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %if.then16

if.then16:                                        ; preds = %if.then204.i, %if.then196.i, %if.then.i
  call void @dm_dirty_log_destroy(ptr noundef nonnull %call10.i) #11
  br label %cleanup

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %argc.addr.0186 = phi i32 [ %sub24, %if.end22.for.body_crit_edge ], [ %dec, %for.cond.preheader.for.body_crit_edge ]
  %argv.addr.0185 = phi ptr [ %add.ptr23, %if.end22.for.body_crit_edge ], [ %incdec.ptr, %for.cond.preheader.for.body_crit_edge ]
  %m.0184 = phi i32 [ %inc, %if.end22.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i) #11
  %55 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %offset.i, align 8, !annotation !189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy.i155) #11
  %56 = ptrtoint ptr %dummy.i155 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %dummy.i155, align 1, !annotation !189
  %arrayidx.i156 = getelementptr ptr, ptr %argv.addr.0185, i32 1
  %57 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i156, align 4
  %call.i157 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %58, ptr noundef nonnull @.str.27, ptr noundef nonnull %offset.i, ptr noundef nonnull %dummy.i155) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i157)
  %cmp.not.i = icmp eq i32 %call.i157, 1
  br i1 %cmp.not.i, label %if.end.i161, label %for.body.if.then21_crit_edge

for.body.if.then21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.end.i161:                                      ; preds = %for.body
  %59 = ptrtoint ptr %argv.addr.0185 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %argv.addr.0185, align 4
  %61 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ti, align 8
  %call3.i = call i32 @dm_table_get_mode(ptr noundef %62) #11
  %dev.i = getelementptr %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 23, i32 %m.0184, i32 3
  %call6.i = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %60, i32 noundef %call3.i, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i160 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i160, label %if.end22, label %if.end.i161.if.then21_crit_edge

if.end.i161.if.then21_crit_edge:                  ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %if.end.i161.if.then21_crit_edge, %for.body.if.then21_crit_edge
  %.str.28.sink = phi ptr [ @.str.28, %for.body.if.then21_crit_edge ], [ @.str.29, %if.end.i161.if.then21_crit_edge ]
  %retval.0.i163.ph = phi i32 [ -22, %for.body.if.then21_crit_edge ], [ %call6.i, %if.end.i161.if.then21_crit_edge ]
  %error.i158 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %63 = ptrtoint ptr %error.i158 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %.str.28.sink, ptr %error.i158, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i155) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i) #11
  call fastcc void @free_context(ptr noundef nonnull %call9.i.i.i, ptr noundef %ti, i32 noundef %m.0184)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i161
  %arrayidx5.i = getelementptr %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 23, i32 %m.0184
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i.i, ptr %arrayidx5.i, align 8
  %error_count.i = getelementptr %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 23, i32 %m.0184, i32 1
  %call.i.i.i162 = call zeroext i1 @__kasan_check_write(ptr noundef %error_count.i, i32 noundef 4) #11
  %65 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %error_count.i, align 4
  %error_type.i = getelementptr %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 23, i32 %m.0184, i32 2
  %66 = ptrtoint ptr %error_type.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %error_type.i, align 8
  %67 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %offset.i, align 8
  %offset19.i = getelementptr %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 23, i32 %m.0184, i32 4
  %69 = ptrtoint ptr %offset19.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %offset19.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy.i155) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i) #11
  %add.ptr23 = getelementptr ptr, ptr %argv.addr.0185, i32 2
  %sub24 = add i32 %argc.addr.0186, -2
  %inc = add nuw i32 %m.0184, 1
  %70 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_mirrors, align 4
  %cmp18 = icmp ult i32 %inc, %71
  br i1 %cmp18, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %argv.addr.0.lcssa = phi ptr [ %incdec.ptr, %for.cond.preheader.for.end_crit_edge ], [ %add.ptr23, %if.end22.for.end_crit_edge ]
  %argc.addr.0.lcssa = phi i32 [ %dec, %for.cond.preheader.for.end_crit_edge ], [ %sub24, %if.end22.for.end_crit_edge ]
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %72 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i.i.i, ptr %private, align 4
  %73 = ptrtoint ptr %rh.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rh.i, align 4
  %call25 = call i64 @dm_rh_get_region_size(ptr noundef %74) #11
  %call26 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.end.err_free_context_crit_edge

for.end.err_free_context_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_context

if.end29:                                         ; preds = %for.end
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %75 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %76 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %num_discard_bios, align 8
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %77 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 56, ptr %per_io_data_size, align 8
  %call30 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef 0) #11
  %kmirrord_wq = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 17
  %78 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call30, ptr %kmirrord_wq, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %do.end, label %do.body36

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %err_free_context

do.body36:                                        ; preds = %if.end29
  %kmirrord_work = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 18
  call void @__init_work(ptr noundef %kmirrord_work, i32 noundef 0) #11
  %79 = ptrtoint ptr %kmirrord_work to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -64, ptr %kmirrord_work, align 16
  %lockdep_map = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 18, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @mirror_ctr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry40 = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 18, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %entry40, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 18, i32 2
  %82 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @do_mirror, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 19
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_wake_fn, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @mirror_ctr.__key.9) #11
  %timer_pending = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 20
  %83 = ptrtoint ptr %timer_pending to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %timer_pending, align 4
  %trigger_event = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 21
  call void @__init_work(ptr noundef %trigger_event, i32 noundef 0) #11
  %84 = ptrtoint ptr %trigger_event to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -64, ptr %trigger_event, align 16
  %lockdep_map53 = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 21, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map53, ptr noundef nonnull @.str.12, ptr noundef nonnull @mirror_ctr.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry55 = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 21, i32 1
  %85 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i164 = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 21, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i164 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %entry55, ptr %prev.i164, align 8
  %func57 = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 21, i32 2
  %87 = ptrtoint ptr %func57 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @trigger_event, ptr %func57, align 4
  %call60 = call fastcc i32 @parse_features(ptr noundef nonnull %call9.i.i.i, i32 noundef %argc.addr.0.lcssa, ptr noundef %argv.addr.0.lcssa, ptr noundef nonnull %args_used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %do.body36.err_destroy_wq_crit_edge

do.body36.err_destroy_wq_crit_edge:               ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_wq

if.end63:                                         ; preds = %do.body36
  %88 = ptrtoint ptr %args_used to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %args_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %argc.addr.0.lcssa, i32 %89)
  %tobool66.not = icmp eq i32 %argc.addr.0.lcssa, %89
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %error68 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %90 = ptrtoint ptr %error68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.13, ptr %error68, align 8
  br label %err_destroy_wq

if.end69:                                         ; preds = %if.end63
  %call70 = call ptr @dm_kcopyd_client_create(ptr noundef nonnull @dm_kcopyd_throttle) #11
  %kcopyd_client = getelementptr inbounds %struct.mirror_set, ptr %call9.i.i.i, i32 0, i32 9
  %91 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call70, ptr %kcopyd_client, align 8
  %cmp.i165 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %call70 to i32
  br label %err_destroy_wq

if.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %kmirrord_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %kmirrord_work) #11
  br label %cleanup

err_destroy_wq:                                   ; preds = %if.then73, %if.then67, %do.body36.err_destroy_wq_crit_edge
  %r.0 = phi i32 [ %call60, %do.body36.err_destroy_wq_crit_edge ], [ -22, %if.then67 ], [ %92, %if.then73 ]
  %95 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %kmirrord_wq, align 4
  call void @destroy_workqueue(ptr noundef %96) #11
  br label %err_free_context

err_free_context:                                 ; preds = %err_destroy_wq, %do.end, %for.end.err_free_context_crit_edge
  %r.1 = phi i32 [ %call26, %for.end.err_free_context_crit_edge ], [ %r.0, %err_destroy_wq ], [ -12, %do.end ]
  %97 = ptrtoint ptr %nr_mirrors4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_mirrors4.i, align 4
  call fastcc void @free_context(ptr noundef nonnull %call9.i.i.i, ptr noundef %ti, i32 noundef %98)
  br label %cleanup

cleanup:                                          ; preds = %err_free_context, %if.end76, %if.then21, %if.then16, %if.then10, %if.then7, %create_dirty_log.exit.thread
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then10 ], [ %retval.0.i163.ph, %if.then21 ], [ %r.1, %err_free_context ], [ 0, %if.end76 ], [ -12, %if.then16 ], [ -22, %create_dirty_log.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args_used) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_mirrors) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mirror_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %timer = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 19
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %kmirrord_wq = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmirrord_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #11
  %trigger_event = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 21
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %trigger_event) #11
  %kcopyd_client = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kcopyd_client, align 8
  tail call void @dm_kcopyd_client_destroy(ptr noundef %5) #11
  %6 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmirrord_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #11
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not5.i = icmp eq i32 %9, 0
  br i1 %tobool.not5.i, label %entry.free_context.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.free_context.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_context.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %m.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %9, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %m.addr.06.i, -1
  %dev.i = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %dec.i, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %11) #11
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.free_context.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.free_context.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_context.exit

free_context.exit:                                ; preds = %while.body.i.free_context.exit_crit_edge, %entry.free_context.exit_crit_edge
  %io_client.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %io_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_client.i, align 4
  tail call void @dm_io_client_destroy(ptr noundef %13) #11
  %rh.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rh.i, align 4
  tail call void @dm_region_hash_destroy(ptr noundef %15) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirror_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %rh = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rh, align 4
  %call1 = tail call ptr @dm_rh_dirty_log(ptr noundef %5) #11
  %call2 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 56) #11
  %details = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %details to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %details, align 4
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rh, align 4
  %call4 = tail call i64 @dm_rh_bio_to_region(ptr noundef %8, ptr noundef %bio) #11
  %write_region = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %write_region to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call4, ptr %write_region, align 8
  %writes.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %10 = ptrtoint ptr %writes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %writes.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %12 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bio, align 8
  %tail.i.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bio, ptr %14, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %writes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bio, ptr %writes.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bio, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool.not.i, label %if.then.i, label %bio_list_add.exit.i.cleanup_crit_edge

bio_list_add.exit.i.cleanup_crit_edge:            ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %kmirrord_wq.i.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %kmirrord_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kmirrord_wq.i.i, align 4
  %kmirrord_work.i.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %kmirrord_work.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %in_sync = getelementptr inbounds %struct.dm_dirty_log_type, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_sync, align 4
  %24 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rh, align 4
  %call6 = tail call i64 @dm_rh_bio_to_region(ptr noundef %25, ptr noundef %bio) #11
  %call7 = tail call i32 %23(ptr noundef %call1, i64 noundef %call6, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call7)
  %cmp9.not = icmp eq i32 %call7, -11
  %or.cond = or i1 %cmp8, %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %26 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %if.end19 [
    i32 0, label %if.end11.if.then13_crit_edge
    i32 -11, label %if.end11.if.then13_crit_edge92
  ]

if.end11.if.then13_crit_edge92:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.end11.if.then13_crit_edge92
  %27 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_opf, align 8
  %29 = and i32 %28, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %reads.i60 = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 4
  %lock.i62 = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 3
  %call3.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i62) #11
  %30 = ptrtoint ptr %reads.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reads.i60, align 4
  %tobool.not.i64 = icmp eq ptr %31, null
  %32 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %bio, align 8
  %tail.i.i65 = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %tail.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i65, align 4
  %tobool.not.i.i66 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i66, label %if.else.i.i68, label %if.then.i.i67

if.then.i.i67:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %bio, ptr %34, align 8
  br label %bio_list_add.exit.i69

if.else.i.i68:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %reads.i60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %bio, ptr %reads.i60, align 4
  br label %bio_list_add.exit.i69

bio_list_add.exit.i69:                            ; preds = %if.else.i.i68, %if.then.i.i67
  %37 = ptrtoint ptr %tail.i.i65 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %bio, ptr %tail.i.i65, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i62, i32 noundef %call3.i63) #11
  br i1 %tobool.not.i64, label %if.then.i73, label %bio_list_add.exit.i69.cleanup_crit_edge

bio_list_add.exit.i69.cleanup_crit_edge:          ; preds = %bio_list_add.exit.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i73:                                      ; preds = %bio_list_add.exit.i69
  call void @__sanitizer_cov_trace_pc() #13
  %kmirrord_wq.i.i70 = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 17
  %38 = ptrtoint ptr %kmirrord_wq.i.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kmirrord_wq.i.i70, align 4
  %kmirrord_work.i.i71 = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 18
  %call.i.i.i72 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %kmirrord_work.i.i71) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %default_mirror.i.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mirror_set, ptr %3, i32 0, i32 23, i32 %41
  %mirror.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 23
  %nr_mirrors.i = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 22
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end19
  %m.0.i = phi ptr [ %arrayidx.i.i, %if.end19 ], [ %m.1.i, %do.cond.i.do.body.i_crit_edge ]
  %error_count.i = getelementptr inbounds %struct.mirror, ptr %m.0.i, i32 0, i32 1
  %call.i.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i76 = icmp eq i32 %43, 0
  br i1 %tobool.not.i76, label %choose_mirror.exit, label %if.end.i, !prof !190

if.end.i:                                         ; preds = %do.body.i
  %incdec.ptr.i = getelementptr %struct.mirror, ptr %m.0.i, i32 -1
  %cmp.i = icmp eq ptr %m.0.i, %mirror.i
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr.i = getelementptr %struct.mirror, ptr %incdec.ptr.i, i32 %45
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then5.i, %if.end.i.do.cond.i_crit_edge
  %m.1.i = phi ptr [ %add.ptr.i, %if.then5.i ], [ %incdec.ptr.i, %if.end.i.do.cond.i_crit_edge ]
  %call.i.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i3.i = getelementptr %struct.mirror_set, ptr %3, i32 0, i32 23, i32 %47
  %cmp8.not.i = icmp eq ptr %m.1.i, %arrayidx.i3.i
  br i1 %cmp8.not.i, label %do.cond.i.cleanup_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

choose_mirror.exit:                               ; preds = %do.body.i
  %tobool21.not = icmp eq ptr %m.0.i, null
  br i1 %tobool21.not, label %choose_mirror.exit.cleanup_crit_edge, label %if.end26, !prof !192

choose_mirror.exit.cleanup_crit_edge:             ; preds = %choose_mirror.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %choose_mirror.exit
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %48 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_bdev.i, align 4
  %50 = ptrtoint ptr %details to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %details, align 4
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %51 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bi_flags.i, align 4
  %conv.i = zext i16 %52 to i32
  %bi_flags2.i = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %bi_flags2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv.i, ptr %bi_flags2.i, align 4
  %bi_iter.i = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1, i32 3
  %bi_iter3.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %54 = call ptr @memcpy(ptr %bi_iter.i, ptr %bi_iter3.i, i32 20)
  %__bi_remaining.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 7
  %call.i.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %__bi_remaining.i, i32 noundef 4) #11
  %55 = ptrtoint ptr %__bi_remaining.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %__bi_remaining.i, align 4
  %__bi_remaining4.i = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %__bi_remaining4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %__bi_remaining4.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %58 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bi_end_io.i, align 8
  %bi_end_io5.i = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %bi_end_io5.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %bi_end_io5.i, align 4
  %61 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_opf, align 8
  %63 = and i32 %62, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i78 = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i78, label %if.end26.dm_bio_record.exit_crit_edge, label %if.then.i.i79

if.end26.dm_bio_record.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %dm_bio_record.exit

if.then.i.i79:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %64 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  br label %dm_bio_record.exit

dm_bio_record.exit:                               ; preds = %if.then.i.i79, %if.end26.dm_bio_record.exit_crit_edge
  %retval.0.i.i = phi ptr [ %66, %if.then.i.i79 ], [ null, %if.end26.dm_bio_record.exit_crit_edge ]
  %bi_integrity.i = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call2, i32 0, i32 1, i32 5
  %67 = ptrtoint ptr %bi_integrity.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i.i, ptr %bi_integrity.i, align 4
  %68 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %m.0.i, ptr %call2, align 8
  %dev.i = getelementptr inbounds %struct.mirror, ptr %m.0.i, i32 0, i32 3
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bi_flags.i, align 4
  %conv1.i.i.i = and i16 %74, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i, align 4
  %75 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i.i = icmp eq ptr %76, %72
  br i1 %cmp.not.i.i, label %dm_bio_record.exit.bio_set_dev.exit.i_crit_edge, label %if.then.i.i80

dm_bio_record.exit.bio_set_dev.exit.i_crit_edge:  ; preds = %dm_bio_record.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit.i

if.then.i.i80:                                    ; preds = %dm_bio_record.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = and i16 %74, -2177
  %77 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i80, %dm_bio_record.exit.bio_set_dev.exit.i_crit_edge
  %78 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %72, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #11
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i81 = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i81, label %bio_set_dev.exit.i.map_bio.exit_crit_edge, label %if.end.i.i, !prof !192

bio_set_dev.exit.i.map_bio.exit_crit_edge:        ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bio.exit

if.end.i.i:                                       ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i.i = getelementptr inbounds %struct.mirror, ptr %m.0.i, i32 0, i32 4
  %81 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %offset.i.i, align 8
  %83 = ptrtoint ptr %bi_iter3.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %bi_iter3.i, align 8
  %85 = ptrtoint ptr %m.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %m.0.i, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %begin.i.i = getelementptr inbounds %struct.dm_target, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %begin.i.i, align 8
  %sub.i.i = add i64 %84, %82
  %add.i.i = sub i64 %sub.i.i, %90
  br label %map_bio.exit

map_bio.exit:                                     ; preds = %if.end.i.i, %bio_set_dev.exit.i.map_bio.exit_crit_edge
  %retval.0.i.i82 = phi i64 [ %add.i.i, %if.end.i.i ], [ 0, %bio_set_dev.exit.i.map_bio.exit_crit_edge ]
  %91 = ptrtoint ptr %bi_iter3.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %retval.0.i.i82, ptr %bi_iter3.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %map_bio.exit, %choose_mirror.exit.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %if.then.i73, %bio_list_add.exit.i69.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i, %bio_list_add.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %map_bio.exit ], [ 4, %if.end.cleanup_crit_edge ], [ 4, %if.then13.cleanup_crit_edge ], [ 4, %choose_mirror.exit.cleanup_crit_edge ], [ 0, %bio_list_add.exit.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %bio_list_add.exit.i69.cleanup_crit_edge ], [ 0, %if.then.i73 ], [ 4, %do.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirror_end_io(ptr nocapture noundef readonly %ti, ptr noundef %bio, ptr nocapture noundef readonly %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call1 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 56) #11
  br i1 %tobool.i.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  %and5 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 3
  %or.cond = or i1 %tobool.not, %cmp6.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %rh = getelementptr inbounds %struct.mirror_set, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rh, align 4
  %write_region = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call1, i32 0, i32 2
  %9 = ptrtoint ptr %write_region to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %write_region, align 8
  tail call void @dm_rh_dec(ptr noundef %8, i64 noundef %10) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp11 = icmp eq i8 %12, 1
  br i1 %cmp11, label %if.end9.out_crit_edge, label %if.end14

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf, align 8
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  %or.cond79 = select i1 %tobool18.not, i1 true, i1 %tobool21.not
  br i1 %or.cond79, label %if.end14.out_crit_edge, label %if.then24, !prof !193

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then24:                                        ; preds = %if.end14
  %details = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call1, i32 0, i32 1
  %16 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %details, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.then24
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @mirror_end_io._rs, ptr noundef nonnull @__func__.mirror_end_io) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %do.end

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #14
  br label %cleanup

if.end32:                                         ; preds = %if.then24
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1, align 8
  %dev = getelementptr inbounds %struct.mirror, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %21, i32 0, i32 3
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name) #14
  tail call fastcc void @fail_mirror(ptr noundef %19, i32 noundef 3)
  %call39 = tail call fastcc i32 @default_ok(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %if.end32.if.then43_crit_edge

if.end32.if.then43_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end32
  %call41 = tail call fastcc i32 @mirror_available(ptr noundef %3, ptr noundef %bio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end50, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end32.if.then43_crit_edge
  tail call fastcc void @dm_bio_restore(ptr noundef %details, ptr noundef %bio)
  %22 = ptrtoint ptr %details to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %details, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %23 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bi_status, align 2
  tail call fastcc void @queue_bio(ptr noundef %3, ptr noundef %bio, i32 noundef 0)
  br label %cleanup

do.end50:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #14
  br label %out

out:                                              ; preds = %do.end50, %if.end14.out_crit_edge, %if.end9.out_crit_edge
  %details54 = getelementptr inbounds %struct.dm_raid1_bio_record, ptr %call1, i32 0, i32 1
  %24 = ptrtoint ptr %details54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %details54, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then43, %do.end, %if.then26.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 1, %if.then43 ], [ 0, %if.then8 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mirror_presuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rh = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rh, align 4
  %call = tail call ptr @dm_rh_dirty_log(ptr noundef %3) #11
  %suspend = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %suspend, i32 noundef 4) #11
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %suspend, align 4
  %lock = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %holds1 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %holds1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %holds1, align 4
  %tail.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %holds1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i49 = icmp eq i32 %6, 0
  br i1 %tobool.not.i49, label %entry.while.end_crit_edge, label %if.then.i.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then.i.preheader:                              ; preds = %entry
  %8 = inttoptr i32 %6 to ptr
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.then.i.preheader
  %holds.sroa.0.050 = phi ptr [ %10, %if.then.i.if.then.i_crit_edge ], [ %8, %if.then.i.preheader ]
  %9 = ptrtoint ptr %holds.sroa.0.050 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %holds.sroa.0.050, align 8
  store ptr null, ptr %holds.sroa.0.050, align 8
  tail call fastcc void @hold_bio(ptr noundef %1, ptr noundef nonnull %holds.sroa.0.050)
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i.while.end_crit_edge, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.then.i.while.end_crit_edge, %entry.while.end_crit_edge
  %11 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rh, align 4
  tail call void @dm_rh_stop_recovery(ptr noundef %12) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 1331) #11
  %13 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rh, align 4
  %call11 = tail call i32 @dm_rh_recovery_in_flight(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.end.do.end20_crit_edge, label %if.end

while.end.do.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

if.end:                                           ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call1351 = call i32 @prepare_to_wait_event(ptr noundef nonnull @_kmirrord_recovery_stopped, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %16 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rh, align 4
  %call1552 = call i32 @dm_rh_recovery_in_flight(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1552)
  %tobool16.not53 = icmp eq i32 %call1552, 0
  br i1 %tobool16.not53, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %call13 = call i32 @prepare_to_wait_event(ptr noundef nonnull @_kmirrord_recovery_stopped, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %18 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rh, align 4
  %call15 = call i32 @dm_rh_recovery_in_flight(ptr noundef %19) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @_kmirrord_recovery_stopped, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end20

do.end20:                                         ; preds = %for.end, %while.end.do.end20_crit_edge
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %presuspend = getelementptr inbounds %struct.dm_dirty_log_type, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %presuspend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %presuspend, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %do.end20.if.end32_crit_edge, label %land.lhs.true

do.end20.if.end32_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %do.end20
  %call24 = call i32 %23(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end32_crit_edge, label %do.end29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %land.lhs.true.if.end32_crit_edge, %do.end20.if.end32_crit_edge
  %kmirrord_wq = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kmirrord_wq, align 4
  call void @flush_workqueue(ptr noundef %25) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mirror_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rh = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rh, align 4
  %call = tail call ptr @dm_rh_dirty_log(ptr noundef %3) #11
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %postsuspend = getelementptr inbounds %struct.dm_dirty_log_type, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %postsuspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %postsuspend, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 %7(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mirror_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rh = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rh, align 4
  %call = tail call ptr @dm_rh_dirty_log(ptr noundef %3) #11
  %suspend = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %suspend, i32 noundef 4) #11
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %suspend, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %resume = getelementptr inbounds %struct.dm_dirty_log_type, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resume, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 %8(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rh, align 4
  tail call void @dm_rh_start_recovery(ptr noundef %10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mirror_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %buffer = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rh = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rh, align 4
  %call = tail call ptr @dm_rh_dirty_log(ptr noundef %3) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buffer) #11
  %4 = call ptr @memset(ptr %buffer, i32 255, i32 10)
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
    i32 2, label %sw.bb120
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.cond.end_crit_edge, label %cond.false

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_mirrors, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.60, i32 noundef %7) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ 0, %sw.bb.cond.end_crit_edge ]
  %nr_mirrors2 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %nr_mirrors2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_mirrors2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3437.not = icmp eq i32 %9, 0
  br i1 %cmp3437.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %device_status_char.exit.for.body_crit_edge, %cond.end.for.body_crit_edge
  %sz.0440 = phi i32 [ %add12, %device_status_char.exit.for.body_crit_edge ], [ %cond, %cond.end.for.body_crit_edge ]
  %m.0438 = phi i32 [ %inc, %device_status_char.exit.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0440, i32 %maxlen)
  %cmp4.not = icmp ult i32 %sz.0440, %maxlen
  br i1 %cmp4.not, label %cond.false6, label %for.body.cond.end10_crit_edge

for.body.cond.end10_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end10

cond.false6:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr7 = getelementptr i8, ptr %result, i32 %sz.0440
  %sub8 = sub i32 %maxlen, %sz.0440
  %dev = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.0438, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %11, i32 0, i32 3
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.61, ptr noundef %name) #11
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %for.body.cond.end10_crit_edge
  %cond11 = phi i32 [ %call9, %cond.false6 ], [ 0, %for.body.cond.end10_crit_edge ]
  %add12 = add i32 %cond11, %sz.0440
  %error_count.i = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.0438, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %cond.end10.device_status_char.exit_crit_edge, label %if.end.i

cond.end10.device_status_char.exit_crit_edge:     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit

if.end.i:                                         ; preds = %cond.end10
  %error_type.i = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.0438, i32 2
  %14 = ptrtoint ptr %error_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %error_type.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %cond.false.i, label %if.end.i.device_status_char.exit_crit_edge

if.end.i.device_status_char.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit

cond.false.i:                                     ; preds = %if.end.i
  %17 = ptrtoint ptr %error_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %error_type.i, align 4
  %and1.i25.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i)
  %tobool5.not.i = icmp eq i32 %and1.i25.i, 0
  br i1 %tobool5.not.i, label %cond.false7.i, label %cond.false.i.device_status_char.exit_crit_edge

cond.false.i.device_status_char.exit_crit_edge:   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit

cond.false7.i:                                    ; preds = %cond.false.i
  %19 = ptrtoint ptr %error_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %error_type.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i, label %cond.false12.i, label %cond.false7.i.device_status_char.exit_crit_edge

cond.false7.i.device_status_char.exit_crit_edge:  ; preds = %cond.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit

cond.false12.i:                                   ; preds = %cond.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %error_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %error_type.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp eq i32 %24, 0
  %phi.cast.i = select i1 %tobool15.not.i, i8 85, i8 82
  br label %device_status_char.exit

device_status_char.exit:                          ; preds = %cond.false12.i, %cond.false7.i.device_status_char.exit_crit_edge, %cond.false.i.device_status_char.exit_crit_edge, %if.end.i.device_status_char.exit_crit_edge, %cond.end10.device_status_char.exit_crit_edge
  %retval.0.i = phi i8 [ 65, %cond.end10.device_status_char.exit_crit_edge ], [ 70, %if.end.i.device_status_char.exit_crit_edge ], [ 68, %cond.false.i.device_status_char.exit_crit_edge ], [ %phi.cast.i, %cond.false12.i ], [ 83, %cond.false7.i.device_status_char.exit_crit_edge ]
  %arrayidx16 = getelementptr [10 x i8], ptr %buffer, i32 0, i32 %m.0438
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %retval.0.i, ptr %arrayidx16, align 1
  %inc = add nuw i32 %m.0438, 1
  %26 = ptrtoint ptr %nr_mirrors2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_mirrors2, align 4
  %cmp3 = icmp ult i32 %inc, %27
  br i1 %cmp3, label %device_status_char.exit.for.body_crit_edge, label %device_status_char.exit.for.end_crit_edge

device_status_char.exit.for.end_crit_edge:        ; preds = %device_status_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

device_status_char.exit.for.body_crit_edge:       ; preds = %device_status_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %device_status_char.exit.for.end_crit_edge, %cond.end.for.end_crit_edge
  %m.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %inc, %device_status_char.exit.for.end_crit_edge ]
  %sz.0.lcssa = phi i32 [ %cond, %cond.end.for.end_crit_edge ], [ %add12, %device_status_char.exit.for.end_crit_edge ]
  %arrayidx17 = getelementptr [10 x i8], ptr %buffer, i32 0, i32 %m.0.lcssa
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %maxlen)
  %cmp18.not = icmp ult i32 %sz.0.lcssa, %maxlen
  br i1 %cmp18.not, label %cond.false20, label %for.end.cond.end27_crit_edge

for.end.cond.end27_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end27

cond.false20:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i8, ptr %result, i32 %sz.0.lcssa
  %sub22 = sub i32 %maxlen, %sz.0.lcssa
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %get_sync_count = getelementptr inbounds %struct.dm_dirty_log_type, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %get_sync_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_sync_count, align 4
  %call24 = tail call i64 %32(ptr noundef %call) #11
  %nr_regions = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %nr_regions, align 8
  %call26 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.62, i64 noundef %call24, i64 noundef %34, ptr noundef nonnull %buffer) #11
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false20, %for.end.cond.end27_crit_edge
  %cond28 = phi i32 [ %call26, %cond.false20 ], [ 0, %for.end.cond.end27_crit_edge ]
  %add29 = add i32 %cond28, %sz.0.lcssa
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %status = getelementptr inbounds %struct.dm_dirty_log_type, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %status, align 4
  %add.ptr31 = getelementptr i8, ptr %result, i32 %add29
  %sub32 = sub i32 %maxlen, %add29
  %call33 = call i32 %38(ptr noundef %call, i32 noundef 0, ptr noundef %add.ptr31, i32 noundef %sub32) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  %status37 = getelementptr inbounds %struct.dm_dirty_log_type, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %status37, align 4
  %call38 = tail call i32 %42(ptr noundef %call, i32 noundef 1, ptr noundef %result, i32 noundef %maxlen) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %maxlen)
  %cmp39.not = icmp ult i32 %call38, %maxlen
  br i1 %cmp39.not, label %cond.false41, label %sw.bb35.cond.end46_crit_edge

sw.bb35.cond.end46_crit_edge:                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end46

cond.false41:                                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42 = getelementptr i8, ptr %result, i32 %call38
  %sub43 = sub i32 %maxlen, %call38
  %nr_mirrors44 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %43 = ptrtoint ptr %nr_mirrors44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_mirrors44, align 4
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.63, i32 noundef %44) #11
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false41, %sw.bb35.cond.end46_crit_edge
  %cond47 = phi i32 [ %call45, %cond.false41 ], [ 0, %sw.bb35.cond.end46_crit_edge ]
  %add48 = add i32 %cond47, %call38
  %nr_mirrors50 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %45 = ptrtoint ptr %nr_mirrors50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_mirrors50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp51431.not = icmp eq i32 %46, 0
  br i1 %cmp51431.not, label %cond.end46.for.end71_crit_edge, label %cond.end46.for.body52_crit_edge

cond.end46.for.body52_crit_edge:                  ; preds = %cond.end46
  br label %for.body52

cond.end46.for.end71_crit_edge:                   ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

for.body52:                                       ; preds = %cond.end66.for.body52_crit_edge, %cond.end46.for.body52_crit_edge
  %sz.1434 = phi i32 [ %add68, %cond.end66.for.body52_crit_edge ], [ %add48, %cond.end46.for.body52_crit_edge ]
  %m.1432 = phi i32 [ %inc70, %cond.end66.for.body52_crit_edge ], [ 0, %cond.end46.for.body52_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1434, i32 %maxlen)
  %cmp53.not = icmp ult i32 %sz.1434, %maxlen
  br i1 %cmp53.not, label %cond.false55, label %for.body52.cond.end66_crit_edge

for.body52.cond.end66_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end66

cond.false55:                                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr56 = getelementptr i8, ptr %result, i32 %sz.1434
  %sub57 = sub i32 %maxlen, %sz.1434
  %dev60 = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.1432, i32 3
  %47 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev60, align 4
  %name61 = getelementptr inbounds %struct.dm_dev, ptr %48, i32 0, i32 3
  %offset = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.1432, i32 4
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %offset, align 8
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.64, ptr noundef %name61, i64 noundef %50) #11
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false55, %for.body52.cond.end66_crit_edge
  %cond67 = phi i32 [ %call65, %cond.false55 ], [ 0, %for.body52.cond.end66_crit_edge ]
  %add68 = add i32 %cond67, %sz.1434
  %inc70 = add nuw i32 %m.1432, 1
  %51 = ptrtoint ptr %nr_mirrors50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_mirrors50, align 4
  %cmp51 = icmp ult i32 %inc70, %52
  br i1 %cmp51, label %cond.end66.for.body52_crit_edge, label %cond.end66.for.end71_crit_edge

cond.end66.for.end71_crit_edge:                   ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

cond.end66.for.body52_crit_edge:                  ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52

for.end71:                                        ; preds = %cond.end66.for.end71_crit_edge, %cond.end46.for.end71_crit_edge
  %sz.1.lcssa = phi i32 [ %add48, %cond.end46.for.end71_crit_edge ], [ %add68, %cond.end66.for.end71_crit_edge ]
  %features = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 1
  %57 = lshr i32 %55, 1
  %58 = and i32 %57, 1
  %add81 = add nuw nsw i32 %58, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add81)
  %tobool82.not = icmp eq i32 %add81, 0
  br i1 %tobool82.not, label %for.end71.sw.epilog_crit_edge, label %if.then

for.end71.sw.epilog_crit_edge:                    ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %for.end71
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.lcssa, i32 %maxlen)
  %cmp83.not = icmp ult i32 %sz.1.lcssa, %maxlen
  br i1 %cmp83.not, label %cond.false85, label %if.then.cond.end89_crit_edge

if.then.cond.end89_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end89

cond.false85:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr86 = getelementptr i8, ptr %result, i32 %sz.1.lcssa
  %sub87 = sub i32 %maxlen, %sz.1.lcssa
  %call88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr86, i32 noundef %sub87, ptr noundef nonnull @.str.65, i32 noundef %add81) #11
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false85, %if.then.cond.end89_crit_edge
  %cond90 = phi i32 [ %call88, %cond.false85 ], [ 0, %if.then.cond.end89_crit_edge ]
  %add91 = add i32 %cond90, %sz.1.lcssa
  %59 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %features, align 8
  %and93 = and i64 %60, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and93)
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %cond.end89.if.end_crit_edge, label %if.then95

cond.end89.if.end_crit_edge:                      ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then95:                                        ; preds = %cond.end89
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %maxlen)
  %cmp96.not = icmp ult i32 %add91, %maxlen
  br i1 %cmp96.not, label %cond.false98, label %if.then95.cond.end102_crit_edge

if.then95.cond.end102_crit_edge:                  ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end102

cond.false98:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr99 = getelementptr i8, ptr %result, i32 %add91
  %sub100 = sub i32 %maxlen, %add91
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.66) #11
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false98, %if.then95.cond.end102_crit_edge
  %cond103 = phi i32 [ %call101, %cond.false98 ], [ 0, %if.then95.cond.end102_crit_edge ]
  %add104 = add i32 %cond103, %add91
  br label %if.end

if.end:                                           ; preds = %cond.end102, %cond.end89.if.end_crit_edge
  %sz.2 = phi i32 [ %add104, %cond.end102 ], [ %add91, %cond.end89.if.end_crit_edge ]
  %61 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features, align 8
  %and106 = and i64 %62, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and106)
  %tobool107.not = icmp ne i64 %and106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2, i32 %maxlen)
  %cmp109.not = icmp ult i32 %sz.2, %maxlen
  %or.cond = select i1 %tobool107.not, i1 %cmp109.not, i1 false
  br i1 %or.cond, label %cond.false111, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false111:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr112 = getelementptr i8, ptr %result, i32 %sz.2
  %sub113 = sub i32 %maxlen, %sz.2
  %call114 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112, i32 noundef %sub113, ptr noundef nonnull @.str.67) #11
  br label %sw.epilog

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp121 = icmp eq i32 %maxlen, 0
  br i1 %cmp121, label %sw.bb120.cond.end137_crit_edge, label %cond.false123

sw.bb120.cond.end137_crit_edge:                   ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end137

cond.false123:                                    ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #13
  %type126 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %63 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type126, align 4
  %name127 = getelementptr inbounds %struct.target_type, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %name127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name127, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %version, align 8
  %arrayidx132 = getelementptr %struct.target_type, ptr %64, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx132, align 4
  %arrayidx135 = getelementptr %struct.target_type, ptr %64, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx135, align 8
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.68, ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #11
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false123, %sw.bb120.cond.end137_crit_edge
  %cond138 = phi i32 [ %call136, %cond.false123 ], [ 0, %sw.bb120.cond.end137_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond138, i32 %maxlen)
  %cmp140.not = icmp ult i32 %cond138, %maxlen
  br i1 %cmp140.not, label %cond.false142, label %cond.end137.cond.end147_crit_edge

cond.end137.cond.end147_crit_edge:                ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end147

cond.false142:                                    ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr143 = getelementptr i8, ptr %result, i32 %cond138
  %sub144 = sub i32 %maxlen, %cond138
  %nr_mirrors145 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %73 = ptrtoint ptr %nr_mirrors145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_mirrors145, align 4
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.69, i32 noundef %74) #11
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false142, %cond.end137.cond.end147_crit_edge
  %cond148 = phi i32 [ %call146, %cond.false142 ], [ 0, %cond.end137.cond.end147_crit_edge ]
  %add149 = add i32 %cond148, %cond138
  %nr_mirrors151 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %75 = ptrtoint ptr %nr_mirrors151 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_mirrors151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp152425.not = icmp eq i32 %76, 0
  br i1 %cmp152425.not, label %cond.end147.for.end182_crit_edge, label %cond.end147.for.body153_crit_edge

cond.end147.for.body153_crit_edge:                ; preds = %cond.end147
  br label %for.body153

cond.end147.for.end182_crit_edge:                 ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end182

for.body153:                                      ; preds = %cond.end177.for.body153_crit_edge, %cond.end147.for.body153_crit_edge
  %sz.3429 = phi i32 [ %add179, %cond.end177.for.body153_crit_edge ], [ %add149, %cond.end147.for.body153_crit_edge ]
  %m.2426 = phi i32 [ %inc181, %cond.end177.for.body153_crit_edge ], [ 0, %cond.end147.for.body153_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3429, i32 %maxlen)
  %cmp154.not = icmp ult i32 %sz.3429, %maxlen
  br i1 %cmp154.not, label %cond.false156, label %for.body153.cond.end165_crit_edge

for.body153.cond.end165_crit_edge:                ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end165

cond.false156:                                    ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr157 = getelementptr i8, ptr %result, i32 %sz.3429
  %sub158 = sub i32 %maxlen, %sz.3429
  %dev161 = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.2426, i32 3
  %77 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev161, align 4
  %name162 = getelementptr inbounds %struct.dm_dev, ptr %78, i32 0, i32 3
  %call164 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr157, i32 noundef %sub158, ptr noundef nonnull @.str.70, i32 noundef %m.2426, ptr noundef %name162) #11
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false156, %for.body153.cond.end165_crit_edge
  %cond166 = phi i32 [ %call164, %cond.false156 ], [ 0, %for.body153.cond.end165_crit_edge ]
  %add167 = add i32 %cond166, %sz.3429
  call void @__sanitizer_cov_trace_cmp4(i32 %add167, i32 %maxlen)
  %cmp168.not = icmp ult i32 %add167, %maxlen
  br i1 %cmp168.not, label %cond.false170, label %cond.end165.cond.end177_crit_edge

cond.end165.cond.end177_crit_edge:                ; preds = %cond.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end177

cond.false170:                                    ; preds = %cond.end165
  %add.ptr171 = getelementptr i8, ptr %result, i32 %add167
  %sub172 = sub i32 %maxlen, %add167
  %error_count.i409 = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.2426, i32 1
  %call.i.i.i410 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i409, i32 noundef 4) #11
  %79 = ptrtoint ptr %error_count.i409 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %error_count.i409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i411 = icmp eq i32 %80, 0
  br i1 %tobool.not.i411, label %cond.false170.device_status_char.exit424_crit_edge, label %if.end.i414

cond.false170.device_status_char.exit424_crit_edge: ; preds = %cond.false170
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit424

if.end.i414:                                      ; preds = %cond.false170
  %error_type.i412 = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %m.2426, i32 2
  %81 = ptrtoint ptr %error_type.i412 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %error_type.i412, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool2.not.i413 = icmp eq i32 %83, 0
  br i1 %tobool2.not.i413, label %cond.false.i417, label %if.end.i414.device_status_char.exit424_crit_edge

if.end.i414.device_status_char.exit424_crit_edge: ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit424

cond.false.i417:                                  ; preds = %if.end.i414
  %84 = ptrtoint ptr %error_type.i412 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %error_type.i412, align 4
  %and1.i25.i415 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25.i415)
  %tobool5.not.i416 = icmp eq i32 %and1.i25.i415, 0
  br i1 %tobool5.not.i416, label %cond.false7.i419, label %cond.false.i417.device_status_char.exit424_crit_edge

cond.false.i417.device_status_char.exit424_crit_edge: ; preds = %cond.false.i417
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit424

cond.false7.i419:                                 ; preds = %cond.false.i417
  %86 = ptrtoint ptr %error_type.i412 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %error_type.i412, align 4
  %88 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool10.not.i418 = icmp eq i32 %88, 0
  br i1 %tobool10.not.i418, label %cond.false12.i422, label %cond.false7.i419.device_status_char.exit424_crit_edge

cond.false7.i419.device_status_char.exit424_crit_edge: ; preds = %cond.false7.i419
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_status_char.exit424

cond.false12.i422:                                ; preds = %cond.false7.i419
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %error_type.i412 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %error_type.i412, align 4
  %91 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool15.not.i420 = icmp eq i32 %91, 0
  %phi.cast.i421 = select i1 %tobool15.not.i420, i32 85, i32 82
  br label %device_status_char.exit424

device_status_char.exit424:                       ; preds = %cond.false12.i422, %cond.false7.i419.device_status_char.exit424_crit_edge, %cond.false.i417.device_status_char.exit424_crit_edge, %if.end.i414.device_status_char.exit424_crit_edge, %cond.false170.device_status_char.exit424_crit_edge
  %retval.0.i423 = phi i32 [ 65, %cond.false170.device_status_char.exit424_crit_edge ], [ 70, %if.end.i414.device_status_char.exit424_crit_edge ], [ 68, %cond.false.i417.device_status_char.exit424_crit_edge ], [ %phi.cast.i421, %cond.false12.i422 ], [ 83, %cond.false7.i419.device_status_char.exit424_crit_edge ]
  %call176 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr171, i32 noundef %sub172, ptr noundef nonnull @.str.71, i32 noundef %m.2426, i32 noundef %retval.0.i423) #11
  br label %cond.end177

cond.end177:                                      ; preds = %device_status_char.exit424, %cond.end165.cond.end177_crit_edge
  %cond178 = phi i32 [ %call176, %device_status_char.exit424 ], [ 0, %cond.end165.cond.end177_crit_edge ]
  %add179 = add i32 %cond178, %add167
  %inc181 = add nuw i32 %m.2426, 1
  %92 = ptrtoint ptr %nr_mirrors151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr_mirrors151, align 4
  %cmp152 = icmp ult i32 %inc181, %93
  br i1 %cmp152, label %cond.end177.for.body153_crit_edge, label %cond.end177.for.end182_crit_edge

cond.end177.for.end182_crit_edge:                 ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end182

cond.end177.for.body153_crit_edge:                ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body153

for.end182:                                       ; preds = %cond.end177.for.end182_crit_edge, %cond.end147.for.end182_crit_edge
  %sz.3.lcssa = phi i32 [ %add149, %cond.end147.for.end182_crit_edge ], [ %add179, %cond.end177.for.end182_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3.lcssa, i32 %maxlen)
  %cmp183.not = icmp ult i32 %sz.3.lcssa, %maxlen
  br i1 %cmp183.not, label %cond.false186, label %for.end182.cond.end194_crit_edge

for.end182.cond.end194_crit_edge:                 ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end194

cond.false186:                                    ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr187 = getelementptr i8, ptr %result, i32 %sz.3.lcssa
  %sub188 = sub i32 %maxlen, %sz.3.lcssa
  %features189 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %features189 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %features189, align 8
  %and190 = and i64 %95, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and190)
  %tobool191.not = icmp eq i64 %and190, 0
  %cond192 = select i1 %tobool191.not, i32 110, i32 121
  %call193 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr187, i32 noundef %sub188, ptr noundef nonnull @.str.72, i32 noundef %cond192) #11
  br label %cond.end194

cond.end194:                                      ; preds = %cond.false186, %for.end182.cond.end194_crit_edge
  %cond195 = phi i32 [ %call193, %cond.false186 ], [ 0, %for.end182.cond.end194_crit_edge ]
  %add196 = add i32 %cond195, %sz.3.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add196, i32 %maxlen)
  %cmp197.not = icmp ult i32 %add196, %maxlen
  br i1 %cmp197.not, label %cond.false200, label %cond.end194.cond.end208_crit_edge

cond.end194.cond.end208_crit_edge:                ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end208

cond.false200:                                    ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr201 = getelementptr i8, ptr %result, i32 %add196
  %sub202 = sub i32 %maxlen, %add196
  %features203 = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %features203 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %features203, align 8
  %and204 = and i64 %97, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and204)
  %tobool205.not = icmp eq i64 %and204, 0
  %cond206 = select i1 %tobool205.not, i32 110, i32 121
  %call207 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr201, i32 noundef %sub202, ptr noundef nonnull @.str.73, i32 noundef %cond206) #11
  br label %cond.end208

cond.end208:                                      ; preds = %cond.false200, %cond.end194.cond.end208_crit_edge
  %cond209 = phi i32 [ %call207, %cond.false200 ], [ 0, %cond.end194.cond.end208_crit_edge ]
  %add210 = add i32 %cond209, %add196
  call void @__sanitizer_cov_trace_cmp4(i32 %add210, i32 %maxlen)
  %cmp211.not = icmp ult i32 %add210, %maxlen
  br i1 %cmp211.not, label %cond.false214, label %cond.end208.cond.end218_crit_edge

cond.end208.cond.end218_crit_edge:                ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end218

cond.false214:                                    ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr215 = getelementptr i8, ptr %result, i32 %add210
  %sub216 = sub i32 %maxlen, %add210
  %call217 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr215, i32 noundef %sub216, ptr noundef nonnull @.str.74) #11
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false214, %cond.end208.cond.end218_crit_edge
  %cond219 = phi i32 [ %call217, %cond.false214 ], [ 0, %cond.end208.cond.end218_crit_edge ]
  %add220 = add i32 %cond219, %add210
  %98 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call, align 4
  %status222 = getelementptr inbounds %struct.dm_dirty_log_type, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %status222 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %status222, align 4
  %add.ptr223 = getelementptr i8, ptr %result, i32 %add220
  %sub224 = sub i32 %maxlen, %add220
  %call225 = tail call i32 %101(ptr noundef %call, i32 noundef 2, ptr noundef %add.ptr223, i32 noundef %sub224) #11
  %add226 = add i32 %call225, %add220
  call void @__sanitizer_cov_trace_cmp4(i32 %add226, i32 %maxlen)
  %cmp227.not = icmp ult i32 %add226, %maxlen
  br i1 %cmp227.not, label %cond.false230, label %cond.end218.sw.epilog_crit_edge

cond.end218.sw.epilog_crit_edge:                  ; preds = %cond.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false230:                                    ; preds = %cond.end218
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr231 = getelementptr i8, ptr %result, i32 %add226
  %sub232 = sub i32 %maxlen, %add226
  %call233 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.75) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false230, %cond.end218.sw.epilog_crit_edge, %cond.false111, %if.end.sw.epilog_crit_edge, %for.end71.sw.epilog_crit_edge, %cond.end27, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirror_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012, i32 %3)
  %cmp = icmp ult i32 %i.012, %3
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %dev = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %i.012, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %offset = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %i.012, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %5, i64 noundef %7, i64 noundef %9, ptr noundef %data) #11
  %inc = add nuw i32 %i.012, 1
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %land.rhs.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_dirty_log_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_context(ptr noundef %ms, ptr noundef %ti, i32 noundef %m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m)
  %tobool.not5 = icmp eq i32 %m, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %m.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %m, %entry.while.body_crit_edge ]
  %dec = add i32 %m.addr.06, -1
  %dev = getelementptr %struct.mirror_set, ptr %ms, i32 0, i32 23, i32 %dec, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %1) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %io_client = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 10
  %2 = ptrtoint ptr %io_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_client, align 4
  tail call void @dm_io_client_destroy(ptr noundef %3) #11
  %rh = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 8
  %4 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rh, align 4
  tail call void @dm_region_hash_destroy(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %ms) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_rh_get_region_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_mirror(ptr noundef %work) #2 align 64 {
entry:
  %io.i.i45 = alloca [9 x %struct.dm_io_region], align 8
  %io_req.i.i46 = alloca %struct.dm_io_request, align 4
  %sync.i = alloca %struct.bio_list, align 4
  %nosync.i = alloca %struct.bio_list, align 4
  %recover.i = alloca %struct.bio_list, align 4
  %io.i.i = alloca %struct.dm_io_region, align 8
  %io_req.i.i = alloca %struct.dm_io_request, align 4
  %from.i.i = alloca %struct.dm_io_region, align 8
  %to.i.i = alloca [8 x %struct.dm_io_region], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  %lock = getelementptr i8, ptr %work, i32 -120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %reads6 = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %reads6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reads6, align 4
  %2 = inttoptr i32 %1 to ptr
  %writes7 = getelementptr i8, ptr %work, i32 -68
  %3 = ptrtoint ptr %writes7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writes7, align 4
  %5 = inttoptr i32 %4 to ptr
  %failures8 = getelementptr i8, ptr %work, i32 -60
  %6 = ptrtoint ptr %failures8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %failures8, align 4
  %8 = inttoptr i32 %7 to ptr
  %tail.i27 = getelementptr i8, ptr %work, i32 -64
  %tail.i28 = getelementptr i8, ptr %work, i32 -56
  %9 = call ptr @memset(ptr %reads6, i32 0, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %rh = getelementptr i8, ptr %work, i32 -44
  %10 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rh, align 4
  %features = getelementptr i8, ptr %work, i32 -128
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features, align 8
  %14 = trunc i64 %13 to i32
  %conv13 = and i32 %14, 1
  tail call void @dm_rh_update_states(ptr noundef %11, i32 noundef %conv13) #11
  %15 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rh, align 4
  %call.i = tail call ptr @dm_rh_dirty_log(ptr noundef %16) #11
  %17 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rh, align 4
  tail call void @dm_rh_recovery_prepare(ptr noundef %18) #11
  %19 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rh, align 4
  %call320.i = tail call ptr @dm_rh_recovery_start(ptr noundef %20) #11
  %tobool.not21.i = icmp eq ptr %call320.i, null
  br i1 %tobool.not21.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %default_mirror.i.i.i = getelementptr i8, ptr %work, i32 -8
  %sector.i.i = getelementptr inbounds %struct.dm_io_region, ptr %from.i.i, i32 0, i32 1
  %nr_regions.i.i = getelementptr i8, ptr %work, i32 -32
  %21 = getelementptr inbounds %struct.dm_io_region, ptr %from.i.i, i32 0, i32 2
  %nr_mirrors.i.i = getelementptr i8, ptr %work, i32 140
  %mirror.i.i = getelementptr i8, ptr %work, i32 144
  %kcopyd_client.i.i = getelementptr i8, ptr %work, i32 -40
  br label %while.body.i

while.body.i:                                     ; preds = %recover.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call322.i = phi ptr [ %call320.i, %while.body.lr.ph.i ], [ %call3.i, %recover.exit.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from.i.i) #11
  %22 = ptrtoint ptr %from.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %from.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %to.i.i) #11
  %23 = call ptr @memset(ptr %to.i.i, i32 255, i32 192)
  %call.i.i = call i64 @dm_rh_get_region_key(ptr noundef nonnull %call322.i) #11
  %24 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rh, align 4
  %call1.i.i = call i64 @dm_rh_get_region_size(ptr noundef %25) #11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i.i, i32 noundef 4) #11
  %26 = ptrtoint ptr %default_mirror.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %default_mirror.i.i.i, align 4
  %dev.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %27, i32 3
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %from.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %from.i.i, align 8
  %offset.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %27, i32 4
  %33 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %offset.i.i, align 8
  %35 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rh, align 4
  %call5.i.i = call i64 @dm_rh_region_to_sector(ptr noundef %36, i64 noundef %call.i.i) #11
  %add.i.i = add i64 %call5.i.i, %34
  %37 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.i.i, ptr %sector.i.i, align 8
  %38 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %nr_regions.i.i, align 8
  %sub.i.i = add i64 %39, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %sub.i.i)
  %cmp.i.i = icmp eq i64 %call.i.i, %sub.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.if.end11.i.i_crit_edge

while.body.i.if.end11.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %len.i.i = getelementptr inbounds %struct.dm_target, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %len.i.i, align 8
  %sub6.i.i = add i64 %call1.i.i, -1
  %and.i.i = and i64 %43, %sub6.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i64 %call1.i.i, i64 %and.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then.i.i, %while.body.i.if.end11.i.i_crit_edge
  %call1.sink.i.i = phi i64 [ %spec.store.select.i.i, %if.then.i.i ], [ %call1.i.i, %while.body.i.if.end11.i.i_crit_edge ]
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call1.sink.i.i, ptr %21, align 8
  %45 = ptrtoint ptr %nr_mirrors.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_mirrors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp1266.not.i.i = icmp eq i32 %46, 0
  br i1 %cmp1266.not.i.i, label %if.end11.i.i.recover.exit.i_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  br label %for.body.i.i

if.end11.i.i.recover.exit.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recover.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end11.i.i.for.body.i.i_crit_edge
  %dest.069.i.i = phi ptr [ %dest.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %to.i.i, %if.end11.i.i.for.body.i.i_crit_edge ]
  %i.067.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %i.067.i.i
  %call.i.i.i64.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i.i, i32 noundef 4) #11
  %47 = ptrtoint ptr %default_mirror.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %default_mirror.i.i.i, align 4
  %arrayidx.i65.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %48
  %cmp14.i.i = icmp eq ptr %arrayidx.i.i, %arrayidx.i65.i.i
  br i1 %cmp14.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end16.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev19.i.i = getelementptr %struct.mirror, ptr %mirror.i.i, i32 %i.067.i.i, i32 3
  %49 = ptrtoint ptr %dev19.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev19.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %dest.069.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %dest.069.i.i, align 8
  %offset22.i.i = getelementptr %struct.mirror, ptr %mirror.i.i, i32 %i.067.i.i, i32 4
  %54 = ptrtoint ptr %offset22.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %offset22.i.i, align 8
  %56 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rh, align 4
  %call24.i.i = call i64 @dm_rh_region_to_sector(ptr noundef %57, i64 noundef %call.i.i) #11
  %add25.i.i = add i64 %call24.i.i, %55
  %sector26.i.i = getelementptr inbounds %struct.dm_io_region, ptr %dest.069.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %sector26.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add25.i.i, ptr %sector26.i.i, align 8
  %59 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %21, align 8
  %count28.i.i = getelementptr inbounds %struct.dm_io_region, ptr %dest.069.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %count28.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %count28.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.dm_io_region, ptr %dest.069.i.i, i32 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end16.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %dest.1.i.i = phi ptr [ %dest.069.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end16.i.i ]
  %inc.i.i = add nuw i32 %i.067.i.i, 1
  %62 = ptrtoint ptr %nr_mirrors.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_mirrors.i.i, align 4
  %cmp12.i.i = icmp ult i32 %inc.i.i, %63
  br i1 %cmp12.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.loopexit.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i.i = add i32 %63, -1
  br label %recover.exit.i

recover.exit.i:                                   ; preds = %for.end.loopexit.i.i, %if.end11.i.i.recover.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ -1, %if.end11.i.i.recover.exit.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %64 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 1
  %68 = and i32 %67, 2
  %69 = xor i32 %68, 2
  %70 = ptrtoint ptr %kcopyd_client.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %kcopyd_client.i.i, align 8
  call void @dm_kcopyd_copy(ptr noundef %71, ptr noundef nonnull %from.i.i, i32 noundef %.lcssa.i.i, ptr noundef nonnull %to.i.i, i32 noundef %69, ptr noundef nonnull @recovery_complete, ptr noundef nonnull %call322.i) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %to.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from.i.i) #11
  %72 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rh, align 4
  %call3.i = call ptr @dm_rh_recovery_start(ptr noundef %73) #11
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %recover.exit.i.while.end.i_crit_edge, label %recover.exit.i.while.body.i_crit_edge

recover.exit.i.while.body.i_crit_edge:            ; preds = %recover.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

recover.exit.i.while.end.i_crit_edge:             ; preds = %recover.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %recover.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %in_sync.i = getelementptr i8, ptr %work, i32 -24
  %74 = ptrtoint ptr %in_sync.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %in_sync.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool4.not.i = icmp eq i32 %75, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %while.end.i.do_recovery.exit_crit_edge

while.end.i.do_recovery.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_recovery.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %get_sync_count.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %get_sync_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_sync_count.i, align 4
  %call5.i = call i64 %79(ptr noundef %call.i) #11
  %nr_regions.i = getelementptr i8, ptr %work, i32 -32
  %80 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %nr_regions.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %81)
  %cmp.i = icmp eq i64 %call5.i, %81
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.do_recovery.exit_crit_edge

land.lhs.true.i.do_recovery.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_recovery.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  call void @dm_table_event(ptr noundef %85) #11
  %86 = ptrtoint ptr %in_sync.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %in_sync.i, align 8
  %leg_failure.i.i = getelementptr i8, ptr %work, i32 -16
  %87 = ptrtoint ptr %leg_failure.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %leg_failure.i.i, align 8
  %nr_mirrors.i16.i = getelementptr i8, ptr %work, i32 140
  %88 = ptrtoint ptr %nr_mirrors.i16.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_mirrors.i16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp9.not.i.i = icmp eq i32 %89, 0
  br i1 %cmp9.not.i.i, label %if.then.i.do_recovery.exit_crit_edge, label %if.then.i.for.body.i19.i_crit_edge

if.then.i.for.body.i19.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i19.i

if.then.i.do_recovery.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_recovery.exit

for.body.i19.i:                                   ; preds = %for.body.i19.i.for.body.i19.i_crit_edge, %if.then.i.for.body.i19.i_crit_edge
  %m.010.i.i = phi i32 [ %inc.i17.i, %for.body.i19.i.for.body.i19.i_crit_edge ], [ 0, %if.then.i.for.body.i19.i_crit_edge ]
  %error_count.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %m.010.i.i, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %error_count.i.i, i32 noundef 4) #11
  %90 = ptrtoint ptr %error_count.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 0, ptr %error_count.i.i, align 4
  %error_type.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %m.010.i.i, i32 2
  %91 = ptrtoint ptr %error_type.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %error_type.i.i, align 8
  %inc.i17.i = add nuw i32 %m.010.i.i, 1
  %92 = ptrtoint ptr %nr_mirrors.i16.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr_mirrors.i16.i, align 4
  %cmp.i18.i = icmp ult i32 %inc.i17.i, %93
  br i1 %cmp.i18.i, label %for.body.i19.i.for.body.i19.i_crit_edge, label %for.body.i19.i.do_recovery.exit_crit_edge

for.body.i19.i.do_recovery.exit_crit_edge:        ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_recovery.exit

for.body.i19.i.for.body.i19.i_crit_edge:          ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19.i

do_recovery.exit:                                 ; preds = %for.body.i19.i.do_recovery.exit_crit_edge, %if.then.i.do_recovery.exit_crit_edge, %land.lhs.true.i.do_recovery.exit_crit_edge, %while.end.i.do_recovery.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i46.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i46.i, label %do_recovery.exit.do_reads.exit_crit_edge, label %if.then.i.lr.ph.i

do_recovery.exit.do_reads.exit_crit_edge:         ; preds = %do_recovery.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_reads.exit

if.then.i.lr.ph.i:                                ; preds = %do_recovery.exit
  %default_mirror.i.i = getelementptr i8, ptr %work, i32 -8
  %mirror.i.i30 = getelementptr i8, ptr %work, i32 144
  %nr_mirrors.i.i31 = getelementptr i8, ptr %work, i32 140
  %94 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 1
  %95 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2
  %96 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 1
  %97 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 2
  %98 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3
  %99 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3, i32 1
  %100 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 4
  %sector.i.i.i = getelementptr inbounds %struct.dm_io_region, ptr %io.i.i, i32 0, i32 1
  %count.i.i.i = getelementptr inbounds %struct.dm_io_region, ptr %io.i.i, i32 0, i32 2
  br label %if.then.i.i32

if.then.i.i32:                                    ; preds = %if.end22.i.if.then.i.i32_crit_edge, %if.then.i.lr.ph.i
  %101 = phi ptr [ %2, %if.then.i.lr.ph.i ], [ %103, %if.end22.i.if.then.i.i32_crit_edge ]
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %tobool4.not.i.i = icmp eq ptr %103, null
  store ptr null, ptr %101, align 8
  %104 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rh, align 4
  %call1.i = call i64 @dm_rh_bio_to_region(ptr noundef %105, ptr noundef nonnull %101) #11
  %call.i.i.i.i33 = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %106 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i.i34 = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %107
  %108 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rh, align 4
  %call.i.i35 = call i32 @dm_rh_get_state(ptr noundef %109, i64 noundef %call1.i, i32 noundef 1) #11
  %110 = add i32 %call.i.i35, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %110)
  %111 = icmp ult i32 %110, -2
  br i1 %111, label %if.else.i, label %if.then.i38, !prof !192

if.then.i38:                                      ; preds = %if.then.i.i32
  %call.i.i.i.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %112 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %113
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then.i38
  %m.0.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i38 ], [ %m.1.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %error_count.i.i39 = getelementptr inbounds %struct.mirror, ptr %m.0.i.i, i32 0, i32 1
  %call.i.i.i32.i = call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i.i39, i32 noundef 4) #11
  %114 = ptrtoint ptr %error_count.i.i39 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %error_count.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i33.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i33.i, label %if.end12.i, label %if.end.i34.i, !prof !190

if.end.i34.i:                                     ; preds = %do.body.i.i
  %incdec.ptr.i.i40 = getelementptr %struct.mirror, ptr %m.0.i.i, i32 -1
  %cmp.i.i41 = icmp eq ptr %m.0.i.i, %mirror.i.i30
  br i1 %cmp.i.i41, label %if.then5.i35.i, label %if.end.i34.i.do.cond.i.i_crit_edge

if.end.i34.i.do.cond.i.i_crit_edge:               ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i.i

if.then5.i35.i:                                   ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %nr_mirrors.i.i31 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr_mirrors.i.i31, align 4
  %add.ptr.i.i = getelementptr %struct.mirror, ptr %incdec.ptr.i.i40, i32 %117
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.then5.i35.i, %if.end.i34.i.do.cond.i.i_crit_edge
  %m.1.i.i = phi ptr [ %add.ptr.i.i, %if.then5.i35.i ], [ %incdec.ptr.i.i40, %if.end.i34.i.do.cond.i.i_crit_edge ]
  %call.i.i.i2.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %118 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i3.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %119
  %cmp8.not.i.i = icmp eq ptr %m.1.i.i, %arrayidx.i3.i.i
  br i1 %cmp8.not.i.i, label %do.cond.i.i.if.else21.i_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.cond.i.i.if.else21.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i

if.else.i:                                        ; preds = %if.then.i.i32
  %tobool8.not.i = icmp eq ptr %arrayidx.i.i34, null
  br i1 %tobool8.not.i, label %if.else.i.if.else21.i_crit_edge, label %land.lhs.true.i42

if.else.i.if.else21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i

land.lhs.true.i42:                                ; preds = %if.else.i
  %error_count.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %107, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i, i32 noundef 4) #11
  %120 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool10.not.i = icmp eq i32 %121, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i42.if.then20.i_crit_edge, label %land.lhs.true.i42.if.else21.i_crit_edge

land.lhs.true.i42.if.else21.i_crit_edge:          ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i

land.lhs.true.i42.if.then20.i_crit_edge:          ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end12.i:                                       ; preds = %do.body.i.i
  %tobool13.not.i = icmp eq ptr %m.0.i.i, null
  br i1 %tobool13.not.i, label %if.end12.i.if.else21.i_crit_edge, label %if.end12.i.if.then20.i_crit_edge, !prof !192

if.end12.i.if.then20.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end12.i.if.else21.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i

if.then20.i:                                      ; preds = %if.end12.i.if.then20.i_crit_edge, %land.lhs.true.i42.if.then20.i_crit_edge
  %m.044.i = phi ptr [ %m.0.i.i, %if.end12.i.if.then20.i_crit_edge ], [ %arrayidx.i.i34, %land.lhs.true.i42.if.then20.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %io.i.i) #11
  %122 = ptrtoint ptr %io.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %io.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i) #11
  %123 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %io_req.i.i, align 4
  %124 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %94, align 4
  %125 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %95, align 4
  %126 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %96, align 4
  %127 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %101, ptr %97, align 4
  %128 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @read_callback, ptr %98, align 4
  %129 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %101, ptr %99, align 4
  %130 = ptrtoint ptr %m.044.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %m.044.i, align 8
  %io_client.i.i = getelementptr inbounds %struct.mirror_set, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %io_client.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_client.i.i, align 4
  %134 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %100, align 4
  %dev.i.i.i = getelementptr inbounds %struct.mirror, ptr %m.044.i, i32 0, i32 3
  %135 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = ptrtoint ptr %io.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %io.i.i, align 8
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %101, i32 0, i32 8, i32 1
  %140 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i.i.i.i = icmp eq i32 %141, 0
  br i1 %tobool.not.i.i.i.i, label %if.then20.i.map_region.exit.i.i_crit_edge, label %if.end.i.i.i.i, !prof !192

if.then20.i.map_region.exit.i.i_crit_edge:        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_region.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_iter.i.i.i.i = getelementptr inbounds %struct.bio, ptr %101, i32 0, i32 8
  %offset.i.i.i.i = getelementptr inbounds %struct.mirror, ptr %m.044.i, i32 0, i32 4
  %142 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %offset.i.i.i.i, align 8
  %144 = ptrtoint ptr %bi_iter.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %bi_iter.i.i.i.i, align 8
  %146 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %131, align 8
  %begin.i.i.i.i = getelementptr inbounds %struct.dm_target, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %begin.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %begin.i.i.i.i, align 8
  %sub.i.i.i.i = add i64 %145, %143
  %add.i.i.i.i = sub i64 %sub.i.i.i.i, %149
  br label %map_region.exit.i.i

map_region.exit.i.i:                              ; preds = %if.end.i.i.i.i, %if.then20.i.map_region.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i64 [ %add.i.i.i.i, %if.end.i.i.i.i ], [ 0, %if.then20.i.map_region.exit.i.i_crit_edge ]
  %150 = ptrtoint ptr %sector.i.i.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %retval.0.i.i.i.i, ptr %sector.i.i.i, align 8
  %shr.i.i.i = lshr i32 %141, 9
  %conv.i.i.i = zext i32 %shr.i.i.i to i64
  %151 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv.i.i.i, ptr %count.i.i.i, align 8
  %152 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %m.044.i, ptr %101, align 8
  %call.i36.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i, i32 noundef 1, ptr noundef nonnull %io.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %read_async_bio.exit.i, label %do.body3.i.i, !prof !190

do.body3.i.i:                                     ; preds = %map_region.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-raid1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #11, !srcloc !194
  unreachable

read_async_bio.exit.i:                            ; preds = %map_region.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %io.i.i) #11
  br label %if.end22.i

if.else21.i:                                      ; preds = %if.end12.i.if.else21.i_crit_edge, %land.lhs.true.i42.if.else21.i_crit_edge, %if.else.i.if.else21.i_crit_edge, %do.cond.i.i.if.else21.i_crit_edge
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %101, i32 0, i32 6
  %153 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 10, ptr %bi_status.i.i, align 2
  call void @bio_endio(ptr noundef nonnull %101) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else21.i, %read_async_bio.exit.i
  br i1 %tobool4.not.i.i, label %if.end22.i.do_reads.exit_crit_edge, label %if.end22.i.if.then.i.i32_crit_edge

if.end22.i.if.then.i.i32_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i32

if.end22.i.do_reads.exit_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_reads.exit

do_reads.exit:                                    ; preds = %if.end22.i.do_reads.exit_crit_edge, %do_recovery.exit.do_reads.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sync.i) #11
  %154 = getelementptr inbounds %struct.bio_list, ptr %sync.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nosync.i) #11
  %155 = getelementptr inbounds %struct.bio_list, ptr %nosync.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %recover.i) #11
  %156 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rh, align 4
  %call.i48 = call ptr @dm_rh_dirty_log(ptr noundef %157) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i49 = icmp eq i32 %4, 0
  br i1 %tobool.not.i49, label %do_reads.exit.do_writes.exit_crit_edge, label %if.then.i.lr.ph.lr.ph.lr.ph.i

do_reads.exit.do_writes.exit_crit_edge:           ; preds = %do_reads.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_writes.exit

if.then.i.lr.ph.lr.ph.lr.ph.i:                    ; preds = %do_reads.exit
  %158 = getelementptr inbounds %struct.bio_list, ptr %recover.i, i32 0, i32 1
  %159 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %154, align 4
  %160 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %sync.i, align 4
  %161 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %155, align 4
  %162 = ptrtoint ptr %nosync.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %nosync.i, align 4
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %158, align 4
  %164 = ptrtoint ptr %recover.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %recover.i, align 4
  br label %if.then.i.lr.ph.lr.ph.i

if.then.i.lr.ph.lr.ph.i:                          ; preds = %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge, %if.then.i.lr.ph.lr.ph.lr.ph.i
  %165 = phi ptr [ %5, %if.then.i.lr.ph.lr.ph.lr.ph.i ], [ %169, %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge ]
  %this_list.0.ph232.i = phi ptr [ null, %if.then.i.lr.ph.lr.ph.lr.ph.i ], [ %this_list.0.ph215223.i, %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge ]
  %requeue.sroa.0.0.ph231.i = phi ptr [ null, %if.then.i.lr.ph.lr.ph.lr.ph.i ], [ %requeue.sroa.0.1.i, %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge ]
  %requeue.sroa.7.0.ph230.i = phi ptr [ null, %if.then.i.lr.ph.lr.ph.lr.ph.i ], [ %167, %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge ]
  br label %if.then.i.lr.ph.i50

if.then.i.lr.ph.i50:                              ; preds = %bio_list_add.exit158.i.if.then.i.lr.ph.i50_crit_edge, %if.then.i.lr.ph.lr.ph.i
  %166 = phi ptr [ %165, %if.then.i.lr.ph.lr.ph.i ], [ %169, %bio_list_add.exit158.i.if.then.i.lr.ph.i50_crit_edge ]
  %this_list.0.ph215223.i = phi ptr [ %this_list.0.ph232.i, %if.then.i.lr.ph.lr.ph.i ], [ %this_list.1.i, %bio_list_add.exit158.i.if.then.i.lr.ph.i50_crit_edge ]
  br label %if.then.i.i52

if.then.i.i52:                                    ; preds = %bio_list_add.exit.i.if.then.i.i52_crit_edge, %if.then.i.lr.ph.i50
  %167 = phi ptr [ %166, %if.then.i.lr.ph.i50 ], [ %169, %bio_list_add.exit.i.if.then.i.i52_crit_edge ]
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 8
  %tobool4.not.i.i51 = icmp eq ptr %169, null
  store ptr null, ptr %167, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %167, i32 0, i32 2
  %170 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bi_opf.i, align 8
  %172 = and i32 %171, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool3.not.i = icmp ne i32 %172, 0
  %and5.i = and i32 %171, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and5.i)
  %cmp.i54 = icmp eq i32 %and5.i, 3
  %or.cond.i = or i1 %tobool3.not.i, %cmp.i54
  br i1 %or.cond.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.then.i.i52
  %173 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %154, align 4
  %tobool.not.i144.i = icmp eq ptr %174, null
  br i1 %tobool.not.i144.i, label %if.else.i.i, label %if.then.i145.i

if.then.i145.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %167, ptr %174, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %167, ptr %sync.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i145.i
  %177 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %167, ptr %154, align 4
  br i1 %tobool4.not.i.i51, label %bio_list_add.exit.i.while.end.i58_crit_edge, label %bio_list_add.exit.i.if.then.i.i52_crit_edge

bio_list_add.exit.i.if.then.i.i52_crit_edge:      ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i52

bio_list_add.exit.i.while.end.i58_crit_edge:      ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i58

if.end8.i:                                        ; preds = %if.then.i.i52
  %178 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rh, align 4
  %call10.i = call i64 @dm_rh_bio_to_region(ptr noundef %179, ptr noundef nonnull %167) #11
  %180 = ptrtoint ptr %call.i48 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call.i48, align 4
  %is_remote_recovering.i = getelementptr inbounds %struct.dm_dirty_log_type, ptr %181, i32 0, i32 18
  %182 = ptrtoint ptr %is_remote_recovering.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %is_remote_recovering.i, align 4
  %tobool11.not.i = icmp eq ptr %183, null
  br i1 %tobool11.not.i, label %if.end8.i.if.end17.i_crit_edge, label %land.lhs.true.i57

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i57:                                ; preds = %if.end8.i
  %call14.i = call i32 %183(ptr noundef %call.i48, i64 noundef %call10.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i57.if.end17.i_crit_edge, label %if.then16.i

land.lhs.true.i57.if.end17.i_crit_edge:           ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then16.i:                                      ; preds = %land.lhs.true.i57
  %184 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %167, align 8
  %tobool.not.i148.i = icmp eq ptr %requeue.sroa.7.0.ph230.i, null
  br i1 %tobool.not.i148.i, label %if.then16.i.bio_list_add.exit152.i_crit_edge, label %if.then.i149.i

if.then16.i.bio_list_add.exit152.i_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_add.exit152.i

if.then.i149.i:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %requeue.sroa.7.0.ph230.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %167, ptr %requeue.sroa.7.0.ph230.i, align 8
  br label %bio_list_add.exit152.i

bio_list_add.exit152.i:                           ; preds = %if.then.i149.i, %if.then16.i.bio_list_add.exit152.i_crit_edge
  %requeue.sroa.0.1.i = phi ptr [ %requeue.sroa.0.0.ph231.i, %if.then.i149.i ], [ %167, %if.then16.i.bio_list_add.exit152.i_crit_edge ]
  br i1 %tobool4.not.i.i51, label %bio_list_add.exit152.i.while.end.i58_crit_edge, label %bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge

bio_list_add.exit152.i.if.then.i.lr.ph.lr.ph.i_crit_edge: ; preds = %bio_list_add.exit152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.lr.ph.lr.ph.i

bio_list_add.exit152.i.while.end.i58_crit_edge:   ; preds = %bio_list_add.exit152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i58

if.end17.i:                                       ; preds = %land.lhs.true.i57.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %186 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rh, align 4
  %call19.i = call i32 @dm_rh_get_state(ptr noundef %187, i64 noundef %call10.i, i32 noundef 1) #11
  %188 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call19.i, label %if.end17.i.sw.epilog.i_crit_edge [
    i32 1, label %if.end17.i.sw.bb.i_crit_edge
    i32 2, label %if.end17.i.sw.bb.i_crit_edge235
    i32 4, label %sw.bb20.i
    i32 8, label %sw.bb21.i
  ]

if.end17.i.sw.bb.i_crit_edge235:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end17.i.sw.bb.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end17.i.sw.epilog.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end17.i.sw.bb.i_crit_edge, %if.end17.i.sw.bb.i_crit_edge235
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb21.i, %sw.bb20.i, %sw.bb.i, %if.end17.i.sw.epilog.i_crit_edge
  %this_list.1.i = phi ptr [ %this_list.0.ph215223.i, %if.end17.i.sw.epilog.i_crit_edge ], [ %recover.i, %sw.bb21.i ], [ %nosync.i, %sw.bb20.i ], [ %sync.i, %sw.bb.i ]
  %189 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %167, align 8
  %tail.i153.i = getelementptr inbounds %struct.bio_list, ptr %this_list.1.i, i32 0, i32 1
  %190 = ptrtoint ptr %tail.i153.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tail.i153.i, align 4
  %tobool.not.i154.i = icmp eq ptr %191, null
  br i1 %tobool.not.i154.i, label %if.else.i156.i, label %if.then.i155.i

if.then.i155.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %167, ptr %191, align 8
  br label %bio_list_add.exit158.i

if.else.i156.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %this_list.1.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %167, ptr %this_list.1.i, align 4
  br label %bio_list_add.exit158.i

bio_list_add.exit158.i:                           ; preds = %if.else.i156.i, %if.then.i155.i
  %194 = ptrtoint ptr %tail.i153.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %167, ptr %tail.i153.i, align 4
  br i1 %tobool4.not.i.i51, label %bio_list_add.exit158.i.while.end.i58_crit_edge, label %bio_list_add.exit158.i.if.then.i.lr.ph.i50_crit_edge

bio_list_add.exit158.i.if.then.i.lr.ph.i50_crit_edge: ; preds = %bio_list_add.exit158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.lr.ph.i50

bio_list_add.exit158.i.while.end.i58_crit_edge:   ; preds = %bio_list_add.exit158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i58

while.end.i58:                                    ; preds = %bio_list_add.exit158.i.while.end.i58_crit_edge, %bio_list_add.exit152.i.while.end.i58_crit_edge, %bio_list_add.exit.i.while.end.i58_crit_edge
  %requeue.sroa.7.0.ph.lcssa.i = phi ptr [ %requeue.sroa.7.0.ph230.i, %bio_list_add.exit.i.while.end.i58_crit_edge ], [ %requeue.sroa.7.0.ph230.i, %bio_list_add.exit158.i.while.end.i58_crit_edge ], [ %167, %bio_list_add.exit152.i.while.end.i58_crit_edge ]
  %requeue.sroa.0.0.ph.lcssa.i = phi ptr [ %requeue.sroa.0.0.ph231.i, %bio_list_add.exit.i.while.end.i58_crit_edge ], [ %requeue.sroa.0.0.ph231.i, %bio_list_add.exit158.i.while.end.i58_crit_edge ], [ %requeue.sroa.0.1.i, %bio_list_add.exit152.i.while.end.i58_crit_edge ]
  %tobool23.not.i = icmp eq ptr %requeue.sroa.0.0.ph.lcssa.i, null
  br i1 %tobool23.not.i, label %while.end.i58.if.end29.i_crit_edge, label %if.end.i161.i, !prof !190

while.end.i58.if.end29.i_crit_edge:               ; preds = %while.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.end.i161.i:                                    ; preds = %while.end.i58
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %195 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tail.i27, align 4
  %tobool1.not.i.i = icmp eq ptr %196, null
  br i1 %tobool1.not.i.i, label %if.else.i162.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %requeue.sroa.0.0.ph.lcssa.i, ptr %196, align 8
  br label %bio_list_merge.exit.i

if.else.i162.i:                                   ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %writes7 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %requeue.sroa.0.0.ph.lcssa.i, ptr %writes7, align 4
  br label %bio_list_merge.exit.i

bio_list_merge.exit.i:                            ; preds = %if.else.i162.i, %if.then2.i.i
  %199 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %requeue.sroa.7.0.ph.lcssa.i, ptr %tail.i27, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %timer_pending.i = getelementptr i8, ptr %work, i32 92
  %call.i105 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %timer_pending.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i107, label %bio_list_merge.exit.i.if.end29.i_crit_edge

bio_list_merge.exit.i.if.end29.i_crit_edge:       ; preds = %bio_list_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.end.i107:                                      ; preds = %bio_list_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %200 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %200, 20
  %timer.i = getelementptr i8, ptr %work, i32 44
  %expires.i = getelementptr i8, ptr %work, i32 52
  %201 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end.i107, %bio_list_merge.exit.i.if.end29.i_crit_edge, %while.end.i58.if.end29.i_crit_edge
  %202 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rh, align 4
  call void @dm_rh_inc_pending(ptr noundef %203, ptr noundef nonnull %sync.i) #11
  %204 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rh, align 4
  call void @dm_rh_inc_pending(ptr noundef %205, ptr noundef nonnull %nosync.i) #11
  %206 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rh, align 4
  %call33.i = call i32 @dm_rh_flush(ptr noundef %207) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  %log_failure.i = getelementptr i8, ptr %work, i32 -20
  br i1 %tobool34.not.i, label %cond.end.i, label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %208 = ptrtoint ptr %log_failure.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1, ptr %log_failure.i, align 4
  br label %land.lhs.true44.i

cond.end.i:                                       ; preds = %if.end29.i
  %209 = ptrtoint ptr %log_failure.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %log_failure.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool37.not.i = icmp eq i32 %210, 0
  br i1 %tobool37.not.i, label %cond.end.i.if.else.i60_crit_edge, label %cond.end.i.land.lhs.true44.i_crit_edge, !prof !190

cond.end.i.land.lhs.true44.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true44.i

cond.end.i.if.else.i60_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i60

land.lhs.true44.i:                                ; preds = %cond.end.i.land.lhs.true44.i_crit_edge, %cond.end.thread.i
  %211 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %features, align 8
  %and45.i = and i64 %212, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45.i)
  %tobool46.not.i = icmp eq i64 %and45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.if.else.i60_crit_edge, label %if.then47.i

land.lhs.true44.i.if.else.i60_crit_edge:          ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i60

if.then47.i:                                      ; preds = %land.lhs.true44.i
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %213 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sync.i, align 4
  %tobool.not.i163.i = icmp eq ptr %214, null
  br i1 %tobool.not.i163.i, label %if.then47.i.bio_list_merge.exit171.i_crit_edge, label %if.end.i166.i

if.then47.i.bio_list_merge.exit171.i_crit_edge:   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_merge.exit171.i

if.end.i166.i:                                    ; preds = %if.then47.i
  %215 = ptrtoint ptr %tail.i28 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tail.i28, align 4
  %tobool1.not.i165.i = icmp eq ptr %216, null
  br i1 %tobool1.not.i165.i, label %if.else.i168.i, label %if.then2.i167.i

if.then2.i167.i:                                  ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %214, ptr %216, align 8
  br label %if.end7.i170.i

if.else.i168.i:                                   ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %failures8 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %214, ptr %failures8, align 4
  br label %if.end7.i170.i

if.end7.i170.i:                                   ; preds = %if.else.i168.i, %if.then2.i167.i
  %219 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %154, align 4
  %221 = ptrtoint ptr %tail.i28 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %220, ptr %tail.i28, align 4
  br label %bio_list_merge.exit171.i

bio_list_merge.exit171.i:                         ; preds = %if.end7.i170.i, %if.then47.i.bio_list_merge.exit171.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %kmirrord_wq.i.i = getelementptr i8, ptr %work, i32 -4
  %222 = ptrtoint ptr %kmirrord_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %kmirrord_wq.i.i, align 4
  %call.i.i.i59 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %223, ptr noundef %work) #11
  br label %if.end55.i

if.else.i60:                                      ; preds = %land.lhs.true44.i.if.else.i60_crit_edge, %cond.end.i.if.else.i60_crit_edge
  %224 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %sync.i, align 4
  %tobool.not.i172235.i = icmp eq ptr %225, null
  br i1 %tobool.not.i172235.i, label %if.else.i60.if.end55.i_crit_edge, label %if.then.i174.lr.ph.i

if.else.i60.if.end55.i_crit_edge:                 ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.then.i174.lr.ph.i:                             ; preds = %if.else.i60
  %226 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 1
  %227 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 2
  %228 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 2, i32 1
  %229 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 2, i32 2
  %230 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 3
  %231 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 3, i32 1
  %232 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i46, i32 0, i32 4
  %io_client.i.i61 = getelementptr i8, ptr %work, i32 -36
  %nr_mirrors.i.i62 = getelementptr i8, ptr %work, i32 140
  %mirror.i.i63 = getelementptr i8, ptr %work, i32 144
  %default_mirror.i.i.i64 = getelementptr i8, ptr %work, i32 -8
  br label %if.then.i174.i

if.then.i174.i:                                   ; preds = %do_write.exit.i.if.then.i174.i_crit_edge, %if.then.i174.lr.ph.i
  %233 = phi ptr [ %225, %if.then.i174.lr.ph.i ], [ %283, %do_write.exit.i.if.then.i174.i_crit_edge ]
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 8
  %236 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %235, ptr %sync.i, align 4
  %tobool4.not.i173.i = icmp eq ptr %235, null
  br i1 %tobool4.not.i173.i, label %if.then5.i176.i, label %if.then.i174.i.while.body53.i_crit_edge

if.then.i174.i.while.body53.i_crit_edge:          ; preds = %if.then.i174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body53.i

if.then5.i176.i:                                  ; preds = %if.then.i174.i
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %154, align 4
  br label %while.body53.i

while.body53.i:                                   ; preds = %if.then5.i176.i, %if.then.i174.i.while.body53.i_crit_edge
  %238 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %233, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %io.i.i45) #11
  %239 = call ptr @memset(ptr %io.i.i45, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i46) #11
  %240 = ptrtoint ptr %io_req.i.i46 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 1, ptr %io_req.i.i46, align 4
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %233, i32 0, i32 2
  %241 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %bi_opf.i.i, align 8
  %243 = and i32 %242, 393216
  %244 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %226, align 4
  %245 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1, ptr %227, align 4
  %246 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 0, ptr %228, align 4
  %247 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %233, ptr %229, align 4
  %248 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @write_callback, ptr %230, align 4
  %249 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %233, ptr %231, align 4
  %250 = ptrtoint ptr %io_client.i.i61 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %io_client.i.i61, align 4
  %252 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %232, align 4
  %and3.i.i = and i32 %242, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i.i)
  %cmp.i.i65 = icmp eq i32 %and3.i.i, 3
  br i1 %cmp.i.i65, label %if.then.i180.i, label %while.body53.i.if.end.i181.i_crit_edge

while.body53.i.if.end.i181.i_crit_edge:           ; preds = %while.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i181.i

if.then.i180.i:                                   ; preds = %while.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  %253 = ptrtoint ptr %io_req.i.i46 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 3, ptr %io_req.i.i46, align 4
  %254 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 3, ptr %227, align 4
  %255 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %229, align 4
  br label %if.end.i181.i

if.end.i181.i:                                    ; preds = %if.then.i180.i, %while.body53.i.if.end.i181.i_crit_edge
  %256 = ptrtoint ptr %nr_mirrors.i.i62 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %nr_mirrors.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp1138.not.i.i = icmp eq i32 %257, 0
  br i1 %cmp1138.not.i.i, label %if.end.i181.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i181.i.for.end.i.i_crit_edge:              ; preds = %if.end.i181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i181.i
  %bi_size.i.i.i.i66 = getelementptr inbounds %struct.bio, ptr %233, i32 0, i32 8, i32 1
  %258 = ptrtoint ptr %bi_size.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %bi_size.i.i.i.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i.i.i.i67 = icmp eq i32 %259, 0
  %bi_iter.i.i.i.i68 = getelementptr inbounds %struct.bio, ptr %233, i32 0, i32 8
  %shr.i.i.i69 = lshr i32 %259, 9
  %conv.i.i.i70 = zext i32 %shr.i.i.i69 to i64
  br label %for.body.i.i73

for.body.i.i73:                                   ; preds = %map_region.exit.i.i83.for.body.i.i73_crit_edge, %for.body.lr.ph.i.i
  %m.041.i.i = phi ptr [ %mirror.i.i63, %for.body.lr.ph.i.i ], [ %incdec.ptr13.i.i, %map_region.exit.i.i83.for.body.i.i73_crit_edge ]
  %dest.040.i.i = phi ptr [ %io.i.i45, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i71, %map_region.exit.i.i83.for.body.i.i73_crit_edge ]
  %i.039.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i82, %map_region.exit.i.i83.for.body.i.i73_crit_edge ]
  %incdec.ptr.i.i71 = getelementptr %struct.dm_io_region, ptr %dest.040.i.i, i32 1
  %dev.i.i.i72 = getelementptr inbounds %struct.mirror, ptr %m.041.i.i, i32 0, i32 3
  %260 = ptrtoint ptr %dev.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i.i.i72, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %264 = ptrtoint ptr %dest.040.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %263, ptr %dest.040.i.i, align 8
  br i1 %tobool.not.i.i.i.i67, label %for.body.i.i73.map_region.exit.i.i83_crit_edge, label %if.end.i.i.i.i78, !prof !192

for.body.i.i73.map_region.exit.i.i83_crit_edge:   ; preds = %for.body.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_region.exit.i.i83

if.end.i.i.i.i78:                                 ; preds = %for.body.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i.i.i.i74 = getelementptr inbounds %struct.mirror, ptr %m.041.i.i, i32 0, i32 4
  %265 = ptrtoint ptr %offset.i.i.i.i74 to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %offset.i.i.i.i74, align 8
  %267 = ptrtoint ptr %bi_iter.i.i.i.i68 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %bi_iter.i.i.i.i68, align 8
  %269 = ptrtoint ptr %m.041.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %m.041.i.i, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 8
  %begin.i.i.i.i75 = getelementptr inbounds %struct.dm_target, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %begin.i.i.i.i75 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %begin.i.i.i.i75, align 8
  %sub.i.i.i.i76 = add i64 %268, %266
  %add.i.i.i.i77 = sub i64 %sub.i.i.i.i76, %274
  br label %map_region.exit.i.i83

map_region.exit.i.i83:                            ; preds = %if.end.i.i.i.i78, %for.body.i.i73.map_region.exit.i.i83_crit_edge
  %retval.0.i.i.i.i79 = phi i64 [ %add.i.i.i.i77, %if.end.i.i.i.i78 ], [ 0, %for.body.i.i73.map_region.exit.i.i83_crit_edge ]
  %sector.i.i.i80 = getelementptr inbounds %struct.dm_io_region, ptr %dest.040.i.i, i32 0, i32 1
  %275 = ptrtoint ptr %sector.i.i.i80 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %retval.0.i.i.i.i79, ptr %sector.i.i.i80, align 8
  %count.i.i.i81 = getelementptr inbounds %struct.dm_io_region, ptr %dest.040.i.i, i32 0, i32 2
  %276 = ptrtoint ptr %count.i.i.i81 to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %conv.i.i.i70, ptr %count.i.i.i81, align 8
  %inc.i.i82 = add nuw i32 %i.039.i.i, 1
  %incdec.ptr13.i.i = getelementptr %struct.mirror, ptr %m.041.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i82, %257
  br i1 %exitcond.not.i.i, label %map_region.exit.i.i83.for.end.i.i_crit_edge, label %map_region.exit.i.i83.for.body.i.i73_crit_edge

map_region.exit.i.i83.for.body.i.i73_crit_edge:   ; preds = %map_region.exit.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i73

map_region.exit.i.i83.for.end.i.i_crit_edge:      ; preds = %map_region.exit.i.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %map_region.exit.i.i83.for.end.i.i_crit_edge, %if.end.i181.i.for.end.i.i_crit_edge
  %call.i.i.i.i.i84 = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i.i64, i32 noundef 4) #11
  %277 = ptrtoint ptr %default_mirror.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load volatile i32, ptr %default_mirror.i.i.i64, align 4
  %arrayidx.i.i.i85 = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %278
  %279 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %arrayidx.i.i.i85, ptr %233, align 8
  %280 = ptrtoint ptr %nr_mirrors.i.i62 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nr_mirrors.i.i62, align 4
  %call16.i.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i46, i32 noundef %281, ptr noundef nonnull %io.i.i45, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool.not.i182.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool.not.i182.i, label %do_write.exit.i, label %do.body20.i.i, !prof !190

do.body20.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-raid1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #11, !srcloc !195
  unreachable

do_write.exit.i:                                  ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i46) #11
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %io.i.i45) #11
  %282 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sync.i, align 4
  %tobool.not.i172.i = icmp eq ptr %283, null
  br i1 %tobool.not.i172.i, label %do_write.exit.i.if.end55.i_crit_edge, label %do_write.exit.i.if.then.i174.i_crit_edge

do_write.exit.i.if.then.i174.i_crit_edge:         ; preds = %do_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i174.i

do_write.exit.i.if.end55.i_crit_edge:             ; preds = %do_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.end55.i:                                       ; preds = %do_write.exit.i.if.end55.i_crit_edge, %if.else.i60.if.end55.i_crit_edge, %bio_list_merge.exit171.i
  %284 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %recover.promoted.i = load ptr, ptr %recover.i, align 4
  %tobool.not.i183237.i = icmp eq ptr %recover.promoted.i, null
  br i1 %tobool.not.i183237.i, label %if.end55.i.while.cond62.preheader.i_crit_edge, label %if.end55.i.if.then.i185.i_crit_edge

if.end55.i.if.then.i185.i_crit_edge:              ; preds = %if.end55.i
  br label %if.then.i185.i

if.end55.i.while.cond62.preheader.i_crit_edge:    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond62.preheader.i

while.cond62.preheader.i:                         ; preds = %if.then.i185.i.while.cond62.preheader.i_crit_edge, %if.end55.i.while.cond62.preheader.i_crit_edge
  %285 = ptrtoint ptr %nosync.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %nosync.i, align 4
  %tobool.not.i191240.i = icmp eq ptr %286, null
  br i1 %tobool.not.i191240.i, label %while.cond62.preheader.i.do_writes.exit_crit_edge, label %if.then.i193.lr.ph.i

while.cond62.preheader.i.do_writes.exit_crit_edge: ; preds = %while.cond62.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_writes.exit

if.then.i193.lr.ph.i:                             ; preds = %while.cond62.preheader.i
  %leg_failure.i = getelementptr i8, ptr %work, i32 -16
  %kmirrord_wq.i205.i = getelementptr i8, ptr %work, i32 -4
  %default_mirror.i.i86 = getelementptr i8, ptr %work, i32 -8
  br label %if.then.i193.i

if.then.i185.i:                                   ; preds = %if.then.i185.i.if.then.i185.i_crit_edge, %if.end55.i.if.then.i185.i_crit_edge
  %287 = phi ptr [ %289, %if.then.i185.i.if.then.i185.i_crit_edge ], [ %recover.promoted.i, %if.end55.i.if.then.i185.i_crit_edge ]
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 8
  %tobool4.not.i184.i = icmp eq ptr %289, null
  store ptr null, ptr %287, align 8
  %290 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rh, align 4
  call void @dm_rh_delay(ptr noundef %291, ptr noundef nonnull %287) #11
  br i1 %tobool4.not.i184.i, label %if.then.i185.i.while.cond62.preheader.i_crit_edge, label %if.then.i185.i.if.then.i185.i_crit_edge

if.then.i185.i.if.then.i185.i_crit_edge:          ; preds = %if.then.i185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i185.i

if.then.i185.i.while.cond62.preheader.i_crit_edge: ; preds = %if.then.i185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond62.preheader.i

if.then.i193.i:                                   ; preds = %if.end87.i.if.then.i193.i_crit_edge, %if.then.i193.lr.ph.i
  %292 = phi ptr [ %286, %if.then.i193.lr.ph.i ], [ %338, %if.end87.i.if.then.i193.i_crit_edge ]
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 8
  %295 = ptrtoint ptr %nosync.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %294, ptr %nosync.i, align 4
  %tobool4.not.i192.i = icmp eq ptr %294, null
  br i1 %tobool4.not.i192.i, label %if.then5.i195.i, label %if.then.i193.i.while.body65.i_crit_edge

if.then.i193.i.while.body65.i_crit_edge:          ; preds = %if.then.i193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body65.i

if.then5.i195.i:                                  ; preds = %if.then.i193.i
  call void @__sanitizer_cov_trace_pc() #13
  %296 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %155, align 4
  br label %while.body65.i

while.body65.i:                                   ; preds = %if.then5.i195.i, %if.then.i193.i.while.body65.i_crit_edge
  %297 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %292, align 8
  %298 = ptrtoint ptr %leg_failure.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %leg_failure.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool66.not.i = icmp eq i32 %299, 0
  br i1 %tobool66.not.i, label %while.body65.i.if.else85.i_crit_edge, label %land.lhs.true73.i, !prof !190

while.body65.i.if.else85.i_crit_edge:             ; preds = %while.body65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else85.i

land.lhs.true73.i:                                ; preds = %while.body65.i
  %300 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %features, align 8
  %302 = and i64 %301, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %302)
  %303 = icmp eq i64 %302, 1
  br i1 %303, label %if.then81.i, label %land.lhs.true73.i.if.else85.i_crit_edge

land.lhs.true73.i.if.else85.i_crit_edge:          ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else85.i

if.then81.i:                                      ; preds = %land.lhs.true73.i
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %304 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %292, align 8
  %305 = ptrtoint ptr %tail.i28 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %tail.i28, align 4
  %tobool.not.i200.i = icmp eq ptr %306, null
  br i1 %tobool.not.i200.i, label %if.else.i202.i, label %if.then.i201.i

if.then.i201.i:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #13
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %292, ptr %306, align 8
  br label %bio_list_add.exit204.i

if.else.i202.i:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #13
  %308 = ptrtoint ptr %failures8 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %292, ptr %failures8, align 4
  br label %bio_list_add.exit204.i

bio_list_add.exit204.i:                           ; preds = %if.else.i202.i, %if.then.i201.i
  %309 = ptrtoint ptr %tail.i28 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %292, ptr %tail.i28, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %310 = ptrtoint ptr %kmirrord_wq.i205.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %kmirrord_wq.i205.i, align 4
  %call.i.i207.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %311, ptr noundef %work) #11
  br label %if.end87.i

if.else85.i:                                      ; preds = %land.lhs.true73.i.if.else85.i_crit_edge, %while.body65.i.if.else85.i_crit_edge
  %call.i.i.i.i87 = call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i86, i32 noundef 4) #11
  %312 = ptrtoint ptr %default_mirror.i.i86 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %default_mirror.i.i86, align 4
  %arrayidx.i.i88 = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %313
  %dev.i.i89 = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %313, i32 3
  %314 = ptrtoint ptr %dev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev.i.i89, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %292, i32 0, i32 3
  %318 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %319, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %292, i32 0, i32 1
  %320 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %321, %317
  br i1 %cmp.not.i.i.i, label %if.else85.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

if.else85.i.bio_set_dev.exit.i.i_crit_edge:       ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i.i = and i16 %319, -2177
  %322 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %if.else85.i.bio_set_dev.exit.i.i_crit_edge
  %323 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %317, ptr %bi_bdev.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %292) #11
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %292, i32 0, i32 8, i32 1
  %324 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool.not.i.i.i = icmp eq i32 %325, 0
  br i1 %tobool.not.i.i.i, label %bio_set_dev.exit.i.i.map_bio.exit.i_crit_edge, label %if.end.i.i.i, !prof !192

bio_set_dev.exit.i.i.map_bio.exit.i_crit_edge:    ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bio.exit.i

if.end.i.i.i:                                     ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_iter.i.i.i = getelementptr inbounds %struct.bio, ptr %292, i32 0, i32 8
  %offset.i.i.i = getelementptr %struct.mirror_set, ptr %add.ptr, i32 0, i32 23, i32 %313, i32 4
  %326 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %offset.i.i.i, align 8
  %328 = ptrtoint ptr %bi_iter.i.i.i to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %bi_iter.i.i.i, align 8
  %330 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i.i88, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 8
  %begin.i.i.i = getelementptr inbounds %struct.dm_target, ptr %333, i32 0, i32 2
  %334 = ptrtoint ptr %begin.i.i.i to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %begin.i.i.i, align 8
  %sub.i.i.i = add i64 %329, %327
  %add.i.i.i = sub i64 %sub.i.i.i, %335
  br label %map_bio.exit.i

map_bio.exit.i:                                   ; preds = %if.end.i.i.i, %bio_set_dev.exit.i.i.map_bio.exit.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %add.i.i.i, %if.end.i.i.i ], [ 0, %bio_set_dev.exit.i.i.map_bio.exit.i_crit_edge ]
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %292, i32 0, i32 8
  %336 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 %retval.0.i.i.i, ptr %bi_iter.i.i, align 8
  call void @submit_bio_noacct(ptr noundef nonnull %292) #11
  br label %if.end87.i

if.end87.i:                                       ; preds = %map_bio.exit.i, %bio_list_add.exit204.i
  %337 = ptrtoint ptr %nosync.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %nosync.i, align 4
  %tobool.not.i191.i = icmp eq ptr %338, null
  br i1 %tobool.not.i191.i, label %if.end87.i.do_writes.exit_crit_edge, label %if.end87.i.if.then.i193.i_crit_edge

if.end87.i.if.then.i193.i_crit_edge:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i193.i

if.end87.i.do_writes.exit_crit_edge:              ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_writes.exit

do_writes.exit:                                   ; preds = %if.end87.i.do_writes.exit_crit_edge, %while.cond62.preheader.i.do_writes.exit_crit_edge, %do_reads.exit.do_writes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %recover.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nosync.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sync.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i90 = icmp eq i32 %7, 0
  br i1 %tobool.not.i90, label %do_writes.exit.do_failures.exit_crit_edge, label %while.cond.preheader.i, !prof !190

do_writes.exit.do_failures.exit_crit_edge:        ; preds = %do_writes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_failures.exit

while.cond.preheader.i:                           ; preds = %do_writes.exit
  %log_failure.i91 = getelementptr i8, ptr %work, i32 -20
  %mirror.i = getelementptr i8, ptr %work, i32 144
  %nr_mirrors.i = getelementptr i8, ptr %work, i32 140
  br label %if.then.i.i97

if.then.i.i97:                                    ; preds = %if.end29.i104.if.then.i.i97_crit_edge, %while.cond.preheader.i
  %339 = phi ptr [ %8, %while.cond.preheader.i ], [ %341, %if.end29.i104.if.then.i.i97_crit_edge ]
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 8
  %tobool4.not.i.i96 = icmp eq ptr %341, null
  store ptr null, ptr %339, align 8
  %342 = ptrtoint ptr %log_failure.i91 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %log_failure.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool5.not.i = icmp eq i32 %343, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then.i.i97.if.end7.i_crit_edge

if.then.i.i97.if.end7.i_crit_edge:                ; preds = %if.then.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  %344 = ptrtoint ptr %in_sync.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 0, ptr %in_sync.i, align 8
  %345 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %rh, align 4
  call void @dm_rh_mark_nosync(ptr noundef %346, ptr noundef nonnull %339) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then.i.i97.if.end7.i_crit_edge
  %347 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr8.i = getelementptr %struct.mirror, ptr %mirror.i, i32 %348
  %cmp9.i = icmp ult ptr %mirror.i, %add.ptr8.i
  br i1 %cmp9.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.if.then19.i_crit_edge

if.end7.i.if.then19.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %m.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %mirror.i, %if.end7.i.for.body.i_crit_edge ]
  %error_count.i108 = getelementptr inbounds %struct.mirror, ptr %m.010.i, i32 0, i32 1
  %call.i.i.i109 = call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i108, i32 noundef 4) #11
  %349 = ptrtoint ptr %error_count.i108 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load volatile i32, ptr %error_count.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i110 = icmp eq i32 %350, 0
  br i1 %tobool.not.i110, label %get_valid_mirror.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.mirror, ptr %m.010.i, i32 1
  %351 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr.i = getelementptr %struct.mirror, ptr %mirror.i, i32 %352
  %cmp.i111 = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i111, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then19.i_crit_edge

for.inc.i.if.then19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

get_valid_mirror.exit:                            ; preds = %for.body.i
  %tobool9.not.i = icmp eq ptr %m.010.i, null
  br i1 %tobool9.not.i, label %get_valid_mirror.exit.if.then19.i_crit_edge, label %lor.rhs.i, !prof !192

get_valid_mirror.exit.if.then19.i_crit_edge:      ; preds = %get_valid_mirror.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

lor.rhs.i:                                        ; preds = %get_valid_mirror.exit
  %353 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %features, align 8
  %and.i = and i64 %354, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool10.not.i100 = icmp eq i64 %and.i, 0
  br i1 %tobool10.not.i100, label %if.else.i102, label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %355 = ptrtoint ptr %log_failure.i91 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %log_failure.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool12.not.i = icmp eq i32 %356, 0
  br i1 %tobool12.not.i, label %land.rhs.i.if.else27.i_crit_edge, label %land.rhs.i.if.then19.i_crit_edge, !prof !190

land.rhs.i.if.then19.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

land.rhs.i.if.else27.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i

if.then19.i:                                      ; preds = %land.rhs.i.if.then19.i_crit_edge, %get_valid_mirror.exit.if.then19.i_crit_edge, %for.inc.i.if.then19.i_crit_edge, %if.end7.i.if.then19.i_crit_edge
  %bi_status.i.i101 = getelementptr inbounds %struct.bio, ptr %339, i32 0, i32 6
  %357 = ptrtoint ptr %bi_status.i.i101 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 10, ptr %bi_status.i.i101, align 2
  call void @bio_endio(ptr noundef nonnull %339) #11
  br label %if.end29.i104

if.else.i102:                                     ; preds = %lor.rhs.i
  %358 = and i64 %354, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %358)
  %359 = icmp eq i64 %358, 1
  br i1 %359, label %if.then26.i, label %if.else.i102.if.else27.i_crit_edge

if.else.i102.if.else27.i_crit_edge:               ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else27.i

if.then26.i:                                      ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @hold_bio(ptr noundef %add.ptr, ptr noundef nonnull %339) #11
  br label %if.end29.i104

if.else27.i:                                      ; preds = %if.else.i102.if.else27.i_crit_edge, %land.rhs.i.if.else27.i_crit_edge
  call void @bio_endio(ptr noundef nonnull %339) #11
  br label %if.end29.i104

if.end29.i104:                                    ; preds = %if.else27.i, %if.then26.i, %if.then19.i
  br i1 %tobool4.not.i.i96, label %if.end29.i104.do_failures.exit_crit_edge, label %if.end29.i104.if.then.i.i97_crit_edge

if.end29.i104.if.then.i.i97_crit_edge:            ; preds = %if.end29.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i97

if.end29.i104.do_failures.exit_crit_edge:         ; preds = %if.end29.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_failures.exit

do_failures.exit:                                 ; preds = %if.end29.i104.do_failures.exit_crit_edge, %do_writes.exit.do_failures.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_wake_fn(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_pending = getelementptr i8, ptr %t, i32 48
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %timer_pending) #11
  %kmirrord_wq.i = getelementptr i8, ptr %t, i32 -48
  %0 = ptrtoint ptr %kmirrord_wq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kmirrord_wq.i, align 4
  %kmirrord_work.i = getelementptr i8, ptr %t, i32 -44
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %kmirrord_work.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_event(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -240
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @dm_table_event(ptr noundef %3) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_features(ptr nocapture noundef %ms, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef %args_used) unnamed_addr #6 align 64 {
entry:
  %num_features = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_features) #11
  %0 = ptrtoint ptr %num_features to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_features, align 4, !annotation !189
  %1 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ms, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #11
  %3 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dummy, align 1, !annotation !189
  %4 = ptrtoint ptr %args_used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %args_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %argv, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %num_features, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %dec = add i32 %argc, -1
  %7 = ptrtoint ptr %args_used to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args_used, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %args_used, align 4
  %9 = ptrtoint ptr %num_features to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_features, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %dec)
  %cmp4 = icmp ugt i32 %10, %dec
  br i1 %cmp4, label %if.end3.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp856.not = icmp eq i32 %10, 0
  br i1 %cmp856.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %features17 = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %argv.pn = phi ptr [ %argv, %for.body.lr.ph ], [ %argv.addr.058, %if.end22.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %if.end22.for.body_crit_edge ]
  %argv.addr.058 = getelementptr ptr, ptr %argv.pn, i32 1
  %11 = ptrtoint ptr %argv.addr.058 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %argv.addr.058, align 4
  %call10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.43, ptr noundef %12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.if.end22_crit_edge, label %if.else

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.else:                                          ; preds = %for.body
  %call14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.44, ptr noundef %12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %.sink59 = phi i64 [ 1, %for.body.if.end22_crit_edge ], [ 2, %if.else.if.end22_crit_edge ]
  %13 = ptrtoint ptr %features17 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features17, align 8
  %or18 = or i64 %14, %.sink59
  store i64 %or18, ptr %features17, align 8
  %15 = ptrtoint ptr %args_used to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %args_used, align 4
  %inc25 = add i32 %16, 1
  store i32 %inc25, ptr %args_used, align 4
  %inc26 = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc26, %10
  br i1 %exitcond.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %features27 = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 2
  %17 = ptrtoint ptr %features27 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features27, align 8
  %19 = and i64 %18, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %19)
  %.not = icmp eq i64 %19, 2
  br i1 %.not, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.46.sink = phi ptr [ @.str.41, %if.end.cleanup.sink.split_crit_edge ], [ @.str.42, %if.end3.cleanup.sink.split_crit_edge ], [ @.str.46, %for.end.cleanup.sink.split_crit_edge ], [ @.str.45, %if.else.cleanup.sink.split_crit_edge ]
  %error33 = getelementptr inbounds %struct.dm_target, ptr %2, i32 0, i32 12
  %20 = ptrtoint ptr %error33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.str.46.sink, ptr %error33, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_features) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_mirrord(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kmirrord_wq = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 17
  %0 = ptrtoint ptr %kmirrord_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kmirrord_wq, align 4
  %kmirrord_work = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %kmirrord_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_dirty_log_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirror_flush(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %error_bits = alloca i32, align 4
  %io = alloca [9 x %struct.dm_io_region], align 8
  %io_req = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error_bits) #11
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %io) #11
  %2 = call ptr @memset(ptr %io, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req) #11
  %3 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 4
  %7 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %io_req, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 264192, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %4, align 4
  %io_client = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 10
  %10 = call ptr @memset(ptr %5, i32 0, i32 16)
  %11 = ptrtoint ptr %io_client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_client, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %6, align 4
  %mirror = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 23
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %14 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp40.not = icmp eq i32 %15, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %m.042 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %mirror, %entry.for.body_crit_edge ]
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.mirror, ptr %m.042, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %arrayidx = getelementptr [9 x %struct.dm_io_region], ptr %io, i32 0, i32 %i.041
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx, align 8
  %sector = getelementptr [9 x %struct.dm_io_region], ptr %io, i32 0, i32 %i.041, i32 1
  %inc = add nuw i32 %i.041, 1
  %incdec.ptr = getelementptr %struct.mirror, ptr %m.042, i32 1
  %21 = call ptr @memset(ptr %sector, i32 0, i32 16)
  %22 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_mirrors, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  %24 = ptrtoint ptr %error_bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %error_bits, align 4
  %call = call i32 @dm_io(ptr noundef nonnull %io_req, i32 noundef %.lcssa, ptr noundef nonnull %io, ptr noundef nonnull %error_bits) #11
  %25 = ptrtoint ptr %error_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6.not = icmp eq i32 %26, 0
  br i1 %cmp6.not, label %for.end.cleanup_crit_edge, label %for.cond8.preheader, !prof !190

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond8.preheader:                              ; preds = %for.end
  %27 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1043.not = icmp eq i32 %28, 0
  br i1 %cmp1043.not, label %for.cond8.preheader.cleanup_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body11:                                       ; preds = %for.inc17.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %i.144 = phi i32 [ %inc18, %for.inc17.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %29 = ptrtoint ptr %error_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %error_bits, align 4
  %and.i = and i32 %i.144, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not = icmp eq i32 %32, 0
  br i1 %tobool13.not, label %for.body11.for.inc17_crit_edge, label %if.then14

for.body11.for.inc17_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.mirror, ptr %mirror, i32 %i.144
  call fastcc void @fail_mirror(ptr noundef %add.ptr, i32 noundef 1)
  br label %for.inc17

for.inc17:                                        ; preds = %if.then14, %for.body11.for.inc17_crit_edge
  %inc18 = add nuw i32 %i.144, 1
  %33 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_mirrors, align 4
  %cmp10 = icmp ult i32 %inc18, %34
  br i1 %cmp10, label %for.inc17.for.body11_crit_edge, label %for.inc17.cleanup_crit_edge

for.inc17.cleanup_crit_edge:                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc17.for.body11_crit_edge:                   ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

cleanup:                                          ; preds = %for.inc17.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -5, %for.cond8.preheader.cleanup_crit_edge ], [ -5, %for.inc17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req) #11
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %io) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error_bits) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_io(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fail_mirror(ptr noundef %m, i32 noundef %error_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m, align 8
  %leg_failure = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %leg_failure to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %leg_failure, align 8
  %error_count = getelementptr inbounds %struct.mirror, ptr %m, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %error_count, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error_count, ptr %error_count, i32 1, ptr elementtype(i32) %error_count) #11, !srcloc !196
  %error_type2 = getelementptr inbounds %struct.mirror, ptr %m, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef %error_type, ptr noundef %error_type2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 8
  %and = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %default_mirror.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %default_mirror.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %default_mirror.i, align 4
  %arrayidx.i = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %7
  %cmp.not = icmp eq ptr %arrayidx.i, %m
  br i1 %cmp.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end5
  %in_sync = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 8
  %and11 = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %do.end, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mirror, ptr %m, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %13, i32 0, i32 3
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #14
  br label %out

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %mirror.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 23
  %nr_mirrors.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 22
  %14 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr8.i = getelementptr %struct.mirror, ptr %mirror.i, i32 %15
  %cmp9.i = icmp ult ptr %mirror.i, %add.ptr8.i
  br i1 %cmp9.i, label %if.end15.for.body.i_crit_edge, label %if.end15.do.end21_crit_edge

if.end15.do.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %m.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %mirror.i, %if.end15.for.body.i_crit_edge ]
  %error_count.i = getelementptr inbounds %struct.mirror, ptr %m.010.i, i32 0, i32 1
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %get_valid_mirror.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.mirror, ptr %m.010.i, i32 1
  %18 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr.i = getelementptr %struct.mirror, ptr %mirror.i, i32 %19
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end21_crit_edge

for.inc.i.do.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

get_valid_mirror.exit:                            ; preds = %for.body.i
  %tobool17.not = icmp eq ptr %m.010.i, null
  br i1 %tobool17.not, label %get_valid_mirror.exit.do.end21_crit_edge, label %if.then18

get_valid_mirror.exit.do.end21_crit_edge:         ; preds = %get_valid_mirror.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.then18:                                        ; preds = %get_valid_mirror.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %m.010.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m.010.i, align 8
  %mirror.i39 = getelementptr inbounds %struct.mirror_set, ptr %21, i32 0, i32 23
  %default_mirror.i40 = getelementptr inbounds %struct.mirror_set, ptr %21, i32 0, i32 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %m.010.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %mirror.i39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %default_mirror.i40, i32 noundef 4) #11
  %22 = ptrtoint ptr %default_mirror.i40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %sub.ptr.div.i, ptr %default_mirror.i40, align 4
  br label %out

do.end21:                                         ; preds = %get_valid_mirror.exit.do.end21_crit_edge, %for.inc.i.do.end21_crit_edge, %if.end15.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %out

out:                                              ; preds = %do.end21, %if.then18, %do.end, %if.end5.out_crit_edge
  %trigger_event = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i42 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %trigger_event) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_io_client_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_region_hash_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dispatch_bios(ptr noundef %context, ptr nocapture noundef %bio_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_list, align 4
  %tobool.not.i4 = icmp eq ptr %1, null
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %tail.i = getelementptr inbounds %struct.bio_list, ptr %bio_list, i32 0, i32 1
  %writes.i = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 3
  %tail.i.i = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 5, i32 1
  %kmirrord_wq.i.i = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 17
  %kmirrord_work.i.i = getelementptr inbounds %struct.mirror_set, ptr %context, i32 0, i32 18
  br label %if.then.i

if.then.i:                                        ; preds = %queue_bio.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %2 = phi ptr [ %1, %if.then.i.lr.ph ], [ %19, %queue_bio.exit.if.then.i_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bio_list, align 4
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tail.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then5.i, %if.then.i.while.body_crit_edge
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %8 = ptrtoint ptr %writes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writes.i, align 4
  %tobool.not.i1 = icmp eq ptr %9, null
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %2, align 8
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %2, ptr %12, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %writes.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %writes.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %2, ptr %tail.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool.not.i1, label %if.then.i2, label %bio_list_add.exit.i.queue_bio.exit_crit_edge

bio_list_add.exit.i.queue_bio.exit_crit_edge:     ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_bio.exit

if.then.i2:                                       ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %kmirrord_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kmirrord_wq.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %kmirrord_work.i.i) #11
  br label %queue_bio.exit

queue_bio.exit:                                   ; preds = %if.then.i2, %bio_list_add.exit.i.queue_bio.exit_crit_edge
  %18 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bio_list, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %queue_bio.exit.while.end_crit_edge, label %queue_bio.exit.if.then.i_crit_edge

queue_bio.exit.if.then.i_crit_edge:               ; preds = %queue_bio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

queue_bio.exit.while.end_crit_edge:               ; preds = %queue_bio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %queue_bio.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_all_recovery_waiters(ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__wake_up(ptr noundef nonnull @_kmirrord_recovery_stopped, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_bio(ptr noundef %ms, ptr noundef %bio, i32 noundef %rw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rw)
  %cmp = icmp eq i32 %rw, 1
  %writes = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 5
  %reads = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 4
  %cond = select i1 %cmp, ptr %writes, ptr %reads
  %lock = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cond, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.bio_list, ptr %cond, i32 0, i32 1
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %4, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bio, ptr %cond, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br i1 %tobool.not, label %if.then, label %bio_list_add.exit.if.end_crit_edge

bio_list_add.exit.if.end_crit_edge:               ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %kmirrord_wq.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 17
  %8 = ptrtoint ptr %kmirrord_wq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kmirrord_wq.i, align 4
  %kmirrord_work.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %kmirrord_work.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %bio_list_add.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_region_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_update_states(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_rh_dirty_log(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_recovery_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_rh_recovery_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_rh_get_region_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_rh_region_to_sector(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recovery_complete(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #2 align 64 {
entry:
  %write_err.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %write_err.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %write_err, ptr %write_err.addr, align 4
  %call = tail call ptr @dm_rh_region_context(ptr noundef %context) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_err)
  %tobool.not = icmp eq i32 %read_err, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @recovery_complete._rs, ptr noundef nonnull @__func__.recovery_complete) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %default_mirror.i = getelementptr inbounds %struct.mirror_set, ptr %call, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i, i32 noundef 4) #11
  %1 = ptrtoint ptr %default_mirror.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %default_mirror.i, align 4
  %arrayidx.i41 = getelementptr %struct.mirror_set, ptr %call, i32 0, i32 23, i32 %2
  tail call fastcc void @fail_mirror(ptr noundef %arrayidx.i41, i32 noundef 2)
  %3 = ptrtoint ptr %write_err.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %write_err.addr.0.48.pr = load i32, ptr %write_err.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %write_err.addr.0.48 = phi i32 [ %write_err.addr.0.48.pr, %if.end ], [ %write_err, %entry.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_err.addr.0.48)
  %tobool7.not = icmp eq i32 %write_err.addr.0.48, 0
  br i1 %tobool7.not, label %if.end6.if.end28_crit_edge, label %if.then8

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @recovery_complete._rs.32, ptr noundef nonnull @__func__.recovery_complete) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end17_crit_edge, label %do.end14

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %write_err.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %write_err.addr.0.49 = load i32, ptr %write_err.addr, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %write_err.addr.0.49) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.then8.if.end17_crit_edge
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %call, i32 0, i32 22
  %5 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp45.not = icmp eq i32 %6, 0
  br i1 %cmp45.not, label %if.end17.if.end28_crit_edge, label %for.body.lr.ph

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.body.lr.ph:                                   ; preds = %if.end17
  %mirror = getelementptr inbounds %struct.mirror_set, ptr %call, i32 0, i32 23
  %default_mirror.i42 = getelementptr inbounds %struct.mirror_set, ptr %call, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.047 = phi i32 [ 0, %for.body.lr.ph ], [ %bit.1, %for.inc.for.body_crit_edge ]
  %m.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mirror_set, ptr %call, i32 0, i32 23, i32 %m.046
  %call.i.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i42, i32 noundef 4) #11
  %7 = ptrtoint ptr %default_mirror.i42 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %default_mirror.i42, align 4
  %arrayidx.i44 = getelementptr %struct.mirror_set, ptr %call, i32 0, i32 23, i32 %8
  %cmp19 = icmp eq ptr %arrayidx, %arrayidx.i44
  br i1 %cmp19, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %9 = ptrtoint ptr %write_err.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %write_err.addr.0. = load volatile i32, ptr %write_err.addr, align 4
  %and.i = and i32 %bit.047, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %write_err.addr.0., %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.mirror, ptr %mirror, i32 %m.046
  tail call fastcc void @fail_mirror(ptr noundef %add.ptr, i32 noundef 2)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %inc = add i32 %bit.047, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %bit.1 = phi i32 [ %bit.047, %for.body.for.inc_crit_edge ], [ %inc, %if.end26 ]
  %inc27 = add nuw i32 %m.046, 1
  %12 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_mirrors, align 4
  %cmp = icmp ult i32 %inc27, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end28_crit_edge

for.inc.if.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end28:                                         ; preds = %for.inc.if.end28_crit_edge, %if.end17.if.end28_crit_edge, %if.end6.if.end28_crit_edge
  br i1 %tobool.not, label %lor.rhs, label %if.end28.lor.end_crit_edge

if.end28.lor.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %write_err.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %write_err.addr.0.50 = load i32, ptr %write_err.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_err.addr.0.50)
  %tobool30 = icmp eq i32 %write_err.addr.0.50, 0
  %phi.cast = zext i1 %tobool30 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end28.lor.end_crit_edge
  %15 = phi i32 [ 0, %if.end28.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  tail call void @dm_rh_recovery_end(ptr noundef %context, i32 noundef %15) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_rh_region_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_recovery_end(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_rh_bio_to_region(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_rh_get_state(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_callback(i32 noundef %error, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  store ptr null, ptr %context, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %context) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @fail_mirror(ptr noundef %1, i32 noundef 3)
  %call4 = tail call fastcc i32 @default_ok(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.if.then14_crit_edge, !prof !192

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call12 = tail call fastcc i32 @mirror_available(ptr noundef %3, ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end22, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @read_callback._rs, ptr noundef nonnull @__func__.read_callback) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %do.end

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mirror, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %5, i32 0, i32 3
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then14.if.end19_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %9, 1
  tail call fastcc void @queue_bio(ptr noundef %7, ptr noundef %context, i32 noundef %and.i)
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @read_callback._rs.37, ptr noundef nonnull @__func__.read_callback) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end34_crit_edge, label %do.end28

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %dev30 = getelementptr inbounds %struct.mirror, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr inbounds %struct.dm_dev, ptr %11, i32 0, i32 3
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name31) #14
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end22.if.end34_crit_edge
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 6
  %12 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %context) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end19, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @default_ok(ptr nocapture noundef readonly %m) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m, align 8
  %default_mirror.i = getelementptr inbounds %struct.mirror_set, ptr %1, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %default_mirror.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %default_mirror.i, align 4
  %error_count = getelementptr %struct.mirror_set, ptr %1, i32 0, i32 23, i32 %3, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count, i32 noundef 4) #11
  %4 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mirror_available(ptr noundef %ms, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rh = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 8
  %0 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rh, align 4
  %call = tail call ptr @dm_rh_dirty_log(ptr noundef %1) #11
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rh, align 4
  %call2 = tail call i64 @dm_rh_bio_to_region(ptr noundef %3, ptr noundef %bio) #11
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %in_sync = getelementptr inbounds %struct.dm_dirty_log_type, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_sync, align 4
  %call3 = tail call i32 %7(ptr noundef %call, i64 noundef %call2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %default_mirror.i.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mirror_set, ptr %ms, i32 0, i32 23, i32 %9
  %mirror.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 23
  %nr_mirrors.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 22
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then
  %m.0.i = phi ptr [ %arrayidx.i.i, %if.then ], [ %m.1.i, %do.cond.i.do.body.i_crit_edge ]
  %error_count.i = getelementptr inbounds %struct.mirror, ptr %m.0.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i.choose_mirror.exit_crit_edge, label %if.end.i, !prof !190

do.body.i.choose_mirror.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choose_mirror.exit

if.end.i:                                         ; preds = %do.body.i
  %incdec.ptr.i = getelementptr %struct.mirror, ptr %m.0.i, i32 -1
  %cmp.i = icmp eq ptr %m.0.i, %mirror.i
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %nr_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_mirrors.i, align 4
  %add.ptr.i = getelementptr %struct.mirror, ptr %incdec.ptr.i, i32 %13
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then5.i, %if.end.i.do.cond.i_crit_edge
  %m.1.i = phi ptr [ %add.ptr.i, %if.then5.i ], [ %incdec.ptr.i, %if.end.i.do.cond.i_crit_edge ]
  %call.i.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %default_mirror.i.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %default_mirror.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %default_mirror.i.i, align 4
  %arrayidx.i3.i = getelementptr %struct.mirror_set, ptr %ms, i32 0, i32 23, i32 %15
  %cmp8.not.i = icmp eq ptr %m.1.i, %arrayidx.i3.i
  br i1 %cmp8.not.i, label %do.cond.i.choose_mirror.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond.i.choose_mirror.exit_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choose_mirror.exit

choose_mirror.exit:                               ; preds = %do.cond.i.choose_mirror.exit_crit_edge, %do.body.i.choose_mirror.exit_crit_edge
  %retval.0.i = phi ptr [ %m.0.i, %do.body.i.choose_mirror.exit_crit_edge ], [ null, %do.cond.i.choose_mirror.exit_crit_edge ]
  %tobool5.not = icmp ne ptr %retval.0.i, null
  %cond = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %choose_mirror.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %choose_mirror.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_inc_pending(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_rh_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_delay(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_callback(i32 noundef %error, ptr noundef %context) #2 align 64 {
entry:
  %error.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %error.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %error, ptr %error.addr, align 4
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  store ptr null, ptr %context, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bio_endio(ptr noundef %context) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf, align 8
  %and = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %nr_mirrors = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp745.not = icmp eq i32 %8, 0
  br i1 %cmp745.not, label %for.cond.preheader.do.body12_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mirror = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 23
  br label %for.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef %context) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %error.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %error.addr.0. = load volatile i32, ptr %error.addr, align 4
  %and.i = and i32 %i.046, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %error.addr.0., %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.mirror, ptr %mirror, i32 %i.046
  tail call fastcc void @fail_mirror(ptr noundef %add.ptr, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.046, 1
  %13 = ptrtoint ptr %nr_mirrors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_mirrors, align 4
  %cmp7 = icmp ult i32 %inc, %14
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.do.body12_crit_edge

for.inc.do.body12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body12:                                        ; preds = %for.inc.do.body12_crit_edge, %for.cond.preheader.do.body12_crit_edge
  %lock = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 3
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %failures = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %failures, align 4
  %tobool18.not = icmp eq ptr %16, null
  %17 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %context, align 8
  %tail.i = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %context, ptr %19, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %context, ptr %failures, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %context, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #11
  br i1 %tobool18.not, label %if.then24, label %bio_list_add.exit.cleanup_crit_edge

bio_list_add.exit.cleanup_crit_edge:              ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %kmirrord_wq.i = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 17
  %23 = ptrtoint ptr %kmirrord_wq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kmirrord_wq.i, align 4
  %kmirrord_work.i = getelementptr inbounds %struct.mirror_set, ptr %4, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %kmirrord_work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %bio_list_add.exit.cleanup_crit_edge, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_mark_nosync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hold_bio(ptr noundef %ms, ptr noundef %bio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %suspend = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %suspend, i32 noundef 4) #11
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %2 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ms, align 8
  %call2 = tail call i32 @dm_noflush_suspending(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i8 10, i8 11
  %4 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 2
  tail call void @bio_endio(ptr noundef %bio) #11
  br label %return

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bio, ptr %8, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %holds = getelementptr inbounds %struct.mirror_set, ptr %ms, i32 0, i32 7
  %10 = ptrtoint ptr %holds to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bio, ptr %holds, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %return

return:                                           ; preds = %bio_list_add.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_noflush_suspending(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_dec(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_bio_restore(ptr nocapture noundef readonly %bd, ptr noundef %bio) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %bi_bdev1 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %2 = ptrtoint ptr %bi_bdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %bi_bdev1, align 4
  %bi_flags = getelementptr inbounds %struct.dm_bio_details, ptr %bd, i32 0, i32 2
  %3 = ptrtoint ptr %bi_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_flags, align 4
  %conv = trunc i32 %4 to i16
  %bi_flags2 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %5 = ptrtoint ptr %bi_flags2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bi_flags2, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_iter3 = getelementptr inbounds %struct.dm_bio_details, ptr %bd, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %bi_iter, ptr %bi_iter3, i32 20)
  %__bi_remaining = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 7
  %__bi_remaining4 = getelementptr inbounds %struct.dm_bio_details, ptr %bd, i32 0, i32 1
  %7 = ptrtoint ptr %__bi_remaining4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__bi_remaining4, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_remaining, i32 noundef 4) #11
  %9 = ptrtoint ptr %__bi_remaining to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %8, ptr %__bi_remaining, align 4
  %bi_end_io = getelementptr inbounds %struct.dm_bio_details, ptr %bd, i32 0, i32 4
  %10 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_end_io, align 4
  %bi_end_io5 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %12 = ptrtoint ptr %bi_end_io5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %bi_end_io5, align 8
  %bi_integrity = getelementptr inbounds %struct.dm_bio_details, ptr %bd, i32 0, i32 5
  %13 = ptrtoint ptr %bi_integrity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_integrity, align 4
  %15 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_stop_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_rh_recovery_in_flight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_rh_start_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__param_raid1_resync_throttle, !1, !"__param_raid1_resync_throttle", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-raid1.c", i32 89, i32 1}
!2 = !{ptr @__UNIQUE_ID_raid1_resync_throttletype280, !1, !"__UNIQUE_ID_raid1_resync_throttletype280", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_raid1_resync_throttle281, !1, !"__UNIQUE_ID_raid1_resync_throttle281", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dm_mirror__282_1509_dm_mirror_init6, !5, !"__initcall__kmod_dm_mirror__282_1509_dm_mirror_init6", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-raid1.c", i32 1509, i32 1}
!6 = !{ptr @__exitcall_dm_mirror_exit, !7, !"__exitcall_dm_mirror_exit", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-raid1.c", i32 1510, i32 1}
!8 = !{ptr @__UNIQUE_ID_description283, !9, !"__UNIQUE_ID_description283", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-raid1.c", i32 1512, i32 1}
!10 = !{ptr @__UNIQUE_ID_author284, !11, !"__UNIQUE_ID_author284", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-raid1.c", i32 1513, i32 1}
!12 = !{ptr @__UNIQUE_ID_file285, !13, !"__UNIQUE_ID_file285", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-raid1.c", i32 1514, i32 1}
!14 = !{ptr @__UNIQUE_ID_license286, !13, !"__UNIQUE_ID_license286", i1 false, i1 false}
!15 = !{ptr @__param_str_raid1_resync_throttle, !1, !"__param_str_raid1_resync_throttle", i1 false, i1 false}
!16 = !{ptr @dm_kcopyd_throttle, !1, !"dm_kcopyd_throttle", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-raid1.c", i32 1473, i32 11}
!19 = !{ptr @mirror_target, !20, !"mirror_target", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-raid1.c", i32 1472, i32 27}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-raid1.c", i32 1078, i32 31}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-raid1.c", i32 1080, i32 15}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-raid1.c", i32 1088, i32 15}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-raid1.c", i32 1120, i32 36}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-raid1.c", i32 1122, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mirror_ctr._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mirror_ctr._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mirror_ctr.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-raid1.c", i32 1126, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mirror_ctr.__key.9, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-raid1.c", i32 1127, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mirror_ctr.__key.11, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-raid1.c", i32 1129, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-raid1.c", i32 1148, i32 15}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-raid1.c", i32 976, i32 15}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-raid1.c", i32 981, i32 15}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-raid1.c", i32 995, i32 15}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-raid1.c", i32 239, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fail_mirror._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @fail_mirror._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-raid1.c", i32 248, i32 3}
!59 = !{ptr @fail_mirror._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @fail_mirror._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-raid1.c", i32 885, i32 15}
!63 = !{ptr @alloc_context.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-raid1.c", i32 889, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-raid1.c", i32 906, i32 15}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-raid1.c", i32 916, i32 15}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-raid1.c", i32 33, i32 8}
!72 = !{ptr @_kmirrord_recovery_stopped, !71, !"_kmirrord_recovery_stopped", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-raid1.c", i32 943, i32 22}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-raid1.c", i32 945, i32 15}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-raid1.c", i32 952, i32 15}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-raid1.c", i32 305, i32 3}
!81 = !{ptr @recovery_complete._rs, !80, !"_rs", i1 false, i1 false}
!82 = !{ptr @__func__.recovery_complete, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @recovery_complete._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @recovery_complete._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @recovery_complete._rs.32, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-raid1.c", i32 310, i32 3}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @recovery_complete._entry.33, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @recovery_complete._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @read_callback._rs, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-raid1.c", i32 521, i32 3}
!93 = !{ptr @__func__.read_callback, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @read_callback._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @read_callback._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @read_callback._rs.37, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-raid1.c", i32 528, i32 2}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @read_callback._entry.38, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @read_callback._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-raid1.c", i32 1016, i32 15}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-raid1.c", i32 1025, i32 15}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-raid1.c", i32 1030, i32 15}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-raid1.c", i32 1032, i32 20}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-raid1.c", i32 1035, i32 16}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/dm-raid1.c", i32 1044, i32 15}
!114 = !{ptr @mirror_end_io._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/md/dm-raid1.c", i32 1266, i32 4}
!116 = !{ptr @__func__.mirror_end_io, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mirror_end_io._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @mirror_end_io._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-raid1.c", i32 1272, i32 3}
!122 = !{ptr @mirror_end_io._entry.48, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mirror_end_io._entry_ptr.50, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-raid1.c", i32 1291, i32 3}
!126 = !{ptr @mirror_end_io._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mirror_end_io._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/md/dm-raid1.c", i32 1335, i32 3}
!130 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mirror_presuspend._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mirror_presuspend._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-raid1.c", i32 1353, i32 3}
!135 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mirror_postsuspend._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @mirror_postsuspend._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-raid1.c", i32 1364, i32 3}
!140 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mirror_resume._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @mirror_resume._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-raid1.c", i32 1404, i32 3}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-raid1.c", i32 1406, i32 4}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/md/dm-raid1.c", i32 1411, i32 3}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-raid1.c", i32 1422, i32 3}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/md/dm-raid1.c", i32 1424, i32 4}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/dm-raid1.c", i32 1430, i32 4}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/md/dm-raid1.c", i32 1432, i32 5}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/md/dm-raid1.c", i32 1434, i32 5}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/md/dm-raid1.c", i32 1440, i32 3}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/md/dm-raid1.c", i32 1441, i32 3}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-raid1.c", i32 1443, i32 4}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/dm-raid1.c", i32 1444, i32 4}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/md/dm-raid1.c", i32 1448, i32 3}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/md/dm-raid1.c", i32 1449, i32 3}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/md/dm-raid1.c", i32 1451, i32 3}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/md/dm-raid1.c", i32 1453, i32 3}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/md/dm-raid1.c", i32 1493, i32 3}
!177 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @dm_mirror_init._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @dm_mirror_init._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2148430083, i64 2148430363, i64 2148430697, i64 2148431031}
!192 = !{!"branch_weights", i32 1, i32 2000}
!193 = !{!"branch_weights", i32 4001, i32 1}
!194 = !{i64 2154560228, i64 2154560714, i64 2154560265, i64 2154560321, i64 2154560355, i64 2154560379, i64 2154560420, i64 2154560441, i64 2154560469, i64 2154560503}
!195 = !{i64 2154566871, i64 2154567357, i64 2154566908, i64 2154566964, i64 2154566998, i64 2154567022, i64 2154567063, i64 2154567084, i64 2154567112, i64 2154567146}
!196 = !{i64 2148580298, i64 2148580324, i64 2148580353, i64 2148580387, i64 2148580418, i64 2148580441}
