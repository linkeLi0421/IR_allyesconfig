; ModuleID = '/llk/IR_all_yes/drivers/md/dm-flakey.c_pt.bc'
source_filename = "../drivers/md/dm-flakey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.flakey_c = type { ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dm_report_zones_args = type { ptr, i64, ptr, ptr, i32, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }

@flakey_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 320, ptr @.str, ptr null, [3 x i32] [i32 1, i32 5, i32 0], ptr @flakey_ctr, ptr @flakey_dtr, ptr @flakey_map, ptr null, ptr null, ptr @flakey_end_io, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flakey_status, ptr null, ptr @flakey_prepare_ioctl, ptr @flakey_report_zones, ptr null, ptr @flakey_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_flakey__280_516_dm_flakey_init6 = internal global ptr @dm_flakey_init, section ".initcall6.init", align 4
@__exitcall_dm_flakey_exit = internal global ptr @dm_flakey_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description281 = internal constant [50 x i8] c"dm_flakey.description=device-mapper flakey target\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [52 x i8] c"dm_flakey.author=Joe Thornber <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [36 x i8] c"dm_flakey.file=drivers/md/dm-flakey\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [22 x i8] c"dm_flakey.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"flakey\00", [25 x i8] zeroinitializer }, align 32
@flakey_ctr._args = internal constant { [2 x %struct.dm_arg], [40 x i8] } { [2 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 -1, ptr @.str.1 }, %struct.dm_arg { i32 0, i32 -1, ptr @.str.2 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid up interval\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid down interval\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid argument count\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate context\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid device sector\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Total (up + down) interval is zero\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Interval overflow\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_features._args = internal constant { [4 x %struct.dm_arg], [48 x i8] } { [4 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 6, ptr @.str.10 }, %struct.dm_arg { i32 1, i32 -1, ptr @.str.11 }, %struct.dm_arg { i32 0, i32 255, ptr @.str.12 }, %struct.dm_arg { i32 0, i32 -1, ptr @.str.13 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of feature args\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid corrupt bio byte\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid corrupt value to write into bio byte (0-255)\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid corrupt bio flags mask\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Insufficient feature arguments\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drop_writes\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Feature drop_writes duplicated\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Feature drop_writes conflicts with feature error_writes\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error_writes\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Feature error_writes duplicated\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Feature error_writes conflicts with feature drop_writes\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"corrupt_bio_byte\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Feature corrupt_bio_byte requires parameters\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"w\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid corrupt bio direction (r or w)\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unrecognised flakey feature requested\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"drop_writes is incompatible with corrupt_bio_byte with the WRITE flag set\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"error_writes is incompatible with corrupt_bio_byte with the WRITE flag set\00", [53 x i8] zeroinitializer }, align 32
@corrupt_bio_data.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dm_flakey\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"corrupt_bio_data\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/dm-flakey.c\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"device-mapper: flakey: Corrupting data bio=%p by writing %u to byte %u (rw=%c bi_opf=%u bi_sector=%llu size=%u)\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s %llu %u %u \00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drop_writes \00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"error_writes \00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"corrupt_bio_byte %u %c %u %u \00", [34 x i8] zeroinitializer }, align 32
@dm_flakey_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.31, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013device-mapper: flakey: register failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_flakey_init\00", [17 x i8] zeroinitializer }, align 32
@dm_flakey_init._entry_ptr = internal global ptr @dm_flakey_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"flakey_target\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 485, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 486, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 186, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 187, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 188, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 202, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 208, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 216, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 217, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 231, i32 15 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 237, i32 15 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 248, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 54, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 55, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 56, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 57, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 58, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 74, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 81, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 83, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 86, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 96, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 98, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 102, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 112, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 114, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 127, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 129, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 132, i32 17 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 156, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 161, i32 15 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 165, i32 15 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 307, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 423, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 429, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 432, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 434, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 437, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [26 x i8] c"../drivers/md/dm-flakey.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 505, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_dm_flakey_exit, ptr @__initcall__kmod_dm_flakey__280_516_dm_flakey_init6, ptr @dm_flakey_exit, ptr @dm_flakey_init._entry, ptr @dm_flakey_init._entry_ptr, ptr @flakey_target, ptr @.str, ptr @flakey_ctr._args, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @parse_features._args, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flakey_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flakey_ctr._args to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_features._args to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_flakey_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_flakey_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dm_unregister_target(ptr noundef nonnull @flakey_target) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_flakey_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @flakey_target) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flakey_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %tmpll = alloca i64, align 8
  %as = alloca %struct.dm_arg_set, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpll) #10
  %0 = ptrtoint ptr %tmpll to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmpll, align 8, !annotation !105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #10
  %1 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy, align 1, !annotation !105
  %3 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %argc, ptr %as, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %argv, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp = icmp ult i32 %argc, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.3, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %error4 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %7 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.4, ptr %error4, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.flakey_c, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %start_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %start_time, align 4
  %call6 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #10
  %call7 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #10
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call7, ptr noundef nonnull @.str.5, ptr noundef nonnull %tmpll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 1
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %error12 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %10 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %error12, align 8
  br label %bad

if.end13:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %tmpll to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmpll, align 8
  %start = getelementptr inbounds %struct.flakey_c, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %start, align 8
  %up_interval = getelementptr inbounds %struct.flakey_c, ptr %call7.i.i, i32 0, i32 3
  %error14 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call15 = call i32 @dm_read_arg(ptr noundef nonnull @flakey_ctr._args, ptr noundef nonnull %as, ptr noundef %up_interval, ptr noundef %error14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.bad_crit_edge

if.end13.bad_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end18:                                         ; preds = %if.end13
  %down_interval = getelementptr inbounds %struct.flakey_c, ptr %call7.i.i, i32 0, i32 4
  %call20 = call i32 @dm_read_arg(ptr noundef nonnull @flakey_ctr._args, ptr noundef nonnull %as, ptr noundef %down_interval, ptr noundef %error14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.bad_crit_edge

if.end18.bad_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end23:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %up_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %up_interval, align 8
  %16 = ptrtoint ptr %down_interval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %down_interval, align 4
  %add = add i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool26.not = icmp eq i32 %add, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %error14, align 8
  br label %bad

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp34 = icmp ult i32 %add, %15
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %error14, align 8
  br label %bad

if.end37:                                         ; preds = %if.end29
  %call38 = call fastcc i32 @parse_features(ptr noundef nonnull %as, ptr noundef nonnull %call7.i.i, ptr noundef %ti)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.bad_crit_edge

if.end37.bad_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end41:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ti, align 8
  %call42 = call i32 @dm_table_get_mode(ptr noundef %21) #10
  %call43 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call6, i32 noundef %call42, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %error14, align 8
  br label %bad

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %23 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %24 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_discard_bios, align 8
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %25 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %per_io_data_size, align 8
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %26 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

bad:                                              ; preds = %if.then45, %if.end37.bad_crit_edge, %if.then35, %if.then27, %if.end18.bad_crit_edge, %if.end13.bad_crit_edge, %if.then11
  %r.0 = phi i32 [ -22, %if.then11 ], [ %call15, %if.end13.bad_crit_edge ], [ %call20, %if.end18.bad_crit_edge ], [ -22, %if.then35 ], [ %call38, %if.end37.bad_crit_edge ], [ %call43, %if.then45 ], [ -22, %if.then27 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end47, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %r.0, %bad ], [ 0, %if.end47 ], [ -12, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpll) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flakey_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flakey_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 1) #10
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call, align 1
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %3 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bi_opf, align 8
  %trunc.i = trunc i32 %4 to i8
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end [
    i8 15, label %entry.map_bio_crit_edge
    i8 10, label %entry.map_bio_crit_edge71
    i8 11, label %entry.map_bio_crit_edge72
    i8 12, label %entry.map_bio_crit_edge73
  ]

entry.map_bio_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

entry.map_bio_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

entry.map_bio_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

entry.map_bio_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_time, align 4
  %sub = sub i32 %6, %8
  %div = udiv i32 %sub, 100
  %up_interval = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %up_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %up_interval, align 8
  %down_interval = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %down_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %down_interval, align 4
  %add = add i32 %12, %10
  %rem = urem i32 %div, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %10)
  %cmp.not = icmp ult i32 %rem, %10
  br i1 %cmp.not, label %if.end.map_bio_crit_edge, label %if.then3

if.end.map_bio_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %call, align 1
  %14 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.then3
  %corrupt_bio_byte = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %corrupt_bio_byte to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %corrupt_bio_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then9.map_bio_crit_edge

if.then9.map_bio_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

land.lhs.true:                                    ; preds = %if.then9
  %flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true.map_bio_crit_edge

land.lhs.true.map_bio_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

land.lhs.true12:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.map_bio_crit_edge

land.lhs.true12.map_bio_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.then3
  %flags19 = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags19, align 4
  %and1.i67 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i67)
  %tobool21.not = icmp eq i32 %and1.i67, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_endio(ptr noundef %bio) #10
  br label %cleanup

if.else:                                          ; preds = %if.end18
  %25 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags19, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %28 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #10
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %corrupt_bio_byte29 = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %corrupt_bio_byte29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %corrupt_bio_byte29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool30.not = icmp eq i32 %30, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %land.lhs.true31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end28
  %corrupt_bio_rw = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %corrupt_bio_rw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %corrupt_bio_rw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp32 = icmp eq i32 %32, 1
  br i1 %cmp32, label %if.then33, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true31
  %corrupt_bio_flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %corrupt_bio_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %corrupt_bio_flags, align 8
  %and35 = and i32 %34, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %34)
  %cmp37 = icmp eq i32 %and35, %34
  br i1 %cmp37, label %if.then38, label %if.then33.map_bio_crit_edge

if.then33.map_bio_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bio

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @corrupt_bio_data(ptr noundef %bio, ptr noundef %1)
  br label %map_bio

map_bio:                                          ; preds = %if.then38, %if.then33.map_bio_crit_edge, %land.lhs.true12.map_bio_crit_edge, %land.lhs.true.map_bio_crit_edge, %if.then9.map_bio_crit_edge, %if.end.map_bio_crit_edge, %entry.map_bio_crit_edge, %entry.map_bio_crit_edge71, %entry.map_bio_crit_edge72, %entry.map_bio_crit_edge73
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %41 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %42, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %43 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %44, %40
  br i1 %cmp.not.i.i, label %map_bio.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

map_bio.bio_set_dev.exit.i_crit_edge:             ; preds = %map_bio
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %map_bio
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i = and i16 %42, -2177
  %45 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %map_bio.bio_set_dev.exit.i_crit_edge
  %46 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #10
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %48)
  %tobool.not.i = icmp ult i32 %48, 512
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %bio_set_dev.exit.i.if.then.i_crit_edge

bio_set_dev.exit.i.if.then.i_crit_edge:           ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %bio_set_dev.exit.i
  %49 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bi_opf, align 8
  %trunc.i.i = trunc i32 %50 to i8
  %51 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %trunc.i.i, label %lor.lhs.false.i.cleanup_crit_edge [
    i8 15, label %lor.lhs.false.i.if.then.i_crit_edge
    i8 10, label %lor.lhs.false.i.if.then.i_crit_edge74
    i8 11, label %lor.lhs.false.i.if.then.i_crit_edge75
    i8 12, label %lor.lhs.false.i.if.then.i_crit_edge76
  ]

lor.lhs.false.i.if.then.i_crit_edge76:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge75:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge74:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge74, %lor.lhs.false.i.if.then.i_crit_edge75, %lor.lhs.false.i.if.then.i_crit_edge76, %bio_set_dev.exit.i.if.then.i_crit_edge
  %52 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bi_iter.i, align 8
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private, align 4
  %start.i.i = getelementptr inbounds %struct.flakey_c, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %start.i.i, align 8
  %begin.i.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %58 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %begin.i.i, align 8
  %sub.i.i = add i64 %57, %53
  %add.i.i = sub i64 %sub.i.i, %59
  store i64 %add.i.i, ptr %bi_iter.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then26, %if.then22, %land.lhs.true12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.then26 ], [ 4, %land.lhs.true12.cleanup_crit_edge ], [ 4, %land.lhs.true31.cleanup_crit_edge ], [ 4, %if.end28.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flakey_end_io(ptr nocapture noundef readonly %ti, ptr noundef %bio, ptr nocapture noundef %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 1) #10
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %trunc.i = trunc i32 %3 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc.i, label %if.end [
    i8 15, label %entry.cleanup_crit_edge
    i8 10, label %entry.cleanup_crit_edge41
    i8 11, label %entry.cleanup_crit_edge42
    i8 12, label %entry.cleanup_crit_edge43
  ]

entry.cleanup_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  %corrupt_bio_byte = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %corrupt_bio_byte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %corrupt_bio_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then7.if.else_crit_edge, label %land.lhs.true9

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true9:                                   ; preds = %if.then7
  %corrupt_bio_rw = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %corrupt_bio_rw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %corrupt_bio_rw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true9.if.else_crit_edge

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %corrupt_bio_flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %corrupt_bio_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %corrupt_bio_flags, align 8
  %and13 = and i32 %14, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %14)
  %cmp15 = icmp eq i32 %and13, %14
  br i1 %cmp15, label %if.then16, label %land.lhs.true11.if.else_crit_edge

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @corrupt_bio_data(ptr noundef %bio, ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true9.if.else_crit_edge, %if.then7.if.else_crit_edge
  %flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool18.not = icmp eq i32 %and1.i, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.else
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %error, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge41, %entry.cleanup_crit_edge42, %entry.cleanup_crit_edge43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flakey_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb58
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb1.cond.end_crit_edge, label %cond.false

sw.bb1.cond.end_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %5, i32 0, i32 3
  %start = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %up_interval = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %up_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %up_interval, align 8
  %down_interval = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %down_interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %down_interval, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.33, ptr noundef %name, i64 noundef %7, i32 noundef %9, i32 noundef %11) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb1.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %sw.bb1.cond.end_crit_edge ]
  %flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %13, 1
  %14 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %14, 1
  %and1.i107 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %maxlen)
  %cmp5.not = icmp ult i32 %cond, %maxlen
  br i1 %cmp5.not, label %cond.false7, label %cond.end.cond.end14_crit_edge

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end14

cond.false7:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8 = getelementptr i8, ptr %result, i32 %cond
  %sub9 = sub i32 %maxlen, %cond
  %add10 = add nuw nsw i32 %and1.i107, %and1.i
  %corrupt_bio_byte = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %corrupt_bio_byte to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %corrupt_bio_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.not = icmp eq i32 %16, 0
  %mul = select i1 %cmp11.not, i32 0, i32 5
  %add12 = add nuw nsw i32 %add10, %mul
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.34, i32 noundef %add12) #10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false7, %cond.end.cond.end14_crit_edge
  %cond15 = phi i32 [ %call13, %cond.false7 ], [ 0, %cond.end.cond.end14_crit_edge ]
  %add16 = add i32 %cond15, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %maxlen)
  %cmp17.not = icmp ult i32 %add16, %maxlen
  br i1 %cmp17.not, label %cond.false20, label %if.then.cond.end24_crit_edge

if.then.cond.end24_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24

cond.false20:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr21 = getelementptr i8, ptr %result, i32 %add16
  %sub22 = sub i32 %maxlen, %add16
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.35) #10
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false20, %if.then.cond.end24_crit_edge
  %cond25 = phi i32 [ %call23, %cond.false20 ], [ 0, %if.then.cond.end24_crit_edge ]
  %add26 = add i32 %cond25, %add16
  br label %if.end39

if.else:                                          ; preds = %cond.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i107)
  %tobool27.not = icmp eq i32 %and1.i107, 0
  br i1 %tobool27.not, label %if.else.if.end39_crit_edge, label %if.then28

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %maxlen)
  %cmp29.not = icmp ult i32 %add16, %maxlen
  br i1 %cmp29.not, label %cond.false32, label %if.then28.cond.end36_crit_edge

if.then28.cond.end36_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36

cond.false32:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr33 = getelementptr i8, ptr %result, i32 %add16
  %sub34 = sub i32 %maxlen, %add16
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.36) #10
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %if.then28.cond.end36_crit_edge
  %cond37 = phi i32 [ %call35, %cond.false32 ], [ 0, %if.then28.cond.end36_crit_edge ]
  %add38 = add i32 %cond37, %add16
  br label %if.end39

if.end39:                                         ; preds = %cond.end36, %if.else.if.end39_crit_edge, %cond.end24
  %sz.0 = phi i32 [ %add26, %cond.end24 ], [ %add38, %cond.end36 ], [ %add16, %if.else.if.end39_crit_edge ]
  %corrupt_bio_byte40 = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %corrupt_bio_byte40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %corrupt_bio_byte40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool41.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0, i32 %maxlen)
  %cmp43.not = icmp ult i32 %sz.0, %maxlen
  %or.cond = select i1 %tobool41.not, i1 %cmp43.not, i1 false
  br i1 %or.cond, label %cond.false46, label %if.end39.sw.epilog_crit_edge

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.false46:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr47 = getelementptr i8, ptr %result, i32 %sz.0
  %sub48 = sub i32 %maxlen, %sz.0
  %corrupt_bio_rw = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %corrupt_bio_rw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %corrupt_bio_rw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp50 = icmp eq i32 %20, 1
  %cond52 = select i1 %cmp50, i32 119, i32 114
  %corrupt_bio_value = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %corrupt_bio_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %corrupt_bio_value, align 4
  %corrupt_bio_flags = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %corrupt_bio_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %corrupt_bio_flags, align 8
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.37, i32 noundef %18, i32 noundef %cond52, i32 noundef %22, i32 noundef %24) #10
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %cond.false46, %if.end39.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flakey_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bdev, align 4
  %start = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %len, align 8
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.not = icmp ne i64 %10, %12
  %spec.select = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flakey_report_zones(ptr nocapture noundef readonly %ti, ptr noundef %args, i32 noundef %nr_zones) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %start = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %next_sector = getelementptr inbounds %struct.dm_report_zones_args, ptr %args, i32 0, i32 1
  %8 = ptrtoint ptr %next_sector to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %next_sector, align 8
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %10 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %begin.i, align 8
  %sub.i = add i64 %9, %7
  %add.i = sub i64 %sub.i, %11
  %call1 = tail call i32 @dm_report_zones(ptr noundef %5, i64 noundef %7, i64 noundef %add.i, ptr noundef %args, i32 noundef %nr_zones) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flakey_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %start = getelementptr inbounds %struct.flakey_c, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_features(ptr noundef %as, ptr noundef %fc, ptr noundef %ti) unnamed_addr #2 align 64 {
entry:
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #10
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %argc, align 4, !annotation !105
  %1 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_features._args, ptr noundef %as, ptr noundef nonnull %argc, ptr noundef %error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %while.condthread-pre-split.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.condthread-pre-split.preheader:             ; preds = %if.end
  %3 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr151 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr151)
  %tobool5.not150152 = icmp eq i32 %.pr151, 0
  br i1 %tobool5.not150152, label %while.condthread-pre-split.preheader.while.end_crit_edge, label %while.body.lr.ph.lr.ph

while.condthread-pre-split.preheader.while.end_crit_edge: ; preds = %while.condthread-pre-split.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %while.condthread-pre-split.preheader
  %corrupt_bio_byte = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 6
  %corrupt_bio_rw64 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 7
  %corrupt_bio_value = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 8
  %corrupt_bio_flags = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 9
  %flags29 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph.lr.ph
  %call6 = call ptr @dm_shift_arg(ptr noundef %as) #10
  %4 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argc, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %argc, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %while.body.cleanup.sink.split_crit_edge, label %if.end10

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end10:                                         ; preds = %while.body
  %call11 = call i32 @strcasecmp(ptr noundef nonnull %call6, ptr noundef nonnull @.str.15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then13
  %6 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags29, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %if.else.while.condthread-pre-split.backedge_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else.while.condthread-pre-split.backedge_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.condthread-pre-split.backedge

if.end25:                                         ; preds = %if.end10
  %call26 = call i32 @strcasecmp(ptr noundef nonnull %call6, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end42

if.then28:                                        ; preds = %if.end25
  %call30 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else34, label %if.then28.cleanup.sink.split_crit_edge

if.then28.cleanup.sink.split_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else34:                                        ; preds = %if.then28
  %9 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags29, align 4
  %and1.i146 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i146)
  %tobool37.not = icmp eq i32 %and1.i146, 0
  br i1 %tobool37.not, label %if.else34.while.condthread-pre-split.backedge_crit_edge, label %if.else34.cleanup.sink.split_crit_edge

if.else34.cleanup.sink.split_crit_edge:           ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else34.while.condthread-pre-split.backedge_crit_edge: ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.condthread-pre-split.backedge

while.condthread-pre-split.backedge:              ; preds = %if.else34.while.condthread-pre-split.backedge_crit_edge, %if.else.while.condthread-pre-split.backedge_crit_edge
  %11 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not150 = icmp eq i32 %.pr, 0
  br i1 %tobool5.not150, label %while.condthread-pre-split.backedge.while.end_crit_edge, label %while.condthread-pre-split.backedge.while.body.backedge_crit_edge

while.condthread-pre-split.backedge.while.body.backedge_crit_edge: ; preds = %while.condthread-pre-split.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.backedge

while.condthread-pre-split.backedge.while.end_crit_edge: ; preds = %while.condthread-pre-split.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end42:                                         ; preds = %if.end25
  %call43 = call i32 @strcasecmp(ptr noundef nonnull %call6, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.cleanup.sink.split_crit_edge

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %if.then45.cleanup.sink.split_crit_edge, label %if.end49

if.then45.cleanup.sink.split_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end49:                                         ; preds = %if.then45
  %call51 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([4 x %struct.dm_arg], ptr @parse_features._args, i32 0, i32 1), ptr noundef %as, ptr noundef %corrupt_bio_byte, ptr noundef %error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %12 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %argc, align 4
  %dec55 = add i32 %13, -1
  store i32 %dec55, ptr %argc, align 4
  %call56 = call ptr @dm_shift_arg(ptr noundef %as) #10
  %call57 = call i32 @strcasecmp(ptr noundef %call56, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end54.if.end68_crit_edge, label %if.else60

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.else60:                                        ; preds = %if.end54
  %call61 = call i32 @strcasecmp(ptr noundef %call56, ptr noundef nonnull @.str.24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else60.if.end68_crit_edge, label %if.else60.cleanup.sink.split_crit_edge

if.else60.cleanup.sink.split_crit_edge:           ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else60.if.end68_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %if.else60.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %storemerge = phi i32 [ 1, %if.end54.if.end68_crit_edge ], [ 0, %if.else60.if.end68_crit_edge ]
  %14 = ptrtoint ptr %corrupt_bio_rw64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %corrupt_bio_rw64, align 8
  %15 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %argc, align 4
  %dec69 = add i32 %16, -1
  store i32 %dec69, ptr %argc, align 4
  %call71 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([4 x %struct.dm_arg], ptr @parse_features._args, i32 0, i32 2), ptr noundef %as, ptr noundef %corrupt_bio_value, ptr noundef %error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %if.end68
  %17 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %argc, align 4
  %dec75 = add i32 %18, -1
  store i32 %dec75, ptr %argc, align 4
  %call77 = call i32 @dm_read_arg(ptr noundef getelementptr inbounds ([4 x %struct.dm_arg], ptr @parse_features._args, i32 0, i32 3), ptr noundef %as, ptr noundef %corrupt_bio_flags, ptr noundef %error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %19 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %argc, align 4
  %dec81 = add i32 %20, -1
  store i32 %dec81, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec81)
  %tobool5.not = icmp eq i32 %dec81, 0
  br i1 %tobool5.not, label %if.end80.while.end_crit_edge, label %if.end80.while.body.backedge_crit_edge

if.end80.while.body.backedge_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.backedge

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.backedge:                              ; preds = %if.end80.while.body.backedge_crit_edge, %while.condthread-pre-split.backedge.while.body.backedge_crit_edge
  br label %while.body

while.end:                                        ; preds = %if.end80.while.end_crit_edge, %while.condthread-pre-split.backedge.while.end_crit_edge, %while.condthread-pre-split.preheader.while.end_crit_edge
  %flags84 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 5
  %21 = ptrtoint ptr %flags84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags84, align 4
  %and1.i147 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i147)
  %tobool86.not = icmp eq i32 %and1.i147, 0
  br i1 %tobool86.not, label %while.end.if.else90_crit_edge, label %land.lhs.true

while.end.if.else90_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

land.lhs.true:                                    ; preds = %while.end
  %corrupt_bio_rw87 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 7
  %23 = ptrtoint ptr %corrupt_bio_rw87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %corrupt_bio_rw87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.else90_crit_edge

land.lhs.true.if.else90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else90:                                        ; preds = %land.lhs.true.if.else90_crit_edge, %while.end.if.else90_crit_edge
  %25 = ptrtoint ptr %flags84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags84, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool93.not = icmp eq i32 %27, 0
  br i1 %tobool93.not, label %if.else90.cleanup_crit_edge, label %land.lhs.true94

if.else90.cleanup_crit_edge:                      ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true94:                                  ; preds = %if.else90
  %corrupt_bio_rw95 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 7
  %28 = ptrtoint ptr %corrupt_bio_rw95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %corrupt_bio_rw95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp96 = icmp eq i32 %29, 1
  br i1 %cmp96, label %land.lhs.true94.cleanup.sink.split_crit_edge, label %land.lhs.true94.cleanup_crit_edge

land.lhs.true94.cleanup_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true94.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true94.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.else60.cleanup.sink.split_crit_edge, %if.then45.cleanup.sink.split_crit_edge, %if.end42.cleanup.sink.split_crit_edge, %if.else34.cleanup.sink.split_crit_edge, %if.then28.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then13.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.27, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @.str.28, %land.lhs.true94.cleanup.sink.split_crit_edge ], [ @.str.16, %if.then13.cleanup.sink.split_crit_edge ], [ @.str.17, %if.else.cleanup.sink.split_crit_edge ], [ @.str.19, %if.then28.cleanup.sink.split_crit_edge ], [ @.str.20, %if.else34.cleanup.sink.split_crit_edge ], [ @.str.14, %while.body.cleanup.sink.split_crit_edge ], [ @.str.22, %if.then45.cleanup.sink.split_crit_edge ], [ @.str.25, %if.else60.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end42.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.str.28.sink, ptr %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true94.cleanup_crit_edge, %if.else90.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.else90.cleanup_crit_edge ], [ 0, %land.lhs.true94.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ %call77, %if.end74.cleanup_crit_edge ], [ %call71, %if.end68.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @corrupt_bio_data(ptr noundef %bio, ptr nocapture noundef readonly %fc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %corrupt_bio_byte1 = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 6
  %0 = ptrtoint ptr %corrupt_bio_byte1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %corrupt_bio_byte1, align 4
  %tobool.not.i = icmp eq ptr %bio, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %5 to i8
  %6 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc.i, label %if.end [
    i8 3, label %land.lhs.true2.i.cleanup_crit_edge
    i8 5, label %land.lhs.true2.i.cleanup_crit_edge229
    i8 9, label %land.lhs.true2.i.cleanup_crit_edge230
  ]

land.lhs.true2.i.cleanup_crit_edge230:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i.cleanup_crit_edge229:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.i
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %7 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %iter.sroa.6.0.copyload = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not204 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not204, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %iter.sroa.23.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %iter.sroa.23.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %iter.sroa.23.0.copyload = load i32, ptr %iter.sroa.23.0.bi_iter.sroa_idx, align 8
  %iter.sroa.12.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %iter.sroa.12.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %iter.sroa.12.0.copyload = load i32, ptr %iter.sroa.12.0.bi_iter.sroa_idx, align 4
  %sub = add i32 %1, -1
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %10 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_io_vec, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %corrupt_bio_byte.0208 = phi i32 [ %sub, %land.rhs.lr.ph ], [ %sub134, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0207 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.12.0206 = phi i32 [ %iter.sroa.12.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.12.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.23.0205 = phi i32 [ %iter.sroa.23.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.23.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bv_len10 = getelementptr %struct.bio_vec, ptr %11, i32 %iter.sroa.12.0206, i32 1
  %12 = ptrtoint ptr %bv_len10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len10, align 4
  %sub12 = sub i32 %13, %iter.sroa.23.0205
  %14 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0207, i32 %sub12)
  %bv_offset16 = getelementptr %struct.bio_vec, ptr %11, i32 %iter.sroa.12.0206, i32 2
  %15 = ptrtoint ptr %bv_offset16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_offset16, align 4
  %add18 = add i32 %16, %iter.sroa.23.0205
  %rem = and i32 %add18, 4095
  %sub19 = sub nuw nsw i32 4096, %rem
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub19)
  call void @__sanitizer_cov_trace_cmp4(i32 %corrupt_bio_byte.0208, i32 %17)
  %cmp61 = icmp ult i32 %corrupt_bio_byte.0208, %17
  br i1 %cmp61, label %if.then62, label %if.end104

if.then62:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx65 = getelementptr %struct.bio_vec, ptr %11, i32 %iter.sroa.12.0206
  %18 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx65, align 4
  %div73176 = lshr i32 %add18, 12
  %add.ptr74 = getelementptr %struct.page, ptr %19, i32 %div73176
  %call75 = tail call ptr @page_address(ptr noundef %add.ptr74) #10
  %20 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_io_vec, align 8
  %bv_offset79 = getelementptr %struct.bio_vec, ptr %21, i32 %iter.sroa.12.0206, i32 2
  %22 = ptrtoint ptr %bv_offset79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset79, align 4
  %add81 = add i32 %23, %iter.sroa.23.0205
  %rem82 = and i32 %add81, 4095
  %add.ptr83 = getelementptr i8, ptr %call75, i32 %rem82
  %corrupt_bio_value = getelementptr inbounds %struct.flakey_c, ptr %fc, i32 0, i32 8
  %24 = ptrtoint ptr %corrupt_bio_value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %corrupt_bio_value, align 4
  %conv = trunc i32 %25 to i8
  %arrayidx84 = getelementptr i8, ptr %add.ptr83, i32 %corrupt_bio_byte.0208
  %26 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %arrayidx84, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @corrupt_bio_data.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@corrupt_bio_data, %if.then90)) #10
          to label %cleanup [label %if.then90], !srcloc !107

if.then90:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %corrupt_bio_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %corrupt_bio_value, align 4
  %29 = ptrtoint ptr %corrupt_bio_byte1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %corrupt_bio_byte1, align 4
  %31 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond98 = select i1 %tobool.i.not, i32 114, i32 119
  %33 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bi_iter, align 8
  %35 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_size.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @corrupt_bio_data.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.32, ptr noundef nonnull %bio, i32 noundef %28, i32 noundef %30, i32 noundef %cond98, i32 noundef %32, i64 noundef %34, i32 noundef %36) #10
  br label %cleanup

if.end104:                                        ; preds = %land.rhs
  %sub134 = sub i32 %corrupt_bio_byte.0208, %17
  %37 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %38, 255
  %39 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %39, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.end104.bio_advance_iter_single.exit_crit_edge, label %if.else.i

if.end104.bio_advance_iter_single.exit_crit_edge: ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i32 %17, %iter.sroa.23.0205
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %13)
  %cmp.i.i = icmp eq i32 %add.i.i, %13
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select200 = add i32 %iter.sroa.12.0206, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %if.end104.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.23.1 = phi i32 [ %iter.sroa.23.0205, %if.end104.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.12.2 = phi i32 [ %iter.sroa.12.0206, %if.end104.bio_advance_iter_single.exit_crit_edge ], [ %spec.select200, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0207, %17
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.cleanup_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

bio_advance_iter_single.exit.cleanup_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %bio_advance_iter_single.exit.cleanup_crit_edge, %if.then90, %if.then62, %if.end.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge229, %land.lhs.true2.i.cleanup_crit_edge230, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_report_zones(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_dm_flakey__280_516_dm_flakey_init6, !1, !"__initcall__kmod_dm_flakey__280_516_dm_flakey_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-flakey.c", i32 516, i32 1}
!2 = !{ptr @__exitcall_dm_flakey_exit, !3, !"__exitcall_dm_flakey_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-flakey.c", i32 517, i32 1}
!4 = !{ptr @__UNIQUE_ID_description281, !5, !"__UNIQUE_ID_description281", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-flakey.c", i32 519, i32 1}
!6 = !{ptr @__UNIQUE_ID_author282, !7, !"__UNIQUE_ID_author282", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-flakey.c", i32 520, i32 1}
!8 = !{ptr @__UNIQUE_ID_file283, !9, !"__UNIQUE_ID_file283", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-flakey.c", i32 521, i32 1}
!10 = !{ptr @__UNIQUE_ID_license284, !9, !"__UNIQUE_ID_license284", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-flakey.c", i32 486, i32 12}
!13 = !{ptr @flakey_target, !14, !"flakey_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-flakey.c", i32 485, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-flakey.c", i32 187, i32 17}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-flakey.c", i32 188, i32 17}
!19 = !{ptr @flakey_ctr._args, !20, !"_args", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-flakey.c", i32 186, i32 29}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-flakey.c", i32 202, i32 15}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-flakey.c", i32 208, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-flakey.c", i32 216, i32 32}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-flakey.c", i32 217, i32 15}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-flakey.c", i32 231, i32 15}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-flakey.c", i32 237, i32 15}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-flakey.c", i32 248, i32 15}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-flakey.c", i32 55, i32 10}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-flakey.c", i32 56, i32 17}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-flakey.c", i32 57, i32 12}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-flakey.c", i32 58, i32 17}
!43 = !{ptr @parse_features._args, !44, !"_args", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-flakey.c", i32 54, i32 29}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-flakey.c", i32 74, i32 16}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-flakey.c", i32 81, i32 29}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-flakey.c", i32 83, i32 17}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-flakey.c", i32 86, i32 17}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-flakey.c", i32 96, i32 29}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-flakey.c", i32 98, i32 17}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-flakey.c", i32 102, i32 17}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-flakey.c", i32 112, i32 29}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-flakey.c", i32 114, i32 17}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-flakey.c", i32 127, i32 30}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-flakey.c", i32 129, i32 35}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-flakey.c", i32 132, i32 17}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-flakey.c", i32 156, i32 15}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-flakey.c", i32 161, i32 15}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-flakey.c", i32 165, i32 15}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-flakey.c", i32 307, i32 4}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @corrupt_bio_data.__UNIQUE_ID_ddebug275, !76, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-flakey.c", i32 423, i32 3}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-flakey.c", i32 429, i32 3}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-flakey.c", i32 432, i32 4}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-flakey.c", i32 434, i32 4}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-flakey.c", i32 437, i32 4}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-flakey.c", i32 505, i32 3}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dm_flakey_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @dm_flakey_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i8 0, i8 2}
!107 = !{i64 2148398480, i64 2148398485, i64 2148398498, i64 2148398542, i64 2148398576, i64 2148398597}
