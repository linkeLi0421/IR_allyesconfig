; ModuleID = '/llk/IR_all_yes/drivers/md/dm-raid.c_pt.bc'
source_filename = "../drivers/md/dm-raid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.raid_type = type { ptr, ptr, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.83 = type { i32, ptr }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.raid_set = type { ptr, i32, i32, i32, [4 x i64], i32, i32, i32, i32, i32, %struct.mddev, ptr, i64, i64, %struct.journal_dev, [0 x %struct.raid_dev] }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.82, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.percpu_ref = type { i32, ptr }
%struct.anon.82 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.journal_dev = type { ptr, %struct.md_rdev, i32 }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.80, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.81 }
%union.anon.80 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.81 = type { i16, i32, i64 }
%struct.raid_dev = type { ptr, ptr, %struct.md_rdev }
%struct.md_personality = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_raid_superblock = type <{ i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, [3 x i64], i32 }>
%struct.r5conf = type { ptr, [8 x %struct.spinlock], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i16, %struct.seqcount_spinlock, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, %struct.atomic_t, i32, [2 x [32 x i8]], ptr, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.hlist_node, %struct.atomic_t, [8 x %struct.list_head], %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.shrinker, i32, %struct.spinlock, ptr, %struct.bio_set, ptr, [8 x %struct.list_head], ptr, i32, i32, ptr, ptr, %struct.spinlock, i8, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.llist_head = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@raid_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 15, i32 1], ptr @raid_ctr, ptr @raid_dtr, ptr @raid_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raid_postsuspend, ptr @raid_preresume, ptr @raid_resume, ptr @raid_status, ptr @raid_message, ptr null, ptr null, ptr null, ptr @raid_iterate_devices, ptr @raid_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_raid__297_4099_dm_raid_init6 = internal global ptr @dm_raid_init, section ".initcall6.init", align 4
@__exitcall_dm_raid_exit = internal global ptr @dm_raid_exit, section ".exitcall.exit", align 4
@__param_str_devices_handle_discard_safely = internal constant [38 x i8] c"dm_raid.devices_handle_discard_safely\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@devices_handle_discard_safely = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_devices_handle_discard_safely = internal constant %struct.kernel_param { ptr @__param_str_devices_handle_discard_safely, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @devices_handle_discard_safely } }, section "__param", align 4
@__UNIQUE_ID_devices_handle_discard_safelytype298 = internal constant [52 x i8] c"dm_raid.parmtype=devices_handle_discard_safely:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_devices_handle_discard_safely299 = internal constant [136 x i8] c"dm_raid.parm=devices_handle_discard_safely:Set to Y if all devices in each array reliably return zeroes on reads from discarded regions\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [58 x i8] c"dm_raid.description=device-mapper raid0/1/10/4/5/6 target\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [23 x i8] c"dm_raid.alias=dm-raid0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [23 x i8] c"dm_raid.alias=dm-raid1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [24 x i8] c"dm_raid.alias=dm-raid10\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [23 x i8] c"dm_raid.alias=dm-raid4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [23 x i8] c"dm_raid.alias=dm-raid5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [23 x i8] c"dm_raid.alias=dm-raid6\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [48 x i8] c"dm_raid.author=Neil Brown <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [55 x i8] c"dm_raid.author=Heinz Mauelshagen <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [32 x i8] c"dm_raid.file=drivers/md/dm-raid\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [20 x i8] c"dm_raid.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"raid\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot understand number of raid parameters\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot understand number of raid devices parameters\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No arguments\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unrecognised raid_type\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid number of supplied raid devices\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid rdev size\00", [46 x i8] zeroinitializer }, align 32
@raid_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&rs->md.event_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"'nosync' not allowed for new raid6 set\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't resize a reshaping raid set\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't takeover a journaled raid4/5/6 set\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't reshape a journaled raid4/5/6 set\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to run raid array\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to start raid array\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set raid4/5/6 journal mode\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reshape check failed\00", [43 x i8] zeroinitializer }, align 32
@raid_types = internal global { [20 x %struct.raid_type], [96 x i8] } { [20 x %struct.raid_type] [%struct.raid_type { ptr @.str.17, ptr @.str.18, i32 0, i32 2, i32 0, i32 0 }, %struct.raid_type { ptr @.str.19, ptr @.str.20, i32 0, i32 2, i32 1, i32 0 }, %struct.raid_type { ptr @.str.21, ptr @.str.22, i32 0, i32 2, i32 10, i32 3 }, %struct.raid_type { ptr @.str.23, ptr @.str.24, i32 0, i32 2, i32 10, i32 2 }, %struct.raid_type { ptr @.str.25, ptr @.str.26, i32 0, i32 2, i32 10, i32 1 }, %struct.raid_type { ptr @.str.27, ptr @.str.28, i32 0, i32 2, i32 10, i32 0 }, %struct.raid_type { ptr @.str.29, ptr @.str.30, i32 1, i32 2, i32 5, i32 4 }, %struct.raid_type { ptr @.str.31, ptr @.str.32, i32 1, i32 2, i32 5, i32 5 }, %struct.raid_type { ptr @.str.33, ptr @.str.34, i32 1, i32 2, i32 5, i32 2 }, %struct.raid_type { ptr @.str.35, ptr @.str.36, i32 1, i32 2, i32 5, i32 3 }, %struct.raid_type { ptr @.str.37, ptr @.str.38, i32 1, i32 2, i32 5, i32 0 }, %struct.raid_type { ptr @.str.39, ptr @.str.40, i32 1, i32 2, i32 5, i32 1 }, %struct.raid_type { ptr @.str.41, ptr @.str.42, i32 2, i32 4, i32 6, i32 8 }, %struct.raid_type { ptr @.str.43, ptr @.str.44, i32 2, i32 4, i32 6, i32 9 }, %struct.raid_type { ptr @.str.45, ptr @.str.46, i32 2, i32 4, i32 6, i32 10 }, %struct.raid_type { ptr @.str.47, ptr @.str.48, i32 2, i32 4, i32 6, i32 5 }, %struct.raid_type { ptr @.str.49, ptr @.str.50, i32 2, i32 4, i32 6, i32 18 }, %struct.raid_type { ptr @.str.51, ptr @.str.52, i32 2, i32 4, i32 6, i32 19 }, %struct.raid_type { ptr @.str.53, ptr @.str.54, i32 2, i32 4, i32 6, i32 16 }, %struct.raid_type { ptr @.str.55, ptr @.str.56, i32 2, i32 4, i32 6, i32 17 }], [96 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid0\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raid0 (striping)\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raid1 (mirroring)\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid10_far\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"raid10 far (striped mirrors)\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raid10_offset\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"raid10 offset (striped mirrors)\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raid10_near\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"raid10 near (striped mirrors)\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raid10\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raid10 (striped mirrors)\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raid4\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"raid4 (dedicated first parity disk)\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"raid5_n\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"raid5 (dedicated last parity disk)\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid5_ls\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"raid5 (left symmetric)\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid5_rs\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"raid5 (right symmetric)\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid5_la\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"raid5 (left asymmetric)\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid5_ra\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raid5 (right asymmetric)\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid6_zr\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raid6 (zero restart)\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid6_nr\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raid6 (N restart)\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raid6_nc\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raid6 (N continue)\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"raid6_n_6\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"raid6 (dedicated parity/Q n/6)\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid6_ls_6\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"raid6 (left symmetric dedicated Q 6)\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid6_rs_6\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"raid6 (right symmetric dedicated Q 6)\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid6_la_6\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"raid6 (left asymmetric dedicated Q 6)\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid6_ra_6\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"raid6 (right asymmetric dedicated Q 6)\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Insufficient number of devices\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot allocate raid context\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Bad numerical argument given for chunk_size\00", [52 x i8] zeroinitializer }, align 32
@parse_raid_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.62, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: raid: Ignoring chunk size parameter for RAID 1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_raid_params\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/md/dm-raid.c\00", [43 x i8] zeroinitializer }, align 32
@parse_raid_params._entry_ptr = internal global ptr @parse_raid_params._entry, section ".printk_index", align 4
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chunk size must be a power of 2\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Chunk size value is too small\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Not enough raid parameters given\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Only one 'nosync' argument allowed\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Only one 'sync' argument allowed\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Only one 'raid10_use_new_sets' argument allowed\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wrong number of raid parameters given\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Only one 'raid10_format' argument pair allowed\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"'raid10_format' is an invalid parameter for this RAID type\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid 'raid10_format' value given\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Only one raid4/5/6 set journaling device allowed\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"'journal_dev' is an invalid parameter for this RAID type\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"raid4/5/6 journal device lookup failure\00", [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No space for raid4/5/6 journal\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"raid4/5/6 'journal_mode' is invalid without 'journal_dev'\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Only one raid4/5/6 'journal_mode' argument allowed\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid 'journal_mode' argument\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Bad numerical argument given in raid params\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid rebuild index given\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rebuild for this index already given\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write_mostly option is only valid for RAID1\00", [52 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid write_mostly index given\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"max_write_behind option is only valid for RAID1\00", [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Only one max_write_behind argument pair allowed\00", [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Max write-behind limit out of range\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Only one daemon_sleep argument pair allowed\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"daemon sleep period out of range\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Only one data_offset argument pair allowed\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bogus data_offset value\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Only one delta_disks argument pair allowed\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many delta_disk requested\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Only one stripe_cache argument pair allowed\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Inappropriate argument: stripe_cache\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bogus stripe cache entries value\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Only one min_recovery_rate argument pair allowed\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"min_recovery_rate out of range\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Only one max_recovery_rate argument pair allowed\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max_recovery_rate out of range\00", [33 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Only one region_size argument pair allowed\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Only one raid10_copies argument pair allowed\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bad value for 'raid10_copies'\00", [34 x i8] zeroinitializer }, align 32
@parse_raid_params._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.61, ptr @.str.62, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: raid: Unable to parse RAID parameter: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_raid_params._entry_ptr.106 = internal global ptr @parse_raid_params._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to parse RAID parameter\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sync and nosync are mutually exclusive\00", [57 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sync/nosync and rebuild are mutually exclusive\00", [49 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't set all raid1 devices to write_mostly\00", [52 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bogus recovery rates\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Not enough devices to satisfy specification\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error getting raid10 format\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to recognize new raid10 layout\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"RAID10 format 'near' and 'raid10_use_near_sets' are incompatible\00", [63 x i8] zeroinitializer }, align 32
@dm_raid_arg_name_by_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.62, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: raid: %s called with more than one flag!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dm_raid_arg_name_by_flag\00", [39 x i8] zeroinitializer }, align 32
@dm_raid_arg_name_by_flag._entry_ptr = internal global ptr @dm_raid_arg_name_by_flag._entry, section ".printk_index", align 4
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nosync\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rebuild\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"daemon_sleep\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"min_recovery_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_recovery_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_write_behind\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_mostly\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stripe_cache\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"region_size\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raid10_copies\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raid10_format\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_offset\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delta_disks\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raid10_use_near_sets\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal_dev\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"near\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"far\00", [28 x i8] zeroinitializer }, align 32
@_raid456_journal_mode = internal constant { [2 x %struct.anon.83], [16 x i8] } { [2 x %struct.anon.83] [%struct.anon.83 { i32 0, ptr @.str.138 }, %struct.anon.83 { i32 1, ptr @.str.139 }], [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"writethrough\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@validate_region_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.62, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016device-mapper: raid: Choosing default region size of %lu sectors\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"validate_region_size\00", [43 x i8] zeroinitializer }, align 32
@validate_region_size._entry_ptr = internal global ptr @validate_region_size._entry, section ".printk_index", align 4
@validate_region_size._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.62, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016device-mapper: raid: Choosing default region size of 4MiB\0A\00", [35 x i8] zeroinitializer }, align 32
@validate_region_size._entry_ptr.144 = internal global ptr @validate_region_size._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Supplied region size is too large\00", [62 x i8] zeroinitializer }, align 32
@validate_region_size._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.141, ptr @.str.62, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013device-mapper: raid: Supplied region_size (%lu sectors) below minimum (%lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@validate_region_size._entry_ptr.148 = internal global ptr @validate_region_size._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Supplied region size is too small\00", [62 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Region size is not a power of 2\00", [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Region size is smaller than the chunk size\00", [53 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid flags combination\00", [38 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RAID metadata device lookup failure\00", [60 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate superblock page\00", [61 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Drive designated for rebuild not specified\00", [53 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No data device supplied with metadata device\00", [51 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RAID device lookup failure\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to rebuild drive while array is not in-sync\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Bogus raid10 data copies or delta disks\00", [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Target length not divisible by number of data devices\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Component device(s) too small\00", [34 x i8] zeroinitializer }, align 32
@analyse_superblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.62, i32 2519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: raid: superblock size of a logical block is no longer valid\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"analyse_superblocks\00", [44 x i8] zeroinitializer }, align 32
@analyse_superblocks._entry_ptr = internal global ptr @analyse_superblocks._entry, section ".printk_index", align 4
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to assemble array: Invalid superblocks\00", [50 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Insufficient redundancy to activate array\00", [54 x i8] zeroinitializer }, align 32
@read_disk_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.62, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: raid: Failed to read superblock of device at position %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_disk_sb\00", [19 x i8] zeroinitializer }, align 32
@read_disk_sb._entry_ptr = internal global ptr @read_disk_sb._entry, section ".printk_index", align 4
@.str.170 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unable to assemble array: Unknown flag(s) in compatible feature flags\00", [58 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unable to assemble array: No incompatible feature flags supported yet\00", [58 x i8] zeroinitializer }, align 32
@super_init_validation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.62, i32 2248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: raid: Reshape requested but raid set is still reshaping\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"super_init_validation\00", [42 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr = internal global ptr @super_init_validation._entry, section ".printk_index", align 4
@super_init_validation._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.62, i32 2272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013device-mapper: raid: Takeover raid sets from %s to %s not yet supported by metadata. (raid level change)\0A\00", [52 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.176 = internal global ptr @super_init_validation._entry.174, section ".printk_index", align 4
@super_init_validation._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.62, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013device-mapper: raid: Takeover raid sets not yet supported by metadata. (raid level change)\0A\00", [34 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.179 = internal global ptr @super_init_validation._entry.177, section ".printk_index", align 4
@super_init_validation._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.62, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013device-mapper: raid: Reshaping raid sets not yet supported by metadata. (raid layout change keeping level)\0A\00", [50 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.182 = internal global ptr @super_init_validation._entry.180, section ".printk_index", align 4
@super_init_validation._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.173, ptr @.str.62, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: raid: \09 current layout %s vs new layout %s\0A\00", [35 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.185 = internal global ptr @super_init_validation._entry.183, section ".printk_index", align 4
@super_init_validation._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.173, ptr @.str.62, i32 2284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: raid: \09 current layout 0x%X vs new layout 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.188 = internal global ptr @super_init_validation._entry.186, section ".printk_index", align 4
@super_init_validation._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.173, ptr @.str.62, i32 2288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: raid: \09 current stripe sectors %u vs new stripe sectors %u\0A\00", [51 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.191 = internal global ptr @super_init_validation._entry.189, section ".printk_index", align 4
@super_init_validation._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.173, ptr @.str.62, i32 2291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: raid: \09 current %u disks vs new %u disks\0A\00", [37 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.194 = internal global ptr @super_init_validation._entry.192, section ".printk_index", align 4
@super_init_validation._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.173, ptr @.str.62, i32 2295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: raid: \09 Old layout: %s w/ %u copies\0A\00", [42 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.197 = internal global ptr @super_init_validation._entry.195, section ".printk_index", align 4
@super_init_validation._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.173, ptr @.str.62, i32 2298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: raid: \09 New layout: %s w/ %u copies\0A\00", [42 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.200 = internal global ptr @super_init_validation._entry.198, section ".printk_index", align 4
@super_init_validation._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.173, ptr @.str.62, i32 2303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016device-mapper: raid: Discovered old metadata format; upgrading to extended metadata format\0A\00", [34 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.203 = internal global ptr @super_init_validation._entry.201, section ".printk_index", align 4
@super_init_validation._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.173, ptr @.str.62, i32 2334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016device-mapper: raid: Device %d specified for rebuild; clearing superblock\0A\00", [51 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.206 = internal global ptr @super_init_validation._entry.204, section ".printk_index", align 4
@super_init_validation._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.173, ptr @.str.62, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016device-mapper: raid: Superblocks created for new raid set\0A\00", [35 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.209 = internal global ptr @super_init_validation._entry.207, section ".printk_index", align 4
@super_init_validation._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.173, ptr @.str.62, i32 2352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\013device-mapper: raid: New device injected into existing raid set without 'delta_disks' or 'rebuild' parameter specified\0A\00", [38 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.212 = internal global ptr @super_init_validation._entry.210, section ".printk_index", align 4
@super_init_validation._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.173, ptr @.str.62, i32 2358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013device-mapper: raid: %u 'rebuild' devices cannot be injected into a raid set with %u other first-time devices\0A\00", [47 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.215 = internal global ptr @super_init_validation._entry.213, section ".printk_index", align 4
@super_init_validation._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.173, ptr @.str.62, i32 2363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: raid: new device%s provided without 'rebuild'\0A\00", [32 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.218 = internal global ptr @super_init_validation._entry.216, section ".printk_index", align 4
@.str.219 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@super_init_validation._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.173, ptr @.str.62, i32 2367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013device-mapper: raid: 'rebuild' specified while raid set is not in-sync (recovery_cp=%llu)\0A\00", [35 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.223 = internal global ptr @super_init_validation._entry.221, section ".printk_index", align 4
@super_init_validation._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.173, ptr @.str.62, i32 2371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013device-mapper: raid: 'rebuild' specified while raid set is being reshaped (reshape_position=%llu)\0A\00", [59 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.226 = internal global ptr @super_init_validation._entry.224, section ".printk_index", align 4
@.str.227 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot change raid10 near set to odd # of devices!\00", [45 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot change device positions in raid set\00", [53 x i8] zeroinitializer }, align 32
@super_init_validation._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.173, ptr @.str.62, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016device-mapper: raid: raid device #%d now at position #%d\0A\00", [36 x i8] zeroinitializer }, align 32
@super_init_validation._entry_ptr.231 = internal global ptr @super_init_validation._entry.229, section ".printk_index", align 4
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@validate_raid_redundancy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.62, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: raid: Bogus raid10 data copies < 2!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"validate_raid_redundancy\00", [39 x i8] zeroinitializer }, align 32
@validate_raid_redundancy._entry_ptr = internal global ptr @validate_raid_redundancy._entry, section ".printk_index", align 4
@.str.235 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't takeover degraded raid set\00", [63 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't takeover reshaping raid set\00", [62 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"takeover not possible\00", [42 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't reshape raid10 mirror groups\00", [61 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Called with bogus raid type\00", [36 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No space for forward reshape\00", [35 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No space for backward reshape\00", [34 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Inappropriate raid level; cannot change stripe_cache size\00", [38 x i8] zeroinitializer }, align 32
@rs_set_raid456_stripe_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.62, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016device-mapper: raid: Adjusting requested %u stripe cache entries to %u to suit stripe size\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rs_set_raid456_stripe_cache\00", [36 x i8] zeroinitializer }, align 32
@rs_set_raid456_stripe_cache._entry_ptr = internal global ptr @rs_set_raid456_stripe_cache._entry, section ".printk_index", align 4
@.str.245 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot change stripe_cache size on inactive RAID set\00", [43 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set raid4/5/6 stripe cache size\00", [54 x i8] zeroinitializer }, align 32
@rs_set_raid456_stripe_cache._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.244, ptr @.str.62, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016device-mapper: raid: %u stripe cache entries\0A\00", [48 x i8] zeroinitializer }, align 32
@rs_set_raid456_stripe_cache._entry_ptr.249 = internal global ptr @rs_set_raid456_stripe_cache._entry.247, section ".printk_index", align 4
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reshape not supported\00", [42 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't reshape degraded raid set\00", [32 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Convert request on recovering raid set prohibited\00", [46 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"raid set already reshaping!\00", [36 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Reshaping only supported for raid1/4/5/6/10\00", [52 x i8] zeroinitializer }, align 32
@configure_discard_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.62, i32 2977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013device-mapper: raid: raid456 discard support disabled due to discard_zeroes_data uncertainty.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"configure_discard_support\00", [38 x i8] zeroinitializer }, align 32
@configure_discard_support._entry_ptr = internal global ptr @configure_discard_support._entry, section ".printk_index", align 4
@configure_discard_support._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.62, i32 2978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: raid: Set dm-raid.devices_handle_discard_safely=Y to override.\0A\00", [47 x i8] zeroinitializer }, align 32
@configure_discard_support._entry_ptr.259 = internal global ptr @configure_discard_support._entry.257, section ".printk_index", align 4
@raid_preresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.62, i32 4013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013device-mapper: raid: Failed to resize bitmap\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raid_preresume\00", [17 x i8] zeroinitializer }, align 32
@raid_preresume._entry_ptr = internal global ptr @raid_preresume._entry, section ".printk_index", align 4
@raid_preresume._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.261, ptr @.str.62, i32 4034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014device-mapper: raid: Failed to check/start reshape, continuing without change\0A\00", [47 x i8] zeroinitializer }, align 32
@raid_preresume._entry_ptr.264 = internal global ptr @raid_preresume._entry.262, section ".printk_index", align 4
@__load_dirty_region_bitmap._entry = internal constant %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.62, i32 3901, ptr null, ptr null }, align 1
@.str.265 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013device-mapper: raid: Failed to load bitmap\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__load_dirty_region_bitmap\00", [37 x i8] zeroinitializer }, align 32
@__load_dirty_region_bitmap._entry_ptr = internal global ptr @__load_dirty_region_bitmap._entry, section ".printk_index", align 4
@.str.267 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pers->check_reshape() failed\00", [35 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pers->start_reshape() failed\00", [35 x i8] zeroinitializer }, align 32
@rs_setup_reshape._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.62, i32 2847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016device-mapper: raid: Ignoring invalid layout change with delta_disks=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs_setup_reshape\00", [47 x i8] zeroinitializer }, align 32
@rs_setup_reshape._entry_ptr = internal global ptr @rs_setup_reshape._entry, section ".printk_index", align 4
@attempt_restore_of_faulty_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.62, i32 3835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016device-mapper: raid: Faulty %s device #%d has readable super block.  Attempting to revive it.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"attempt_restore_of_faulty_devices\00", [62 x i8] zeroinitializer }, align 32
@attempt_restore_of_faulty_devices._entry_ptr = internal global ptr @attempt_restore_of_faulty_devices._entry, section ".printk_index", align 4
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d \00", [25 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"check\00", [26 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %llu/%llu\00", [21 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %llu\00", [26 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %u %u\00", [23 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s %u\00", [25 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %s %lu\00", [24 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s %d\00", [25 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s %llu\00", [23 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s %s\00", [25 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c",raid_type=%s,raid_disks=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",raid_state=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",raid_device_%d_status=\00", [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",journal_dev_mode=\00", [45 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@sync_str.sync_strs = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.274, ptr @.str.299, ptr @.str.300, ptr @.str.301], [36 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"frozen\00", [25 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reshape\00", [24 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resync\00", [25 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"repair\00", [25 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@dm_raid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str.62, i32 4090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016device-mapper: raid: Loading target version %u.%u.%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_raid_init\00", [19 x i8] zeroinitializer }, align 32
@dm_raid_init._entry_ptr = internal global ptr @dm_raid_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.307 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.308 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.309 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.310 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.311 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.312 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.313 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.316 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 10]
@__sancov_gen_cov_switch_values.317 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 10]
@__sancov_gen_cov_switch_values.318 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.319 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.320 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.321 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.322 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 6, i64 10]
@__sancov_gen_cov_switch_values.323 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.324 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.326 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.327 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.328 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.329 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.330 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.331 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.332 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@___asan_gen_.334 = private unnamed_addr constant [12 x i8] c"raid_target\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 4069, i32 27 }
@___asan_gen_.337 = private unnamed_addr constant [30 x i8] c"devices_handle_discard_safely\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 32, i32 13 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 4070, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3012, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3013, i32 13 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3018, i32 15 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3024, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3040, i32 15 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3087, i32 15 }
@___asan_gen_.361 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3100, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3117, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3130, i32 16 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3144, i32 16 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3180, i32 16 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3251, i32 15 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3258, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3267, i32 16 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3295, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant [11 x i8] c"raid_types\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 291, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 292, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 292, i32 14 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 293, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 293, i32 14 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 294, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 294, i32 19 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 295, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 295, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 296, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 296, i32 20 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 297, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 297, i32 15 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 298, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 298, i32 14 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 299, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 299, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 300, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 300, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 301, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 301, i32 17 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 302, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 302, i32 17 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 303, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 303, i32 17 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 304, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 304, i32 17 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 305, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 305, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 306, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 306, i32 17 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 307, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 307, i32 18 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 308, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 308, i32 19 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 309, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 309, i32 19 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 310, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 310, i32 19 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 311, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 311, i32 19 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 741, i32 15 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 747, i32 15 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1137, i32 19 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1147, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1150, i32 19 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1153, i32 19 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1187, i32 20 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1193, i32 21 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1200, i32 21 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1207, i32 21 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1216, i32 20 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1226, i32 21 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1230, i32 21 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1235, i32 21 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1247, i32 21 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1251, i32 21 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1257, i32 21 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1266, i32 21 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1279, i32 21 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1283, i32 21 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1288, i32 21 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1299, i32 20 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1310, i32 21 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1315, i32 21 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1326, i32 21 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1331, i32 21 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1340, i32 21 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1345, i32 21 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1354, i32 21 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1361, i32 21 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1365, i32 21 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1372, i32 21 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1378, i32 21 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1385, i32 21 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1390, i32 21 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1397, i32 21 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1402, i32 21 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1407, i32 21 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1413, i32 21 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1418, i32 21 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1424, i32 21 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1429, i32 21 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1435, i32 21 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1443, i32 21 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1448, i32 21 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1454, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1455, i32 20 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1462, i32 19 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1469, i32 19 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1474, i32 19 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1480, i32 19 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1497, i32 20 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1503, i32 20 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1509, i32 20 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1516, i32 20 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 355, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 325, i32 19 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 326, i32 21 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 327, i32 22 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 328, i32 27 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 329, i32 32 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 330, i32 32 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 331, i32 31 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 332, i32 27 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 333, i32 27 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 334, i32 26 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 335, i32 28 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 336, i32 28 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 337, i32 26 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 338, i32 26 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 339, i32 35 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 340, i32 26 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 341, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 581, i32 24 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 583, i32 29 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 585, i32 29 }
@___asan_gen_.760 = private unnamed_addr constant [22 x i8] c"_raid456_journal_mode\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 364, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 365, i32 37 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 366, i32 37 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 951, i32 4 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 954, i32 4 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 962, i32 20 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 967, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 969, i32 20 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 974, i32 20 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 979, i32 20 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 514, i32 19 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 850, i32 19 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 854, i32 21 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 860, i32 21 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 872, i32 21 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 877, i32 21 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 887, i32 20 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 920, i32 19 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1642, i32 20 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1667, i32 18 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1612, i32 21 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2519, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2572, i32 18 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2577, i32 19 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2040, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2449, i32 19 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2454, i32 19 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2248, i32 5 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2271, i32 5 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2274, i32 5 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2277, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2280, i32 6 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2283, i32 6 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2287, i32 5 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2290, i32 5 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2293, i32 5 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2296, i32 5 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2303, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2333, i32 4 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2347, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2351, i32 4 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2356, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2362, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2366, i32 4 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2370, i32 4 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2402, i32 8 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2411, i32 22 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2415, i32 5 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 575, i32 9 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1028, i32 4 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1718, i32 19 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1723, i32 19 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1862, i32 18 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2768, i32 21 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2795, i32 19 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2666, i32 33 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2667, i32 12 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1541, i32 19 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1546, i32 3 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1553, i32 19 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1561, i32 20 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 1565, i32 3 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2015, i32 19 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2017, i32 19 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2019, i32 19 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2021, i32 19 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2023, i32 19 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2977, i32 5 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2978, i32 5 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 4013, i32 4 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 4034, i32 4 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3901, i32 4 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3946, i32 19 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3957, i32 20 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 2847, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3833, i32 4 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3532, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3542, i32 88 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3561, i32 3 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3571, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3580, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3620, i32 3 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3628, i32 6 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3630, i32 4 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3633, i32 4 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3650, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3656, i32 4 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3670, i32 3 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3681, i32 3 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3682, i32 3 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3688, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3691, i32 4 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3696, i32 4 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3699, i32 5 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3707, i32 5 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3711, i32 3 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3411, i32 10 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3413, i32 69 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3413, i32 75 }
@___asan_gen_.1195 = private unnamed_addr constant [10 x i8] c"sync_strs\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3352, i32 21 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3353, i32 3 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3354, i32 3 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3355, i32 3 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3357, i32 3 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3358, i32 3 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 3359, i32 3 }
@___asan_gen_.1216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1223 = private constant [24 x i8] c"../drivers/md/dm-raid.c\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1223, i32 4087, i32 2 }
@llvm.compiler.used = appending global [353 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_devices_handle_discard_safely299, ptr @__UNIQUE_ID_devices_handle_discard_safelytype298, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_dm_raid_exit, ptr @__initcall__kmod_dm_raid__297_4099_dm_raid_init6, ptr @__load_dirty_region_bitmap._entry, ptr @__load_dirty_region_bitmap._entry_ptr, ptr @__param_devices_handle_discard_safely, ptr @analyse_superblocks._entry, ptr @analyse_superblocks._entry_ptr, ptr @attempt_restore_of_faulty_devices._entry, ptr @attempt_restore_of_faulty_devices._entry_ptr, ptr @configure_discard_support._entry, ptr @configure_discard_support._entry.257, ptr @configure_discard_support._entry_ptr, ptr @configure_discard_support._entry_ptr.259, ptr @dm_raid_arg_name_by_flag._entry, ptr @dm_raid_arg_name_by_flag._entry_ptr, ptr @dm_raid_exit, ptr @dm_raid_init._entry, ptr @dm_raid_init._entry_ptr, ptr @parse_raid_params._entry, ptr @parse_raid_params._entry.104, ptr @parse_raid_params._entry_ptr, ptr @parse_raid_params._entry_ptr.106, ptr @raid_preresume._entry, ptr @raid_preresume._entry.262, ptr @raid_preresume._entry_ptr, ptr @raid_preresume._entry_ptr.264, ptr @read_disk_sb._entry, ptr @read_disk_sb._entry_ptr, ptr @rs_set_raid456_stripe_cache._entry, ptr @rs_set_raid456_stripe_cache._entry.247, ptr @rs_set_raid456_stripe_cache._entry_ptr, ptr @rs_set_raid456_stripe_cache._entry_ptr.249, ptr @rs_setup_reshape._entry, ptr @rs_setup_reshape._entry_ptr, ptr @super_init_validation._entry, ptr @super_init_validation._entry.174, ptr @super_init_validation._entry.177, ptr @super_init_validation._entry.180, ptr @super_init_validation._entry.183, ptr @super_init_validation._entry.186, ptr @super_init_validation._entry.189, ptr @super_init_validation._entry.192, ptr @super_init_validation._entry.195, ptr @super_init_validation._entry.198, ptr @super_init_validation._entry.201, ptr @super_init_validation._entry.204, ptr @super_init_validation._entry.207, ptr @super_init_validation._entry.210, ptr @super_init_validation._entry.213, ptr @super_init_validation._entry.216, ptr @super_init_validation._entry.221, ptr @super_init_validation._entry.224, ptr @super_init_validation._entry.229, ptr @super_init_validation._entry_ptr, ptr @super_init_validation._entry_ptr.176, ptr @super_init_validation._entry_ptr.179, ptr @super_init_validation._entry_ptr.182, ptr @super_init_validation._entry_ptr.185, ptr @super_init_validation._entry_ptr.188, ptr @super_init_validation._entry_ptr.191, ptr @super_init_validation._entry_ptr.194, ptr @super_init_validation._entry_ptr.197, ptr @super_init_validation._entry_ptr.200, ptr @super_init_validation._entry_ptr.203, ptr @super_init_validation._entry_ptr.206, ptr @super_init_validation._entry_ptr.209, ptr @super_init_validation._entry_ptr.212, ptr @super_init_validation._entry_ptr.215, ptr @super_init_validation._entry_ptr.218, ptr @super_init_validation._entry_ptr.223, ptr @super_init_validation._entry_ptr.226, ptr @super_init_validation._entry_ptr.231, ptr @validate_raid_redundancy._entry, ptr @validate_raid_redundancy._entry_ptr, ptr @validate_region_size._entry, ptr @validate_region_size._entry.142, ptr @validate_region_size._entry.146, ptr @validate_region_size._entry_ptr, ptr @validate_region_size._entry_ptr.144, ptr @validate_region_size._entry_ptr.148, ptr @raid_target, ptr @devices_handle_discard_safely, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @raid_ctr.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @raid_types, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @_raid456_journal_mode, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @sync_str.sync_strs, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.303, ptr @.str.304], section "llvm.metadata"
@0 = internal global [297 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_handle_discard_safely to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_types to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_raid_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_raid_params._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_raid_arg_name_by_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_raid456_journal_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_region_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_region_size._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_region_size._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analyse_superblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_disk_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_init_validation._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_raid_redundancy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_set_raid456_stripe_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_set_raid456_stripe_cache._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_discard_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_discard_support._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_preresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid_preresume._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_setup_reshape._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attempt_restore_of_faulty_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_str.sync_strs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_raid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_raid_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_unregister_target(ptr noundef nonnull @raid_target) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_raid_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.target_type, ptr @raid_target, i32 0, i32 3), align 8
  %1 = load i32, ptr getelementptr inbounds (%struct.target_type, ptr @raid_target, i32 0, i32 3, i32 1), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.target_type, ptr @raid_target, i32 0, i32 3, i32 2), align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, i32 noundef %0, i32 noundef %1, i32 noundef %2) #19
  %call1 = tail call i32 @dm_register_target(ptr noundef nonnull @raid_target) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %num_raid_params = alloca i32, align 4
  %num_raid_devs = alloca i32, align 4
  %as = alloca %struct.dm_arg_set, align 8
  %as_nrd = alloca %struct.dm_arg_set, align 8
  %_args = alloca [2 x %struct.dm_arg], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_raid_params) #16
  %0 = ptrtoint ptr %num_raid_params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_raid_params, align 4, !annotation !627
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_raid_devs) #16
  %1 = ptrtoint ptr %num_raid_devs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_raid_devs, align 4, !annotation !627
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #16
  %2 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  %3 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %argc, ptr %as, align 8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %argv, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as_nrd) #16
  %5 = ptrtoint ptr %as_nrd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %as_nrd, align 8, !annotation !627
  %6 = getelementptr inbounds %struct.dm_arg_set, ptr %as_nrd, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !627
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_args) #16
  %8 = getelementptr inbounds %struct.dm_arg, ptr %_args, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dm_arg, ptr %_args, i32 0, i32 2
  %10 = getelementptr inbounds [2 x %struct.dm_arg], ptr %_args, i32 0, i32 1
  %11 = getelementptr inbounds [2 x %struct.dm_arg], ptr %_args, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds [2 x %struct.dm_arg], ptr %_args, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %_args to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %_args, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %argc, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.1, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 254, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.2, ptr %12, align 4
  %call = call ptr @dm_shift_arg(ptr noundef nonnull %as) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %error7 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %19 = ptrtoint ptr %error7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %error7, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), align 4
  %call.i = call i32 @strcasecmp(ptr noundef %20, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end12_crit_edge, label %while.cond.1.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.1.i:                                   ; preds = %if.end
  %21 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 18), align 4
  %call.1.i = call i32 @strcasecmp(ptr noundef %21, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %while.cond.1.i.if.end12_crit_edge, label %while.cond.2.i

while.cond.1.i.if.end12_crit_edge:                ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %22 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 17), align 4
  %call.2.i = call i32 @strcasecmp(ptr noundef %22, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %while.cond.2.i.if.end12_crit_edge, label %while.cond.3.i

while.cond.2.i.if.end12_crit_edge:                ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %23 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 16), align 4
  %call.3.i = call i32 @strcasecmp(ptr noundef %23, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %while.cond.3.i.if.end12_crit_edge, label %while.cond.4.i

while.cond.3.i.if.end12_crit_edge:                ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %24 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 15), align 4
  %call.4.i = call i32 @strcasecmp(ptr noundef %24, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %while.cond.4.i.if.end12_crit_edge, label %while.cond.5.i

while.cond.4.i.if.end12_crit_edge:                ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.5.i:                                   ; preds = %while.cond.4.i
  %25 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 14), align 4
  %call.5.i = call i32 @strcasecmp(ptr noundef %25, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %while.cond.5.i.if.end12_crit_edge, label %while.cond.6.i

while.cond.5.i.if.end12_crit_edge:                ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.6.i:                                   ; preds = %while.cond.5.i
  %26 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 13), align 4
  %call.6.i = call i32 @strcasecmp(ptr noundef %26, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %while.cond.6.i.if.end12_crit_edge, label %while.cond.7.i

while.cond.6.i.if.end12_crit_edge:                ; preds = %while.cond.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.7.i:                                   ; preds = %while.cond.6.i
  %27 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 12), align 4
  %call.7.i = call i32 @strcasecmp(ptr noundef %27, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %while.cond.7.i.if.end12_crit_edge, label %while.cond.8.i

while.cond.7.i.if.end12_crit_edge:                ; preds = %while.cond.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.8.i:                                   ; preds = %while.cond.7.i
  %28 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 11), align 4
  %call.8.i = call i32 @strcasecmp(ptr noundef %28, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool.not.8.i, label %while.cond.8.i.if.end12_crit_edge, label %while.cond.9.i

while.cond.8.i.if.end12_crit_edge:                ; preds = %while.cond.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.9.i:                                   ; preds = %while.cond.8.i
  %29 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 10), align 4
  %call.9.i = call i32 @strcasecmp(ptr noundef %29, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool.not.9.i, label %while.cond.9.i.if.end12_crit_edge, label %while.cond.10.i

while.cond.9.i.if.end12_crit_edge:                ; preds = %while.cond.9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.10.i:                                  ; preds = %while.cond.9.i
  %30 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 9), align 4
  %call.10.i = call i32 @strcasecmp(ptr noundef %30, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %tobool.not.10.i = icmp eq i32 %call.10.i, 0
  br i1 %tobool.not.10.i, label %while.cond.10.i.if.end12_crit_edge, label %while.cond.11.i

while.cond.10.i.if.end12_crit_edge:               ; preds = %while.cond.10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.11.i:                                  ; preds = %while.cond.10.i
  %31 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 8), align 4
  %call.11.i = call i32 @strcasecmp(ptr noundef %31, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %tobool.not.11.i = icmp eq i32 %call.11.i, 0
  br i1 %tobool.not.11.i, label %while.cond.11.i.if.end12_crit_edge, label %while.cond.12.i

while.cond.11.i.if.end12_crit_edge:               ; preds = %while.cond.11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.12.i:                                  ; preds = %while.cond.11.i
  %32 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 7), align 4
  %call.12.i = call i32 @strcasecmp(ptr noundef %32, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i)
  %tobool.not.12.i = icmp eq i32 %call.12.i, 0
  br i1 %tobool.not.12.i, label %while.cond.12.i.if.end12_crit_edge, label %while.cond.13.i

while.cond.12.i.if.end12_crit_edge:               ; preds = %while.cond.12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.13.i:                                  ; preds = %while.cond.12.i
  %33 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 6), align 4
  %call.13.i = call i32 @strcasecmp(ptr noundef %33, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i)
  %tobool.not.13.i = icmp eq i32 %call.13.i, 0
  br i1 %tobool.not.13.i, label %while.cond.13.i.if.end12_crit_edge, label %while.cond.14.i

while.cond.13.i.if.end12_crit_edge:               ; preds = %while.cond.13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.14.i:                                  ; preds = %while.cond.13.i
  %34 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 5), align 4
  %call.14.i = call i32 @strcasecmp(ptr noundef %34, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i)
  %tobool.not.14.i = icmp eq i32 %call.14.i, 0
  br i1 %tobool.not.14.i, label %while.cond.14.i.if.end12_crit_edge, label %while.cond.15.i

while.cond.14.i.if.end12_crit_edge:               ; preds = %while.cond.14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.15.i:                                  ; preds = %while.cond.14.i
  %35 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 4), align 4
  %call.15.i = call i32 @strcasecmp(ptr noundef %35, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15.i)
  %tobool.not.15.i = icmp eq i32 %call.15.i, 0
  br i1 %tobool.not.15.i, label %while.cond.15.i.if.end12_crit_edge, label %while.cond.16.i

while.cond.15.i.if.end12_crit_edge:               ; preds = %while.cond.15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.16.i:                                  ; preds = %while.cond.15.i
  %36 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 3), align 4
  %call.16.i = call i32 @strcasecmp(ptr noundef %36, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.16.i)
  %tobool.not.16.i = icmp eq i32 %call.16.i, 0
  br i1 %tobool.not.16.i, label %while.cond.16.i.if.end12_crit_edge, label %while.cond.17.i

while.cond.16.i.if.end12_crit_edge:               ; preds = %while.cond.16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.17.i:                                  ; preds = %while.cond.16.i
  %37 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 2), align 4
  %call.17.i = call i32 @strcasecmp(ptr noundef %37, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.17.i)
  %tobool.not.17.i = icmp eq i32 %call.17.i, 0
  br i1 %tobool.not.17.i, label %while.cond.17.i.if.end12_crit_edge, label %while.cond.18.i

while.cond.17.i.if.end12_crit_edge:               ; preds = %while.cond.17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.18.i:                                  ; preds = %while.cond.17.i
  %38 = load ptr, ptr getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 1), align 4
  %call.18.i = call i32 @strcasecmp(ptr noundef %38, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.18.i)
  %tobool.not.18.i = icmp eq i32 %call.18.i, 0
  br i1 %tobool.not.18.i, label %while.cond.18.i.if.end12_crit_edge, label %while.cond.19.i

while.cond.18.i.if.end12_crit_edge:               ; preds = %while.cond.18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

while.cond.19.i:                                  ; preds = %while.cond.18.i
  %39 = load ptr, ptr @raid_types, align 4
  %call.19.i = call i32 @strcasecmp(ptr noundef %39, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.19.i)
  %tobool.not.19.i = icmp eq i32 %call.19.i, 0
  br i1 %tobool.not.19.i, label %while.cond.19.i.if.end12_crit_edge, label %if.then10

while.cond.19.i.if.end12_crit_edge:               ; preds = %while.cond.19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %while.cond.19.i
  call void @__sanitizer_cov_trace_pc() #18
  %error11 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %40 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.4, ptr %error11, align 8
  br label %cleanup

if.end12:                                         ; preds = %while.cond.19.i.if.end12_crit_edge, %while.cond.18.i.if.end12_crit_edge, %while.cond.17.i.if.end12_crit_edge, %while.cond.16.i.if.end12_crit_edge, %while.cond.15.i.if.end12_crit_edge, %while.cond.14.i.if.end12_crit_edge, %while.cond.13.i.if.end12_crit_edge, %while.cond.12.i.if.end12_crit_edge, %while.cond.11.i.if.end12_crit_edge, %while.cond.10.i.if.end12_crit_edge, %while.cond.9.i.if.end12_crit_edge, %while.cond.8.i.if.end12_crit_edge, %while.cond.7.i.if.end12_crit_edge, %while.cond.6.i.if.end12_crit_edge, %while.cond.5.i.if.end12_crit_edge, %while.cond.4.i.if.end12_crit_edge, %while.cond.3.i.if.end12_crit_edge, %while.cond.2.i.if.end12_crit_edge, %while.cond.1.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 1), %while.cond.18.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 2), %while.cond.17.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 3), %while.cond.16.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 4), %while.cond.15.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 5), %while.cond.14.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 6), %while.cond.13.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 7), %while.cond.12.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 8), %while.cond.11.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 9), %while.cond.10.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 10), %while.cond.9.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 11), %while.cond.8.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 12), %while.cond.7.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 13), %while.cond.6.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 14), %while.cond.5.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 15), %while.cond.4.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 16), %while.cond.3.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 17), %while.cond.2.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 18), %while.cond.1.i.if.end12_crit_edge ], [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %if.end.if.end12_crit_edge ], [ @raid_types, %while.cond.19.i.if.end12_crit_edge ]
  %error13 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call14 = call i32 @dm_read_arg_group(ptr noundef nonnull %_args, ptr noundef nonnull %as, ptr noundef nonnull %num_raid_params, ptr noundef %error13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %41 = ptrtoint ptr %as to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %as, align 8
  %43 = ptrtoint ptr %as_nrd to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %as_nrd, align 8
  %44 = ptrtoint ptr %num_raid_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_raid_params, align 4
  call void @dm_consume_args(ptr noundef nonnull %as_nrd, i32 noundef %45) #16
  %46 = ptrtoint ptr %as_nrd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %as_nrd, align 8
  %sub = add i32 %47, -1
  %div407 = lshr i32 %sub, 1
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div407, ptr %11, align 4
  %call22 = call i32 @dm_read_arg(ptr noundef %10, ptr noundef nonnull %as_nrd, ptr noundef nonnull %num_raid_devs, ptr noundef %error13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %49 = ptrtoint ptr %num_raid_devs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_raid_devs, align 4
  %51 = add i32 %50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %51)
  %52 = icmp ult i32 %51, 253
  br i1 %52, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.5, ptr %error13, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %parity_devs.i = getelementptr inbounds %struct.raid_type, ptr %retval.0.i.ph, i32 0, i32 2
  %54 = ptrtoint ptr %parity_devs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %parity_devs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %50)
  %cmp.not.i422 = icmp ult i32 %55, %50
  br i1 %cmp.not.i422, label %if.end8.i.i.i, label %if.end29.raid_set_alloc.exit.thread_crit_edge

if.end29.raid_set_alloc.exit.thread_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid_set_alloc.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end29
  %56 = mul nuw nsw i32 %50, 528
  %spec.select.i.i525 = add nuw nsw i32 %56, 3824
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i525, i32 noundef 3520) #20
  %tobool.not.i423 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i423, label %if.end8.i.i.i.raid_set_alloc.exit.thread_crit_edge, label %for.body.preheader.i

if.end8.i.i.i.raid_set_alloc.exit.thread_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid_set_alloc.exit.thread

for.body.preheader.i:                             ; preds = %if.end8.i.i.i
  %md.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10
  call void @mddev_init(ptr noundef %md.i) #16
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %50, ptr %raid_disks.i, align 16
  %delta_disks.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %delta_disks.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %delta_disks.i, align 4
  %59 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ti, ptr %call9.i.i.i, align 128
  %raid_type8.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 11
  %60 = ptrtoint ptr %raid_type8.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %retval.0.i.ph, ptr %raid_type8.i, align 64
  %stripe_cache_entries.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %stripe_cache_entries.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 256, ptr %stripe_cache_entries.i, align 4
  %raid_disks10.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 26
  %62 = ptrtoint ptr %raid_disks10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %50, ptr %raid_disks10.i, align 32
  %level.i = getelementptr inbounds %struct.raid_type, ptr %retval.0.i.ph, i32 0, i32 4
  %63 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %level.i, align 4
  %level12.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 23
  %65 = ptrtoint ptr %level12.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %level12.i, align 8
  %new_level.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 36
  %66 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %new_level.i, align 4
  %algorithm.i = getelementptr inbounds %struct.raid_type, ptr %retval.0.i.ph, i32 0, i32 5
  %67 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %algorithm.i, align 4
  %layout.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 24
  %69 = ptrtoint ptr %layout.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %layout.i, align 4
  %new_layout.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 37
  %70 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %new_layout.i, align 16
  %delta_disks21.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 35
  %71 = ptrtoint ptr %delta_disks21.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %delta_disks21.i, align 8
  %recovery_cp.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 67
  %72 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 -1, ptr %recovery_cp.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.055.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %rdev.i = getelementptr %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 15, i32 %i.055.i, i32 2
  %call24.i = call i32 @md_rdev_init(ptr noundef %rdev.i) #16
  %inc.i = add nuw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %50
  br i1 %exitcond.not.i, label %raid_set_alloc.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

raid_set_alloc.exit.thread:                       ; preds = %if.end8.i.i.i.raid_set_alloc.exit.thread_crit_edge, %if.end29.raid_set_alloc.exit.thread_crit_edge
  %.str.58.sink.i = phi ptr [ @.str.57, %if.end29.raid_set_alloc.exit.thread_crit_edge ], [ @.str.58, %if.end8.i.i.i.raid_set_alloc.exit.thread_crit_edge ]
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -22 to ptr), %if.end29.raid_set_alloc.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.raid_set_alloc.exit.thread_crit_edge ]
  %73 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %.str.58.sink.i, ptr %error13, align 8
  br label %if.then32

raid_set_alloc.exit:                              ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %raid_set_alloc.exit.if.then32_crit_edge, label %if.end34

raid_set_alloc.exit.if.then32_crit_edge:          ; preds = %raid_set_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

if.then32:                                        ; preds = %raid_set_alloc.exit.if.then32_crit_edge, %raid_set_alloc.exit.thread
  %retval.0.i424524 = phi ptr [ %retval.0.ph.i, %raid_set_alloc.exit.thread ], [ %call9.i.i.i, %raid_set_alloc.exit.if.then32_crit_edge ]
  %74 = ptrtoint ptr %retval.0.i424524 to i32
  br label %cleanup

if.end34:                                         ; preds = %raid_set_alloc.exit
  %75 = ptrtoint ptr %num_raid_params to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_raid_params, align 4
  %call35 = call fastcc i32 @parse_raid_params(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %as, i32 noundef %76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.bad_crit_edge

if.end34.bad_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @parse_dev_params(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %as)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.bad_crit_edge

if.end38.bad_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end42:                                         ; preds = %if.end38
  %sync_super = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 100
  %77 = ptrtoint ptr %sync_super to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @super_sync, ptr %sync_super, align 4
  %78 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call9.i.i.i, align 128
  %len = getelementptr inbounds %struct.dm_target, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %len, align 8
  %call44 = call fastcc i32 @rs_set_dev_and_array_sectors(ptr noundef nonnull %call9.i.i.i, i64 noundef %81, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.bad_crit_edge

if.end42.bad_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end47:                                         ; preds = %if.end42
  %array_sectors = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 29
  %82 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %array_sectors, align 16
  %array_sectors49 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 12
  %84 = ptrtoint ptr %array_sectors49 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %array_sectors49, align 8
  %dev_sectors = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 28
  %85 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %dev_sectors, align 8
  %dev_sectors51 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 13
  %87 = ptrtoint ptr %dev_sectors51 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %dev_sectors51, align 16
  %88 = ptrtoint ptr %new_level.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %new_level.i, align 4
  %90 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %new_layout.i, align 16
  %new_chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 38
  %92 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %new_chunk_sectors.i, align 4
  %call52 = call fastcc i32 @analyse_superblocks(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end47.bad_crit_edge

if.end47.bad_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end55:                                         ; preds = %if.end47
  %94 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %array_sectors, align 16
  %call58 = call fastcc i64 @__rdev_sectors(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call58)
  %tobool59.not = icmp eq i64 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  %96 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.6, ptr %error13, align 8
  br label %bad

if.end62:                                         ; preds = %if.end55
  %call63 = call fastcc i64 @_get_reshape_sectors(ptr noundef nonnull %call9.i.i.i)
  %97 = ptrtoint ptr %dev_sectors51 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %dev_sectors51, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %call58)
  %cmp.not = icmp eq i64 %98, %call58
  br i1 %cmp.not, label %if.end62.do.body_crit_edge, label %if.then65

if.end62.do.body_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then65:                                        ; preds = %if.end62
  %sub67 = sub i64 %call58, %call63
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %sub67)
  %cmp68 = icmp ne i64 %98, %sub67
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %sub67)
  %cmp71 = icmp ugt i64 %98, %sub67
  br i1 %cmp71, label %if.then72, label %if.then65.do.body_crit_edge

if.then65.do.body_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then72:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 8, ptr noundef %runtime_flags) #16
  br label %do.body

do.body:                                          ; preds = %if.then72, %if.then65.do.body_crit_edge, %if.end62.do.body_crit_edge
  %resize.0.shrunk = phi i1 [ %cmp68, %if.then72 ], [ %cmp68, %if.then65.do.body_crit_edge ], [ false, %if.end62.do.body_crit_edge ]
  %event_work = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 98
  call void @__init_work(ptr noundef %event_work, i32 noundef 0) #16
  %99 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 98, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @raid_ctr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry82 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 98, i32 1
  %100 = ptrtoint ptr %entry82 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry82, ptr %entry82, align 128
  %prev.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 98, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry82, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 98, i32 2
  %102 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @do_table_event, ptr %func, align 8
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %103 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call9.i.i.i, ptr %private, align 4
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %104 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %num_flush_bios, align 4
  %105 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %89, ptr %new_level.i, align 4
  %106 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %91, ptr %new_layout.i, align 16
  %107 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %93, ptr %new_chunk_sectors.i, align 4
  %flags = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 5
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags, align 32
  %and1.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool87.not = icmp eq i32 %and1.i, 0
  br i1 %tobool87.not, label %if.else, label %if.then88

if.then88:                                        ; preds = %do.body
  %110 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %level12.i, align 8
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %111, label %if.else5.i [
    i32 6, label %land.lhs.true
    i32 0, label %if.then88.rs_setup_recovery.exit_crit_edge
  ]

if.then88.rs_setup_recovery.exit_crit_edge:       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit

land.lhs.true:                                    ; preds = %if.then88
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %ctr_flags, align 8
  %115 = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool91.not = icmp eq i32 %115, 0
  br i1 %tobool91.not, label %land.lhs.true.rs_setup_recovery.exit_crit_edge, label %if.then92

land.lhs.true.rs_setup_recovery.exit_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit

if.then92:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %116 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.8, ptr %error13, align 8
  br label %bad

if.else5.i:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  %ctr_flags.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %ctr_flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %ctr_flags.i, align 8
  %119 = shl i32 %118, 30
  %sext = ashr i32 %119, 31
  %spec.select.i434 = sext i32 %sext to i64
  br label %rs_setup_recovery.exit

rs_setup_recovery.exit:                           ; preds = %if.else5.i, %land.lhs.true.rs_setup_recovery.exit_crit_edge, %if.then88.rs_setup_recovery.exit_crit_edge
  %dev_sectors.sink.i = phi i64 [ %spec.select.i434, %if.else5.i ], [ -1, %if.then88.rs_setup_recovery.exit_crit_edge ], [ 0, %land.lhs.true.rs_setup_recovery.exit_crit_edge ]
  %120 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %dev_sectors.sink.i, ptr %recovery_cp.i, align 16
  %runtime_flags95 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags95) #16
  %121 = ptrtoint ptr %new_level.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %new_level.i, align 4
  %123 = ptrtoint ptr %level12.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %level12.i, align 8
  %124 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %new_layout.i, align 16
  %126 = ptrtoint ptr %layout.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %layout.i, align 4
  %127 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %new_chunk_sectors.i, align 4
  %chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 20
  %129 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %chunk_sectors.i, align 16
  %130 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %raid_disks.i, align 16
  %132 = ptrtoint ptr %raid_disks10.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %raid_disks10.i, align 32
  %133 = ptrtoint ptr %delta_disks21.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %delta_disks21.i, align 8
  br label %if.end187

if.else:                                          ; preds = %do.body
  %134 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %recovery_cp.i, align 16
  %136 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %dev_sectors, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %137)
  %cmp.i443 = icmp ult i64 %135, %137
  br i1 %cmp.i443, label %if.else.size_check_crit_edge, label %if.else98

if.else.size_check_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %size_check

if.else98:                                        ; preds = %if.else
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 34
  %138 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %reshape_position.i, align 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %139)
  %cmp.i444.not = icmp eq i64 %139, -1
  br i1 %cmp.i444.not, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.else98
  br i1 %resize.0.shrunk, label %if.then102, label %if.then100.if.end187_crit_edge

if.then100.if.end187_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end187

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  %140 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.9, ptr %error13, align 8
  br label %bad

if.else105:                                       ; preds = %if.else98
  %141 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %level12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %142)
  %cmp.i447.not = icmp eq i32 %89, %142
  br i1 %cmp.i447.not, label %if.else127, label %if.end111

if.end111:                                        ; preds = %if.else105
  %ctr_flags112 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %ctr_flags112 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %ctr_flags112, align 8
  %145 = and i32 %144, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool114.not = icmp eq i32 %145, 0
  br i1 %tobool114.not, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  %146 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @.str.11, ptr %error13, align 8
  br label %bad

if.end117:                                        ; preds = %if.end111
  %call118 = call fastcc i32 @rs_check_takeover(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.bad_crit_edge

if.end117.bad_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end121:                                        ; preds = %if.end117
  %call122 = call fastcc i32 @rs_setup_takeover(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.bad_crit_edge

if.end121.bad_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end125:                                        ; preds = %if.end121
  %runtime_flags126 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags126) #16
  %147 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %level12.i, align 8
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %148, label %if.else5.i454 [
    i32 0, label %if.end125.rs_setup_recovery.exit457_crit_edge
    i32 6, label %if.end125.rs_setup_recovery.exit457_crit_edge526
  ]

if.end125.rs_setup_recovery.exit457_crit_edge526: ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit457

if.end125.rs_setup_recovery.exit457_crit_edge:    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit457

if.else5.i454:                                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  %150 = ptrtoint ptr %ctr_flags112 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %ctr_flags112, align 8
  br label %rs_setup_recovery.exit457

rs_setup_recovery.exit457:                        ; preds = %if.else5.i454, %if.end125.rs_setup_recovery.exit457_crit_edge, %if.end125.rs_setup_recovery.exit457_crit_edge526
  %152 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 -1, ptr %recovery_cp.i, align 16
  %153 = ptrtoint ptr %new_level.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %new_level.i, align 4
  %155 = ptrtoint ptr %level12.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %level12.i, align 8
  %156 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %new_layout.i, align 16
  %158 = ptrtoint ptr %layout.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %layout.i, align 4
  %159 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %new_chunk_sectors.i, align 4
  %chunk_sectors.i463 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 20
  %161 = ptrtoint ptr %chunk_sectors.i463 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %chunk_sectors.i463, align 16
  %162 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %raid_disks.i, align 16
  %164 = ptrtoint ptr %raid_disks10.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %raid_disks10.i, align 32
  %165 = ptrtoint ptr %delta_disks21.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %delta_disks21.i, align 8
  br label %if.end187

if.else127:                                       ; preds = %if.else105
  %call128 = call fastcc zeroext i1 @rs_reshape_requested(ptr noundef nonnull %call9.i.i.i)
  br i1 %call128, label %if.then129, label %if.else127.size_check_crit_edge

if.else127.size_check_crit_edge:                  ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #18
  br label %size_check

if.then129:                                       ; preds = %if.else127
  %runtime_flags130 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @_clear_bit(i32 noundef 8, ptr noundef %runtime_flags130) #16
  %ctr_flags131 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %166 = ptrtoint ptr %ctr_flags131 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %ctr_flags131, align 8
  %168 = and i32 %167, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool133.not = icmp eq i32 %168, 0
  br i1 %tobool133.not, label %if.end136, label %if.then134

if.then134:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.12, ptr %error13, align 8
  br label %bad

if.end136:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call63)
  %tobool137.not = icmp eq i64 %call63, 0
  br i1 %tobool137.not, label %lor.lhs.false, label %if.end136.if.then139_crit_edge

if.end136.if.then139_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then139

lor.lhs.false:                                    ; preds = %if.end136
  %170 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %level12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp.i468 = icmp eq i32 %171, 1
  br i1 %cmp.i468, label %lor.lhs.false.if.then139_crit_edge, label %lor.lhs.false.if.end144_crit_edge

lor.lhs.false.if.end144_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end144

lor.lhs.false.if.then139_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then139

if.then139:                                       ; preds = %lor.lhs.false.if.then139_crit_edge, %if.end136.if.then139_crit_edge
  %call140 = call fastcc i32 @rs_prepare_reshape(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.then139.bad_crit_edge

if.then139.bad_crit_edge:                         ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end143:                                        ; preds = %if.then139
  %172 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %level12.i, align 8
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %173, label %if.else5.i473 [
    i32 0, label %if.end143.rs_setup_recovery.exit476_crit_edge
    i32 6, label %if.end143.rs_setup_recovery.exit476_crit_edge527
  ]

if.end143.rs_setup_recovery.exit476_crit_edge527: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit476

if.end143.rs_setup_recovery.exit476_crit_edge:    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit476

if.else5.i473:                                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %ctr_flags131 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %ctr_flags131, align 8
  br label %rs_setup_recovery.exit476

rs_setup_recovery.exit476:                        ; preds = %if.else5.i473, %if.end143.rs_setup_recovery.exit476_crit_edge, %if.end143.rs_setup_recovery.exit476_crit_edge527
  %177 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 -1, ptr %recovery_cp.i, align 16
  br label %if.end144

if.end144:                                        ; preds = %rs_setup_recovery.exit476, %lor.lhs.false.if.end144_crit_edge
  %178 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %level12.i, align 8
  %180 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %new_level.i, align 4
  %181 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %layout.i, align 4
  %183 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %new_layout.i, align 16
  %chunk_sectors.i481 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 20
  %184 = ptrtoint ptr %chunk_sectors.i481 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %chunk_sectors.i481, align 16
  %186 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %new_chunk_sectors.i, align 4
  br label %if.end187

size_check:                                       ; preds = %if.else127.size_check_crit_edge, %if.else.size_check_crit_edge
  %ctr_flags146 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %187 = ptrtoint ptr %ctr_flags146 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %ctr_flags146, align 8
  %189 = and i32 %188, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool148.not = icmp eq i32 %189, 0
  %runtime_flags153 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  br i1 %tobool148.not, label %if.else152, label %if.then149

if.then149:                                       ; preds = %size_check
  call void @_clear_bit(i32 noundef 8, ptr noundef %runtime_flags153) #16
  call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags153) #16
  %190 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %level12.i, align 8
  %192 = zext i32 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %191, label %if.else5.i487 [
    i32 0, label %if.then149.rs_setup_recovery.exit490_crit_edge
    i32 6, label %if.then149.rs_setup_recovery.exit490_crit_edge528
  ]

if.then149.rs_setup_recovery.exit490_crit_edge528: ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit490

if.then149.rs_setup_recovery.exit490_crit_edge:   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit490

if.else5.i487:                                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #18
  %193 = ptrtoint ptr %ctr_flags146 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %ctr_flags146, align 8
  br label %rs_setup_recovery.exit490

rs_setup_recovery.exit490:                        ; preds = %if.else5.i487, %if.then149.rs_setup_recovery.exit490_crit_edge, %if.then149.rs_setup_recovery.exit490_crit_edge528
  %195 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 -1, ptr %recovery_cp.i, align 16
  br label %if.end182

if.else152:                                       ; preds = %size_check
  %196 = ptrtoint ptr %runtime_flags153 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %runtime_flags153, align 4
  %198 = and i32 %197, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool155.not = icmp eq i32 %198, 0
  br i1 %tobool155.not, label %if.else169, label %if.then156

if.then156:                                       ; preds = %if.else152
  %call157 = call fastcc i32 @rs_set_dev_and_array_sectors(ptr noundef nonnull %call9.i.i.i, i64 noundef %95, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.then156.bad_crit_edge

if.then156.bad_crit_edge:                         ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end160:                                        ; preds = %if.then156
  %199 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %recovery_cp.i, align 16
  %201 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %dev_sectors, align 8
  %203 = call i64 @llvm.umin.i64(i64 %200, i64 %202)
  %204 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %level12.i, align 8
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %205, label %if.else5.i496 [
    i32 0, label %if.end160.rs_setup_recovery.exit499_crit_edge
    i32 6, label %if.then2.i492
  ]

if.end160.rs_setup_recovery.exit499_crit_edge:    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit499

if.then2.i492:                                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_setup_recovery.exit499

if.else5.i496:                                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #18
  %207 = ptrtoint ptr %ctr_flags146 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %ctr_flags146, align 8
  %209 = and i32 %208, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.not.i494 = icmp eq i32 %209, 0
  %spec.select.i495 = select i1 %tobool.not.i494, i64 %203, i64 -1
  br label %rs_setup_recovery.exit499

rs_setup_recovery.exit499:                        ; preds = %if.else5.i496, %if.then2.i492, %if.end160.rs_setup_recovery.exit499_crit_edge
  %dev_sectors.sink.i497 = phi i64 [ %203, %if.then2.i492 ], [ %spec.select.i495, %if.else5.i496 ], [ -1, %if.end160.rs_setup_recovery.exit499_crit_edge ]
  %210 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %dev_sectors.sink.i497, ptr %recovery_cp.i, align 16
  br label %if.end182

if.else169:                                       ; preds = %if.else152
  %211 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %call9.i.i.i, align 128
  %len171 = getelementptr inbounds %struct.dm_target, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %len171 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %len171, align 8
  %call172 = call fastcc i32 @rs_set_dev_and_array_sectors(ptr noundef nonnull %call9.i.i.i, i64 noundef %214, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.else169.bad_crit_edge

if.else169.bad_crit_edge:                         ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end175:                                        ; preds = %if.else169
  %215 = ptrtoint ptr %array_sectors49 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %array_sectors49, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %216)
  %cmp177 = icmp ugt i64 %95, %216
  br i1 %cmp177, label %if.then178, label %if.end175.if.end182_crit_edge

if.end175.if.end182_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end182

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags153) #16
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %if.end175.if.end182_crit_edge, %rs_setup_recovery.exit499, %rs_setup_recovery.exit490
  %217 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %level12.i, align 8
  %219 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %new_level.i, align 4
  %220 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %layout.i, align 4
  %222 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %new_layout.i, align 16
  %chunk_sectors.i504 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 20
  %223 = ptrtoint ptr %chunk_sectors.i504 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %chunk_sectors.i504, align 16
  %225 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %new_chunk_sectors.i, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end182, %if.end144, %rs_setup_recovery.exit457, %if.then100.if.end187_crit_edge, %rs_setup_recovery.exit
  %call188 = call fastcc i32 @rs_adjust_data_offsets(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end187.bad_crit_edge

if.end187.bad_crit_edge:                          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad

if.end191:                                        ; preds = %if.end187
  call fastcc void @rs_reset_inconclusive_reshape(ptr noundef nonnull %call9.i.i.i)
  %ro = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 9
  %226 = ptrtoint ptr %ro to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1, ptr %ro, align 16
  %in_sync = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 58
  %227 = ptrtoint ptr %in_sync to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %in_sync, align 8
  %recovery = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 56
  call void @_set_bit(i32 noundef 9, ptr noundef %recovery) #16
  %reconfig_mutex.i = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 60
  call void @mutex_lock_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #16
  %call197 = call i32 @md_run(ptr noundef %md.i) #16
  %228 = ptrtoint ptr %in_sync to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %in_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool200.not = icmp eq i32 %call197, 0
  br i1 %tobool200.not, label %if.end204, label %if.then201

if.then201:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #18
  %229 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.13, ptr %error13, align 8
  call void @mddev_unlock(ptr noundef %md.i) #16
  br label %bad

if.end204:                                        ; preds = %if.end191
  %call206 = call i32 @md_start(ptr noundef %md.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end211, label %if.then208

if.then208:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #18
  %230 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @.str.14, ptr %error13, align 8
  call void @mddev_unlock(ptr noundef %md.i) #16
  br label %bad_check_reshape

if.end211:                                        ; preds = %if.end204
  %ctr_flags212 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 2
  %231 = ptrtoint ptr %ctr_flags212 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %ctr_flags212, align 8
  %233 = and i32 %232, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool214.not = icmp eq i32 %233, 0
  br i1 %tobool214.not, label %if.end211.if.end223_crit_edge, label %if.then215

if.end211.if.end223_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end223

if.then215:                                       ; preds = %if.end211
  %mode = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 14, i32 2
  %234 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mode, align 8
  %call217 = call i32 @r5c_journal_mode_set(ptr noundef %md.i, i32 noundef %235) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.then215.if.end223_crit_edge, label %if.then219

if.then215.if.end223_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end223

if.then219:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #18
  %236 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.15, ptr %error13, align 8
  call void @mddev_unlock(ptr noundef %md.i) #16
  br label %bad_check_reshape

if.end223:                                        ; preds = %if.then215.if.end223_crit_edge, %if.end211.if.end223_crit_edge
  call void @mddev_suspend(ptr noundef %md.i) #16
  %runtime_flags225 = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 5, ptr noundef %runtime_flags225) #16
  %237 = ptrtoint ptr %level12.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %level12.i, align 8
  %239 = add i32 %238, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %239)
  %240 = icmp ult i32 %239, 3
  br i1 %240, label %if.then227, label %if.end223.if.end232_crit_edge

if.end223.if.end232_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232

if.then227:                                       ; preds = %if.end223
  %call228 = call fastcc i32 @rs_set_raid456_stripe_cache(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.then227.if.end232_crit_edge, label %if.then227.bad_check_reshape_crit_edge

if.then227.bad_check_reshape_crit_edge:           ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_check_reshape

if.then227.if.end232_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232

if.end232:                                        ; preds = %if.then227.if.end232_crit_edge, %if.end223.if.end232_crit_edge
  %241 = ptrtoint ptr %runtime_flags225 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %runtime_flags225, align 4
  %243 = and i32 %242, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool235.not = icmp eq i32 %243, 0
  br i1 %tobool235.not, label %if.end232.if.end253_crit_edge, label %if.then236

if.end232.if.end253_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end253

if.then236:                                       ; preds = %if.end232
  %call237 = call fastcc i32 @rs_check_reshape(ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %if.then236.bad_check_reshape_crit_edge

if.then236.bad_check_reshape_crit_edge:           ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_check_reshape

if.end240:                                        ; preds = %if.then236
  %244 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %89, ptr %new_level.i, align 4
  %245 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %91, ptr %new_layout.i, align 16
  %246 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %93, ptr %new_chunk_sectors.i, align 4
  %pers = getelementptr inbounds %struct.raid_set, ptr %call9.i.i.i, i32 0, i32 10, i32 1
  %247 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pers, align 4
  %start_reshape = getelementptr inbounds %struct.md_personality, ptr %248, i32 0, i32 17
  %249 = ptrtoint ptr %start_reshape to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %start_reshape, align 4
  %tobool242.not = icmp eq ptr %250, null
  br i1 %tobool242.not, label %if.end240.if.end253_crit_edge, label %if.then243

if.end240.if.end253_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end253

if.then243:                                       ; preds = %if.end240
  %check_reshape = getelementptr inbounds %struct.md_personality, ptr %248, i32 0, i32 16
  %251 = ptrtoint ptr %check_reshape to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %check_reshape, align 4
  %call247 = call i32 %252(ptr noundef %md.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then243.if.end253_crit_edge, label %if.then249

if.then243.if.end253_crit_edge:                   ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end253

if.then249:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #18
  %253 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @.str.16, ptr %error13, align 8
  br label %bad_check_reshape

if.end253:                                        ; preds = %if.then243.if.end253_crit_edge, %if.end240.if.end253_crit_edge, %if.end232.if.end253_crit_edge
  call fastcc void @configure_discard_support(ptr noundef nonnull %call9.i.i.i)
  call void @mddev_unlock(ptr noundef %md.i) #16
  br label %cleanup

bad_check_reshape:                                ; preds = %if.then249, %if.then236.bad_check_reshape_crit_edge, %if.then227.bad_check_reshape_crit_edge, %if.then219, %if.then208
  %r.0 = phi i32 [ %call206, %if.then208 ], [ %call217, %if.then219 ], [ %call228, %if.then227.bad_check_reshape_crit_edge ], [ %call237, %if.then236.bad_check_reshape_crit_edge ], [ %call247, %if.then249 ]
  call void @md_stop(ptr noundef %md.i) #16
  br label %bad

bad:                                              ; preds = %bad_check_reshape, %if.then201, %if.end187.bad_crit_edge, %if.else169.bad_crit_edge, %if.then156.bad_crit_edge, %if.then139.bad_crit_edge, %if.then134, %if.end121.bad_crit_edge, %if.end117.bad_crit_edge, %if.then115, %if.then102, %if.then92, %if.then60, %if.end47.bad_crit_edge, %if.end42.bad_crit_edge, %if.end38.bad_crit_edge, %if.end34.bad_crit_edge
  %r.1 = phi i32 [ %call35, %if.end34.bad_crit_edge ], [ %call39, %if.end38.bad_crit_edge ], [ %call44, %if.end42.bad_crit_edge ], [ %call52, %if.end47.bad_crit_edge ], [ -22, %if.then92 ], [ %call188, %if.end187.bad_crit_edge ], [ %call197, %if.then201 ], [ %r.0, %bad_check_reshape ], [ %call157, %if.then156.bad_crit_edge ], [ %call172, %if.else169.bad_crit_edge ], [ -1, %if.then102 ], [ -1, %if.then115 ], [ %call118, %if.end117.bad_crit_edge ], [ %call122, %if.end121.bad_crit_edge ], [ -1, %if.then134 ], [ %call140, %if.then139.bad_crit_edge ], [ -22, %if.then60 ]
  call fastcc void @raid_set_free(ptr noundef nonnull %call9.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end253, %if.then32, %if.then27, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %74, %if.then32 ], [ %r.1, %bad ], [ 0, %if.end253 ], [ -22, %if.then27 ], [ -22, %if.then10 ], [ -22, %if.then ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as_nrd) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_raid_devs) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_raid_params) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_dtr(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  tail call void @md_stop(ptr noundef %md) #16
  tail call fastcc void @raid_set_free(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %5, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %3, %conv
  %array_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 29
  %6 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %array_sectors, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp = icmp ugt i64 %add, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !628

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  tail call void @md_handle_request(ptr noundef %md, ptr noundef %bio) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_postsuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %runtime_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %entry
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  %recovery = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  %2 = ptrtoint ptr %recovery to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %recovery, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @md_stop_writes(ptr noundef %md) #16
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %reconfig_mutex.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 60
  tail call void @mutex_lock_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #16
  tail call void @mddev_suspend(ptr noundef %md) #16
  tail call void @mddev_unlock(ptr noundef %md) #16
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_preresume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %runtime_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %runtime_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ro1.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %5 = ptrtoint ptr %ro1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ro1.i, align 8
  %sb_flags.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i) #16
  %7 = ptrtoint ptr %ro1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ro1.i, align 8
  tail call void @md_update_sb(ptr noundef %md, i32 noundef 1) #16
  %8 = ptrtoint ptr %ro1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %ro1.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %level.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 23
  %9 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end5.if.end9_crit_edge, label %land.lhs.true.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %runtime_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end9_crit_edge

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then.i:                                        ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @md_bitmap_load(ptr noundef %md) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end9_crit_edge, label %__load_dirty_region_bitmap.exit

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

__load_dirty_region_bitmap.exit:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #19
  br label %cleanup

if.end9:                                          ; preds = %if.then.i.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %11 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %runtime_flags, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  %array_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %array_sectors, align 8
  %array_sectors14 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 29
  %16 = ptrtoint ptr %array_sectors14 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %array_sectors14, align 8
  %dev_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dev_sectors, align 8
  %dev_sectors15 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  %19 = ptrtoint ptr %dev_sectors15 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %dev_sectors15, align 8
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %rdev.012.i = load ptr, ptr %disks.i, align 8
  %cmp.not13.i = icmp eq ptr %rdev.012.i, %disks.i
  br i1 %cmp.not13.i, label %if.then13.rs_set_rdev_sectors.exit_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.rs_set_rdev_sectors.exit_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %rdev.014.i = phi ptr [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rdev.012.i, %if.then13.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 16
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i127 = icmp eq i32 %23, 0
  br i1 %tobool.not.i127, label %if.then.i128, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i128:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %dev_sectors15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dev_sectors15, align 8
  %sectors.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 1
  %26 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %sectors.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i128, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %rdev.014.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %rdev.0.i = load ptr, ptr %rdev.014.i, align 8
  %cmp.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i, label %for.inc.i.rs_set_rdev_sectors.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.rs_set_rdev_sectors.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit

rs_set_rdev_sectors.exit:                         ; preds = %for.inc.i.rs_set_rdev_sectors.exit_crit_edge, %if.then13.rs_set_rdev_sectors.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %call.i = tail call ptr @dm_table_get_md(ptr noundef %31) #16
  %call1.i129 = tail call ptr @dm_disk(ptr noundef %call.i) #16
  %32 = ptrtoint ptr %array_sectors14 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %array_sectors14, align 8
  %call2.i130 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %call1.i129, i64 noundef %33) #16
  br label %if.end16

if.end16:                                         ; preds = %rs_set_rdev_sectors.exit, %if.end9.if.end16_crit_edge
  %34 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %runtime_flags, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not = icmp eq i32 %36, 0
  br i1 %tobool19.not, label %if.end16.if.end45_crit_edge, label %land.lhs.true

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end16
  %bitmap = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 85
  %37 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap, align 4
  %tobool20.not = icmp eq ptr %38, null
  br i1 %tobool20.not, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true21

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

land.lhs.true21:                                  ; preds = %land.lhs.true
  %39 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %runtime_flags, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %land.lhs.true21.if.then30_crit_edge

land.lhs.true21.if.then30_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %requested_bitmap_chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %requested_bitmap_chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %requested_bitmap_chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not = icmp eq i32 %43, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.end45_crit_edge, label %land.lhs.true26

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %chunksize = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 86, i32 6
  %44 = ptrtoint ptr %chunksize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chunksize, align 8
  %conv.i = shl i32 %43, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i)
  %cmp.not = icmp eq i32 %45, %conv.i
  br i1 %cmp.not, label %land.lhs.true26.if.end45_crit_edge, label %land.lhs.true26.if.then30_crit_edge

land.lhs.true26.if.then30_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

land.lhs.true26.if.end45_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then30:                                        ; preds = %land.lhs.true26.if.then30_crit_edge, %land.lhs.true21.if.then30_crit_edge
  %requested_bitmap_chunk_sectors32 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %requested_bitmap_chunk_sectors32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %requested_bitmap_chunk_sectors32, align 8
  %conv.i131 = shl i32 %47, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i131)
  %tobool35.not = icmp eq i32 %conv.i131, 0
  br i1 %tobool35.not, label %cond.false, label %if.then30.cond.end_crit_edge

if.then30.cond.end_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %chunksize37 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 86, i32 6
  %48 = ptrtoint ptr %chunksize37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chunksize37, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then30.cond.end_crit_edge
  %cond = phi i32 [ %49, %cond.false ], [ %conv.i131, %if.then30.cond.end_crit_edge ]
  %dev_sectors39 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  %50 = ptrtoint ptr %dev_sectors39 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dev_sectors39, align 8
  %call40 = tail call i32 @md_bitmap_resize(ptr noundef nonnull %38, i64 noundef %51, i32 noundef %cond, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.end.if.end45_crit_edge, label %do.end

cond.end.if.end45_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260) #19
  br label %if.end45

if.end45:                                         ; preds = %do.end, %cond.end.if.end45_crit_edge, %land.lhs.true26.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %if.end16.if.end45_crit_edge
  %r.0 = phi i32 [ 0, %land.lhs.true26.if.end45_crit_edge ], [ 0, %lor.lhs.false.if.end45_crit_edge ], [ 0, %land.lhs.true.if.end45_crit_edge ], [ 0, %if.end16.if.end45_crit_edge ], [ %call40, %do.end ], [ 0, %cond.end.if.end45_crit_edge ]
  %recovery = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  tail call void @_set_bit(i32 noundef 9, ptr noundef %recovery) #16
  %recovery_cp = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 67
  %52 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.309)
  switch i64 %53, label %if.then51 [
    i64 0, label %if.end45.if.end60_crit_edge
    i64 -1, label %if.end45.if.end60_crit_edge162
  ]

if.end45.if.end60_crit_edge162:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then51:                                        ; preds = %if.end45
  tail call void @_set_bit(i32 noundef 6, ptr noundef %recovery) #16
  %54 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %recovery_cp, align 8
  %resync_min = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 68
  %56 = ptrtoint ptr %resync_min to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %resync_min, align 8
  %57 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %runtime_flags, align 4
  %59 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool56.not = icmp eq i32 %59, 0
  br i1 %tobool56.not, label %if.then51.if.end60_crit_edge, label %if.then57

if.then51.if.end60_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %dev_sectors58 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  %60 = ptrtoint ptr %dev_sectors58 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dev_sectors58, align 8
  %resync_max_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 48
  %62 = ptrtoint ptr %resync_max_sectors to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %resync_max_sectors, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then51.if.end60_crit_edge, %if.end45.if.end60_crit_edge, %if.end45.if.end60_crit_edge162
  %63 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %runtime_flags, align 4
  %65 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool63.not = icmp eq i32 %65, 0
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %if.then64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then64:                                        ; preds = %if.end60
  %disks.i132 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 4
  %66 = ptrtoint ptr %disks.i132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %rdev.012.i133 = load ptr, ptr %disks.i132, align 8
  %cmp.not13.i134 = icmp eq ptr %rdev.012.i133, %disks.i132
  br i1 %cmp.not13.i134, label %if.then64.rs_set_rdev_sectors.exit146_crit_edge, label %for.body.lr.ph.i136

if.then64.rs_set_rdev_sectors.exit146_crit_edge:  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit146

for.body.lr.ph.i136:                              ; preds = %if.then64
  %dev_sectors.i135 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  br label %for.body.i140

for.body.i140:                                    ; preds = %for.inc.i145.for.body.i140_crit_edge, %for.body.lr.ph.i136
  %rdev.014.i137 = phi ptr [ %rdev.012.i133, %for.body.lr.ph.i136 ], [ %rdev.0.i143, %for.inc.i145.for.body.i140_crit_edge ]
  %flags.i138 = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i137, i32 0, i32 16
  %67 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i138, align 4
  %69 = and i32 %68, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i139 = icmp eq i32 %69, 0
  br i1 %tobool.not.i139, label %if.then.i142, label %for.body.i140.for.inc.i145_crit_edge

for.body.i140.for.inc.i145_crit_edge:             ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i145

if.then.i142:                                     ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %dev_sectors.i135 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dev_sectors.i135, align 8
  %sectors.i141 = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i137, i32 0, i32 1
  %72 = ptrtoint ptr %sectors.i141 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %sectors.i141, align 8
  br label %for.inc.i145

for.inc.i145:                                     ; preds = %if.then.i142, %for.body.i140.for.inc.i145_crit_edge
  %73 = ptrtoint ptr %rdev.014.i137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %rdev.0.i143 = load ptr, ptr %rdev.014.i137, align 8
  %cmp.not.i144 = icmp eq ptr %rdev.0.i143, %disks.i132
  br i1 %cmp.not.i144, label %for.inc.i145.rs_set_rdev_sectors.exit146_crit_edge, label %for.inc.i145.for.body.i140_crit_edge

for.inc.i145.for.body.i140_crit_edge:             ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i140

for.inc.i145.rs_set_rdev_sectors.exit146_crit_edge: ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit146

rs_set_rdev_sectors.exit146:                      ; preds = %for.inc.i145.rs_set_rdev_sectors.exit146_crit_edge, %if.then64.rs_set_rdev_sectors.exit146_crit_edge
  %reconfig_mutex.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 60
  tail call void @mutex_lock_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #16
  %pers1.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %pers1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pers1.i, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %recovery) #16
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %rs_set_rdev_sectors.exit146
  %rdev.0.in.i.i.i = phi ptr [ %disks.i132, %rs_set_rdev_sectors.exit146 ], [ %rdev.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %rdev.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %rdev.0.i.i.i = load ptr, ptr %rdev.0.in.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %rdev.0.i.i.i, %disks.i132
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i._get_reshape_sectors.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i._get_reshape_sectors.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_get_reshape_sectors.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.0.i.i.i, i32 0, i32 16
  %77 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags.i.i.i, align 4
  %79 = and i32 %78, 4096
  %tobool.not.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset.i.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.0.i.i.i, i32 0, i32 10
  %80 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %data_offset.i.i.i, align 8
  %new_data_offset.i.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.0.i.i.i, i32 0, i32 11
  %82 = ptrtoint ptr %new_data_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %new_data_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %83)
  %cmp3.i.i.i = icmp ugt i64 %81, %83
  %sub.i.i.i = sub i64 %81, %83
  %sub8.i.i.i = sub i64 %83, %81
  %cond.i.i.i = select i1 %cmp3.i.i.i, i64 %sub.i.i.i, i64 %sub8.i.i.i
  br label %_get_reshape_sectors.exit.i.i

_get_reshape_sectors.exit.i.i:                    ; preds = %if.then.i.i.i, %for.cond.i.i.i._get_reshape_sectors.exit.i.i_crit_edge
  %reshape_sectors.0.i.i.i = phi i64 [ %cond.i.i.i, %if.then.i.i.i ], [ 0, %for.cond.i.i.i._get_reshape_sectors.exit.i.i_crit_edge ]
  %data_offset14.i.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 7
  %84 = ptrtoint ptr %data_offset14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_offset14.i.i.i, align 8
  %conv.i.i.i = sext i32 %85 to i64
  %86 = tail call i64 @llvm.umax.i64(i64 %reshape_sectors.0.i.i.i, i64 %conv.i.i.i) #16
  %delta_disks.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %delta_disks.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delta_disks.i.i, align 4
  %delta_disks1.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 35
  %89 = ptrtoint ptr %delta_disks1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %delta_disks1.i.i, align 8
  %raid_disks.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %90 = ptrtoint ptr %raid_disks.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %raid_disks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i148 = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i148, label %_get_reshape_sectors.exit.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

_get_reshape_sectors.exit.i.i.if.end.i.i_crit_edge: ; preds = %_get_reshape_sectors.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %_get_reshape_sectors.exit.i.i
  %layout.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 24
  %92 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %layout.i.i, align 4
  %new_layout.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 37
  %94 = ptrtoint ptr %new_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %new_layout.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp.not.i.i = icmp eq i32 %93, %95
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, i32 noundef %88) #19
  %96 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %layout.i.i, align 4
  %98 = ptrtoint ptr %new_layout.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %new_layout.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %_get_reshape_sectors.exit.i.i.if.end.i.i_crit_edge
  %99 = ptrtoint ptr %delta_disks.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delta_disks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp8.i.i = icmp sgt i32 %100, 0
  br i1 %cmp8.i.i, label %for.cond.preheader.i.i, label %if.else.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %raid_disks10.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 5
  %101 = ptrtoint ptr %raid_disks10.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %raid_disks10.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %102)
  %cmp1188.i.i = icmp ult i32 %91, %102
  br i1 %cmp1188.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.if.end27.i.thread.i_crit_edge

for.cond.preheader.i.i.if.end27.i.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.thread.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %dev_sectors.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %d.089.i.i = phi i32 [ %91, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %d.089.i.i, i32 2, i32 16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #16
  %saved_raid_disk.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %d.089.i.i, i32 2, i32 21
  %103 = ptrtoint ptr %saved_raid_disk.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %saved_raid_disk.i.i, align 4
  %raid_disk.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %d.089.i.i, i32 2, i32 19
  %104 = ptrtoint ptr %raid_disk.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %d.089.i.i, ptr %raid_disk.i.i, align 4
  %105 = ptrtoint ptr %dev_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %dev_sectors.i.i, align 8
  %sectors.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %d.089.i.i, i32 2, i32 1
  %107 = ptrtoint ptr %sectors.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %sectors.i.i, align 8
  %108 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i.i.i = icmp ne i32 %109, 1
  %cond.i.i = sext i1 %cmp.i.i.i to i64
  %110 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %d.089.i.i, i32 2, i32 22
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %cond.i.i, ptr %110, align 8
  %inc.i.i = add nuw i32 %d.089.i.i, 1
  %112 = ptrtoint ptr %raid_disks10.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %raid_disks10.i.i, align 8
  %cmp11.i.i = icmp ult i32 %inc.i.i, %113
  br i1 %cmp11.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end27.i.thread.i_crit_edge

for.body.i.i.if.end27.i.thread.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.thread.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp15.i.i = icmp slt i32 %100, 0
  br i1 %cmp15.i.i, label %rs_setup_reshape.exit.i, label %if.end27.i.i

if.end27.i.thread.i:                              ; preds = %for.body.i.i.if.end27.i.thread.i_crit_edge, %for.cond.preheader.i.i.if.end27.i.thread.i_crit_edge
  %reshape_backwards18.i34.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 39
  %114 = ptrtoint ptr %reshape_backwards18.i34.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %reshape_backwards18.i34.i, align 8
  br label %for.cond33.preheader.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i
  %data_offset.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 1, i32 9
  %115 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %tobool23.not.i.i = icmp eq i64 %116, 0
  %cond24.i.i = zext i1 %tobool23.not.i.i to i32
  %reshape_backwards18.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 39
  %117 = ptrtoint ptr %reshape_backwards18.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond24.i.i, ptr %reshape_backwards18.i.i, align 8
  br i1 %tobool23.not.i.i, label %if.end27.i.i.if.end.i_crit_edge, label %if.end27.i.i.for.cond33.preheader.i.i_crit_edge

if.end27.i.i.for.cond33.preheader.i.i_crit_edge:  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond33.preheader.i.i

if.end27.i.i.if.end.i_crit_edge:                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.cond33.preheader.i.i:                         ; preds = %if.end27.i.i.for.cond33.preheader.i.i_crit_edge, %if.end27.i.thread.i
  %118 = ptrtoint ptr %disks.i132 to i32
  call void @__asan_load4_noabort(i32 %118)
  %rdev.090.i.i = load ptr, ptr %disks.i132, align 8
  %cmp36.not91.i.i = icmp eq ptr %rdev.090.i.i, %disks.i132
  br i1 %cmp36.not91.i.i, label %for.cond33.preheader.i.i.if.end.i_crit_edge, label %for.cond33.preheader.i.i.for.body37.i.i_crit_edge

for.cond33.preheader.i.i.for.body37.i.i_crit_edge: ; preds = %for.cond33.preheader.i.i
  br label %for.body37.i.i

for.cond33.preheader.i.i.if.end.i_crit_edge:      ; preds = %for.cond33.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body37.i.i:                                   ; preds = %for.inc44.i.i.for.body37.i.i_crit_edge, %for.cond33.preheader.i.i.for.body37.i.i_crit_edge
  %rdev.092.i.i = phi ptr [ %rdev.0.i.i, %for.inc44.i.i.for.body37.i.i_crit_edge ], [ %rdev.090.i.i, %for.cond33.preheader.i.i.for.body37.i.i_crit_edge ]
  %flags38.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.092.i.i, i32 0, i32 16
  %119 = ptrtoint ptr %flags38.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %flags38.i.i, align 4
  %121 = and i32 %120, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool40.not.i.i = icmp eq i32 %121, 0
  br i1 %tobool40.not.i.i, label %if.then41.i.i, label %for.body37.i.i.for.inc44.i.i_crit_edge

for.body37.i.i.for.inc44.i.i_crit_edge:           ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc44.i.i

if.then41.i.i:                                    ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sectors42.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.092.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %sectors42.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %sectors42.i.i, align 8
  %add.i.i = add i64 %123, %86
  store i64 %add.i.i, ptr %sectors42.i.i, align 8
  br label %for.inc44.i.i

for.inc44.i.i:                                    ; preds = %if.then41.i.i, %for.body37.i.i.for.inc44.i.i_crit_edge
  %124 = ptrtoint ptr %rdev.092.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %rdev.0.i.i = load ptr, ptr %rdev.092.i.i, align 8
  %cmp36.not.i.i = icmp eq ptr %rdev.0.i.i, %disks.i132
  br i1 %cmp36.not.i.i, label %for.inc44.i.i.if.end.i_crit_edge, label %for.inc44.i.i.for.body37.i.i_crit_edge

for.inc44.i.i.for.body37.i.i_crit_edge:           ; preds = %for.inc44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body37.i.i

for.inc44.i.i.if.end.i_crit_edge:                 ; preds = %for.inc44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

rs_setup_reshape.exit.i:                          ; preds = %if.else.i.i
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 8
  %len.i.i = getelementptr inbounds %struct.dm_target, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %len.i.i, align 8
  %call17.i.i = tail call fastcc i32 @rs_set_dev_and_array_sectors(ptr noundef %1, i64 noundef %128, i1 noundef zeroext true) #16
  %reshape_backwards18.i41.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 39
  %129 = ptrtoint ptr %reshape_backwards18.i41.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %reshape_backwards18.i41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool.not.i149 = icmp eq i32 %call17.i.i, 0
  br i1 %tobool.not.i149, label %rs_setup_reshape.exit.i.if.end.i_crit_edge, label %rs_setup_reshape.exit.i.do.end70_crit_edge

rs_setup_reshape.exit.i.do.end70_crit_edge:       ; preds = %rs_setup_reshape.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

rs_setup_reshape.exit.i.if.end.i_crit_edge:       ; preds = %rs_setup_reshape.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %rs_setup_reshape.exit.i.if.end.i_crit_edge, %for.inc44.i.i.if.end.i_crit_edge, %for.cond33.preheader.i.i.if.end.i_crit_edge, %if.end27.i.i.if.end.i_crit_edge
  %check_reshape.i = getelementptr inbounds %struct.md_personality, ptr %75, i32 0, i32 16
  %130 = ptrtoint ptr %check_reshape.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %check_reshape.i, align 4
  %call2.i150 = tail call i32 %131(ptr noundef %md) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i150)
  %tobool3.not.i151 = icmp eq i32 %call2.i150, 0
  br i1 %tobool3.not.i151, label %if.end5.i, label %if.end.i.do.end70.sink.split_crit_edge

if.end.i.do.end70.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70.sink.split

if.end5.i:                                        ; preds = %if.end.i
  %start_reshape.i = getelementptr inbounds %struct.md_personality, ptr %75, i32 0, i32 17
  %132 = ptrtoint ptr %start_reshape.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %start_reshape.i, align 4
  %tobool6.not.i = icmp eq ptr %133, null
  br i1 %tobool6.not.i, label %if.end5.i.rs_start_reshape.exit_crit_edge, label %if.then7.i

if.end5.i.rs_start_reshape.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_start_reshape.exit

if.then7.i:                                       ; preds = %if.end5.i
  %call9.i = tail call i32 %133(ptr noundef %md) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.rs_start_reshape.exit_crit_edge, label %if.then7.i.do.end70.sink.split_crit_edge

if.then7.i.do.end70.sink.split_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70.sink.split

if.then7.i.rs_start_reshape.exit_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_start_reshape.exit

rs_start_reshape.exit:                            ; preds = %if.then7.i.rs_start_reshape.exit_crit_edge, %if.end5.i.rs_start_reshape.exit_crit_edge
  %ro1.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %134 = ptrtoint ptr %ro1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ro1.i.i, align 8
  %sb_flags.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i.i) #16
  %136 = ptrtoint ptr %ro1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %ro1.i.i, align 8
  tail call void @md_update_sb(ptr noundef %md, i32 noundef 1) #16
  %137 = ptrtoint ptr %ro1.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %135, ptr %ro1.i.i, align 8
  tail call void @mddev_unlock(ptr noundef %md) #16
  br label %cleanup

do.end70.sink.split:                              ; preds = %if.then7.i.do.end70.sink.split_crit_edge, %if.end.i.do.end70.sink.split_crit_edge
  %.str.267.sink = phi ptr [ @.str.267, %if.end.i.do.end70.sink.split_crit_edge ], [ @.str.268, %if.then7.i.do.end70.sink.split_crit_edge ]
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  %error.i = getelementptr inbounds %struct.dm_target, ptr %139, i32 0, i32 12
  %140 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %.str.267.sink, ptr %error.i, align 8
  br label %do.end70

do.end70:                                         ; preds = %do.end70.sink.split, %rs_setup_reshape.exit.i.do.end70_crit_edge
  tail call void @mddev_unlock(ptr noundef %md) #16
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %rs_start_reshape.exit, %if.end60.cleanup_crit_edge, %__load_dirty_region_bitmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %__load_dirty_region_bitmap.exit ], [ %r.0, %if.end60.cleanup_crit_edge ], [ 0, %do.end70 ], [ 0, %rs_start_reshape.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  %cleared_failed_devices.i = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %runtime_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cleared_failed_devices.i) #16
  %2 = getelementptr inbounds [4 x i64], ptr %cleared_failed_devices.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i64], ptr %cleared_failed_devices.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i64], ptr %cleared_failed_devices.i, i32 0, i32 3
  %pers.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pers.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.attempt_restore_of_faulty_devices.exit_crit_edge, label %lor.lhs.false.i

if.then.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %hot_add_disk.i = getelementptr inbounds %struct.md_personality, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %hot_add_disk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hot_add_disk.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.attempt_restore_of_faulty_devices.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %hot_remove_disk.i = getelementptr inbounds %struct.md_personality, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %hot_remove_disk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hot_remove_disk.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.attempt_restore_of_faulty_devices.exit_crit_edge, label %if.end.i

lor.lhs.false3.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %11 = call ptr @memset(ptr %cleared_failed_devices.i, i32 0, i32 32)
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %12 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raid_disks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp148.i = icmp sgt i32 %13, 0
  br i1 %cmp148.i, label %for.body.lr.ph.i, label %if.end.i.attempt_restore_of_faulty_devices.exit_crit_edge

if.end.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %raid_type.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 11
  br label %for.body.outer.i

for.body.outer.i:                                 ; preds = %for.inc.thread.i.for.body.outer.i_crit_edge, %for.body.lr.ph.i
  %i.0150.ph.i = phi i32 [ %inc163.i, %for.inc.thread.i.for.body.outer.i_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %cleared.0.off0149.ph.i = phi i1 [ true, %for.inc.thread.i.for.body.outer.i_crit_edge ], [ false, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.outer.i
  %i.0150.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %i.0150.ph.i, %for.body.outer.i ]
  %rdev.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2
  %flags6.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 16
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags6.i, align 4
  %16 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags6.i, align 4
  %and1.i137.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i137.i)
  %tobool12.not.i = icmp eq i32 %and1.i137.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %meta_bdev.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 4
  %19 = ptrtoint ptr %meta_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %meta_bdev.i, align 8
  %tobool13.not.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %sb_page.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 6
  %21 = ptrtoint ptr %sb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sb_page.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !628

do.body4.i.i:                                     ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-raid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2032, 0\0A.popsection", ""() #16, !srcloc !629
  unreachable

do.end7.i.i:                                      ; preds = %land.lhs.true14.i
  %sb_size.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 13
  %23 = ptrtoint ptr %sb_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_size.i, align 8
  %sb_loaded.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 8
  %25 = ptrtoint ptr %sb_loaded.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sb_loaded.i.i, align 8
  %call.i.i = call i32 @sync_page_io(ptr noundef %rdev.i, i64 noundef 0, i32 noundef %24, ptr noundef nonnull %22, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %read_disk_sb.exit.i, label %do.end.i

read_disk_sb.exit.i:                              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %raid_disk.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 19
  %26 = ptrtoint ptr %raid_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raid_disk.i.i, align 4
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %27) #19
  %mddev.i.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 2
  %28 = ptrtoint ptr %mddev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mddev.i.i, align 8
  call void @md_error(ptr noundef %29, ptr noundef %rdev.i) #16
  call void @_set_bit(i32 noundef 0, ptr noundef %flags6.i) #16
  br label %for.inc.i

do.end.i:                                         ; preds = %do.end7.i.i
  %30 = ptrtoint ptr %sb_loaded.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %sb_loaded.i.i, align 8
  %31 = ptrtoint ptr %raid_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %raid_type.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef %34, i32 noundef %i.0150.i) #19
  %35 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags6.i, align 8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags6.i) #16
  %raid_disk.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 19
  %37 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %raid_disk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp21.i = icmp sgt i32 %38, -1
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %do.end.i
  %39 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pers.i, align 4
  %hot_remove_disk24.i = getelementptr inbounds %struct.md_personality, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %hot_remove_disk24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hot_remove_disk24.i, align 4
  %call25.i = call i32 %42(ptr noundef %md, ptr noundef %rdev.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.if.end31.i_crit_edge, label %if.then27.i

if.then22.i.if.end31.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %36, ptr %flags6.i, align 8
  br label %for.inc.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %saved_raid_disk.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 21
  %44 = ptrtoint ptr %saved_raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.0150.i, ptr %saved_raid_disk.i, align 4
  %45 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0150.i, ptr %raid_disk.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then22.i.if.end31.i_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags6.i) #16
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags6.i) #16
  %46 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pers.i, align 4
  %hot_add_disk35.i = getelementptr inbounds %struct.md_personality, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %hot_add_disk35.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hot_add_disk35.i, align 4
  %call36.i = call i32 %49(ptr noundef %md, ptr noundef %rdev.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %for.inc.thread.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  %saved_raid_disk39.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 21
  %50 = ptrtoint ptr %saved_raid_disk39.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %saved_raid_disk39.i, align 4
  %51 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %raid_disk.i, align 4
  %52 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %36, ptr %flags6.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %if.then27.i, %read_disk_sb.exit.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0150.i, 1
  %53 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %raid_disks.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %54
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.thread.i:                                 ; preds = %if.end31.i
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags6.i) #16
  %55 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.0150.i, i32 2, i32 22
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %55, align 8
  call void @_set_bit(i32 noundef %i.0150.i, ptr noundef nonnull %cleared_failed_devices.i) #16
  %inc163.i = add nuw nsw i32 %i.0150.i, 1
  %57 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %raid_disks.i, align 8
  %cmp164.i = icmp slt i32 %inc163.i, %58
  br i1 %cmp164.i, label %for.inc.thread.i.for.body.outer.i_crit_edge, label %for.inc.thread.i.if.then48.i_crit_edge

for.inc.thread.i.if.then48.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48.i

for.inc.thread.i.for.body.outer.i_crit_edge:      ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.outer.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %cleared.0.off0149.ph.i, label %for.end.i.if.then48.i_crit_edge, label %for.end.i.attempt_restore_of_faulty_devices.exit_crit_edge

for.end.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

for.end.i.if.then48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48.i

if.then48.i:                                      ; preds = %for.end.i.if.then48.i_crit_edge, %for.inc.thread.i.if.then48.i_crit_edge
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 4
  %59 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %r.0153.i = load ptr, ptr %disks.i, align 8
  %cmp54.not154.i = icmp eq ptr %r.0153.i, %disks.i
  br i1 %cmp54.not154.i, label %if.then48.i.attempt_restore_of_faulty_devices.exit_crit_edge, label %if.then48.i.for.body55.i_crit_edge

if.then48.i.for.body55.i_crit_edge:               ; preds = %if.then48.i
  br label %for.body55.i

if.then48.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

for.body55.i:                                     ; preds = %for.inc72.i.for.body55.i_crit_edge, %if.then48.i.for.body55.i_crit_edge
  %r.0155.i = phi ptr [ %r.0.i, %for.inc72.i.for.body55.i_crit_edge ], [ %r.0153.i, %if.then48.i.for.body55.i_crit_edge ]
  %flags56.i = getelementptr inbounds %struct.md_rdev, ptr %r.0155.i, i32 0, i32 16
  %60 = ptrtoint ptr %flags56.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags56.i, align 4
  %62 = and i32 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool58.not.i = icmp eq i32 %62, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %for.body55.i.for.inc72.i_crit_edge

for.body55.i.for.inc72.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc72.i

if.end60.i:                                       ; preds = %for.body55.i
  %sb_page.i = getelementptr inbounds %struct.md_rdev, ptr %r.0155.i, i32 0, i32 6
  %63 = ptrtoint ptr %sb_page.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sb_page.i, align 8
  %call61.i = call ptr @page_address(ptr noundef %64) #16
  %failed_devices1.i.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 5
  %65 = ptrtoint ptr %failed_devices1.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %failed_devices1.i.i, align 1
  %67 = call i64 @llvm.bswap.i64(i64 %66) #16
  %compat_features.i.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 1
  %68 = ptrtoint ptr %compat_features.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %compat_features.i.i, align 1
  %70 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i140.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i140.i, label %if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge, label %while.body.preheader.i.i

if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sb_retrieve_failed_devices.exit.i

while.body.preheader.i.i:                         ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 2
  %71 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %arrayidx3.i.i, align 1
  %73 = call i64 @llvm.bswap.i64(i64 %72) #16
  %arrayidx3.1.i.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 1
  %74 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %arrayidx3.1.i.i, align 1
  %76 = call i64 @llvm.bswap.i64(i64 %75) #16
  %arrayidx3.2.i.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 0
  %77 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %arrayidx3.2.i.i, align 1
  %79 = call i64 @llvm.bswap.i64(i64 %78) #16
  br label %sb_retrieve_failed_devices.exit.i

sb_retrieve_failed_devices.exit.i:                ; preds = %while.body.preheader.i.i, %if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge
  %failed_devices.sroa.7.1.i = phi i64 [ 0, %if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge ], [ %79, %while.body.preheader.i.i ]
  %failed_devices.sroa.13.1.i = phi i64 [ 0, %if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge ], [ %76, %while.body.preheader.i.i ]
  %failed_devices.sroa.18.1.i = phi i64 [ 0, %if.end60.i.sb_retrieve_failed_devices.exit.i_crit_edge ], [ %73, %while.body.preheader.i.i ]
  %80 = ptrtoint ptr %cleared_failed_devices.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %cleared_failed_devices.i, align 8
  %neg.i = xor i64 %81, -1
  %and.i = and i64 %67, %neg.i
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %2, align 8
  %neg.1.i = xor i64 %83, -1
  %and.1.i = and i64 %failed_devices.sroa.7.1.i, %neg.1.i
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %3, align 8
  %neg.2.i = xor i64 %85, -1
  %and.2.i = and i64 %failed_devices.sroa.13.1.i, %neg.2.i
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %4, align 8
  %neg.3.i = xor i64 %87, -1
  %and.3.i = and i64 %failed_devices.sroa.18.1.i, %neg.3.i
  %88 = call i64 @llvm.bswap.i64(i64 %and.i) #16
  %89 = ptrtoint ptr %failed_devices1.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %88, ptr %failed_devices1.i.i, align 1
  %90 = call i64 @llvm.bswap.i64(i64 %and.3.i) #16
  %arrayidx3.i142.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 2
  %91 = ptrtoint ptr %arrayidx3.i142.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %arrayidx3.i142.i, align 1
  %92 = call i64 @llvm.bswap.i64(i64 %and.2.i) #16
  %arrayidx3.1.i143.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 1
  %93 = ptrtoint ptr %arrayidx3.1.i143.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %92, ptr %arrayidx3.1.i143.i, align 1
  %94 = call i64 @llvm.bswap.i64(i64 %and.1.i) #16
  %arrayidx3.2.i144.i = getelementptr %struct.dm_raid_superblock, ptr %call61.i, i32 0, i32 21, i32 0
  %95 = ptrtoint ptr %arrayidx3.2.i144.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %94, ptr %arrayidx3.2.i144.i, align 1
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %sb_retrieve_failed_devices.exit.i, %for.body55.i.for.inc72.i_crit_edge
  %96 = ptrtoint ptr %r.0155.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %r.0.i = load ptr, ptr %r.0155.i, align 8
  %cmp54.not.i = icmp eq ptr %r.0.i, %disks.i
  br i1 %cmp54.not.i, label %for.inc72.i.attempt_restore_of_faulty_devices.exit_crit_edge, label %for.inc72.i.for.body55.i_crit_edge

for.inc72.i.for.body55.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body55.i

for.inc72.i.attempt_restore_of_faulty_devices.exit_crit_edge: ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %attempt_restore_of_faulty_devices.exit

attempt_restore_of_faulty_devices.exit:           ; preds = %for.inc72.i.attempt_restore_of_faulty_devices.exit_crit_edge, %if.then48.i.attempt_restore_of_faulty_devices.exit_crit_edge, %for.end.i.attempt_restore_of_faulty_devices.exit_crit_edge, %if.end.i.attempt_restore_of_faulty_devices.exit_crit_edge, %lor.lhs.false3.i.attempt_restore_of_faulty_devices.exit_crit_edge, %lor.lhs.false.i.attempt_restore_of_faulty_devices.exit_crit_edge, %if.then.attempt_restore_of_faulty_devices.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cleared_failed_devices.i) #16
  br label %if.end

if.end:                                           ; preds = %attempt_restore_of_faulty_devices.exit, %entry.if.end_crit_edge
  %call2 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %runtime_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 35
  %97 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delta_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp = icmp slt i32 %98, 0
  br i1 %cmp, label %if.then5, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %call.i = call ptr @dm_table_get_md(ptr noundef %102) #16
  %call1.i = call ptr @dm_disk(ptr noundef %call.i) #16
  %array_sectors.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 29
  %103 = ptrtoint ptr %array_sectors.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %array_sectors.i, align 8
  %call2.i = call zeroext i1 @set_capacity_and_notify(ptr noundef %call1.i, i64 noundef %104) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then4.if.end6_crit_edge
  %reconfig_mutex.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 60
  call void @mutex_lock_nested(ptr noundef %reconfig_mutex.i, i32 noundef 0) #16
  %recovery = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  call void @_clear_bit(i32 noundef 9, ptr noundef %recovery) #16
  %ro = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %105 = ptrtoint ptr %ro to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %ro, align 8
  %in_sync = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 58
  %106 = ptrtoint ptr %in_sync to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %in_sync, align 8
  call void @mddev_resume(ptr noundef %md) #16
  call void @mddev_unlock(ptr noundef %md) #16
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %recovery.addr.i1967 = alloca i32, align 4
  %recovery.addr.i1851 = alloca i32, align 4
  %recovery.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %max_nr_stripes2 = getelementptr inbounds %struct.r5conf, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %max_nr_stripes2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_nr_stripes2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %type, label %cond.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond103.preheader
    i32 2, label %sw.bb1204
  ]

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond103.preheader:                            ; preds = %cond.end
  %raid_disks104 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raid_disks104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1052058 = icmp sgt i32 %8, 0
  br i1 %cmp1052058, label %for.body106.lr.ph, label %for.cond103.preheader.for.end120_crit_edge

for.cond103.preheader.for.end120_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end120

for.body106.lr.ph:                                ; preds = %for.cond103.preheader
  %rebuild_disks = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 4
  br label %for.body106

sw.bb:                                            ; preds = %cond.end
  %new_level = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 36
  %9 = ptrtoint ptr %new_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_level, align 4
  %new_layout = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 37
  %11 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_layout, align 8
  %and.i.i.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i9.i.i = icmp eq i32 %and.i.i.i, 0
  %13 = and i32 %12, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i10.i.i = icmp ne i32 %13, 0
  %14 = and i1 %tobool.i.not.i9.i.i, %cmp.i10.i.i
  %and.i3.i.i.i = and i32 %12, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i3.i.i.i, 0
  %15 = and i1 %tobool.i.not.i9.i.i, %cmp.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.bb
  %incdec.ptr12.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %sw.bb ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %rtp.010.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %sw.bb ], [ %incdec.ptr12.i, %if.end.i.while.body.i_crit_edge ]
  %level1.i = getelementptr %struct.raid_type, ptr %rtp.010.i, i32 -1, i32 4
  %16 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %10)
  %cmp2.i = icmp eq i32 %17, %10
  br i1 %cmp2.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %algorithm.i.i = getelementptr %struct.raid_type, ptr %rtp.010.i, i32 -1, i32 5
  %18 = ptrtoint ptr %algorithm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %algorithm.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %19, label %if.then.i.i.lor.lhs.false.i_crit_edge [
    i32 0, label %if.then.i.i.__got_raid10.exit.i_crit_edge
    i32 1, label %if.then.i.i.__got_raid10.exit.i_crit_edge2106
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb3.i.i
  ]

if.then.i.i.__got_raid10.exit.i_crit_edge2106:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i

if.then.i.i.__got_raid10.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i

if.then.i.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  br i1 %tobool.i.not.i9.i.i, label %sw.bb1.i.i.lor.lhs.false.i_crit_edge, label %sw.bb1.i.i.get_raid_type_by_ll.exit_crit_edge

sw.bb1.i.i.get_raid_type_by_ll.exit_crit_edge:    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit

sw.bb1.i.i.lor.lhs.false.i_crit_edge:             ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

sw.bb3.i.i:                                       ; preds = %if.then.i.i
  br i1 %14, label %sw.bb3.i.i.get_raid_type_by_ll.exit_crit_edge, label %sw.bb3.i.i.lor.lhs.false.i_crit_edge

sw.bb3.i.i.lor.lhs.false.i_crit_edge:             ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

sw.bb3.i.i.get_raid_type_by_ll.exit_crit_edge:    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit

__got_raid10.exit.i:                              ; preds = %if.then.i.i.__got_raid10.exit.i_crit_edge, %if.then.i.i.__got_raid10.exit.i_crit_edge2106
  br i1 %15, label %__got_raid10.exit.i.get_raid_type_by_ll.exit_crit_edge, label %__got_raid10.exit.i.lor.lhs.false.i_crit_edge

__got_raid10.exit.i.lor.lhs.false.i_crit_edge:    ; preds = %__got_raid10.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

__got_raid10.exit.i.get_raid_type_by_ll.exit_crit_edge: ; preds = %__got_raid10.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit

lor.lhs.false.i:                                  ; preds = %__got_raid10.exit.i.lor.lhs.false.i_crit_edge, %sw.bb3.i.i.lor.lhs.false.i_crit_edge, %sw.bb1.i.i.lor.lhs.false.i_crit_edge, %if.then.i.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %algorithm.i = getelementptr %struct.raid_type, ptr %rtp.010.i, i32 -1, i32 5
  %21 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %algorithm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %12)
  %cmp3.i = icmp eq i32 %22, %12
  br i1 %cmp3.i, label %lor.lhs.false.i.get_raid_type_by_ll.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

lor.lhs.false.i.get_raid_type_by_ll.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.raid_type, ptr %incdec.ptr12.i, i32 -1
  %cmp.i = icmp ugt ptr %incdec.ptr12.i, @raid_types
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

get_raid_type_by_ll.exit:                         ; preds = %lor.lhs.false.i.get_raid_type_by_ll.exit_crit_edge, %__got_raid10.exit.i.get_raid_type_by_ll.exit_crit_edge, %sw.bb3.i.i.get_raid_type_by_ll.exit_crit_edge, %sw.bb1.i.i.get_raid_type_by_ll.exit_crit_edge
  %tobool3.not = icmp eq ptr %incdec.ptr12.i, null
  br i1 %tobool3.not, label %get_raid_type_by_ll.exit.cleanup_crit_edge, label %if.end

get_raid_type_by_ll.exit.cleanup_crit_edge:       ; preds = %get_raid_type_by_ll.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %get_raid_type_by_ll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %if.end.cond.end7_crit_edge, label %cond.false5

if.end.cond.end7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end7

cond.false5:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr12.i, align 4
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %25 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %raid_disks, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.273, ptr noundef %24, i32 noundef %26) #16
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %if.end.cond.end7_crit_edge
  %cond8 = phi i32 [ %call6, %cond.false5 ], [ 0, %if.end.cond.end7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !630
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %runtime_flags, align 4
  %and1.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  %resync_max_sectors15 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 48
  %dev_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  %cond18.in = select i1 %tobool13.not, ptr %dev_sectors, ptr %resync_max_sectors15
  %29 = ptrtoint ptr %cond18.in to i32
  call void @__asan_load8_noabort(i32 %29)
  %cond18 = load i64, ptr %cond18.in, align 8
  %recovery20 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  %30 = ptrtoint ptr %recovery20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %recovery20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recovery.addr.i)
  %32 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %recovery.addr.i, align 4
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0..i = load volatile i32, ptr %recovery.addr.i, align 4
  %33 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0..i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.end.i1847, label %cond.end7.decipher_sync_action.exit_crit_edge

cond.end7.decipher_sync_action.exit_crit_edge:    ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit

if.end.i1847:                                     ; preds = %cond.end7
  %34 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.49.i = load volatile i32, ptr %recovery.addr.i, align 4
  %35 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.49.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i = icmp eq i32 %35, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i1848, label %if.end.i1847.if.end32.i_crit_edge

if.end.i1847.if.end32.i_crit_edge:                ; preds = %if.end.i1847
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

land.lhs.true.i1848:                              ; preds = %if.end.i1847
  %36 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.50.i = load volatile i32, ptr %recovery.addr.i, align 4
  %and1.i36.i = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.50.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i36.i)
  %tobool4.not.i = icmp eq i32 %and1.i36.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i1849, label %land.lhs.true.i1848.if.then9.i_crit_edge

land.lhs.true.i1848.if.then9.i_crit_edge:         ; preds = %land.lhs.true.i1848
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

lor.lhs.false.i1849:                              ; preds = %land.lhs.true.i1848
  %ro.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %37 = ptrtoint ptr %ro.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ro.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool5.not.i = icmp eq i32 %38, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %lor.lhs.false.i1849.if.end32.i_crit_edge

lor.lhs.false.i1849.if.end32.i_crit_edge:         ; preds = %lor.lhs.false.i1849
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i1849
  %39 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.51.i = load volatile i32, ptr %recovery.addr.i, align 4
  %40 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.51.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool8.not.i = icmp eq i32 %40, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.if.end32.i_crit_edge, label %land.lhs.true6.i.if.then9.i_crit_edge

land.lhs.true6.i.if.then9.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

land.lhs.true6.i.if.end32.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.then9.i:                                       ; preds = %land.lhs.true6.i.if.then9.i_crit_edge, %land.lhs.true.i1848.if.then9.i_crit_edge
  %41 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.52.i = load volatile i32, ptr %recovery.addr.i, align 4
  %42 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.52.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not.i = icmp eq i32 %42, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then9.i.decipher_sync_action.exit_crit_edge

if.then9.i.decipher_sync_action.exit_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit

if.end13.i:                                       ; preds = %if.then9.i
  %43 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.53.i = load volatile i32, ptr %recovery.addr.i, align 4
  %44 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.53.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool15.not.i = icmp eq i32 %44, 0
  %45 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i = load volatile i32, ptr %recovery.addr.i, align 4
  br i1 %tobool15.not.i, label %if.end25.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %46 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not.i = icmp eq i32 %46, 0
  br i1 %tobool18.not.i, label %if.then16.i.decipher_sync_action.exit_crit_edge, label %if.end20.i

if.then16.i.decipher_sync_action.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit

if.end20.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.55.i = load volatile i32, ptr %recovery.addr.i, align 4
  %48 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.55.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool22.not.i = icmp eq i32 %48, 0
  %..i = select i1 %tobool22.not.i, i32 4, i32 3
  br label %decipher_sync_action.exit

if.end25.i:                                       ; preds = %if.end13.i
  %49 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool27.not.i = icmp eq i32 %49, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.decipher_sync_action.exit_crit_edge

if.end25.i.decipher_sync_action.exit_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit

if.end29.i:                                       ; preds = %if.end25.i
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 34
  %50 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %51)
  %cmp.not.i = icmp eq i64 %51, -1
  br i1 %cmp.not.i, label %if.end29.i.if.end32.i_crit_edge, label %if.end29.i.decipher_sync_action.exit_crit_edge

if.end29.i.decipher_sync_action.exit_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit

if.end29.i.if.end32.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end29.i.if.end32.i_crit_edge, %land.lhs.true6.i.if.end32.i_crit_edge, %lor.lhs.false.i1849.if.end32.i_crit_edge, %if.end.i1847.if.end32.i_crit_edge
  br label %decipher_sync_action.exit

decipher_sync_action.exit:                        ; preds = %if.end32.i, %if.end29.i.decipher_sync_action.exit_crit_edge, %if.end25.i.decipher_sync_action.exit_crit_edge, %if.end20.i, %if.then16.i.decipher_sync_action.exit_crit_edge, %if.then9.i.decipher_sync_action.exit_crit_edge, %cond.end7.decipher_sync_action.exit_crit_edge
  %retval.0.i1850 = phi i32 [ 6, %if.end32.i ], [ 0, %cond.end7.decipher_sync_action.exit_crit_edge ], [ 1, %if.then9.i.decipher_sync_action.exit_crit_edge ], [ 2, %if.then16.i.decipher_sync_action.exit_crit_edge ], [ %..i, %if.end20.i ], [ 5, %if.end25.i.decipher_sync_action.exit_crit_edge ], [ 1, %if.end29.i.decipher_sync_action.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recovery.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recovery.addr.i1851)
  %52 = ptrtoint ptr %recovery.addr.i1851 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %31, ptr %recovery.addr.i1851, align 4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %runtime_flags) #16
  %level.i.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 23
  %53 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %decipher_sync_action.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

if.else.i:                                        ; preds = %decipher_sync_action.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i1850)
  %cmp.i1852 = icmp eq i32 %retval.0.i1850, 6
  br i1 %cmp.i1852, label %land.lhs.true.i1855, label %if.else.i.if.else5.i_crit_edge

if.else.i.if.else5.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else5.i

land.lhs.true.i1855:                              ; preds = %if.else.i
  %55 = ptrtoint ptr %recovery.addr.i1851 to i32
  call void @__asan_load4_noabort(i32 %55)
  %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0..i1853 = load volatile i32, ptr %recovery.addr.i1851, align 4
  %56 = and i32 %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0..i1853, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i1854 = icmp eq i32 %56, 0
  br i1 %tobool.not.i1854, label %if.then4.i, label %land.lhs.true.i1855.if.else5.i_crit_edge

land.lhs.true.i1855.if.else5.i_crit_edge:         ; preds = %land.lhs.true.i1855
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else5.i

if.then4.i:                                       ; preds = %land.lhs.true.i1855
  call void @__sanitizer_cov_trace_pc() #18
  %recovery_cp.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 67
  br label %if.end.i1857

if.else5.i:                                       ; preds = %land.lhs.true.i1855.if.else5.i_crit_edge, %if.else.i.if.else5.i_crit_edge
  %curr_resync_completed.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 44
  br label %if.end.i1857

if.end.i1857:                                     ; preds = %if.else5.i, %if.then4.i
  %r.0.in.i = phi ptr [ %curr_resync_completed.i, %if.else5.i ], [ %recovery_cp.i, %if.then4.i ]
  %57 = ptrtoint ptr %r.0.in.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %r.0.i = load i64, ptr %r.0.in.i, align 8
  %cmp.not.i1856 = xor i1 %cmp.i1852, true
  call void @__sanitizer_cov_trace_cmp8(i64 %r.0.i, i64 %cond18)
  %cmp8.not.i = icmp ult i64 %r.0.i, %cond18
  %or.cond.i = select i1 %cmp.not.i1856, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %if.else15.i, label %if.then9.i1859

if.then9.i1859:                                   ; preds = %if.end.i1857
  %58 = ptrtoint ptr %recovery.addr.i1851 to i32
  call void @__asan_load4_noabort(i32 %58)
  %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0.95.i = load volatile i32, ptr %recovery.addr.i1851, align 4
  %59 = and i32 %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0.95.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool11.not.i1858 = icmp eq i32 %59, 0
  br i1 %tobool11.not.i1858, label %if.then9.i1859.rs_get_progress.exit_crit_edge, label %if.then12.i

if.then9.i1859.rs_get_progress.exit_crit_edge:    ; preds = %if.then9.i1859
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_get_progress.exit

if.then12.i:                                      ; preds = %if.then9.i1859
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

if.else15.i:                                      ; preds = %if.end.i1857
  %60 = zext i32 %retval.0.i1850 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %retval.0.i1850, label %if.else29.i [
    i32 5, label %if.else15.i.rs_get_progress.exit_crit_edge
    i32 2, label %if.else15.i.if.then21.i_crit_edge
    i32 1, label %if.else15.i.if.then21.i_crit_edge2107
    i32 3, label %if.else15.i.if.then27.i_crit_edge
    i32 4, label %if.else15.i.if.then27.i_crit_edge2108
  ]

if.else15.i.if.then27.i_crit_edge2108:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27.i

if.else15.i.if.then27.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27.i

if.else15.i.if.then21.i_crit_edge2107:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21.i

if.else15.i.if.then21.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21.i

if.else15.i.rs_get_progress.exit_crit_edge:       ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_get_progress.exit

if.then21.i:                                      ; preds = %if.else15.i.if.then21.i_crit_edge, %if.else15.i.if.then21.i_crit_edge2107
  tail call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

if.then27.i:                                      ; preds = %if.else15.i.if.then27.i_crit_edge, %if.else15.i.if.then27.i_crit_edge2108
  tail call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

if.else29.i:                                      ; preds = %if.else15.i
  %61 = ptrtoint ptr %recovery.addr.i1851 to i32
  call void @__asan_load4_noabort(i32 %61)
  %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0.96.i = load volatile i32, ptr %recovery.addr.i1851, align 4
  %62 = and i32 %recovery.addr.i1851.0.recovery.addr.i1851.0.recovery.addr.0.recovery.addr.0.96.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool31.not.i = icmp eq i32 %62, 0
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

if.else34.i:                                      ; preds = %if.else29.i
  tail call void @_set_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 4
  %63 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %rdev.097.i = load ptr, ptr %disks.i, align 8
  %cmp37.not98.i = icmp eq ptr %rdev.097.i, %disks.i
  br i1 %cmp37.not98.i, label %if.else34.i.rs_get_progress.exit_crit_edge, label %if.else34.i.for.body.i_crit_edge

if.else34.i.for.body.i_crit_edge:                 ; preds = %if.else34.i
  br label %for.body.i

if.else34.i.rs_get_progress.exit_crit_edge:       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_get_progress.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else34.i.for.body.i_crit_edge
  %rdev.099.i = phi ptr [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rdev.097.i, %if.else34.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.099.i, i32 0, i32 16
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags.i, align 4
  %66 = and i32 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool39.not.i = icmp eq i32 %66, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true40.i:                                ; preds = %for.body.i
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool43.not.i = icmp eq i32 %69, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %land.lhs.true40.i.for.inc.i_crit_edge

land.lhs.true40.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then44.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %runtime_flags) #16
  br label %rs_get_progress.exit

for.inc.i:                                        ; preds = %land.lhs.true40.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %70 = ptrtoint ptr %rdev.099.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %rdev.0.i = load ptr, ptr %rdev.099.i, align 8
  %cmp37.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp37.not.i, label %for.inc.i.rs_get_progress.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.rs_get_progress.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_get_progress.exit

rs_get_progress.exit:                             ; preds = %for.inc.i.rs_get_progress.exit_crit_edge, %if.then44.i, %if.else34.i.rs_get_progress.exit_crit_edge, %if.then32.i, %if.then27.i, %if.then21.i, %if.else15.i.rs_get_progress.exit_crit_edge, %if.then12.i, %if.then9.i1859.rs_get_progress.exit_crit_edge, %if.then.i
  %r.1.i = phi i64 [ %cond18, %if.then.i ], [ %r.0.i, %if.then12.i ], [ %r.0.i, %if.then9.i1859.rs_get_progress.exit_crit_edge ], [ %r.0.i, %if.else15.i.rs_get_progress.exit_crit_edge ], [ %r.0.i, %if.then21.i ], [ %r.0.i, %if.then27.i ], [ %r.0.i, %if.then32.i ], [ %r.0.i, %if.then44.i ], [ %r.0.i, %if.else34.i.rs_get_progress.exit_crit_edge ], [ %r.0.i, %for.inc.i.rs_get_progress.exit_crit_edge ]
  %71 = tail call i64 @llvm.umin.i64(i64 %r.1.i, i64 %cond18) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recovery.addr.i1851)
  %last_sync_action = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 42
  %72 = ptrtoint ptr %last_sync_action to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %last_sync_action, align 4
  %tobool23.not = icmp eq ptr %73, null
  br i1 %tobool23.not, label %rs_get_progress.exit.cond.end31_crit_edge, label %land.lhs.true

rs_get_progress.exit.cond.end31_crit_edge:        ; preds = %rs_get_progress.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end31

land.lhs.true:                                    ; preds = %rs_get_progress.exit
  %call25 = tail call i32 @strcasecmp(ptr noundef nonnull %73, ptr noundef nonnull @.str.274)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cond.true27, label %land.lhs.true.cond.end31_crit_edge

land.lhs.true.cond.end31_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end31

cond.true27:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %resync_mismatches28 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %resync_mismatches28, i32 noundef 8) #16
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %resync_mismatches28) #16
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true27, %land.lhs.true.cond.end31_crit_edge, %rs_get_progress.exit.cond.end31_crit_edge
  %cond32 = phi i64 [ %call.i, %cond.true27 ], [ 0, %land.lhs.true.cond.end31_crit_edge ], [ 0, %rs_get_progress.exit.cond.end31_crit_edge ]
  %raid_disks33 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %raid_disks33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %raid_disks33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp342081 = icmp sgt i32 %75, 0
  br i1 %cmp342081, label %for.body.lr.ph, label %cond.end31.for.end_crit_edge

cond.end31.for.end_crit_edge:                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end31
  %mode.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 2
  br label %for.body

for.body:                                         ; preds = %cond.end42.for.body_crit_edge, %for.body.lr.ph
  %sz.02085 = phi i32 [ %cond8, %for.body.lr.ph ], [ %add44, %cond.end42.for.body_crit_edge ]
  %i.02082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end42.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.02085, i32 %maxlen)
  %cmp35.not = icmp ult i32 %sz.02085, %maxlen
  br i1 %cmp35.not, label %cond.false37, label %for.body.cond.end42_crit_edge

for.body.cond.end42_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end42

cond.false37:                                     ; preds = %for.body
  %add.ptr38 = getelementptr i8, ptr %result, i32 %sz.02085
  %sub39 = sub i32 %maxlen, %sz.02085
  %bdev.i = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.02082, i32 2, i32 5
  %76 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bdev.i, align 4
  %tobool.not.i1860 = icmp eq ptr %77, null
  br i1 %tobool.not.i1860, label %cond.false37.__raid_dev_status.exit_crit_edge, label %if.else.i1862

cond.false37.__raid_dev_status.exit_crit_edge:    ; preds = %cond.false37
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit

if.else.i1862:                                    ; preds = %cond.false37
  %flags.i1861 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.02082, i32 2, i32 16
  %78 = ptrtoint ptr %flags.i1861 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i1861, align 4
  %and1.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not.i, label %if.else3.i, label %if.else.i1862.__raid_dev_status.exit_crit_edge

if.else.i1862.__raid_dev_status.exit_crit_edge:   ; preds = %if.else.i1862
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit

if.else3.i:                                       ; preds = %if.else.i1862
  %80 = ptrtoint ptr %flags.i1861 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i1861, align 4
  %82 = and i32 %81, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool6.not.i = icmp eq i32 %82, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i1863 = icmp eq i32 %84, 0
  %cond.i = select i1 %cmp.i1863, ptr @.str.294, ptr @.str.295
  br label %__raid_dev_status.exit

if.else8.i:                                       ; preds = %if.else3.i
  %85 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %runtime_flags, align 4
  %87 = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool10.not.i = icmp eq i32 %87, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i1865, label %if.else8.i.__raid_dev_status.exit_crit_edge

if.else8.i.__raid_dev_status.exit_crit_edge:      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit

lor.lhs.false.i1865:                              ; preds = %if.else8.i
  %88 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %runtime_flags, align 4
  %90 = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool13.not.i = icmp eq i32 %90, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i1866, label %lor.lhs.false.i1865.if.else18.i_crit_edge

lor.lhs.false.i1865.if.else18.i_crit_edge:        ; preds = %lor.lhs.false.i1865
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i

land.lhs.true.i1866:                              ; preds = %lor.lhs.false.i1865
  %91 = ptrtoint ptr %flags.i1861 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i1861, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool16.not.i = icmp eq i32 %93, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i1866.__raid_dev_status.exit_crit_edge, label %land.lhs.true.i1866.if.else18.i_crit_edge

land.lhs.true.i1866.if.else18.i_crit_edge:        ; preds = %land.lhs.true.i1866
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i

land.lhs.true.i1866.__raid_dev_status.exit_crit_edge: ; preds = %land.lhs.true.i1866
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit

if.else18.i:                                      ; preds = %land.lhs.true.i1866.if.else18.i_crit_edge, %lor.lhs.false.i1865.if.else18.i_crit_edge
  br label %__raid_dev_status.exit

__raid_dev_status.exit:                           ; preds = %if.else18.i, %land.lhs.true.i1866.__raid_dev_status.exit_crit_edge, %if.else8.i.__raid_dev_status.exit_crit_edge, %if.then7.i, %if.else.i1862.__raid_dev_status.exit_crit_edge, %cond.false37.__raid_dev_status.exit_crit_edge
  %retval.0.i1867 = phi ptr [ %cond.i, %if.then7.i ], [ @.str.294, %if.else18.i ], [ @.str.153, %cond.false37.__raid_dev_status.exit_crit_edge ], [ @.str.293, %if.else.i1862.__raid_dev_status.exit_crit_edge ], [ @.str.295, %land.lhs.true.i1866.__raid_dev_status.exit_crit_edge ], [ @.str.295, %if.else8.i.__raid_dev_status.exit_crit_edge ]
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull %retval.0.i1867) #16
  br label %cond.end42

cond.end42:                                       ; preds = %__raid_dev_status.exit, %for.body.cond.end42_crit_edge
  %cond43 = phi i32 [ %call41, %__raid_dev_status.exit ], [ 0, %for.body.cond.end42_crit_edge ]
  %add44 = add i32 %cond43, %sz.02085
  %inc = add nuw nsw i32 %i.02082, 1
  %94 = ptrtoint ptr %raid_disks33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %raid_disks33, align 8
  %cmp34 = icmp slt i32 %inc, %95
  br i1 %cmp34, label %cond.end42.for.body_crit_edge, label %cond.end42.for.end_crit_edge

cond.end42.for.end_crit_edge:                     ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cond.end42.for.body_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cond.end42.for.end_crit_edge, %cond.end31.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ %cond8, %cond.end31.for.end_crit_edge ], [ %add44, %cond.end42.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %maxlen)
  %cmp45.not = icmp ult i32 %sz.0.lcssa, %maxlen
  br i1 %cmp45.not, label %cond.false47, label %for.end.cond.end51_crit_edge

for.end.cond.end51_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end51

cond.false47:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr48 = getelementptr i8, ptr %result, i32 %sz.0.lcssa
  %sub49 = sub i32 %maxlen, %sz.0.lcssa
  %call50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i32 noundef %sub49, ptr noundef nonnull @.str.275, i64 noundef %71, i64 noundef %cond18) #16
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false47, %for.end.cond.end51_crit_edge
  %cond52 = phi i32 [ %call50, %cond.false47 ], [ 0, %for.end.cond.end51_crit_edge ]
  %add53 = add i32 %cond52, %sz.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %maxlen)
  %cmp54.not = icmp ult i32 %add53, %maxlen
  br i1 %cmp54.not, label %cond.false56, label %cond.end51.cond.end61_crit_edge

cond.end51.cond.end61_crit_edge:                  ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end61

cond.false56:                                     ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr57 = getelementptr i8, ptr %result, i32 %add53
  %sub58 = sub i32 %maxlen, %add53
  %arrayidx.i1868 = getelementptr [7 x ptr], ptr @sync_str.sync_strs, i32 0, i32 %retval.0.i1850
  %96 = ptrtoint ptr %arrayidx.i1868 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i1868, align 4
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.276, ptr noundef %97) #16
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false56, %cond.end51.cond.end61_crit_edge
  %cond62 = phi i32 [ %call60, %cond.false56 ], [ 0, %cond.end51.cond.end61_crit_edge ]
  %add63 = add i32 %cond62, %add53
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %maxlen)
  %cmp64.not = icmp ult i32 %add63, %maxlen
  br i1 %cmp64.not, label %cond.false66, label %cond.end61.cond.end70_crit_edge

cond.end61.cond.end70_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end70

cond.false66:                                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr67 = getelementptr i8, ptr %result, i32 %add63
  %sub68 = sub i32 %maxlen, %add63
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr67, i32 noundef %sub68, ptr noundef nonnull @.str.277, i64 noundef %cond32) #16
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false66, %cond.end61.cond.end70_crit_edge
  %cond71 = phi i32 [ %call69, %cond.false66 ], [ 0, %cond.end61.cond.end70_crit_edge ]
  %add72 = add i32 %cond71, %add63
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %maxlen)
  %cmp73.not = icmp ult i32 %add72, %maxlen
  br i1 %cmp73.not, label %cond.false75, label %cond.end70.cond.end82_crit_edge

cond.end70.cond.end82_crit_edge:                  ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end82

cond.false75:                                     ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr76 = getelementptr i8, ptr %result, i32 %add72
  %sub77 = sub i32 %maxlen, %add72
  %data_offset = getelementptr inbounds %struct.raid_set, ptr %1, i32 1, i32 9
  %98 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %data_offset, align 8
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.277, i64 noundef %99) #16
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false75, %cond.end70.cond.end82_crit_edge
  %cond83 = phi i32 [ %call81, %cond.false75 ], [ 0, %cond.end70.cond.end82_crit_edge ]
  %add84 = add i32 %cond83, %add72
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %maxlen)
  %cmp85.not = icmp ult i32 %add84, %maxlen
  br i1 %cmp85.not, label %cond.false87, label %cond.end82.cleanup_crit_edge

cond.end82.cleanup_crit_edge:                     ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false87:                                     ; preds = %cond.end82
  %add.ptr88 = getelementptr i8, ptr %result, i32 %add84
  %sub89 = sub i32 %maxlen, %add84
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 2
  %100 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %ctr_flags, align 4
  %102 = and i32 %101, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool91.not = icmp eq i32 %102, 0
  br i1 %tobool91.not, label %cond.false87.cond.end96_crit_edge, label %cond.true92

cond.false87.cond.end96_crit_edge:                ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end96

cond.true92:                                      ; preds = %cond.false87
  %bdev.i1870 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 1, i32 5
  %103 = ptrtoint ptr %bdev.i1870 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bdev.i1870, align 4
  %tobool.not.i1871 = icmp eq ptr %104, null
  br i1 %tobool.not.i1871, label %cond.true92.cond.end96_crit_edge, label %if.else.i1875

cond.true92.cond.end96_crit_edge:                 ; preds = %cond.true92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end96

if.else.i1875:                                    ; preds = %cond.true92
  %flags.i1872 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 1, i32 16
  %105 = ptrtoint ptr %flags.i1872 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags.i1872, align 4
  %and1.i.i1873 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1873)
  %tobool1.not.i1874 = icmp eq i32 %and1.i.i1873, 0
  br i1 %tobool1.not.i1874, label %if.else3.i1877, label %if.else.i1875.cond.end96_crit_edge

if.else.i1875.cond.end96_crit_edge:               ; preds = %if.else.i1875
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end96

if.else3.i1877:                                   ; preds = %if.else.i1875
  %107 = ptrtoint ptr %flags.i1872 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags.i1872, align 4
  %109 = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool6.not.i1876 = icmp eq i32 %109, 0
  br i1 %tobool6.not.i1876, label %if.else8.i1884, label %if.then7.i1881

if.then7.i1881:                                   ; preds = %if.else3.i1877
  call void @__sanitizer_cov_trace_pc() #18
  %mode.i1878 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 2
  %110 = ptrtoint ptr %mode.i1878 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mode.i1878, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i1879 = icmp eq i32 %111, 0
  %cond.i1880 = select i1 %cmp.i1879, ptr @.str.294, ptr @.str.295
  br label %cond.end96

if.else8.i1884:                                   ; preds = %if.else3.i1877
  %112 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %runtime_flags, align 4
  %114 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool10.not.i1883 = icmp eq i32 %114, 0
  br i1 %tobool10.not.i1883, label %lor.lhs.false.i1886, label %if.else8.i1884.cond.end96_crit_edge

if.else8.i1884.cond.end96_crit_edge:              ; preds = %if.else8.i1884
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end96

lor.lhs.false.i1886:                              ; preds = %if.else8.i1884
  %115 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %runtime_flags, align 4
  %117 = and i32 %116, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool13.not.i1885 = icmp eq i32 %117, 0
  br i1 %tobool13.not.i1885, label %land.lhs.true.i1888, label %lor.lhs.false.i1886.if.else18.i1889_crit_edge

lor.lhs.false.i1886.if.else18.i1889_crit_edge:    ; preds = %lor.lhs.false.i1886
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i1889

land.lhs.true.i1888:                              ; preds = %lor.lhs.false.i1886
  %118 = ptrtoint ptr %flags.i1872 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags.i1872, align 4
  %120 = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool16.not.i1887 = icmp eq i32 %120, 0
  br i1 %tobool16.not.i1887, label %land.lhs.true.i1888.cond.end96_crit_edge, label %land.lhs.true.i1888.if.else18.i1889_crit_edge

land.lhs.true.i1888.if.else18.i1889_crit_edge:    ; preds = %land.lhs.true.i1888
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i1889

land.lhs.true.i1888.cond.end96_crit_edge:         ; preds = %land.lhs.true.i1888
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end96

if.else18.i1889:                                  ; preds = %land.lhs.true.i1888.if.else18.i1889_crit_edge, %lor.lhs.false.i1886.if.else18.i1889_crit_edge
  br label %cond.end96

cond.end96:                                       ; preds = %if.else18.i1889, %land.lhs.true.i1888.cond.end96_crit_edge, %if.else8.i1884.cond.end96_crit_edge, %if.then7.i1881, %if.else.i1875.cond.end96_crit_edge, %cond.true92.cond.end96_crit_edge, %cond.false87.cond.end96_crit_edge
  %cond97 = phi ptr [ @.str.153, %cond.false87.cond.end96_crit_edge ], [ %cond.i1880, %if.then7.i1881 ], [ @.str.294, %if.else18.i1889 ], [ @.str.153, %cond.true92.cond.end96_crit_edge ], [ @.str.293, %if.else.i1875.cond.end96_crit_edge ], [ @.str.295, %land.lhs.true.i1888.cond.end96_crit_edge ], [ @.str.295, %if.else8.i1884.cond.end96_crit_edge ]
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.276, ptr noundef nonnull %cond97) #16
  br label %cleanup

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body106.lr.ph
  %rebuild_writemostly_count.02060 = phi i32 [ 0, %for.body106.lr.ph ], [ %add117, %for.body106.for.body106_crit_edge ]
  %i.12059 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc119, %for.body106.for.body106_crit_edge ]
  %div3.i = lshr i32 %i.12059, 5
  %arrayidx.i = getelementptr i32, ptr %rebuild_disks, i32 %div3.i
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.12059, 31
  %123 = shl nuw i32 1, %and.i
  %124 = and i32 %122, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool108.not = icmp eq i32 %124, 0
  %cond109 = select i1 %tobool108.not, i32 0, i32 2
  %flags = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.12059, i32 2, i32 16
  %125 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %flags, align 4
  %127 = lshr i32 %126, 2
  %128 = and i32 %127, 2
  %add116 = add i32 %128, %rebuild_writemostly_count.02060
  %add117 = add i32 %add116, %cond109
  %inc119 = add nuw nsw i32 %i.12059, 1
  %exitcond.not = icmp eq i32 %inc119, %8
  br i1 %exitcond.not, label %for.body106.for.end120_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body106

for.body106.for.end120_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end120

for.end120:                                       ; preds = %for.body106.for.end120_crit_edge, %for.cond103.preheader.for.end120_crit_edge
  %rebuild_writemostly_count.0.lcssa = phi i32 [ 0, %for.cond103.preheader.for.end120_crit_edge ], [ %add117, %for.body106.for.end120_crit_edge ]
  %ctr_flags121 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 2
  %129 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %ctr_flags121, align 4
  %131 = load volatile i32, ptr %ctr_flags121, align 4
  %and = and i32 %131, 16387
  %call.i1892 = tail call i32 @__sw_hweight32(i32 noundef %and) #16
  %132 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ctr_flags121, align 8
  %and487 = and i32 %133, 114684
  %call.i1893 = tail call i32 @__sw_hweight32(i32 noundef %and487) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp848 = icmp eq i32 %maxlen, 0
  br i1 %cmp848, label %cond.end856.thread, label %cond.end856

cond.end856:                                      ; preds = %for.end120
  %134 = and i32 %131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool127.not = icmp eq i32 %134, 0
  %cond128.neg = select i1 %tobool127.not, i32 0, i32 -2
  %135 = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool123.not = icmp eq i32 %135, 0
  %cond124.neg = select i1 %tobool123.not, i32 0, i32 -2
  %mul = shl i32 %call.i1893, 1
  %add129.neg = add i32 %rebuild_writemostly_count.0.lcssa, 1
  %sub130 = add i32 %add129.neg, %cond124.neg
  %add485 = add i32 %sub130, %cond128.neg
  %add846 = add i32 %add485, %call.i1892
  %add847 = add i32 %add846, %mul
  %raid_type = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 11
  %136 = ptrtoint ptr %raid_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %raid_type, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %new_chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 38
  %140 = ptrtoint ptr %new_chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %new_chunk_sectors, align 4
  %call855 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.278, ptr noundef %139, i32 noundef %add847, i32 noundef %141) #16
  %142 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %ctr_flags121, align 4
  %and1.i1809 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1809)
  %tobool861.not = icmp eq i32 %and1.i1809, 0
  br i1 %tobool861.not, label %cond.end856.if.end874_crit_edge, label %if.then862

cond.end856.if.end874_crit_edge:                  ; preds = %cond.end856
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end874

cond.end856.thread:                               ; preds = %for.end120
  %144 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %ctr_flags121, align 4
  %and1.i18092031 = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i18092031)
  %tobool861.not2032 = icmp eq i32 %and1.i18092031, 0
  br i1 %tobool861.not2032, label %if.end874.thread, label %cond.end856.thread.cond.end871_crit_edge

cond.end856.thread.cond.end871_crit_edge:         ; preds = %cond.end856.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end871

if.then862:                                       ; preds = %cond.end856
  call void @__sanitizer_cov_trace_cmp4(i32 %call855, i32 %maxlen)
  %cmp863.not = icmp ult i32 %call855, %maxlen
  br i1 %cmp863.not, label %cond.false866, label %if.then862.cond.end871_crit_edge

if.then862.cond.end871_crit_edge:                 ; preds = %if.then862
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end871

cond.false866:                                    ; preds = %if.then862
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr867 = getelementptr i8, ptr %result, i32 %call855
  %sub868 = sub i32 %maxlen, %call855
  %call870 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr867, i32 noundef %sub868, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.118) #16
  br label %cond.end871

cond.end871:                                      ; preds = %cond.false866, %if.then862.cond.end871_crit_edge, %cond.end856.thread.cond.end871_crit_edge
  %cond85720332036 = phi i32 [ %call855, %cond.false866 ], [ %call855, %if.then862.cond.end871_crit_edge ], [ 0, %cond.end856.thread.cond.end871_crit_edge ]
  %cond872 = phi i32 [ %call870, %cond.false866 ], [ 0, %if.then862.cond.end871_crit_edge ], [ 0, %cond.end856.thread.cond.end871_crit_edge ]
  %add873 = add i32 %cond872, %cond85720332036
  br label %if.end874

if.end874:                                        ; preds = %cond.end871, %cond.end856.if.end874_crit_edge
  %sz.1 = phi i32 [ %add873, %cond.end871 ], [ %call855, %cond.end856.if.end874_crit_edge ]
  %146 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %ctr_flags121, align 4
  %148 = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool877.not = icmp eq i32 %148, 0
  br i1 %tobool877.not, label %if.end874.if.end890_crit_edge, label %if.then878

if.end874.if.end890_crit_edge:                    ; preds = %if.end874
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end890

if.end874.thread:                                 ; preds = %cond.end856.thread
  %149 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %ctr_flags121, align 4
  %151 = and i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool877.not2040 = icmp eq i32 %151, 0
  br i1 %tobool877.not2040, label %if.end874.thread.if.end890_crit_edge, label %if.end874.thread.cond.end887_crit_edge

if.end874.thread.cond.end887_crit_edge:           ; preds = %if.end874.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end887

if.end874.thread.if.end890_crit_edge:             ; preds = %if.end874.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end890

if.then878:                                       ; preds = %if.end874
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1, i32 %maxlen)
  %cmp879.not = icmp ult i32 %sz.1, %maxlen
  br i1 %cmp879.not, label %cond.false882, label %if.then878.cond.end887_crit_edge

if.then878.cond.end887_crit_edge:                 ; preds = %if.then878
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end887

cond.false882:                                    ; preds = %if.then878
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr883 = getelementptr i8, ptr %result, i32 %sz.1
  %sub884 = sub i32 %maxlen, %sz.1
  %call886 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr883, i32 noundef %sub884, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.119) #16
  br label %cond.end887

cond.end887:                                      ; preds = %cond.false882, %if.then878.cond.end887_crit_edge, %if.end874.thread.cond.end887_crit_edge
  %sz.120412044 = phi i32 [ %sz.1, %cond.false882 ], [ %sz.1, %if.then878.cond.end887_crit_edge ], [ 0, %if.end874.thread.cond.end887_crit_edge ]
  %cond888 = phi i32 [ %call886, %cond.false882 ], [ 0, %if.then878.cond.end887_crit_edge ], [ 0, %if.end874.thread.cond.end887_crit_edge ]
  %add889 = add i32 %cond888, %sz.120412044
  br label %if.end890

if.end890:                                        ; preds = %cond.end887, %if.end874.thread.if.end890_crit_edge, %if.end874.if.end890_crit_edge
  %sz.2 = phi i32 [ %add889, %cond.end887 ], [ %sz.1, %if.end874.if.end890_crit_edge ], [ 0, %if.end874.thread.if.end890_crit_edge ]
  %152 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %ctr_flags121, align 4
  %154 = and i32 %153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool893.not = icmp eq i32 %154, 0
  br i1 %tobool893.not, label %if.end890.if.end920_crit_edge, label %for.cond895.preheader

if.end890.if.end920_crit_edge:                    ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end920

for.cond895.preheader:                            ; preds = %if.end890
  %155 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %raid_disks104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp8972062 = icmp sgt i32 %156, 0
  br i1 %cmp8972062, label %for.body899.lr.ph, label %for.cond895.preheader.if.end920_crit_edge

for.cond895.preheader.if.end920_crit_edge:        ; preds = %for.cond895.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end920

for.body899.lr.ph:                                ; preds = %for.cond895.preheader
  %rebuild_disks900 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 4
  br label %for.body899

for.body899:                                      ; preds = %for.inc917.for.body899_crit_edge, %for.body899.lr.ph
  %sz.32066 = phi i32 [ %sz.2, %for.body899.lr.ph ], [ %sz.4, %for.inc917.for.body899_crit_edge ]
  %i.22063 = phi i32 [ 0, %for.body899.lr.ph ], [ %inc918, %for.inc917.for.body899_crit_edge ]
  %div3.i1814 = lshr i32 %i.22063, 5
  %arrayidx.i1815 = getelementptr i32, ptr %rebuild_disks900, i32 %div3.i1814
  %157 = ptrtoint ptr %arrayidx.i1815 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %arrayidx.i1815, align 4
  %and.i1816 = and i32 %i.22063, 31
  %159 = shl nuw i32 1, %and.i1816
  %160 = and i32 %158, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool903.not = icmp eq i32 %160, 0
  br i1 %tobool903.not, label %for.body899.for.inc917_crit_edge, label %if.then904

for.body899.for.inc917_crit_edge:                 ; preds = %for.body899
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc917

if.then904:                                       ; preds = %for.body899
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.32066, i32 %maxlen)
  %cmp905.not = icmp ult i32 %sz.32066, %maxlen
  br i1 %cmp905.not, label %cond.false908, label %if.then904.cond.end913_crit_edge

if.then904.cond.end913_crit_edge:                 ; preds = %if.then904
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end913

cond.false908:                                    ; preds = %if.then904
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr909 = getelementptr i8, ptr %result, i32 %sz.32066
  %sub910 = sub i32 %maxlen, %sz.32066
  %call912 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr909, i32 noundef %sub910, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.120, i32 noundef %i.22063) #16
  br label %cond.end913

cond.end913:                                      ; preds = %cond.false908, %if.then904.cond.end913_crit_edge
  %cond914 = phi i32 [ %call912, %cond.false908 ], [ 0, %if.then904.cond.end913_crit_edge ]
  %add915 = add i32 %cond914, %sz.32066
  br label %for.inc917

for.inc917:                                       ; preds = %cond.end913, %for.body899.for.inc917_crit_edge
  %sz.4 = phi i32 [ %add915, %cond.end913 ], [ %sz.32066, %for.body899.for.inc917_crit_edge ]
  %inc918 = add nuw nsw i32 %i.22063, 1
  %161 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %raid_disks104, align 8
  %cmp897 = icmp slt i32 %inc918, %162
  br i1 %cmp897, label %for.inc917.for.body899_crit_edge, label %for.inc917.if.end920_crit_edge

for.inc917.if.end920_crit_edge:                   ; preds = %for.inc917
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end920

for.inc917.for.body899_crit_edge:                 ; preds = %for.inc917
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body899

if.end920:                                        ; preds = %for.inc917.if.end920_crit_edge, %for.cond895.preheader.if.end920_crit_edge, %if.end890.if.end920_crit_edge
  %sz.5 = phi i32 [ %sz.2, %if.end890.if.end920_crit_edge ], [ %sz.2, %for.cond895.preheader.if.end920_crit_edge ], [ %sz.4, %for.inc917.if.end920_crit_edge ]
  %163 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %ctr_flags121, align 4
  %165 = and i32 %164, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool923.not = icmp eq i32 %165, 0
  br i1 %tobool923.not, label %if.end920.if.end936_crit_edge, label %if.then924

if.end920.if.end936_crit_edge:                    ; preds = %if.end920
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end936

if.then924:                                       ; preds = %if.end920
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.5, i32 %maxlen)
  %cmp925.not = icmp ult i32 %sz.5, %maxlen
  br i1 %cmp925.not, label %cond.false928, label %if.then924.cond.end933_crit_edge

if.then924.cond.end933_crit_edge:                 ; preds = %if.then924
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end933

cond.false928:                                    ; preds = %if.then924
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr929 = getelementptr i8, ptr %result, i32 %sz.5
  %sub930 = sub i32 %maxlen, %sz.5
  %daemon_sleep = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 86, i32 7
  %166 = ptrtoint ptr %daemon_sleep to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %daemon_sleep, align 4
  %call932 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr929, i32 noundef %sub930, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.121, i32 noundef %167) #16
  br label %cond.end933

cond.end933:                                      ; preds = %cond.false928, %if.then924.cond.end933_crit_edge
  %cond934 = phi i32 [ %call932, %cond.false928 ], [ 0, %if.then924.cond.end933_crit_edge ]
  %add935 = add i32 %cond934, %sz.5
  br label %if.end936

if.end936:                                        ; preds = %cond.end933, %if.end920.if.end936_crit_edge
  %sz.6 = phi i32 [ %add935, %cond.end933 ], [ %sz.5, %if.end920.if.end936_crit_edge ]
  %168 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %ctr_flags121, align 4
  %170 = and i32 %169, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool939.not = icmp eq i32 %170, 0
  br i1 %tobool939.not, label %if.end936.if.end952_crit_edge, label %if.then940

if.end936.if.end952_crit_edge:                    ; preds = %if.end936
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end952

if.then940:                                       ; preds = %if.end936
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.6, i32 %maxlen)
  %cmp941.not = icmp ult i32 %sz.6, %maxlen
  br i1 %cmp941.not, label %cond.false944, label %if.then940.cond.end949_crit_edge

if.then940.cond.end949_crit_edge:                 ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end949

cond.false944:                                    ; preds = %if.then940
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr945 = getelementptr i8, ptr %result, i32 %sz.6
  %sub946 = sub i32 %maxlen, %sz.6
  %sync_speed_min = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 52
  %171 = ptrtoint ptr %sync_speed_min to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sync_speed_min, align 8
  %call948 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr945, i32 noundef %sub946, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.122, i32 noundef %172) #16
  br label %cond.end949

cond.end949:                                      ; preds = %cond.false944, %if.then940.cond.end949_crit_edge
  %cond950 = phi i32 [ %call948, %cond.false944 ], [ 0, %if.then940.cond.end949_crit_edge ]
  %add951 = add i32 %cond950, %sz.6
  br label %if.end952

if.end952:                                        ; preds = %cond.end949, %if.end936.if.end952_crit_edge
  %sz.7 = phi i32 [ %add951, %cond.end949 ], [ %sz.6, %if.end936.if.end952_crit_edge ]
  %173 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %ctr_flags121, align 4
  %175 = and i32 %174, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool955.not = icmp eq i32 %175, 0
  br i1 %tobool955.not, label %if.end952.if.end968_crit_edge, label %if.then956

if.end952.if.end968_crit_edge:                    ; preds = %if.end952
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end968

if.then956:                                       ; preds = %if.end952
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.7, i32 %maxlen)
  %cmp957.not = icmp ult i32 %sz.7, %maxlen
  br i1 %cmp957.not, label %cond.false960, label %if.then956.cond.end965_crit_edge

if.then956.cond.end965_crit_edge:                 ; preds = %if.then956
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end965

cond.false960:                                    ; preds = %if.then956
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr961 = getelementptr i8, ptr %result, i32 %sz.7
  %sub962 = sub i32 %maxlen, %sz.7
  %sync_speed_max = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 53
  %176 = ptrtoint ptr %sync_speed_max to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sync_speed_max, align 4
  %call964 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr961, i32 noundef %sub962, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.123, i32 noundef %177) #16
  br label %cond.end965

cond.end965:                                      ; preds = %cond.false960, %if.then956.cond.end965_crit_edge
  %cond966 = phi i32 [ %call964, %cond.false960 ], [ 0, %if.then956.cond.end965_crit_edge ]
  %add967 = add i32 %cond966, %sz.7
  br label %if.end968

if.end968:                                        ; preds = %cond.end965, %if.end952.if.end968_crit_edge
  %sz.8 = phi i32 [ %add967, %cond.end965 ], [ %sz.7, %if.end952.if.end968_crit_edge ]
  %178 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %ctr_flags121, align 4
  %180 = and i32 %179, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool971.not = icmp eq i32 %180, 0
  br i1 %tobool971.not, label %if.end968.if.end1003_crit_edge, label %for.cond973.preheader

if.end968.if.end1003_crit_edge:                   ; preds = %if.end968
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1003

for.cond973.preheader:                            ; preds = %if.end968
  %181 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %raid_disks104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp9752069 = icmp sgt i32 %182, 0
  br i1 %cmp9752069, label %for.cond973.preheader.for.body977_crit_edge, label %for.cond973.preheader.if.end1003_crit_edge

for.cond973.preheader.if.end1003_crit_edge:       ; preds = %for.cond973.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1003

for.cond973.preheader.for.body977_crit_edge:      ; preds = %for.cond973.preheader
  br label %for.body977

for.body977:                                      ; preds = %for.inc1000.for.body977_crit_edge, %for.cond973.preheader.for.body977_crit_edge
  %sz.92073 = phi i32 [ %sz.10, %for.inc1000.for.body977_crit_edge ], [ %sz.8, %for.cond973.preheader.for.body977_crit_edge ]
  %i.32070 = phi i32 [ %inc1001, %for.inc1000.for.body977_crit_edge ], [ 0, %for.cond973.preheader.for.body977_crit_edge ]
  %flags981 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.32070, i32 2, i32 16
  %183 = ptrtoint ptr %flags981 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags981, align 4
  %185 = and i32 %184, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool983.not = icmp eq i32 %185, 0
  br i1 %tobool983.not, label %for.body977.for.inc1000_crit_edge, label %if.then984

for.body977.for.inc1000_crit_edge:                ; preds = %for.body977
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc1000

if.then984:                                       ; preds = %for.body977
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.92073, i32 %maxlen)
  %cmp985.not = icmp ult i32 %sz.92073, %maxlen
  br i1 %cmp985.not, label %cond.false988, label %if.then984.cond.end996_crit_edge

if.then984.cond.end996_crit_edge:                 ; preds = %if.then984
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end996

cond.false988:                                    ; preds = %if.then984
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr989 = getelementptr i8, ptr %result, i32 %sz.92073
  %sub990 = sub i32 %maxlen, %sz.92073
  %raid_disk = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.32070, i32 2, i32 19
  %186 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %raid_disk, align 4
  %call995 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr989, i32 noundef %sub990, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.125, i32 noundef %187) #16
  br label %cond.end996

cond.end996:                                      ; preds = %cond.false988, %if.then984.cond.end996_crit_edge
  %cond997 = phi i32 [ %call995, %cond.false988 ], [ 0, %if.then984.cond.end996_crit_edge ]
  %add998 = add i32 %cond997, %sz.92073
  br label %for.inc1000

for.inc1000:                                      ; preds = %cond.end996, %for.body977.for.inc1000_crit_edge
  %sz.10 = phi i32 [ %add998, %cond.end996 ], [ %sz.92073, %for.body977.for.inc1000_crit_edge ]
  %inc1001 = add nuw nsw i32 %i.32070, 1
  %188 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %raid_disks104, align 8
  %cmp975 = icmp slt i32 %inc1001, %189
  br i1 %cmp975, label %for.inc1000.for.body977_crit_edge, label %for.inc1000.if.end1003_crit_edge

for.inc1000.if.end1003_crit_edge:                 ; preds = %for.inc1000
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1003

for.inc1000.for.body977_crit_edge:                ; preds = %for.inc1000
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body977

if.end1003:                                       ; preds = %for.inc1000.if.end1003_crit_edge, %for.cond973.preheader.if.end1003_crit_edge, %if.end968.if.end1003_crit_edge
  %sz.11 = phi i32 [ %sz.8, %if.end968.if.end1003_crit_edge ], [ %sz.8, %for.cond973.preheader.if.end1003_crit_edge ], [ %sz.10, %for.inc1000.if.end1003_crit_edge ]
  %190 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %ctr_flags121, align 4
  %192 = and i32 %191, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool1006.not = icmp eq i32 %192, 0
  br i1 %tobool1006.not, label %if.end1003.if.end1020_crit_edge, label %if.then1007

if.end1003.if.end1020_crit_edge:                  ; preds = %if.end1003
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1020

if.then1007:                                      ; preds = %if.end1003
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.11, i32 %maxlen)
  %cmp1008.not = icmp ult i32 %sz.11, %maxlen
  br i1 %cmp1008.not, label %cond.false1011, label %if.then1007.cond.end1017_crit_edge

if.then1007.cond.end1017_crit_edge:               ; preds = %if.then1007
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1017

cond.false1011:                                   ; preds = %if.then1007
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1012 = getelementptr i8, ptr %result, i32 %sz.11
  %sub1013 = sub i32 %maxlen, %sz.11
  %max_write_behind = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 86, i32 8
  %193 = ptrtoint ptr %max_write_behind to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_write_behind, align 8
  %call1016 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1012, i32 noundef %sub1013, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.124, i32 noundef %194) #16
  br label %cond.end1017

cond.end1017:                                     ; preds = %cond.false1011, %if.then1007.cond.end1017_crit_edge
  %cond1018 = phi i32 [ %call1016, %cond.false1011 ], [ 0, %if.then1007.cond.end1017_crit_edge ]
  %add1019 = add i32 %cond1018, %sz.11
  br label %if.end1020

if.end1020:                                       ; preds = %cond.end1017, %if.end1003.if.end1020_crit_edge
  %sz.12 = phi i32 [ %add1019, %cond.end1017 ], [ %sz.11, %if.end1003.if.end1020_crit_edge ]
  %195 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %ctr_flags121, align 4
  %197 = and i32 %196, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool1023.not = icmp eq i32 %197, 0
  br i1 %tobool1023.not, label %if.end1020.if.end1036_crit_edge, label %if.then1024

if.end1020.if.end1036_crit_edge:                  ; preds = %if.end1020
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1036

if.then1024:                                      ; preds = %if.end1020
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.12, i32 %maxlen)
  %cmp1025.not = icmp ult i32 %sz.12, %maxlen
  br i1 %cmp1025.not, label %cond.false1028, label %if.then1024.cond.end1033_crit_edge

if.then1024.cond.end1033_crit_edge:               ; preds = %if.then1024
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1033

cond.false1028:                                   ; preds = %if.then1024
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1029 = getelementptr i8, ptr %result, i32 %sz.12
  %sub1030 = sub i32 %maxlen, %sz.12
  %call1032 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1029, i32 noundef %sub1030, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.126, i32 noundef %cond) #16
  br label %cond.end1033

cond.end1033:                                     ; preds = %cond.false1028, %if.then1024.cond.end1033_crit_edge
  %cond1034 = phi i32 [ %call1032, %cond.false1028 ], [ 0, %if.then1024.cond.end1033_crit_edge ]
  %add1035 = add i32 %cond1034, %sz.12
  br label %if.end1036

if.end1036:                                       ; preds = %cond.end1033, %if.end1020.if.end1036_crit_edge
  %sz.13 = phi i32 [ %add1035, %cond.end1033 ], [ %sz.12, %if.end1020.if.end1036_crit_edge ]
  %198 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %ctr_flags121, align 4
  %200 = and i32 %199, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool1039.not = icmp eq i32 %200, 0
  br i1 %tobool1039.not, label %if.end1036.if.end1055_crit_edge, label %if.then1040

if.end1036.if.end1055_crit_edge:                  ; preds = %if.end1036
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1055

if.then1040:                                      ; preds = %if.end1036
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.13, i32 %maxlen)
  %cmp1041.not = icmp ult i32 %sz.13, %maxlen
  br i1 %cmp1041.not, label %cond.false1044, label %if.then1040.cond.end1052_crit_edge

if.then1040.cond.end1052_crit_edge:               ; preds = %if.then1040
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1052

cond.false1044:                                   ; preds = %if.then1040
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1045 = getelementptr i8, ptr %result, i32 %sz.13
  %sub1046 = sub i32 %maxlen, %sz.13
  %chunksize = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 86, i32 6
  %201 = ptrtoint ptr %chunksize to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %chunksize, align 8
  %203 = lshr i32 %202, 9
  %shr.i1914 = zext i32 %203 to i64
  %call1051 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1045, i32 noundef %sub1046, ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.127, i64 noundef %shr.i1914) #16
  br label %cond.end1052

cond.end1052:                                     ; preds = %cond.false1044, %if.then1040.cond.end1052_crit_edge
  %cond1053 = phi i32 [ %call1051, %cond.false1044 ], [ 0, %if.then1040.cond.end1052_crit_edge ]
  %add1054 = add i32 %cond1053, %sz.13
  br label %if.end1055

if.end1055:                                       ; preds = %cond.end1052, %if.end1036.if.end1055_crit_edge
  %sz.14 = phi i32 [ %add1054, %cond.end1052 ], [ %sz.13, %if.end1036.if.end1055_crit_edge ]
  %204 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %ctr_flags121, align 4
  %206 = and i32 %205, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool1058.not = icmp eq i32 %206, 0
  br i1 %tobool1058.not, label %if.end1055.if.end1072_crit_edge, label %if.then1059

if.end1055.if.end1072_crit_edge:                  ; preds = %if.end1055
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1072

if.then1059:                                      ; preds = %if.end1055
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.14, i32 %maxlen)
  %cmp1060.not = icmp ult i32 %sz.14, %maxlen
  br i1 %cmp1060.not, label %cond.false1063, label %if.then1059.cond.end1069_crit_edge

if.then1059.cond.end1069_crit_edge:               ; preds = %if.then1059
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1069

cond.false1063:                                   ; preds = %if.then1059
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1064 = getelementptr i8, ptr %result, i32 %sz.14
  %sub1065 = sub i32 %maxlen, %sz.14
  %layout = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 24
  %207 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %layout, align 4
  %and.i.i = and i32 %208, 255
  %209 = lshr i32 %208, 8
  %and.i.i.i1917 = and i32 %209, 255
  %210 = tail call i32 @llvm.umax.i32(i32 %and.i.i, i32 %and.i.i.i1917) #16
  %call1068 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1064, i32 noundef %sub1065, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.128, i32 noundef %210) #16
  br label %cond.end1069

cond.end1069:                                     ; preds = %cond.false1063, %if.then1059.cond.end1069_crit_edge
  %cond1070 = phi i32 [ %call1068, %cond.false1063 ], [ 0, %if.then1059.cond.end1069_crit_edge ]
  %add1071 = add i32 %cond1070, %sz.14
  br label %if.end1072

if.end1072:                                       ; preds = %cond.end1069, %if.end1055.if.end1072_crit_edge
  %sz.15 = phi i32 [ %add1071, %cond.end1069 ], [ %sz.14, %if.end1055.if.end1072_crit_edge ]
  %211 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %ctr_flags121, align 4
  %213 = and i32 %212, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool1075.not = icmp eq i32 %213, 0
  br i1 %tobool1075.not, label %if.end1072.if.end1090_crit_edge, label %if.then1076

if.end1072.if.end1090_crit_edge:                  ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1090

if.then1076:                                      ; preds = %if.end1072
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.15, i32 %maxlen)
  %cmp1077.not = icmp ult i32 %sz.15, %maxlen
  br i1 %cmp1077.not, label %cond.false1080, label %if.then1076.cond.end1087_crit_edge

if.then1076.cond.end1087_crit_edge:               ; preds = %if.then1076
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1087

cond.false1080:                                   ; preds = %if.then1076
  %add.ptr1081 = getelementptr i8, ptr %result, i32 %sz.15
  %sub1082 = sub i32 %maxlen, %sz.15
  %layout1084 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 24
  %214 = ptrtoint ptr %layout1084 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %layout1084, align 4
  %and.i.i1920 = and i32 %215, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1920)
  %tobool.i.not.i = icmp eq i32 %and.i.i1920, 0
  br i1 %tobool.i.not.i, label %if.end.i1922, label %cond.false1080.raid10_md_layout_to_format.exit_crit_edge

cond.false1080.raid10_md_layout_to_format.exit_crit_edge: ; preds = %cond.false1080
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit

if.end.i1922:                                     ; preds = %cond.false1080
  %and.i10.i = and i32 %215, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %cmp.not.i1921 = icmp eq i32 %and.i10.i, 0
  br i1 %cmp.not.i1921, label %if.end3.i, label %if.end.i1922.raid10_md_layout_to_format.exit_crit_edge

if.end.i1922.raid10_md_layout_to_format.exit_crit_edge: ; preds = %if.end.i1922
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit

if.end3.i:                                        ; preds = %if.end.i1922
  call void @__sanitizer_cov_trace_pc() #18
  %216 = and i32 %215, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp5.not.i = icmp eq i32 %216, 0
  %.str.137..str.232.i = select i1 %cmp5.not.i, ptr @.str.232, ptr @.str.137
  br label %raid10_md_layout_to_format.exit

raid10_md_layout_to_format.exit:                  ; preds = %if.end3.i, %if.end.i1922.raid10_md_layout_to_format.exit_crit_edge, %cond.false1080.raid10_md_layout_to_format.exit_crit_edge
  %retval.0.i1923 = phi ptr [ @.str.136, %cond.false1080.raid10_md_layout_to_format.exit_crit_edge ], [ @.str.135, %if.end.i1922.raid10_md_layout_to_format.exit_crit_edge ], [ %.str.137..str.232.i, %if.end3.i ]
  %call1086 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1081, i32 noundef %sub1082, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.129, ptr noundef nonnull %retval.0.i1923) #16
  br label %cond.end1087

cond.end1087:                                     ; preds = %raid10_md_layout_to_format.exit, %if.then1076.cond.end1087_crit_edge
  %cond1088 = phi i32 [ %call1086, %raid10_md_layout_to_format.exit ], [ 0, %if.then1076.cond.end1087_crit_edge ]
  %add1089 = add i32 %cond1088, %sz.15
  br label %if.end1090

if.end1090:                                       ; preds = %cond.end1087, %if.end1072.if.end1090_crit_edge
  %sz.16 = phi i32 [ %add1089, %cond.end1087 ], [ %sz.15, %if.end1072.if.end1090_crit_edge ]
  %217 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %ctr_flags121, align 4
  %219 = and i32 %218, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool1093.not = icmp eq i32 %219, 0
  br i1 %tobool1093.not, label %if.end1090.if.end1113_crit_edge, label %if.then1094

if.end1090.if.end1113_crit_edge:                  ; preds = %if.end1090
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1113

if.then1094:                                      ; preds = %if.end1090
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.16, i32 %maxlen)
  %cmp1095.not = icmp ult i32 %sz.16, %maxlen
  br i1 %cmp1095.not, label %cond.false1098, label %if.then1094.cond.end1110_crit_edge

if.then1094.cond.end1110_crit_edge:               ; preds = %if.then1094
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1110

cond.false1098:                                   ; preds = %if.then1094
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1099 = getelementptr i8, ptr %result, i32 %sz.16
  %sub1100 = sub i32 %maxlen, %sz.16
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 6
  %220 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %delta_disks, align 4
  %delta_disks1102 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 35
  %222 = ptrtoint ptr %delta_disks1102 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %delta_disks1102, align 8
  %224 = tail call i32 @llvm.smax.i32(i32 %221, i32 %223)
  %call1109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1099, i32 noundef %sub1100, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.131, i32 noundef %224) #16
  br label %cond.end1110

cond.end1110:                                     ; preds = %cond.false1098, %if.then1094.cond.end1110_crit_edge
  %cond1111 = phi i32 [ %call1109, %cond.false1098 ], [ 0, %if.then1094.cond.end1110_crit_edge ]
  %add1112 = add i32 %cond1111, %sz.16
  br label %if.end1113

if.end1113:                                       ; preds = %cond.end1110, %if.end1090.if.end1113_crit_edge
  %sz.17 = phi i32 [ %add1112, %cond.end1110 ], [ %sz.16, %if.end1090.if.end1113_crit_edge ]
  %225 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %ctr_flags121, align 4
  %227 = and i32 %226, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool1116.not = icmp eq i32 %227, 0
  br i1 %tobool1116.not, label %if.end1113.if.end1131_crit_edge, label %if.then1117

if.end1113.if.end1131_crit_edge:                  ; preds = %if.end1113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1131

if.then1117:                                      ; preds = %if.end1113
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.17, i32 %maxlen)
  %cmp1118.not = icmp ult i32 %sz.17, %maxlen
  br i1 %cmp1118.not, label %cond.false1121, label %if.then1117.cond.end1128_crit_edge

if.then1117.cond.end1128_crit_edge:               ; preds = %if.then1117
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1128

cond.false1121:                                   ; preds = %if.then1117
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1122 = getelementptr i8, ptr %result, i32 %sz.17
  %sub1123 = sub i32 %maxlen, %sz.17
  %data_offset1125 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 7
  %228 = ptrtoint ptr %data_offset1125 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %data_offset1125, align 8
  %conv1126 = sext i32 %229 to i64
  %call1127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1122, i32 noundef %sub1123, ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.130, i64 noundef %conv1126) #16
  br label %cond.end1128

cond.end1128:                                     ; preds = %cond.false1121, %if.then1117.cond.end1128_crit_edge
  %cond1129 = phi i32 [ %call1127, %cond.false1121 ], [ 0, %if.then1117.cond.end1128_crit_edge ]
  %add1130 = add i32 %cond1129, %sz.17
  br label %if.end1131

if.end1131:                                       ; preds = %cond.end1128, %if.end1113.if.end1131_crit_edge
  %sz.18 = phi i32 [ %add1130, %cond.end1128 ], [ %sz.17, %if.end1113.if.end1131_crit_edge ]
  %230 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %ctr_flags121, align 4
  %232 = and i32 %231, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool1134.not = icmp eq i32 %232, 0
  br i1 %tobool1134.not, label %if.end1131.if.end1150_crit_edge, label %if.then1135

if.end1131.if.end1150_crit_edge:                  ; preds = %if.end1131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1150

if.then1135:                                      ; preds = %if.end1131
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.18, i32 %maxlen)
  %cmp1136.not = icmp ult i32 %sz.18, %maxlen
  br i1 %cmp1136.not, label %cond.false1139, label %if.then1135.cond.end1147_crit_edge

if.then1135.cond.end1147_crit_edge:               ; preds = %if.then1135
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1147

cond.false1139:                                   ; preds = %if.then1135
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1140 = getelementptr i8, ptr %result, i32 %sz.18
  %sub1141 = sub i32 %maxlen, %sz.18
  %journal_dev1143 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14
  %233 = ptrtoint ptr %journal_dev1143 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %journal_dev1143, align 8
  %tobool.not.i1930 = icmp eq ptr %234, null
  %name.i = getelementptr inbounds %struct.dm_dev, ptr %234, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i1930, ptr @.str.153, ptr %name.i
  %call1146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1140, i32 noundef %sub1141, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.133, ptr noundef %spec.select.i) #16
  br label %cond.end1147

cond.end1147:                                     ; preds = %cond.false1139, %if.then1135.cond.end1147_crit_edge
  %cond1148 = phi i32 [ %call1146, %cond.false1139 ], [ 0, %if.then1135.cond.end1147_crit_edge ]
  %add1149 = add i32 %cond1148, %sz.18
  br label %if.end1150

if.end1150:                                       ; preds = %cond.end1147, %if.end1131.if.end1150_crit_edge
  %sz.19 = phi i32 [ %add1149, %cond.end1147 ], [ %sz.18, %if.end1131.if.end1150_crit_edge ]
  %235 = ptrtoint ptr %ctr_flags121 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %ctr_flags121, align 4
  %237 = and i32 %236, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool1153.not = icmp eq i32 %237, 0
  br i1 %tobool1153.not, label %if.end1150.if.end1168_crit_edge, label %if.then1154

if.end1150.if.end1168_crit_edge:                  ; preds = %if.end1150
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1168

if.then1154:                                      ; preds = %if.end1150
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.19, i32 %maxlen)
  %cmp1155.not = icmp ult i32 %sz.19, %maxlen
  br i1 %cmp1155.not, label %cond.false1158, label %if.then1154.cond.end1165_crit_edge

if.then1154.cond.end1165_crit_edge:               ; preds = %if.then1154
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1165

cond.false1158:                                   ; preds = %if.then1154
  %add.ptr1159 = getelementptr i8, ptr %result, i32 %sz.19
  %sub1160 = sub i32 %maxlen, %sz.19
  %mode = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 2
  %238 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %239)
  %switch = icmp ult i32 %239, 2
  br i1 %switch, label %if.then.i1934, label %cond.false1158.md_journal_mode_to_dm_raid.exit_crit_edge

cond.false1158.md_journal_mode_to_dm_raid.exit_crit_edge: ; preds = %cond.false1158
  call void @__sanitizer_cov_trace_pc() #18
  br label %md_journal_mode_to_dm_raid.exit

if.then.i1934:                                    ; preds = %cond.false1158
  call void @__sanitizer_cov_trace_pc() #18
  %param.i = getelementptr [2 x %struct.anon.83], ptr @_raid456_journal_mode, i32 0, i32 %239, i32 1
  %240 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %param.i, align 4
  br label %md_journal_mode_to_dm_raid.exit

md_journal_mode_to_dm_raid.exit:                  ; preds = %if.then.i1934, %cond.false1158.md_journal_mode_to_dm_raid.exit_crit_edge
  %retval.0.i1935 = phi ptr [ %241, %if.then.i1934 ], [ @.str.232, %cond.false1158.md_journal_mode_to_dm_raid.exit_crit_edge ]
  %call1164 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1159, i32 noundef %sub1160, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.134, ptr noundef %retval.0.i1935) #16
  br label %cond.end1165

cond.end1165:                                     ; preds = %md_journal_mode_to_dm_raid.exit, %if.then1154.cond.end1165_crit_edge
  %cond1166 = phi i32 [ %call1164, %md_journal_mode_to_dm_raid.exit ], [ 0, %if.then1154.cond.end1165_crit_edge ]
  %add1167 = add i32 %cond1166, %sz.19
  br label %if.end1168

if.end1168:                                       ; preds = %cond.end1165, %if.end1150.if.end1168_crit_edge
  %sz.20 = phi i32 [ %add1167, %cond.end1165 ], [ %sz.19, %if.end1150.if.end1168_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.20, i32 %maxlen)
  %cmp1169.not = icmp ult i32 %sz.20, %maxlen
  br i1 %cmp1169.not, label %cond.false1172, label %if.end1168.cond.end1177_crit_edge

if.end1168.cond.end1177_crit_edge:                ; preds = %if.end1168
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1177

cond.false1172:                                   ; preds = %if.end1168
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1173 = getelementptr i8, ptr %result, i32 %sz.20
  %sub1174 = sub i32 %maxlen, %sz.20
  %242 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %raid_disks104, align 8
  %call1176 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1173, i32 noundef %sub1174, ptr noundef nonnull @.str.284, i32 noundef %243) #16
  br label %cond.end1177

cond.end1177:                                     ; preds = %cond.false1172, %if.end1168.cond.end1177_crit_edge
  %cond1178 = phi i32 [ %call1176, %cond.false1172 ], [ 0, %if.end1168.cond.end1177_crit_edge ]
  %244 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %raid_disks104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp11822076 = icmp sgt i32 %245, 0
  br i1 %cmp11822076, label %for.body1184.preheader, label %cond.end1177.cleanup_crit_edge

cond.end1177.cleanup_crit_edge:                   ; preds = %cond.end1177
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body1184.preheader:                           ; preds = %cond.end1177
  %add1179 = add i32 %cond1178, %sz.20
  br label %for.body1184

for.body1184:                                     ; preds = %cond.end1198.for.body1184_crit_edge, %for.body1184.preheader
  %sz.212079 = phi i32 [ %add1200, %cond.end1198.for.body1184_crit_edge ], [ %add1179, %for.body1184.preheader ]
  %i.42077 = phi i32 [ %inc1202, %cond.end1198.for.body1184_crit_edge ], [ 0, %for.body1184.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.212079, i32 %maxlen)
  %cmp1185.not = icmp ult i32 %sz.212079, %maxlen
  br i1 %cmp1185.not, label %cond.false1188, label %for.body1184.cond.end1198_crit_edge

for.body1184.cond.end1198_crit_edge:              ; preds = %for.body1184
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1198

cond.false1188:                                   ; preds = %for.body1184
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1189 = getelementptr i8, ptr %result, i32 %sz.212079
  %sub1190 = sub i32 %maxlen, %sz.212079
  %arrayidx1192 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.42077
  %246 = ptrtoint ptr %arrayidx1192 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx1192, align 8
  %tobool.not.i1936 = icmp eq ptr %247, null
  %name.i1937 = getelementptr inbounds %struct.dm_dev, ptr %247, i32 0, i32 3
  %spec.select.i1938 = select i1 %tobool.not.i1936, ptr @.str.153, ptr %name.i1937
  %data_dev = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.42077, i32 1
  %248 = ptrtoint ptr %data_dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %data_dev, align 4
  %tobool.not.i1939 = icmp eq ptr %249, null
  %name.i1940 = getelementptr inbounds %struct.dm_dev, ptr %249, i32 0, i32 3
  %spec.select.i1941 = select i1 %tobool.not.i1939, ptr @.str.153, ptr %name.i1940
  %call1197 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1189, i32 noundef %sub1190, ptr noundef nonnull @.str.283, ptr noundef %spec.select.i1938, ptr noundef %spec.select.i1941) #16
  br label %cond.end1198

cond.end1198:                                     ; preds = %cond.false1188, %for.body1184.cond.end1198_crit_edge
  %cond1199 = phi i32 [ %call1197, %cond.false1188 ], [ 0, %for.body1184.cond.end1198_crit_edge ]
  %add1200 = add i32 %cond1199, %sz.212079
  %inc1202 = add nuw nsw i32 %i.42077, 1
  %250 = ptrtoint ptr %raid_disks104 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %raid_disks104, align 8
  %cmp1182 = icmp slt i32 %inc1202, %251
  br i1 %cmp1182, label %cond.end1198.for.body1184_crit_edge, label %cond.end1198.cleanup_crit_edge

cond.end1198.cleanup_crit_edge:                   ; preds = %cond.end1198
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.end1198.for.body1184_crit_edge:              ; preds = %cond.end1198
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body1184

sw.bb1204:                                        ; preds = %cond.end
  %new_level1205 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 36
  %252 = ptrtoint ptr %new_level1205 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %new_level1205, align 4
  %new_layout1206 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 37
  %254 = ptrtoint ptr %new_layout1206 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %new_layout1206, align 8
  %and.i.i.i1942 = and i32 %255, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1942)
  %tobool.i.not.i9.i.i1943 = icmp eq i32 %and.i.i.i1942, 0
  %256 = and i32 %255, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp.i10.i.i1944 = icmp ne i32 %256, 0
  %257 = and i1 %tobool.i.not.i9.i.i1943, %cmp.i10.i.i1944
  %and.i3.i.i.i1945 = and i32 %255, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i1945)
  %cmp.i.i.i1946 = icmp ne i32 %and.i3.i.i.i1945, 0
  %258 = and i1 %tobool.i.not.i9.i.i1943, %cmp.i.i.i1946
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %253)
  %cmp.i.i1952 = icmp eq i32 %253, 10
  br label %while.body.i1951

while.body.i1951:                                 ; preds = %if.end.i1964.while.body.i1951_crit_edge, %sw.bb1204
  %incdec.ptr12.i1947 = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %sw.bb1204 ], [ %incdec.ptr.i1962, %if.end.i1964.while.body.i1951_crit_edge ]
  %rtp.010.i1948 = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %sw.bb1204 ], [ %incdec.ptr12.i1947, %if.end.i1964.while.body.i1951_crit_edge ]
  %level1.i1949 = getelementptr %struct.raid_type, ptr %rtp.010.i1948, i32 -1, i32 4
  %259 = ptrtoint ptr %level1.i1949 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %level1.i1949, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %253)
  %cmp2.i1950 = icmp eq i32 %260, %253
  br i1 %cmp2.i1950, label %land.lhs.true.i1953, label %while.body.i1951.if.end.i1964_crit_edge

while.body.i1951.if.end.i1964_crit_edge:          ; preds = %while.body.i1951
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i1964

land.lhs.true.i1953:                              ; preds = %while.body.i1951
  br i1 %cmp.i.i1952, label %if.then.i.i1955, label %land.lhs.true.i1953.lor.lhs.false.i1961_crit_edge

land.lhs.true.i1953.lor.lhs.false.i1961_crit_edge: ; preds = %land.lhs.true.i1953
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i1961

if.then.i.i1955:                                  ; preds = %land.lhs.true.i1953
  %algorithm.i.i1954 = getelementptr %struct.raid_type, ptr %rtp.010.i1948, i32 -1, i32 5
  %261 = ptrtoint ptr %algorithm.i.i1954 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %algorithm.i.i1954, align 4
  %263 = zext i32 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %262, label %if.then.i.i1955.lor.lhs.false.i1961_crit_edge [
    i32 0, label %if.then.i.i1955.__got_raid10.exit.i1958_crit_edge
    i32 1, label %if.then.i.i1955.__got_raid10.exit.i1958_crit_edge2109
    i32 2, label %sw.bb1.i.i1956
    i32 3, label %sw.bb3.i.i1957
  ]

if.then.i.i1955.__got_raid10.exit.i1958_crit_edge2109: ; preds = %if.then.i.i1955
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i1958

if.then.i.i1955.__got_raid10.exit.i1958_crit_edge: ; preds = %if.then.i.i1955
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i1958

if.then.i.i1955.lor.lhs.false.i1961_crit_edge:    ; preds = %if.then.i.i1955
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i1961

sw.bb1.i.i1956:                                   ; preds = %if.then.i.i1955
  br i1 %tobool.i.not.i9.i.i1943, label %sw.bb1.i.i1956.lor.lhs.false.i1961_crit_edge, label %sw.bb1.i.i1956.get_raid_type_by_ll.exit1966_crit_edge

sw.bb1.i.i1956.get_raid_type_by_ll.exit1966_crit_edge: ; preds = %sw.bb1.i.i1956
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit1966

sw.bb1.i.i1956.lor.lhs.false.i1961_crit_edge:     ; preds = %sw.bb1.i.i1956
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i1961

sw.bb3.i.i1957:                                   ; preds = %if.then.i.i1955
  br i1 %257, label %sw.bb3.i.i1957.get_raid_type_by_ll.exit1966_crit_edge, label %sw.bb3.i.i1957.lor.lhs.false.i1961_crit_edge

sw.bb3.i.i1957.lor.lhs.false.i1961_crit_edge:     ; preds = %sw.bb3.i.i1957
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i1961

sw.bb3.i.i1957.get_raid_type_by_ll.exit1966_crit_edge: ; preds = %sw.bb3.i.i1957
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit1966

__got_raid10.exit.i1958:                          ; preds = %if.then.i.i1955.__got_raid10.exit.i1958_crit_edge, %if.then.i.i1955.__got_raid10.exit.i1958_crit_edge2109
  br i1 %258, label %__got_raid10.exit.i1958.get_raid_type_by_ll.exit1966_crit_edge, label %__got_raid10.exit.i1958.lor.lhs.false.i1961_crit_edge

__got_raid10.exit.i1958.lor.lhs.false.i1961_crit_edge: ; preds = %__got_raid10.exit.i1958
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i1961

__got_raid10.exit.i1958.get_raid_type_by_ll.exit1966_crit_edge: ; preds = %__got_raid10.exit.i1958
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit1966

lor.lhs.false.i1961:                              ; preds = %__got_raid10.exit.i1958.lor.lhs.false.i1961_crit_edge, %sw.bb3.i.i1957.lor.lhs.false.i1961_crit_edge, %sw.bb1.i.i1956.lor.lhs.false.i1961_crit_edge, %if.then.i.i1955.lor.lhs.false.i1961_crit_edge, %land.lhs.true.i1953.lor.lhs.false.i1961_crit_edge
  %algorithm.i1959 = getelementptr %struct.raid_type, ptr %rtp.010.i1948, i32 -1, i32 5
  %264 = ptrtoint ptr %algorithm.i1959 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %algorithm.i1959, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %255)
  %cmp3.i1960 = icmp eq i32 %265, %255
  br i1 %cmp3.i1960, label %lor.lhs.false.i1961.get_raid_type_by_ll.exit1966_crit_edge, label %lor.lhs.false.i1961.if.end.i1964_crit_edge

lor.lhs.false.i1961.if.end.i1964_crit_edge:       ; preds = %lor.lhs.false.i1961
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i1964

lor.lhs.false.i1961.get_raid_type_by_ll.exit1966_crit_edge: ; preds = %lor.lhs.false.i1961
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit1966

if.end.i1964:                                     ; preds = %lor.lhs.false.i1961.if.end.i1964_crit_edge, %while.body.i1951.if.end.i1964_crit_edge
  %incdec.ptr.i1962 = getelementptr %struct.raid_type, ptr %incdec.ptr12.i1947, i32 -1
  %cmp.i1963 = icmp ugt ptr %incdec.ptr12.i1947, @raid_types
  br i1 %cmp.i1963, label %if.end.i1964.while.body.i1951_crit_edge, label %if.end.i1964.cleanup_crit_edge

if.end.i1964.cleanup_crit_edge:                   ; preds = %if.end.i1964
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i1964.while.body.i1951_crit_edge:          ; preds = %if.end.i1964
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i1951

get_raid_type_by_ll.exit1966:                     ; preds = %lor.lhs.false.i1961.get_raid_type_by_ll.exit1966_crit_edge, %__got_raid10.exit.i1958.get_raid_type_by_ll.exit1966_crit_edge, %sw.bb3.i.i1957.get_raid_type_by_ll.exit1966_crit_edge, %sw.bb1.i.i1956.get_raid_type_by_ll.exit1966_crit_edge
  %tobool1208.not = icmp eq ptr %incdec.ptr12.i1947, null
  br i1 %tobool1208.not, label %get_raid_type_by_ll.exit1966.cleanup_crit_edge, label %if.end1210

get_raid_type_by_ll.exit1966.cleanup_crit_edge:   ; preds = %get_raid_type_by_ll.exit1966
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end1210:                                       ; preds = %get_raid_type_by_ll.exit1966
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp1211 = icmp eq i32 %maxlen, 0
  br i1 %cmp1211, label %if.end1210.cond.end1228_crit_edge, label %cond.false1214

if.end1210.cond.end1228_crit_edge:                ; preds = %if.end1210
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1228

cond.false1214:                                   ; preds = %if.end1210
  call void @__sanitizer_cov_trace_pc() #18
  %type1217 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %266 = ptrtoint ptr %type1217 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %type1217, align 4
  %name1218 = getelementptr inbounds %struct.target_type, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %name1218 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %name1218, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %267, i32 0, i32 3
  %270 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %version, align 8
  %arrayidx1223 = getelementptr %struct.target_type, ptr %267, i32 0, i32 3, i32 1
  %272 = ptrtoint ptr %arrayidx1223 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx1223, align 4
  %arrayidx1226 = getelementptr %struct.target_type, ptr %267, i32 0, i32 3, i32 2
  %274 = ptrtoint ptr %arrayidx1226 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx1226, align 8
  %call1227 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.285, ptr noundef %269, i32 noundef %271, i32 noundef %273, i32 noundef %275) #16
  br label %cond.end1228

cond.end1228:                                     ; preds = %cond.false1214, %if.end1210.cond.end1228_crit_edge
  %cond1229 = phi i32 [ %call1227, %cond.false1214 ], [ 0, %if.end1210.cond.end1228_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond1229, i32 %maxlen)
  %cmp1231.not = icmp ult i32 %cond1229, %maxlen
  br i1 %cmp1231.not, label %cond.false1234, label %cond.end1228.cond.end1240_crit_edge

cond.end1228.cond.end1240_crit_edge:              ; preds = %cond.end1228
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1240

cond.false1234:                                   ; preds = %cond.end1228
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1235 = getelementptr i8, ptr %result, i32 %cond1229
  %sub1236 = sub i32 %maxlen, %cond1229
  %276 = ptrtoint ptr %incdec.ptr12.i1947 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %incdec.ptr12.i1947, align 4
  %raid_disks1238 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %278 = ptrtoint ptr %raid_disks1238 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %raid_disks1238, align 8
  %call1239 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1235, i32 noundef %sub1236, ptr noundef nonnull @.str.286, ptr noundef %277, i32 noundef %279) #16
  br label %cond.end1240

cond.end1240:                                     ; preds = %cond.false1234, %cond.end1228.cond.end1240_crit_edge
  %cond1241 = phi i32 [ %call1239, %cond.false1234 ], [ 0, %cond.end1228.cond.end1240_crit_edge ]
  %add1242 = add i32 %cond1241, %cond1229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !631
  %recovery1250 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  %280 = ptrtoint ptr %recovery1250 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %recovery1250, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recovery.addr.i1967)
  %282 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %recovery.addr.i1967, align 4
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0..i1968 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %283 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0..i1968, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool.not.i1969 = icmp eq i32 %283, 0
  br i1 %tobool.not.i1969, label %if.end.i1972, label %cond.end1240.decipher_sync_action.exit2003_crit_edge

cond.end1240.decipher_sync_action.exit2003_crit_edge: ; preds = %cond.end1240
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit2003

if.end.i1972:                                     ; preds = %cond.end1240
  %284 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %284)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.49.i1970 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %285 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.49.i1970, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool2.not.i1971 = icmp eq i32 %285, 0
  br i1 %tobool2.not.i1971, label %land.lhs.true.i1976, label %if.end.i1972.if.end32.i2001_crit_edge

if.end.i1972.if.end32.i2001_crit_edge:            ; preds = %if.end.i1972
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i2001

land.lhs.true.i1976:                              ; preds = %if.end.i1972
  %286 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %286)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.50.i1973 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %and1.i36.i1974 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.50.i1973, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i36.i1974)
  %tobool4.not.i1975 = icmp eq i32 %and1.i36.i1974, 0
  br i1 %tobool4.not.i1975, label %lor.lhs.false.i1979, label %land.lhs.true.i1976.if.then9.i1985_crit_edge

land.lhs.true.i1976.if.then9.i1985_crit_edge:     ; preds = %land.lhs.true.i1976
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i1985

lor.lhs.false.i1979:                              ; preds = %land.lhs.true.i1976
  %ro.i1977 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %287 = ptrtoint ptr %ro.i1977 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %ro.i1977, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool5.not.i1978 = icmp eq i32 %288, 0
  br i1 %tobool5.not.i1978, label %land.lhs.true6.i1982, label %lor.lhs.false.i1979.if.end32.i2001_crit_edge

lor.lhs.false.i1979.if.end32.i2001_crit_edge:     ; preds = %lor.lhs.false.i1979
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i2001

land.lhs.true6.i1982:                             ; preds = %lor.lhs.false.i1979
  %289 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %289)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.51.i1980 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %290 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.51.i1980, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool8.not.i1981 = icmp eq i32 %290, 0
  br i1 %tobool8.not.i1981, label %land.lhs.true6.i1982.if.end32.i2001_crit_edge, label %land.lhs.true6.i1982.if.then9.i1985_crit_edge

land.lhs.true6.i1982.if.then9.i1985_crit_edge:    ; preds = %land.lhs.true6.i1982
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i1985

land.lhs.true6.i1982.if.end32.i2001_crit_edge:    ; preds = %land.lhs.true6.i1982
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i2001

if.then9.i1985:                                   ; preds = %land.lhs.true6.i1982.if.then9.i1985_crit_edge, %land.lhs.true.i1976.if.then9.i1985_crit_edge
  %291 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %291)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.52.i1983 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %292 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.52.i1983, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool11.not.i1984 = icmp eq i32 %292, 0
  br i1 %tobool11.not.i1984, label %if.end13.i1989, label %if.then9.i1985.decipher_sync_action.exit2003_crit_edge

if.then9.i1985.decipher_sync_action.exit2003_crit_edge: ; preds = %if.then9.i1985
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit2003

if.end13.i1989:                                   ; preds = %if.then9.i1985
  %293 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %293)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.53.i1986 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %294 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.53.i1986, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool15.not.i1987 = icmp eq i32 %294, 0
  %295 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %295)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.56.i1988 = load volatile i32, ptr %recovery.addr.i1967, align 4
  br i1 %tobool15.not.i1987, label %if.end25.i1997, label %if.then16.i1991

if.then16.i1991:                                  ; preds = %if.end13.i1989
  %296 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.56.i1988, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool18.not.i1990 = icmp eq i32 %296, 0
  br i1 %tobool18.not.i1990, label %if.then16.i1991.decipher_sync_action.exit2003_crit_edge, label %if.end20.i1995

if.then16.i1991.decipher_sync_action.exit2003_crit_edge: ; preds = %if.then16.i1991
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit2003

if.end20.i1995:                                   ; preds = %if.then16.i1991
  call void @__sanitizer_cov_trace_pc() #18
  %297 = ptrtoint ptr %recovery.addr.i1967 to i32
  call void @__asan_load4_noabort(i32 %297)
  %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.55.i1992 = load volatile i32, ptr %recovery.addr.i1967, align 4
  %298 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.55.i1992, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool22.not.i1993 = icmp eq i32 %298, 0
  %..i1994 = select i1 %tobool22.not.i1993, i32 4, i32 3
  br label %decipher_sync_action.exit2003

if.end25.i1997:                                   ; preds = %if.end13.i1989
  %299 = and i32 %recovery.addr.i1967.0.recovery.addr.i1967.0.recovery.addr.0.recovery.addr.0.56.i1988, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool27.not.i1996 = icmp eq i32 %299, 0
  br i1 %tobool27.not.i1996, label %if.end29.i2000, label %if.end25.i1997.decipher_sync_action.exit2003_crit_edge

if.end25.i1997.decipher_sync_action.exit2003_crit_edge: ; preds = %if.end25.i1997
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit2003

if.end29.i2000:                                   ; preds = %if.end25.i1997
  %reshape_position.i1998 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 34
  %300 = ptrtoint ptr %reshape_position.i1998 to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %reshape_position.i1998, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %301)
  %cmp.not.i1999 = icmp eq i64 %301, -1
  br i1 %cmp.not.i1999, label %if.end29.i2000.if.end32.i2001_crit_edge, label %if.end29.i2000.decipher_sync_action.exit2003_crit_edge

if.end29.i2000.decipher_sync_action.exit2003_crit_edge: ; preds = %if.end29.i2000
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit2003

if.end29.i2000.if.end32.i2001_crit_edge:          ; preds = %if.end29.i2000
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i2001

if.end32.i2001:                                   ; preds = %if.end29.i2000.if.end32.i2001_crit_edge, %land.lhs.true6.i1982.if.end32.i2001_crit_edge, %lor.lhs.false.i1979.if.end32.i2001_crit_edge, %if.end.i1972.if.end32.i2001_crit_edge
  br label %decipher_sync_action.exit2003

decipher_sync_action.exit2003:                    ; preds = %if.end32.i2001, %if.end29.i2000.decipher_sync_action.exit2003_crit_edge, %if.end25.i1997.decipher_sync_action.exit2003_crit_edge, %if.end20.i1995, %if.then16.i1991.decipher_sync_action.exit2003_crit_edge, %if.then9.i1985.decipher_sync_action.exit2003_crit_edge, %cond.end1240.decipher_sync_action.exit2003_crit_edge
  %retval.0.i2002 = phi i32 [ 6, %if.end32.i2001 ], [ 0, %cond.end1240.decipher_sync_action.exit2003_crit_edge ], [ 1, %if.then9.i1985.decipher_sync_action.exit2003_crit_edge ], [ 2, %if.then16.i1991.decipher_sync_action.exit2003_crit_edge ], [ %..i1994, %if.end20.i1995 ], [ 5, %if.end25.i1997.decipher_sync_action.exit2003_crit_edge ], [ 1, %if.end29.i2000.decipher_sync_action.exit2003_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recovery.addr.i1967)
  call void @__sanitizer_cov_trace_cmp4(i32 %add1242, i32 %maxlen)
  %cmp1252.not = icmp ult i32 %add1242, %maxlen
  br i1 %cmp1252.not, label %cond.false1255, label %decipher_sync_action.exit2003.cond.end1260_crit_edge

decipher_sync_action.exit2003.cond.end1260_crit_edge: ; preds = %decipher_sync_action.exit2003
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1260

cond.false1255:                                   ; preds = %decipher_sync_action.exit2003
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1256 = getelementptr i8, ptr %result, i32 %add1242
  %sub1257 = sub i32 %maxlen, %add1242
  %arrayidx.i2004 = getelementptr [7 x ptr], ptr @sync_str.sync_strs, i32 0, i32 %retval.0.i2002
  %302 = ptrtoint ptr %arrayidx.i2004 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i2004, align 4
  %call1259 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1256, i32 noundef %sub1257, ptr noundef nonnull @.str.287, ptr noundef %303) #16
  br label %cond.end1260

cond.end1260:                                     ; preds = %cond.false1255, %decipher_sync_action.exit2003.cond.end1260_crit_edge
  %cond1261 = phi i32 [ %call1259, %cond.false1255 ], [ 0, %decipher_sync_action.exit2003.cond.end1260_crit_edge ]
  %add1262 = add i32 %cond1261, %add1242
  %raid_disks1264 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 5
  %304 = ptrtoint ptr %raid_disks1264 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %raid_disks1264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %cmp12652052 = icmp sgt i32 %305, 0
  br i1 %cmp12652052, label %for.body1267.lr.ph, label %cond.end1260.for.end1294_crit_edge

cond.end1260.for.end1294_crit_edge:               ; preds = %cond.end1260
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end1294

for.body1267.lr.ph:                               ; preds = %cond.end1260
  %mode.i2014 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 2
  %runtime_flags.i2018 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 3
  br label %for.body1267

for.body1267:                                     ; preds = %cond.end1289.for.body1267_crit_edge, %for.body1267.lr.ph
  %sz.222056 = phi i32 [ %add1262, %for.body1267.lr.ph ], [ %add1291, %cond.end1289.for.body1267_crit_edge ]
  %i.52053 = phi i32 [ 0, %for.body1267.lr.ph ], [ %inc1293, %cond.end1289.for.body1267_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.222056, i32 %maxlen)
  %cmp1268.not = icmp ult i32 %sz.222056, %maxlen
  br i1 %cmp1268.not, label %cond.false1271, label %for.body1267.cond.end1275_crit_edge

for.body1267.cond.end1275_crit_edge:              ; preds = %for.body1267
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1275

cond.false1271:                                   ; preds = %for.body1267
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1272 = getelementptr i8, ptr %result, i32 %sz.222056
  %sub1273 = sub i32 %maxlen, %sz.222056
  %call1274 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1272, i32 noundef %sub1273, ptr noundef nonnull @.str.288, i32 noundef %i.52053) #16
  br label %cond.end1275

cond.end1275:                                     ; preds = %cond.false1271, %for.body1267.cond.end1275_crit_edge
  %cond1276 = phi i32 [ %call1274, %cond.false1271 ], [ 0, %for.body1267.cond.end1275_crit_edge ]
  %add1277 = add i32 %cond1276, %sz.222056
  call void @__sanitizer_cov_trace_cmp4(i32 %add1277, i32 %maxlen)
  %cmp1278.not = icmp ult i32 %add1277, %maxlen
  br i1 %cmp1278.not, label %cond.false1281, label %cond.end1275.cond.end1289_crit_edge

cond.end1275.cond.end1289_crit_edge:              ; preds = %cond.end1275
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1289

cond.false1281:                                   ; preds = %cond.end1275
  %add.ptr1282 = getelementptr i8, ptr %result, i32 %add1277
  %sub1283 = sub i32 %maxlen, %add1277
  %bdev.i2006 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.52053, i32 2, i32 5
  %306 = ptrtoint ptr %bdev.i2006 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %bdev.i2006, align 4
  %tobool.not.i2007 = icmp eq ptr %307, null
  br i1 %tobool.not.i2007, label %cond.false1281.__raid_dev_status.exit2027_crit_edge, label %if.else.i2011

cond.false1281.__raid_dev_status.exit2027_crit_edge: ; preds = %cond.false1281
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit2027

if.else.i2011:                                    ; preds = %cond.false1281
  %flags.i2008 = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.52053, i32 2, i32 16
  %308 = ptrtoint ptr %flags.i2008 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %flags.i2008, align 4
  %and1.i.i2009 = and i32 %309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2009)
  %tobool1.not.i2010 = icmp eq i32 %and1.i.i2009, 0
  br i1 %tobool1.not.i2010, label %if.else3.i2013, label %if.else.i2011.__raid_dev_status.exit2027_crit_edge

if.else.i2011.__raid_dev_status.exit2027_crit_edge: ; preds = %if.else.i2011
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit2027

if.else3.i2013:                                   ; preds = %if.else.i2011
  %310 = ptrtoint ptr %flags.i2008 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load volatile i32, ptr %flags.i2008, align 4
  %312 = and i32 %311, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool6.not.i2012 = icmp eq i32 %312, 0
  br i1 %tobool6.not.i2012, label %if.else8.i2020, label %if.then7.i2017

if.then7.i2017:                                   ; preds = %if.else3.i2013
  call void @__sanitizer_cov_trace_pc() #18
  %313 = ptrtoint ptr %mode.i2014 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %mode.i2014, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %cmp.i2015 = icmp eq i32 %314, 0
  %cond.i2016 = select i1 %cmp.i2015, ptr @.str.294, ptr @.str.295
  br label %__raid_dev_status.exit2027

if.else8.i2020:                                   ; preds = %if.else3.i2013
  %315 = ptrtoint ptr %runtime_flags.i2018 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %runtime_flags.i2018, align 4
  %317 = and i32 %316, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool10.not.i2019 = icmp eq i32 %317, 0
  br i1 %tobool10.not.i2019, label %lor.lhs.false.i2022, label %if.else8.i2020.__raid_dev_status.exit2027_crit_edge

if.else8.i2020.__raid_dev_status.exit2027_crit_edge: ; preds = %if.else8.i2020
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit2027

lor.lhs.false.i2022:                              ; preds = %if.else8.i2020
  %318 = ptrtoint ptr %runtime_flags.i2018 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load volatile i32, ptr %runtime_flags.i2018, align 4
  %320 = and i32 %319, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool13.not.i2021 = icmp eq i32 %320, 0
  br i1 %tobool13.not.i2021, label %land.lhs.true.i2024, label %lor.lhs.false.i2022.if.else18.i2025_crit_edge

lor.lhs.false.i2022.if.else18.i2025_crit_edge:    ; preds = %lor.lhs.false.i2022
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i2025

land.lhs.true.i2024:                              ; preds = %lor.lhs.false.i2022
  %321 = ptrtoint ptr %flags.i2008 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile i32, ptr %flags.i2008, align 4
  %323 = and i32 %322, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool16.not.i2023 = icmp eq i32 %323, 0
  br i1 %tobool16.not.i2023, label %land.lhs.true.i2024.__raid_dev_status.exit2027_crit_edge, label %land.lhs.true.i2024.if.else18.i2025_crit_edge

land.lhs.true.i2024.if.else18.i2025_crit_edge:    ; preds = %land.lhs.true.i2024
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i2025

land.lhs.true.i2024.__raid_dev_status.exit2027_crit_edge: ; preds = %land.lhs.true.i2024
  call void @__sanitizer_cov_trace_pc() #18
  br label %__raid_dev_status.exit2027

if.else18.i2025:                                  ; preds = %land.lhs.true.i2024.if.else18.i2025_crit_edge, %lor.lhs.false.i2022.if.else18.i2025_crit_edge
  br label %__raid_dev_status.exit2027

__raid_dev_status.exit2027:                       ; preds = %if.else18.i2025, %land.lhs.true.i2024.__raid_dev_status.exit2027_crit_edge, %if.else8.i2020.__raid_dev_status.exit2027_crit_edge, %if.then7.i2017, %if.else.i2011.__raid_dev_status.exit2027_crit_edge, %cond.false1281.__raid_dev_status.exit2027_crit_edge
  %retval.0.i2026 = phi ptr [ %cond.i2016, %if.then7.i2017 ], [ @.str.294, %if.else18.i2025 ], [ @.str.153, %cond.false1281.__raid_dev_status.exit2027_crit_edge ], [ @.str.293, %if.else.i2011.__raid_dev_status.exit2027_crit_edge ], [ @.str.295, %land.lhs.true.i2024.__raid_dev_status.exit2027_crit_edge ], [ @.str.295, %if.else8.i2020.__raid_dev_status.exit2027_crit_edge ]
  %call1288 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1282, i32 noundef %sub1283, ptr noundef nonnull %retval.0.i2026) #16
  br label %cond.end1289

cond.end1289:                                     ; preds = %__raid_dev_status.exit2027, %cond.end1275.cond.end1289_crit_edge
  %cond1290 = phi i32 [ %call1288, %__raid_dev_status.exit2027 ], [ 0, %cond.end1275.cond.end1289_crit_edge ]
  %add1291 = add i32 %cond1290, %add1277
  %inc1293 = add nuw nsw i32 %i.52053, 1
  %324 = ptrtoint ptr %raid_disks1264 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %raid_disks1264, align 8
  %cmp1265 = icmp slt i32 %inc1293, %325
  br i1 %cmp1265, label %cond.end1289.for.body1267_crit_edge, label %cond.end1289.for.end1294_crit_edge

cond.end1289.for.end1294_crit_edge:               ; preds = %cond.end1289
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end1294

cond.end1289.for.body1267_crit_edge:              ; preds = %cond.end1289
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body1267

for.end1294:                                      ; preds = %cond.end1289.for.end1294_crit_edge, %cond.end1260.for.end1294_crit_edge
  %sz.22.lcssa = phi i32 [ %add1262, %cond.end1260.for.end1294_crit_edge ], [ %add1291, %cond.end1289.for.end1294_crit_edge ]
  %level.i = getelementptr inbounds %struct.raid_type, ptr %incdec.ptr12.i1947, i32 0, i32 4
  %326 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %level.i, align 4
  %328 = add i32 %327, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %328)
  %329 = icmp ult i32 %328, 3
  br i1 %329, label %if.then1296, label %for.end1294.if.end1341_crit_edge

for.end1294.if.end1341_crit_edge:                 ; preds = %for.end1294
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end1341

if.then1296:                                      ; preds = %for.end1294
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.22.lcssa, i32 %maxlen)
  %cmp1297.not = icmp ult i32 %sz.22.lcssa, %maxlen
  br i1 %cmp1297.not, label %cond.false1300, label %if.then1296.cond.end1304_crit_edge

if.then1296.cond.end1304_crit_edge:               ; preds = %if.then1296
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1304

cond.false1300:                                   ; preds = %if.then1296
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1301 = getelementptr i8, ptr %result, i32 %sz.22.lcssa
  %sub1302 = sub i32 %maxlen, %sz.22.lcssa
  %call1303 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1301, i32 noundef %sub1302, ptr noundef nonnull @.str.289) #16
  br label %cond.end1304

cond.end1304:                                     ; preds = %cond.false1300, %if.then1296.cond.end1304_crit_edge
  %cond1305 = phi i32 [ %call1303, %cond.false1300 ], [ 0, %if.then1296.cond.end1304_crit_edge ]
  %add1306 = add i32 %cond1305, %sz.22.lcssa
  %mode1308 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 14, i32 2
  %330 = ptrtoint ptr %mode1308 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %mode1308, align 8
  %332 = zext i32 %331 to i64
  call void @__sanitizer_cov_trace_switch(i64 %332, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %331, label %sw.default [
    i32 0, label %sw.bb1309
    i32 1, label %sw.bb1320
  ]

sw.bb1309:                                        ; preds = %cond.end1304
  call void @__sanitizer_cov_trace_cmp4(i32 %add1306, i32 %maxlen)
  %cmp1310.not = icmp ult i32 %add1306, %maxlen
  br i1 %cmp1310.not, label %cond.false1313, label %sw.bb1309.cond.end1317_crit_edge

sw.bb1309.cond.end1317_crit_edge:                 ; preds = %sw.bb1309
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1317

cond.false1313:                                   ; preds = %sw.bb1309
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1314 = getelementptr i8, ptr %result, i32 %add1306
  %sub1315 = sub i32 %maxlen, %add1306
  %call1316 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1314, i32 noundef %sub1315, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.138) #16
  br label %cond.end1317

cond.end1317:                                     ; preds = %cond.false1313, %sw.bb1309.cond.end1317_crit_edge
  %cond1318 = phi i32 [ %call1316, %cond.false1313 ], [ 0, %sw.bb1309.cond.end1317_crit_edge ]
  %add1319 = add i32 %cond1318, %add1306
  br label %if.end1341

sw.bb1320:                                        ; preds = %cond.end1304
  call void @__sanitizer_cov_trace_cmp4(i32 %add1306, i32 %maxlen)
  %cmp1321.not = icmp ult i32 %add1306, %maxlen
  br i1 %cmp1321.not, label %cond.false1324, label %sw.bb1320.cond.end1328_crit_edge

sw.bb1320.cond.end1328_crit_edge:                 ; preds = %sw.bb1320
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1328

cond.false1324:                                   ; preds = %sw.bb1320
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1325 = getelementptr i8, ptr %result, i32 %add1306
  %sub1326 = sub i32 %maxlen, %add1306
  %call1327 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1325, i32 noundef %sub1326, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.139) #16
  br label %cond.end1328

cond.end1328:                                     ; preds = %cond.false1324, %sw.bb1320.cond.end1328_crit_edge
  %cond1329 = phi i32 [ %call1327, %cond.false1324 ], [ 0, %sw.bb1320.cond.end1328_crit_edge ]
  %add1330 = add i32 %cond1329, %add1306
  br label %if.end1341

sw.default:                                       ; preds = %cond.end1304
  call void @__sanitizer_cov_trace_cmp4(i32 %add1306, i32 %maxlen)
  %cmp1331.not = icmp ult i32 %add1306, %maxlen
  br i1 %cmp1331.not, label %cond.false1334, label %sw.default.cond.end1338_crit_edge

sw.default.cond.end1338_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end1338

cond.false1334:                                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1335 = getelementptr i8, ptr %result, i32 %add1306
  %sub1336 = sub i32 %maxlen, %add1306
  %call1337 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1335, i32 noundef %sub1336, ptr noundef nonnull @.str.291) #16
  br label %cond.end1338

cond.end1338:                                     ; preds = %cond.false1334, %sw.default.cond.end1338_crit_edge
  %cond1339 = phi i32 [ %call1337, %cond.false1334 ], [ 0, %sw.default.cond.end1338_crit_edge ]
  %add1340 = add i32 %cond1339, %add1306
  br label %if.end1341

if.end1341:                                       ; preds = %cond.end1338, %cond.end1328, %cond.end1317, %for.end1294.if.end1341_crit_edge
  %sz.23 = phi i32 [ %add1340, %cond.end1338 ], [ %add1330, %cond.end1328 ], [ %add1319, %cond.end1317 ], [ %sz.22.lcssa, %for.end1294.if.end1341_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.23, i32 %maxlen)
  %cmp1342.not = icmp ult i32 %sz.23, %maxlen
  br i1 %cmp1342.not, label %cond.false1345, label %if.end1341.cleanup_crit_edge

if.end1341.cleanup_crit_edge:                     ; preds = %if.end1341
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false1345:                                   ; preds = %if.end1341
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1346 = getelementptr i8, ptr %result, i32 %sz.23
  %sub1347 = sub i32 %maxlen, %sz.23
  %call1348 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1346, i32 noundef %sub1347, ptr noundef nonnull @.str.292) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.false1345, %if.end1341.cleanup_crit_edge, %get_raid_type_by_ll.exit1966.cleanup_crit_edge, %if.end.i1964.cleanup_crit_edge, %cond.end1198.cleanup_crit_edge, %cond.end1177.cleanup_crit_edge, %cond.end96, %cond.end82.cleanup_crit_edge, %get_raid_type_by_ll.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  %recovery.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10
  %pers = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pers, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sync_request = getelementptr inbounds %struct.md_personality, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sync_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_request, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %7, ptr noundef nonnull @.str.296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %recovery = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 9, ptr noundef %recovery) #16
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %recovery) #16
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %8 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %argv, align 4
  %call8 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.301)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.if.then14_crit_edge, label %lor.lhs.false10

if.end6.if.then14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

lor.lhs.false10:                                  ; preds = %if.end6
  %call12 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.296)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false10.if.then14_crit_edge, label %if.else19

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %if.end6.if.then14_crit_edge
  %sync_thread = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 41
  %10 = ptrtoint ptr %sync_thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sync_thread, align 8
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.then14.if.end55_crit_edge, label %if.then16

if.then14.if.end55_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %recovery17 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  tail call void @_set_bit(i32 noundef 3, ptr noundef %recovery17) #16
  tail call void @md_reap_sync_thread(ptr noundef %md) #16
  br label %if.end55

if.else19:                                        ; preds = %lor.lhs.false10
  %recovery20 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  %12 = ptrtoint ptr %recovery20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recovery20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recovery.addr.i)
  %14 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %recovery.addr.i, align 4
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0..i = load volatile i32, ptr %recovery.addr.i, align 4
  %15 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0..i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else19.decipher_sync_action.exit.thread_crit_edge

if.else19.decipher_sync_action.exit.thread_crit_edge: ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit.thread

if.end.i:                                         ; preds = %if.else19
  %16 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.49.i = load volatile i32, ptr %recovery.addr.i, align 4
  %17 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.49.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.if.else23_crit_edge

if.end.i.if.else23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else23

land.lhs.true.i:                                  ; preds = %if.end.i
  %18 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.50.i = load volatile i32, ptr %recovery.addr.i, align 4
  %and1.i36.i = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.50.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i36.i)
  %tobool4.not.i = icmp eq i32 %and1.i36.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then9.i_crit_edge

land.lhs.true.i.if.then9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %ro.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %19 = ptrtoint ptr %ro.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ro.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i = icmp eq i32 %20, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %lor.lhs.false.i.if.else23_crit_edge

lor.lhs.false.i.if.else23_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else23

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.51.i = load volatile i32, ptr %recovery.addr.i, align 4
  %22 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.51.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not.i = icmp eq i32 %22, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.if.else23_crit_edge, label %land.lhs.true6.i.if.then9.i_crit_edge

land.lhs.true6.i.if.then9.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

land.lhs.true6.i.if.else23_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else23

if.then9.i:                                       ; preds = %land.lhs.true6.i.if.then9.i_crit_edge, %land.lhs.true.i.if.then9.i_crit_edge
  %23 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.52.i = load volatile i32, ptr %recovery.addr.i, align 4
  %24 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.52.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not.i = icmp eq i32 %24, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then9.i.decipher_sync_action.exit.thread_crit_edge

if.then9.i.decipher_sync_action.exit.thread_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit.thread

if.end13.i:                                       ; preds = %if.then9.i
  %25 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.53.i = load volatile i32, ptr %recovery.addr.i, align 4
  %26 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.53.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool15.not.i = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i = load volatile i32, ptr %recovery.addr.i, align 4
  br i1 %tobool15.not.i, label %if.end25.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %28 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not.i = icmp eq i32 %28, 0
  br i1 %tobool18.not.i, label %if.then16.i.decipher_sync_action.exit.thread_crit_edge, label %if.end20.i

if.then16.i.decipher_sync_action.exit.thread_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit.thread

if.end20.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %recovery.addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.55.i = load volatile i32, ptr %recovery.addr.i, align 4
  br label %decipher_sync_action.exit.thread

if.end25.i:                                       ; preds = %if.end13.i
  %30 = and i32 %recovery.addr.i.0.recovery.addr.i.0.recovery.addr.0.recovery.addr.0.56.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool27.not.i = icmp eq i32 %30, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.decipher_sync_action.exit.thread_crit_edge

if.end25.i.decipher_sync_action.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit.thread

if.end29.i:                                       ; preds = %if.end25.i
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 34
  %31 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %32)
  %cmp.not.i = icmp eq i64 %32, -1
  br i1 %cmp.not.i, label %if.end29.i.if.else23_crit_edge, label %if.end29.i.decipher_sync_action.exit.thread_crit_edge

if.end29.i.decipher_sync_action.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decipher_sync_action.exit.thread

if.end29.i.if.else23_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else23

decipher_sync_action.exit.thread:                 ; preds = %if.end29.i.decipher_sync_action.exit.thread_crit_edge, %if.end25.i.decipher_sync_action.exit.thread_crit_edge, %if.end20.i, %if.then16.i.decipher_sync_action.exit.thread_crit_edge, %if.then9.i.decipher_sync_action.exit.thread_crit_edge, %if.else19.decipher_sync_action.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recovery.addr.i)
  br label %cleanup

if.else23:                                        ; preds = %if.end29.i.if.else23_crit_edge, %land.lhs.true6.i.if.else23_crit_edge, %lor.lhs.false.i.if.else23_crit_edge, %if.end.i.if.else23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recovery.addr.i)
  %call25 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.298)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else23.if.end55_crit_edge, label %if.else28

if.else23.if.end55_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.else28:                                        ; preds = %if.else23
  %call30 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %recovery20) #16
  br label %if.end55

if.else34:                                        ; preds = %if.else28
  %call36 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.274)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else42

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 7, ptr noundef %recovery20) #16
  tail call void @_set_bit(i32 noundef 6, ptr noundef %recovery20) #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %recovery20) #16
  br label %if.end55

if.else42:                                        ; preds = %if.else34
  %call44 = tail call i32 @strcasecmp(ptr noundef %9, ptr noundef nonnull @.str.299)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else42.cleanup_crit_edge

if.else42.cleanup_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %recovery20) #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %recovery20) #16
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.then38, %if.then32, %if.else23.if.end55_crit_edge, %if.then16, %if.then14.if.end55_crit_edge
  %ro = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 9
  %33 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ro, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp56 = icmp eq i32 %34, 2
  br i1 %cmp56, label %if.then57, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then57:                                        ; preds = %if.end55
  %35 = ptrtoint ptr %ro to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ro, align 8
  %suspended = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 7
  %36 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool59.not = icmp eq i32 %37, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then57.if.end65_crit_edge

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

land.lhs.true:                                    ; preds = %if.then57
  %sync_thread60 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 41
  %38 = ptrtoint ptr %sync_thread60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sync_thread60, align 8
  %tobool61.not = icmp eq ptr %39, null
  br i1 %tobool61.not, label %land.lhs.true.if.end65_crit_edge, label %if.then62

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @md_wakeup_thread(ptr noundef nonnull %39) #16
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true.if.end65_crit_edge, %if.then57.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  %recovery66 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 56
  tail call void @_set_bit(i32 noundef 5, ptr noundef %recovery66) #16
  %suspended67 = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 7
  %40 = ptrtoint ptr %suspended67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %suspended67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool68.not = icmp eq i32 %41, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true69:                                  ; preds = %if.end65
  %thread = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 40
  %42 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %thread, align 4
  %tobool70.not = icmp eq ptr %43, null
  br i1 %tobool70.not, label %land.lhs.true69.cleanup_crit_edge, label %if.then71

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @md_wakeup_thread(ptr noundef nonnull %43) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %land.lhs.true69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.else42.cleanup_crit_edge, %decipher_sync_action.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else42.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %land.lhs.true69.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ -16, %decipher_sync_action.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %dev_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 28
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.014, i32 %3)
  %cmp = icmp ult i32 %i.014, %3
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %data_dev = getelementptr %struct.raid_set, ptr %1, i32 0, i32 15, i32 %i.014, i32 1
  %4 = ptrtoint ptr %data_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_dev, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dev_sectors, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %7, ptr noundef %data) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %r.1 = phi i32 [ %call, %if.then ], [ 0, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.014, 1
  %tobool.not = icmp eq i32 %r.1, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %r.0.lcssa = phi i32 [ %r.1, %for.inc.for.end_crit_edge ], [ 0, %land.rhs.for.end_crit_edge ]
  ret i32 %r.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 20
  %2 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_sectors, align 8
  %conv.i = shl i32 %3, 9
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef %conv.i) #16
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 10, i32 26
  %4 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disks.i, align 8
  %raid_type.i = getelementptr inbounds %struct.raid_set, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %raid_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raid_type.i, align 8
  %parity_devs.i = getelementptr inbounds %struct.raid_type, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %parity_devs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parity_devs.i, align 4
  %sub.i = sub i32 %5, %9
  %mul = mul i32 %sub.i, %conv.i
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef %mul) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_consume_args(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_raid_params(ptr noundef %rs, ptr noundef %as, i32 noundef %num_raid_params) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #16
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !627
  %raid_type = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %1 = ptrtoint ptr %raid_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %raid_type, align 8
  %call = tail call ptr @dm_shift_arg(ptr noundef %as) #16
  %dec = add i32 %num_raid_params, -1
  %call1 = call i32 @kstrtoint(ptr noundef %call, i32 noundef 10, ptr noundef nonnull %value) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.59, ptr %error, align 8
  br label %cleanup549

if.end:                                           ; preds = %entry
  %level.i = getelementptr inbounds %struct.raid_type, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then3.if.end6_crit_edge, label %do.end

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #19
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then3.if.end6_crit_edge
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %11 = call i32 @llvm.ctpop.i32(i32 %9) #16, !range !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rs, align 8
  %error10 = getelementptr inbounds %struct.dm_target, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %error10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.63, ptr %error10, align 8
  br label %cleanup549

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp12 = icmp slt i32 %9, 8
  br i1 %cmp12, label %if.then13, label %if.else11.if.end18_crit_edge

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rs, align 8
  %error15 = getelementptr inbounds %struct.dm_target, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.64, ptr %error15, align 8
  br label %cleanup549

if.end18:                                         ; preds = %if.else11.if.end18_crit_edge, %if.end6
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %md = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10
  %chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %21 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %chunk_sectors, align 8
  %new_chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %22 = ptrtoint ptr %new_chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %new_chunk_sectors, align 4
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %23 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp201030.not = icmp eq i32 %24, 0
  br i1 %cmp201030.not, label %if.end18.for.cond24.preheader_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.cond24.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.body.for.cond24.preheader_crit_edge, %if.end18.for.cond24.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp251032.not = icmp eq i32 %dec, 0
  br i1 %cmp251032.not, label %for.cond24.preheader.for.end432_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.for.end432_crit_edge:        ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end432

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %ctr_flags397 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %raid_disks405 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %requested_bitmap_chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 9
  %sync_speed_max = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 53
  %sync_speed_min = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 52
  %stripe_cache_entries = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 1
  %minimal_devs = getelementptr inbounds %struct.raid_type, ptr %2, i32 0, i32 3
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %data_offset = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %daemon_sleep = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 86, i32 7
  %max_write_behind = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 86, i32 8
  %rebuild_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 4
  %dev195 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 15
  %mode169 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 2
  %journal_dev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14
  %rdev125 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1
  %mddev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1, i32 2
  %bdev130 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1, i32 5
  %sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1, i32 1
  %flags140 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1, i32 16
  br label %for.body26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.01031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %flags = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.01031, i32 2, i32 16
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #16
  %25 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.01031, i32 2, i32 22
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %25, align 8
  %inc = add nuw i32 %i.01031, 1
  %27 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %raid_disks, align 8
  %cmp20 = icmp ult i32 %inc, %28
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.for.cond24.preheader_crit_edge

for.body.for.cond24.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond24.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body26:                                       ; preds = %for.inc430.for.body26_crit_edge, %for.body26.lr.ph
  %raid10_format.01037 = phi i32 [ 0, %for.body26.lr.ph ], [ %raid10_format.1, %for.inc430.for.body26_crit_edge ]
  %region_size.01036 = phi i32 [ 0, %for.body26.lr.ph ], [ %region_size.1, %for.inc430.for.body26_crit_edge ]
  %write_mostly.01035 = phi i32 [ 0, %for.body26.lr.ph ], [ %write_mostly.1, %for.inc430.for.body26_crit_edge ]
  %i.11034 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc431, %for.inc430.for.body26_crit_edge ]
  %raid10_copies.01033 = phi i32 [ 2, %for.body26.lr.ph ], [ %raid10_copies.1, %for.inc430.for.body26_crit_edge ]
  %call27 = call ptr @dm_shift_arg(ptr noundef %as) #16
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rs, align 8
  %error31 = getelementptr inbounds %struct.dm_target, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %error31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.65, ptr %error31, align 8
  br label %cleanup549

if.end32:                                         ; preds = %for.body26
  %call34 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.119)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end32
  %call37 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.for.inc430_crit_edge, label %if.then39

if.then36.for.inc430_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rs, align 8
  %error41 = getelementptr inbounds %struct.dm_target, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %error41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.66, ptr %error41, align 8
  br label %cleanup549

if.end43:                                         ; preds = %if.end32
  %call45 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end43
  %call49 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.for.inc430_crit_edge, label %if.then51

if.then47.for.inc430_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rs, align 8
  %error53 = getelementptr inbounds %struct.dm_target, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %error53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.67, ptr %error53, align 8
  br label %cleanup549

if.end55:                                         ; preds = %if.end43
  %call57 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end67

if.then59:                                        ; preds = %if.end55
  %call61 = call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.for.inc430_crit_edge, label %if.then63

if.then59.for.inc430_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rs, align 8
  %error65 = getelementptr inbounds %struct.dm_target, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %error65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.68, ptr %error65, align 8
  br label %cleanup549

if.end67:                                         ; preds = %if.end55
  %call68 = call ptr @dm_shift_arg(ptr noundef %as) #16
  %inc69 = add nuw i32 %i.11034, 1
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rs, align 8
  %error73 = getelementptr inbounds %struct.dm_target, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %error73 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.69, ptr %error73, align 8
  br label %cleanup549

if.end74:                                         ; preds = %if.end67
  %call76 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end97

if.then78:                                        ; preds = %if.end74
  %call80 = call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rs, align 8
  %error84 = getelementptr inbounds %struct.dm_target, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %error84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.70, ptr %error84, align 8
  br label %cleanup549

if.end85:                                         ; preds = %if.then78
  %47 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp.i768 = icmp eq i32 %48, 10
  br i1 %cmp.i768, label %if.end90, label %if.then87

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rs, align 8
  %error89 = getelementptr inbounds %struct.dm_target, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %error89 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.71, ptr %error89, align 8
  br label %cleanup549

if.end90:                                         ; preds = %if.end85
  %call.i = call i32 @strcasecmp(ptr noundef nonnull %call68, ptr noundef nonnull @.str.135) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end90.for.inc430_crit_edge, label %if.else.i

if.end90.for.inc430_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.else.i:                                        ; preds = %if.end90
  %call1.i = call i32 @strcasecmp(ptr noundef nonnull %call68, ptr noundef nonnull @.str.136) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.for.inc430_crit_edge, label %if.else4.i

if.else.i.for.inc430_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.else4.i:                                       ; preds = %if.else.i
  %call5.i = call i32 @strcasecmp(ptr noundef nonnull %call68, ptr noundef nonnull @.str.137) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.else4.i.for.inc430_crit_edge, label %if.then93

if.else4.i.for.inc430_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.then93:                                        ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rs, align 8
  %error95 = getelementptr inbounds %struct.dm_target, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %error95 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.72, ptr %error95, align 8
  br label %cleanup549

if.end97:                                         ; preds = %if.end74
  %call99 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end142

if.then101:                                       ; preds = %if.end97
  %call103 = call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end108, label %if.then105

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rs, align 8
  %error107 = getelementptr inbounds %struct.dm_target, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %error107 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.73, ptr %error107, align 8
  br label %cleanup549

if.end108:                                        ; preds = %if.then101
  %58 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %level.i, align 4
  %60 = add i32 %59, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %61 = icmp ult i32 %60, 3
  %62 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rs, align 8
  br i1 %61, label %if.end113, label %if.then110

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  %error112 = getelementptr inbounds %struct.dm_target, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %error112 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.74, ptr %error112, align 8
  br label %cleanup549

if.end113:                                        ; preds = %if.end108
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %63, align 8
  %call116 = call i32 @dm_table_get_mode(ptr noundef %66) #16
  %call118 = call i32 @dm_get_device(ptr noundef %63, ptr noundef nonnull %call68, i32 noundef %call116, ptr noundef %journal_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end123, label %if.then120

if.then120:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rs, align 8
  %error122 = getelementptr inbounds %struct.dm_target, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %error122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.75, ptr %error122, align 8
  br label %cleanup549

if.end123:                                        ; preds = %if.end113
  %call126 = call i32 @md_rdev_init(ptr noundef %rdev125) #16
  %70 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %md, ptr %mddev, align 8
  %71 = ptrtoint ptr %journal_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %journal_dev, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %bdev130 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %bdev130, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 1
  %76 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %bd_nr_sectors.i, align 8
  %78 = ptrtoint ptr %sectors to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %77)
  %cmp134 = icmp ult i64 %77, 8192
  br i1 %cmp134, label %if.then135, label %cleanup

if.then135:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rs, align 8
  %error137 = getelementptr inbounds %struct.dm_target, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %error137 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.76, ptr %error137, align 8
  br label %cleanup549

cleanup:                                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %mode169 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %mode169, align 8
  call void @_set_bit(i32 noundef 12, ptr noundef %flags140) #16
  br label %for.inc430

if.end142:                                        ; preds = %if.end97
  %call144 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then146, label %if.end172

if.then146:                                       ; preds = %if.end142
  %83 = ptrtoint ptr %ctr_flags397 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %ctr_flags397, align 4
  %85 = and i32 %84, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool150.not = icmp eq i32 %85, 0
  br i1 %tobool150.not, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rs, align 8
  %error153 = getelementptr inbounds %struct.dm_target, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %error153 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.77, ptr %error153, align 8
  br label %cleanup549

if.end154:                                        ; preds = %if.then146
  %call156 = call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end161, label %if.then158

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rs, align 8
  %error160 = getelementptr inbounds %struct.dm_target, ptr %90, i32 0, i32 12
  %91 = ptrtoint ptr %error160 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.78, ptr %error160, align 8
  br label %cleanup549

if.end161:                                        ; preds = %if.end154
  %call.i772 = call i32 @strcasecmp(ptr noundef nonnull %call68, ptr noundef nonnull @.str.139) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i772)
  %tobool1.not.i = icmp eq i32 %call.i772, 0
  br i1 %tobool1.not.i, label %if.end161.dm_raid_journal_mode_to_md.exit_crit_edge, label %while.cond.1.i

if.end161.dm_raid_journal_mode_to_md.exit_crit_edge: ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_raid_journal_mode_to_md.exit

while.cond.1.i:                                   ; preds = %if.end161
  %call.1.i = call i32 @strcasecmp(ptr noundef nonnull %call68, ptr noundef nonnull @.str.138) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool1.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool1.not.1.i, label %while.cond.1.i.dm_raid_journal_mode_to_md.exit_crit_edge, label %while.cond.1.i.if.then164_crit_edge

while.cond.1.i.if.then164_crit_edge:              ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then164

while.cond.1.i.dm_raid_journal_mode_to_md.exit_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_raid_journal_mode_to_md.exit

dm_raid_journal_mode_to_md.exit:                  ; preds = %while.cond.1.i.dm_raid_journal_mode_to_md.exit_crit_edge, %if.end161.dm_raid_journal_mode_to_md.exit_crit_edge
  %dec.lcssa.i = phi i32 [ 1, %if.end161.dm_raid_journal_mode_to_md.exit_crit_edge ], [ 0, %while.cond.1.i.dm_raid_journal_mode_to_md.exit_crit_edge ]
  %arrayidx.i = getelementptr [2 x %struct.anon.83], ptr @_raid456_journal_mode, i32 0, i32 %dec.lcssa.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp163 = icmp slt i32 %93, 0
  br i1 %cmp163, label %dm_raid_journal_mode_to_md.exit.if.then164_crit_edge, label %cleanup170

dm_raid_journal_mode_to_md.exit.if.then164_crit_edge: ; preds = %dm_raid_journal_mode_to_md.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then164

if.then164:                                       ; preds = %dm_raid_journal_mode_to_md.exit.if.then164_crit_edge, %while.cond.1.i.if.then164_crit_edge
  %retval.0.i773820 = phi i32 [ %93, %dm_raid_journal_mode_to_md.exit.if.then164_crit_edge ], [ -22, %while.cond.1.i.if.then164_crit_edge ]
  %94 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rs, align 8
  %error166 = getelementptr inbounds %struct.dm_target, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %error166 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.79, ptr %error166, align 8
  br label %cleanup549

cleanup170:                                       ; preds = %dm_raid_journal_mode_to_md.exit
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %mode169 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %93, ptr %mode169, align 8
  br label %for.inc430

if.end172:                                        ; preds = %if.end142
  %call173 = call i32 @kstrtoint(ptr noundef nonnull %call68, i32 noundef 10, ptr noundef nonnull %value) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rs, align 8
  %error177 = getelementptr inbounds %struct.dm_target, ptr %99, i32 0, i32 12
  %100 = ptrtoint ptr %error177 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.80, ptr %error177, align 8
  br label %cleanup549

if.end178:                                        ; preds = %if.end172
  %call180 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.else203

if.then182:                                       ; preds = %if.end178
  %101 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %value, align 4
  %103 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %raid_disks, align 8
  %sub = add i32 %104, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp.not.i776 = icmp sgt i32 %102, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %sub)
  %cmp1.i777 = icmp sle i32 %102, %sub
  %spec.select.i = and i1 %cmp.not.i776, %cmp1.i777
  br i1 %spec.select.i, label %if.end188, label %if.then185

if.then185:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #18
  %105 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rs, align 8
  %error187 = getelementptr inbounds %struct.dm_target, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %error187 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.81, ptr %error187, align 8
  br label %cleanup549

if.end188:                                        ; preds = %if.then182
  %call189 = call i32 @_test_and_set_bit(i32 noundef %102, ptr noundef %rebuild_disks) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end194, label %if.then191

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #18
  %108 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rs, align 8
  %error193 = getelementptr inbounds %struct.dm_target, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %error193 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.82, ptr %error193, align 8
  br label %cleanup549

if.end194:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #18
  %111 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %value, align 4
  %flags198 = getelementptr %struct.raid_dev, ptr %dev195, i32 %112, i32 2, i32 16
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags198) #16
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags198) #16
  %113 = getelementptr %struct.raid_dev, ptr %dev195, i32 %112, i32 2, i32 22
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 0, ptr %113, align 8
  call void @_set_bit(i32 noundef 2, ptr noundef %ctr_flags397) #16
  br label %for.inc430

if.else203:                                       ; preds = %if.end178
  %call205 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.125)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then207, label %if.else227

if.then207:                                       ; preds = %if.else203
  %115 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i781 = icmp eq i32 %116, 1
  br i1 %cmp.i781, label %if.end212, label %if.then209

if.then209:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rs, align 8
  %error211 = getelementptr inbounds %struct.dm_target, ptr %118, i32 0, i32 12
  %119 = ptrtoint ptr %error211 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.83, ptr %error211, align 8
  br label %cleanup549

if.end212:                                        ; preds = %if.then207
  %120 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %value, align 4
  %122 = ptrtoint ptr %raid_disks405 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %raid_disks405, align 8
  %sub215 = add i32 %123, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.not.i782 = icmp sgt i32 %121, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %sub215)
  %cmp1.i783 = icmp sle i32 %121, %sub215
  %spec.select.i784 = and i1 %cmp.not.i782, %cmp1.i783
  br i1 %spec.select.i784, label %if.end220, label %if.then217

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rs, align 8
  %error219 = getelementptr inbounds %struct.dm_target, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %error219 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.84, ptr %error219, align 8
  br label %cleanup549

if.end220:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #18
  %inc221 = add i32 %write_mostly.01035, 1
  %flags225 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %121, i32 2, i32 16
  call void @_set_bit(i32 noundef 3, ptr noundef %flags225) #16
  call void @_set_bit(i32 noundef 7, ptr noundef %ctr_flags397) #16
  br label %for.inc430

if.else227:                                       ; preds = %if.else203
  %call229 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.124)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then231, label %if.else252

if.then231:                                       ; preds = %if.else227
  %127 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.i788 = icmp eq i32 %128, 1
  br i1 %cmp.i788, label %if.end236, label %if.then233

if.then233:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #18
  %129 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rs, align 8
  %error235 = getelementptr inbounds %struct.dm_target, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %error235 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @.str.85, ptr %error235, align 8
  br label %cleanup549

if.end236:                                        ; preds = %if.then231
  %call238 = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end243, label %if.then240

if.then240:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #18
  %132 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rs, align 8
  %error242 = getelementptr inbounds %struct.dm_target, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %error242 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.86, ptr %error242, align 8
  br label %cleanup549

if.end243:                                        ; preds = %if.end236
  %135 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %136)
  %137 = icmp ugt i32 %136, 32767
  br i1 %137, label %if.then246, label %if.end249

if.then246:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  %138 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rs, align 8
  %error248 = getelementptr inbounds %struct.dm_target, ptr %139, i32 0, i32 12
  %140 = ptrtoint ptr %error248 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.87, ptr %error248, align 8
  br label %cleanup549

if.end249:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  %div823824828 = lshr i32 %136, 1
  %141 = ptrtoint ptr %max_write_behind to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %div823824828, ptr %max_write_behind, align 8
  br label %for.inc430

if.else252:                                       ; preds = %if.else227
  %call254 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.then256, label %if.else271

if.then256:                                       ; preds = %if.else252
  %call258 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #18
  %142 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rs, align 8
  %error262 = getelementptr inbounds %struct.dm_target, ptr %143, i32 0, i32 12
  %144 = ptrtoint ptr %error262 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str.88, ptr %error262, align 8
  br label %cleanup549

if.end263:                                        ; preds = %if.then256
  %145 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp264 = icmp slt i32 %146, 0
  br i1 %cmp264, label %if.then265, label %if.end268

if.then265:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #18
  %147 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rs, align 8
  %error267 = getelementptr inbounds %struct.dm_target, ptr %148, i32 0, i32 12
  %149 = ptrtoint ptr %error267 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.89, ptr %error267, align 8
  br label %cleanup549

if.end268:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #18
  %150 = ptrtoint ptr %daemon_sleep to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %146, ptr %daemon_sleep, align 4
  br label %for.inc430

if.else271:                                       ; preds = %if.else252
  %call273 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.then275, label %if.else297

if.then275:                                       ; preds = %if.else271
  %call277 = call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end282, label %if.then279

if.then279:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #18
  %151 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rs, align 8
  %error281 = getelementptr inbounds %struct.dm_target, ptr %152, i32 0, i32 12
  %153 = ptrtoint ptr %error281 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.90, ptr %error281, align 8
  br label %cleanup549

if.end282:                                        ; preds = %if.then275
  %154 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp283 = icmp slt i32 %155, 0
  br i1 %cmp283, label %if.end282.if.then293_crit_edge, label %lor.lhs.false284

if.end282.if.then293_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then293

lor.lhs.false284:                                 ; preds = %if.end282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool285.not = icmp eq i32 %155, 0
  br i1 %tobool285.not, label %lor.lhs.false284.if.end296_crit_edge, label %land.lhs.true

lor.lhs.false284.if.end296_crit_edge:             ; preds = %lor.lhs.false284
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end296

land.lhs.true:                                    ; preds = %lor.lhs.false284
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %155)
  %cmp287 = icmp ugt i32 %155, 31
  %rem826 = and i32 %155, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem826)
  %tobool292.not = icmp eq i32 %rem826, 0
  %or.cond = and i1 %cmp287, %tobool292.not
  br i1 %or.cond, label %land.lhs.true.if.end296_crit_edge, label %land.lhs.true.if.then293_crit_edge

land.lhs.true.if.then293_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then293

land.lhs.true.if.end296_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end296

if.then293:                                       ; preds = %land.lhs.true.if.then293_crit_edge, %if.end282.if.then293_crit_edge
  %156 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rs, align 8
  %error295 = getelementptr inbounds %struct.dm_target, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %error295 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str.91, ptr %error295, align 8
  br label %cleanup549

if.end296:                                        ; preds = %land.lhs.true.if.end296_crit_edge, %lor.lhs.false284.if.end296_crit_edge
  %159 = ptrtoint ptr %data_offset to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %155, ptr %data_offset, align 8
  br label %for.inc430

if.else297:                                       ; preds = %if.else271
  %call299 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.then301, label %if.else319

if.then301:                                       ; preds = %if.else297
  %call303 = call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end308, label %if.then305

if.then305:                                       ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #18
  %160 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rs, align 8
  %error307 = getelementptr inbounds %struct.dm_target, ptr %161, i32 0, i32 12
  %162 = ptrtoint ptr %error307 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @.str.92, ptr %error307, align 8
  br label %cleanup549

if.end308:                                        ; preds = %if.then301
  %163 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %value, align 4
  %165 = call i32 @llvm.abs.i32(i32 %164, i1 false)
  %166 = ptrtoint ptr %minimal_devs to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %minimal_devs, align 4
  %sub313 = sub i32 253, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.not.i795 = icmp sgt i32 %165, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %sub313)
  %cmp1.i796 = icmp sle i32 %165, %sub313
  %spec.select.i797 = and i1 %cmp.not.i795, %cmp1.i796
  br i1 %spec.select.i797, label %if.end318, label %if.then315

if.then315:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #18
  %168 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rs, align 8
  %error317 = getelementptr inbounds %struct.dm_target, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %error317 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @.str.93, ptr %error317, align 8
  br label %cleanup549

if.end318:                                        ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #18
  %171 = ptrtoint ptr %delta_disks to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %164, ptr %delta_disks, align 4
  br label %for.inc430

if.else319:                                       ; preds = %if.else297
  %call321 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.then323, label %if.else342

if.then323:                                       ; preds = %if.else319
  %call325 = call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end330, label %if.then327

if.then327:                                       ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #18
  %172 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rs, align 8
  %error329 = getelementptr inbounds %struct.dm_target, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %error329 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.94, ptr %error329, align 8
  br label %cleanup549

if.end330:                                        ; preds = %if.then323
  %175 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %level.i, align 4
  %177 = add i32 %176, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %178 = icmp ult i32 %177, 3
  br i1 %178, label %if.end335, label %if.then332

if.then332:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #18
  %179 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rs, align 8
  %error334 = getelementptr inbounds %struct.dm_target, ptr %180, i32 0, i32 12
  %181 = ptrtoint ptr %error334 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.95, ptr %error334, align 8
  br label %cleanup549

if.end335:                                        ; preds = %if.end330
  %182 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp336 = icmp slt i32 %183, 0
  br i1 %cmp336, label %if.then338, label %if.end341

if.then338:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #18
  %184 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rs, align 8
  %error340 = getelementptr inbounds %struct.dm_target, ptr %185, i32 0, i32 12
  %186 = ptrtoint ptr %error340 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @.str.96, ptr %error340, align 8
  br label %cleanup549

if.end341:                                        ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #18
  %187 = ptrtoint ptr %stripe_cache_entries to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %183, ptr %stripe_cache_entries, align 4
  br label %for.inc430

if.else342:                                       ; preds = %if.else319
  %call344 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.then346, label %if.else361

if.then346:                                       ; preds = %if.else342
  %call348 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %if.end353, label %if.then350

if.then350:                                       ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #18
  %188 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rs, align 8
  %error352 = getelementptr inbounds %struct.dm_target, ptr %189, i32 0, i32 12
  %190 = ptrtoint ptr %error352 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.97, ptr %error352, align 8
  br label %cleanup549

if.end353:                                        ; preds = %if.then346
  %191 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp354 = icmp slt i32 %192, 0
  br i1 %cmp354, label %if.then356, label %if.end359

if.then356:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #18
  %193 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rs, align 8
  %error358 = getelementptr inbounds %struct.dm_target, ptr %194, i32 0, i32 12
  %195 = ptrtoint ptr %error358 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @.str.98, ptr %error358, align 8
  br label %cleanup549

if.end359:                                        ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #18
  %196 = ptrtoint ptr %sync_speed_min to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %192, ptr %sync_speed_min, align 8
  br label %for.inc430

if.else361:                                       ; preds = %if.else342
  %call363 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.123)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %tobool364.not = icmp eq i32 %call363, 0
  br i1 %tobool364.not, label %if.then365, label %if.else380

if.then365:                                       ; preds = %if.else361
  %call367 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.end372, label %if.then369

if.then369:                                       ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #18
  %197 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rs, align 8
  %error371 = getelementptr inbounds %struct.dm_target, ptr %198, i32 0, i32 12
  %199 = ptrtoint ptr %error371 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @.str.99, ptr %error371, align 8
  br label %cleanup549

if.end372:                                        ; preds = %if.then365
  %200 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp373 = icmp slt i32 %201, 0
  br i1 %cmp373, label %if.then375, label %if.end378

if.then375:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #18
  %202 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rs, align 8
  %error377 = getelementptr inbounds %struct.dm_target, ptr %203, i32 0, i32 12
  %204 = ptrtoint ptr %error377 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @.str.100, ptr %error377, align 8
  br label %cleanup549

if.end378:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #18
  %205 = ptrtoint ptr %sync_speed_max to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %201, ptr %sync_speed_max, align 4
  br label %for.inc430

if.else380:                                       ; preds = %if.else361
  %call382 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.then384, label %if.else392

if.then384:                                       ; preds = %if.else380
  %call386 = call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %if.end391, label %if.then388

if.then388:                                       ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #18
  %206 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rs, align 8
  %error390 = getelementptr inbounds %struct.dm_target, ptr %207, i32 0, i32 12
  %208 = ptrtoint ptr %error390 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @.str.101, ptr %error390, align 8
  br label %cleanup549

if.end391:                                        ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #18
  %209 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %value, align 4
  %211 = ptrtoint ptr %requested_bitmap_chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %requested_bitmap_chunk_sectors, align 8
  br label %for.inc430

if.else392:                                       ; preds = %if.else380
  %call394 = call i32 @strcasecmp(ptr noundef nonnull %call27, ptr noundef nonnull @.str.128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.then396, label %do.end414

if.then396:                                       ; preds = %if.else392
  %call398 = call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %ctr_flags397) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.end403, label %if.then400

if.then400:                                       ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #18
  %212 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rs, align 8
  %error402 = getelementptr inbounds %struct.dm_target, ptr %213, i32 0, i32 12
  %214 = ptrtoint ptr %error402 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @.str.102, ptr %error402, align 8
  br label %cleanup549

if.end403:                                        ; preds = %if.then396
  %215 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %value, align 4
  %217 = ptrtoint ptr %raid_disks405 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %raid_disks405, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %216)
  %cmp.not.i809 = icmp sgt i32 %216, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp1.i810 = icmp sle i32 %216, %218
  %spec.select.i811 = and i1 %cmp.not.i809, %cmp1.i810
  br i1 %spec.select.i811, label %if.end403.for.inc430_crit_edge, label %if.then407

if.end403.for.inc430_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc430

if.then407:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #18
  %219 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rs, align 8
  %error409 = getelementptr inbounds %struct.dm_target, ptr %220, i32 0, i32 12
  %221 = ptrtoint ptr %error409 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @.str.103, ptr %error409, align 8
  br label %cleanup549

do.end414:                                        ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #18
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull %call27) #19
  %222 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rs, align 8
  %error418 = getelementptr inbounds %struct.dm_target, ptr %223, i32 0, i32 12
  %224 = ptrtoint ptr %error418 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @.str.107, ptr %error418, align 8
  br label %cleanup549

for.inc430:                                       ; preds = %if.end403.for.inc430_crit_edge, %if.end391, %if.end378, %if.end359, %if.end341, %if.end318, %if.end296, %if.end268, %if.end249, %if.end220, %if.end194, %cleanup170, %cleanup, %if.else4.i.for.inc430_crit_edge, %if.else.i.for.inc430_crit_edge, %if.end90.for.inc430_crit_edge, %if.then59.for.inc430_crit_edge, %if.then47.for.inc430_crit_edge, %if.then36.for.inc430_crit_edge
  %raid10_copies.1 = phi i32 [ %raid10_copies.01033, %if.end391 ], [ %raid10_copies.01033, %if.end378 ], [ %raid10_copies.01033, %if.end359 ], [ %raid10_copies.01033, %if.end341 ], [ %raid10_copies.01033, %if.end318 ], [ %raid10_copies.01033, %if.end296 ], [ %raid10_copies.01033, %if.end268 ], [ %raid10_copies.01033, %if.end249 ], [ %raid10_copies.01033, %if.end220 ], [ %raid10_copies.01033, %if.end194 ], [ %raid10_copies.01033, %cleanup170 ], [ %raid10_copies.01033, %cleanup ], [ %raid10_copies.01033, %if.then59.for.inc430_crit_edge ], [ %raid10_copies.01033, %if.then47.for.inc430_crit_edge ], [ %raid10_copies.01033, %if.then36.for.inc430_crit_edge ], [ %216, %if.end403.for.inc430_crit_edge ], [ %raid10_copies.01033, %if.end90.for.inc430_crit_edge ], [ %raid10_copies.01033, %if.else.i.for.inc430_crit_edge ], [ %raid10_copies.01033, %if.else4.i.for.inc430_crit_edge ]
  %i.2 = phi i32 [ %inc69, %if.end391 ], [ %inc69, %if.end378 ], [ %inc69, %if.end359 ], [ %inc69, %if.end341 ], [ %inc69, %if.end318 ], [ %inc69, %if.end296 ], [ %inc69, %if.end268 ], [ %inc69, %if.end249 ], [ %inc69, %if.end220 ], [ %inc69, %if.end194 ], [ %inc69, %cleanup170 ], [ %inc69, %cleanup ], [ %i.11034, %if.then59.for.inc430_crit_edge ], [ %i.11034, %if.then47.for.inc430_crit_edge ], [ %i.11034, %if.then36.for.inc430_crit_edge ], [ %inc69, %if.end403.for.inc430_crit_edge ], [ %inc69, %if.end90.for.inc430_crit_edge ], [ %inc69, %if.else.i.for.inc430_crit_edge ], [ %inc69, %if.else4.i.for.inc430_crit_edge ]
  %write_mostly.1 = phi i32 [ %write_mostly.01035, %if.end391 ], [ %write_mostly.01035, %if.end378 ], [ %write_mostly.01035, %if.end359 ], [ %write_mostly.01035, %if.end341 ], [ %write_mostly.01035, %if.end318 ], [ %write_mostly.01035, %if.end296 ], [ %write_mostly.01035, %if.end268 ], [ %write_mostly.01035, %if.end249 ], [ %inc221, %if.end220 ], [ %write_mostly.01035, %if.end194 ], [ %write_mostly.01035, %cleanup170 ], [ %write_mostly.01035, %cleanup ], [ %write_mostly.01035, %if.then59.for.inc430_crit_edge ], [ %write_mostly.01035, %if.then47.for.inc430_crit_edge ], [ %write_mostly.01035, %if.then36.for.inc430_crit_edge ], [ %write_mostly.01035, %if.end403.for.inc430_crit_edge ], [ %write_mostly.01035, %if.end90.for.inc430_crit_edge ], [ %write_mostly.01035, %if.else.i.for.inc430_crit_edge ], [ %write_mostly.01035, %if.else4.i.for.inc430_crit_edge ]
  %region_size.1 = phi i32 [ %210, %if.end391 ], [ %region_size.01036, %if.end378 ], [ %region_size.01036, %if.end359 ], [ %region_size.01036, %if.end341 ], [ %region_size.01036, %if.end318 ], [ %region_size.01036, %if.end296 ], [ %region_size.01036, %if.end268 ], [ %region_size.01036, %if.end249 ], [ %region_size.01036, %if.end220 ], [ %region_size.01036, %if.end194 ], [ %region_size.01036, %cleanup170 ], [ %region_size.01036, %cleanup ], [ %region_size.01036, %if.then59.for.inc430_crit_edge ], [ %region_size.01036, %if.then47.for.inc430_crit_edge ], [ %region_size.01036, %if.then36.for.inc430_crit_edge ], [ %region_size.01036, %if.end403.for.inc430_crit_edge ], [ %region_size.01036, %if.end90.for.inc430_crit_edge ], [ %region_size.01036, %if.else.i.for.inc430_crit_edge ], [ %region_size.01036, %if.else4.i.for.inc430_crit_edge ]
  %raid10_format.1 = phi i32 [ %raid10_format.01037, %if.end391 ], [ %raid10_format.01037, %if.end378 ], [ %raid10_format.01037, %if.end359 ], [ %raid10_format.01037, %if.end341 ], [ %raid10_format.01037, %if.end318 ], [ %raid10_format.01037, %if.end296 ], [ %raid10_format.01037, %if.end268 ], [ %raid10_format.01037, %if.end249 ], [ %raid10_format.01037, %if.end220 ], [ %raid10_format.01037, %if.end194 ], [ %raid10_format.01037, %cleanup170 ], [ %raid10_format.01037, %cleanup ], [ %raid10_format.01037, %if.then59.for.inc430_crit_edge ], [ %raid10_format.01037, %if.then47.for.inc430_crit_edge ], [ %raid10_format.01037, %if.then36.for.inc430_crit_edge ], [ %raid10_format.01037, %if.end403.for.inc430_crit_edge ], [ 1, %if.end90.for.inc430_crit_edge ], [ 2, %if.else.i.for.inc430_crit_edge ], [ 3, %if.else4.i.for.inc430_crit_edge ]
  %inc431 = add i32 %i.2, 1
  %cmp25 = icmp ult i32 %inc431, %dec
  br i1 %cmp25, label %for.inc430.for.body26_crit_edge, label %for.inc430.for.end432_crit_edge

for.inc430.for.end432_crit_edge:                  ; preds = %for.inc430
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end432

for.inc430.for.body26_crit_edge:                  ; preds = %for.inc430
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body26

for.end432:                                       ; preds = %for.inc430.for.end432_crit_edge, %for.cond24.preheader.for.end432_crit_edge
  %raid10_copies.0.lcssa = phi i32 [ 2, %for.cond24.preheader.for.end432_crit_edge ], [ %raid10_copies.1, %for.inc430.for.end432_crit_edge ]
  %write_mostly.0.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end432_crit_edge ], [ %write_mostly.1, %for.inc430.for.end432_crit_edge ]
  %region_size.0.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end432_crit_edge ], [ %region_size.1, %for.inc430.for.end432_crit_edge ]
  %raid10_format.0.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end432_crit_edge ], [ %raid10_format.1, %for.inc430.for.end432_crit_edge ]
  %ctr_flags433 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %225 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %ctr_flags433, align 4
  %and1.i753 = and i32 %226, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i753)
  %tobool435.not = icmp eq i32 %and1.i753, 0
  br i1 %tobool435.not, label %for.end432.if.end443_crit_edge, label %land.lhs.true436

for.end432.if.end443_crit_edge:                   ; preds = %for.end432
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end443

land.lhs.true436:                                 ; preds = %for.end432
  %227 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %ctr_flags433, align 4
  %229 = and i32 %228, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool439.not = icmp eq i32 %229, 0
  br i1 %tobool439.not, label %land.lhs.true436.if.end443_crit_edge, label %if.then440

land.lhs.true436.if.end443_crit_edge:             ; preds = %land.lhs.true436
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end443

if.then440:                                       ; preds = %land.lhs.true436
  call void @__sanitizer_cov_trace_pc() #18
  %230 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rs, align 8
  %error442 = getelementptr inbounds %struct.dm_target, ptr %231, i32 0, i32 12
  %232 = ptrtoint ptr %error442 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @.str.108, ptr %error442, align 8
  br label %cleanup549

if.end443:                                        ; preds = %land.lhs.true436.if.end443_crit_edge, %for.end432.if.end443_crit_edge
  %233 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %ctr_flags433, align 4
  %235 = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool446.not = icmp eq i32 %235, 0
  br i1 %tobool446.not, label %if.end443.if.end458_crit_edge, label %land.lhs.true447

if.end443.if.end458_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end458

land.lhs.true447:                                 ; preds = %if.end443
  %236 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %ctr_flags433, align 4
  %and1.i758 = and i32 %237, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i758)
  %tobool450.not = icmp eq i32 %and1.i758, 0
  br i1 %tobool450.not, label %lor.lhs.false451, label %land.lhs.true447.if.then455_crit_edge

land.lhs.true447.if.then455_crit_edge:            ; preds = %land.lhs.true447
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then455

lor.lhs.false451:                                 ; preds = %land.lhs.true447
  %238 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %ctr_flags433, align 4
  %240 = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool454.not = icmp eq i32 %240, 0
  br i1 %tobool454.not, label %lor.lhs.false451.if.end458_crit_edge, label %lor.lhs.false451.if.then455_crit_edge

lor.lhs.false451.if.then455_crit_edge:            ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then455

lor.lhs.false451.if.end458_crit_edge:             ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end458

if.then455:                                       ; preds = %lor.lhs.false451.if.then455_crit_edge, %land.lhs.true447.if.then455_crit_edge
  %241 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rs, align 8
  %error457 = getelementptr inbounds %struct.dm_target, ptr %242, i32 0, i32 12
  %243 = ptrtoint ptr %error457 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @.str.109, ptr %error457, align 8
  br label %cleanup549

if.end458:                                        ; preds = %lor.lhs.false451.if.end458_crit_edge, %if.end443.if.end458_crit_edge
  %raid_disks460 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %244 = ptrtoint ptr %raid_disks460 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %raid_disks460, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %write_mostly.0.lcssa, i32 %245)
  %cmp461.not = icmp ult i32 %write_mostly.0.lcssa, %245
  br i1 %cmp461.not, label %if.end466, label %if.then463

if.then463:                                       ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #18
  %246 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %rs, align 8
  %error465 = getelementptr inbounds %struct.dm_target, ptr %247, i32 0, i32 12
  %248 = ptrtoint ptr %error465 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @.str.110, ptr %error465, align 8
  br label %cleanup549

if.end466:                                        ; preds = %if.end458
  %sync_speed_max468 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 53
  %249 = ptrtoint ptr %sync_speed_max468 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %sync_speed_max468, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool469.not = icmp eq i32 %250, 0
  br i1 %tobool469.not, label %if.end466.if.end480_crit_edge, label %land.lhs.true470

if.end466.if.end480_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end480

land.lhs.true470:                                 ; preds = %if.end466
  %sync_speed_min472 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 52
  %251 = ptrtoint ptr %sync_speed_min472 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %sync_speed_min472, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %250)
  %cmp475 = icmp sgt i32 %252, %250
  br i1 %cmp475, label %if.then477, label %land.lhs.true470.if.end480_crit_edge

land.lhs.true470.if.end480_crit_edge:             ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end480

if.then477:                                       ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #18
  %253 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rs, align 8
  %error479 = getelementptr inbounds %struct.dm_target, ptr %254, i32 0, i32 12
  %255 = ptrtoint ptr %error479 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @.str.111, ptr %error479, align 8
  br label %cleanup549

if.end480:                                        ; preds = %land.lhs.true470.if.end480_crit_edge, %if.end466.if.end480_crit_edge
  %call481 = call fastcc i32 @validate_region_size(ptr noundef %rs, i32 noundef %region_size.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %if.end484, label %if.end480.cleanup549_crit_edge

if.end480.cleanup549_crit_edge:                   ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup549

if.end484:                                        ; preds = %if.end480
  %256 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool487.not = icmp eq i32 %257, 0
  %conv491 = sext i32 %257 to i64
  %conv493 = zext i32 %region_size.0.lcssa to i64
  %max_io_len.0 = select i1 %tobool487.not, i64 %conv493, i64 %conv491
  %258 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rs, align 8
  %call496 = call i32 @dm_set_target_max_io_len(ptr noundef %259, i64 noundef %max_io_len.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call496)
  %tobool497.not = icmp eq i32 %call496, 0
  br i1 %tobool497.not, label %if.end499, label %if.end484.cleanup549_crit_edge

if.end484.cleanup549_crit_edge:                   ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup549

if.end499:                                        ; preds = %if.end484
  %260 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %261)
  %cmp.i813 = icmp eq i32 %261, 10
  br i1 %cmp.i813, label %if.then501, label %if.end499.if.end544_crit_edge

if.end499.if.end544_crit_edge:                    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end544

if.then501:                                       ; preds = %if.end499
  %262 = ptrtoint ptr %raid_disks460 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %raid_disks460, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %raid10_copies.0.lcssa, i32 %263)
  %cmp504 = icmp ugt i32 %raid10_copies.0.lcssa, %263
  br i1 %cmp504, label %if.then506, label %if.end509

if.then506:                                       ; preds = %if.then501
  call void @__sanitizer_cov_trace_pc() #18
  %264 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rs, align 8
  %error508 = getelementptr inbounds %struct.dm_target, ptr %265, i32 0, i32 12
  %266 = ptrtoint ptr %error508 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr @.str.112, ptr %error508, align 8
  br label %cleanup549

if.end509:                                        ; preds = %if.then501
  %call510 = call fastcc i32 @raid10_format_to_md_layout(ptr noundef %rs, i32 noundef %raid10_format.0.lcssa, i32 noundef %raid10_copies.0.lcssa)
  %new_layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %267 = ptrtoint ptr %new_layout to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call510, ptr %new_layout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call510)
  %cmp514 = icmp slt i32 %call510, 0
  br i1 %cmp514, label %if.then516, label %if.end521

if.then516:                                       ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #18
  %268 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rs, align 8
  %error518 = getelementptr inbounds %struct.dm_target, ptr %269, i32 0, i32 12
  %270 = ptrtoint ptr %error518 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @.str.113, ptr %error518, align 8
  %271 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %new_layout, align 8
  br label %cleanup549

if.end521:                                        ; preds = %if.end509
  %call524 = call fastcc ptr @get_raid_type_by_ll(i32 noundef 10, i32 noundef %call510)
  %tobool525.not = icmp eq ptr %call524, null
  br i1 %tobool525.not, label %if.then526, label %if.end529

if.then526:                                       ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #18
  %273 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rs, align 8
  %error528 = getelementptr inbounds %struct.dm_target, ptr %274, i32 0, i32 12
  %275 = ptrtoint ptr %error528 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr @.str.114, ptr %error528, align 8
  br label %cleanup549

if.end529:                                        ; preds = %if.end521
  %algorithm = getelementptr inbounds %struct.raid_type, ptr %call524, i32 0, i32 5
  %276 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %277)
  %switch = icmp ult i32 %277, 2
  br i1 %switch, label %land.lhs.true536, label %if.end529.if.end544_crit_edge

if.end529.if.end544_crit_edge:                    ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end544

land.lhs.true536:                                 ; preds = %if.end529
  %278 = ptrtoint ptr %ctr_flags433 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load volatile i32, ptr %ctr_flags433, align 4
  %280 = and i32 %279, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool539.not = icmp eq i32 %280, 0
  br i1 %tobool539.not, label %land.lhs.true536.if.end544_crit_edge, label %if.then540

land.lhs.true536.if.end544_crit_edge:             ; preds = %land.lhs.true536
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end544

if.then540:                                       ; preds = %land.lhs.true536
  call void @__sanitizer_cov_trace_pc() #18
  %281 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rs, align 8
  %error542 = getelementptr inbounds %struct.dm_target, ptr %282, i32 0, i32 12
  %283 = ptrtoint ptr %error542 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @.str.115, ptr %error542, align 8
  br label %cleanup549

if.end544:                                        ; preds = %land.lhs.true536.if.end544_crit_edge, %if.end529.if.end544_crit_edge, %if.end499.if.end544_crit_edge
  %raid10_copies545 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 8
  %284 = ptrtoint ptr %raid10_copies545 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %raid10_copies.0.lcssa, ptr %raid10_copies545, align 4
  %persistent = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 17
  %285 = ptrtoint ptr %persistent to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %persistent, align 4
  %external = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 18
  %286 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 1, ptr %external, align 8
  %call548 = call fastcc i32 @rs_check_for_valid_flags(ptr noundef %rs)
  br label %cleanup549

cleanup549:                                       ; preds = %if.end544, %if.then540, %if.then526, %if.then516, %if.then506, %if.end484.cleanup549_crit_edge, %if.end480.cleanup549_crit_edge, %if.then477, %if.then463, %if.then455, %if.then440, %do.end414, %if.then407, %if.then400, %if.then388, %if.then375, %if.then369, %if.then356, %if.then350, %if.then338, %if.then332, %if.then327, %if.then315, %if.then305, %if.then293, %if.then279, %if.then265, %if.then260, %if.then246, %if.then240, %if.then233, %if.then217, %if.then209, %if.then191, %if.then185, %if.then175, %if.then164, %if.then158, %if.then151, %if.then135, %if.then120, %if.then110, %if.then105, %if.then93, %if.then87, %if.then82, %if.then71, %if.then63, %if.then51, %if.then39, %if.then29, %if.then13, %if.then8, %if.then
  %retval.4 = phi i32 [ -22, %if.then ], [ -22, %if.then175 ], [ -22, %do.end414 ], [ -22, %if.then400 ], [ -22, %if.then407 ], [ -22, %if.then388 ], [ -22, %if.then369 ], [ -22, %if.then375 ], [ -22, %if.then350 ], [ -22, %if.then356 ], [ -22, %if.then327 ], [ -22, %if.then338 ], [ -22, %if.then332 ], [ -22, %if.then305 ], [ -22, %if.then315 ], [ -22, %if.then279 ], [ -22, %if.then293 ], [ -22, %if.then260 ], [ -22, %if.then265 ], [ -22, %if.then240 ], [ -22, %if.then246 ], [ -22, %if.then233 ], [ -22, %if.then217 ], [ -22, %if.then209 ], [ -22, %if.then191 ], [ -22, %if.then185 ], [ -22, %if.then82 ], [ -22, %if.then93 ], [ -22, %if.then87 ], [ -22, %if.then71 ], [ -22, %if.then63 ], [ -22, %if.then51 ], [ -22, %if.then39 ], [ -22, %if.then29 ], [ -22, %if.then440 ], [ -22, %if.then455 ], [ -22, %if.then463 ], [ -22, %if.then477 ], [ -22, %if.then506 ], [ %272, %if.then516 ], [ -22, %if.then540 ], [ %call548, %if.end544 ], [ -22, %if.then526 ], [ -22, %if.then13 ], [ -22, %if.then8 ], [ -22, %if.end480.cleanup549_crit_edge ], [ -22, %if.end484.cleanup549_crit_edge ], [ -22, %if.then105 ], [ -22, %if.then110 ], [ %call118, %if.then120 ], [ -28, %if.then135 ], [ -22, %if.then151 ], [ -22, %if.then158 ], [ %retval.0.i773820, %if.then164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #16
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_dev_params(ptr noundef %rs, ptr noundef %as) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_shift_arg(ptr noundef %as) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp240 = icmp sgt i32 %1, 0
  br i1 %cmp240, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %md = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10
  %disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %prev.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %metadata_available.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %metadata_available.2, %for.inc.for.body_crit_edge ]
  %rebuild.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %rebuild.1, %for.inc.for.body_crit_edge ]
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %inc119, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241
  %rdev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2
  %raid_disk = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 19
  %2 = ptrtoint ptr %raid_disk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.0241, ptr %raid_disk, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 8
  %data_dev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 1
  %4 = ptrtoint ptr %data_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data_dev, align 4
  %data_offset = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 10
  %mddev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 2
  %5 = call ptr @memset(ptr %data_offset, i32 0, i32 16)
  %6 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %md, ptr %mddev, align 8
  %call14 = tail call ptr @dm_shift_arg(ptr noundef %as) #16
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %call18 = tail call i32 @strcmp(ptr noundef nonnull %call14, ptr noundef nonnull dereferenceable(2) @.str.153) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end44_crit_edge, label %if.then20

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then20:                                        ; preds = %if.end17
  %7 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rs, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call22 = tail call i32 @dm_table_get_mode(ptr noundef %10) #16
  %call26 = tail call i32 @dm_get_device(ptr noundef %8, ptr noundef nonnull %call14, i32 noundef %call22, ptr noundef %arrayidx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.154, ptr %error, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.then20
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %sb_page = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 6
  %14 = ptrtoint ptr %sb_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38.i.i.i, ptr %sb_page, align 8
  %tobool39.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool39.not, label %if.then40, label %if.end30.if.end44_crit_edge

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rs, align 8
  %error42 = getelementptr inbounds %struct.dm_target, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %error42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.155, ptr %error42, align 8
  br label %cleanup

if.end44:                                         ; preds = %if.end30.if.end44_crit_edge, %if.end17.if.end44_crit_edge
  %call45 = tail call ptr @dm_shift_arg(ptr noundef %as) #16
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @strcmp(ptr noundef nonnull %call45, ptr noundef nonnull dereferenceable(2) @.str.153) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end73

if.then51:                                        ; preds = %if.end48
  %flags = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 16
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool56.not = icmp eq i32 %20, 0
  br i1 %tobool56.not, label %land.lhs.true, label %if.then51.if.end64_crit_edge

if.then51.if.end64_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

land.lhs.true:                                    ; preds = %if.then51
  %21 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 22
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool60.not = icmp eq i64 %23, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rs, align 8
  %error63 = getelementptr inbounds %struct.dm_target, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %error63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.156, ptr %error63, align 8
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %if.then51.if.end64_crit_edge
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 8
  %tobool68.not = icmp eq ptr %28, null
  br i1 %tobool68.not, label %if.end64.for.inc_crit_edge, label %if.then69

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rs, align 8
  %error71 = getelementptr inbounds %struct.dm_target, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %error71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.157, ptr %error71, align 8
  br label %cleanup

if.end73:                                         ; preds = %if.end48
  %32 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rs, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %call77 = tail call i32 @dm_table_get_mode(ptr noundef %35) #16
  %call81 = tail call i32 @dm_get_device(ptr noundef %33, ptr noundef nonnull %call45, i32 noundef %call77, ptr noundef %data_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end86, label %if.then83

if.then83:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rs, align 8
  %error85 = getelementptr inbounds %struct.dm_target, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %error85 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.158, ptr %error85, align 8
  br label %cleanup

if.end86:                                         ; preds = %if.end73
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 8
  %tobool90.not = icmp eq ptr %40, null
  br i1 %tobool90.not, label %if.end86.if.end98_crit_edge, label %if.then91

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %meta_bdev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 4
  %43 = ptrtoint ptr %meta_bdev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %meta_bdev, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.end86.if.end98_crit_edge
  %metadata_available.1 = phi i32 [ 1, %if.then91 ], [ %metadata_available.0247, %if.end86.if.end98_crit_edge ]
  %44 = ptrtoint ptr %data_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_dev, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %bdev106 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 5
  %48 = ptrtoint ptr %bdev106 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %bdev106, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rdev, ptr noundef %50, ptr noundef %disks) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end98.list_add_tail.exit_crit_edge

if.end98.list_add_tail.exit_crit_edge:            ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rdev, ptr %prev.i, align 4
  %52 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %disks, ptr %rdev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rdev, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %rdev, ptr %50, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end98.list_add_tail.exit_crit_edge
  %flags114 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0241, i32 2, i32 16
  %55 = ptrtoint ptr %flags114 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags114, align 4
  %57 = lshr i32 %56, 1
  %.lobit = and i32 %57, 1
  %58 = xor i32 %.lobit, 1
  %spec.select = add i32 %58, %rebuild.0246
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %if.end64.for.inc_crit_edge
  %rebuild.1 = phi i32 [ %rebuild.0246, %if.end64.for.inc_crit_edge ], [ %spec.select, %list_add_tail.exit ]
  %metadata_available.2 = phi i32 [ %metadata_available.0247, %if.end64.for.inc_crit_edge ], [ %metadata_available.1, %list_add_tail.exit ]
  %inc119 = add nuw nsw i32 %i.0241, 1
  %59 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %raid_disks, align 8
  %cmp = icmp slt i32 %inc119, %60
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rebuild.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %rebuild.1, %for.inc.for.end_crit_edge ]
  %metadata_available.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %metadata_available.2, %for.inc.for.end_crit_edge ]
  %journal_dev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14
  %61 = ptrtoint ptr %journal_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %journal_dev, align 8
  %tobool121.not = icmp eq ptr %62, null
  br i1 %tobool121.not, label %for.end.if.end128_crit_edge, label %if.then122

for.end.if.end128_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

if.then122:                                       ; preds = %for.end
  %rdev124 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1
  %disks127 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %prev.i222 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i222, align 4
  %call.i.i223 = tail call zeroext i1 @__list_add_valid(ptr noundef %rdev124, ptr noundef %64, ptr noundef %disks127) #16
  br i1 %call.i.i223, label %if.end.i.i225, label %if.then122.if.end128_crit_edge

if.then122.if.end128_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

if.end.i.i225:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rdev124, ptr %prev.i222, align 4
  %66 = ptrtoint ptr %rdev124 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %disks127, ptr %rdev124, align 4
  %prev3.i.i224 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i224 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i224, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %rdev124, ptr %64, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end.i.i225, %if.then122.if.end128_crit_edge, %for.end.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %metadata_available.0.lcssa)
  %tobool129.not = icmp eq i32 %metadata_available.0.lcssa, 0
  br i1 %tobool129.not, label %if.else, label %if.then130

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  %external = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 18
  %69 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %external, align 8
  %persistent = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 17
  %70 = ptrtoint ptr %persistent to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %persistent, align 4
  %major_version = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 14
  %71 = ptrtoint ptr %major_version to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %major_version, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rebuild.0.lcssa)
  %tobool134.not = icmp eq i32 %rebuild.0.lcssa, 0
  br i1 %tobool134.not, label %if.else.cleanup_crit_edge, label %land.lhs.true135

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true135:                                 ; preds = %if.else
  %recovery_cp = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %72 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %tobool137.not = icmp eq i64 %73, 0
  br i1 %tobool137.not, label %if.then138, label %land.lhs.true135.cleanup_crit_edge

land.lhs.true135.cleanup_crit_edge:               ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rs, align 8
  %error140 = getelementptr inbounds %struct.dm_target, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %error140 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.159, ptr %error140, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %land.lhs.true135.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then130, %if.then83, %if.then69, %if.then61, %if.end44.cleanup_crit_edge, %if.then40, %if.then28, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ %call81, %if.then83 ], [ -22, %if.then69 ], [ -22, %if.then61 ], [ -12, %if.then40 ], [ -22, %if.then138 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true135.cleanup_crit_edge ], [ 0, %if.then130 ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @super_sync(ptr noundef %mddev, ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %failed_devices = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %failed_devices) #16
  %0 = getelementptr inbounds [4 x i64], ptr %failed_devices, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i64], ptr %failed_devices, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i64], ptr %failed_devices, i32 0, i32 3
  %meta_bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 4
  %3 = ptrtoint ptr %meta_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %meta_bdev, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %sb_page = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 6
  %5 = ptrtoint ptr %sb_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_page, align 8
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %do.body6, label %do.end12, !prof !628

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-raid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2091, 0\0A.popsection", ""() #16, !srcloc !633
  unreachable

do.end12:                                         ; preds = %do.body
  %call = tail call ptr @page_address(ptr noundef nonnull %6) #16
  %failed_devices1.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %failed_devices1.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %failed_devices1.i, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #16
  %10 = ptrtoint ptr %failed_devices to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %failed_devices, align 8
  %11 = call ptr @memset(ptr %0, i32 0, i32 24)
  %compat_features.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %compat_features.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %compat_features.i, align 1
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end12.sb_retrieve_failed_devices.exit_crit_edge, label %while.body.preheader.i

do.end12.sb_retrieve_failed_devices.exit_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %sb_retrieve_failed_devices.exit

while.body.preheader.i:                           ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 2
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx3.i, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %2, align 8
  %arrayidx3.1.i = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 1
  %19 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx3.1.i, align 1
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %1, align 8
  %arrayidx3.2.i = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 0
  %23 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx3.2.i, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #16
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %0, align 8
  br label %sb_retrieve_failed_devices.exit

sb_retrieve_failed_devices.exit:                  ; preds = %while.body.preheader.i, %do.end12.sb_retrieve_failed_devices.exit_crit_edge
  %raid_disks = getelementptr i8, ptr %mddev, i32 -24
  %27 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp123.not = icmp eq i32 %28, 0
  br i1 %cmp123.not, label %sb_retrieve_failed_devices.exit.if.end26_crit_edge, label %for.body.lr.ph

sb_retrieve_failed_devices.exit.if.end26_crit_edge: ; preds = %sb_retrieve_failed_devices.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

for.body.lr.ph:                                   ; preds = %sb_retrieve_failed_devices.exit
  %dev = getelementptr i8, ptr %mddev, i32 3752
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %update_failed_devices.0.off0126.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  %i.0124.ph = phi i32 [ %inc128, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %for.body.lr.ph ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.0124 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.0124.ph, %for.body.outer ]
  %arrayidx = getelementptr [0 x %struct.raid_dev], ptr %dev, i32 0, i32 %i.0124
  %data_dev = getelementptr inbounds %struct.raid_dev, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %data_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data_dev, align 4
  %tobool14.not = icmp eq ptr %30, null
  br i1 %tobool14.not, label %for.body.for.inc.thread_crit_edge, label %lor.lhs.false

for.body.for.inc.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.thread

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.raid_dev, ptr %arrayidx, i32 0, i32 2, i32 16
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %for.inc, label %lor.lhs.false.for.inc.thread_crit_edge

lor.lhs.false.for.inc.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.thread

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.0124, 1
  %33 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %raid_disks, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.thread:                                   ; preds = %lor.lhs.false.for.inc.thread_crit_edge, %for.body.for.inc.thread_crit_edge
  call void @_set_bit(i32 noundef %i.0124, ptr noundef nonnull %failed_devices) #16
  %inc128 = add nuw i32 %i.0124, 1
  %35 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %raid_disks, align 8
  %cmp129 = icmp ult i32 %inc128, %36
  br i1 %cmp129, label %for.inc.thread.for.body.outer_crit_edge, label %for.inc.thread.if.then24_crit_edge

for.inc.thread.if.then24_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.outer

for.end:                                          ; preds = %for.inc
  br i1 %update_failed_devices.0.off0126.ph, label %for.end.if.then24_crit_edge, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then24:                                        ; preds = %for.end.if.then24_crit_edge, %for.inc.thread.if.then24_crit_edge
  %37 = ptrtoint ptr %failed_devices to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %failed_devices, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #16
  %40 = ptrtoint ptr %failed_devices1.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %failed_devices1.i, align 1
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %2, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %42) #16
  %arrayidx3.i120 = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 2
  %44 = ptrtoint ptr %arrayidx3.i120 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %arrayidx3.i120, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %1, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46) #16
  %arrayidx3.1.i121 = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 1
  %48 = ptrtoint ptr %arrayidx3.1.i121 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %arrayidx3.1.i121, align 1
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %0, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50) #16
  %arrayidx3.2.i122 = getelementptr %struct.dm_raid_superblock, ptr %call, i32 0, i32 21, i32 0
  %52 = ptrtoint ptr %arrayidx3.2.i122 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %arrayidx3.2.i122, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.end.if.end26_crit_edge, %sb_retrieve_failed_devices.exit.if.end26_crit_edge
  %53 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 1148015204, ptr %call, align 1
  %54 = ptrtoint ptr %compat_features.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 16777216, ptr %compat_features.i, align 1
  %raid_disks27 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 26
  %55 = ptrtoint ptr %raid_disks27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %raid_disks27, align 8
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %num_devices = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 2
  %58 = ptrtoint ptr %num_devices to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %num_devices, align 1
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %59 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %raid_disk, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %array_position = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 3
  %62 = ptrtoint ptr %array_position to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %array_position, align 1
  %events = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 31
  %63 = ptrtoint ptr %events to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %events, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64)
  %events28 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 4
  %66 = ptrtoint ptr %events28 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %events28, align 1
  %67 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 22
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %67, align 8
  %70 = call i64 @llvm.bswap.i64(i64 %69)
  %disk_recovery_offset = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 6
  %71 = ptrtoint ptr %disk_recovery_offset to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %disk_recovery_offset, align 1
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %72 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %recovery_cp, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73)
  %array_resync_offset = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 7
  %75 = ptrtoint ptr %array_resync_offset to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %array_resync_offset, align 1
  %level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 23
  %76 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %level, align 8
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %level29 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 8
  %79 = ptrtoint ptr %level29 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %level29, align 1
  %layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 24
  %80 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %layout, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %layout30 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 9
  %83 = ptrtoint ptr %layout30 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %layout30, align 1
  %chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 20
  %84 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chunk_sectors, align 8
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %stripe_sectors = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 10
  %87 = ptrtoint ptr %stripe_sectors to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %stripe_sectors, align 1
  %new_level = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 36
  %88 = ptrtoint ptr %new_level to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %new_level, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %new_level31 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 13
  %91 = ptrtoint ptr %new_level31 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %new_level31, align 1
  %new_layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 37
  %92 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %new_layout, align 8
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %new_layout32 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 14
  %95 = ptrtoint ptr %new_layout32 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %new_layout32, align 1
  %new_chunk_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 38
  %96 = ptrtoint ptr %new_chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %new_chunk_sectors, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97)
  %new_stripe_sectors = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 15
  %99 = ptrtoint ptr %new_stripe_sectors to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %new_stripe_sectors, align 1
  %delta_disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 35
  %100 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %delta_disks, align 8
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %delta_disks33 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 16
  %103 = ptrtoint ptr %delta_disks33 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %delta_disks33, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !634
  %reshape_position = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 34
  %104 = ptrtoint ptr %reshape_position to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %reshape_position, align 8
  %106 = call i64 @llvm.bswap.i64(i64 %105)
  %reshape_position40 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 12
  %107 = ptrtoint ptr %reshape_position40 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %reshape_position40, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %105)
  %cmp42.not = icmp eq i64 %105, -1
  %flags53 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 11
  %108 = ptrtoint ptr %flags53 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %flags53, align 1
  br i1 %cmp42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end26
  %or = or i32 %109, 16777216
  %110 = ptrtoint ptr %flags53 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %or, ptr %flags53, align 1
  %111 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delta_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp46 = icmp slt i32 %112, 0
  br i1 %cmp46, label %if.then43.if.then49_crit_edge, label %lor.lhs.false47

if.then43.if.then49_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

lor.lhs.false47:                                  ; preds = %if.then43
  %reshape_backwards = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 39
  %113 = ptrtoint ptr %reshape_backwards to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %reshape_backwards, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool48.not = icmp eq i32 %114, 0
  br i1 %tobool48.not, label %lor.lhs.false47.if.end54_crit_edge, label %lor.lhs.false47.if.then49_crit_edge

lor.lhs.false47.if.then49_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

lor.lhs.false47.if.end54_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then49:                                        ; preds = %lor.lhs.false47.if.then49_crit_edge, %if.then43.if.then49_crit_edge
  %or51 = or i32 %109, 50331648
  br label %if.end54.sink.split

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %and = and i32 %109, -50331649
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.else, %if.then49
  %or51.sink = phi i32 [ %or51, %if.then49 ], [ %and, %if.else ]
  %115 = ptrtoint ptr %flags53 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %or51.sink, ptr %flags53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %lor.lhs.false47.if.end54_crit_edge
  %array_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 29
  %116 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %array_sectors, align 8
  %118 = call i64 @llvm.bswap.i64(i64 %117)
  %array_sectors55 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 17
  %119 = ptrtoint ptr %array_sectors55 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 %118, ptr %array_sectors55, align 1
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 10
  %120 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %data_offset, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %121)
  %data_offset56 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 18
  %123 = ptrtoint ptr %data_offset56 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %data_offset56, align 1
  %new_data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 11
  %124 = ptrtoint ptr %new_data_offset to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %new_data_offset, align 8
  %126 = call i64 @llvm.bswap.i64(i64 %125)
  %new_data_offset57 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 19
  %127 = ptrtoint ptr %new_data_offset57 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %126, ptr %new_data_offset57, align 1
  %sectors = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 1
  %128 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %sectors, align 8
  %130 = call i64 @llvm.bswap.i64(i64 %129)
  %sectors58 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 20
  %131 = ptrtoint ptr %sectors58 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %130, ptr %sectors58, align 1
  %incompat_features = getelementptr inbounds %struct.dm_raid_superblock, ptr %call, i32 0, i32 22
  %132 = ptrtoint ptr %incompat_features to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 0, ptr %incompat_features, align 1
  %add.ptr59 = getelementptr %struct.dm_raid_superblock, ptr %call, i32 1
  %sb_size = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 13
  %133 = ptrtoint ptr %sb_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sb_size, align 8
  %sub = add i32 %134, -148
  %135 = call ptr @memset(ptr %add.ptr59, i32 0, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %failed_devices) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_set_dev_and_array_sectors(ptr noundef %rs, i64 noundef %sectors, i1 noundef zeroext %use_mddev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %delta_disks2 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %raid_disks.i934 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %delta_disks1 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 35
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %raid_disks.i934.sink = select i1 %use_mddev, ptr %raid_disks.i, ptr %raid_disks.i934
  %delta_disks.0.in = select i1 %use_mddev, ptr %delta_disks1, ptr %delta_disks2
  %0 = ptrtoint ptr %raid_disks.i934.sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks.i934.sink, align 8
  %raid_type.i935 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %2 = ptrtoint ptr %raid_type.i935 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_type.i935, align 8
  %parity_devs.i936 = getelementptr inbounds %struct.raid_type, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %parity_devs.i936 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parity_devs.i936, align 4
  %sub.i937 = sub i32 %1, %5
  %6 = ptrtoint ptr %delta_disks.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %delta_disks.0 = load i32, ptr %delta_disks.0.in, align 4
  %level.i = getelementptr inbounds %struct.raid_type, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %8, label %if.else633 [
    i32 1, label %entry.if.end663_crit_edge
    i32 10, label %if.then9
  ]

entry.if.end663_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end663

if.then9:                                         ; preds = %entry
  %raid10_copies = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 8
  %10 = ptrtoint ptr %raid10_copies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %raid10_copies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp slt i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_disks.0)
  %cmp10 = icmp slt i32 %delta_disks.0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then9.cleanup.sink.split_crit_edge, label %if.end12

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.then9
  %conv1016 = zext i32 %11 to i64
  %mul = mul i64 %conv1016, %sectors
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp186 = icmp ult i64 %mul, 4294967296
  br i1 %cmp186, label %if.then190, label %if.else196, !prof !635

if.then190:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %conv191 = trunc i64 %mul to i32
  %conv191.frozen = freeze i32 %conv191
  %sub.i937.frozen = freeze i32 %sub.i937
  %div194 = udiv i32 %conv191.frozen, %sub.i937.frozen
  %12 = mul i32 %div194, %sub.i937.frozen
  %rem192.decomposed = sub i32 %conv191.frozen, %12
  %conv195 = zext i32 %div194 to i64
  br label %if.end200

if.else196:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i937, i64 %mul) #22, !srcloc !636
  %asmresult.i = extractvalue { i64, i64 } %13, 0
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then190
  %dev_sectors.0 = phi i64 [ %conv195, %if.then190 ], [ %asmresult1.i, %if.else196 ]
  %__rem.0 = phi i32 [ %rem192.decomposed, %if.then190 ], [ %conv.i, %if.else196 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool202.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool202.not, label %if.end204, label %if.end200.cleanup.sink.split_crit_edge

if.end200.cleanup.sink.split_crit_edge:           ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end204:                                        ; preds = %if.end200
  %add205 = add i32 %delta_disks.0, %sub.i937
  %conv206 = zext i32 %add205 to i64
  %mul207 = mul i64 %dev_sectors.0, %conv206
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul207)
  %cmp410 = icmp ult i64 %mul207, 4294967296
  br i1 %cmp410, label %if.then418, label %if.else424, !prof !635

if.then418:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #18
  %conv419 = trunc i64 %mul207 to i32
  %conv419.frozen = freeze i32 %conv419
  %.frozen = freeze i32 %11
  %div422 = udiv i32 %conv419.frozen, %.frozen
  %14 = mul i32 %div422, %.frozen
  %rem420.decomposed = sub i32 %conv419.frozen, %14
  %conv423 = zext i32 %div422 to i64
  br label %if.end428

if.else424:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #18
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %mul207) #22, !srcloc !636
  %asmresult.i948 = extractvalue { i64, i64 } %15, 0
  %asmresult1.i949 = extractvalue { i64, i64 } %15, 1
  %shr.i950 = lshr i64 %asmresult.i948, 32
  %conv.i951 = trunc i64 %shr.i950 to i32
  br label %if.end428

if.end428:                                        ; preds = %if.else424, %if.then418
  %array_sectors.0 = phi i64 [ %conv423, %if.then418 ], [ %asmresult1.i949, %if.else424 ]
  %__rem210.0 = phi i32 [ %rem420.decomposed, %if.then418 ], [ %conv.i951, %if.else424 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem210.0)
  %tobool430.not = icmp eq i32 %__rem210.0, 0
  br i1 %tobool430.not, label %if.end428.if.end663_crit_edge, label %if.end428.cleanup.sink.split_crit_edge

if.end428.cleanup.sink.split_crit_edge:           ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end428.if.end663_crit_edge:                    ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end663

if.else633:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sectors)
  %cmp635 = icmp ult i64 %sectors, 4294967296
  br i1 %cmp635, label %if.then643, label %if.else649, !prof !635

if.then643:                                       ; preds = %if.else633
  call void @__sanitizer_cov_trace_pc() #18
  %conv644 = trunc i64 %sectors to i32
  %sub.i937.frozen1022 = freeze i32 %sub.i937
  %div647 = udiv i32 %conv644, %sub.i937.frozen1022
  %16 = mul i32 %div647, %sub.i937.frozen1022
  %rem645.decomposed = sub i32 %conv644, %16
  %conv648 = zext i32 %div647 to i64
  br label %if.end653

if.else649:                                       ; preds = %if.else633
  call void @__sanitizer_cov_trace_pc() #18
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i937, i64 %sectors) #22, !srcloc !636
  %asmresult.i959 = extractvalue { i64, i64 } %17, 0
  %asmresult1.i960 = extractvalue { i64, i64 } %17, 1
  %shr.i961 = lshr i64 %asmresult.i959, 32
  %conv.i962 = trunc i64 %shr.i961 to i32
  br label %if.end653

if.end653:                                        ; preds = %if.else649, %if.then643
  %dev_sectors.1 = phi i64 [ %conv648, %if.then643 ], [ %asmresult1.i960, %if.else649 ]
  %__rem435.0 = phi i32 [ %rem645.decomposed, %if.then643 ], [ %conv.i962, %if.else649 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem435.0)
  %tobool655.not = icmp eq i32 %__rem435.0, 0
  br i1 %tobool655.not, label %if.else657, label %if.end653.cleanup.sink.split_crit_edge

if.end653.cleanup.sink.split_crit_edge:           ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else657:                                       ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #18
  %add658 = add i32 %delta_disks.0, %sub.i937
  %conv659 = zext i32 %add658 to i64
  %mul660 = mul i64 %dev_sectors.1, %conv659
  br label %if.end663

if.end663:                                        ; preds = %if.else657, %if.end428.if.end663_crit_edge, %entry.if.end663_crit_edge
  %array_sectors.1 = phi i64 [ %sectors, %entry.if.end663_crit_edge ], [ %array_sectors.0, %if.end428.if.end663_crit_edge ], [ %mul660, %if.else657 ]
  %dev_sectors.2 = phi i64 [ %sectors, %entry.if.end663_crit_edge ], [ %dev_sectors.0, %if.end428.if.end663_crit_edge ], [ %dev_sectors.1, %if.else657 ]
  %array_sectors664 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 29
  %18 = ptrtoint ptr %array_sectors664 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %array_sectors.1, ptr %array_sectors664, align 8
  %dev_sectors665 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 28
  %19 = ptrtoint ptr %dev_sectors665 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %dev_sectors.2, ptr %dev_sectors665, align 8
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %rdev.012.i = load ptr, ptr %disks.i, align 8
  %cmp.not13.i = icmp eq ptr %rdev.012.i, %disks.i
  br i1 %cmp.not13.i, label %if.end663.rs_set_rdev_sectors.exit_crit_edge, label %if.end663.for.body.i_crit_edge

if.end663.for.body.i_crit_edge:                   ; preds = %if.end663
  br label %for.body.i

if.end663.rs_set_rdev_sectors.exit_crit_edge:     ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end663.for.body.i_crit_edge
  %rdev.014.i = phi ptr [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rdev.012.i, %if.end663.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 16
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %dev_sectors665 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dev_sectors665, align 8
  %sectors.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 1
  %26 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %sectors.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %rdev.014.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %rdev.0.i = load ptr, ptr %rdev.014.i, align 8
  %cmp.not.i963 = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i963, label %for.inc.i.rs_set_rdev_sectors.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.rs_set_rdev_sectors.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_set_rdev_sectors.exit

rs_set_rdev_sectors.exit:                         ; preds = %for.inc.i.rs_set_rdev_sectors.exit_crit_edge, %if.end663.rs_set_rdev_sectors.exit_crit_edge
  %28 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %rdev.028.i = load ptr, ptr %disks.i, align 8
  %cmp.not29.i = icmp eq ptr %rdev.028.i, %disks.i
  br i1 %cmp.not29.i, label %rs_set_rdev_sectors.exit.cleanup_crit_edge, label %rs_set_rdev_sectors.exit.for.body.i969_crit_edge

rs_set_rdev_sectors.exit.for.body.i969_crit_edge: ; preds = %rs_set_rdev_sectors.exit
  br label %for.body.i969

rs_set_rdev_sectors.exit.cleanup_crit_edge:       ; preds = %rs_set_rdev_sectors.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i969:                                    ; preds = %for.inc.i973.for.body.i969_crit_edge, %rs_set_rdev_sectors.exit.for.body.i969_crit_edge
  %rdev.031.i = phi ptr [ %rdev.0.i971, %for.inc.i973.for.body.i969_crit_edge ], [ %rdev.028.i, %rs_set_rdev_sectors.exit.for.body.i969_crit_edge ]
  %ds.030.i = phi i64 [ %ds.1.i, %for.inc.i973.for.body.i969_crit_edge ], [ -1, %rs_set_rdev_sectors.exit.for.body.i969_crit_edge ]
  %flags.i967 = getelementptr inbounds %struct.md_rdev, ptr %rdev.031.i, i32 0, i32 16
  %29 = ptrtoint ptr %flags.i967 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i967, align 4
  %31 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i968 = icmp eq i32 %31, 0
  br i1 %tobool.not.i968, label %land.lhs.true.i, label %for.body.i969.for.inc.i973_crit_edge

for.body.i969.for.inc.i973_crit_edge:             ; preds = %for.body.i969
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i973

land.lhs.true.i:                                  ; preds = %for.body.i969
  %bdev.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.031.i, i32 0, i32 5
  %32 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev.i, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i973_crit_edge, label %if.then.i970

land.lhs.true.i.for.inc.i973_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i973

if.then.i970:                                     ; preds = %land.lhs.true.i
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %36 = tail call i64 @llvm.umin.i64(i64 %ds.030.i, i64 %35) #16
  %37 = ptrtoint ptr %dev_sectors665 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dev_sectors665, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp9.i = icmp ult i64 %36, %38
  br i1 %cmp9.i, label %if.then.i970.cleanup.sink.split_crit_edge, label %if.then.i970.for.inc.i973_crit_edge

if.then.i970.for.inc.i973_crit_edge:              ; preds = %if.then.i970
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i973

if.then.i970.cleanup.sink.split_crit_edge:        ; preds = %if.then.i970
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.inc.i973:                                     ; preds = %if.then.i970.for.inc.i973_crit_edge, %land.lhs.true.i.for.inc.i973_crit_edge, %for.body.i969.for.inc.i973_crit_edge
  %ds.1.i = phi i64 [ %ds.030.i, %for.body.i969.for.inc.i973_crit_edge ], [ %36, %if.then.i970.for.inc.i973_crit_edge ], [ %ds.030.i, %land.lhs.true.i.for.inc.i973_crit_edge ]
  %39 = ptrtoint ptr %rdev.031.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %rdev.0.i971 = load ptr, ptr %rdev.031.i, align 8
  %cmp.not.i972 = icmp eq ptr %rdev.0.i971, %disks.i
  br i1 %cmp.not.i972, label %for.inc.i973.cleanup_crit_edge, label %for.inc.i973.for.body.i969_crit_edge

for.inc.i973.for.body.i969_crit_edge:             ; preds = %for.inc.i973
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i969

for.inc.i973.cleanup_crit_edge:                   ; preds = %for.inc.i973
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then.i970.cleanup.sink.split_crit_edge, %if.end653.cleanup.sink.split_crit_edge, %if.end428.cleanup.sink.split_crit_edge, %if.end200.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge
  %.str.163.sink = phi ptr [ @.str.161, %if.then9.cleanup.sink.split_crit_edge ], [ @.str.162, %if.end653.cleanup.sink.split_crit_edge ], [ @.str.162, %if.end428.cleanup.sink.split_crit_edge ], [ @.str.162, %if.end200.cleanup.sink.split_crit_edge ], [ @.str.163, %if.then.i970.cleanup.sink.split_crit_edge ]
  %40 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rs, align 8
  %error.i = getelementptr inbounds %struct.dm_target, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.str.163.sink, ptr %error.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i973.cleanup_crit_edge, %rs_set_rdev_sectors.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rs_set_rdev_sectors.exit.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %for.inc.i973.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @analyse_superblocks(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %rdev.023 = load ptr, ptr %disks, align 8
  %cmp.not24 = icmp eq ptr %rdev.023, %disks
  br i1 %cmp.not24, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rdev.028 = phi ptr [ %rdev.023, %for.body.lr.ph ], [ %rdev.0, %for.inc.for.body_crit_edge ]
  %freshest.025 = phi ptr [ null, %for.body.lr.ph ], [ %freshest.1, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %meta_bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 4
  %4 = ptrtoint ptr %meta_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %meta_bdev, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %sb_start = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 12
  %6 = ptrtoint ptr %sb_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %sb_start, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %7 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %bdev_logical_block_size.exit.thread, label %bdev_logical_block_size.exit

bdev_logical_block_size.exit.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %sb_size37 = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 13
  %9 = ptrtoint ptr %sb_size37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %sb_size37, align 8
  br label %if.end14

bdev_logical_block_size.exit:                     ; preds = %if.end4
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %11
  %sb_size = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 13
  %12 = ptrtoint ptr %sb_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i.i, ptr %sb_size, align 8
  %13 = add i32 %spec.select.i.i, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3949, i32 %13)
  %14 = icmp ult i32 %13, -3949
  br i1 %14, label %do.end, label %bdev_logical_block_size.exit.if.end14_crit_edge

bdev_logical_block_size.exit.if.end14_crit_edge:  ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.end:                                           ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #19
  br label %cleanup

if.end14:                                         ; preds = %bdev_logical_block_size.exit.if.end14_crit_edge, %bdev_logical_block_size.exit.thread
  %retval1.0.i.i38 = phi i32 [ 512, %bdev_logical_block_size.exit.thread ], [ %spec.select.i.i, %bdev_logical_block_size.exit.if.end14_crit_edge ]
  %15 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ctr_flags, align 4
  %and1.i2 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2)
  %tobool16.not = icmp eq i32 %and1.i2, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end18:                                         ; preds = %if.end14
  %sb_page.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 6
  %17 = ptrtoint ptr %sb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb_page.i.i, align 8
  %tobool.not.i.i5 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i5, label %do.body4.i.i, label %do.end7.i.i, !prof !628

do.body4.i.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-raid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2032, 0\0A.popsection", ""() #16, !srcloc !629
  unreachable

do.end7.i.i:                                      ; preds = %if.end18
  %sb_loaded.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 8
  %19 = ptrtoint ptr %sb_loaded.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_loaded.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i.i, label %if.end11.i.i, label %do.end7.i.i.if.end.i_crit_edge

do.end7.i.i.if.end.i_crit_edge:                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end11.i.i:                                     ; preds = %do.end7.i.i
  %21 = ptrtoint ptr %sb_loaded.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sb_loaded.i.i, align 8
  %call.i.i = tail call i32 @sync_page_io(ptr noundef %rdev.028, i64 noundef 0, i32 noundef %retval1.0.i.i38, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %super_load.exit.thread, label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %sb_loaded.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sb_loaded.i.i, align 8
  br label %if.end.i

super_load.exit.thread:                           ; preds = %if.end11.i.i
  %raid_disk.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 19
  %23 = ptrtoint ptr %raid_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %raid_disk.i.i, align 4
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %24) #19
  %mddev.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 2
  %25 = ptrtoint ptr %mddev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mddev.i.i, align 8
  tail call void @md_error(ptr noundef %26, ptr noundef %rdev.028) #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #16
  %27 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %super_load.exit.thread.for.inc_crit_edge, label %if.end22

super_load.exit.thread.for.inc_crit_edge:         ; preds = %super_load.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %if.end19.i.i, %do.end7.i.i.if.end.i_crit_edge
  %29 = ptrtoint ptr %sb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sb_page.i.i, align 8
  %call1.i = tail call ptr @page_address(ptr noundef %30) #16
  %31 = ptrtoint ptr %call1.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %call1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1148015204, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 1148015204
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.then5.i_crit_edge

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not.i = icmp eq i32 %35, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end9.i_crit_edge

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %36 = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 22
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool4.not.i = icmp eq i64 %38, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then5.i_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

if.then5.i:                                       ; preds = %land.lhs.true.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %mddev.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 2
  %39 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mddev.i, align 8
  tail call void @super_sync(ptr noundef %40, ptr noundef %rdev.028) #16
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #16
  %compat_features.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call1.i, i32 0, i32 1
  %41 = ptrtoint ptr %compat_features.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 16777216, ptr %compat_features.i, align 1
  %42 = ptrtoint ptr %mddev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mddev.i, align 8
  %sb_flags.i = getelementptr inbounds %struct.mddev, ptr %43, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sb_flags.i) #16
  %tobool8.not.i = icmp eq ptr %freshest.025, null
  br i1 %tobool8.not.i, label %if.then5.i.sw.bb_crit_edge, label %if.then5.i.for.inc_crit_edge

if.then5.i.for.inc_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then5.i.sw.bb_crit_edge:                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  %tobool10.not.i = icmp eq ptr %freshest.025, null
  br i1 %tobool10.not.i, label %if.end9.i.sw.bb_crit_edge, label %super_load.exit

if.end9.i.sw.bb_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

super_load.exit:                                  ; preds = %if.end9.i
  %events.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call1.i, i32 0, i32 4
  %44 = ptrtoint ptr %events.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %events.i, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #16
  %sb_page13.i = getelementptr inbounds %struct.md_rdev, ptr %freshest.025, i32 0, i32 6
  %47 = ptrtoint ptr %sb_page13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sb_page13.i, align 8
  %call14.i = tail call ptr @page_address(ptr noundef %48) #16
  %events15.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call14.i, i32 0, i32 4
  %49 = ptrtoint ptr %events15.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %events15.i, align 1
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %51)
  %cmp16.i = icmp ugt i64 %46, %51
  br i1 %cmp16.i, label %super_load.exit.sw.bb_crit_edge, label %super_load.exit.for.inc_crit_edge

super_load.exit.for.inc_crit_edge:                ; preds = %super_load.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

super_load.exit.sw.bb_crit_edge:                  ; preds = %super_load.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %super_load.exit.sw.bb_crit_edge, %if.end9.i.sw.bb_crit_edge, %if.then5.i.sw.bb_crit_edge
  br label %for.inc

if.end22:                                         ; preds = %super_load.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %saved_raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.028, i32 0, i32 21
  %52 = ptrtoint ptr %saved_raid_disk to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %saved_raid_disk, align 4
  %53 = ptrtoint ptr %raid_disk.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %raid_disk.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %sw.bb, %super_load.exit.for.inc_crit_edge, %if.then5.i.for.inc_crit_edge, %super_load.exit.thread.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %freshest.1 = phi ptr [ %freshest.025, %for.body.for.inc_crit_edge ], [ %freshest.025, %if.end14.for.inc_crit_edge ], [ %freshest.025, %super_load.exit.thread.for.inc_crit_edge ], [ %freshest.025, %if.end22 ], [ %freshest.025, %super_load.exit.for.inc_crit_edge ], [ %rdev.028, %sw.bb ], [ %freshest.025, %if.end.for.inc_crit_edge ], [ %freshest.025, %if.then5.i.for.inc_crit_edge ]
  %54 = ptrtoint ptr %rdev.028 to i32
  call void @__asan_load4_noabort(i32 %54)
  %rdev.0 = load ptr, ptr %rdev.028, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool28.not = icmp eq ptr %freshest.1, null
  br i1 %tobool28.not, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %55 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.166, ptr %error, align 8
  %call32 = tail call fastcc i32 @super_validate(ptr noundef %rs, ptr noundef nonnull %freshest.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %58 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %raid_disks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp151.not.i = icmp eq i32 %59, 0
  br i1 %cmp151.not.i, label %if.end35.for.end.i_crit_edge, label %if.end35.for.body.i_crit_edge

if.end35.for.body.i_crit_edge:                    ; preds = %if.end35
  br label %for.body.i

if.end35.for.end.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end35.for.body.i_crit_edge
  %rebuild_cnt.0155.i = phi i32 [ %rebuild_cnt.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %i.0152.i = phi i32 [ %inc5.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %flags.i6 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0152.i, i32 2, i32 16
  %60 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags.i6, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i7 = icmp eq i32 %62, 0
  br i1 %tobool.not.i7, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i9

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i9:                                 ; preds = %for.body.i
  %sb_page.i = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.0152.i, i32 2, i32 6
  %63 = ptrtoint ptr %sb_page.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sb_page.i, align 8
  %tobool4.not.i8 = icmp eq ptr %64, null
  br i1 %tobool4.not.i8, label %lor.lhs.false.i9.if.then.i_crit_edge, label %lor.lhs.false.i9.for.inc.i_crit_edge

lor.lhs.false.i9.for.inc.i_crit_edge:             ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.lhs.false.i9.if.then.i_crit_edge:             ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i9.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %inc.i = add i32 %rebuild_cnt.0155.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i9.for.inc.i_crit_edge
  %rebuild_cnt.1.i = phi i32 [ %rebuild_cnt.0155.i, %lor.lhs.false.i9.for.inc.i_crit_edge ], [ %inc.i, %if.then.i ]
  %inc5.i = add nuw i32 %i.0152.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, %59
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end35.for.end.i_crit_edge
  %rebuild_cnt.0.lcssa.i = phi i32 [ 0, %if.end35.for.end.i_crit_edge ], [ %rebuild_cnt.1.i, %for.inc.i.for.end.i_crit_edge ]
  %level.i10 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %65 = ptrtoint ptr %level.i10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %level.i10, align 8
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %66, label %sw.default.i [
    i32 0, label %for.end.i.validate_raid_redundancy.exit_crit_edge
    i32 1, label %sw.bb.i
    i32 4, label %for.end.i.sw.bb12.i_crit_edge
    i32 5, label %for.end.i.sw.bb12.i_crit_edge47
    i32 6, label %for.end.i.sw.bb12.i_crit_edge48
    i32 10, label %sw.bb16.i
  ]

for.end.i.sw.bb12.i_crit_edge48:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

for.end.i.sw.bb12.i_crit_edge47:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

for.end.i.sw.bb12.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb12.i

for.end.i.validate_raid_redundancy.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rebuild_cnt.0.lcssa.i, i32 %59)
  %cmp9.not.i = icmp ult i32 %rebuild_cnt.0.lcssa.i, %59
  br i1 %cmp9.not.i, label %sw.bb.i.validate_raid_redundancy.exit_crit_edge, label %sw.bb.i.if.then38_crit_edge

sw.bb.i.if.then38_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

sw.bb.i.validate_raid_redundancy.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

sw.bb12.i:                                        ; preds = %for.end.i.sw.bb12.i_crit_edge, %for.end.i.sw.bb12.i_crit_edge47, %for.end.i.sw.bb12.i_crit_edge48
  %raid_type.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %68 = ptrtoint ptr %raid_type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %raid_type.i, align 8
  %parity_devs.i = getelementptr inbounds %struct.raid_type, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %parity_devs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %parity_devs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rebuild_cnt.0.lcssa.i, i32 %71)
  %cmp13.i = icmp ugt i32 %rebuild_cnt.0.lcssa.i, %71
  br i1 %cmp13.i, label %sw.bb12.i.if.then38_crit_edge, label %sw.bb12.i.validate_raid_redundancy.exit_crit_edge

sw.bb12.i.validate_raid_redundancy.exit_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

sw.bb12.i.if.then38_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

sw.bb16.i:                                        ; preds = %for.end.i
  %new_layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %72 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %new_layout.i, align 8
  %and.i.i.i = and i32 %73, 255
  %74 = lshr i32 %73, 8
  %and.i.i.i.i = and i32 %74, 255
  %75 = tail call i32 @llvm.umax.i32(i32 %and.i.i.i, i32 %and.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp19.i = icmp ult i32 %75, 2
  br i1 %cmp19.i, label %do.end.i, label %if.end22.i

do.end.i:                                         ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #18
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #19
  br label %if.then38

if.end22.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rebuild_cnt.0.lcssa.i, i32 %75)
  %cmp23.i = icmp ult i32 %rebuild_cnt.0.lcssa.i, %75
  br i1 %cmp23.i, label %if.end22.i.validate_raid_redundancy.exit_crit_edge, label %if.end25.i

if.end22.i.validate_raid_redundancy.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

if.end25.i:                                       ; preds = %if.end22.i
  %and.i.i148.i = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i148.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i148.i, 0
  %and.i3.i.i = and i32 %73, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %cmp.i.i = icmp ne i32 %and.i3.i.i, 0
  %76 = and i1 %tobool.i.not.i.i, %cmp.i.i
  br i1 %76, label %for.cond30.preheader.i, label %if.end57.i

for.cond30.preheader.i:                           ; preds = %if.end25.i
  br i1 %cmp151.not.i, label %for.cond30.preheader.i.validate_raid_redundancy.exit_crit_edge, label %for.cond30.preheader.i.for.body34.i_crit_edge

for.cond30.preheader.i.for.body34.i_crit_edge:    ; preds = %for.cond30.preheader.i
  br label %for.body34.i

for.cond30.preheader.i.validate_raid_redundancy.exit_crit_edge: ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

for.body34.i:                                     ; preds = %for.inc54.i.for.body34.i_crit_edge, %for.cond30.preheader.i.for.body34.i_crit_edge
  %rebuilds_per_group.0166.i = phi i32 [ %rebuilds_per_group.2.i, %for.inc54.i.for.body34.i_crit_edge ], [ 0, %for.cond30.preheader.i.for.body34.i_crit_edge ]
  %i.1163.i = phi i32 [ %inc55.i, %for.inc54.i.for.body34.i_crit_edge ], [ 0, %for.cond30.preheader.i.for.body34.i_crit_edge ]
  %rem.i = urem i32 %i.1163.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool35.not.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %tobool35.not.i, i32 0, i32 %rebuilds_per_group.0166.i
  %sb_page41.i = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.1163.i, i32 2, i32 6
  %77 = ptrtoint ptr %sb_page41.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sb_page41.i, align 8
  %tobool42.not.i = icmp eq ptr %78, null
  br i1 %tobool42.not.i, label %for.body34.i.land.lhs.true.i11_crit_edge, label %lor.lhs.false43.i

for.body34.i.land.lhs.true.i11_crit_edge:         ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i11

lor.lhs.false43.i:                                ; preds = %for.body34.i
  %flags47.i = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.1163.i, i32 2, i32 16
  %79 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags47.i, align 4
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool49.not.i = icmp eq i32 %81, 0
  br i1 %tobool49.not.i, label %lor.lhs.false43.i.land.lhs.true.i11_crit_edge, label %lor.lhs.false43.i.for.inc54.i_crit_edge

lor.lhs.false43.i.for.inc54.i_crit_edge:          ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc54.i

lor.lhs.false43.i.land.lhs.true.i11_crit_edge:    ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i11

land.lhs.true.i11:                                ; preds = %lor.lhs.false43.i.land.lhs.true.i11_crit_edge, %for.body34.i.land.lhs.true.i11_crit_edge
  %inc50.i = add i32 %spec.select.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc50.i, i32 %75)
  %cmp51.not.i = icmp ult i32 %inc50.i, %75
  br i1 %cmp51.not.i, label %land.lhs.true.i11.for.inc54.i_crit_edge, label %land.lhs.true.i11.if.then38_crit_edge

land.lhs.true.i11.if.then38_crit_edge:            ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

land.lhs.true.i11.for.inc54.i_crit_edge:          ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %land.lhs.true.i11.for.inc54.i_crit_edge, %lor.lhs.false43.i.for.inc54.i_crit_edge
  %rebuilds_per_group.2.i = phi i32 [ %spec.select.i, %lor.lhs.false43.i.for.inc54.i_crit_edge ], [ %inc50.i, %land.lhs.true.i11.for.inc54.i_crit_edge ]
  %inc55.i = add nuw i32 %i.1163.i, 1
  %exitcond170.not.i = icmp eq i32 %inc55.i, %59
  br i1 %exitcond170.not.i, label %for.inc54.i.validate_raid_redundancy.exit_crit_edge, label %for.inc54.i.for.body34.i_crit_edge

for.inc54.i.for.body34.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body34.i

for.inc54.i.validate_raid_redundancy.exit_crit_edge: ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

if.end57.i:                                       ; preds = %if.end25.i
  %div.i = udiv i32 %59, %75
  %div62.i = udiv i32 %59, %div.i
  %sub.i = add i32 %div62.i, -1
  %mul.i = mul i32 %sub.i, %div.i
  br i1 %cmp151.not.i, label %if.end57.i.validate_raid_redundancy.exit_crit_edge, label %if.end57.i.for.body67.i_crit_edge

if.end57.i.for.body67.i_crit_edge:                ; preds = %if.end57.i
  br label %for.body67.i

if.end57.i.validate_raid_redundancy.exit_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

for.body67.i:                                     ; preds = %for.inc91.i.for.body67.i_crit_edge, %if.end57.i.for.body67.i_crit_edge
  %rebuilds_per_group.3161.i = phi i32 [ %rebuilds_per_group.5.i, %for.inc91.i.for.body67.i_crit_edge ], [ 0, %if.end57.i.for.body67.i_crit_edge ]
  %i.2158.i = phi i32 [ %inc92.i, %for.inc91.i.for.body67.i_crit_edge ], [ 0, %if.end57.i.for.body67.i_crit_edge ]
  %rem68.i = urem i32 %i.2158.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem68.i)
  %tobool69.not.i = icmp ne i32 %rem68.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2158.i, i32 %mul.i)
  %cmp71.i = icmp ugt i32 %i.2158.i, %mul.i
  %or.cond.i = select i1 %tobool69.not.i, i1 true, i1 %cmp71.i
  %rebuilds_per_group.4.i = select i1 %or.cond.i, i32 %rebuilds_per_group.3161.i, i32 0
  %sb_page77.i = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.2158.i, i32 2, i32 6
  %82 = ptrtoint ptr %sb_page77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sb_page77.i, align 8
  %tobool78.not.i = icmp eq ptr %83, null
  br i1 %tobool78.not.i, label %for.body67.i.land.lhs.true86.i_crit_edge, label %lor.lhs.false79.i

for.body67.i.land.lhs.true86.i_crit_edge:         ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true86.i

lor.lhs.false79.i:                                ; preds = %for.body67.i
  %flags83.i = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.2158.i, i32 2, i32 16
  %84 = ptrtoint ptr %flags83.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags83.i, align 4
  %86 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool85.not.i = icmp eq i32 %86, 0
  br i1 %tobool85.not.i, label %lor.lhs.false79.i.land.lhs.true86.i_crit_edge, label %lor.lhs.false79.i.for.inc91.i_crit_edge

lor.lhs.false79.i.for.inc91.i_crit_edge:          ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91.i

lor.lhs.false79.i.land.lhs.true86.i_crit_edge:    ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true86.i

land.lhs.true86.i:                                ; preds = %lor.lhs.false79.i.land.lhs.true86.i_crit_edge, %for.body67.i.land.lhs.true86.i_crit_edge
  %inc87.i = add i32 %rebuilds_per_group.4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc87.i, i32 %75)
  %cmp88.not.i = icmp ult i32 %inc87.i, %75
  br i1 %cmp88.not.i, label %land.lhs.true86.i.for.inc91.i_crit_edge, label %land.lhs.true86.i.if.then38_crit_edge

land.lhs.true86.i.if.then38_crit_edge:            ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

land.lhs.true86.i.for.inc91.i_crit_edge:          ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %land.lhs.true86.i.for.inc91.i_crit_edge, %lor.lhs.false79.i.for.inc91.i_crit_edge
  %rebuilds_per_group.5.i = phi i32 [ %rebuilds_per_group.4.i, %lor.lhs.false79.i.for.inc91.i_crit_edge ], [ %inc87.i, %land.lhs.true86.i.for.inc91.i_crit_edge ]
  %inc92.i = add nuw i32 %i.2158.i, 1
  %exitcond169.not.i = icmp eq i32 %inc92.i, %59
  br i1 %exitcond169.not.i, label %for.inc91.i.validate_raid_redundancy.exit_crit_edge, label %for.inc91.i.for.body67.i_crit_edge

for.inc91.i.for.body67.i_crit_edge:               ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body67.i

for.inc91.i.validate_raid_redundancy.exit_crit_edge: ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

sw.default.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rebuild_cnt.0.lcssa.i)
  %tobool94.not.i = icmp eq i32 %rebuild_cnt.0.lcssa.i, 0
  br i1 %tobool94.not.i, label %sw.default.i.validate_raid_redundancy.exit_crit_edge, label %sw.default.i.if.then38_crit_edge

sw.default.i.if.then38_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

sw.default.i.validate_raid_redundancy.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %validate_raid_redundancy.exit

validate_raid_redundancy.exit:                    ; preds = %sw.default.i.validate_raid_redundancy.exit_crit_edge, %for.inc91.i.validate_raid_redundancy.exit_crit_edge, %if.end57.i.validate_raid_redundancy.exit_crit_edge, %for.inc54.i.validate_raid_redundancy.exit_crit_edge, %for.cond30.preheader.i.validate_raid_redundancy.exit_crit_edge, %if.end22.i.validate_raid_redundancy.exit_crit_edge, %sw.bb12.i.validate_raid_redundancy.exit_crit_edge, %sw.bb.i.validate_raid_redundancy.exit_crit_edge, %for.end.i.validate_raid_redundancy.exit_crit_edge
  %87 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %87)
  %rdev.129 = load ptr, ptr %disks, align 8
  %cmp50.not30 = icmp eq ptr %rdev.129, %disks
  br i1 %cmp50.not30, label %validate_raid_redundancy.exit.cleanup_crit_edge, label %validate_raid_redundancy.exit.for.body52_crit_edge

validate_raid_redundancy.exit.for.body52_crit_edge: ; preds = %validate_raid_redundancy.exit
  br label %for.body52

validate_raid_redundancy.exit.cleanup_crit_edge:  ; preds = %validate_raid_redundancy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38:                                        ; preds = %sw.default.i.if.then38_crit_edge, %land.lhs.true86.i.if.then38_crit_edge, %land.lhs.true.i11.if.then38_crit_edge, %do.end.i, %sw.bb12.i.if.then38_crit_edge, %sw.bb.i.if.then38_crit_edge
  %88 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rs, align 8
  %error40 = getelementptr inbounds %struct.dm_target, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %error40 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.167, ptr %error40, align 8
  br label %cleanup

for.body52:                                       ; preds = %for.inc62.for.body52_crit_edge, %validate_raid_redundancy.exit.for.body52_crit_edge
  %rdev.131 = phi ptr [ %rdev.1, %for.inc62.for.body52_crit_edge ], [ %rdev.129, %validate_raid_redundancy.exit.for.body52_crit_edge ]
  %flags53 = getelementptr inbounds %struct.md_rdev, ptr %rdev.131, i32 0, i32 16
  %91 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags53, align 4
  %93 = and i32 %92, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool55.not = icmp ne i32 %93, 0
  %cmp56.not = icmp eq ptr %rdev.131, %freshest.1
  %or.cond1 = select i1 %tobool55.not, i1 true, i1 %cmp56.not
  br i1 %or.cond1, label %for.body52.for.inc62_crit_edge, label %land.lhs.true57

for.body52.for.inc62_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc62

land.lhs.true57:                                  ; preds = %for.body52
  %call58 = tail call fastcc i32 @super_validate(ptr noundef %rs, ptr noundef %rdev.131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.for.inc62_crit_edge, label %land.lhs.true57.cleanup_crit_edge

land.lhs.true57.cleanup_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true57.for.inc62_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc62

for.inc62:                                        ; preds = %land.lhs.true57.for.inc62_crit_edge, %for.body52.for.inc62_crit_edge
  %94 = ptrtoint ptr %rdev.131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %rdev.1 = load ptr, ptr %rdev.131, align 8
  %cmp50.not = icmp eq ptr %rdev.1, %disks
  br i1 %cmp50.not, label %for.inc62.cleanup_crit_edge, label %for.inc62.for.body52_crit_edge

for.inc62.for.body52_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body52

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %land.lhs.true57.cleanup_crit_edge, %if.then38, %validate_raid_redundancy.exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then38 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %validate_raid_redundancy.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true57.cleanup_crit_edge ], [ 0, %for.inc62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @__rdev_sectors(ptr noundef %rs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.cleanup6_crit_edge

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup6

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.017, i32 2, i32 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bdev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.017, i32 2, i32 5
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true3

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sectors = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.017, i32 2, i32 1
  %7 = ptrtoint ptr %sectors to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sectors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool4.not = icmp eq i64 %8, 0
  br i1 %tobool4.not, label %land.lhs.true3.for.inc_crit_edge, label %land.lhs.true3.cleanup6_crit_edge

land.lhs.true3.cleanup6_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup6

land.lhs.true3.for.inc_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true3.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %land.lhs.true3.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi i64 [ 0, %entry.cleanup6_crit_edge ], [ %8, %land.lhs.true3.cleanup6_crit_edge ], [ 0, %for.inc.cleanup6_crit_edge ]
  ret i64 %retval.2
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @_get_reshape_sectors(ptr noundef readonly %rs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rdev.0.in = phi ptr [ %disks, %entry ], [ %rdev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rdev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rdev.0 = load ptr, ptr %rdev.0.in, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.0, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 4096
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.0, i32 0, i32 10
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data_offset, align 8
  %new_data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.0, i32 0, i32 11
  %6 = ptrtoint ptr %new_data_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %new_data_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp3 = icmp ugt i64 %5, %7
  %sub = sub i64 %5, %7
  %sub8 = sub i64 %7, %5
  %cond = select i1 %cmp3, i64 %sub, i64 %sub8
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %reshape_sectors.0 = phi i64 [ %cond, %if.then ], [ 0, %for.cond.for.end_crit_edge ]
  %data_offset14 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %8 = ptrtoint ptr %data_offset14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_offset14, align 8
  %conv = sext i32 %9 to i64
  %10 = tail call i64 @llvm.umax.i64(i64 %reshape_sectors.0, i64 %conv)
  ret i64 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_table_event(ptr noundef readonly %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -3196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !637
  %reshape_position.i = getelementptr i8, ptr %ws, i32 -2780
  %0 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp.i.not = icmp eq i64 %1, -1
  br i1 %cmp.i.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %entry
  %level.i = getelementptr i8, ptr %ws, i32 -2868
  %2 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp.i11 = icmp eq i32 %3, 10
  br i1 %cmp.i11, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then5:                                         ; preds = %if.then
  %disks.i = getelementptr i8, ptr %ws, i32 -3108
  %4 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rdev.012.i = load ptr, ptr %disks.i, align 8
  %cmp.not13.i = icmp eq ptr %rdev.012.i, %disks.i
  br i1 %cmp.not13.i, label %if.then5.if.end_crit_edge, label %for.body.lr.ph.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then5
  %dev_sectors.i = getelementptr i8, ptr %ws, i32 -2836
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rdev.014.i = phi ptr [ %rdev.012.i, %for.body.lr.ph.i ], [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 16
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %dev_sectors.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_sectors.i, align 8
  %sectors.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.014.i, i32 0, i32 1
  %10 = ptrtoint ptr %sectors.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %sectors.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %rdev.014.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %rdev.0.i = load ptr, ptr %rdev.014.i, align 8
  %cmp.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %call.i = tail call ptr @dm_table_get_md(ptr noundef %15) #16
  %call1.i = tail call ptr @dm_disk(ptr noundef %call.i) #16
  %array_sectors.i = getelementptr i8, ptr %ws, i32 -2828
  %16 = ptrtoint ptr %array_sectors.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %array_sectors.i, align 8
  %call2.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %call1.i, i64 noundef %17) #16
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void @dm_table_event(ptr noundef %21) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rs_check_takeover(ptr noundef %rs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %degraded = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 64
  %0 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %degraded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.235, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 34
  %5 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.i.not = icmp eq i64 %6, -1
  br i1 %cmp.i.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rs, align 8
  %error4 = getelementptr inbounds %struct.dm_target, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.236, ptr %error4, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %level = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %11, label %if.end5.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 10, label %sw.bb28
    i32 1, label %sw.bb71
    i32 4, label %sw.bb91
    i32 5, label %sw.bb113
    i32 6, label %sw.bb154
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  %new_level = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %13 = ptrtoint ptr %new_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_level, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %14, label %sw.bb.if.end18_crit_edge [
    i32 1, label %sw.bb.land.lhs.true_crit_edge
    i32 5, label %sw.bb.land.lhs.true_crit_edge288
    i32 10, label %land.lhs.true13
  ]

sw.bb.land.lhs.true_crit_edge288:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

sw.bb.land.lhs.true_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %sw.bb.land.lhs.true_crit_edge, %sw.bb.land.lhs.true_crit_edge288
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %16 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true13:                                  ; preds = %sw.bb
  %raid_disks14 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %18 = ptrtoint ptr %raid_disks14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %raid_disks14, align 8
  %raid_disks15 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %20 = ptrtoint ptr %raid_disks15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %raid_disks15, align 8
  %rem = srem i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool16.not = icmp eq i32 %rem, 0
  br i1 %tobool16.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.sw.epilog_crit_edge

land.lhs.true13.sw.epilog_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %sw.bb.if.end18_crit_edge
  %22 = add i32 %14, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %land.lhs.true21, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true21:                                  ; preds = %if.end18
  %new_layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %24 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_layout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp22 = icmp eq i32 %25, 5
  br i1 %cmp22, label %land.lhs.true23, label %land.lhs.true21.sw.epilog_crit_edge

land.lhs.true21.sw.epilog_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %raid_disks24 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %26 = ptrtoint ptr %raid_disks24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %raid_disks24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp25 = icmp sgt i32 %27, 1
  br i1 %cmp25, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.sw.epilog_crit_edge

land.lhs.true23.sw.epilog_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb28:                                          ; preds = %if.end5
  %layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %28 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %layout, align 4
  %and.i = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end31, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end31:                                         ; preds = %sw.bb28
  %and.i253 = and i32 %29, 255
  %new_level34 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %30 = ptrtoint ptr %new_level34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_level34, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %31, label %if.end63 [
    i32 0, label %if.then36
    i32 1, label %land.lhs.true56
  ]

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i253)
  %cmp37 = icmp ugt i32 %and.i253, 1
  br i1 %cmp37, label %land.lhs.true38, label %if.end45

land.lhs.true38:                                  ; preds = %if.then36
  %raid_disks39 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %33 = ptrtoint ptr %raid_disks39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %raid_disks39, align 8
  %.frozen = freeze i32 %34
  %and.i253.frozen = freeze i32 %and.i253
  %div = udiv i32 %.frozen, %and.i253.frozen
  %35 = mul i32 %div, %and.i253.frozen
  %rem40.decomposed = sub i32 %.frozen, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40.decomposed)
  %tobool41.not = icmp eq i32 %rem40.decomposed, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true38.sw.epilog_crit_edge

land.lhs.true38.sw.epilog_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %raid_disks39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %raid_disks39, align 8
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 35
  %37 = ptrtoint ptr %delta_disks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %delta_disks, align 8
  br label %cleanup

if.end45:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i253)
  %cmp46 = icmp eq i32 %and.i253, 1
  %38 = and i32 %29, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp50 = icmp ne i32 %38, 0
  %or.cond = and i1 %cmp46, %cmp50
  br i1 %or.cond, label %if.end45.cleanup_crit_edge, label %if.end45.sw.epilog_crit_edge

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true56:                                  ; preds = %if.end31
  %39 = lshr i32 %29, 8
  %and.i.i254 = and i32 %39, 255
  %40 = tail call i32 @llvm.umax.i32(i32 %and.i253, i32 %and.i.i254)
  %raid_disks60 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %41 = ptrtoint ptr %raid_disks60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %raid_disks60, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp61 = icmp eq i32 %40, %42
  br i1 %cmp61, label %land.lhs.true56.cleanup_crit_edge, label %land.lhs.true56.sw.epilog_crit_edge

land.lhs.true56.sw.epilog_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end63:                                         ; preds = %if.end31
  %43 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %land.lhs.true66, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true66:                                  ; preds = %if.end63
  %raid_disks67 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %45 = ptrtoint ptr %raid_disks67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %raid_disks67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp68 = icmp eq i32 %46, 2
  br i1 %cmp68, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true66.sw.epilog_crit_edge

land.lhs.true66.sw.epilog_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb71:                                          ; preds = %if.end5
  %new_level72 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %47 = ptrtoint ptr %new_level72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new_level72, align 4
  %49 = and i32 %48, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %land.lhs.true74, label %if.end79

land.lhs.true74:                                  ; preds = %sw.bb71
  %raid_disks75 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %51 = ptrtoint ptr %raid_disks75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %raid_disks75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp76 = icmp eq i32 %52, 2
  br i1 %cmp76, label %if.then77, label %land.lhs.true74.sw.epilog_crit_edge

land.lhs.true74.sw.epilog_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %degraded to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %degraded, align 8
  br label %cleanup

if.end79:                                         ; preds = %sw.bb71
  %54 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.320)
  switch i32 %48, label %if.end79.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true82
    i32 10, label %if.end79.cleanup_crit_edge
  ]

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true82:                                  ; preds = %if.end79
  %raid_disks83 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %55 = ptrtoint ptr %raid_disks83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %raid_disks83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp84 = icmp eq i32 %56, 1
  br i1 %cmp84, label %land.lhs.true82.cleanup_crit_edge, label %land.lhs.true82.sw.epilog_crit_edge

land.lhs.true82.sw.epilog_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb91:                                          ; preds = %if.end5
  %new_level92 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %57 = ptrtoint ptr %new_level92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %new_level92, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %58, label %sw.bb91.if.end105_crit_edge [
    i32 0, label %sw.bb91.cleanup_crit_edge
    i32 1, label %sw.bb91.land.lhs.true101_crit_edge
    i32 5, label %sw.bb91.land.lhs.true101_crit_edge289
  ]

sw.bb91.land.lhs.true101_crit_edge289:            ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true101

sw.bb91.land.lhs.true101_crit_edge:               ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true101

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb91.if.end105_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

land.lhs.true101:                                 ; preds = %sw.bb91.land.lhs.true101_crit_edge, %sw.bb91.land.lhs.true101_crit_edge289
  %raid_disks102 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %60 = ptrtoint ptr %raid_disks102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %raid_disks102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp103 = icmp eq i32 %61, 2
  br i1 %cmp103, label %land.lhs.true101.cleanup_crit_edge, label %land.lhs.true101.if.end105_crit_edge

land.lhs.true101.if.end105_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

land.lhs.true101.cleanup_crit_edge:               ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end105:                                        ; preds = %land.lhs.true101.if.end105_crit_edge, %sw.bb91.if.end105_crit_edge
  %62 = add i32 %58, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %land.lhs.true108, label %if.end105.sw.epilog_crit_edge

if.end105.sw.epilog_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true108:                                 ; preds = %if.end105
  %layout109 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %64 = ptrtoint ptr %layout109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %layout109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %cmp110 = icmp eq i32 %65, 5
  br i1 %cmp110, label %land.lhs.true108.cleanup_crit_edge, label %land.lhs.true108.sw.epilog_crit_edge

land.lhs.true108.sw.epilog_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true108.cleanup_crit_edge:               ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb113:                                         ; preds = %if.end5
  %new_level114 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %66 = ptrtoint ptr %new_level114 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %new_level114, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %67, label %sw.bb113.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true116
    i32 4, label %land.lhs.true123
    i32 1, label %sw.bb113.land.lhs.true136_crit_edge
    i32 10, label %sw.bb113.land.lhs.true136_crit_edge290
    i32 6, label %sw.bb113.land.lhs.true143_crit_edge
  ]

sw.bb113.land.lhs.true143_crit_edge:              ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true143

sw.bb113.land.lhs.true136_crit_edge290:           ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true136

sw.bb113.land.lhs.true136_crit_edge:              ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true136

sw.bb113.sw.epilog_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true116:                                 ; preds = %sw.bb113
  %layout117 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %69 = ptrtoint ptr %layout117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %layout117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %70)
  %cmp118 = icmp eq i32 %70, 5
  br i1 %cmp118, label %land.lhs.true116.cleanup_crit_edge, label %land.lhs.true116.sw.epilog_crit_edge

land.lhs.true116.sw.epilog_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true116.cleanup_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true123:                                 ; preds = %sw.bb113
  %layout124 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %71 = ptrtoint ptr %layout124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %layout124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %72)
  %cmp125 = icmp eq i32 %72, 5
  br i1 %cmp125, label %land.lhs.true123.cleanup_crit_edge, label %land.lhs.true136.thread

land.lhs.true123.cleanup_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true136:                                 ; preds = %sw.bb113.land.lhs.true136_crit_edge, %sw.bb113.land.lhs.true136_crit_edge290
  %raid_disks137 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %73 = ptrtoint ptr %raid_disks137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %raid_disks137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp138 = icmp eq i32 %74, 2
  br i1 %cmp138, label %land.lhs.true136.cleanup_crit_edge, label %if.end140

land.lhs.true136.cleanup_crit_edge:               ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true136.thread:                          ; preds = %land.lhs.true123
  %raid_disks137285 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %75 = ptrtoint ptr %raid_disks137285 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %raid_disks137285, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp138286 = icmp eq i32 %76, 2
  br i1 %cmp138286, label %land.lhs.true136.thread.cleanup_crit_edge, label %land.lhs.true136.thread.sw.epilog_crit_edge

land.lhs.true136.thread.sw.epilog_crit_edge:      ; preds = %land.lhs.true136.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true136.thread.cleanup_crit_edge:        ; preds = %land.lhs.true136.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end140:                                        ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp142 = icmp eq i32 %67, 6
  br i1 %cmp142, label %if.end140.land.lhs.true143_crit_edge, label %if.end140.sw.epilog_crit_edge

if.end140.sw.epilog_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end140.land.lhs.true143_crit_edge:             ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.end140.land.lhs.true143_crit_edge, %sw.bb113.land.lhs.true143_crit_edge
  %layout144 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %77 = ptrtoint ptr %layout144 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %layout144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp145 = icmp eq i32 %78, 5
  br i1 %cmp145, label %land.lhs.true146, label %land.lhs.true143.lor.lhs.false149_crit_edge

land.lhs.true143.lor.lhs.false149_crit_edge:      ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false149

land.lhs.true146:                                 ; preds = %land.lhs.true143
  %new_layout147 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %79 = ptrtoint ptr %new_layout147 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %new_layout147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %80)
  %cmp148 = icmp eq i32 %80, 5
  br i1 %cmp148, label %land.lhs.true146.cleanup_crit_edge, label %land.lhs.true146.lor.lhs.false149_crit_edge

land.lhs.true146.lor.lhs.false149_crit_edge:      ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false149

land.lhs.true146.cleanup_crit_edge:               ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false149:                                 ; preds = %land.lhs.true146.lor.lhs.false149_crit_edge, %land.lhs.true143.lor.lhs.false149_crit_edge
  %new_layout150 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %81 = ptrtoint ptr %new_layout150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %new_layout150, align 8
  %83 = and i32 %82, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %83)
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %lor.lhs.false149.cleanup_crit_edge, label %lor.lhs.false149.sw.epilog_crit_edge

lor.lhs.false149.sw.epilog_crit_edge:             ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false149.cleanup_crit_edge:               ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb154:                                         ; preds = %if.end5
  %new_level155 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %85 = ptrtoint ptr %new_level155 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %new_level155, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.323)
  switch i32 %86, label %sw.bb154.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true157
    i32 4, label %land.lhs.true164
    i32 5, label %land.lhs.true171
  ]

sw.bb154.sw.epilog_crit_edge:                     ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true157:                                 ; preds = %sw.bb154
  %layout158 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %88 = ptrtoint ptr %layout158 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %layout158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %89)
  %cmp159 = icmp eq i32 %89, 5
  br i1 %cmp159, label %land.lhs.true157.cleanup_crit_edge, label %land.lhs.true157.sw.epilog_crit_edge

land.lhs.true157.sw.epilog_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true157.cleanup_crit_edge:               ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true164:                                 ; preds = %sw.bb154
  %layout165 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %90 = ptrtoint ptr %layout165 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %layout165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %91)
  %cmp166 = icmp eq i32 %91, 5
  br i1 %cmp166, label %land.lhs.true164.cleanup_crit_edge, label %land.lhs.true164.sw.epilog_crit_edge

land.lhs.true164.sw.epilog_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true164.cleanup_crit_edge:               ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true171:                                 ; preds = %sw.bb154
  %layout172 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %92 = ptrtoint ptr %layout172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %layout172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %93)
  %cmp173 = icmp eq i32 %93, 5
  br i1 %cmp173, label %land.lhs.true174, label %land.lhs.true171.lor.lhs.false177_crit_edge

land.lhs.true171.lor.lhs.false177_crit_edge:      ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false177

land.lhs.true174:                                 ; preds = %land.lhs.true171
  %new_layout175 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %94 = ptrtoint ptr %new_layout175 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %new_layout175, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cmp176 = icmp eq i32 %95, 5
  br i1 %cmp176, label %land.lhs.true174.cleanup_crit_edge, label %land.lhs.true174.lor.lhs.false177_crit_edge

land.lhs.true174.lor.lhs.false177_crit_edge:      ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false177

land.lhs.true174.cleanup_crit_edge:               ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false177:                                 ; preds = %land.lhs.true174.lor.lhs.false177_crit_edge, %land.lhs.true171.lor.lhs.false177_crit_edge
  %new_layout178 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %96 = ptrtoint ptr %new_layout178 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %new_layout178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %98 = icmp ult i32 %97, 4
  br i1 %98, label %lor.lhs.false177.cleanup_crit_edge, label %lor.lhs.false177.sw.epilog_crit_edge

lor.lhs.false177.sw.epilog_crit_edge:             ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false177.cleanup_crit_edge:               ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog:                                        ; preds = %lor.lhs.false177.sw.epilog_crit_edge, %land.lhs.true164.sw.epilog_crit_edge, %land.lhs.true157.sw.epilog_crit_edge, %sw.bb154.sw.epilog_crit_edge, %lor.lhs.false149.sw.epilog_crit_edge, %if.end140.sw.epilog_crit_edge, %land.lhs.true136.thread.sw.epilog_crit_edge, %land.lhs.true116.sw.epilog_crit_edge, %sw.bb113.sw.epilog_crit_edge, %land.lhs.true108.sw.epilog_crit_edge, %if.end105.sw.epilog_crit_edge, %land.lhs.true82.sw.epilog_crit_edge, %if.end79.sw.epilog_crit_edge, %land.lhs.true74.sw.epilog_crit_edge, %land.lhs.true66.sw.epilog_crit_edge, %if.end63.sw.epilog_crit_edge, %land.lhs.true56.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge, %land.lhs.true38.sw.epilog_crit_edge, %sw.bb28.sw.epilog_crit_edge, %land.lhs.true23.sw.epilog_crit_edge, %land.lhs.true21.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge, %land.lhs.true13.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %99 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rs, align 8
  %error183 = getelementptr inbounds %struct.dm_target, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %error183 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.237, ptr %error183, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false177.cleanup_crit_edge, %land.lhs.true174.cleanup_crit_edge, %land.lhs.true164.cleanup_crit_edge, %land.lhs.true157.cleanup_crit_edge, %lor.lhs.false149.cleanup_crit_edge, %land.lhs.true146.cleanup_crit_edge, %land.lhs.true136.thread.cleanup_crit_edge, %land.lhs.true136.cleanup_crit_edge, %land.lhs.true123.cleanup_crit_edge, %land.lhs.true116.cleanup_crit_edge, %land.lhs.true108.cleanup_crit_edge, %land.lhs.true101.cleanup_crit_edge, %sw.bb91.cleanup_crit_edge, %land.lhs.true82.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then77, %land.lhs.true66.cleanup_crit_edge, %land.lhs.true56.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then42, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -22, %sw.epilog ], [ 0, %if.then77 ], [ 0, %if.then42 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %land.lhs.true56.cleanup_crit_edge ], [ 0, %land.lhs.true66.cleanup_crit_edge ], [ 0, %land.lhs.true82.cleanup_crit_edge ], [ %58, %sw.bb91.cleanup_crit_edge ], [ 0, %land.lhs.true101.cleanup_crit_edge ], [ 0, %land.lhs.true108.cleanup_crit_edge ], [ 0, %land.lhs.true116.cleanup_crit_edge ], [ 0, %land.lhs.true123.cleanup_crit_edge ], [ 0, %land.lhs.true136.cleanup_crit_edge ], [ 0, %lor.lhs.false149.cleanup_crit_edge ], [ 0, %land.lhs.true146.cleanup_crit_edge ], [ 0, %land.lhs.true157.cleanup_crit_edge ], [ 0, %land.lhs.true164.cleanup_crit_edge ], [ 0, %lor.lhs.false177.cleanup_crit_edge ], [ 0, %land.lhs.true174.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ 0, %land.lhs.true136.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_setup_takeover(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %0 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %raid_disks, align 8
  %raid_disks1 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %2 = ptrtoint ptr %raid_disks1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %raid_disks1, align 8
  %data_offset = getelementptr inbounds %struct.raid_set, ptr %rs, i32 1, i32 9
  %3 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset3 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %5 = ptrtoint ptr %data_offset3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_offset3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %conv = sext i32 %cond to i64
  %raid_type = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %7 = ptrtoint ptr %raid_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %raid_type, align 8
  %level.i = getelementptr inbounds %struct.raid_type, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp.i = icmp eq i32 %10, 10
  br i1 %cmp.i, label %if.then, label %cond.end.if.end14_crit_edge

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then:                                          ; preds = %cond.end
  %level.i55 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %11 = ptrtoint ptr %level.i55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level.i55, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %12, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then5
    i32 1, label %if.then8
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %rdev.014.i = load ptr, ptr %disks.i, align 8
  %cmp.not15.i = icmp eq ptr %rdev.014.i, %disks.i
  br i1 %cmp.not15.i, label %if.then5.__reorder_raid_disk_indexes.exit_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.__reorder_raid_disk_indexes.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %__reorder_raid_disk_indexes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %rdev.017.i = phi ptr [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rdev.014.i, %if.then5.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 16
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not.i56, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc.i = add i32 %i.016.i, 1
  %raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 19
  %18 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.016.i, ptr %raid_disk.i, align 4
  %new_raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 20
  %19 = ptrtoint ptr %new_raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %new_raid_disk.i, align 8
  %saved_raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 21
  %20 = ptrtoint ptr %saved_raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %saved_raid_disk.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.016.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then.i ]
  %21 = ptrtoint ptr %rdev.017.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %rdev.0.i = load ptr, ptr %rdev.017.i, align 8
  %cmp.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i, label %for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__reorder_raid_disk_indexes.exit

__reorder_raid_disk_indexes.exit:                 ; preds = %for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge, %if.then5.__reorder_raid_disk_indexes.exit_crit_edge
  %raid10_copies = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 8
  %22 = ptrtoint ptr %raid10_copies to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %raid10_copies, align 4
  %ctr_flags8.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %24 = ptrtoint ptr %ctr_flags8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %ctr_flags8.i, align 4
  %26 = shl i32 %25, 4
  %27 = and i32 %26, 262144
  %28 = xor i32 %27, 262144
  %shl.i = shl i32 %23, 8
  %or18.i = or i32 %shl.i, %28
  %or19.i = or i32 %or18.i, 1
  br label %if.end14.sink.split

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or18.i60 = or i32 %1, 256
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then8, %__reorder_raid_disk_indexes.exit
  %or19.i.sink = phi i32 [ %or19.i, %__reorder_raid_disk_indexes.exit ], [ %or18.i60, %if.then8 ]
  %layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %29 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or19.i.sink, ptr %layout, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %cond.end.if.end14_crit_edge
  %flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #16
  %recovery_cp = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %30 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool15.not63 = icmp eq i32 %1, 0
  br i1 %tobool15.not63, label %if.end14.cleanup_crit_edge, label %while.body.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end14
  %rebuild_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %dec64.in = phi i32 [ %1, %while.body.lr.ph ], [ %dec64, %if.end26.while.body_crit_edge ]
  %dec64 = add i32 %dec64.in, -1
  %div3.i = lshr i32 %dec64, 5
  %arrayidx.i = getelementptr i32, ptr %rebuild_disks, i32 %div3.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %dec64, 31
  %33 = shl nuw i32 1, %and.i
  %34 = and i32 %32, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not = icmp eq i32 %34, 0
  br i1 %tobool20.not, label %while.body.if.end26_crit_edge, label %if.then21

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %flags22 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %dec64, i32 2, i32 16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags22) #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags22) #16
  %35 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %dec64, i32 2, i32 22
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %35, align 8
  %37 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %recovery_cp, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #16
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %while.body.if.end26_crit_edge
  %new_data_offset27 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %dec64, i32 2, i32 11
  %38 = ptrtoint ptr %new_data_offset27 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv, ptr %new_data_offset27, align 8
  %tobool15.not = icmp eq i32 %dec64, 0
  br i1 %tobool15.not, label %if.end26.cleanup_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @rs_reshape_requested(ptr nocapture noundef readonly %rs) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %new_level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %0 = ptrtoint ptr %new_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_level.i, align 4
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %2 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ne i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %or.cond = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %entry
  %delta_disks2.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %4 = ptrtoint ptr %delta_disks2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delta_disks2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end3.rs_is_layout_change.exit_crit_edge

if.end3.rs_is_layout_change.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_is_layout_change.exit

lor.lhs.false.i:                                  ; preds = %if.end3
  %new_layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %6 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_layout.i, align 8
  %layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %8 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp eq i32 %7, %9
  br i1 %cmp.not.i, label %lor.rhs.i, label %lor.lhs.false.i.rs_is_layout_change.exit_crit_edge

lor.lhs.false.i.rs_is_layout_change.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_is_layout_change.exit

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  %new_chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %10 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_chunk_sectors.i, align 4
  %chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %12 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunk_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp8.i = icmp ne i32 %11, %13
  br label %rs_is_layout_change.exit

rs_is_layout_change.exit:                         ; preds = %lor.rhs.i, %lor.lhs.false.i.rs_is_layout_change.exit_crit_edge, %if.end3.rs_is_layout_change.exit_crit_edge
  %14 = phi i1 [ true, %lor.lhs.false.i.rs_is_layout_change.exit_crit_edge ], [ true, %if.end3.rs_is_layout_change.exit_crit_edge ], [ %cmp8.i, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i41 = icmp eq i32 %1, 1
  br i1 %cmp.i41, label %if.then6, label %if.end14

if.then6:                                         ; preds = %rs_is_layout_change.exit
  %tobool.not.not = xor i1 %tobool3.not.i, true
  %brmerge = select i1 %tobool.not.not, i1 true, i1 %14
  br i1 %brmerge, label %if.then6.cleanup_crit_edge, label %land.rhs

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %15 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %raid_disks, align 8
  %raid_disks13 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %17 = ptrtoint ptr %raid_disks13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raid_disks13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp ne i32 %16, %18
  br label %cleanup

if.end14:                                         ; preds = %rs_is_layout_change.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.i43 = icmp ne i32 %1, 10
  %call4.not = xor i1 %14, true
  %brmerge38 = select i1 %cmp.i43, i1 true, i1 %call4.not
  %call4.mux = select i1 %cmp.i43, i1 %14, i1 false
  br i1 %brmerge38, label %if.end14.cleanup_crit_edge, label %land.lhs.true

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %new_layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %19 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_layout, align 8
  %and.i.i = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp ne i32 %and.i.i, 0
  %21 = and i32 %20, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i44 = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp21 = icmp sgt i32 %5, -1
  %not. = or i1 %tobool.i.not.i, %cmp.i44
  %spec.select = select i1 %not., i1 %cmp21, i1 false
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end14.cleanup_crit_edge, %land.rhs, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not.not, %if.then6.cleanup_crit_edge ], [ %cmp, %land.rhs ], [ %call4.mux, %if.end14.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_prepare_reshape(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %0 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.i = icmp eq i32 %1, 10
  br i1 %cmp.i, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %2 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %raid_disks, align 8
  %raid_disks1 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %4 = ptrtoint ptr %raid_disks1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disks1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.then.if.then42_crit_edge, label %land.lhs.true

if.then.if.then42_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

land.lhs.true:                                    ; preds = %if.then
  %layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layout, align 4
  %and.i.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i3.i = and i32 %7, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %cmp.i85 = icmp ne i32 %and.i3.i, 0
  %8 = and i1 %tobool.i.not.i, %cmp.i85
  br i1 %8, label %land.lhs.true3, label %land.lhs.true.if.then42_crit_edge

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

land.lhs.true3:                                   ; preds = %land.lhs.true
  %raid10_copies = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 8
  %9 = ptrtoint ptr %raid10_copies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %raid10_copies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %and.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and.i)
  %cmp8.not = icmp eq i32 %10, %and.i
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %land.lhs.true3.if.then42_crit_edge, label %if.then9

land.lhs.true3.if.then42_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

if.then9:                                         ; preds = %land.lhs.true3
  %rem = srem i32 %3, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool12.not = icmp eq i32 %rem, 0
  br i1 %tobool12.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.238, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then9
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %rdev.014.i = load ptr, ptr %disks.i, align 8
  %cmp.not15.i = icmp eq ptr %rdev.014.i, %disks.i
  br i1 %cmp.not15.i, label %if.end.__reorder_raid_disk_indexes.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__reorder_raid_disk_indexes.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %__reorder_raid_disk_indexes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %rdev.017.i = phi ptr [ %rdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rdev.014.i, %if.end.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 16
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %inc.i = add i32 %i.016.i, 1
  %raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 19
  %18 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.016.i, ptr %raid_disk.i, align 4
  %new_raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 20
  %19 = ptrtoint ptr %new_raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %new_raid_disk.i, align 8
  %saved_raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.017.i, i32 0, i32 21
  %20 = ptrtoint ptr %saved_raid_disk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %saved_raid_disk.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.016.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then.i ]
  %21 = ptrtoint ptr %rdev.017.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %rdev.0.i = load ptr, ptr %rdev.017.i, align 8
  %cmp.not.i = icmp eq ptr %rdev.0.i, %disks.i
  br i1 %cmp.not.i, label %for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__reorder_raid_disk_indexes.exit

__reorder_raid_disk_indexes.exit:                 ; preds = %for.inc.i.__reorder_raid_disk_indexes.exit_crit_edge, %if.end.__reorder_raid_disk_indexes.exit_crit_edge
  %22 = ptrtoint ptr %raid10_copies to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %raid10_copies, align 4
  %or18.i = or i32 %23, 256
  %24 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or18.i, ptr %layout, align 4
  %new_layout = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %25 = ptrtoint ptr %new_layout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or18.i, ptr %new_layout, align 8
  br label %if.else44

if.else19:                                        ; preds = %entry
  %26 = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %if.else19.if.then42_crit_edge, label %if.else22

if.else19.if.then42_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

if.else22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i88 = icmp eq i32 %1, 1
  br i1 %cmp.i88, label %if.then24, label %if.else35

if.then24:                                        ; preds = %if.else22
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %28 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delta_disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false)
  %degraded = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 64
  %31 = ptrtoint ptr %degraded to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %degraded, align 8
  br label %if.then42

if.else31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %raid_disks32 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %32 = ptrtoint ptr %raid_disks32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raid_disks32, align 8
  %raid_disks33 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %34 = ptrtoint ptr %raid_disks33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %raid_disks33, align 8
  br label %if.else44

if.else35:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rs, align 8
  %error37 = getelementptr inbounds %struct.dm_target, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %error37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.239, ptr %error37, align 8
  br label %cleanup

if.then42:                                        ; preds = %if.then26, %if.else19.if.then42_crit_edge, %land.lhs.true3.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge, %if.then.if.then42_crit_edge
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags) #16
  br label %cleanup

if.else44:                                        ; preds = %if.else31, %__reorder_raid_disk_indexes.exit
  %raid_disks45 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %38 = ptrtoint ptr %raid_disks45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %raid_disks45, align 8
  %raid_disks46 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %40 = ptrtoint ptr %raid_disks46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %raid_disks46, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp47 = icmp slt i32 %39, %41
  br i1 %cmp47, label %if.then48, label %if.else44.cleanup_crit_edge

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #18
  %runtime_flags49 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags49) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else44.cleanup_crit_edge, %if.then42, %if.else35, %if.then13
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.else35 ], [ 0, %if.else44.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.then42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_adjust_data_offsets(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %0 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ctr_flags, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %level.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %3 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i.i, align 8
  %5 = add i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %if.then.cleanup_crit_edge, label %lor.rhs.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 10
  br i1 %cmp.i.i, label %rs_is_reshapable.exit, label %lor.rhs.i.out_crit_edge

lor.rhs.i.out_crit_edge:                          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

rs_is_reshapable.exit:                            ; preds = %lor.rhs.i
  %new_layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %7 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_layout.i, align 8
  %and.i.i.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp ne i32 %and.i.i.i, 0
  %9 = and i32 %8, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i6.i = icmp eq i32 %9, 0
  %lnot.i = or i1 %tobool.i.not.i.i, %cmp.i6.i
  br i1 %lnot.i, label %rs_is_reshapable.exit.cleanup_crit_edge, label %rs_is_reshapable.exit.out_crit_edge

rs_is_reshapable.exit.out_crit_edge:              ; preds = %rs_is_reshapable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

rs_is_reshapable.exit.cleanup_crit_edge:          ; preds = %rs_is_reshapable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %entry
  %rdev4 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 1, i32 2
  %delta_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %10 = ptrtoint ptr %delta_disks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delta_disks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset6 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %12 = ptrtoint ptr %data_offset6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_offset6, align 8
  %conv = sext i32 %13 to i64
  br label %if.end25

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.not = icmp eq i32 %11, 0
  %data_offset14 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %14 = ptrtoint ptr %data_offset14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_offset14, align 8
  br i1 %cmp8.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %conv12 = sext i32 %15 to i64
  br label %if.end25

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %if.else13.cond.false19_crit_edge, label %cond.end

if.else13.cond.false19_crit_edge:                 ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false19

cond.end:                                         ; preds = %if.else13
  %data_offset16 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 1, i32 9
  %16 = ptrtoint ptr %data_offset16 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %data_offset16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool17.not = icmp eq i64 %17, 0
  br i1 %tobool17.not, label %cond.end.cond.false19_crit_edge, label %cond.end.cond.end21_crit_edge

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end21

cond.end.cond.false19_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false19

cond.false19:                                     ; preds = %cond.end.cond.false19_crit_edge, %if.else13.cond.false19_crit_edge
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.end.cond.end21_crit_edge
  %cond99 = phi i64 [ 0, %cond.false19 ], [ %17, %cond.end.cond.end21_crit_edge ]
  %cond22 = phi i32 [ %15, %cond.false19 ], [ 0, %cond.end.cond.end21_crit_edge ]
  %conv23 = sext i32 %cond22 to i64
  %runtime_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %runtime_flags) #16
  br label %if.end25

if.end25:                                         ; preds = %cond.end21, %if.then10, %if.then5
  %new_data_offset.0 = phi i64 [ %conv, %if.then5 ], [ 0, %if.then10 ], [ %conv23, %cond.end21 ]
  %data_offset.0 = phi i64 [ 0, %if.then5 ], [ %conv12, %if.then10 ], [ %cond99, %cond.end21 ]
  %data_offset26 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 7
  %18 = ptrtoint ptr %data_offset26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_offset26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.end25.out_crit_edge, label %land.lhs.true

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true:                                    ; preds = %if.end25
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev4, i32 0, i32 5
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bd_nr_sectors.i, align 8
  %dev_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 28
  %24 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dev_sectors, align 8
  %sub = sub i64 %23, %25
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %sub)
  %cmp30 = icmp ult i64 %sub, 32
  br i1 %cmp30, label %if.then32, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %data_offset.0)
  %tobool33.not = icmp eq i64 %data_offset.0, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.241, ptr @.str.240
  %26 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond34, ptr %error, align 8
  br label %cleanup

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.end25.out_crit_edge, %rs_is_reshapable.exit.out_crit_edge, %lor.rhs.i.out_crit_edge
  %new_data_offset.1 = phi i64 [ %new_data_offset.0, %land.lhs.true.out_crit_edge ], [ %new_data_offset.0, %if.end25.out_crit_edge ], [ 0, %rs_is_reshapable.exit.out_crit_edge ], [ 0, %lor.rhs.i.out_crit_edge ]
  %data_offset.1 = phi i64 [ %data_offset.0, %land.lhs.true.out_crit_edge ], [ %data_offset.0, %if.end25.out_crit_edge ], [ 0, %rs_is_reshapable.exit.out_crit_edge ], [ 0, %lor.rhs.i.out_crit_edge ]
  %recovery_cp = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %29 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %recovery_cp, align 8
  %dev_sectors38 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 28
  %31 = ptrtoint ptr %dev_sectors38 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dev_sectors38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp39 = icmp ult i64 %30, %32
  br i1 %cmp39, label %if.then41, label %out.if.end48_crit_edge

out.if.end48_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then41:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset45 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 1, i32 9
  %33 = ptrtoint ptr %data_offset45 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %data_offset45, align 8
  %add = add i64 %34, %30
  %35 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add, ptr %recovery_cp, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %out.if.end48_crit_edge
  %disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %36 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %36)
  %rdev.0101 = load ptr, ptr %disks, align 8
  %cmp52.not102 = icmp eq ptr %rdev.0101, %disks
  br i1 %cmp52.not102, label %if.end48.cleanup_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end48.for.body_crit_edge
  %rdev.0103 = phi ptr [ %rdev.0, %for.inc.for.body_crit_edge ], [ %rdev.0101, %if.end48.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.0103, i32 0, i32 16
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %39 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %if.then56, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %data_offset57 = getelementptr inbounds %struct.md_rdev, ptr %rdev.0103, i32 0, i32 10
  %40 = ptrtoint ptr %data_offset57 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %data_offset.1, ptr %data_offset57, align 8
  %new_data_offset58 = getelementptr inbounds %struct.md_rdev, ptr %rdev.0103, i32 0, i32 11
  %41 = ptrtoint ptr %new_data_offset58 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %new_data_offset.1, ptr %new_data_offset58, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %rdev.0103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %rdev.0 = load ptr, ptr %rdev.0103, align 8
  %cmp52.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp52.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then32, %rs_is_reshapable.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then32 ], [ 0, %rs_is_reshapable.exit.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rs_reset_inconclusive_reshape(ptr nocapture noundef %rs) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 34
  %0 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp.i.not = icmp eq i64 %1, -1
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %delta_disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 35
  %2 = ptrtoint ptr %delta_disks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delta_disks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %new_layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %4 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_layout.i, align 8
  %layout.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %6 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp eq i32 %5, %7
  br i1 %cmp.not.i, label %rs_is_layout_change.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

rs_is_layout_change.exit:                         ; preds = %lor.lhs.false.i
  %new_chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %8 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_chunk_sectors.i, align 4
  %chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %10 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8.i.not = icmp eq i32 %9, %11
  br i1 %cmp8.i.not, label %rs_is_layout_change.exit.if.end_crit_edge, label %rs_is_layout_change.exit.if.then_crit_edge

rs_is_layout_change.exit.if.then_crit_edge:       ; preds = %rs_is_layout_change.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

rs_is_layout_change.exit.if.end_crit_edge:        ; preds = %rs_is_layout_change.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %rs_is_layout_change.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %12 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level.i, align 8
  %new_level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %14 = ptrtoint ptr %new_level.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %new_level.i, align 4
  %layout.i7 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %15 = ptrtoint ptr %layout.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %layout.i7, align 4
  %new_layout.i8 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %17 = ptrtoint ptr %new_layout.i8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %new_layout.i8, align 8
  %chunk_sectors.i9 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %18 = ptrtoint ptr %chunk_sectors.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_sectors.i9, align 8
  %new_chunk_sectors.i10 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %20 = ptrtoint ptr %new_chunk_sectors.i10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %new_chunk_sectors.i10, align 4
  %21 = ptrtoint ptr %delta_disks.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %delta_disks.i, align 8
  %reshape_backwards = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 39
  %22 = ptrtoint ptr %reshape_backwards to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reshape_backwards, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %rs_is_layout_change.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r5c_journal_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_set_raid456_stripe_cache(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %md = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10
  %chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %0 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_sectors, align 8
  %new_chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %new_chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_chunk_sectors, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %div = sdiv i32 %4, 2
  %stripe_cache_entries = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 1
  %5 = ptrtoint ptr %stripe_cache_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stripe_cache_entries, align 4
  %raid_type = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %7 = ptrtoint ptr %raid_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %raid_type, align 8
  %level.i = getelementptr inbounds %struct.raid_type, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i, align 4
  %11 = add i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.242, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div)
  %cmp1 = icmp ult i32 %6, %div
  br i1 %cmp1, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, i32 noundef %6, i32 noundef %div) #19
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %nr_stripes.0 = phi i32 [ %div, %do.end ], [ %6, %if.end.if.end5_crit_edge ]
  %16 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %md, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rs, align 8
  %error8 = getelementptr inbounds %struct.dm_target, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.245, ptr %error8, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %min_nr_stripes = getelementptr inbounds %struct.r5conf, ptr %17, i32 0, i32 10
  %21 = ptrtoint ptr %min_nr_stripes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_nr_stripes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %nr_stripes.0)
  %cmp10.not = icmp eq i32 %22, %nr_stripes.0
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @raid5_set_cache_size(ptr noundef %md, i32 noundef %nr_stripes.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end20, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rs, align 8
  %error16 = getelementptr inbounds %struct.dm_target, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.246, ptr %error16, align 8
  br label %cleanup

do.end20:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %nr_stripes.0) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then14, %if.end9.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ -22, %if.then6 ], [ -22, %if.then ], [ 0, %do.end20 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rs_check_reshape(ptr nocapture noundef readonly %rs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pers = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pers, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %check_reshape = getelementptr inbounds %struct.md_personality, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %check_reshape to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_reshape, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.else

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %degraded = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 64
  %4 = ptrtoint ptr %degraded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %degraded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else7, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else7:                                         ; preds = %if.else
  %recovery_cp.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %6 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %recovery_cp.i, align 8
  %dev_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 28
  %8 = ptrtoint ptr %dev_sectors.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i = icmp ult i64 %7, %9
  br i1 %cmp.i, label %if.else7.cleanup.sink.split_crit_edge, label %if.else11

if.else7.cleanup.sink.split_crit_edge:            ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else11:                                        ; preds = %if.else7
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 34
  %10 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp.i42.not = icmp eq i64 %11, -1
  br i1 %cmp.i42.not, label %if.else16, label %if.else11.cleanup.sink.split_crit_edge

if.else11.cleanup.sink.split_crit_edge:           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else16:                                        ; preds = %if.else11
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %12 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %13, label %lor.lhs.false20 [
    i32 1, label %if.else16.cleanup_crit_edge
    i32 10, label %if.else16.cleanup_crit_edge47
  ]

if.else16.cleanup_crit_edge47:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.else16
  %15 = add i32 %13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.cleanup.sink.split_crit_edge

lor.lhs.false20.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false20.cleanup.sink.split_crit_edge, %if.else11.cleanup.sink.split_crit_edge, %if.else7.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.250.sink = phi ptr [ @.str.250, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.250, %entry.cleanup.sink.split_crit_edge ], [ @.str.251, %if.else.cleanup.sink.split_crit_edge ], [ @.str.252, %if.else7.cleanup.sink.split_crit_edge ], [ @.str.253, %if.else11.cleanup.sink.split_crit_edge ], [ @.str.254, %lor.lhs.false20.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.str.250.sink, ptr %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false20.cleanup_crit_edge, %if.else16.cleanup_crit_edge, %if.else16.cleanup_crit_edge47
  %retval.0 = phi i32 [ 0, %lor.lhs.false20.cleanup_crit_edge ], [ 0, %if.else16.cleanup_crit_edge ], [ 0, %if.else16.cleanup_crit_edge47 ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_discard_support(ptr nocapture noundef readonly %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs, align 8
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %2 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level.i, align 8
  %4 = add i32 %3, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %6 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp41 = icmp sgt i32 %7, 0
  br i1 %cmp41, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bdev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.042, i32 2, i32 5
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.cleanup24_crit_edge, label %lor.lhs.false

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup24

lor.lhs.false:                                    ; preds = %if.end
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %queue_flags, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  %brmerge = select i1 %tobool9.not, i1 true, i1 %5
  br i1 %brmerge, label %cleanup, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false
  %15 = load i8, ptr @devices_handle_discard_safely, align 1, !range !638
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %do.end, label %if.then13.for.inc_crit_edge

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255) #19
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258) #19
  br label %cleanup24

cleanup:                                          ; preds = %lor.lhs.false
  br i1 %tobool9.not, label %cleanup.cleanup24_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup24

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %if.then13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_discard_bios, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %for.end, %cleanup.cleanup24_crit_edge, %do.end, %if.end.cleanup24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @raid_set_free(ptr noundef %rs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %journal_dev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14
  %0 = ptrtoint ptr %journal_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rdev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14, i32 1
  tail call void @md_rdev_clear(ptr noundef %rdev) #16
  %2 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs, align 8
  %4 = ptrtoint ptr %journal_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_dev, align 8
  tail call void @dm_put_device(ptr noundef %3, ptr noundef %5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %raid_disks = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %6 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %raid_disks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43 = icmp sgt i32 %7, 0
  br i1 %cmp43, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.044
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.if.end11_crit_edge, label %if.then6

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rs, align 8
  tail call void @dm_put_device(ptr noundef %11, ptr noundef nonnull %9) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %for.body.if.end11_crit_edge
  %rdev14 = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.044, i32 2
  tail call void @md_rdev_clear(ptr noundef %rdev14) #16
  %data_dev = getelementptr %struct.raid_set, ptr %rs, i32 0, i32 15, i32 %i.044, i32 1
  %12 = ptrtoint ptr %data_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_dev, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end11.for.inc_crit_edge, label %if.then18

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rs, align 8
  tail call void @dm_put_device(ptr noundef %15, ptr noundef nonnull %13) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end11.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %16 = ptrtoint ptr %raid_disks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raid_disks, align 8
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %rs) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_rdev_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_region_size(ptr nocapture noundef %rs, i32 noundef %region_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %div93 = lshr i64 %3, 21
  %conv = trunc i64 %div93 to i32
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %region_size)
  %tobool.not = icmp eq i32 %region_size, 0
  br i1 %tobool.not, label %if.then1, label %if.else34

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %conv)
  %cmp = icmp ugt i32 %conv, 8192
  br i1 %cmp, label %if.then3, label %do.end30

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %conv, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #16, !range !632
  %sub.i.i.i.pn = sub nuw nsw i32 32, %6
  %cond26 = shl nuw i32 1, %sub.i.i.i.pn
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %cond26) #19
  br label %if.end65

do.end30:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #19
  br label %if.end65

if.else34:                                        ; preds = %if.end
  %conv35 = zext i32 %region_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv35)
  %cmp38 = icmp ult i64 %3, %conv35
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #18
  %error = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.145, ptr %error, align 8
  br label %cleanup

if.end42:                                         ; preds = %if.else34
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %region_size)
  %cmp43 = icmp ugt i32 %conv, %region_size
  br i1 %cmp43, label %do.end48, label %is_power_of_2.exit

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %region_size, i32 noundef %conv) #19
  %8 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rs, align 8
  %error52 = getelementptr inbounds %struct.dm_target, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %error52 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.149, ptr %error52, align 8
  br label %cleanup

is_power_of_2.exit:                               ; preds = %if.end42
  %11 = tail call i32 @llvm.ctpop.i32(i32 %region_size) #16, !range !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp1.i = icmp ult i32 %11, 2
  br i1 %cmp1.i, label %if.end58, label %if.then55

if.then55:                                        ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #18
  %error57 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %error57 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.150, ptr %error57, align 8
  br label %cleanup

if.end58:                                         ; preds = %is_power_of_2.exit
  %chunk_sectors = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %13 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chunk_sectors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %region_size)
  %cmp59 = icmp ugt i32 %14, %region_size
  br i1 %cmp59, label %if.then61, label %if.end58.if.end65_crit_edge

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %error63 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %error63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.151, ptr %error63, align 8
  br label %cleanup

if.end65:                                         ; preds = %if.end58.if.end65_crit_edge, %do.end30, %if.then3
  %region_size.addr.0 = phi i32 [ %region_size, %if.end58.if.end65_crit_edge ], [ %cond26, %if.then3 ], [ 8192, %do.end30 ]
  %conv.i = shl i32 %region_size.addr.0, 9
  %chunksize = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 86, i32 6
  %16 = ptrtoint ptr %chunksize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %chunksize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then61, %if.then55, %do.end48, %if.then40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then40 ], [ -22, %do.end48 ], [ -22, %if.then61 ], [ 0, %if.end65 ], [ -22, %if.then55 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @raid10_format_to_md_layout(ptr noundef %rs, i32 noundef %algorithm, i32 noundef %copies) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %algorithm to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %algorithm, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end17_crit_edge
    i32 1, label %entry.if.end17_crit_edge33
    i32 2, label %if.then3
    i32 3, label %if.then7
  ]

entry.if.end17_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %1 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ctr_flags, align 4
  %3 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 327680, i32 65536
  br label %if.end17

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ctr_flags8 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %4 = ptrtoint ptr %ctr_flags8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ctr_flags8, align 4
  %6 = shl i32 %5, 4
  %7 = and i32 %6, 262144
  %8 = xor i32 %7, 262144
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.then3, %entry.if.end17_crit_edge, %entry.if.end17_crit_edge33
  %n.0 = phi i32 [ %copies, %entry.if.end17_crit_edge ], [ %copies, %entry.if.end17_crit_edge33 ], [ 1, %if.then3 ], [ 1, %if.then7 ]
  %f.0 = phi i32 [ 1, %entry.if.end17_crit_edge ], [ 1, %entry.if.end17_crit_edge33 ], [ %copies, %if.then3 ], [ %copies, %if.then7 ]
  %r.0 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge33 ], [ %spec.select, %if.then3 ], [ %8, %if.then7 ]
  %shl = shl i32 %f.0, 8
  %or18 = or i32 %shl, %n.0
  %or19 = or i32 %or18, %r.0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or19, %if.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_raid_type_by_ll(i32 noundef %level, i32 noundef %layout) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %layout, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i9.i = icmp eq i32 %and.i.i, 0
  %0 = and i32 %layout, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i10.i = icmp ne i32 %0, 0
  %1 = and i1 %tobool.i.not.i9.i, %cmp.i10.i
  %and.i3.i.i = and i32 %layout, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %cmp.i.i = icmp ne i32 %and.i3.i.i, 0
  %2 = and i1 %tobool.i.not.i9.i, %cmp.i.i
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %incdec.ptr12 = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %entry ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %rtp.010 = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %entry ], [ %incdec.ptr12, %if.end.while.body_crit_edge ]
  %level1 = getelementptr %struct.raid_type, ptr %rtp.010, i32 -1, i32 4
  %3 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %level)
  %cmp2 = icmp eq i32 %4, %level
  br i1 %cmp2, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp.i = icmp eq i32 %6, 10
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.then.i:                                        ; preds = %land.lhs.true
  %algorithm.i = getelementptr %struct.raid_type, ptr %rtp.010, i32 -1, i32 5
  %7 = ptrtoint ptr %algorithm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %algorithm.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %8, label %if.then.i.lor.lhs.false_crit_edge [
    i32 0, label %if.then.i.__got_raid10.exit_crit_edge
    i32 1, label %if.then.i.__got_raid10.exit_crit_edge13
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb3.i
  ]

if.then.i.__got_raid10.exit_crit_edge13:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit

if.then.i.__got_raid10.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit

if.then.i.lor.lhs.false_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

sw.bb1.i:                                         ; preds = %if.then.i
  br i1 %tobool.i.not.i9.i, label %sw.bb1.i.lor.lhs.false_crit_edge, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb1.i.lor.lhs.false_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

sw.bb3.i:                                         ; preds = %if.then.i
  br i1 %1, label %sw.bb3.i.cleanup_crit_edge, label %sw.bb3.i.lor.lhs.false_crit_edge

sw.bb3.i.lor.lhs.false_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

__got_raid10.exit:                                ; preds = %if.then.i.__got_raid10.exit_crit_edge, %if.then.i.__got_raid10.exit_crit_edge13
  br i1 %2, label %__got_raid10.exit.cleanup_crit_edge, label %__got_raid10.exit.lor.lhs.false_crit_edge

__got_raid10.exit.lor.lhs.false_crit_edge:        ; preds = %__got_raid10.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

__got_raid10.exit.cleanup_crit_edge:              ; preds = %__got_raid10.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %__got_raid10.exit.lor.lhs.false_crit_edge, %sw.bb3.i.lor.lhs.false_crit_edge, %sw.bb1.i.lor.lhs.false_crit_edge, %if.then.i.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %algorithm = getelementptr %struct.raid_type, ptr %rtp.010, i32 -1, i32 5
  %10 = ptrtoint ptr %algorithm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %algorithm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %layout)
  %cmp3 = icmp eq i32 %11, %layout
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %while.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.raid_type, ptr %incdec.ptr12, i32 -1
  %cmp = icmp ugt ptr %incdec.ptr12, @raid_types
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %__got_raid10.exit.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %incdec.ptr12, %lor.lhs.false.cleanup_crit_edge ], [ %incdec.ptr12, %__got_raid10.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %incdec.ptr12, %sw.bb3.i.cleanup_crit_edge ], [ %incdec.ptr12, %sw.bb1.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rs_check_for_valid_flags(ptr nocapture noundef readonly %rs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctr_flags = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %0 = ptrtoint ptr %ctr_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctr_flags, align 8
  %raid_type.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %2 = ptrtoint ptr %raid_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_type.i, align 8
  %level.i.i = getelementptr inbounds %struct.raid_type, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %5, label %if.else8.i [
    i32 0, label %entry.__valid_flags.exit_crit_edge
    i32 1, label %return.fold.split.i
    i32 10, label %return.fold.split30.i
  ]

entry.__valid_flags.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__valid_flags.exit

if.else8.i:                                       ; preds = %entry
  %7 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %if.else8.i.__valid_flags.exit_crit_edge, label %if.else12.i

if.else8.i.__valid_flags.exit_crit_edge:          ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__valid_flags.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i29.i = icmp eq i32 %5, 6
  %phi.bo = select i1 %cmp.i29.i, i32 -111422, i32 -1
  br label %__valid_flags.exit

return.fold.split.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__valid_flags.exit

return.fold.split30.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__valid_flags.exit

__valid_flags.exit:                               ; preds = %return.fold.split30.i, %return.fold.split.i, %if.else12.i, %if.else8.i.__valid_flags.exit_crit_edge, %entry.__valid_flags.exit_crit_edge
  %retval.0.i = phi i32 [ -8193, %entry.__valid_flags.exit_crit_edge ], [ -111424, %if.else8.i.__valid_flags.exit_crit_edge ], [ %phi.bo, %if.else12.i ], [ -13056, %return.fold.split.i ], [ -32320, %return.fold.split30.i ]
  %and = and i32 %retval.0.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__valid_flags.exit.return_crit_edge, label %if.then

__valid_flags.exit.return_crit_edge:              ; preds = %__valid_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %__valid_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.152, ptr %error, align 8
  br label %return

return:                                           ; preds = %if.then, %__valid_flags.exit.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %__valid_flags.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @super_validate(ptr noundef %rs, ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  %failed_devices.i = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %level.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 23
  %0 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sb_page = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %sb_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb_page, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 19
  %4 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %call3 = tail call ptr @page_address(ptr noundef nonnull %3) #16
  %events = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 31
  %6 = ptrtoint ptr %events to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %events, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool4.not = icmp eq i64 %7, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %failed_devices.i) #16
  %8 = getelementptr inbounds [4 x i64], ptr %failed_devices.i, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i64], ptr %failed_devices.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i64], ptr %failed_devices.i, i32 0, i32 3
  %11 = call ptr @memset(ptr %failed_devices.i, i32 255, i32 32)
  %12 = ptrtoint ptr %sb_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb_page, align 8
  %call.i = tail call ptr @page_address(ptr noundef %13) #16
  %events.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %events.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %events.i, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i88 = icmp eq i64 %15, 0
  %..i = select i1 %tobool.not.i88, i64 1, i64 %16
  %17 = ptrtoint ptr %events to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %..i, ptr %events, align 8
  %reshape_position.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 34
  %18 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %reshape_position.i, align 8
  %num_devices.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %num_devices.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %num_devices.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #16
  %raid_disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 26
  %22 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %raid_disks.i, align 8
  %level.i89 = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %level.i89 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %level.i89, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #16
  %26 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %level.i, align 8
  %layout.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 9
  %27 = ptrtoint ptr %layout.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %layout.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %layout3.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 24
  %30 = ptrtoint ptr %layout3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %layout3.i, align 4
  %stripe_sectors.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %stripe_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %stripe_sectors.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #16
  %chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 20
  %34 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %chunk_sectors.i, align 8
  %compat_features.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %compat_features.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %compat_features.i, align 1
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i = icmp eq i32 %37, 0
  br i1 %tobool4.not.i, label %if.else31.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %new_level.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 13
  %38 = ptrtoint ptr %new_level.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %new_level.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #16
  %new_level5.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %41 = ptrtoint ptr %new_level5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %new_level5.i, align 4
  %new_layout.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %new_layout.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %new_layout.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #16
  %new_layout6.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %45 = ptrtoint ptr %new_layout6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %new_layout6.i, align 8
  %new_stripe_sectors.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 15
  %46 = ptrtoint ptr %new_stripe_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %new_stripe_sectors.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #16
  %new_chunk_sectors.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %49 = ptrtoint ptr %new_chunk_sectors.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %new_chunk_sectors.i, align 4
  %delta_disks.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 16
  %50 = ptrtoint ptr %delta_disks.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %delta_disks.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #16
  %delta_disks7.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 35
  %53 = ptrtoint ptr %delta_disks7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %delta_disks7.i, align 8
  %array_sectors.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 17
  %54 = ptrtoint ptr %array_sectors.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %array_sectors.i, align 1
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #16
  %array_sectors8.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 29
  %57 = ptrtoint ptr %array_sectors8.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %array_sectors8.i, align 8
  %flags.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 11
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %flags.i, align 1
  %60 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool10.not.i = icmp eq i32 %60, 0
  br i1 %tobool10.not.i, label %if.then.i.if.end143.i_crit_edge, label %if.then11.i

if.then.i.if.end143.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end143.i

if.then11.i:                                      ; preds = %if.then.i
  %ctr_flags.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %61 = ptrtoint ptr %ctr_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %ctr_flags.i, align 4
  %63 = and i32 %62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool13.not.i = icmp eq i32 %63, 0
  br i1 %tobool13.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #19
  br label %super_init_validation.exit.thread

if.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i = icmp slt i32 %52, 0
  br i1 %cmp.i, label %if.end.i.if.end24.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool18.not.i = icmp eq i32 %51, 0
  %64 = and i32 %59, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool21.not.i = icmp ne i32 %64, 0
  %or.cond623.i = select i1 %tobool18.not.i, i1 %tobool21.not.i, i1 false
  %spec.select658.i = zext i1 %or.cond623.i to i32
  br label %if.end24.i

if.end24.i:                                       ; preds = %lor.lhs.false.i, %if.end.i.if.end24.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end.i.if.end24.i_crit_edge ], [ %spec.select658.i, %lor.lhs.false.i ]
  %reshape_backwards23.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 39
  %65 = ptrtoint ptr %reshape_backwards23.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i, ptr %reshape_backwards23.i, align 8
  %reshape_position25.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 12
  %66 = ptrtoint ptr %reshape_position25.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %reshape_position25.i, align 1
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #16
  %69 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %reshape_position.i, align 8
  %and.i.i.i.i = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i9.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %70 = and i32 %29, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i10.i.i.i = icmp ne i32 %70, 0
  %71 = and i1 %tobool.i.not.i9.i.i.i, %cmp.i10.i.i.i
  %and.i3.i.i.i.i = and i32 %29, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i3.i.i.i.i, 0
  %72 = and i1 %tobool.i.not.i9.i.i.i, %cmp.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 167772160
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end24.i
  %incdec.ptr12.i.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %if.end24.i ], [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %rtp.010.i.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %if.end24.i ], [ %incdec.ptr12.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %level1.i.i = getelementptr %struct.raid_type, ptr %rtp.010.i.i, i32 -1, i32 4
  %73 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %level1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %25)
  %cmp2.i.i = icmp eq i32 %74, %25
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i
  %algorithm.i.i.i = getelementptr %struct.raid_type, ptr %rtp.010.i.i, i32 -1, i32 5
  %75 = ptrtoint ptr %algorithm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %algorithm.i.i.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %76, label %if.then.i.i.i.lor.lhs.false.i.i_crit_edge [
    i32 0, label %if.then.i.i.i.__got_raid10.exit.i.i_crit_edge
    i32 1, label %if.then.i.i.i.__got_raid10.exit.i.i_crit_edge96
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb3.i.i.i
  ]

if.then.i.i.i.__got_raid10.exit.i.i_crit_edge96:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i.i

if.then.i.i.i.__got_raid10.exit.i.i_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i.i

if.then.i.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i.i
  br i1 %tobool.i.not.i9.i.i.i, label %sw.bb1.i.i.i.lor.lhs.false.i.i_crit_edge, label %sw.bb1.i.i.i.get_raid_type_by_ll.exit.i_crit_edge

sw.bb1.i.i.i.get_raid_type_by_ll.exit.i_crit_edge: ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit.i

sw.bb1.i.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i.i
  br i1 %71, label %sw.bb3.i.i.i.get_raid_type_by_ll.exit.i_crit_edge, label %sw.bb3.i.i.i.lor.lhs.false.i.i_crit_edge

sw.bb3.i.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

sw.bb3.i.i.i.get_raid_type_by_ll.exit.i_crit_edge: ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit.i

__got_raid10.exit.i.i:                            ; preds = %if.then.i.i.i.__got_raid10.exit.i.i_crit_edge, %if.then.i.i.i.__got_raid10.exit.i.i_crit_edge96
  br i1 %72, label %__got_raid10.exit.i.i.get_raid_type_by_ll.exit.i_crit_edge, label %__got_raid10.exit.i.i.lor.lhs.false.i.i_crit_edge

__got_raid10.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %__got_raid10.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i.i

__got_raid10.exit.i.i.get_raid_type_by_ll.exit.i_crit_edge: ; preds = %__got_raid10.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit.i

lor.lhs.false.i.i:                                ; preds = %__got_raid10.exit.i.i.lor.lhs.false.i.i_crit_edge, %sw.bb3.i.i.i.lor.lhs.false.i.i_crit_edge, %sw.bb1.i.i.i.lor.lhs.false.i.i_crit_edge, %if.then.i.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge
  %algorithm.i.i = getelementptr %struct.raid_type, ptr %rtp.010.i.i, i32 -1, i32 5
  %78 = ptrtoint ptr %algorithm.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %algorithm.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %29)
  %cmp3.i.i = icmp eq i32 %79, %29
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.get_raid_type_by_ll.exit.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

lor.lhs.false.i.i.get_raid_type_by_ll.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.raid_type, ptr %incdec.ptr12.i.i, i32 -1
  %cmp.i.i = icmp ugt ptr %incdec.ptr12.i.i, @raid_types
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.get_raid_type_by_ll.exit.i_crit_edge

if.end.i.i.get_raid_type_by_ll.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

get_raid_type_by_ll.exit.i:                       ; preds = %if.end.i.i.get_raid_type_by_ll.exit.i_crit_edge, %lor.lhs.false.i.i.get_raid_type_by_ll.exit.i_crit_edge, %__got_raid10.exit.i.i.get_raid_type_by_ll.exit.i_crit_edge, %sw.bb3.i.i.i.get_raid_type_by_ll.exit.i_crit_edge, %sw.bb1.i.i.i.get_raid_type_by_ll.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %incdec.ptr12.i.i, %lor.lhs.false.i.i.get_raid_type_by_ll.exit.i_crit_edge ], [ %incdec.ptr12.i.i, %__got_raid10.exit.i.i.get_raid_type_by_ll.exit.i_crit_edge ], [ null, %if.end.i.i.get_raid_type_by_ll.exit.i_crit_edge ], [ %incdec.ptr12.i.i, %sw.bb3.i.i.i.get_raid_type_by_ll.exit.i_crit_edge ], [ %incdec.ptr12.i.i, %sw.bb1.i.i.i.get_raid_type_by_ll.exit.i_crit_edge ]
  %raid_type.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %80 = ptrtoint ptr %raid_type.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i.i, ptr %raid_type.i, align 8
  br label %if.end143.i

if.else31.i:                                      ; preds = %land.lhs.true
  %and.i.i.i527.i = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i527.i)
  %tobool.i.not.i9.i.i528.i = icmp eq i32 %and.i.i.i527.i, 0
  %81 = and i32 %29, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i10.i.i529.i = icmp ne i32 %81, 0
  %82 = and i1 %tobool.i.not.i9.i.i528.i, %cmp.i10.i.i529.i
  %and.i3.i.i.i530.i = and i32 %29, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i530.i)
  %cmp.i.i.i531.i = icmp ne i32 %and.i3.i.i.i530.i, 0
  %83 = and i1 %tobool.i.not.i9.i.i528.i, %cmp.i.i.i531.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %24)
  %cmp.i.i537.i = icmp eq i32 %24, 167772160
  br label %while.body.i536.i

while.body.i536.i:                                ; preds = %if.end.i549.i.while.body.i536.i_crit_edge, %if.else31.i
  %incdec.ptr12.i532.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %if.else31.i ], [ %incdec.ptr.i547.i, %if.end.i549.i.while.body.i536.i_crit_edge ]
  %rtp.010.i533.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %if.else31.i ], [ %incdec.ptr12.i532.i, %if.end.i549.i.while.body.i536.i_crit_edge ]
  %level1.i534.i = getelementptr %struct.raid_type, ptr %rtp.010.i533.i, i32 -1, i32 4
  %84 = ptrtoint ptr %level1.i534.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %level1.i534.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %25)
  %cmp2.i535.i = icmp eq i32 %85, %25
  br i1 %cmp2.i535.i, label %land.lhs.true.i538.i, label %while.body.i536.i.if.end.i549.i_crit_edge

while.body.i536.i.if.end.i549.i_crit_edge:        ; preds = %while.body.i536.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i549.i

land.lhs.true.i538.i:                             ; preds = %while.body.i536.i
  br i1 %cmp.i.i537.i, label %if.then.i.i540.i, label %land.lhs.true.i538.i.lor.lhs.false.i546.i_crit_edge

land.lhs.true.i538.i.lor.lhs.false.i546.i_crit_edge: ; preds = %land.lhs.true.i538.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i546.i

if.then.i.i540.i:                                 ; preds = %land.lhs.true.i538.i
  %algorithm.i.i539.i = getelementptr %struct.raid_type, ptr %rtp.010.i533.i, i32 -1, i32 5
  %86 = ptrtoint ptr %algorithm.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %algorithm.i.i539.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %87, label %if.then.i.i540.i.lor.lhs.false.i546.i_crit_edge [
    i32 0, label %if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge
    i32 1, label %if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge97
    i32 2, label %sw.bb1.i.i541.i
    i32 3, label %sw.bb3.i.i542.i
  ]

if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge97: ; preds = %if.then.i.i540.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i543.i

if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge: ; preds = %if.then.i.i540.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i543.i

if.then.i.i540.i.lor.lhs.false.i546.i_crit_edge:  ; preds = %if.then.i.i540.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i546.i

sw.bb1.i.i541.i:                                  ; preds = %if.then.i.i540.i
  br i1 %tobool.i.not.i9.i.i528.i, label %sw.bb1.i.i541.i.lor.lhs.false.i546.i_crit_edge, label %sw.bb1.i.i541.i.get_raid_type_by_ll.exit551.i_crit_edge

sw.bb1.i.i541.i.get_raid_type_by_ll.exit551.i_crit_edge: ; preds = %sw.bb1.i.i541.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit551.i

sw.bb1.i.i541.i.lor.lhs.false.i546.i_crit_edge:   ; preds = %sw.bb1.i.i541.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i546.i

sw.bb3.i.i542.i:                                  ; preds = %if.then.i.i540.i
  br i1 %82, label %sw.bb3.i.i542.i.get_raid_type_by_ll.exit551.i_crit_edge, label %sw.bb3.i.i542.i.lor.lhs.false.i546.i_crit_edge

sw.bb3.i.i542.i.lor.lhs.false.i546.i_crit_edge:   ; preds = %sw.bb3.i.i542.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i546.i

sw.bb3.i.i542.i.get_raid_type_by_ll.exit551.i_crit_edge: ; preds = %sw.bb3.i.i542.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit551.i

__got_raid10.exit.i543.i:                         ; preds = %if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge, %if.then.i.i540.i.__got_raid10.exit.i543.i_crit_edge97
  br i1 %83, label %__got_raid10.exit.i543.i.get_raid_type_by_ll.exit551.i_crit_edge, label %__got_raid10.exit.i543.i.lor.lhs.false.i546.i_crit_edge

__got_raid10.exit.i543.i.lor.lhs.false.i546.i_crit_edge: ; preds = %__got_raid10.exit.i543.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i546.i

__got_raid10.exit.i543.i.get_raid_type_by_ll.exit551.i_crit_edge: ; preds = %__got_raid10.exit.i543.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit551.i

lor.lhs.false.i546.i:                             ; preds = %__got_raid10.exit.i543.i.lor.lhs.false.i546.i_crit_edge, %sw.bb3.i.i542.i.lor.lhs.false.i546.i_crit_edge, %sw.bb1.i.i541.i.lor.lhs.false.i546.i_crit_edge, %if.then.i.i540.i.lor.lhs.false.i546.i_crit_edge, %land.lhs.true.i538.i.lor.lhs.false.i546.i_crit_edge
  %algorithm.i544.i = getelementptr %struct.raid_type, ptr %rtp.010.i533.i, i32 -1, i32 5
  %89 = ptrtoint ptr %algorithm.i544.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %algorithm.i544.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %29)
  %cmp3.i545.i = icmp eq i32 %90, %29
  br i1 %cmp3.i545.i, label %lor.lhs.false.i546.i.get_raid_type_by_ll.exit551.i_crit_edge, label %lor.lhs.false.i546.i.if.end.i549.i_crit_edge

lor.lhs.false.i546.i.if.end.i549.i_crit_edge:     ; preds = %lor.lhs.false.i546.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i549.i

lor.lhs.false.i546.i.get_raid_type_by_ll.exit551.i_crit_edge: ; preds = %lor.lhs.false.i546.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit551.i

if.end.i549.i:                                    ; preds = %lor.lhs.false.i546.i.if.end.i549.i_crit_edge, %while.body.i536.i.if.end.i549.i_crit_edge
  %incdec.ptr.i547.i = getelementptr %struct.raid_type, ptr %incdec.ptr12.i532.i, i32 -1
  %cmp.i548.i = icmp ugt ptr %incdec.ptr12.i532.i, @raid_types
  br i1 %cmp.i548.i, label %if.end.i549.i.while.body.i536.i_crit_edge, label %if.end.i549.i.get_raid_type_by_ll.exit551.i_crit_edge

if.end.i549.i.get_raid_type_by_ll.exit551.i_crit_edge: ; preds = %if.end.i549.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit551.i

if.end.i549.i.while.body.i536.i_crit_edge:        ; preds = %if.end.i549.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i536.i

get_raid_type_by_ll.exit551.i:                    ; preds = %if.end.i549.i.get_raid_type_by_ll.exit551.i_crit_edge, %lor.lhs.false.i546.i.get_raid_type_by_ll.exit551.i_crit_edge, %__got_raid10.exit.i543.i.get_raid_type_by_ll.exit551.i_crit_edge, %sw.bb3.i.i542.i.get_raid_type_by_ll.exit551.i_crit_edge, %sw.bb1.i.i541.i.get_raid_type_by_ll.exit551.i_crit_edge
  %retval.0.i550.i = phi ptr [ %incdec.ptr12.i532.i, %lor.lhs.false.i546.i.get_raid_type_by_ll.exit551.i_crit_edge ], [ %incdec.ptr12.i532.i, %__got_raid10.exit.i543.i.get_raid_type_by_ll.exit551.i_crit_edge ], [ null, %if.end.i549.i.get_raid_type_by_ll.exit551.i_crit_edge ], [ %incdec.ptr12.i532.i, %sw.bb3.i.i542.i.get_raid_type_by_ll.exit551.i_crit_edge ], [ %incdec.ptr12.i532.i, %sw.bb1.i.i541.i.get_raid_type_by_ll.exit551.i_crit_edge ]
  %new_level35.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 36
  %91 = ptrtoint ptr %new_level35.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %new_level35.i, align 4
  %new_layout36.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 37
  %93 = ptrtoint ptr %new_layout36.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %new_layout36.i, align 8
  %and.i.i.i552.i = and i32 %94, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i552.i)
  %tobool.i.not.i9.i.i553.i = icmp eq i32 %and.i.i.i552.i, 0
  %95 = and i32 %94, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i10.i.i554.i = icmp ne i32 %95, 0
  %96 = and i1 %tobool.i.not.i9.i.i553.i, %cmp.i10.i.i554.i
  %and.i3.i.i.i555.i = and i32 %94, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i.i555.i)
  %cmp.i.i.i556.i = icmp ne i32 %and.i3.i.i.i555.i, 0
  %97 = and i1 %tobool.i.not.i9.i.i553.i, %cmp.i.i.i556.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %92)
  %cmp.i.i562.i = icmp eq i32 %92, 10
  br label %while.body.i561.i

while.body.i561.i:                                ; preds = %if.end.i574.i.while.body.i561.i_crit_edge, %get_raid_type_by_ll.exit551.i
  %incdec.ptr12.i557.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 0, i32 19), %get_raid_type_by_ll.exit551.i ], [ %incdec.ptr.i572.i, %if.end.i574.i.while.body.i561.i_crit_edge ]
  %rtp.010.i558.i = phi ptr [ getelementptr inbounds ([20 x %struct.raid_type], ptr @raid_types, i32 1, i32 0), %get_raid_type_by_ll.exit551.i ], [ %incdec.ptr12.i557.i, %if.end.i574.i.while.body.i561.i_crit_edge ]
  %level1.i559.i = getelementptr %struct.raid_type, ptr %rtp.010.i558.i, i32 -1, i32 4
  %98 = ptrtoint ptr %level1.i559.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %level1.i559.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %92)
  %cmp2.i560.i = icmp eq i32 %99, %92
  br i1 %cmp2.i560.i, label %land.lhs.true.i563.i, label %while.body.i561.i.if.end.i574.i_crit_edge

while.body.i561.i.if.end.i574.i_crit_edge:        ; preds = %while.body.i561.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i574.i

land.lhs.true.i563.i:                             ; preds = %while.body.i561.i
  br i1 %cmp.i.i562.i, label %if.then.i.i565.i, label %land.lhs.true.i563.i.lor.lhs.false.i571.i_crit_edge

land.lhs.true.i563.i.lor.lhs.false.i571.i_crit_edge: ; preds = %land.lhs.true.i563.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i571.i

if.then.i.i565.i:                                 ; preds = %land.lhs.true.i563.i
  %algorithm.i.i564.i = getelementptr %struct.raid_type, ptr %rtp.010.i558.i, i32 -1, i32 5
  %100 = ptrtoint ptr %algorithm.i.i564.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %algorithm.i.i564.i, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %101, label %if.then.i.i565.i.lor.lhs.false.i571.i_crit_edge [
    i32 0, label %if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge
    i32 1, label %if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge98
    i32 2, label %sw.bb1.i.i566.i
    i32 3, label %sw.bb3.i.i567.i
  ]

if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge98: ; preds = %if.then.i.i565.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i568.i

if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge: ; preds = %if.then.i.i565.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__got_raid10.exit.i568.i

if.then.i.i565.i.lor.lhs.false.i571.i_crit_edge:  ; preds = %if.then.i.i565.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i571.i

sw.bb1.i.i566.i:                                  ; preds = %if.then.i.i565.i
  br i1 %tobool.i.not.i9.i.i553.i, label %sw.bb1.i.i566.i.lor.lhs.false.i571.i_crit_edge, label %sw.bb1.i.i566.i.get_raid_type_by_ll.exit576.i_crit_edge

sw.bb1.i.i566.i.get_raid_type_by_ll.exit576.i_crit_edge: ; preds = %sw.bb1.i.i566.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit576.i

sw.bb1.i.i566.i.lor.lhs.false.i571.i_crit_edge:   ; preds = %sw.bb1.i.i566.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i571.i

sw.bb3.i.i567.i:                                  ; preds = %if.then.i.i565.i
  br i1 %96, label %sw.bb3.i.i567.i.get_raid_type_by_ll.exit576.i_crit_edge, label %sw.bb3.i.i567.i.lor.lhs.false.i571.i_crit_edge

sw.bb3.i.i567.i.lor.lhs.false.i571.i_crit_edge:   ; preds = %sw.bb3.i.i567.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i571.i

sw.bb3.i.i567.i.get_raid_type_by_ll.exit576.i_crit_edge: ; preds = %sw.bb3.i.i567.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit576.i

__got_raid10.exit.i568.i:                         ; preds = %if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge, %if.then.i.i565.i.__got_raid10.exit.i568.i_crit_edge98
  br i1 %97, label %__got_raid10.exit.i568.i.get_raid_type_by_ll.exit576.i_crit_edge, label %__got_raid10.exit.i568.i.lor.lhs.false.i571.i_crit_edge

__got_raid10.exit.i568.i.lor.lhs.false.i571.i_crit_edge: ; preds = %__got_raid10.exit.i568.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i571.i

__got_raid10.exit.i568.i.get_raid_type_by_ll.exit576.i_crit_edge: ; preds = %__got_raid10.exit.i568.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit576.i

lor.lhs.false.i571.i:                             ; preds = %__got_raid10.exit.i568.i.lor.lhs.false.i571.i_crit_edge, %sw.bb3.i.i567.i.lor.lhs.false.i571.i_crit_edge, %sw.bb1.i.i566.i.lor.lhs.false.i571.i_crit_edge, %if.then.i.i565.i.lor.lhs.false.i571.i_crit_edge, %land.lhs.true.i563.i.lor.lhs.false.i571.i_crit_edge
  %algorithm.i569.i = getelementptr %struct.raid_type, ptr %rtp.010.i558.i, i32 -1, i32 5
  %103 = ptrtoint ptr %algorithm.i569.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %algorithm.i569.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %94)
  %cmp3.i570.i = icmp eq i32 %104, %94
  br i1 %cmp3.i570.i, label %lor.lhs.false.i571.i.get_raid_type_by_ll.exit576.i_crit_edge, label %lor.lhs.false.i571.i.if.end.i574.i_crit_edge

lor.lhs.false.i571.i.if.end.i574.i_crit_edge:     ; preds = %lor.lhs.false.i571.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i574.i

lor.lhs.false.i571.i.get_raid_type_by_ll.exit576.i_crit_edge: ; preds = %lor.lhs.false.i571.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit576.i

if.end.i574.i:                                    ; preds = %lor.lhs.false.i571.i.if.end.i574.i_crit_edge, %while.body.i561.i.if.end.i574.i_crit_edge
  %incdec.ptr.i572.i = getelementptr %struct.raid_type, ptr %incdec.ptr12.i557.i, i32 -1
  %cmp.i573.i = icmp ugt ptr %incdec.ptr12.i557.i, @raid_types
  br i1 %cmp.i573.i, label %if.end.i574.i.while.body.i561.i_crit_edge, label %if.end.i574.i.get_raid_type_by_ll.exit576.i_crit_edge

if.end.i574.i.get_raid_type_by_ll.exit576.i_crit_edge: ; preds = %if.end.i574.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_raid_type_by_ll.exit576.i

if.end.i574.i.while.body.i561.i_crit_edge:        ; preds = %if.end.i574.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i561.i

get_raid_type_by_ll.exit576.i:                    ; preds = %if.end.i574.i.get_raid_type_by_ll.exit576.i_crit_edge, %lor.lhs.false.i571.i.get_raid_type_by_ll.exit576.i_crit_edge, %__got_raid10.exit.i568.i.get_raid_type_by_ll.exit576.i_crit_edge, %sw.bb3.i.i567.i.get_raid_type_by_ll.exit576.i_crit_edge, %sw.bb1.i.i566.i.get_raid_type_by_ll.exit576.i_crit_edge
  %retval.0.i575.i = phi ptr [ %incdec.ptr12.i557.i, %lor.lhs.false.i571.i.get_raid_type_by_ll.exit576.i_crit_edge ], [ %incdec.ptr12.i557.i, %__got_raid10.exit.i568.i.get_raid_type_by_ll.exit576.i_crit_edge ], [ null, %if.end.i574.i.get_raid_type_by_ll.exit576.i_crit_edge ], [ %incdec.ptr12.i557.i, %sw.bb3.i.i567.i.get_raid_type_by_ll.exit576.i_crit_edge ], [ %incdec.ptr12.i557.i, %sw.bb1.i.i566.i.get_raid_type_by_ll.exit576.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %25)
  %cmp.i577.not.i = icmp eq i32 %92, %25
  br i1 %cmp.i577.not.i, label %if.else57.i, label %if.then39.i

if.then39.i:                                      ; preds = %get_raid_type_by_ll.exit576.i
  %tobool40.not.i = icmp eq ptr %retval.0.i550.i, null
  %tobool42.not.i = icmp eq ptr %retval.0.i575.i, null
  %or.cond.i = select i1 %tobool40.not.i, i1 true, i1 %tobool42.not.i
  br i1 %or.cond.i, label %do.end53.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #18
  %105 = ptrtoint ptr %retval.0.i550.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %retval.0.i550.i, align 4
  %107 = ptrtoint ptr %retval.0.i575.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %retval.0.i575.i, align 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %106, ptr noundef %108) #19
  br label %super_init_validation.exit.thread

do.end53.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #18
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #19
  br label %super_init_validation.exit.thread

if.else57.i:                                      ; preds = %get_raid_type_by_ll.exit576.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %if.else57.i.do.end139.i_crit_edge, label %if.end3.i.i

if.else57.i.do.end139.i_crit_edge:                ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139.i

if.end3.i.i:                                      ; preds = %if.else57.i
  %delta_disks2.i.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %109 = ptrtoint ptr %delta_disks2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delta_disks2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool3.not.i.i.i = icmp eq i32 %110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %94, %29
  %or.cond624.i = select i1 %tobool3.not.i.i.i, i1 %cmp.not.i.i.i, i1 false
  br i1 %or.cond624.i, label %lor.rhs.i.i.i, label %if.end3.i.i.rs_is_layout_change.exit.i.i_crit_edge

if.end3.i.i.rs_is_layout_change.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_is_layout_change.exit.i.i

lor.rhs.i.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %new_chunk_sectors.i.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %111 = ptrtoint ptr %new_chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %new_chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %33)
  %cmp8.i.i.i = icmp ne i32 %112, %33
  br label %rs_is_layout_change.exit.i.i

rs_is_layout_change.exit.i.i:                     ; preds = %lor.rhs.i.i.i, %if.end3.i.i.rs_is_layout_change.exit.i.i_crit_edge
  %113 = phi i1 [ true, %if.end3.i.i.rs_is_layout_change.exit.i.i_crit_edge ], [ %cmp8.i.i.i, %lor.rhs.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %24)
  %cmp.i41.i.i = icmp eq i32 %24, 16777216
  br i1 %cmp.i41.i.i, label %if.then6.i.i, label %if.end14.i.i

if.then6.i.i:                                     ; preds = %rs_is_layout_change.exit.i.i
  %tobool.not.not.i.i = xor i1 %tobool3.not.i.i.i, true
  %brmerge.i.i = select i1 %tobool.not.not.i.i, i1 true, i1 %113
  br i1 %brmerge.i.i, label %if.then6.i.i.rs_reshape_requested.exit.i_crit_edge, label %land.rhs.i.i

if.then6.i.i.rs_reshape_requested.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_reshape_requested.exit.i

land.rhs.i.i:                                     ; preds = %if.then6.i.i
  %raid_disks13.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %114 = ptrtoint ptr %raid_disks13.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %raid_disks13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %115)
  %cmp.i579.not.i = icmp eq i32 %21, %115
  br i1 %cmp.i579.not.i, label %land.rhs.i.i.do.end139.i_crit_edge, label %land.rhs.i.i.do.end62.i_crit_edge

land.rhs.i.i.do.end62.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62.i

land.rhs.i.i.do.end139.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139.i

if.end14.i.i:                                     ; preds = %rs_is_layout_change.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %24)
  %cmp.i43.i.i = icmp ne i32 %24, 167772160
  %call4.not.i.i = xor i1 %113, true
  %brmerge38.i.i = select i1 %cmp.i43.i.i, i1 true, i1 %call4.not.i.i
  %call4.mux.i.i = select i1 %cmp.i43.i.i, i1 %113, i1 false
  br i1 %brmerge38.i.i, label %if.end14.i.i.rs_reshape_requested.exit.i_crit_edge, label %land.lhs.true.i581.i

if.end14.i.i.rs_reshape_requested.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rs_reshape_requested.exit.i

land.lhs.true.i581.i:                             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i552.i)
  %tobool.i.not.i.i.i = icmp ne i32 %and.i.i.i552.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i44.i.i = icmp eq i32 %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp21.i.i = icmp sgt i32 %110, -1
  %not..i.i = or i1 %tobool.i.not.i.i.i, %cmp.i44.i.i
  %spec.select.i.i = select i1 %not..i.i, i1 %cmp21.i.i, i1 false
  br i1 %spec.select.i.i, label %land.lhs.true.i581.i.do.end62.i_crit_edge, label %land.lhs.true.i581.i.do.end139.i_crit_edge

land.lhs.true.i581.i.do.end139.i_crit_edge:       ; preds = %land.lhs.true.i581.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139.i

land.lhs.true.i581.i.do.end62.i_crit_edge:        ; preds = %land.lhs.true.i581.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62.i

rs_reshape_requested.exit.i:                      ; preds = %if.end14.i.i.rs_reshape_requested.exit.i_crit_edge, %if.then6.i.i.rs_reshape_requested.exit.i_crit_edge
  %retval.0.i582.i = phi i1 [ %tobool.not.not.i.i, %if.then6.i.i.rs_reshape_requested.exit.i_crit_edge ], [ %call4.mux.i.i, %if.end14.i.i.rs_reshape_requested.exit.i_crit_edge ]
  br i1 %retval.0.i582.i, label %rs_reshape_requested.exit.i.do.end62.i_crit_edge, label %rs_reshape_requested.exit.i.do.end139.i_crit_edge

rs_reshape_requested.exit.i.do.end139.i_crit_edge: ; preds = %rs_reshape_requested.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139.i

rs_reshape_requested.exit.i.do.end62.i_crit_edge: ; preds = %rs_reshape_requested.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62.i

do.end62.i:                                       ; preds = %rs_reshape_requested.exit.i.do.end62.i_crit_edge, %land.lhs.true.i581.i.do.end62.i_crit_edge, %land.rhs.i.i.do.end62.i_crit_edge
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #19
  %116 = ptrtoint ptr %layout3.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %layout3.i, align 4
  %118 = ptrtoint ptr %new_layout36.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %new_layout36.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp67.not.i = icmp eq i32 %117, %119
  br i1 %cmp67.not.i, label %do.end62.i.if.end89.i_crit_edge, label %if.then68.i

do.end62.i.if.end89.i_crit_edge:                  ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89.i

if.then68.i:                                      ; preds = %do.end62.i
  %tobool69.not.i = icmp eq ptr %retval.0.i550.i, null
  %tobool71.not.i = icmp eq ptr %retval.0.i575.i, null
  %or.cond504.i = select i1 %tobool69.not.i, i1 true, i1 %tobool71.not.i
  br i1 %or.cond504.i, label %do.end83.i, label %do.end75.i

do.end75.i:                                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #18
  %120 = ptrtoint ptr %retval.0.i550.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %retval.0.i550.i, align 4
  %122 = ptrtoint ptr %retval.0.i575.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %retval.0.i575.i, align 4
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %121, ptr noundef %123) #19
  br label %if.end89.i

do.end83.i:                                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %layout.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %layout.i, align 1
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #16
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %126, i32 noundef %119) #19
  br label %if.end89.i

if.end89.i:                                       ; preds = %do.end83.i, %do.end75.i, %do.end62.i.if.end89.i_crit_edge
  %127 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %chunk_sectors.i, align 8
  %new_chunk_sectors91.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 38
  %129 = ptrtoint ptr %new_chunk_sectors91.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %new_chunk_sectors91.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp92.not.i = icmp eq i32 %128, %130
  br i1 %cmp92.not.i, label %if.end89.i.if.end101.i_crit_edge, label %do.end96.i

if.end89.i.if.end101.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101.i

do.end96.i:                                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %128, i32 noundef %130) #19
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.end96.i, %if.end89.i.if.end101.i_crit_edge
  %131 = ptrtoint ptr %delta_disks2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delta_disks2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool103.not.i = icmp eq i32 %132, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end113.i_crit_edge, label %do.end107.i

if.end101.i.if.end113.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113.i

do.end107.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  %133 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %raid_disks.i, align 8
  %add.i = add i32 %134, %132
  %call112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %134, i32 noundef %add.i) #19
  br label %if.end113.i

if.end113.i:                                      ; preds = %do.end107.i, %if.end101.i.if.end113.i_crit_edge
  %135 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %136)
  %cmp.i584.i = icmp eq i32 %136, 10
  br i1 %cmp.i584.i, label %do.end118.i, label %if.end113.i.super_init_validation.exit.thread_crit_edge

if.end113.i.super_init_validation.exit.thread_crit_edge: ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %super_init_validation.exit.thread

do.end118.i:                                      ; preds = %if.end113.i
  %137 = ptrtoint ptr %layout3.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %layout3.i, align 4
  %and.i.i.i = and i32 %138, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i585.i, label %do.end118.i.raid10_md_layout_to_format.exit.i_crit_edge

do.end118.i.raid10_md_layout_to_format.exit.i_crit_edge: ; preds = %do.end118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit.i

if.end.i585.i:                                    ; preds = %do.end118.i
  %and.i10.i.i = and i32 %138, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i10.i.i, 0
  br i1 %cmp.not.i.i, label %if.end3.i586.i, label %if.end.i585.i.raid10_md_layout_to_format.exit.i_crit_edge

if.end.i585.i.raid10_md_layout_to_format.exit.i_crit_edge: ; preds = %if.end.i585.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit.i

if.end3.i586.i:                                   ; preds = %if.end.i585.i
  call void @__sanitizer_cov_trace_pc() #18
  %139 = and i32 %138, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp5.not.i.i = icmp eq i32 %139, 0
  %.str.137..str.232.i.i = select i1 %cmp5.not.i.i, ptr @.str.232, ptr @.str.137
  br label %raid10_md_layout_to_format.exit.i

raid10_md_layout_to_format.exit.i:                ; preds = %if.end3.i586.i, %if.end.i585.i.raid10_md_layout_to_format.exit.i_crit_edge, %do.end118.i.raid10_md_layout_to_format.exit.i_crit_edge
  %retval.0.i587.i = phi ptr [ @.str.136, %do.end118.i.raid10_md_layout_to_format.exit.i_crit_edge ], [ @.str.135, %if.end.i585.i.raid10_md_layout_to_format.exit.i_crit_edge ], [ %.str.137..str.232.i.i, %if.end3.i586.i ]
  %and.i.i588.i = and i32 %138, 255
  %140 = lshr i32 %138, 8
  %and.i.i.i589.i = and i32 %140, 255
  %141 = tail call i32 @llvm.umax.i32(i32 %and.i.i588.i, i32 %and.i.i.i589.i) #16
  %call124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull %retval.0.i587.i, i32 noundef %141) #19
  %142 = ptrtoint ptr %new_layout36.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %new_layout36.i, align 8
  %and.i.i590.i = and i32 %143, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i590.i)
  %tobool.i.not.i591.i = icmp eq i32 %and.i.i590.i, 0
  br i1 %tobool.i.not.i591.i, label %if.end.i594.i, label %raid10_md_layout_to_format.exit.i.raid10_md_layout_to_format.exit599.i_crit_edge

raid10_md_layout_to_format.exit.i.raid10_md_layout_to_format.exit599.i_crit_edge: ; preds = %raid10_md_layout_to_format.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit599.i

if.end.i594.i:                                    ; preds = %raid10_md_layout_to_format.exit.i
  %and.i10.i592.i = and i32 %143, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i592.i)
  %cmp.not.i593.i = icmp eq i32 %and.i10.i592.i, 0
  br i1 %cmp.not.i593.i, label %if.end3.i597.i, label %if.end.i594.i.raid10_md_layout_to_format.exit599.i_crit_edge

if.end.i594.i.raid10_md_layout_to_format.exit599.i_crit_edge: ; preds = %if.end.i594.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %raid10_md_layout_to_format.exit599.i

if.end3.i597.i:                                   ; preds = %if.end.i594.i
  call void @__sanitizer_cov_trace_pc() #18
  %144 = and i32 %143, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp5.not.i595.i = icmp eq i32 %144, 0
  %.str.137..str.232.i596.i = select i1 %cmp5.not.i595.i, ptr @.str.232, ptr @.str.137
  br label %raid10_md_layout_to_format.exit599.i

raid10_md_layout_to_format.exit599.i:             ; preds = %if.end3.i597.i, %if.end.i594.i.raid10_md_layout_to_format.exit599.i_crit_edge, %raid10_md_layout_to_format.exit.i.raid10_md_layout_to_format.exit599.i_crit_edge
  %retval.0.i598.i = phi ptr [ @.str.136, %raid10_md_layout_to_format.exit.i.raid10_md_layout_to_format.exit599.i_crit_edge ], [ @.str.135, %if.end.i594.i.raid10_md_layout_to_format.exit599.i_crit_edge ], [ %.str.137..str.232.i596.i, %if.end3.i597.i ]
  %and.i.i600.i = and i32 %143, 255
  %145 = lshr i32 %143, 8
  %and.i.i.i601.i = and i32 %145, 255
  %146 = tail call i32 @llvm.umax.i32(i32 %and.i.i600.i, i32 %and.i.i.i601.i) #16
  %call133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull %retval.0.i598.i, i32 noundef %146) #19
  br label %super_init_validation.exit.thread

do.end139.i:                                      ; preds = %rs_reshape_requested.exit.i.do.end139.i_crit_edge, %land.lhs.true.i581.i.do.end139.i_crit_edge, %land.rhs.i.i.do.end139.i_crit_edge, %if.else57.i.do.end139.i_crit_edge
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #19
  br label %if.end143.i

if.end143.i:                                      ; preds = %do.end139.i, %get_raid_type_by_ll.exit.i, %if.then.i.if.end143.i_crit_edge
  %ctr_flags144.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 2
  %147 = ptrtoint ptr %ctr_flags144.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %ctr_flags144.i, align 4
  %149 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool146.not.i = icmp eq i32 %149, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %if.end143.i.if.end148.i_crit_edge

if.end143.i.if.end148.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end148.i

if.then147.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #18
  %array_resync_offset.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 7
  %150 = ptrtoint ptr %array_resync_offset.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 8)
  %151 = load i64, ptr %array_resync_offset.i, align 1
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #16
  %recovery_cp.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %153 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %recovery_cp.i, align 8
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then147.i, %if.end143.i.if.end148.i_crit_edge
  %disks.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 4
  %154 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %r.0626.i = load ptr, ptr %disks.i, align 8
  %cmp151.not627.i = icmp eq ptr %r.0626.i, %disks.i
  br i1 %cmp151.not627.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end148.i
  %raid_disks185641.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %155 = ptrtoint ptr %raid_disks185641.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %raid_disks185641.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp186642.i = icmp eq i32 %156, 0
  br i1 %cmp186642.i, label %for.end.thread.i.do.end195.i_crit_edge, label %for.end.thread.i.if.end263.i_crit_edge

for.end.thread.i.if.end263.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263.i

for.end.thread.i.do.end195.i_crit_edge:           ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end195.i

for.body.lr.ph.i:                                 ; preds = %if.end148.i
  %flags152.i = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.0632.i = phi ptr [ %r.0626.i, %for.body.lr.ph.i ], [ %r.0.i, %for.inc.i.for.body.i_crit_edge ]
  %new_devs.0630.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %new_devs.2.i, %for.inc.i.for.body.i_crit_edge ]
  %rebuild_and_new.0629.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %rebuild_and_new.2.i, %for.inc.i.for.body.i_crit_edge ]
  %rebuilds.0628.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %rebuilds.2.i, %for.inc.i.for.body.i_crit_edge ]
  %157 = ptrtoint ptr %flags152.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %flags152.i, align 4
  %159 = and i32 %158, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool154.not.i = icmp eq i32 %159, 0
  br i1 %tobool154.not.i, label %if.end156.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end156.i:                                      ; preds = %for.body.i
  %flags157.i = getelementptr inbounds %struct.md_rdev, ptr %r.0632.i, i32 0, i32 16
  %160 = ptrtoint ptr %flags157.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %flags157.i, align 4
  %162 = lshr i32 %161, 10
  %.lobit.i = and i32 %162, 1
  %spec.select.i = add i32 %.lobit.i, %new_devs.0630.i
  %163 = load volatile i32, ptr %flags157.i, align 4
  %164 = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool164.not.i = icmp eq i32 %164, 0
  br i1 %tobool164.not.i, label %do.end168.i, label %if.end156.i.for.inc.i_crit_edge

if.end156.i.for.inc.i_crit_edge:                  ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.end168.i:                                      ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #18
  %raid_disk.i = getelementptr inbounds %struct.md_rdev, ptr %r.0632.i, i32 0, i32 19
  %165 = ptrtoint ptr %raid_disk.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %raid_disk.i, align 4
  %call170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %166) #19
  %inc171.i = add i32 %rebuilds.0628.i, 1
  %167 = ptrtoint ptr %flags157.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %flags157.i, align 4
  %169 = lshr i32 %168, 10
  %.lobit625.i = and i32 %169, 1
  %spec.select505.i = add i32 %.lobit625.i, %rebuild_and_new.0629.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end168.i, %if.end156.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %rebuilds.2.i = phi i32 [ %rebuilds.0628.i, %for.body.i.for.inc.i_crit_edge ], [ %rebuilds.0628.i, %if.end156.i.for.inc.i_crit_edge ], [ %inc171.i, %do.end168.i ]
  %rebuild_and_new.2.i = phi i32 [ %rebuild_and_new.0629.i, %for.body.i.for.inc.i_crit_edge ], [ %rebuild_and_new.0629.i, %if.end156.i.for.inc.i_crit_edge ], [ %spec.select505.i, %do.end168.i ]
  %new_devs.2.i = phi i32 [ %new_devs.0630.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end156.i.for.inc.i_crit_edge ], [ %spec.select.i, %do.end168.i ]
  %170 = ptrtoint ptr %r.0632.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %r.0.i = load ptr, ptr %r.0632.i, align 8
  %cmp151.not.i = icmp eq ptr %r.0.i, %disks.i
  br i1 %cmp151.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %raid_disks185.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 5
  %171 = ptrtoint ptr %raid_disks185.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %raid_disks185.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_devs.2.i, i32 %172)
  %cmp186.i = icmp eq i32 %new_devs.2.i, %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rebuilds.2.i)
  %tobool188.not.i = icmp eq i32 %rebuilds.2.i, 0
  %or.cond506.i = select i1 %cmp186.i, i1 true, i1 %tobool188.not.i
  br i1 %or.cond506.i, label %if.then189.i, label %if.else212.i

if.then189.i:                                     ; preds = %for.end.i
  br i1 %cmp186.i, label %if.then189.i.do.end195.i_crit_edge, label %if.else199.i

if.then189.i.do.end195.i_crit_edge:               ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end195.i

do.end195.i:                                      ; preds = %if.then189.i.do.end195.i_crit_edge, %for.end.thread.i.do.end195.i_crit_edge
  %raid_disks185648650.i = phi ptr [ %raid_disks185641.i, %for.end.thread.i.do.end195.i_crit_edge ], [ %raid_disks185.i, %if.then189.i.do.end195.i_crit_edge ]
  %call197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #19
  %flags198.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags198.i) #16
  br label %if.end263.i

if.else199.i:                                     ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_cmp4(i32 %new_devs.2.i, i32 %rebuilds.2.i)
  %cmp200.not.i = icmp eq i32 %new_devs.2.i, %rebuilds.2.i
  br i1 %cmp200.not.i, label %if.else199.i.if.end263.i_crit_edge, label %land.lhs.true201.i

if.else199.i.if.end263.i_crit_edge:               ; preds = %if.else199.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263.i

land.lhs.true201.i:                               ; preds = %if.else199.i
  %delta_disks202.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 6
  %173 = ptrtoint ptr %delta_disks202.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delta_disks202.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_devs.2.i, i32 %174)
  %cmp203.not.i = icmp eq i32 %new_devs.2.i, %174
  br i1 %cmp203.not.i, label %land.lhs.true201.i.if.end263.i_crit_edge, label %do.end207.i

land.lhs.true201.i.if.end263.i_crit_edge:         ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263.i

do.end207.i:                                      ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #18
  %call209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211) #19
  br label %super_init_validation.exit.thread

if.else212.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_devs.2.i)
  %tobool213.not.i = icmp eq i32 %new_devs.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %new_devs.2.i, i32 %rebuilds.2.i)
  %cmp215.not.i = icmp eq i32 %new_devs.2.i, %rebuilds.2.i
  %or.cond507.i = select i1 %tobool213.not.i, i1 true, i1 %cmp215.not.i
  br i1 %or.cond507.i, label %if.then224.i, label %do.end219.i

do.end219.i:                                      ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #18
  %call221.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %rebuilds.2.i, i32 noundef %new_devs.2.i) #19
  br label %super_init_validation.exit.thread

if.then224.i:                                     ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rebuild_and_new.2.i)
  %tobool225.not.i = icmp eq i32 %rebuild_and_new.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rebuilds.2.i, i32 %rebuild_and_new.2.i)
  %cmp227.not.i = icmp eq i32 %rebuilds.2.i, %rebuild_and_new.2.i
  %or.cond508.i = select i1 %tobool225.not.i, i1 true, i1 %cmp227.not.i
  br i1 %or.cond508.i, label %if.else236.i, label %do.end231.i

do.end231.i:                                      ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_devs.2.i)
  %cmp233.i = icmp ugt i32 %new_devs.2.i, 1
  %cond234.i = select i1 %cmp233.i, ptr @.str.219, ptr @.str.220
  %call235.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef nonnull %cond234.i) #19
  br label %super_init_validation.exit.thread

if.else236.i:                                     ; preds = %if.then224.i
  %175 = ptrtoint ptr %ctr_flags144.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %ctr_flags144.i, align 4
  %177 = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool239.not.i = icmp eq i32 %177, 0
  br i1 %tobool239.not.i, label %land.lhs.true240.i, label %if.else236.i.if.else249.i_crit_edge

if.else236.i.if.else249.i_crit_edge:              ; preds = %if.else236.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else249.i

land.lhs.true240.i:                               ; preds = %if.else236.i
  %recovery_cp.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 67
  %178 = ptrtoint ptr %recovery_cp.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %recovery_cp.i.i, align 8
  %dev_sectors.i.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 28
  %180 = ptrtoint ptr %dev_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %dev_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %179, i64 %181)
  %cmp.i602.i = icmp ult i64 %179, %181
  br i1 %cmp.i602.i, label %do.end245.i, label %land.lhs.true240.i.if.else249.i_crit_edge

land.lhs.true240.i.if.else249.i_crit_edge:        ; preds = %land.lhs.true240.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else249.i

do.end245.i:                                      ; preds = %land.lhs.true240.i
  call void @__sanitizer_cov_trace_pc() #18
  %call248.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i64 noundef %179) #19
  br label %super_init_validation.exit.thread

if.else249.i:                                     ; preds = %land.lhs.true240.i.if.else249.i_crit_edge, %if.else236.i.if.else249.i_crit_edge
  %182 = ptrtoint ptr %reshape_position.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %reshape_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %183)
  %cmp.i603.not.i = icmp eq i64 %183, -1
  br i1 %cmp.i603.not.i, label %if.else249.i.if.end263.i_crit_edge, label %do.end254.i

if.else249.i.if.end263.i_crit_edge:               ; preds = %if.else249.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263.i

do.end254.i:                                      ; preds = %if.else249.i
  call void @__sanitizer_cov_trace_pc() #18
  %call257.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i64 noundef %183) #19
  br label %super_init_validation.exit.thread

if.end263.i:                                      ; preds = %if.else249.i.if.end263.i_crit_edge, %land.lhs.true201.i.if.end263.i_crit_edge, %if.else199.i.if.end263.i_crit_edge, %do.end195.i, %for.end.thread.i.if.end263.i_crit_edge
  %raid_disks185647.i = phi ptr [ %raid_disks185.i, %if.else249.i.if.end263.i_crit_edge ], [ %raid_disks185648650.i, %do.end195.i ], [ %raid_disks185.i, %land.lhs.true201.i.if.end263.i_crit_edge ], [ %raid_disks185.i, %if.else199.i.if.end263.i_crit_edge ], [ %raid_disks185641.i, %for.end.thread.i.if.end263.i_crit_edge ]
  %failed_devices1.i.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 5
  %184 = ptrtoint ptr %failed_devices1.i.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 8)
  %185 = load i64, ptr %failed_devices1.i.i, align 1
  %186 = tail call i64 @llvm.bswap.i64(i64 %185) #16
  %187 = ptrtoint ptr %failed_devices.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %failed_devices.i, align 8
  %188 = call ptr @memset(ptr %8, i32 0, i32 24)
  %189 = ptrtoint ptr %compat_features.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %compat_features.i, align 1
  %191 = and i32 %190, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i.i, label %if.end263.i.sb_retrieve_failed_devices.exit.i_crit_edge, label %while.body.preheader.i.i

if.end263.i.sb_retrieve_failed_devices.exit.i_crit_edge: ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sb_retrieve_failed_devices.exit.i

while.body.preheader.i.i:                         ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx3.i.i = getelementptr %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 21, i32 2
  %192 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %192, i32 8)
  %193 = load i64, ptr %arrayidx3.i.i, align 1
  %194 = tail call i64 @llvm.bswap.i64(i64 %193) #16
  %195 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %194, ptr %10, align 8
  %arrayidx3.1.i.i = getelementptr %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 21, i32 1
  %196 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 8)
  %197 = load i64, ptr %arrayidx3.1.i.i, align 1
  %198 = tail call i64 @llvm.bswap.i64(i64 %197) #16
  %199 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %9, align 8
  %arrayidx3.2.i.i = getelementptr %struct.dm_raid_superblock, ptr %call.i, i32 0, i32 21, i32 0
  %200 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 8)
  %201 = load i64, ptr %arrayidx3.2.i.i, align 1
  %202 = tail call i64 @llvm.bswap.i64(i64 %201) #16
  %203 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %8, align 8
  br label %sb_retrieve_failed_devices.exit.i

sb_retrieve_failed_devices.exit.i:                ; preds = %while.body.preheader.i.i, %if.end263.i.sb_retrieve_failed_devices.exit.i_crit_edge
  %204 = ptrtoint ptr %disks.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %r.1635.i = load ptr, ptr %disks.i, align 8
  %cmp272.not636.i = icmp eq ptr %r.1635.i, %disks.i
  br i1 %cmp272.not636.i, label %sb_retrieve_failed_devices.exit.i.super_init_validation.exit_crit_edge, label %for.body274.lr.ph.i

sb_retrieve_failed_devices.exit.i.super_init_validation.exit_crit_edge: ; preds = %sb_retrieve_failed_devices.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %super_init_validation.exit

for.body274.lr.ph.i:                              ; preds = %sb_retrieve_failed_devices.exit.i
  %flags275.i = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  %raid_type325.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %raid10_copies.i = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 8
  br label %for.body274.i

for.body274.i:                                    ; preds = %for.inc349.i.for.body274.i_crit_edge, %for.body274.lr.ph.i
  %r.1637.i = phi ptr [ %r.1635.i, %for.body274.lr.ph.i ], [ %r.1.i, %for.inc349.i.for.body274.i_crit_edge ]
  %205 = ptrtoint ptr %flags275.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %flags275.i, align 4
  %207 = and i32 %206, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool277.not.i = icmp eq i32 %207, 0
  br i1 %tobool277.not.i, label %lor.lhs.false278.i, label %for.body274.i.for.inc349.i_crit_edge

for.body274.i.for.inc349.i_crit_edge:             ; preds = %for.body274.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

lor.lhs.false278.i:                               ; preds = %for.body274.i
  %sb_page279.i = getelementptr inbounds %struct.md_rdev, ptr %r.1637.i, i32 0, i32 6
  %208 = ptrtoint ptr %sb_page279.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sb_page279.i, align 8
  %tobool280.not.i = icmp eq ptr %209, null
  br i1 %tobool280.not.i, label %lor.lhs.false278.i.for.inc349.i_crit_edge, label %if.end282.i

lor.lhs.false278.i.for.inc349.i_crit_edge:        ; preds = %lor.lhs.false278.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

if.end282.i:                                      ; preds = %lor.lhs.false278.i
  %call284.i = tail call ptr @page_address(ptr noundef nonnull %209) #16
  %failed_devices285.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call284.i, i32 0, i32 5
  %210 = ptrtoint ptr %failed_devices285.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 8)
  store i64 0, ptr %failed_devices285.i, align 1
  %extended_failed_devices.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call284.i, i32 0, i32 21
  %211 = call ptr @memset(ptr %extended_failed_devices.i, i32 0, i32 24)
  %flags287.i = getelementptr inbounds %struct.md_rdev, ptr %r.1637.i, i32 0, i32 16
  %212 = ptrtoint ptr %flags287.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %flags287.i, align 4
  %214 = and i32 %213, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool289.not.i = icmp eq i32 %214, 0
  br i1 %tobool289.not.i, label %land.lhs.true290.i, label %if.end282.i.for.inc349.i_crit_edge

if.end282.i.for.inc349.i_crit_edge:               ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

land.lhs.true290.i:                               ; preds = %if.end282.i
  %raid_disk291.i = getelementptr inbounds %struct.md_rdev, ptr %r.1637.i, i32 0, i32 19
  %215 = ptrtoint ptr %raid_disk291.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %raid_disk291.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %216)
  %cmp292.i = icmp sgt i32 %216, -1
  br i1 %cmp292.i, label %if.then293.i, label %land.lhs.true290.i.for.inc349.i_crit_edge

land.lhs.true290.i.for.inc349.i_crit_edge:        ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

if.then293.i:                                     ; preds = %land.lhs.true290.i
  %array_position.i = getelementptr inbounds %struct.dm_raid_superblock, ptr %call284.i, i32 0, i32 3
  %217 = ptrtoint ptr %array_position.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %array_position.i, align 1
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp294.i = icmp slt i32 %219, 0
  br i1 %cmp294.i, label %if.then293.i.for.inc349.i_crit_edge, label %if.end296.i

if.then293.i.for.inc349.i_crit_edge:              ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

if.end296.i:                                      ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %216)
  %cmp298.not.i = icmp eq i32 %219, %216
  br i1 %cmp298.not.i, label %if.end296.i.if.end341.i_crit_edge, label %if.then299.i

if.end296.i.if.end341.i_crit_edge:                ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end341.i

if.then299.i:                                     ; preds = %if.end296.i
  %220 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %level.i, align 8
  %222 = zext i32 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %221, label %if.then299.i.land.lhs.true327.i_crit_edge [
    i32 10, label %land.lhs.true301.i
    i32 0, label %land.lhs.true324.i
  ]

if.then299.i.land.lhs.true327.i_crit_edge:        ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true327.i

land.lhs.true301.i:                               ; preds = %if.then299.i
  %223 = ptrtoint ptr %layout3.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %layout3.i, align 4
  %and.i.i607.i = and i32 %224, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i607.i)
  %tobool.i.not.i608.i = icmp eq i32 %and.i.i607.i, 0
  %and.i3.i.i = and i32 %224, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %cmp.i609.i = icmp ne i32 %and.i3.i.i, 0
  %225 = and i1 %tobool.i.not.i608.i, %cmp.i609.i
  br i1 %225, label %if.then304.i, label %land.lhs.true319.i

if.then304.i:                                     ; preds = %land.lhs.true301.i
  %226 = ptrtoint ptr %raid_disks.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %raid_disks.i, align 8
  %and.i610.i = and i32 %224, 255
  %rem.i = urem i32 %227, %and.i610.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool308.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool308.not.i, label %lor.lhs.false309.i, label %if.then304.i.if.then313.i_crit_edge

if.then304.i.if.then313.i_crit_edge:              ; preds = %if.then304.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then313.i

lor.lhs.false309.i:                               ; preds = %if.then304.i
  %228 = ptrtoint ptr %raid_disks185647.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %raid_disks185647.i, align 8
  %230 = ptrtoint ptr %raid10_copies.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %raid10_copies.i, align 4
  %rem311.i = srem i32 %229, %231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem311.i)
  %tobool312.not.i = icmp eq i32 %rem311.i, 0
  br i1 %tobool312.not.i, label %if.end314.i, label %lor.lhs.false309.i.if.then313.i_crit_edge

lor.lhs.false309.i.if.then313.i_crit_edge:        ; preds = %lor.lhs.false309.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then313.i

if.then313.i:                                     ; preds = %lor.lhs.false309.i.if.then313.i_crit_edge, %if.then304.i.if.then313.i_crit_edge
  %232 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %rs, align 8
  %error.i = getelementptr inbounds %struct.dm_target, ptr %233, i32 0, i32 12
  %234 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @.str.227, ptr %error.i, align 8
  br label %super_init_validation.exit.thread

if.end314.i:                                      ; preds = %lor.lhs.false309.i
  call void @__sanitizer_cov_trace_pc() #18
  %235 = tail call i32 @llvm.bswap.i32(i32 %216) #16
  %236 = ptrtoint ptr %array_position.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %array_position.i, align 1
  br label %do.end337.i

land.lhs.true319.i:                               ; preds = %land.lhs.true301.i
  %237 = ptrtoint ptr %raid_type325.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %raid_type325.i, align 8
  %level.i613.i = getelementptr inbounds %struct.raid_type, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %level.i613.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %level.i613.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.i614.i = icmp eq i32 %240, 0
  br i1 %tobool.not.i614.i, label %land.lhs.true319.i.do.end337.i_crit_edge, label %land.lhs.true319.i.land.lhs.true327.i_crit_edge

land.lhs.true319.i.land.lhs.true327.i_crit_edge:  ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true327.i

land.lhs.true319.i.do.end337.i_crit_edge:         ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end337.i

land.lhs.true324.i:                               ; preds = %if.then299.i
  %241 = ptrtoint ptr %raid_type325.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %raid_type325.i, align 8
  %level.i617.i = getelementptr inbounds %struct.raid_type, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %level.i617.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %level.i617.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %244)
  %cmp.i618.i = icmp eq i32 %244, 10
  br i1 %cmp.i618.i, label %land.lhs.true324.i.do.end337.i_crit_edge, label %land.lhs.true324.i.land.lhs.true327.i_crit_edge

land.lhs.true324.i.land.lhs.true327.i_crit_edge:  ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true327.i

land.lhs.true324.i.do.end337.i_crit_edge:         ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end337.i

land.lhs.true327.i:                               ; preds = %land.lhs.true324.i.land.lhs.true327.i_crit_edge, %land.lhs.true319.i.land.lhs.true327.i_crit_edge, %if.then299.i.land.lhs.true327.i_crit_edge
  %245 = ptrtoint ptr %raid_type325.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %raid_type325.i, align 8
  %level.i619.i = getelementptr inbounds %struct.raid_type, ptr %246, i32 0, i32 4
  %247 = ptrtoint ptr %level.i619.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %level.i619.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i620.i = icmp eq i32 %248, 1
  br i1 %cmp.i620.i, label %land.lhs.true327.i.do.end337.i_crit_edge, label %if.then330.i

land.lhs.true327.i.do.end337.i_crit_edge:         ; preds = %land.lhs.true327.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end337.i

if.then330.i:                                     ; preds = %land.lhs.true327.i
  call void @__sanitizer_cov_trace_pc() #18
  %249 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rs, align 8
  %error332.i = getelementptr inbounds %struct.dm_target, ptr %250, i32 0, i32 12
  %251 = ptrtoint ptr %error332.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @.str.228, ptr %error332.i, align 8
  br label %super_init_validation.exit.thread

do.end337.i:                                      ; preds = %land.lhs.true327.i.do.end337.i_crit_edge, %land.lhs.true324.i.do.end337.i_crit_edge, %land.lhs.true319.i.do.end337.i_crit_edge, %if.end314.i
  %252 = ptrtoint ptr %raid_disk291.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %raid_disk291.i, align 4
  %call340.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %219, i32 noundef %253) #19
  br label %if.end341.i

if.end341.i:                                      ; preds = %do.end337.i, %if.end296.i.if.end341.i_crit_edge
  %div3.i.i = lshr i32 %219, 5
  %arrayidx.i.i = getelementptr i32, ptr %failed_devices.i, i32 %div3.i.i
  %254 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %219, 31
  %256 = shl nuw i32 1, %and.i.i
  %257 = and i32 %255, %256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool344.not.i = icmp eq i32 %257, 0
  br i1 %tobool344.not.i, label %if.end341.i.for.inc349.i_crit_edge, label %if.then345.i

if.end341.i.for.inc349.i_crit_edge:               ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc349.i

if.then345.i:                                     ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags287.i) #16
  br label %for.inc349.i

for.inc349.i:                                     ; preds = %if.then345.i, %if.end341.i.for.inc349.i_crit_edge, %if.then293.i.for.inc349.i_crit_edge, %land.lhs.true290.i.for.inc349.i_crit_edge, %if.end282.i.for.inc349.i_crit_edge, %lor.lhs.false278.i.for.inc349.i_crit_edge, %for.body274.i.for.inc349.i_crit_edge
  %258 = ptrtoint ptr %r.1637.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %r.1.i = load ptr, ptr %r.1637.i, align 8
  %cmp272.not.i = icmp eq ptr %r.1.i, %disks.i
  br i1 %cmp272.not.i, label %for.inc349.i.super_init_validation.exit_crit_edge, label %for.inc349.i.for.body274.i_crit_edge

for.inc349.i.for.body274.i_crit_edge:             ; preds = %for.inc349.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body274.i

for.inc349.i.super_init_validation.exit_crit_edge: ; preds = %for.inc349.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %super_init_validation.exit

super_init_validation.exit.thread:                ; preds = %if.then330.i, %if.then313.i, %do.end254.i, %do.end245.i, %do.end231.i, %do.end219.i, %do.end207.i, %raid10_md_layout_to_format.exit599.i, %if.end113.i.super_init_validation.exit.thread_crit_edge, %do.end53.i, %do.end46.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %failed_devices.i) #16
  br label %cleanup

super_init_validation.exit:                       ; preds = %for.inc349.i.super_init_validation.exit_crit_edge, %sb_retrieve_failed_devices.exit.i.super_init_validation.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %failed_devices.i) #16
  br label %if.end8

if.end8:                                          ; preds = %super_init_validation.exit, %if.end.if.end8_crit_edge
  %compat_features = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 1
  %259 = ptrtoint ptr %compat_features to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %260 = load i32, ptr %compat_features, align 1
  %261 = zext i32 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %260, label %if.then13 [
    i32 0, label %if.end8.if.end14_crit_edge
    i32 16777216, label %if.end8.if.end14_crit_edge99
  ]

if.end8.if.end14_crit_edge99:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %262 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %rs, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %263, i32 0, i32 12
  %264 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.170, ptr %error, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end8.if.end14_crit_edge, %if.end8.if.end14_crit_edge99
  %incompat_features = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 22
  %265 = ptrtoint ptr %incompat_features to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %incompat_features, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool15.not = icmp eq i32 %266, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %267 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rs, align 8
  %error18 = getelementptr inbounds %struct.dm_target, ptr %268, i32 0, i32 12
  %269 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @.str.171, ptr %error18, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %raid_type = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 11
  %270 = ptrtoint ptr %raid_type to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %raid_type, align 8
  %level.i90 = getelementptr inbounds %struct.raid_type, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %level.i90 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %level.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.not.i91 = icmp eq i32 %273, 0
  br i1 %tobool.not.i91, label %if.end19.cond.end_crit_edge, label %lor.lhs.false21

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false21:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %journal_dev = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 14
  %274 = ptrtoint ptr %journal_dev to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %journal_dev, align 8
  %tobool22.not = icmp eq ptr %275, null
  %spec.select = select i1 %tobool22.not, i64 8, i64 0
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false21, %if.end19.cond.end_crit_edge
  %cond = phi i64 [ 0, %if.end19.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false21 ]
  %offset = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 86, i32 1
  %276 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %cond, ptr %offset, align 8
  %default_offset = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 86, i32 3
  %277 = ptrtoint ptr %default_offset to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %cond, ptr %default_offset, align 8
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 16
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %cond.end.if.end43_crit_edge

cond.end.if.end43_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then29:                                        ; preds = %cond.end
  %278 = ptrtoint ptr %compat_features to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %compat_features, align 1
  %280 = and i32 %279, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool31.not = icmp eq i32 %280, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then32

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %sectors = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 20
  %281 = ptrtoint ptr %sectors to i32
  call void @__asan_loadN_noabort(i32 %281, i32 8)
  %282 = load i64, ptr %sectors, align 1
  %283 = tail call i64 @llvm.bswap.i64(i64 %282)
  %sectors33 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 1
  %284 = ptrtoint ptr %sectors33 to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %283, ptr %sectors33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge
  %disk_recovery_offset = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 6
  %285 = ptrtoint ptr %disk_recovery_offset to i32
  call void @__asan_loadN_noabort(i32 %285, i32 8)
  %286 = load i64, ptr %disk_recovery_offset, align 1
  %287 = tail call i64 @llvm.bswap.i64(i64 %286)
  %288 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 22
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %287, ptr %288, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %286)
  %cmp35 = icmp eq i64 %286, -1
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #16
  br label %if.end43

if.else:                                          ; preds = %if.end34
  %reshape_position.i92 = getelementptr inbounds %struct.raid_set, ptr %rs, i32 0, i32 10, i32 34
  %290 = ptrtoint ptr %reshape_position.i92 to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %reshape_position.i92, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %291)
  %cmp.i93.not = icmp eq i64 %291, -1
  br i1 %cmp.i93.not, label %if.then39, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.else.if.end43_crit_edge, %if.then36, %cond.end.if.end43_crit_edge
  %call45 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %292 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 22
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 0, ptr %292, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  %294 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %raid_disk, align 4
  %saved_raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 21
  %296 = ptrtoint ptr %saved_raid_disk to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %saved_raid_disk, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43.if.end50_crit_edge
  %data_offset = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 18
  %297 = ptrtoint ptr %data_offset to i32
  call void @__asan_loadN_noabort(i32 %297, i32 8)
  %298 = load i64, ptr %data_offset, align 1
  %299 = tail call i64 @llvm.bswap.i64(i64 %298)
  %data_offset51 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 10
  %300 = ptrtoint ptr %data_offset51 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %data_offset51, align 8
  %new_data_offset = getelementptr inbounds %struct.dm_raid_superblock, ptr %call3, i32 0, i32 19
  %301 = ptrtoint ptr %new_data_offset to i32
  call void @__asan_loadN_noabort(i32 %301, i32 8)
  %302 = load i64, ptr %new_data_offset, align 1
  %303 = tail call i64 @llvm.bswap.i64(i64 %302)
  %new_data_offset52 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 11
  %304 = ptrtoint ptr %new_data_offset52 to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %303, ptr %new_data_offset52, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then16, %if.then13, %super_init_validation.exit.thread, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then16 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false1.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %super_init_validation.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_page_io(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raid5_set_cache_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_rdev_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_handle_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_stop_writes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_bitmap_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_update_sb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_bitmap_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_reap_sync_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_wakeup_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 297)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !321, !322, !323, !325, !326, !327, !329, !331, !332, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !366, !367, !368, !370, !372, !374, !375, !376, !377, !379, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !460, !462, !463, !464, !466, !468, !469, !470, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !490, !491, !492, !494, !496, !498, !499, !500, !502, !504, !506, !508, !510, !512, !513, !514, !515, !517, !518, !519, !521, !522, !523, !524, !526, !527, !528, !530, !531, !532, !533, !535, !537, !539, !540, !541, !542, !544, !545, !546, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !612, !613, !614, !615}
!llvm.named.register.sp = !{!617}
!llvm.module.flags = !{!618, !619, !620, !621, !622, !623, !624, !625}
!llvm.ident = !{!626}

!0 = !{ptr @__initcall__kmod_dm_raid__297_4099_dm_raid_init6, !1, !"__initcall__kmod_dm_raid__297_4099_dm_raid_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-raid.c", i32 4099, i32 1}
!2 = !{ptr @__exitcall_dm_raid_exit, !3, !"__exitcall_dm_raid_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-raid.c", i32 4100, i32 1}
!4 = !{ptr @__param_devices_handle_discard_safely, !5, !"__param_devices_handle_discard_safely", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-raid.c", i32 4102, i32 1}
!6 = !{ptr @__UNIQUE_ID_devices_handle_discard_safelytype298, !5, !"__UNIQUE_ID_devices_handle_discard_safelytype298", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_devices_handle_discard_safely299, !8, !"__UNIQUE_ID_devices_handle_discard_safely299", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-raid.c", i32 4103, i32 1}
!9 = !{ptr @__UNIQUE_ID_description300, !10, !"__UNIQUE_ID_description300", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-raid.c", i32 4106, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias301, !12, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-raid.c", i32 4107, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias302, !14, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-raid.c", i32 4108, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias303, !16, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-raid.c", i32 4109, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias304, !18, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-raid.c", i32 4110, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias305, !20, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-raid.c", i32 4111, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias306, !22, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-raid.c", i32 4112, i32 1}
!23 = !{ptr @__UNIQUE_ID_author307, !24, !"__UNIQUE_ID_author307", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-raid.c", i32 4113, i32 1}
!25 = !{ptr @__UNIQUE_ID_author308, !26, !"__UNIQUE_ID_author308", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-raid.c", i32 4114, i32 1}
!27 = !{ptr @__UNIQUE_ID_file309, !28, !"__UNIQUE_ID_file309", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-raid.c", i32 4115, i32 1}
!29 = !{ptr @__UNIQUE_ID_license310, !28, !"__UNIQUE_ID_license310", i1 false, i1 false}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-raid.c", i32 4070, i32 10}
!32 = !{ptr @raid_target, !33, !"raid_target", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-raid.c", i32 4069, i32 27}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-raid.c", i32 3012, i32 17}
!36 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-raid.c", i32 3013, i32 13}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-raid.c", i32 3018, i32 15}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-raid.c", i32 3024, i32 15}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-raid.c", i32 3040, i32 15}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-raid.c", i32 3087, i32 15}
!46 = !{ptr @raid_ctr.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-raid.c", i32 3100, i32 2}
!48 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-raid.c", i32 3117, i32 16}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-raid.c", i32 3130, i32 16}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-raid.c", i32 3137, i32 16}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-raid.c", i32 3144, i32 16}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-raid.c", i32 3180, i32 16}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-raid.c", i32 3251, i32 15}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-raid.c", i32 3258, i32 15}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-raid.c", i32 3267, i32 16}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-raid.c", i32 3295, i32 17}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-raid.c", i32 292, i32 3}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-raid.c", i32 292, i32 14}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-raid.c", i32 293, i32 3}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-raid.c", i32 293, i32 14}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-raid.c", i32 294, i32 3}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-raid.c", i32 294, i32 19}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-raid.c", i32 295, i32 3}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-raid.c", i32 295, i32 20}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-raid.c", i32 296, i32 3}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-raid.c", i32 296, i32 20}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-raid.c", i32 297, i32 3}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-raid.c", i32 297, i32 15}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-raid.c", i32 298, i32 3}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-raid.c", i32 298, i32 14}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/dm-raid.c", i32 299, i32 3}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-raid.c", i32 299, i32 16}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-raid.c", i32 300, i32 3}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-raid.c", i32 300, i32 17}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-raid.c", i32 301, i32 3}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-raid.c", i32 301, i32 17}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-raid.c", i32 302, i32 3}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/md/dm-raid.c", i32 302, i32 17}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-raid.c", i32 303, i32 3}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-raid.c", i32 303, i32 17}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-raid.c", i32 304, i32 3}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-raid.c", i32 304, i32 17}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-raid.c", i32 305, i32 3}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-raid.c", i32 305, i32 17}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-raid.c", i32 306, i32 3}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/dm-raid.c", i32 306, i32 17}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm-raid.c", i32 307, i32 3}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-raid.c", i32 307, i32 18}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-raid.c", i32 308, i32 3}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-raid.c", i32 308, i32 19}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-raid.c", i32 309, i32 3}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/md/dm-raid.c", i32 309, i32 19}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/md/dm-raid.c", i32 310, i32 3}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/md/dm-raid.c", i32 310, i32 19}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-raid.c", i32 311, i32 3}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/md/dm-raid.c", i32 311, i32 19}
!147 = !{ptr @raid_types, !148, !"raid_types", i1 false, i1 false}
!148 = !{!"../drivers/md/dm-raid.c", i32 291, i32 3}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/dm-raid.c", i32 741, i32 15}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/md/dm-raid.c", i32 747, i32 15}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/md/dm-raid.c", i32 1137, i32 19}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/md/dm-raid.c", i32 1147, i32 4}
!157 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @parse_raid_params._entry, !156, !"_entry", i1 false, i1 false}
!160 = !{ptr @parse_raid_params._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/md/dm-raid.c", i32 1150, i32 19}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-raid.c", i32 1153, i32 19}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/md/dm-raid.c", i32 1187, i32 20}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/md/dm-raid.c", i32 1193, i32 21}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/md/dm-raid.c", i32 1200, i32 21}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/md/dm-raid.c", i32 1207, i32 21}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/md/dm-raid.c", i32 1216, i32 20}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/md/dm-raid.c", i32 1226, i32 21}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/md/dm-raid.c", i32 1230, i32 21}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/dm-raid.c", i32 1235, i32 21}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/md/dm-raid.c", i32 1247, i32 21}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/md/dm-raid.c", i32 1251, i32 21}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/md/dm-raid.c", i32 1257, i32 21}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/dm-raid.c", i32 1266, i32 21}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/md/dm-raid.c", i32 1279, i32 21}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/md/dm-raid.c", i32 1283, i32 21}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/md/dm-raid.c", i32 1288, i32 21}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/md/dm-raid.c", i32 1299, i32 20}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/dm-raid.c", i32 1310, i32 21}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/dm-raid.c", i32 1315, i32 21}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-raid.c", i32 1326, i32 21}
!203 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/md/dm-raid.c", i32 1331, i32 21}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/dm-raid.c", i32 1340, i32 21}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-raid.c", i32 1345, i32 21}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-raid.c", i32 1354, i32 21}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/dm-raid.c", i32 1361, i32 21}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/md/dm-raid.c", i32 1365, i32 21}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/dm-raid.c", i32 1372, i32 21}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-raid.c", i32 1378, i32 21}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/md/dm-raid.c", i32 1385, i32 21}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/md/dm-raid.c", i32 1390, i32 21}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/md/dm-raid.c", i32 1397, i32 21}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/md/dm-raid.c", i32 1402, i32 21}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/md/dm-raid.c", i32 1407, i32 21}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/md/dm-raid.c", i32 1413, i32 21}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-raid.c", i32 1418, i32 21}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/md/dm-raid.c", i32 1424, i32 21}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/dm-raid.c", i32 1429, i32 21}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/md/dm-raid.c", i32 1435, i32 21}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/md/dm-raid.c", i32 1443, i32 21}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/md/dm-raid.c", i32 1448, i32 21}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/md/dm-raid.c", i32 1454, i32 4}
!245 = !{ptr @parse_raid_params._entry.104, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @parse_raid_params._entry_ptr.106, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.107, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/md/dm-raid.c", i32 1455, i32 20}
!249 = !{ptr @.str.108, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/md/dm-raid.c", i32 1462, i32 19}
!251 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/md/dm-raid.c", i32 1469, i32 19}
!253 = !{ptr @.str.110, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/md/dm-raid.c", i32 1474, i32 19}
!255 = !{ptr @.str.111, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/md/dm-raid.c", i32 1480, i32 19}
!257 = !{ptr @.str.112, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/md/dm-raid.c", i32 1497, i32 20}
!259 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/md/dm-raid.c", i32 1503, i32 20}
!261 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/md/dm-raid.c", i32 1509, i32 20}
!263 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/md/dm-raid.c", i32 1516, i32 20}
!265 = !{ptr @.str.116, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/md/dm-raid.c", i32 355, i32 3}
!267 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @dm_raid_arg_name_by_flag._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @dm_raid_arg_name_by_flag._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/md/dm-raid.c", i32 325, i32 19}
!272 = !{ptr @.str.119, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/md/dm-raid.c", i32 326, i32 21}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/md/dm-raid.c", i32 327, i32 22}
!276 = !{ptr @.str.121, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/md/dm-raid.c", i32 328, i32 27}
!278 = !{ptr @.str.122, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/md/dm-raid.c", i32 329, i32 32}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/md/dm-raid.c", i32 330, i32 32}
!282 = !{ptr @.str.124, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/md/dm-raid.c", i32 331, i32 31}
!284 = !{ptr @.str.125, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/md/dm-raid.c", i32 332, i32 27}
!286 = !{ptr @.str.126, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/md/dm-raid.c", i32 333, i32 27}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/md/dm-raid.c", i32 334, i32 26}
!290 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/md/dm-raid.c", i32 335, i32 28}
!292 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/md/dm-raid.c", i32 336, i32 28}
!294 = !{ptr @.str.130, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/md/dm-raid.c", i32 337, i32 26}
!296 = !{ptr @.str.131, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/md/dm-raid.c", i32 338, i32 26}
!298 = !{ptr @.str.132, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/md/dm-raid.c", i32 339, i32 35}
!300 = !{ptr @.str.133, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/md/dm-raid.c", i32 340, i32 26}
!302 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/md/dm-raid.c", i32 341, i32 27}
!304 = distinct !{null, !305, !"__arg_name_flags", i1 false, i1 false}
!305 = !{!"../drivers/md/dm-raid.c", i32 324, i32 3}
!306 = !{ptr @.str.135, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/md/dm-raid.c", i32 581, i32 24}
!308 = !{ptr @.str.136, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/md/dm-raid.c", i32 583, i32 29}
!310 = !{ptr @.str.137, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/md/dm-raid.c", i32 585, i32 29}
!312 = !{ptr @.str.138, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/md/dm-raid.c", i32 365, i32 37}
!314 = !{ptr @.str.139, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/md/dm-raid.c", i32 366, i32 37}
!316 = !{ptr @_raid456_journal_mode, !317, !"_raid456_journal_mode", i1 false, i1 false}
!317 = !{!"../drivers/md/dm-raid.c", i32 364, i32 3}
!318 = !{ptr @.str.140, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/md/dm-raid.c", i32 951, i32 4}
!320 = !{ptr @.str.141, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @validate_region_size._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @validate_region_size._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.143, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/md/dm-raid.c", i32 954, i32 4}
!325 = !{ptr @validate_region_size._entry.142, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @validate_region_size._entry_ptr.144, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.145, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/md/dm-raid.c", i32 962, i32 20}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/md/dm-raid.c", i32 967, i32 4}
!331 = !{ptr @validate_region_size._entry.146, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @validate_region_size._entry_ptr.148, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.149, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/md/dm-raid.c", i32 969, i32 20}
!335 = !{ptr @.str.150, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/md/dm-raid.c", i32 974, i32 20}
!337 = !{ptr @.str.151, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/md/dm-raid.c", i32 979, i32 20}
!339 = !{ptr @.str.152, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/md/dm-raid.c", i32 514, i32 19}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/md/dm-raid.c", i32 850, i32 19}
!343 = !{ptr @.str.154, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/md/dm-raid.c", i32 854, i32 21}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/md/dm-raid.c", i32 860, i32 21}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/md/dm-raid.c", i32 872, i32 21}
!349 = !{ptr @.str.157, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/md/dm-raid.c", i32 877, i32 21}
!351 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/md/dm-raid.c", i32 887, i32 20}
!353 = !{ptr @.str.159, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/md/dm-raid.c", i32 920, i32 19}
!355 = distinct !{null, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!357 = !{ptr @.str.161, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/md/dm-raid.c", i32 1642, i32 20}
!359 = !{ptr @.str.162, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/md/dm-raid.c", i32 1667, i32 18}
!361 = !{ptr @.str.163, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/md/dm-raid.c", i32 1612, i32 21}
!363 = !{ptr @.str.164, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/md/dm-raid.c", i32 2519, i32 4}
!365 = !{ptr @.str.165, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @analyse_superblocks._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @analyse_superblocks._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.166, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/md/dm-raid.c", i32 2572, i32 18}
!370 = !{ptr @.str.167, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/md/dm-raid.c", i32 2577, i32 19}
!372 = !{ptr @.str.168, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/md/dm-raid.c", i32 2040, i32 3}
!374 = !{ptr @.str.169, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @read_disk_sb._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @read_disk_sb._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/md/dm-raid.c", i32 2449, i32 19}
!379 = !{ptr @.str.171, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/md/dm-raid.c", i32 2454, i32 19}
!381 = !{ptr @.str.172, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/md/dm-raid.c", i32 2248, i32 5}
!383 = !{ptr @.str.173, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @super_init_validation._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @super_init_validation._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.175, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/md/dm-raid.c", i32 2271, i32 5}
!388 = !{ptr @super_init_validation._entry.174, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @super_init_validation._entry_ptr.176, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.178, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/md/dm-raid.c", i32 2274, i32 5}
!392 = !{ptr @super_init_validation._entry.177, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @super_init_validation._entry_ptr.179, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.181, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/md/dm-raid.c", i32 2277, i32 4}
!396 = !{ptr @super_init_validation._entry.180, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @super_init_validation._entry_ptr.182, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.184, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/md/dm-raid.c", i32 2280, i32 6}
!400 = !{ptr @super_init_validation._entry.183, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @super_init_validation._entry_ptr.185, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.187, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/md/dm-raid.c", i32 2283, i32 6}
!404 = !{ptr @super_init_validation._entry.186, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @super_init_validation._entry_ptr.188, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.190, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/md/dm-raid.c", i32 2287, i32 5}
!408 = !{ptr @super_init_validation._entry.189, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @super_init_validation._entry_ptr.191, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.193, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/md/dm-raid.c", i32 2290, i32 5}
!412 = !{ptr @super_init_validation._entry.192, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @super_init_validation._entry_ptr.194, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.196, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/md/dm-raid.c", i32 2293, i32 5}
!416 = !{ptr @super_init_validation._entry.195, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @super_init_validation._entry_ptr.197, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.199, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/md/dm-raid.c", i32 2296, i32 5}
!420 = !{ptr @super_init_validation._entry.198, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @super_init_validation._entry_ptr.200, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.202, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/md/dm-raid.c", i32 2303, i32 3}
!424 = !{ptr @super_init_validation._entry.201, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @super_init_validation._entry_ptr.203, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.205, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/md/dm-raid.c", i32 2333, i32 4}
!428 = !{ptr @super_init_validation._entry.204, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @super_init_validation._entry_ptr.206, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.208, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/md/dm-raid.c", i32 2347, i32 4}
!432 = !{ptr @super_init_validation._entry.207, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @super_init_validation._entry_ptr.209, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.211, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/md/dm-raid.c", i32 2351, i32 4}
!436 = !{ptr @super_init_validation._entry.210, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @super_init_validation._entry_ptr.212, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.214, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/md/dm-raid.c", i32 2356, i32 3}
!440 = !{ptr @super_init_validation._entry.213, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @super_init_validation._entry_ptr.215, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.217, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/md/dm-raid.c", i32 2362, i32 4}
!444 = !{ptr @super_init_validation._entry.216, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @super_init_validation._entry_ptr.218, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.219, !443, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.220, !443, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @.str.222, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/md/dm-raid.c", i32 2366, i32 4}
!450 = !{ptr @super_init_validation._entry.221, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @super_init_validation._entry_ptr.223, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.225, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/md/dm-raid.c", i32 2370, i32 4}
!454 = !{ptr @super_init_validation._entry.224, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @super_init_validation._entry_ptr.226, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.227, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/md/dm-raid.c", i32 2402, i32 8}
!458 = !{ptr @.str.228, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/md/dm-raid.c", i32 2411, i32 22}
!460 = !{ptr @.str.230, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/md/dm-raid.c", i32 2415, i32 5}
!462 = !{ptr @super_init_validation._entry.229, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @super_init_validation._entry_ptr.231, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.232, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/md/dm-raid.c", i32 575, i32 9}
!466 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/md/dm-raid.c", i32 1028, i32 4}
!468 = !{ptr @.str.234, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @validate_raid_redundancy._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @validate_raid_redundancy._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.235, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/md/dm-raid.c", i32 1718, i32 19}
!473 = !{ptr @.str.236, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/md/dm-raid.c", i32 1723, i32 19}
!475 = !{ptr @.str.237, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/md/dm-raid.c", i32 1862, i32 18}
!477 = !{ptr @.str.238, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/md/dm-raid.c", i32 2768, i32 21}
!479 = !{ptr @.str.239, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/md/dm-raid.c", i32 2795, i32 19}
!481 = !{ptr @.str.240, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/md/dm-raid.c", i32 2666, i32 33}
!483 = !{ptr @.str.241, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/md/dm-raid.c", i32 2667, i32 12}
!485 = !{ptr @.str.242, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/md/dm-raid.c", i32 1541, i32 19}
!487 = !{ptr @.str.243, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/md/dm-raid.c", i32 1546, i32 3}
!489 = !{ptr @.str.244, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @rs_set_raid456_stripe_cache._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @rs_set_raid456_stripe_cache._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.245, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/md/dm-raid.c", i32 1553, i32 19}
!494 = !{ptr @.str.246, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/md/dm-raid.c", i32 1561, i32 20}
!496 = !{ptr @.str.248, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/md/dm-raid.c", i32 1565, i32 3}
!498 = !{ptr @rs_set_raid456_stripe_cache._entry.247, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @rs_set_raid456_stripe_cache._entry_ptr.249, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.250, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/md/dm-raid.c", i32 2015, i32 19}
!502 = !{ptr @.str.251, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/md/dm-raid.c", i32 2017, i32 19}
!504 = !{ptr @.str.252, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/md/dm-raid.c", i32 2019, i32 19}
!506 = !{ptr @.str.253, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/md/dm-raid.c", i32 2021, i32 19}
!508 = !{ptr @.str.254, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/md/dm-raid.c", i32 2023, i32 19}
!510 = !{ptr @.str.255, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/md/dm-raid.c", i32 2977, i32 5}
!512 = !{ptr @.str.256, !511, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @configure_discard_support._entry, !511, !"_entry", i1 false, i1 false}
!514 = !{ptr @configure_discard_support._entry_ptr, !511, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.258, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/md/dm-raid.c", i32 2978, i32 5}
!517 = !{ptr @configure_discard_support._entry.257, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @configure_discard_support._entry_ptr.259, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.260, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/md/dm-raid.c", i32 4013, i32 4}
!521 = !{ptr @.str.261, !520, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @raid_preresume._entry, !520, !"_entry", i1 false, i1 false}
!523 = !{ptr @raid_preresume._entry_ptr, !520, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.263, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/md/dm-raid.c", i32 4034, i32 4}
!526 = !{ptr @raid_preresume._entry.262, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @raid_preresume._entry_ptr.264, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.265, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/md/dm-raid.c", i32 3901, i32 4}
!530 = !{ptr @.str.266, !529, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @__load_dirty_region_bitmap._entry, !529, !"_entry", i1 false, i1 false}
!532 = !{ptr @__load_dirty_region_bitmap._entry_ptr, !529, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.267, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/md/dm-raid.c", i32 3946, i32 19}
!535 = !{ptr @.str.268, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/md/dm-raid.c", i32 3957, i32 20}
!537 = !{ptr @.str.269, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/md/dm-raid.c", i32 2847, i32 3}
!539 = !{ptr @.str.270, !538, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @rs_setup_reshape._entry, !538, !"_entry", i1 false, i1 false}
!541 = !{ptr @rs_setup_reshape._entry_ptr, !538, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.271, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/md/dm-raid.c", i32 3833, i32 4}
!544 = !{ptr @.str.272, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @attempt_restore_of_faulty_devices._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @attempt_restore_of_faulty_devices._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.273, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/md/dm-raid.c", i32 3532, i32 3}
!549 = !{ptr @.str.274, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/md/dm-raid.c", i32 3542, i32 88}
!551 = !{ptr @.str.275, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/md/dm-raid.c", i32 3561, i32 3}
!553 = !{ptr @.str.276, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/md/dm-raid.c", i32 3571, i32 3}
!555 = !{ptr @.str.277, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/md/dm-raid.c", i32 3580, i32 3}
!557 = !{ptr @.str.278, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/md/dm-raid.c", i32 3620, i32 3}
!559 = !{ptr @.str.279, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/md/dm-raid.c", i32 3628, i32 6}
!561 = !{ptr @.str.280, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/md/dm-raid.c", i32 3630, i32 4}
!563 = !{ptr @.str.281, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/md/dm-raid.c", i32 3633, i32 4}
!565 = !{ptr @.str.282, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/md/dm-raid.c", i32 3650, i32 4}
!567 = !{ptr @.str.283, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/md/dm-raid.c", i32 3656, i32 4}
!569 = !{ptr @.str.284, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/md/dm-raid.c", i32 3670, i32 3}
!571 = !{ptr @.str.285, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/md/dm-raid.c", i32 3681, i32 3}
!573 = !{ptr @.str.286, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/md/dm-raid.c", i32 3682, i32 3}
!575 = !{ptr @.str.287, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/md/dm-raid.c", i32 3688, i32 3}
!577 = !{ptr @.str.288, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/md/dm-raid.c", i32 3691, i32 4}
!579 = !{ptr @.str.289, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/md/dm-raid.c", i32 3696, i32 4}
!581 = !{ptr @.str.290, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/md/dm-raid.c", i32 3699, i32 5}
!583 = !{ptr @.str.291, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/md/dm-raid.c", i32 3707, i32 5}
!585 = !{ptr @.str.292, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/md/dm-raid.c", i32 3711, i32 3}
!587 = !{ptr @.str.293, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/md/dm-raid.c", i32 3411, i32 10}
!589 = !{ptr @.str.294, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/md/dm-raid.c", i32 3413, i32 69}
!591 = !{ptr @.str.295, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/md/dm-raid.c", i32 3413, i32 75}
!593 = !{ptr @.str.296, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/md/dm-raid.c", i32 3353, i32 3}
!595 = !{ptr @.str.297, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/md/dm-raid.c", i32 3354, i32 3}
!597 = !{ptr @.str.298, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/md/dm-raid.c", i32 3355, i32 3}
!599 = !{ptr @.str.299, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/md/dm-raid.c", i32 3357, i32 3}
!601 = !{ptr @.str.300, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/md/dm-raid.c", i32 3358, i32 3}
!603 = !{ptr @.str.301, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/md/dm-raid.c", i32 3359, i32 3}
!605 = !{ptr @sync_str.sync_strs, !606, !"sync_strs", i1 false, i1 false}
!606 = !{!"../drivers/md/dm-raid.c", i32 3352, i32 21}
!607 = distinct !{null, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/md/dm-raid.c", i32 3362, i32 82}
!609 = !{ptr @.str.303, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/md/dm-raid.c", i32 4087, i32 2}
!611 = !{ptr @.str.304, !610, !"<string literal>", i1 false, i1 false}
!612 = !{ptr @dm_raid_init._entry, !610, !"_entry", i1 false, i1 false}
!613 = !{ptr @dm_raid_init._entry_ptr, !610, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @__param_str_devices_handle_discard_safely, !5, !"__param_str_devices_handle_discard_safely", i1 false, i1 false}
!615 = !{ptr @devices_handle_discard_safely, !616, !"devices_handle_discard_safely", i1 false, i1 false}
!616 = !{!"../drivers/md/dm-raid.c", i32 32, i32 13}
!617 = !{!"sp"}
!618 = !{i32 1, !"wchar_size", i32 2}
!619 = !{i32 1, !"min_enum_size", i32 4}
!620 = !{i32 8, !"branch-target-enforcement", i32 0}
!621 = !{i32 8, !"sign-return-address", i32 0}
!622 = !{i32 8, !"sign-return-address-all", i32 0}
!623 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!624 = !{i32 7, !"uwtable", i32 1}
!625 = !{i32 7, !"frame-pointer", i32 2}
!626 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!627 = !{!"auto-init"}
!628 = !{!"branch_weights", i32 1, i32 2000}
!629 = !{i64 2155112379, i64 2155112865, i64 2155112416, i64 2155112472, i64 2155112506, i64 2155112530, i64 2155112571, i64 2155112592, i64 2155112620, i64 2155112654}
!630 = !{i64 2155228742}
!631 = !{i64 2155250990}
!632 = !{i32 0, i32 33}
!633 = !{i64 2155119350, i64 2155119836, i64 2155119387, i64 2155119443, i64 2155119477, i64 2155119501, i64 2155119542, i64 2155119563, i64 2155119591, i64 2155119625}
!634 = !{i64 2155122580}
!635 = !{!"branch_weights", i32 2000, i32 1}
!636 = !{i64 2148549360, i64 2148549640, i64 2148549974, i64 2148550308}
!637 = !{i64 2155110130}
!638 = !{i8 0, i8 2}
