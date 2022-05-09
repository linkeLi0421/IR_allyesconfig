; ModuleID = '/llk/IR_all_yes/drivers/md/dm-snap-persistent.c_pt.bc'
source_filename = "../drivers/md/dm-snap-persistent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_exception_store_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pstore = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, %struct.atomic_t, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dm_exception_store = type { ptr, ptr, i32, i32, i32, ptr, i8 }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_io_request = type { i32, i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.disk_header = type { i32, i32, i32, i32 }
%struct.disk_exception = type { i64, i64 }
%struct.dm_exception = type { %struct.hlist_bl_node, i64, i64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.commit_callback = type { ptr, ptr }
%struct.mdata_req = type { ptr, ptr, %struct.work_struct, i32 }

@_persistent_type = internal global { %struct.dm_exception_store_type, [40 x i8] } { %struct.dm_exception_store_type { ptr @.str.6, ptr null, ptr @persistent_ctr, ptr @persistent_dtr, ptr @persistent_read_metadata, ptr @persistent_prepare_exception, ptr @persistent_commit_exception, ptr @persistent_prepare_merge, ptr @persistent_commit_merge, ptr @persistent_drop_snapshot, ptr @persistent_status, ptr @persistent_usage, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@dm_persistent_snapshot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013device-mapper: persistent snapshot: Unable to register persistent exception store type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dm_persistent_snapshot_init\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/md/dm-snap-persistent.c\00", [32 x i8] zeroinitializer }, align 32
@dm_persistent_snapshot_init._entry_ptr = internal global ptr @dm_persistent_snapshot_init._entry, section ".printk_index", align 4
@_persistent_compat_type = internal global { %struct.dm_exception_store_type, [40 x i8] } { %struct.dm_exception_store_type { ptr @.str.34, ptr null, ptr @persistent_ctr, ptr @persistent_dtr, ptr @persistent_read_metadata, ptr @persistent_prepare_exception, ptr @persistent_commit_exception, ptr @persistent_prepare_merge, ptr @persistent_commit_merge, ptr @persistent_drop_snapshot, ptr @persistent_status, ptr @persistent_usage, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@dm_persistent_snapshot_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013device-mapper: persistent snapshot: Unable to register old-style persistent exception store type\0A\00", [60 x i8] zeroinitializer }, align 32
@dm_persistent_snapshot_init._entry_ptr.5 = internal global ptr @dm_persistent_snapshot_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"persistent\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksnaphd\00", [24 x i8] zeroinitializer }, align 32
@persistent_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: persistent snapshot: couldn't start header metadata update thread\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"persistent_ctr\00", [17 x i8] zeroinitializer }, align 32
@persistent_ctr._entry_ptr = internal global ptr @persistent_ctr._entry, section ".printk_index", align 4
@persistent_ctr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013device-mapper: persistent snapshot: Unsupported persistent store option: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@persistent_ctr._entry_ptr.12 = internal global ptr @persistent_ctr._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@persistent_read_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: persistent snapshot: write_header failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"persistent_read_metadata\00", [39 x i8] zeroinitializer }, align 32
@persistent_read_metadata._entry_ptr = internal global ptr @persistent_read_metadata._entry, section ".printk_index", align 4
@persistent_read_metadata._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: persistent snapshot: zero_disk_area(0) failed\0A\00", [32 x i8] zeroinitializer }, align 32
@persistent_read_metadata._entry_ptr.17 = internal global ptr @persistent_read_metadata._entry.15, section ".printk_index", align 4
@persistent_read_metadata._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014device-mapper: persistent snapshot: unable to handle snapshot disk version %d\0A\00", [47 x i8] zeroinitializer }, align 32
@persistent_read_metadata._entry_ptr.20 = internal global ptr @persistent_read_metadata._entry.18, section ".printk_index", align 4
@read_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014device-mapper: persistent snapshot: Invalid or corrupt snapshot\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_header\00", [20 x i8] zeroinitializer }, align 32
@read_header._entry_ptr = internal global ptr @read_header._entry, section ".printk_index", align 4
@read_header._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\014device-mapper: persistent snapshot: chunk size %u in device metadata overrides table chunk size of %u.\0A\00", [54 x i8] zeroinitializer }, align 32
@read_header._entry_ptr.25 = internal global ptr @read_header._entry.23, section ".printk_index", align 4
@read_header._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: persistent snapshot: invalid on-disk chunk size %u: %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@read_header._entry_ptr.28 = internal global ptr @read_header._entry.26, section ".printk_index", align 4
@chunk_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&req.work)\00", [35 x i8] zeroinitializer }, align 32
@persistent_drop_snapshot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: persistent snapshot: write header failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"persistent_drop_snapshot\00", [39 x i8] zeroinitializer }, align 32
@persistent_drop_snapshot._entry_ptr = internal global ptr @persistent_drop_snapshot._entry, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s %llu\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PO\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1399734640]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"_persistent_type\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 920, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 956, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"_persistent_compat_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 935, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 962, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 921, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 869, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 871, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 881, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 635, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 643, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 650, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 344, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 358, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 368, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 257, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 843, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/md/dm-snap-persistent.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 909, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @dm_persistent_snapshot_init._entry, ptr @dm_persistent_snapshot_init._entry.3, ptr @dm_persistent_snapshot_init._entry_ptr, ptr @dm_persistent_snapshot_init._entry_ptr.5, ptr @persistent_ctr._entry, ptr @persistent_ctr._entry.10, ptr @persistent_ctr._entry_ptr, ptr @persistent_ctr._entry_ptr.12, ptr @persistent_drop_snapshot._entry, ptr @persistent_drop_snapshot._entry_ptr, ptr @persistent_read_metadata._entry, ptr @persistent_read_metadata._entry.15, ptr @persistent_read_metadata._entry.18, ptr @persistent_read_metadata._entry_ptr, ptr @persistent_read_metadata._entry_ptr.17, ptr @persistent_read_metadata._entry_ptr.20, ptr @read_header._entry, ptr @read_header._entry.23, ptr @read_header._entry.26, ptr @read_header._entry_ptr, ptr @read_header._entry_ptr.25, ptr @read_header._entry_ptr.28, ptr @_persistent_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @_persistent_compat_type, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @chunk_io.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_persistent_type to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_persistent_snapshot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_persistent_compat_type to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_persistent_snapshot_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_ctr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_read_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_read_metadata._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_read_metadata._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_header._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_header._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_drop_snapshot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_persistent_snapshot_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_exception_store_type_register(ptr noundef nonnull @_persistent_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dm_exception_store_type_register(ptr noundef nonnull @_persistent_compat_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %call10 = tail call i32 @dm_exception_store_type_unregister(ptr noundef nonnull @_persistent_type) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_exception_store_type_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_exception_store_type_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_persistent_snapshot_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_exception_store_type_unregister(ptr noundef nonnull @_persistent_type) #8
  %call1 = tail call i32 @dm_exception_store_type_unregister(ptr noundef nonnull @_persistent_compat_type) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_ctr(ptr noundef %store, ptr noundef %options) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %store, ptr %call7.i.i, align 8
  %valid = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %valid, align 8
  %version = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %version, align 4
  %area = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %area, align 8
  %zero_area = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %zero_area to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %zero_area, align 4
  %header_area = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %header_area to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %header_area, align 8
  %next_free = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %next_free to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2, ptr %next_free, align 8
  %current_committed = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %current_committed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %current_committed, align 8
  %callback_count = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %callback_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %callback_count, align 8
  %pending_count = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_count, i32 noundef 4) #8
  %10 = ptrtoint ptr %pending_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %pending_count, align 4
  %callbacks = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %callbacks to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %callbacks, align 4
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef 0) #8
  %metadata_wq = getelementptr inbounds %struct.pstore, ptr %call7.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %metadata_wq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %metadata_wq, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %err_workqueue

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %options, null
  br i1 %tobool8.not, label %if.end7.if.end19_crit_edge, label %if.then9

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %options, align 1
  %conv.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i = icmp eq i8 %17, 0
  %sub.i = add i8 %14, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %14, i8 %sub.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %spec.select.i)
  %cmp = icmp eq i8 %spec.select.i, 79
  br i1 %cmp, label %cleanup.thread, label %err_options

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %userspace_supports_overflow = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 6
  %18 = ptrtoint ptr %userspace_supports_overflow to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %userspace_supports_overflow, align 4
  br label %if.end19

if.end19:                                         ; preds = %cleanup.thread, %if.end7.if.end19_crit_edge
  %context = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %context, align 4
  br label %cleanup21

err_options:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %options) #11
  %20 = ptrtoint ptr %metadata_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %metadata_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %21) #8
  br label %err_workqueue

err_workqueue:                                    ; preds = %err_options, %do.end
  %r.1 = phi i32 [ -22, %err_options ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup21

cleanup21:                                        ; preds = %err_workqueue, %if.end19, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ %r.1, %err_workqueue ], [ 0, %if.end19 ], [ -12, %entry.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @persistent_dtr(ptr nocapture noundef readonly %store) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %metadata_wq = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %metadata_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #8
  %io_client = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %io_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_client, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_io_client_destroy(ptr noundef nonnull %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area.i, align 8
  tail call void @vfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %area.i, align 8
  %zero_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %zero_area.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zero_area.i, align 4
  tail call void @vfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %zero_area.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %zero_area.i, align 4
  %header_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %header_area.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %header_area.i, align 8
  tail call void @vfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %header_area.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %header_area.i, align 8
  %callbacks = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callbacks, align 4
  tail call void @kvfree(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_read_metadata(ptr nocapture noundef readonly %store, ptr nocapture noundef readonly %callback, ptr noundef %callback_context) #0 align 64 {
entry:
  %bp.i = alloca ptr, align 4
  %where.i.i = alloca %struct.dm_io_region, align 8
  %io_req.i.i = alloca %struct.dm_io_request, align 4
  %chunk_err.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chunk_err.i) #8
  %2 = ptrtoint ptr %chunk_err.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %chunk_err.i, align 4, !annotation !74
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %chunk_size1.i = getelementptr inbounds %struct.dm_exception_store, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %chunk_size1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chunk_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %snap.i = getelementptr inbounds %struct.dm_exception_store, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %snap.i, align 4
  %call.i = tail call ptr @dm_snap_cow(ptr noundef %8) #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.i.bdev_logical_block_size.exit.thread.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.bdev_logical_block_size.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bdev_logical_block_size.exit.thread.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 9
  %13 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %14)
  %cmp.i = icmp ult i32 %14, 16384
  %shr.i = lshr i32 %14, 9
  br i1 %cmp.i, label %land.lhs.true.i.i.i.bdev_logical_block_size.exit.thread.i_crit_edge, label %land.lhs.true.i.i.i._crit_edge

land.lhs.true.i.i.i._crit_edge:                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %15

land.lhs.true.i.i.i.bdev_logical_block_size.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bdev_logical_block_size.exit.thread.i

bdev_logical_block_size.exit.thread.i:            ; preds = %land.lhs.true.i.i.i.bdev_logical_block_size.exit.thread.i_crit_edge, %if.then.i.bdev_logical_block_size.exit.thread.i_crit_edge
  br label %15

15:                                               ; preds = %bdev_logical_block_size.exit.thread.i, %land.lhs.true.i.i.i._crit_edge
  %16 = phi i32 [ 32, %bdev_logical_block_size.exit.thread.i ], [ %shr.i, %land.lhs.true.i.i.i._crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %chunk_size5.i = getelementptr inbounds %struct.dm_exception_store, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %chunk_size5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %chunk_size5.i, align 4
  %20 = load ptr, ptr %1, align 8
  %chunk_size7.i = getelementptr inbounds %struct.dm_exception_store, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %chunk_size7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_size7.i, align 4
  %sub.i = add i32 %22, -1
  %chunk_mask.i = getelementptr inbounds %struct.dm_exception_store, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %chunk_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %chunk_mask.i, align 4
  %24 = load ptr, ptr %1, align 8
  %chunk_size10.i = getelementptr inbounds %struct.dm_exception_store, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %chunk_size10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chunk_size10.i, align 4
  %27 = tail call i32 @llvm.cttz.i32(i32 %26, i1 false) #8, !range !75
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %24, i32 0, i32 4
  %28 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %chunk_shift.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %15, %entry.if.end.i_crit_edge
  %call13.i = tail call ptr @dm_io_client_create() #8
  %io_client.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %io_client.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call13.i, ptr %io_client.i, align 8
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call13.i to i32
  br label %read_header.exit

if.end19.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %chunk_size.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chunk_size.i.i, align 4
  %shl.i.i = shl i32 %34, 9
  %call.i.i = tail call noalias ptr @vmalloc(i32 noundef %shl.i.i) #13
  %area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %area.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %area.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end19.i.read_header.exit.thread_crit_edge, label %if.end.i.i

if.end19.i.read_header.exit.thread_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_header.exit.thread

if.end.i.i:                                       ; preds = %if.end19.i
  %call2.i.i = tail call noalias ptr @vzalloc(i32 noundef %shl.i.i) #13
  %zero_area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %zero_area.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i.i, ptr %zero_area.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.err_zero_area.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.err_zero_area.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero_area.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call noalias ptr @vmalloc(i32 noundef %shl.i.i) #13
  %header_area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %header_area.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %header_area.i.i, align 8
  %tobool9.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i.i, label %err_header_area.i.i, label %if.end23.i

err_header_area.i.i:                              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %zero_area.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zero_area.i.i, align 4
  tail call void @vfree(ptr noundef %39) #8
  br label %err_zero_area.i.i

err_zero_area.i.i:                                ; preds = %err_header_area.i.i, %if.end.i.i.err_zero_area.i.i_crit_edge
  %40 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %area.i.i, align 8
  tail call void @vfree(ptr noundef %41) #8
  br label %read_header.exit.thread

if.end23.i:                                       ; preds = %if.end6.i.i
  %call24.i = tail call fastcc i32 @chunk_io(ptr noundef %1, ptr noundef nonnull %call7.i.i, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.bad.i_crit_edge

if.end23.i.bad.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad.i

if.end27.i:                                       ; preds = %if.end23.i
  %42 = ptrtoint ptr %header_area.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %header_area.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %43, align 1
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %do.end.i [
    i32 0, label %if.end27.i.read_header.exit.thread91_crit_edge
    i32 1399734640, label %if.end37.i
  ]

if.end27.i.read_header.exit.thread91_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_header.exit.thread91

do.end.i:                                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %bad.i

if.end37.i:                                       ; preds = %if.end27.i
  %valid.i = getelementptr inbounds %struct.disk_header, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %valid.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %valid.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %valid38.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %valid38.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %valid38.i, align 8
  %version.i = getelementptr inbounds %struct.disk_header, ptr %43, i32 0, i32 2
  %51 = ptrtoint ptr %version.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %version.i, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %version39.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %version39.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %version39.i, align 4
  %chunk_size40.i = getelementptr inbounds %struct.disk_header, ptr %43, i32 0, i32 3
  %55 = ptrtoint ptr %chunk_size40.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %chunk_size40.i, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %chunk_size42.i = getelementptr inbounds %struct.dm_exception_store, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %chunk_size42.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chunk_size42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %57)
  %cmp43.i = icmp eq i32 %61, %57
  br i1 %cmp43.i, label %if.end37.i.read_header.exit.thread91_crit_edge, label %if.end45.i

if.end37.i.read_header.exit.thread91_crit_edge:   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_header.exit.thread91

if.end45.i:                                       ; preds = %if.end37.i
  br i1 %tobool.not.i, label %if.end45.i.if.end55.i_crit_edge, label %do.end50.i

if.end45.i.if.end55.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end50.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %57, i32 noundef %61) #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end50.i, %if.end45.i.if.end55.i_crit_edge
  tail call fastcc void @free_area(ptr noundef %1) #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %call57.i = call i32 @dm_exception_store_set_chunk_size(ptr noundef %63, i32 noundef %57, ptr noundef nonnull %chunk_err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end65.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %chunk_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chunk_err.i, align 4
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %57, ptr noundef %65) #11
  br label %read_header.exit.thread

if.end65.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %call66.i = call fastcc i32 @alloc_area(ptr noundef %1) #8
  br label %read_header.exit

bad.i:                                            ; preds = %do.end.i, %if.end23.i.bad.i_crit_edge
  %r.0.i = phi i32 [ %call24.i, %if.end23.i.bad.i_crit_edge ], [ -6, %do.end.i ]
  %66 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %area.i.i, align 8
  tail call void @vfree(ptr noundef %67) #8
  %68 = ptrtoint ptr %area.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %area.i.i, align 8
  %69 = ptrtoint ptr %zero_area.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %zero_area.i.i, align 4
  tail call void @vfree(ptr noundef %70) #8
  %71 = ptrtoint ptr %zero_area.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %zero_area.i.i, align 4
  %72 = ptrtoint ptr %header_area.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %header_area.i.i, align 8
  tail call void @vfree(ptr noundef %73) #8
  %74 = ptrtoint ptr %header_area.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %header_area.i.i, align 8
  br label %read_header.exit.thread

read_header.exit.thread:                          ; preds = %bad.i, %do.end62.i, %err_zero_area.i.i, %if.end19.i.read_header.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %err_zero_area.i.i ], [ -12, %if.end19.i.read_header.exit.thread_crit_edge ], [ %call57.i, %do.end62.i ], [ %r.0.i, %bad.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_err.i) #8
  br label %cleanup

read_header.exit.thread91:                        ; preds = %if.end37.i.read_header.exit.thread91_crit_edge, %if.end27.i.read_header.exit.thread91_crit_edge
  %new_snapshot.0.ph = phi i32 [ 1, %if.end27.i.read_header.exit.thread91_crit_edge ], [ 0, %if.end37.i.read_header.exit.thread91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_err.i) #8
  br label %if.end

read_header.exit:                                 ; preds = %if.end65.i, %if.then16.i
  %new_snapshot.0 = phi i32 [ -1, %if.then16.i ], [ 0, %if.end65.i ]
  %retval.0.i = phi i32 [ %30, %if.then16.i ], [ %call66.i, %if.end65.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chunk_err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %read_header.exit.if.end_crit_edge, label %read_header.exit.cleanup_crit_edge

read_header.exit.cleanup_crit_edge:               ; preds = %read_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

read_header.exit.if.end_crit_edge:                ; preds = %read_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %read_header.exit.if.end_crit_edge, %read_header.exit.thread91
  %new_snapshot.095 = phi i32 [ %new_snapshot.0.ph, %read_header.exit.thread91 ], [ %new_snapshot.0, %read_header.exit.if.end_crit_edge ]
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chunk_size, align 4
  %79 = shl i32 %78, 5
  %div59 = and i32 %79, 268435424
  %exceptions_per_area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div59, ptr %exceptions_per_area, align 4
  %81 = shl nuw nsw i32 %div59, 3
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %81, i32 noundef 3520, i32 noundef -1) #13
  %callbacks = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 12
  %82 = ptrtoint ptr %callbacks to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i.i, ptr %callbacks, align 4
  %tobool6.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_snapshot.095)
  %tobool9.not = icmp eq i32 %new_snapshot.095, 0
  br i1 %tobool9.not, label %if.end25, label %if.then10

if.then10:                                        ; preds = %if.end8
  %header_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 6
  %83 = ptrtoint ptr %header_area.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %header_area.i, align 8
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chunk_size.i, align 4
  %shl.i = shl i32 %88, 9
  %89 = call ptr @memset(ptr %84, i32 0, i32 %shl.i)
  %90 = load ptr, ptr %header_area.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 1399734640, ptr %90, align 1
  %valid.i61 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %valid.i61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %valid.i61, align 8
  %94 = call i32 @llvm.bswap.i32(i32 %93) #8
  %valid2.i = getelementptr inbounds %struct.disk_header, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %valid2.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %valid2.i, align 1
  %version.i62 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %version.i62 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %version.i62, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #8
  %version3.i = getelementptr inbounds %struct.disk_header, ptr %90, i32 0, i32 2
  %99 = ptrtoint ptr %version3.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %version3.i, align 1
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 8
  %chunk_size5.i63 = getelementptr inbounds %struct.dm_exception_store, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %chunk_size5.i63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %chunk_size5.i63, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #8
  %chunk_size6.i = getelementptr inbounds %struct.disk_header, ptr %90, i32 0, i32 3
  %105 = ptrtoint ptr %chunk_size6.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %chunk_size6.i, align 1
  %106 = ptrtoint ptr %header_area.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %header_area.i, align 8
  %call.i64 = call fastcc i32 @chunk_io(ptr noundef %1, ptr noundef %107, i64 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool12.not = icmp eq i32 %call.i64, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %current_area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %108 = ptrtoint ptr %current_area to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %current_area, align 8
  %area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %109 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %area.i, align 8
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %chunk_size.i65 = getelementptr inbounds %struct.dm_exception_store, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %chunk_size.i65 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %chunk_size.i65, align 4
  %shl.i66 = shl i32 %114, 9
  %115 = call ptr @memset(ptr %110, i32 0, i32 %shl.i66)
  %zero_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 5
  %116 = ptrtoint ptr %zero_area.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %zero_area.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where.i.i) #8
  %118 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 -1, ptr %where.i.i, align 8
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  %snap.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %snap.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %snap.i.i, align 4
  %call.i.i67 = call ptr @dm_snap_cow(ptr noundef %122) #8
  %123 = ptrtoint ptr %call.i.i67 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i.i67, align 4
  %125 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %where.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 8
  %chunk_size.i.i68 = getelementptr inbounds %struct.dm_exception_store, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %chunk_size.i.i68 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %chunk_size.i.i68, align 4
  %conv.i4.i = zext i32 %129 to i64
  %130 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %conv.i4.i, ptr %sector.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 2
  %131 = load i32, ptr %chunk_size.i.i68, align 4
  %conv5.i.i = zext i32 %131 to i64
  %132 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv5.i.i, ptr %count.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i) #8
  %133 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 1
  %134 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2
  %135 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 1
  %136 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 2
  %137 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3
  %138 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3, i32 1
  %139 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %io_req.i.i, align 4
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %133, align 4
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %134, align 4
  %143 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %135, align 4
  %144 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %117, ptr %136, align 4
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %137, align 4
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %138, align 4
  %147 = ptrtoint ptr %io_client.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %io_client.i, align 8
  %149 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %139, align 4
  %call6.i.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i, i32 noundef 1, ptr noundef nonnull %where.i.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool17.not = icmp eq i32 %call6.i.i, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  %version = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 1
  %150 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.not = icmp eq i32 %151, 1
  br i1 %cmp.not, label %if.end33, label %do.end29

do.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %151) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %valid = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %152 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool34.not = icmp eq i32 %153, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 8
  %snap.i69 = getelementptr inbounds %struct.dm_exception_store, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %snap.i69 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %snap.i69, align 4
  %call.i70 = call ptr @dm_snap_cow(ptr noundef %157) #8
  %158 = ptrtoint ptr %call.i70 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call.i70, align 4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 8
  %chunk_size.i71 = getelementptr inbounds %struct.dm_exception_store, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %chunk_size.i71 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %chunk_size.i71, align 4
  %shl.i72 = shl i32 %163, 9
  %call2.i = call ptr @dm_bufio_client_create(ptr noundef %159, i32 noundef %shl.i72, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %cmp.i.i73 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i73, label %if.then.i74, label %if.end.i76

if.then.i74:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end.i76:                                       ; preds = %if.end36
  call void @dm_bufio_set_minimum_buffers(ptr noundef %call2.i, i32 noundef 13) #8
  %current_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %165 = ptrtoint ptr %current_area.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 0, ptr %current_area.i, align 8
  %next_free.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 8
  %current_committed.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 9
  %area45.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i76
  %prefetch_area.0137.i = phi i64 [ 0, %if.end.i76 ], [ %prefetch_area.3123.i, %for.inc.i.for.body.i_crit_edge ]
  %storemerge136.i = phi i64 [ 0, %if.end.i76 ], [ %inc65.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #8
  %166 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !74
  call void @__sanitizer_cov_trace_cmp8(i64 %prefetch_area.0137.i, i64 %storemerge136.i)
  %cmp.i77 = icmp ult i64 %prefetch_area.0137.i, %storemerge136.i
  br i1 %cmp.i77, label %if.then8.i, label %for.body.i.do.body.i.preheader_crit_edge, !prof !76

for.body.i.do.body.i.preheader_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then8.i, %for.body.i.do.body.i.preheader_crit_edge
  %prefetch_area.2.i.ph = phi i64 [ %prefetch_area.0137.i, %for.body.i.do.body.i.preheader_crit_edge ], [ %storemerge136.i, %if.then8.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.i.preheader
  %prefetch_area.2.i = phi i64 [ %inc.i, %do.cond.i.do.body.i_crit_edge ], [ %prefetch_area.2.i.ph, %do.body.i.preheader ]
  %167 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %exceptions_per_area, align 4
  %add.i.i78 = add i32 %168, 1
  %conv.i.i79 = zext i32 %add.i.i78 to i64
  %mul.i.i = mul i64 %prefetch_area.2.i, %conv.i.i79
  %add1.i.i = add i64 %mul.i.i, 1
  %call12.i = call i64 @dm_bufio_get_device_size(ptr noundef %call2.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add1.i.i, i64 %call12.i)
  %cmp13.not.i = icmp ult i64 %add1.i.i, %call12.i
  br i1 %cmp13.not.i, label %if.end21.i, label %do.body.i.do.end.i80_crit_edge, !prof !77

do.body.i.do.end.i80_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i80

if.end21.i:                                       ; preds = %do.body.i
  call void @dm_bufio_prefetch(ptr noundef %call2.i, i64 noundef %add1.i.i, i32 noundef 1) #8
  %inc.i = add i64 %prefetch_area.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc.i)
  %tobool22.not.i = icmp eq i64 %inc.i, 0
  br i1 %tobool22.not.i, label %if.end21.i.do.end.i80_crit_edge, label %do.cond.i

if.end21.i.do.end.i80_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i80

do.cond.i:                                        ; preds = %if.end21.i
  %169 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %current_area.i, align 8
  %add.i = add i64 %170, 12
  %cmp34.not.i = icmp ugt i64 %inc.i, %add.i
  br i1 %cmp34.not.i, label %do.cond.i.do.end.i80_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond.i.do.end.i80_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i80

do.end.i80:                                       ; preds = %do.cond.i.do.end.i80_crit_edge, %if.end21.i.do.end.i80_crit_edge, %do.body.i.do.end.i80_crit_edge
  %prefetch_area.3123.i = phi i64 [ %inc.i, %do.cond.i.do.end.i80_crit_edge ], [ %prefetch_area.2.i, %do.body.i.do.end.i80_crit_edge ], [ 0, %if.end21.i.do.end.i80_crit_edge ]
  %171 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %current_area.i, align 8
  %173 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %exceptions_per_area, align 4
  %add.i105.i = add i32 %174, 1
  %conv.i106.i = zext i32 %add.i105.i to i64
  %mul.i107.i = mul i64 %172, %conv.i106.i
  %add1.i108.i = add i64 %mul.i107.i, 1
  %call37.i = call ptr @dm_bufio_read(ptr noundef %call2.i, i64 noundef %add1.i108.i, ptr noundef nonnull %bp.i) #8
  %cmp.i109.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109.i, label %if.then39.i, label %if.end41.i

if.then39.i:                                      ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %call37.i to i32
  br label %cleanup59.thread.i

if.end41.i:                                       ; preds = %do.end.i80
  %176 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %exceptions_per_area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp24.not.i.i = icmp eq i32 %177, 0
  br i1 %cmp24.not.i.i, label %if.end41.i.if.end49.i_crit_edge, label %if.end41.i.read_exception.exit.i.i_crit_edge

if.end41.i.read_exception.exit.i.i_crit_edge:     ; preds = %if.end41.i
  br label %read_exception.exit.i.i

if.end41.i.if.end49.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

read_exception.exit.i.i:                          ; preds = %for.inc.i.i.read_exception.exit.i.i_crit_edge, %if.end41.i.read_exception.exit.i.i_crit_edge
  %i.025.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.read_exception.exit.i.i_crit_edge ], [ 0, %if.end41.i.read_exception.exit.i.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr %struct.disk_exception, ptr %call37.i, i32 %i.025.i.i
  %178 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 8)
  %179 = load i64, ptr %add.ptr.i.i.i.i, align 1
  %180 = call i64 @llvm.bswap.i64(i64 %179) #8
  %new_chunk.i.i.i = getelementptr %struct.disk_exception, ptr %call37.i, i32 %i.025.i.i, i32 1
  %181 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %new_chunk.i.i.i, align 1
  %183 = call i64 @llvm.bswap.i64(i64 %182) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %182)
  %cmp1.i.i = icmp eq i64 %182, 0
  br i1 %cmp1.i.i, label %if.then44.i, label %if.end.i.i81

if.end.i.i81:                                     ; preds = %read_exception.exit.i.i
  %184 = ptrtoint ptr %next_free.i.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %next_free.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %185, i64 %183)
  %cmp3.not.i.i = icmp ugt i64 %185, %183
  br i1 %cmp3.not.i.i, label %if.end.i.i81.if.end7.i.i_crit_edge, label %if.then4.i.i

if.end.i.i81.if.end7.i.i_crit_edge:               ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  %add.i111.i = add i64 %183, 1
  %186 = ptrtoint ptr %next_free.i.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %add.i111.i, ptr %next_free.i.i, align 8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i81.if.end7.i.i_crit_edge
  %call.i.i82 = call i32 %callback(ptr noundef %callback_context, i64 noundef %180, i64 noundef %183) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %call.i.i82, 0
  br i1 %tobool.not.i.i83, label %for.inc.i.i, label %if.end7.i.i.if.end49.i_crit_edge

if.end7.i.i.if.end49.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

for.inc.i.i:                                      ; preds = %if.end7.i.i
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %187 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %exceptions_per_area, align 4
  %cmp.i112.i = icmp ult i32 %inc.i.i, %188
  br i1 %cmp.i112.i, label %for.inc.i.i.read_exception.exit.i.i_crit_edge, label %for.inc.i.i.if.end49.i_crit_edge

for.inc.i.i.if.end49.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

for.inc.i.i.read_exception.exit.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %read_exception.exit.i.i

if.then44.i:                                      ; preds = %read_exception.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %189 = ptrtoint ptr %current_committed.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %i.025.i.i, ptr %current_committed.i.i, align 8
  %190 = ptrtoint ptr %area45.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %area45.i, align 8
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 8
  %chunk_size47.i = getelementptr inbounds %struct.dm_exception_store, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %chunk_size47.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %chunk_size47.i, align 4
  %shl48.i = shl i32 %195, 9
  %196 = call ptr @memcpy(ptr %191, ptr %call37.i, i32 %shl48.i)
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %for.inc.i.i.if.end49.i_crit_edge, %if.end7.i.i.if.end49.i_crit_edge, %if.end41.i.if.end49.i_crit_edge
  %retval.0.i128.i = phi i32 [ 0, %if.then44.i ], [ 0, %if.end41.i.if.end49.i_crit_edge ], [ 0, %for.inc.i.i.if.end49.i_crit_edge ], [ %call.i.i82, %if.end7.i.i.if.end49.i_crit_edge ]
  %tobool.not.i84 = phi i1 [ true, %if.then44.i ], [ false, %if.end41.i.if.end49.i_crit_edge ], [ false, %if.end7.i.i.if.end49.i_crit_edge ], [ false, %for.inc.i.i.if.end49.i_crit_edge ]
  %197 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bp.i, align 4
  call void @dm_bufio_release(ptr noundef %198) #8
  call void @dm_bufio_forget(ptr noundef %call2.i, i64 noundef %add1.i108.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i128.i)
  %tobool50.not.i = icmp eq i32 %retval.0.i128.i, 0
  br i1 %tobool50.not.i, label %for.inc.i, label %if.end49.i.cleanup59.thread.i_crit_edge

if.end49.i.cleanup59.thread.i_crit_edge:          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup59.thread.i

cleanup59.thread.i:                               ; preds = %if.end49.i.cleanup59.thread.i_crit_edge, %if.then39.i
  %r.0.ph.i = phi i32 [ %175, %if.then39.i ], [ %retval.0.i128.i, %if.end49.i.cleanup59.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #8
  br label %ret_destroy_bufio.i

for.inc.i:                                        ; preds = %if.end49.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #8
  %199 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %current_area.i, align 8
  %inc65.i = add i64 %200, 1
  store i64 %inc65.i, ptr %current_area.i, align 8
  br i1 %tobool.not.i84, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %201 = ptrtoint ptr %current_area.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %current_area.i, align 8
  %202 = ptrtoint ptr %exceptions_per_area to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %exceptions_per_area, align 4
  %add.i114.i = add i32 %203, 1
  %204 = ptrtoint ptr %next_free.i.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %next_free.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %205)
  %cmp166.i.i = icmp ult i64 %205, 4294967296
  br i1 %cmp166.i.i, label %if.then170.i.i, label %if.else176.i.i, !prof !77

if.then170.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv171.i.i = trunc i64 %205 to i32
  %rem172.i.i = urem i32 %conv171.i.i, %add.i114.i
  br label %if.end180.i.i

if.else176.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %206 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i114.i, i64 %205) #14, !srcloc !78
  %asmresult.i270.i.i = extractvalue { i64, i64 } %206, 0
  %shr.i.i.i = lshr i64 %asmresult.i270.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end180.i.i

if.end180.i.i:                                    ; preds = %if.else176.i.i, %if.then170.i.i
  %__rem.0.i.i = phi i32 [ %rem172.i.i, %if.then170.i.i ], [ %conv.i.i.i, %if.else176.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__rem.0.i.i)
  %cmp182.i.i = icmp eq i32 %__rem.0.i.i, 1
  br i1 %cmp182.i.i, label %if.then184.i.i, label %if.end180.i.i.ret_destroy_bufio.i_crit_edge

if.end180.i.i.ret_destroy_bufio.i_crit_edge:      ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ret_destroy_bufio.i

if.then184.i.i:                                   ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i118.i = add i64 %205, 1
  %207 = ptrtoint ptr %next_free.i.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %inc.i118.i, ptr %next_free.i.i, align 8
  br label %ret_destroy_bufio.i

ret_destroy_bufio.i:                              ; preds = %if.then184.i.i, %if.end180.i.i.ret_destroy_bufio.i_crit_edge, %cleanup59.thread.i
  %r.1.i = phi i32 [ %r.0.ph.i, %cleanup59.thread.i ], [ 0, %if.end180.i.i.ret_destroy_bufio.i_crit_edge ], [ 0, %if.then184.i.i ]
  call void @dm_bufio_client_destroy(ptr noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ret_destroy_bufio.i, %if.then.i74, %if.end33.cleanup_crit_edge, %do.end29, %do.end21, %if.end15.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %read_header.exit.cleanup_crit_edge, %read_header.exit.thread
  %retval.0 = phi i32 [ %call.i64, %do.end ], [ -22, %do.end29 ], [ %retval.0.i, %read_header.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.i.i, %do.end21 ], [ 0, %if.end15.cleanup_crit_edge ], [ 1, %if.end33.cleanup_crit_edge ], [ %retval.0.i.ph, %read_header.exit.thread ], [ %164, %if.then.i74 ], [ %r.1.i, %ret_destroy_bufio.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_prepare_exception(ptr nocapture noundef readonly %store, ptr nocapture noundef writeonly %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %snap = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 1
  %2 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snap, align 4
  %call1 = tail call ptr @dm_snap_cow(ptr noundef %3) #8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %next_free = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %next_free to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %next_free, align 8
  %add = add i64 %9, 1
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 2
  %10 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %11 to i64
  %mul = mul i64 %add, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %mul)
  %cmp = icmp ult i64 %7, %mul
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %e, i32 0, i32 2
  %12 = ptrtoint ptr %new_chunk to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %new_chunk, align 8
  %13 = ptrtoint ptr %next_free to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %next_free, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %next_free, align 8
  %exceptions_per_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %exceptions_per_area.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %exceptions_per_area.i, align 4
  %add.i = add i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %inc)
  %cmp166.i = icmp ult i64 %inc, 4294967296
  br i1 %cmp166.i, label %if.then170.i, label %if.else176.i, !prof !77

if.then170.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv171.i = trunc i64 %inc to i32
  %rem172.i = urem i32 %conv171.i, %add.i
  br label %if.end180.i

if.else176.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %inc) #14, !srcloc !78
  %asmresult.i270.i = extractvalue { i64, i64 } %17, 0
  %shr.i.i = lshr i64 %asmresult.i270.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else176.i, %if.then170.i
  %__rem.0.i = phi i32 [ %rem172.i, %if.then170.i ], [ %conv.i.i, %if.else176.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__rem.0.i)
  %cmp182.i = icmp eq i32 %__rem.0.i, 1
  br i1 %cmp182.i, label %if.then184.i, label %if.end180.i.skip_metadata.exit_crit_edge

if.end180.i.skip_metadata.exit_crit_edge:         ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_metadata.exit

if.then184.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i64 %14, 2
  %18 = ptrtoint ptr %next_free to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %inc.i, ptr %next_free, align 8
  br label %skip_metadata.exit

skip_metadata.exit:                               ; preds = %if.then184.i, %if.end180.i.skip_metadata.exit_crit_edge
  %pending_count = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pending_count, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_count, ptr %pending_count, i32 1, ptr elementtype(i32) %pending_count) #8, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %skip_metadata.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skip_metadata.exit ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @persistent_commit_exception(ptr nocapture noundef readonly %store, ptr nocapture noundef readonly %e, i32 noundef %valid, ptr noundef %callback, ptr noundef %callback_context) #0 align 64 {
entry:
  %where.i.i79 = alloca %struct.dm_io_region, align 8
  %io_req.i.i80 = alloca %struct.dm_io_request, align 4
  %where.i.i = alloca %struct.dm_io_region, align 8
  %io_req.i.i = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool.not = icmp eq i32 %valid, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %valid1 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %valid1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %old_chunk, align 8
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %e, i32 0, i32 2
  %5 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %new_chunk, align 8
  %current_committed = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_committed, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %current_committed, align 8
  %exceptions_per_area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exceptions_per_area.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp ugt i32 %10, %8
  br i1 %cmp.not.i.i, label %write_exception.exit, label %do.body2.i.i, !prof !77

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap-persistent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

write_exception.exit:                             ; preds = %if.end
  %area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %area.i, align 8
  %add.ptr.i.i = getelementptr %struct.disk_exception, ptr %12, i32 %8
  %13 = tail call i64 @llvm.bswap.i64(i64 %4) #8
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %add.ptr.i.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %6) #8
  %new_chunk2.i = getelementptr %struct.disk_exception, ptr %12, i32 %8, i32 1
  %16 = ptrtoint ptr %new_chunk2.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %new_chunk2.i, align 1
  %callbacks = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callbacks, align 4
  %callback_count = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %callback_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %callback_count, align 8
  %inc4 = add i32 %20, 1
  store i32 %inc4, ptr %callback_count, align 8
  %add.ptr = getelementptr %struct.commit_callback, ptr %18, i32 %20
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %callback, ptr %add.ptr, align 4
  %context = getelementptr %struct.commit_callback, ptr %18, i32 %20, i32 1
  %22 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %callback_context, ptr %context, align 4
  %pending_count = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %pending_count, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_count, ptr %pending_count, i32 1, ptr elementtype(i32) %pending_count) #8, !srcloc !82
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %write_exception.exit.if.end9_crit_edge, label %land.lhs.true

write_exception.exit.if.end9_crit_edge:           ; preds = %write_exception.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %write_exception.exit
  %24 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_committed, align 8
  %26 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %exceptions_per_area.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not = icmp eq i32 %25, %27
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %write_exception.exit.if.end9_crit_edge
  %28 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %current_committed, align 8
  %30 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exceptions_per_area.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp12 = icmp eq i32 %29, %31
  br i1 %cmp12, label %land.lhs.true13, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true13:                                  ; preds = %if.end9
  %current_area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %current_area to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %current_area, align 8
  %add = add i64 %33, 1
  %zero_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %zero_area.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %zero_area.i, align 4
  %add.i.i = add i32 %29, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %mul.i.i = mul i64 %add, %conv.i.i
  %add1.i.i = add i64 %mul.i.i, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where.i.i) #8
  %36 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %where.i.i, align 8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %snap.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %snap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %snap.i.i, align 4
  %call.i.i78 = tail call ptr @dm_snap_cow(ptr noundef %40) #8
  %41 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i.i78, align 4
  %43 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %where.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %chunk_size.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chunk_size.i.i, align 4
  %conv.i4.i = zext i32 %47 to i64
  %mul.i5.i = mul i64 %add1.i.i, %conv.i4.i
  %48 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %mul.i5.i, ptr %sector.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 2
  %49 = load i32, ptr %chunk_size.i.i, align 4
  %conv5.i.i = zext i32 %49 to i64
  %50 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv5.i.i, ptr %count.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i) #8
  %51 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 1
  %52 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2
  %53 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 1
  %54 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 2
  %55 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3
  %56 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3, i32 1
  %57 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %io_req.i.i, align 4
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %51, align 4
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %52, align 4
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %53, align 4
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %35, ptr %54, align 4
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %55, align 4
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %56, align 4
  %io_client.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %io_client.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_client.i.i, align 8
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %57, align 4
  %call6.i.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i, i32 noundef 1, ptr noundef nonnull %where.i.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool15.not = icmp eq i32 %call6.i.i, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end18_crit_edge, label %if.then16

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %valid17 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %valid17 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %valid17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true13.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %valid19 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %valid19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %valid19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool20.not = icmp eq i32 %70, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end18
  %current_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %71 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %current_area.i, align 8
  %73 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %exceptions_per_area.i.i, align 4
  %add.i.i82 = add i32 %74, 1
  %conv.i.i83 = zext i32 %add.i.i82 to i64
  %mul.i.i84 = mul i64 %72, %conv.i.i83
  %add1.i.i85 = add i64 %mul.i.i84, 1
  %75 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %area.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where.i.i79) #8
  %77 = ptrtoint ptr %where.i.i79 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %where.i.i79, align 8
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %snap.i.i87 = getelementptr inbounds %struct.dm_exception_store, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %snap.i.i87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %snap.i.i87, align 4
  %call.i.i88 = call ptr @dm_snap_cow(ptr noundef %81) #8
  %82 = ptrtoint ptr %call.i.i88 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i.i88, align 4
  %84 = ptrtoint ptr %where.i.i79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %where.i.i79, align 8
  %sector.i.i89 = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i79, i32 0, i32 1
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %chunk_size.i.i90 = getelementptr inbounds %struct.dm_exception_store, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %chunk_size.i.i90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chunk_size.i.i90, align 4
  %conv.i5.i = zext i32 %88 to i64
  %mul.i6.i = mul i64 %add1.i.i85, %conv.i5.i
  %89 = ptrtoint ptr %sector.i.i89 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %mul.i6.i, ptr %sector.i.i89, align 8
  %count.i.i91 = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i79, i32 0, i32 2
  %90 = load i32, ptr %chunk_size.i.i90, align 4
  %conv5.i.i92 = zext i32 %90 to i64
  %91 = ptrtoint ptr %count.i.i91 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv5.i.i92, ptr %count.i.i91, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i80) #8
  %92 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 1
  %93 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 2
  %94 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 2, i32 1
  %95 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 2, i32 2
  %96 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 3
  %97 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 3, i32 1
  %98 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i80, i32 0, i32 4
  %99 = ptrtoint ptr %io_req.i.i80 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %io_req.i.i80, align 4
  %100 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 395264, ptr %92, align 4
  %101 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %93, align 4
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %94, align 4
  %103 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %76, ptr %95, align 4
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %96, align 4
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %97, align 4
  %io_client.i.i93 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %106 = ptrtoint ptr %io_client.i.i93 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %io_client.i.i93, align 8
  %108 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %98, align 4
  %call6.i.i94 = call i32 @dm_io(ptr noundef nonnull %io_req.i.i80, i32 noundef 1, ptr noundef nonnull %where.i.i79, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i80) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where.i.i79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i94)
  %tobool23.not = icmp eq i32 %call6.i.i94, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end26_crit_edge, label %if.then24

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %valid19 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %valid19, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %110 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %current_committed, align 8
  %112 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %exceptions_per_area.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp29 = icmp eq i32 %111, %113
  br i1 %cmp29, label %if.then30, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %current_committed to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %current_committed, align 8
  %current_area32 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %115 = ptrtoint ptr %current_area32 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %current_area32, align 8
  %inc33 = add i64 %116, 1
  store i64 %inc33, ptr %current_area32, align 8
  %117 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %area.i, align 8
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chunk_size.i, align 4
  %shl.i = shl i32 %122, 9
  %123 = call ptr @memset(ptr %118, i32 0, i32 %shl.i)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %124 = ptrtoint ptr %callback_count to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %callback_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp3696.not = icmp eq i32 %125, 0
  br i1 %cmp3696.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.097 = phi i32 [ %inc42, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %126 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %callbacks, align 4
  %add.ptr38 = getelementptr %struct.commit_callback, ptr %127, i32 %i.097
  %128 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr38, align 4
  %context40 = getelementptr %struct.commit_callback, ptr %127, i32 %i.097, i32 1
  %130 = ptrtoint ptr %context40 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %context40, align 4
  %132 = ptrtoint ptr %valid19 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %valid19, align 8
  call void %129(ptr noundef %131, i32 noundef %133) #8
  %inc42 = add nuw i32 %i.097, 1
  %134 = ptrtoint ptr %callback_count to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %callback_count, align 8
  %cmp36 = icmp ult i32 %inc42, %135
  br i1 %cmp36, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end34.for.end_crit_edge
  %136 = ptrtoint ptr %callback_count to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %callback_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_prepare_merge(ptr nocapture noundef readonly %store, ptr nocapture noundef %last_old_chunk, ptr nocapture noundef %last_new_chunk) #0 align 64 {
entry:
  %where.i.i = alloca %struct.dm_io_region, align 8
  %io_req.i.i = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %current_committed = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_committed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %current_area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %current_area to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %current_area, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dec = add i64 %5, -1
  %6 = ptrtoint ptr %current_area to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %dec, ptr %current_area, align 8
  %exceptions_per_area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exceptions_per_area.i.i, align 4
  %add.i.i = add i32 %8, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %mul.i.i = mul i64 %dec, %conv.i.i
  %add1.i.i = add i64 %mul.i.i, 1
  %area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where.i.i) #8
  %11 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %where.i.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %snap.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %snap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %snap.i.i, align 4
  %call.i.i = tail call ptr @dm_snap_cow(ptr noundef %15) #8
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i.i, align 4
  %18 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %where.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %chunk_size.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_size.i.i, align 4
  %conv.i5.i = zext i32 %22 to i64
  %mul.i6.i = mul i64 %add1.i.i, %conv.i5.i
  %23 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %mul.i6.i, ptr %sector.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 2
  %24 = load i32, ptr %chunk_size.i.i, align 4
  %conv5.i.i = zext i32 %24 to i64
  %25 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv5.i.i, ptr %count.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i) #8
  %26 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 2
  %30 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %io_req.i.i, align 4
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %26, align 4
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %27, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %28, align 4
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %10, ptr %29, align 4
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %30, align 4
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %31, align 4
  %io_client.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %io_client.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_client.i.i, align 8
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %32, align 4
  %call6.i.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i, i32 noundef 1, ptr noundef nonnull %where.i.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp = icmp slt i32 %call6.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %exceptions_per_area.i.i, align 4
  %45 = ptrtoint ptr %current_committed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %current_committed, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %current_committed, align 8
  %sub = add i32 %47, -1
  %exceptions_per_area.i.i51 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %exceptions_per_area.i.i51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %exceptions_per_area.i.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %sub)
  %cmp.not.i.i = icmp ugt i32 %49, %sub
  br i1 %cmp.not.i.i, label %read_exception.exit, label %do.body2.i.i, !prof !77

do.body2.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap-persistent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

read_exception.exit:                              ; preds = %if.end8
  %50 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %area, align 8
  %add.ptr.i.i = getelementptr %struct.disk_exception, ptr %51, i32 %sub
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %add.ptr.i.i, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %53) #8
  %new_chunk.i = getelementptr %struct.disk_exception, ptr %51, i32 %sub, i32 1
  %55 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %new_chunk.i, align 1
  %57 = call i64 @llvm.bswap.i64(i64 %56) #8
  %58 = ptrtoint ptr %last_old_chunk to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %54, ptr %last_old_chunk, align 8
  %59 = ptrtoint ptr %last_new_chunk to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %57, ptr %last_new_chunk, align 8
  %60 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %current_committed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp1162 = icmp ugt i32 %61, 1
  br i1 %cmp1162, label %for.body.lr.ph, label %read_exception.exit.cleanup_crit_edge

read_exception.exit.cleanup_crit_edge:            ; preds = %read_exception.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %read_exception.exit
  %62 = ptrtoint ptr %exceptions_per_area.i.i51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %exceptions_per_area.i.i51, align 4
  %64 = add i32 %61, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %63)
  %cmp.not.i.i5365 = icmp ult i32 %64, %63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nr_consecutive.063 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp.not.i.i5365, label %read_exception.exit58, label %do.body2.i.i54, !prof !77

do.body2.i.i54:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap-persistent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

read_exception.exit58:                            ; preds = %for.body
  %65 = xor i32 %nr_consecutive.063, -1
  %sub15 = add i32 %61, %65
  %66 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %area, align 8
  %add.ptr.i.i55 = getelementptr %struct.disk_exception, ptr %67, i32 %sub15
  %68 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %add.ptr.i.i55, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69) #8
  %new_chunk.i56 = getelementptr %struct.disk_exception, ptr %67, i32 %sub15, i32 1
  %71 = ptrtoint ptr %new_chunk.i56 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %new_chunk.i56, align 1
  %73 = call i64 @llvm.bswap.i64(i64 %72) #8
  %74 = ptrtoint ptr %last_old_chunk to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %last_old_chunk, align 8
  %conv = sext i32 %nr_consecutive.063 to i64
  %sub17 = sub i64 %75, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %sub17)
  %cmp18.not = icmp eq i64 %70, %sub17
  %sub22 = sub i64 %57, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %sub22)
  %cmp23.not = icmp eq i64 %73, %sub22
  %or.cond = select i1 %cmp18.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %for.inc, label %read_exception.exit58.cleanup_crit_edge

read_exception.exit58.cleanup_crit_edge:          ; preds = %read_exception.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %read_exception.exit58
  %inc = add nuw i32 %nr_consecutive.063, 1
  %exitcond.not = icmp eq i32 %inc, %61
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %read_exception.exit58.cleanup_crit_edge, %read_exception.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call6.i.i, %if.end.cleanup_crit_edge ], [ 1, %read_exception.exit.cleanup_crit_edge ], [ %nr_consecutive.063, %read_exception.exit58.cleanup_crit_edge ], [ %61, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_commit_merge(ptr nocapture noundef readonly %store, i32 noundef %nr_merged) #0 align 64 {
entry:
  %where.i.i = alloca %struct.dm_io_region, align 8
  %io_req.i.i = alloca %struct.dm_io_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %current_committed = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_committed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nr_merged)
  %cmp = icmp ult i32 %3, %nr_merged
  br i1 %cmp, label %do.body2, label %for.cond.preheader, !prof !76

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_merged)
  %cmp837 = icmp sgt i32 %nr_merged, 0
  br i1 %cmp837, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %exceptions_per_area.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  br label %for.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap-persistent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 810, 0\0A.popsection", ""() #8, !srcloc !84
  unreachable

for.body:                                         ; preds = %clear_exception.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %clear_exception.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_committed, align 8
  %6 = xor i32 %i.038, -1
  %sub10 = add i32 %5, %6
  %7 = ptrtoint ptr %exceptions_per_area.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exceptions_per_area.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub10)
  %cmp.not.i.i = icmp ugt i32 %8, %sub10
  br i1 %cmp.not.i.i, label %clear_exception.exit, label %do.body2.i.i, !prof !77

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap-persistent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 402, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

clear_exception.exit:                             ; preds = %for.body
  %9 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area.i, align 8
  %add.ptr.i.i = getelementptr %struct.disk_exception, ptr %10, i32 %sub10
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %nr_merged
  br i1 %exitcond.not, label %clear_exception.exit.for.end_crit_edge, label %clear_exception.exit.for.body_crit_edge

clear_exception.exit.for.body_crit_edge:          ; preds = %clear_exception.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

clear_exception.exit.for.end_crit_edge:           ; preds = %clear_exception.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %clear_exception.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %current_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %current_area.i, align 8
  %exceptions_per_area.i.i35 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %exceptions_per_area.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %exceptions_per_area.i.i35, align 4
  %add.i.i = add i32 %15, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %mul.i.i = mul i64 %13, %conv.i.i
  %add1.i.i = add i64 %mul.i.i, 1
  %area.i36 = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %area.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area.i36, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where.i.i) #8
  %18 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %where.i.i, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %snap.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %snap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %snap.i.i, align 4
  %call.i.i = tail call ptr @dm_snap_cow(ptr noundef %22) #8
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i.i, align 4
  %25 = ptrtoint ptr %where.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %where.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %chunk_size.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chunk_size.i.i, align 4
  %conv.i5.i = zext i32 %29 to i64
  %mul.i6.i = mul i64 %add1.i.i, %conv.i5.i
  %30 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %mul.i6.i, ptr %sector.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.dm_io_region, ptr %where.i.i, i32 0, i32 2
  %31 = load i32, ptr %chunk_size.i.i, align 4
  %conv5.i.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv5.i.i, ptr %count.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req.i.i) #8
  %33 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 1
  %36 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 2, i32 2
  %37 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3
  %38 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 3, i32 1
  %39 = getelementptr inbounds %struct.dm_io_request, ptr %io_req.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %io_req.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %io_req.i.i, align 4
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 393216, ptr %33, align 4
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %34, align 4
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %35, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %17, ptr %36, align 4
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %37, align 4
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %38, align 4
  %io_client.i.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %io_client.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_client.i.i, align 8
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %39, align 4
  %call6.i.i = call i32 @dm_io(ptr noundef nonnull %io_req.i.i, i32 noundef 1, ptr noundef nonnull %where.i.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp12 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp12, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %current_committed to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_committed, align 8
  %sub16 = sub i32 %51, %nr_merged
  store i32 %sub16, ptr %current_committed, align 8
  %52 = ptrtoint ptr %current_area.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %current_area.i, align 8
  %54 = ptrtoint ptr %exceptions_per_area.i.i35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %exceptions_per_area.i.i35, align 4
  %add.i = add i32 %55, 1
  %conv.i = zext i32 %add.i to i64
  %mul.i = mul i64 %53, %conv.i
  %conv = zext i32 %sub16 to i64
  %add = add nuw nsw i64 %conv, 2
  %add19 = add i64 %add, %mul.i
  %next_free = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %next_free to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add19, ptr %next_free, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call6.i.i, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @persistent_drop_snapshot(ptr nocapture noundef readonly %store) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %valid = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %valid, align 8
  %header_area.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %header_area.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header_area.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chunk_size.i, align 4
  %shl.i = shl i32 %8, 9
  %9 = call ptr @memset(ptr %4, i32 0, i32 %shl.i)
  %10 = load ptr, ptr %header_area.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1399734640, ptr %10, align 1
  %12 = load i32, ptr %valid, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %valid2.i = getelementptr inbounds %struct.disk_header, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %valid2.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %valid2.i, align 1
  %version.i = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %version3.i = getelementptr inbounds %struct.disk_header, ptr %10, i32 0, i32 2
  %18 = ptrtoint ptr %version3.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %version3.i, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %chunk_size5.i = getelementptr inbounds %struct.dm_exception_store, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %chunk_size5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_size5.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %chunk_size6.i = getelementptr inbounds %struct.disk_header, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %chunk_size6.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %chunk_size6.i, align 1
  %25 = ptrtoint ptr %header_area.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %header_area.i, align 8
  %call.i = tail call fastcc i32 @chunk_io(ptr noundef %1, ptr noundef %26, i64 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persistent_status(ptr nocapture noundef readonly %store, i32 noundef %status, ptr noundef %result, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %userspace_supports_overflow = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 6
  %1 = ptrtoint ptr %userspace_supports_overflow to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %userspace_supports_overflow, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.34, ptr @.str.33
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 2
  %3 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %4 to i64
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, i64 noundef %conv) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %sz.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb2 ], [ %call, %cond.false ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %sz.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @persistent_usage(ptr nocapture noundef readonly %store, ptr nocapture noundef writeonly %total_sectors, ptr nocapture noundef writeonly %sectors_allocated, ptr nocapture noundef writeonly %metadata_sectors) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 5
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %next_free = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %next_free to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %next_free, align 8
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 2
  %4 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %3, %conv
  %6 = ptrtoint ptr %sectors_allocated to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul, ptr %sectors_allocated, align 8
  %snap = getelementptr inbounds %struct.dm_exception_store, ptr %store, i32 0, i32 1
  %7 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %snap, align 4
  %call1 = tail call ptr @dm_snap_cow(ptr noundef %8) #8
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call1, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %13 = ptrtoint ptr %total_sectors to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %total_sectors, align 8
  %current_area = getelementptr inbounds %struct.pstore, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %current_area to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %current_area, align 8
  %add3 = add i64 %15, 2
  %16 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chunk_size, align 4
  %conv5 = zext i32 %17 to i64
  %mul6 = mul i64 %add3, %conv5
  %18 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %mul6, ptr %metadata_sectors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_area(ptr nocapture noundef %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 4
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  tail call void @vfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %area, align 8
  %zero_area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 5
  %3 = ptrtoint ptr %zero_area to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zero_area, align 4
  tail call void @vfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %zero_area to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %zero_area, align 4
  %header_area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 6
  %6 = ptrtoint ptr %header_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %header_area, align 8
  tail call void @vfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %header_area to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %header_area, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_snap_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_io_client_create() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_area(ptr nocapture noundef %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 8
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_size, align 4
  %shl = shl i32 %3, 9
  %call = tail call noalias ptr @vmalloc(i32 noundef %shl) #13
  %area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 4
  %4 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %area, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @vzalloc(i32 noundef %shl) #13
  %zero_area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 5
  %5 = ptrtoint ptr %zero_area to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %zero_area, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.err_zero_area_crit_edge, label %if.end6

if.end.err_zero_area_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero_area

if.end6:                                          ; preds = %if.end
  %call7 = tail call noalias ptr @vmalloc(i32 noundef %shl) #13
  %header_area = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 6
  %6 = ptrtoint ptr %header_area to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %header_area, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %err_header_area, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_header_area:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %zero_area to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zero_area, align 4
  tail call void @vfree(ptr noundef %8) #8
  br label %err_zero_area

err_zero_area:                                    ; preds = %err_header_area, %if.end.err_zero_area_crit_edge
  %9 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area, align 8
  tail call void @vfree(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %err_zero_area, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_zero_area ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chunk_io(ptr nocapture noundef readonly %ps, ptr noundef %area, i64 noundef %chunk, i32 noundef %op, i32 noundef %op_flags, i32 noundef %metadata) unnamed_addr #0 align 64 {
entry:
  %where = alloca %struct.dm_io_region, align 8
  %io_req = alloca %struct.dm_io_request, align 4
  %req = alloca %struct.mdata_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %where) #8
  %0 = ptrtoint ptr %where to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %where, align 8
  %1 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps, align 8
  %snap = getelementptr inbounds %struct.dm_exception_store, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %snap, align 4
  %call = tail call ptr @dm_snap_cow(ptr noundef %4) #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %7 = ptrtoint ptr %where to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %where, align 8
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %where, i32 0, i32 1
  %8 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps, align 8
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, %chunk
  %12 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul, ptr %sector, align 8
  %count = getelementptr inbounds %struct.dm_io_region, ptr %where, i32 0, i32 2
  %13 = load i32, ptr %chunk_size, align 4
  %conv5 = zext i32 %13 to i64
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv5, ptr %count, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %io_req) #8
  %15 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 2
  %19 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 3
  %20 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 3, i32 1
  %21 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 4
  %22 = ptrtoint ptr %io_req to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %op, ptr %io_req, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %op_flags, ptr %15, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %16, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %17, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %area, ptr %18, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %19, align 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %20, align 4
  %io_client = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 13
  %29 = ptrtoint ptr %io_client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_client, align 8
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %req) #8
  %32 = getelementptr inbounds i8, ptr %req, i32 8
  %33 = call ptr @memset(ptr %32, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %metadata)
  %tobool.not = icmp eq i32 %metadata, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @dm_io(ptr noundef nonnull %io_req, i32 noundef 1, ptr noundef nonnull %where, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %where, ptr %req, align 4
  %io_req8 = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %io_req8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %io_req, ptr %io_req8, align 4
  %work = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 1) #8
  %36 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @chunk_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 2, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @do_metadata, ptr %func, align 4
  %metadata_wq = getelementptr inbounds %struct.pstore, ptr %ps, i32 0, i32 14
  %40 = ptrtoint ptr %metadata_wq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %metadata_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work) #8
  %42 = ptrtoint ptr %metadata_wq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %metadata_wq, align 4
  call void @flush_workqueue(ptr noundef %43) #8
  call void @destroy_work_on_stack(ptr noundef %work) #8
  %result = getelementptr inbounds %struct.mdata_req, ptr %req, i32 0, i32 3
  %44 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %45, %if.end ], [ %call6, %if.then ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %req) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %io_req) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %where) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_exception_store_set_chunk_size(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_io(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_metadata(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %io_req = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_req, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @dm_io(ptr noundef %1, i32 noundef 1, ptr noundef %3, ptr noundef null) #8
  %result = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %result, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_work_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_client_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_set_minimum_buffers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_bufio_get_device_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_prefetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_forget(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-snap-persistent.c", i32 956, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_persistent_snapshot_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_persistent_snapshot_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-snap-persistent.c", i32 962, i32 3}
!8 = !{ptr @dm_persistent_snapshot_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_persistent_snapshot_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-snap-persistent.c", i32 921, i32 10}
!12 = !{ptr @_persistent_type, !13, !"_persistent_type", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-snap-persistent.c", i32 920, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-snap-persistent.c", i32 869, i32 36}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-snap-persistent.c", i32 871, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @persistent_ctr._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @persistent_ctr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-snap-persistent.c", i32 881, i32 4}
!23 = !{ptr @persistent_ctr._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @persistent_ctr._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-snap-persistent.c", i32 635, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @persistent_read_metadata._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @persistent_read_metadata._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-snap-persistent.c", i32 643, i32 4}
!32 = !{ptr @persistent_read_metadata._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @persistent_read_metadata._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-snap-persistent.c", i32 650, i32 3}
!36 = !{ptr @persistent_read_metadata._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @persistent_read_metadata._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-snap-persistent.c", i32 344, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @read_header._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @read_header._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-snap-persistent.c", i32 358, i32 3}
!45 = !{ptr @read_header._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @read_header._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-snap-persistent.c", i32 368, i32 3}
!49 = !{ptr @read_header._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @read_header._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @chunk_io.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-snap-persistent.c", i32 257, i32 2}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-snap-persistent.c", i32 843, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @persistent_drop_snapshot._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @persistent_drop_snapshot._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-snap-persistent.c", i32 909, i32 3}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @_persistent_compat_type, !64, !"_persistent_compat_type", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-snap-persistent.c", i32 935, i32 39}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i32 0, i32 33}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148324201, i64 2148324481, i64 2148324815, i64 2148325149}
!79 = !{i64 2148485621, i64 2148485647, i64 2148485676, i64 2148485710, i64 2148485741, i64 2148485764}
!80 = !{i64 2154418487, i64 2154418983, i64 2154418524, i64 2154418580, i64 2154418614, i64 2154418638, i64 2154418679, i64 2154418700, i64 2154418728, i64 2154418762}
!81 = !{i64 2148574073}
!82 = !{i64 2148488806, i64 2148488838, i64 2148488867, i64 2148488901, i64 2148488932, i64 2148488955}
!83 = !{i64 2148574302}
!84 = !{i64 2154427672, i64 2154428168, i64 2154427709, i64 2154427765, i64 2154427799, i64 2154427823, i64 2154427864, i64 2154427885, i64 2154427913, i64 2154427947}
!85 = !{i8 0, i8 2}
