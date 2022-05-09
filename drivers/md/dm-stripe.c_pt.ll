; ModuleID = '/llk/IR_all_yes/drivers/md/dm-stripe.c_pt.bc'
source_filename = "../drivers/md/dm-stripe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.stripe_c = type { i32, i32, i64, i32, i32, ptr, %struct.work_struct, [0 x %struct.stripe] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stripe = type { ptr, i64, %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }

@stripe_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 160, ptr @.str.3, ptr null, [3 x i32] [i32 1, i32 6, i32 0], ptr @stripe_ctr, ptr @stripe_dtr, ptr @stripe_map, ptr null, ptr null, ptr @stripe_end_io, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stripe_status, ptr null, ptr null, ptr null, ptr null, ptr @stripe_iterate_devices, ptr @stripe_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@dm_stripe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014device-mapper: striped: target registration failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_stripe_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/dm-stripe.c\00", [41 x i8] zeroinitializer }, align 32
@dm_stripe_init._entry_ptr = internal global ptr @dm_stripe_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"striped\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not enough arguments\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid stripe count\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid chunk_size\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Target length not divisible by number of stripes\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Target length not divisible by chunk size\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not enough destinations specified\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Memory allocation for striped context failed\00", [51 x i8] zeroinitializer }, align 32
@stripe_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&sc->trigger_event)\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't parse stripe destination\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d:%d\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1 \00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d %llu\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s %llu\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c",stripes=%d,chunk_size=%llu\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",stripe_%d_device_name=%s\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c",stripe_%d_physical_start=%llu\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",stripe_%d_status=%c\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"stripe_target\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 460, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 482, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 461, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 95, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 100, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 105, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 111, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 118, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 127, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 134, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 139, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 177, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 68, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 415, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 362, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 364, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 366, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 368, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 374, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 377, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 382, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 383, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 387, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 388, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 390, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [26 x i8] c"../drivers/md/dm-stripe.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 393, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dm_stripe_init._entry, ptr @dm_stripe_init._entry_ptr, ptr @stripe_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @stripe_ctr.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stripe_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_stripe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stripe_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_stripe_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @stripe_target) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_stripe_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_unregister_target(ptr noundef nonnull @stripe_target) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stripe_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #4 align 64 {
entry:
  %stripes = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stripes) #10
  %0 = ptrtoint ptr %stripes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stripes, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk_size) #10
  %1 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chunk_size, align 4, !annotation !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp ult i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.4, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %call = call i32 @kstrtouint(ptr noundef %4, i32 noundef 10, ptr noundef nonnull %stripes) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then2_crit_edge, label %if.end4

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %error3 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %7 = ptrtoint ptr %error3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.5, ptr %error3, align 8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr ptr, ptr %argv, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %call6 = call i32 @kstrtouint(ptr noundef %9, i32 noundef 10, ptr noundef nonnull %chunk_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false8:                                   ; preds = %if.end4
  %10 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %lor.lhs.false8.if.then10_crit_edge, label %if.end12

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false8.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %error11 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %12 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %error11, align 8
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %len, align 8
  %15 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %14)
  %cmp181 = icmp ult i64 %14, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !67

if.then185:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv186 = trunc i64 %14 to i32
  %conv186.frozen = freeze i32 %conv186
  %.frozen = freeze i32 %16
  %div189 = udiv i32 %conv186.frozen, %.frozen
  %17 = mul i32 %div189, %.frozen
  %rem187.decomposed = sub i32 %conv186.frozen, %17
  %conv190 = zext i32 %div189 to i64
  br label %if.end195

if.else191:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %14) #14, !srcloc !68
  %asmresult.i = extractvalue { i64, i64 } %18, 0
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %width.0 = phi i64 [ %conv190, %if.then185 ], [ %asmresult1.i, %if.else191 ]
  %__rem.0 = phi i32 [ %rem187.decomposed, %if.then185 ], [ %conv.i, %if.else191 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool197.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool197.not, label %if.else400, label %if.then198

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  %error199 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %19 = ptrtoint ptr %error199 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.7, ptr %error199, align 8
  br label %cleanup

if.else400:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %width.0)
  %cmp402 = icmp ult i64 %width.0, 4294967296
  br i1 %cmp402, label %if.then410, label %if.else416, !prof !67

if.then410:                                       ; preds = %if.else400
  call void @__sanitizer_cov_trace_pc() #12
  %conv411 = trunc i64 %width.0 to i32
  %rem412 = urem i32 %conv411, %11
  br label %if.end420

if.else416:                                       ; preds = %if.else400
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %width.0) #14, !srcloc !68
  %asmresult.i704 = extractvalue { i64, i64 } %20, 0
  %shr.i706 = lshr i64 %asmresult.i704, 32
  %conv.i707 = trunc i64 %shr.i706 to i32
  br label %if.end420

if.end420:                                        ; preds = %if.else416, %if.then410
  %__rem202.0 = phi i32 [ %rem412, %if.then410 ], [ %conv.i707, %if.else416 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem202.0)
  %tobool422.not = icmp eq i32 %__rem202.0, 0
  br i1 %tobool422.not, label %if.end425, label %if.then423

if.then423:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #12
  %error424 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %21 = ptrtoint ptr %error424 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %error424, align 8
  br label %cleanup

if.end425:                                        ; preds = %if.end420
  %mul426 = shl i32 %16, 1
  %add427 = add i32 %mul426, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add427, i32 %argc)
  %cmp428.not = icmp eq i32 %add427, %argc
  br i1 %cmp428.not, label %if.end8.i, label %if.then430

if.then430:                                       ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #12
  %error431 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %22 = ptrtoint ptr %error431 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.9, ptr %error431, align 8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end425
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 24) #10
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %25, i32 72) #10
  %retval.0.i = select i1 %24, i32 -1, i32 %spec.select.i
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #15
  %tobool435.not = icmp eq ptr %call9.i, null
  br i1 %tobool435.not, label %if.then436, label %do.body

if.then436:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %error437 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %26 = ptrtoint ptr %error437 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.10, ptr %error437, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end8.i
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 6
  call void @__init_work(ptr noundef %trigger_event, i32 noundef 0) #10
  %27 = ptrtoint ptr %trigger_event to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %trigger_event, align 4
  %lockdep_map = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @stripe_ctr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry442 = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %entry442 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry442, ptr %entry442, align 32
  %prev.i = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 6, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry442, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @trigger_event, ptr %func, align 8
  %ti444 = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 5
  %31 = ptrtoint ptr %ti444 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ti, ptr %ti444, align 8
  %32 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stripes, align 4
  %34 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %call9.i, align 128
  %stripe_width = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 2
  %35 = ptrtoint ptr %stripe_width to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %width.0, ptr %stripe_width, align 8
  %36 = call i32 @llvm.ctpop.i32(i32 %33), !range !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %tobool448.not = icmp ult i32 %36, 2
  %37 = call i32 @llvm.cttz.i32(i32 %33, i1 false) #10, !range !69
  %spec.select = select i1 %tobool448.not, i32 %37, i32 -1
  %38 = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select, ptr %38, align 4
  %40 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chunk_size, align 4
  %conv454 = zext i32 %41 to i64
  %call455 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call455)
  %tobool456.not = icmp eq i32 %call455, 0
  br i1 %tobool456.not, label %if.end458, label %if.then457

if.then457:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

if.end458:                                        ; preds = %do.body
  %42 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stripes, align 4
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %44 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %45 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %num_discard_bios, align 8
  %num_secure_erase_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 7
  %46 = ptrtoint ptr %num_secure_erase_bios to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %num_secure_erase_bios, align 4
  %num_write_same_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 8
  %47 = ptrtoint ptr %num_write_same_bios to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %num_write_same_bios, align 8
  %num_write_zeroes_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 9
  %48 = ptrtoint ptr %num_write_zeroes_bios to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %num_write_zeroes_bios, align 4
  %49 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chunk_size, align 4
  %chunk_size459 = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 3
  %51 = ptrtoint ptr %chunk_size459 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %chunk_size459, align 16
  %52 = call i32 @llvm.ctpop.i32(i32 %50), !range !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %tobool462.not = icmp ult i32 %52, 2
  %53 = call i32 @llvm.cttz.i32(i32 %50, i1 false) #10, !range !69
  %spec.select735 = select i1 %tobool462.not, i32 %53, i32 -1
  %54 = getelementptr inbounds %struct.stripe_c, ptr %call9.i, i32 0, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select735, ptr %54, align 4
  %56 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp468725.not = icmp eq i32 %57, 0
  br i1 %cmp468725.not, label %if.end458.for.end_crit_edge, label %if.end458.for.body_crit_edge

if.end458.for.body_crit_edge:                     ; preds = %if.end458
  br label %for.body

if.end458.for.end_crit_edge:                      ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end477.for.body_crit_edge, %if.end458.for.body_crit_edge
  %argv.addr.0727 = phi ptr [ %add.ptr, %if.end477.for.body_crit_edge ], [ %argv, %if.end458.for.body_crit_edge ]
  %i.0726 = phi i32 [ %inc, %if.end477.for.body_crit_edge ], [ 0, %if.end458.for.body_crit_edge ]
  %add.ptr = getelementptr ptr, ptr %argv.addr.0727, i32 2
  %call470 = call fastcc i32 @get_stripe(ptr noundef %ti, ptr noundef nonnull %call9.i, i32 noundef %i.0726, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %cmp471 = icmp slt i32 %call470, 0
  br i1 %cmp471, label %if.then473, label %if.end477

if.then473:                                       ; preds = %for.body
  %error474 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %58 = ptrtoint ptr %error474 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.12, ptr %error474, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0726)
  %tobool475.not728 = icmp eq i32 %i.0726, 0
  br i1 %tobool475.not728, label %if.then473.while.end_crit_edge, label %if.then473.while.body_crit_edge

if.then473.while.body_crit_edge:                  ; preds = %if.then473
  br label %while.body

if.then473.while.end_crit_edge:                   ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then473.while.body_crit_edge
  %i.1729 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0726, %if.then473.while.body_crit_edge ]
  %dec = add i32 %i.1729, -1
  %arrayidx476 = getelementptr %struct.stripe_c, ptr %call9.i, i32 0, i32 7, i32 %dec
  %59 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx476, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %60) #10
  %tobool475.not = icmp eq i32 %dec, 0
  br i1 %tobool475.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then473.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

if.end477:                                        ; preds = %for.body
  %error_count = getelementptr %struct.stripe_c, ptr %call9.i, i32 0, i32 7, i32 %i.0726, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %error_count, i32 noundef 4) #10
  %61 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %error_count, align 8
  %inc = add nuw i32 %i.0726, 1
  %62 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stripes, align 4
  %cmp468 = icmp ult i32 %inc, %63
  br i1 %cmp468, label %if.end477.for.body_crit_edge, label %if.end477.for.end_crit_edge

if.end477.for.end_crit_edge:                      ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end477.for.body_crit_edge:                     ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end477.for.end_crit_edge, %if.end458.for.end_crit_edge
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %64 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end, %if.then457, %if.then436, %if.then430, %if.then423, %if.then198, %if.then10, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then10 ], [ -22, %if.then198 ], [ -22, %if.then423 ], [ -22, %if.then430 ], [ %call455, %if.then457 ], [ %call470, %while.end ], [ 0, %for.end ], [ -12, %if.then436 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stripes) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stripe_dtr(ptr noundef %ti) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %5) #10
  %inc = add nuw i32 %i.08, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @flush_work(ptr noundef %trigger_event) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stripe_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp.not = icmp ult i32 %call, %6
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !67

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-stripe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.end10:                                         ; preds = %if.then
  %arrayidx = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %call
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %12, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %13 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %14, %10
  br i1 %cmp.not.i, label %do.end10.bio_set_dev.exit_crit_edge, label %if.then.i

do.end10.bio_set_dev.exit_crit_edge:              ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %12, -2177
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %do.end10.bio_set_dev.exit_crit_edge
  %16 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  %trunc = trunc i32 %3 to i8
  %17 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end78 [
    i8 3, label %if.end12.if.then55_crit_edge
    i8 5, label %if.end12.if.then55_crit_edge121
    i8 9, label %if.end12.if.then55_crit_edge122
    i8 7, label %if.end12.if.then55_crit_edge123
  ], !prof !71

if.end12.if.then55_crit_edge123:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end12.if.then55_crit_edge122:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end12.if.then55_crit_edge121:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end12.if.then55_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.then55:                                        ; preds = %if.end12.if.then55_crit_edge, %if.end12.if.then55_crit_edge121, %if.end12.if.then55_crit_edge122, %if.end12.if.then55_crit_edge123
  %call56 = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call56, i32 %19)
  %cmp59.not = icmp ult i32 %call56, %19
  br i1 %cmp59.not, label %do.end76, label %do.body68, !prof !67

do.body68:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-stripe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

do.end76:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %call77 = tail call fastcc i32 @stripe_map_range(ptr noundef %1, ptr noundef %bio, i32 noundef %call56)
  br label %cleanup

if.end78:                                         ; preds = %if.end12
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %20 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter, align 8
  %ti.i = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ti.i, align 8
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %begin.i, align 8
  %sub.i = sub i64 %21, %25
  %chunk_size_shift.i = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %chunk_size_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chunk_size_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp slt i32 %27, 0
  %chunk_size.i = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chunk_size.i, align 8
  br i1 %cmp.i, label %if.else165.i, label %if.else184.i

if.else165.i:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp167.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !67

if.then171.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv172.i = trunc i64 %sub.i to i32
  %conv172.i.frozen = freeze i32 %conv172.i
  %.frozen = freeze i32 %29
  %div175.i = udiv i32 %conv172.i.frozen, %.frozen
  %30 = mul i32 %div175.i, %.frozen
  %rem173.i.decomposed = sub i32 %conv172.i.frozen, %30
  %conv176.i = zext i32 %div175.i to i64
  br label %if.end181.i

if.else177.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %sub.i) #14, !srcloc !68
  %asmresult.i617.i = extractvalue { i64, i64 } %31, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %31, 1
  %shr.i.i = lshr i64 %asmresult.i617.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else177.i, %if.then171.i
  %chunk.0.i = phi i64 [ %conv176.i, %if.then171.i ], [ %asmresult1.i.i, %if.else177.i ]
  %__rem.0.i = phi i32 [ %rem173.i.decomposed, %if.then171.i ], [ %conv.i.i, %if.else177.i ]
  %conv183.i = zext i32 %__rem.0.i to i64
  br label %if.end192.i

if.else184.i:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %sub186.i = add i32 %29, -1
  %conv187.i = zext i32 %sub186.i to i64
  %and188.i = and i64 %sub.i, %conv187.i
  %sh_prom190.i = zext i32 %27 to i64
  %shr191.i = lshr i64 %sub.i, %sh_prom190.i
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else184.i, %if.end181.i
  %chunk.1.i = phi i64 [ %chunk.0.i, %if.end181.i ], [ %shr191.i, %if.else184.i ]
  %chunk_offset.0.i = phi i64 [ %conv183.i, %if.end181.i ], [ %and188.i, %if.else184.i ]
  %stripes_shift.i = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %stripes_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stripes_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp193.i = icmp slt i32 %33, 0
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  br i1 %cmp193.i, label %if.else395.i, label %if.else417.i

if.else395.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %chunk.1.i)
  %cmp397.i = icmp ult i64 %chunk.1.i, 4294967296
  br i1 %cmp397.i, label %if.then405.i, label %if.else411.i, !prof !67

if.then405.i:                                     ; preds = %if.else395.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv406.i = trunc i64 %chunk.1.i to i32
  %conv406.i.frozen = freeze i32 %conv406.i
  %.frozen120 = freeze i32 %35
  %div409.i = udiv i32 %conv406.i.frozen, %.frozen120
  %36 = mul i32 %div409.i, %.frozen120
  %rem407.i.decomposed = sub i32 %conv406.i.frozen, %36
  %conv410.i = zext i32 %div409.i to i64
  br label %if.end426.i

if.else411.i:                                     ; preds = %if.else395.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %chunk.1.i) #14, !srcloc !68
  %asmresult.i642.i = extractvalue { i64, i64 } %37, 0
  %asmresult1.i643.i = extractvalue { i64, i64 } %37, 1
  %shr.i644.i = lshr i64 %asmresult.i642.i, 32
  %conv.i645.i = trunc i64 %shr.i644.i to i32
  br label %if.end426.i

if.else417.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub419.i = add i32 %35, -1
  %38 = trunc i64 %chunk.1.i to i32
  %conv422.i = and i32 %sub419.i, %38
  %sh_prom424.i = zext i32 %33 to i64
  %shr425.i = lshr i64 %chunk.1.i, %sh_prom424.i
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else417.i, %if.else411.i, %if.then405.i
  %stripe.0 = phi i32 [ %conv422.i, %if.else417.i ], [ %rem407.i.decomposed, %if.then405.i ], [ %conv.i645.i, %if.else411.i ]
  %chunk.3.i = phi i64 [ %shr425.i, %if.else417.i ], [ %conv410.i, %if.then405.i ], [ %asmresult1.i643.i, %if.else411.i ]
  br i1 %cmp.i, label %if.then430.i, label %if.else434.i

if.then430.i:                                     ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv432.i = zext i32 %29 to i64
  %mul433.i = mul i64 %chunk.3.i, %conv432.i
  br label %stripe_map_sector.exit

if.else434.i:                                     ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom436.i = zext i32 %27 to i64
  %shl437.i = shl i64 %chunk.3.i, %sh_prom436.i
  br label %stripe_map_sector.exit

stripe_map_sector.exit:                           ; preds = %if.else434.i, %if.then430.i
  %storemerge.i = phi i64 [ %shl437.i, %if.else434.i ], [ %mul433.i, %if.then430.i ]
  %add439.i = add i64 %storemerge.i, %chunk_offset.0.i
  %39 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add439.i, ptr %bi_iter, align 8
  %physical_start = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %stripe.0, i32 1
  %40 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %physical_start, align 8
  %add = add i64 %41, %add439.i
  store i64 %add, ptr %bi_iter, align 8
  %arrayidx86 = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %stripe.0
  %42 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx86, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %bi_flags.i.i113 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %46 = ptrtoint ptr %bi_flags.i.i113 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bi_flags.i.i113, align 4
  %conv1.i.i114 = and i16 %47, -2049
  store i16 %conv1.i.i114, ptr %bi_flags.i.i113, align 4
  %bi_bdev.i115 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %48 = ptrtoint ptr %bi_bdev.i115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_bdev.i115, align 4
  %cmp.not.i116 = icmp eq ptr %49, %45
  br i1 %cmp.not.i116, label %stripe_map_sector.exit.bio_set_dev.exit119_crit_edge, label %if.then.i118

stripe_map_sector.exit.bio_set_dev.exit119_crit_edge: ; preds = %stripe_map_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit119

if.then.i118:                                     ; preds = %stripe_map_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i117 = and i16 %47, -2177
  %50 = ptrtoint ptr %bi_flags.i.i113 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv1.i8.i117, ptr %bi_flags.i.i113, align 4
  br label %bio_set_dev.exit119

bio_set_dev.exit119:                              ; preds = %if.then.i118, %stripe_map_sector.exit.bio_set_dev.exit119_crit_edge
  %51 = ptrtoint ptr %bi_bdev.i115 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %bi_bdev.i115, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #10
  br label %cleanup

cleanup:                                          ; preds = %bio_set_dev.exit119, %do.end76, %bio_set_dev.exit
  %retval.0 = phi i32 [ 1, %bio_set_dev.exit ], [ %call77, %do.end76 ], [ 1, %bio_set_dev.exit119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stripe_end_io(ptr nocapture noundef readonly %ti, ptr nocapture noundef readonly %bio, ptr nocapture noundef readonly %error) #4 align 64 {
entry:
  %major_minor = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %major_minor) #10
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %major_minor, i32 0, i32 16)
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_disk, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %15
  %shr = lshr i32 %or.i, 20
  %and12 = and i32 %15, 1048575
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %major_minor, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %and12)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1451.not = icmp eq i32 %17, 0
  br i1 %cmp1451.not, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %trigger_event = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.052
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %19, i32 0, i32 3
  %call18 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull %major_minor) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then20:                                        ; preds = %for.body
  %error_count = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.052, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %error_count, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error_count, ptr %error_count, i32 1, ptr elementtype(i32) %error_count) #10, !srcloc !73
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count, i32 noundef 4) #10
  %21 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %cmp27 = icmp slt i32 %22, 15
  br i1 %cmp27, label %if.then29, label %if.then20.for.inc_crit_edge

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then29:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i50 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %trigger_event) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.then20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.052, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  %cmp14 = icmp ult i32 %inc, %25
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %major_minor) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stripe_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb41
    i32 2, label %sw.bb77
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.cond.end_crit_edge, label %cond.false

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.15, i32 noundef %4) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %sw.bb.cond.end_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2302.not = icmp eq i32 %6, 0
  br i1 %cmp2302.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cond.end9.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.0305 = phi i32 [ %inc, %cond.end9.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %sz.0303 = phi i32 [ %add11, %cond.end9.for.body_crit_edge ], [ %cond, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0303, i32 %maxlen)
  %cmp3.not = icmp ult i32 %sz.0303, %maxlen
  br i1 %cmp3.not, label %cond.false5, label %for.body.cond.end9_crit_edge

for.body.cond.end9_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.false5:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr6 = getelementptr i8, ptr %result, i32 %sz.0303
  %sub7 = sub i32 %maxlen, %sz.0303
  %arrayidx = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.0305
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %8, i32 0, i32 3
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.16, ptr noundef %name) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false5, %for.body.cond.end9_crit_edge
  %cond10 = phi i32 [ %call8, %cond.false5 ], [ 0, %for.body.cond.end9_crit_edge ]
  %add11 = add i32 %cond10, %sz.0303
  %inc = add nuw i32 %i.0305, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %cmp2 = icmp ult i32 %inc, %10
  br i1 %cmp2, label %cond.end9.for.body_crit_edge, label %cond.end9.for.end_crit_edge

cond.end9.for.end_crit_edge:                      ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end9.for.body_crit_edge:                     ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cond.end9.for.end_crit_edge, %cond.end.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ %cond, %cond.end.for.end_crit_edge ], [ %add11, %cond.end9.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %maxlen)
  %cmp12.not = icmp ult i32 %sz.0.lcssa, %maxlen
  br i1 %cmp12.not, label %cond.false14, label %for.end.cond.end18_crit_edge

for.end.cond.end18_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end18

cond.false14:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr15 = getelementptr i8, ptr %result, i32 %sz.0.lcssa
  %sub16 = sub i32 %maxlen, %sz.0.lcssa
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.17) #10
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false14, %for.end.cond.end18_crit_edge
  %cond19 = phi i32 [ %call17, %cond.false14 ], [ 0, %for.end.cond.end18_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23308.not = icmp eq i32 %12, 0
  br i1 %cmp23308.not, label %cond.end18.sw.epilog_crit_edge, label %for.body24.preheader

cond.end18.sw.epilog_crit_edge:                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body24.preheader:                             ; preds = %cond.end18
  %add20 = add i32 %cond19, %sz.0.lcssa
  br label %for.body24

for.body24:                                       ; preds = %cond.end35.for.body24_crit_edge, %for.body24.preheader
  %i.1311 = phi i32 [ %inc39, %cond.end35.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %sz.1309 = phi i32 [ %add37, %cond.end35.for.body24_crit_edge ], [ %add20, %for.body24.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1309, i32 %maxlen)
  %cmp25.not = icmp ult i32 %sz.1309, %maxlen
  br i1 %cmp25.not, label %cond.false27, label %for.body24.cond.end35_crit_edge

for.body24.cond.end35_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end35

cond.false27:                                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr28 = getelementptr i8, ptr %result, i32 %sz.1309
  %sub29 = sub i32 %maxlen, %sz.1309
  %error_count = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.1311, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count, i32 noundef 4) #10
  %13 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %cond33 = select i1 %tobool.not, i32 65, i32 68
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.18, i32 noundef %cond33) #10
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false27, %for.body24.cond.end35_crit_edge
  %cond36 = phi i32 [ %call34, %cond.false27 ], [ 0, %for.body24.cond.end35_crit_edge ]
  %add37 = add i32 %cond36, %sz.1309
  %inc39 = add nuw i32 %i.1311, 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  %cmp23 = icmp ult i32 %inc39, %16
  br i1 %cmp23, label %cond.end35.for.body24_crit_edge, label %cond.end35.sw.epilog_crit_edge

cond.end35.sw.epilog_crit_edge:                   ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.end35.for.body24_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp42 = icmp eq i32 %maxlen, 0
  br i1 %cmp42, label %sw.bb41.cond.end49_crit_edge, label %cond.false44

sw.bb41.cond.end49_crit_edge:                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end49

cond.false44:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  %chunk_size = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chunk_size, align 8
  %conv = zext i32 %20 to i64
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.19, i32 noundef %18, i64 noundef %conv) #10
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false44, %sw.bb41.cond.end49_crit_edge
  %cond50 = phi i32 [ %call48, %cond.false44 ], [ 0, %sw.bb41.cond.end49_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp54297.not = icmp eq i32 %22, 0
  br i1 %cmp54297.not, label %cond.end49.sw.epilog_crit_edge, label %cond.end49.for.body56_crit_edge

cond.end49.for.body56_crit_edge:                  ; preds = %cond.end49
  br label %for.body56

cond.end49.sw.epilog_crit_edge:                   ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body56:                                       ; preds = %cond.end71.for.body56_crit_edge, %cond.end49.for.body56_crit_edge
  %i.2300 = phi i32 [ %inc75, %cond.end71.for.body56_crit_edge ], [ 0, %cond.end49.for.body56_crit_edge ]
  %sz.2298 = phi i32 [ %add73, %cond.end71.for.body56_crit_edge ], [ %cond50, %cond.end49.for.body56_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2298, i32 %maxlen)
  %cmp57.not = icmp ult i32 %sz.2298, %maxlen
  br i1 %cmp57.not, label %cond.false60, label %for.body56.cond.end71_crit_edge

for.body56.cond.end71_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end71

cond.false60:                                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr61 = getelementptr i8, ptr %result, i32 %sz.2298
  %sub62 = sub i32 %maxlen, %sz.2298
  %arrayidx64 = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.2300
  %23 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx64, align 8
  %name66 = getelementptr inbounds %struct.dm_dev, ptr %24, i32 0, i32 3
  %physical_start = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.2300, i32 1
  %25 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %physical_start, align 8
  %call70 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.20, ptr noundef %name66, i64 noundef %26) #10
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false60, %for.body56.cond.end71_crit_edge
  %cond72 = phi i32 [ %call70, %cond.false60 ], [ 0, %for.body56.cond.end71_crit_edge ]
  %add73 = add i32 %cond72, %sz.2298
  %inc75 = add nuw i32 %i.2300, 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 8
  %cmp54 = icmp ult i32 %inc75, %28
  br i1 %cmp54, label %cond.end71.for.body56_crit_edge, label %cond.end71.sw.epilog_crit_edge

cond.end71.sw.epilog_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.end71.for.body56_crit_edge:                  ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp78 = icmp eq i32 %maxlen, 0
  br i1 %cmp78, label %sw.bb77.cond.end95_crit_edge, label %cond.false81

sw.bb77.cond.end95_crit_edge:                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95

cond.false81:                                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  %type84 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %29 = ptrtoint ptr %type84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type84, align 4
  %name85 = getelementptr inbounds %struct.target_type, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name85, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version, align 8
  %arrayidx90 = getelementptr %struct.target_type, ptr %30, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx90, align 4
  %arrayidx93 = getelementptr %struct.target_type, ptr %30, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx93, align 8
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.21, ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #10
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false81, %sw.bb77.cond.end95_crit_edge
  %cond96 = phi i32 [ %call94, %cond.false81 ], [ 0, %sw.bb77.cond.end95_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond96, i32 %maxlen)
  %cmp98.not = icmp ult i32 %cond96, %maxlen
  br i1 %cmp98.not, label %cond.false101, label %cond.end95.cond.end108_crit_edge

cond.end95.cond.end108_crit_edge:                 ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end108

cond.false101:                                    ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr102 = getelementptr i8, ptr %result, i32 %cond96
  %sub103 = sub i32 %maxlen, %cond96
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 8
  %chunk_size105 = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %chunk_size105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chunk_size105, align 8
  %conv106 = zext i32 %42 to i64
  %call107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.22, i32 noundef %40, i64 noundef %conv106) #10
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false101, %cond.end95.cond.end108_crit_edge
  %cond109 = phi i32 [ %call107, %cond.false101 ], [ 0, %cond.end95.cond.end108_crit_edge ]
  %add110 = add i32 %cond109, %cond96
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp113292.not = icmp eq i32 %44, 0
  br i1 %cmp113292.not, label %cond.end108.for.end162_crit_edge, label %cond.end108.for.body115_crit_edge

cond.end108.for.body115_crit_edge:                ; preds = %cond.end108
  br label %for.body115

cond.end108.for.end162_crit_edge:                 ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body115:                                      ; preds = %cond.end157.for.body115_crit_edge, %cond.end108.for.body115_crit_edge
  %i.3295 = phi i32 [ %inc161, %cond.end157.for.body115_crit_edge ], [ 0, %cond.end108.for.body115_crit_edge ]
  %sz.3293 = phi i32 [ %add159, %cond.end157.for.body115_crit_edge ], [ %add110, %cond.end108.for.body115_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3293, i32 %maxlen)
  %cmp116.not = icmp ult i32 %sz.3293, %maxlen
  br i1 %cmp116.not, label %cond.false119, label %for.body115.cond.end128_crit_edge

for.body115.cond.end128_crit_edge:                ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end128

cond.false119:                                    ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr120 = getelementptr i8, ptr %result, i32 %sz.3293
  %sub121 = sub i32 %maxlen, %sz.3293
  %arrayidx123 = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.3295
  %45 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx123, align 8
  %name125 = getelementptr inbounds %struct.dm_dev, ptr %46, i32 0, i32 3
  %call127 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.23, i32 noundef %i.3295, ptr noundef %name125) #10
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false119, %for.body115.cond.end128_crit_edge
  %cond129 = phi i32 [ %call127, %cond.false119 ], [ 0, %for.body115.cond.end128_crit_edge ]
  %add130 = add i32 %cond129, %sz.3293
  call void @__sanitizer_cov_trace_cmp4(i32 %add130, i32 %maxlen)
  %cmp131.not = icmp ult i32 %add130, %maxlen
  br i1 %cmp131.not, label %cond.false134, label %cond.end128.cond.end141_crit_edge

cond.end128.cond.end141_crit_edge:                ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end141

cond.false134:                                    ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr135 = getelementptr i8, ptr %result, i32 %add130
  %sub136 = sub i32 %maxlen, %add130
  %physical_start139 = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.3295, i32 1
  %47 = ptrtoint ptr %physical_start139 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %physical_start139, align 8
  %call140 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135, i32 noundef %sub136, ptr noundef nonnull @.str.24, i32 noundef %i.3295, i64 noundef %48) #10
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false134, %cond.end128.cond.end141_crit_edge
  %cond142 = phi i32 [ %call140, %cond.false134 ], [ 0, %cond.end128.cond.end141_crit_edge ]
  %add143 = add i32 %cond142, %add130
  call void @__sanitizer_cov_trace_cmp4(i32 %add143, i32 %maxlen)
  %cmp144.not = icmp ult i32 %add143, %maxlen
  br i1 %cmp144.not, label %cond.false147, label %cond.end141.cond.end157_crit_edge

cond.end141.cond.end157_crit_edge:                ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end157

cond.false147:                                    ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr148 = getelementptr i8, ptr %result, i32 %add143
  %sub149 = sub i32 %maxlen, %add143
  %error_count152 = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.3295, i32 2
  %call.i.i290 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error_count152, i32 noundef 4) #10
  %49 = ptrtoint ptr %error_count152 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %error_count152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool154.not = icmp eq i32 %50, 0
  %cond155 = select i1 %tobool154.not, i32 65, i32 68
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr148, i32 noundef %sub149, ptr noundef nonnull @.str.25, i32 noundef %i.3295, i32 noundef %cond155) #10
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false147, %cond.end141.cond.end157_crit_edge
  %cond158 = phi i32 [ %call156, %cond.false147 ], [ 0, %cond.end141.cond.end157_crit_edge ]
  %add159 = add i32 %cond158, %add143
  %inc161 = add nuw i32 %i.3295, 1
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 8
  %cmp113 = icmp ult i32 %inc161, %52
  br i1 %cmp113, label %cond.end157.for.body115_crit_edge, label %cond.end157.for.end162_crit_edge

cond.end157.for.end162_crit_edge:                 ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

cond.end157.for.body115_crit_edge:                ; preds = %cond.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body115

for.end162:                                       ; preds = %cond.end157.for.end162_crit_edge, %cond.end108.for.end162_crit_edge
  %sz.3.lcssa = phi i32 [ %add110, %cond.end108.for.end162_crit_edge ], [ %add159, %cond.end157.for.end162_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.3.lcssa, i32 %maxlen)
  %cmp163.not = icmp ult i32 %sz.3.lcssa, %maxlen
  br i1 %cmp163.not, label %cond.false166, label %for.end162.sw.epilog_crit_edge

for.end162.sw.epilog_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

cond.false166:                                    ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr167 = getelementptr i8, ptr %result, i32 %sz.3.lcssa
  %sub168 = sub i32 %maxlen, %sz.3.lcssa
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr167, i32 noundef %sub168, ptr noundef nonnull @.str.26) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false166, %for.end162.sw.epilog_crit_edge, %cond.end71.sw.epilog_crit_edge, %cond.end49.sw.epilog_crit_edge, %cond.end35.sw.epilog_crit_edge, %cond.end18.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stripe_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %stripe_width = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %physical_start = getelementptr %struct.stripe_c, ptr %1, i32 0, i32 7, i32 %i.0, i32 1
  %4 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %physical_start, align 8
  %6 = ptrtoint ptr %stripe_width to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stripe_width, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %inc = add nuw i32 %i.0, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stripe_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chunk_size1 = getelementptr inbounds %struct.stripe_c, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chunk_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_size1, align 8
  %shl = shl i32 %3, 9
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef %shl) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %mul = mul i32 %5, %shl
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef %mul) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_event(ptr nocapture noundef readonly %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ti = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @dm_table_event(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_stripe(ptr noundef %ti, ptr noundef %sc, i32 noundef %stripe, ptr nocapture noundef readonly %argv) unnamed_addr #4 align 64 {
entry:
  %start = alloca i64, align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #10
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #10
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !66
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull %start, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %argv, align 4
  %6 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ti, align 8
  %call2 = call i32 @dm_table_get_mode(ptr noundef %7) #10
  %arrayidx4 = getelementptr %struct.stripe_c, ptr %sc, i32 0, i32 7, i32 %stripe
  %call5 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %5, i32 noundef %call2, ptr noundef %arrayidx4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %physical_start = getelementptr %struct.stripe_c, ptr %sc, i32 0, i32 7, i32 %stripe, i32 1
  %10 = ptrtoint ptr %physical_start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %physical_start, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bio_get_target_bio_nr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stripe_map_range(ptr nocapture noundef readonly %sc, ptr noundef %bio, i32 noundef %target_stripe) unnamed_addr #4 align 64 {
entry:
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %begin) #10
  %0 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %begin, align 8, !annotation !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #10
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %end, align 8, !annotation !66
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  call fastcc void @stripe_map_range_sector(ptr noundef %sc, i64 noundef %3, i32 noundef %target_stripe, ptr noundef nonnull %begin)
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %7, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %5, %conv
  call fastcc void @stripe_map_range_sector(ptr noundef %sc, i64 noundef %add, i32 noundef %target_stripe, ptr noundef nonnull %end)
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %begin, align 8
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %9)
  %cmp = icmp ugt i64 %11, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.stripe_c, ptr %sc, i32 0, i32 7, i32 %target_stripe
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %16 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %17, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %18 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %19, %15
  br i1 %cmp.not.i, label %if.then.bio_set_dev.exit_crit_edge, label %if.then.i

if.then.bio_set_dev.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %17, -2177
  %20 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.then.bio_set_dev.exit_crit_edge
  %21 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %15, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #10
  %physical_start = getelementptr %struct.stripe_c, ptr %sc, i32 0, i32 7, i32 %target_stripe, i32 1
  %22 = ptrtoint ptr %physical_start to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %physical_start, align 8
  %add7 = add i64 %23, %9
  %24 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add7, ptr %bi_iter, align 8
  %sub = sub i64 %11, %9
  %n.tr.i = trunc i64 %sub to i32
  %conv.i = shl i32 %n.tr.i, 9
  %25 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %bi_size, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_endio(ptr noundef %bio) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %bio_set_dev.exit
  %retval.0 = phi i32 [ 1, %bio_set_dev.exit ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %begin) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stripe_map_range_sector(ptr nocapture noundef readonly %sc, i64 noundef %sector, i32 noundef %target_stripe, ptr nocapture noundef %result) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ti.i = getelementptr inbounds %struct.stripe_c, ptr %sc, i32 0, i32 5
  %0 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti.i, align 8
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %begin.i, align 8
  %sub.i = sub i64 %sector, %3
  %chunk_size_shift.i = getelementptr inbounds %struct.stripe_c, ptr %sc, i32 0, i32 4
  %4 = ptrtoint ptr %chunk_size_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_size_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  %chunk_size.i = getelementptr inbounds %struct.stripe_c, ptr %sc, i32 0, i32 3
  %6 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_size.i, align 8
  br i1 %cmp.i, label %if.else165.i, label %if.else184.i

if.else165.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp167.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !67

if.then171.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv172.i = trunc i64 %sub.i to i32
  %conv172.i.frozen = freeze i32 %conv172.i
  %.frozen = freeze i32 %7
  %div175.i = udiv i32 %conv172.i.frozen, %.frozen
  %8 = mul i32 %div175.i, %.frozen
  %rem173.i.decomposed = sub i32 %conv172.i.frozen, %8
  %conv176.i = zext i32 %div175.i to i64
  br label %if.end181.i

if.else177.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub.i) #14, !srcloc !68
  %asmresult.i617.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %9, 1
  %shr.i.i = lshr i64 %asmresult.i617.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else177.i, %if.then171.i
  %chunk.0.i = phi i64 [ %conv176.i, %if.then171.i ], [ %asmresult1.i.i, %if.else177.i ]
  %__rem.0.i = phi i32 [ %rem173.i.decomposed, %if.then171.i ], [ %conv.i.i, %if.else177.i ]
  %conv183.i = zext i32 %__rem.0.i to i64
  br label %if.end192.i

if.else184.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub186.i = add i32 %7, -1
  %conv187.i = zext i32 %sub186.i to i64
  %and188.i = and i64 %sub.i, %conv187.i
  %sh_prom190.i = zext i32 %5 to i64
  %shr191.i = lshr i64 %sub.i, %sh_prom190.i
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else184.i, %if.end181.i
  %chunk.1.i = phi i64 [ %chunk.0.i, %if.end181.i ], [ %shr191.i, %if.else184.i ]
  %chunk_offset.0.i = phi i64 [ %conv183.i, %if.end181.i ], [ %and188.i, %if.else184.i ]
  %stripes_shift.i = getelementptr inbounds %struct.stripe_c, ptr %sc, i32 0, i32 1
  %10 = ptrtoint ptr %stripes_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stripes_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp193.i = icmp slt i32 %11, 0
  %12 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc, align 8
  br i1 %cmp193.i, label %if.else395.i, label %if.else417.i

if.else395.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %chunk.1.i)
  %cmp397.i = icmp ult i64 %chunk.1.i, 4294967296
  br i1 %cmp397.i, label %if.then405.i, label %if.else411.i, !prof !67

if.then405.i:                                     ; preds = %if.else395.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv406.i = trunc i64 %chunk.1.i to i32
  %conv406.i.frozen = freeze i32 %conv406.i
  %.frozen316 = freeze i32 %13
  %div409.i = udiv i32 %conv406.i.frozen, %.frozen316
  %14 = mul i32 %div409.i, %.frozen316
  %rem407.i.decomposed = sub i32 %conv406.i.frozen, %14
  %conv410.i = zext i32 %div409.i to i64
  br label %if.end426.i

if.else411.i:                                     ; preds = %if.else395.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %chunk.1.i) #14, !srcloc !68
  %asmresult.i642.i = extractvalue { i64, i64 } %15, 0
  %asmresult1.i643.i = extractvalue { i64, i64 } %15, 1
  %shr.i644.i = lshr i64 %asmresult.i642.i, 32
  %conv.i645.i = trunc i64 %shr.i644.i to i32
  br label %if.end426.i

if.else417.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub419.i = add i32 %13, -1
  %16 = trunc i64 %chunk.1.i to i32
  %conv422.i = and i32 %sub419.i, %16
  %sh_prom424.i = zext i32 %11 to i64
  %shr425.i = lshr i64 %chunk.1.i, %sh_prom424.i
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else417.i, %if.else411.i, %if.then405.i
  %stripe.0 = phi i32 [ %conv422.i, %if.else417.i ], [ %rem407.i.decomposed, %if.then405.i ], [ %conv.i645.i, %if.else411.i ]
  %chunk.3.i = phi i64 [ %shr425.i, %if.else417.i ], [ %conv410.i, %if.then405.i ], [ %asmresult1.i643.i, %if.else411.i ]
  br i1 %cmp.i, label %if.then430.i, label %if.else434.i

if.then430.i:                                     ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv432.i = zext i32 %7 to i64
  %mul433.i = mul i64 %chunk.3.i, %conv432.i
  br label %stripe_map_sector.exit

if.else434.i:                                     ; preds = %if.end426.i
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom436.i = zext i32 %5 to i64
  %shl437.i = shl i64 %chunk.3.i, %sh_prom436.i
  br label %stripe_map_sector.exit

stripe_map_sector.exit:                           ; preds = %if.else434.i, %if.then430.i
  %storemerge.i = phi i64 [ %shl437.i, %if.else434.i ], [ %mul433.i, %if.then430.i ]
  %add439.i = add i64 %storemerge.i, %chunk_offset.0.i
  %17 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add439.i, ptr %result, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.0, i32 %target_stripe)
  %cmp = icmp eq i32 %stripe.0, %target_stripe
  br i1 %cmp, label %stripe_map_sector.exit.cleanup_crit_edge, label %if.end

stripe_map_sector.exit.cleanup_crit_edge:         ; preds = %stripe_map_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %stripe_map_sector.exit
  %18 = ptrtoint ptr %chunk_size_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_size_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1 = icmp slt i32 %19, 0
  %20 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chunk_size.i, align 8
  br i1 %cmp1, label %if.else167, label %if.else187

if.else167:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add439.i)
  %cmp169 = icmp ult i64 %add439.i, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !67

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #12
  %conv174 = trunc i64 %add439.i to i32
  %rem175 = urem i32 %conv174, %21
  br label %if.end183

if.else179:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %add439.i) #14, !srcloc !68
  %asmresult.i292 = extractvalue { i64, i64 } %22, 0
  %shr.i293 = lshr i64 %asmresult.i292, 32
  %conv.i = trunc i64 %shr.i293 to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %__rem.0 = phi i32 [ %rem175, %if.then173 ], [ %conv.i, %if.else179 ]
  %conv185 = zext i32 %__rem.0 to i64
  %sub186 = sub i64 %add439.i, %conv185
  br label %if.end193

if.else187:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub189 = add i32 %21, -1
  %conv190 = zext i32 %sub189 to i64
  %neg191 = xor i64 %conv190, -1
  %and192 = and i64 %add439.i, %neg191
  br label %if.end193

if.end193:                                        ; preds = %if.else187, %if.end183
  %storemerge = phi i64 [ %and192, %if.else187 ], [ %sub186, %if.end183 ]
  %23 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %storemerge, ptr %result, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.0, i32 %target_stripe)
  %cmp194 = icmp ugt i32 %stripe.0, %target_stripe
  br i1 %cmp194, label %if.then196, label %if.end193.cleanup_crit_edge

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then196:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chunk_size.i, align 8
  %conv198 = zext i32 %25 to i64
  %add199 = add i64 %storemerge, %conv198
  %26 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add199, ptr %result, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then196, %if.end193.cleanup_crit_edge, %stripe_map_sector.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-stripe.c", i32 482, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_stripe_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_stripe_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-stripe.c", i32 461, i32 12}
!8 = !{ptr @stripe_target, !9, !"stripe_target", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-stripe.c", i32 460, i32 27}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-stripe.c", i32 95, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-stripe.c", i32 100, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-stripe.c", i32 105, i32 15}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-stripe.c", i32 111, i32 15}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-stripe.c", i32 118, i32 15}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-stripe.c", i32 127, i32 15}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-stripe.c", i32 134, i32 15}
!24 = !{ptr @stripe_ctr.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-stripe.c", i32 139, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-stripe.c", i32 177, i32 16}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-stripe.c", i32 68, i32 22}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-stripe.c", i32 415, i32 23}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-stripe.c", i32 362, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-stripe.c", i32 364, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-stripe.c", i32 366, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-stripe.c", i32 368, i32 4}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-stripe.c", i32 374, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-stripe.c", i32 377, i32 4}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-stripe.c", i32 382, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-stripe.c", i32 383, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-stripe.c", i32 387, i32 4}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-stripe.c", i32 388, i32 4}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-stripe.c", i32 390, i32 4}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-stripe.c", i32 393, i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148518919, i64 2148519199, i64 2148519533, i64 2148519867}
!69 = !{i32 0, i32 33}
!70 = !{i64 2154778797, i64 2154779284, i64 2154778834, i64 2154778890, i64 2154778924, i64 2154778948, i64 2154778989, i64 2154779010, i64 2154779038, i64 2154779072}
!71 = !{!"branch_weights", i32 -388717296, i32 1956055, i32 1955078, i32 1954101, i32 1953125}
!72 = !{i64 2154781005, i64 2154781492, i64 2154781042, i64 2154781098, i64 2154781132, i64 2154781156, i64 2154781197, i64 2154781218, i64 2154781246, i64 2154781280}
!73 = !{i64 2148669134, i64 2148669160, i64 2148669189, i64 2148669223, i64 2148669254, i64 2148669277}
