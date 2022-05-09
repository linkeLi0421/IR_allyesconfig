; ModuleID = '/llk/IR_all_yes/drivers/md/dm-zoned-target.c_pt.bc'
source_filename = "../drivers/md/dm-zoned-target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dmz_dev = type { ptr, ptr, ptr, [32 x i8], %struct.uuid_t, i64, i32, i32, i32, i32, i64, i32, %struct.atomic_t, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dmz_target = type { ptr, i32, i32, ptr, ptr, %struct.xarray, ptr, %struct.mutex, %struct.bio_set, %struct.spinlock, %struct.bio_list, %struct.delayed_work, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dmz_bioctx = type { ptr, ptr, ptr, %struct.refcount_struct }
%struct.dm_chunk_work = type { %struct.work_struct, %struct.refcount_struct, ptr, i32, %struct.bio_list }
%struct.dm_zone = type { %struct.list_head, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, ptr }

@dmz_bdev_is_dying._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014device-mapper: zoned: (%s): Backing device queue dying\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dmz_bdev_is_dying\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/md/dm-zoned-target.c\00", [35 x i8] zeroinitializer }, align 32
@dmz_bdev_is_dying._entry_ptr = internal global ptr @dmz_bdev_is_dying._entry, section ".printk_index", align 4
@dmz_check_bdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014device-mapper: zoned: (%s): Backing device offline\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_check_bdev\00", [17 x i8] zeroinitializer }, align 32
@dmz_check_bdev._entry_ptr = internal global ptr @dmz_check_bdev._entry, section ".printk_index", align 4
@dmz_type = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 513, ptr @.str.5, ptr null, [3 x i32] [i32 2, i32 0, i32 0], ptr @dmz_ctr, ptr @dmz_dtr, ptr @dmz_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmz_suspend, ptr null, ptr @dmz_resume, ptr @dmz_status, ptr @dmz_message, ptr @dmz_prepare_ioctl, ptr null, ptr null, ptr @dmz_iterate_devices, ptr @dmz_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_zoned__275_1172_dmz_init6 = internal global ptr @dmz_init, section ".initcall6.init", align 4
@__exitcall_dmz_exit = internal global ptr @dmz_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [66 x i8] c"dm_zoned.description=device-mapper target for zoned block devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [55 x i8] c"dm_zoned.author=Damien Le Moal <damien.lemoal@wdc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [34 x i8] c"dm_zoned.file=drivers/md/dm-zoned\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [21 x i8] c"dm_zoned.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zoned\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid argument count\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to allocate the zoned target descriptor\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to allocate the zoned device descriptors\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to allocate the dm device descriptors\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Metadata initialization failed\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Create BIO set failed\00", [42 x i8] zeroinitializer }, align 32
@dmz_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dmz->chunk_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmz_cwq_%s\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create chunk workqueue failed\00", [34 x i8] zeroinitializer }, align 32
@dmz_ctr.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dmz->flush_lock\00", [47 x i8] zeroinitializer }, align 32
@dmz_ctr.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&dmz->flush_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@dmz_ctr.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&dmz->flush_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmz_fwq_%s\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create flush workqueue failed\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Zone reclaim initialization failed\00", [61 x i8] zeroinitializer }, align 32
@dmz_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016device-mapper: zoned: (%s): Target device: %llu 512-byte logical sectors (%llu blocks)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmz_ctr\00", [24 x i8] zeroinitializer }, align 32
@dmz_ctr._entry_ptr = internal global ptr @dmz_ctr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Get target device failed\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid regular device\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"First device must be a regular device\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Too many regular devices\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Too many zoned devices\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Partial mapping is not supported\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Primary disk is not a regular device\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Secondary disk is not a zoned device\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Zone nr sectors mismatch\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disk is not a zoned device\00", [37 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@dmz_flush_work.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm_zoned\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_flush_work\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device-mapper: zoned: (%s): Metadata flush failed, rc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@dmz_map.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmz_map\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"device-mapper: zoned: (%s): BIO op %d sector %llu + %u => chunk %llu, block %llu, %u blocks\0A\00", [35 x i8] zeroinitializer }, align 32
@dmz_map.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"device-mapper: zoned: (%s): BIO op %d, can't process chunk %llu, err %i\0A\00", [55 x i8] zeroinitializer }, align 32
@dmz_queue_chunk_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cw->work)\00", [35 x i8] zeroinitializer }, align 32
@dmz_handle_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: zoned: (%s): Unsupported BIO operation 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_handle_bio\00", [17 x i8] zeroinitializer }, align 32
@dmz_handle_bio._entry_ptr = internal global ptr @dmz_handle_bio._entry, section ".printk_index", align 4
@dmz_handle_read.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmz_handle_read\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"device-mapper: zoned: (%s): READ chunk %llu -> %s zone %u, block %llu, %u blocks\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RND\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CACHE\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SEQ\00", [28 x i8] zeroinitializer }, align 32
@dmz_handle_write.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmz_handle_write\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"device-mapper: zoned: (%s): WRITE chunk %llu -> %s zone %u, block %llu, %u blocks\0A\00", [45 x i8] zeroinitializer }, align 32
@dmz_handle_discard.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmz_handle_discard\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"device-mapper: zoned: (%s): DISCARD chunk %llu -> zone %u, block %llu, %u blocks\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%u zones %u/%u cache\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" %u/%u random %u/%u sequential\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reclaim\00", [24 x i8] zeroinitializer }, align 32
@dmz_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: zoned: unrecognized message %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmz_message\00", [20 x i8] zeroinitializer }, align 32
@dmz_message._entry_ptr = internal global ptr @dmz_message._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 9]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 591, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 616, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"dmz_type\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1145, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1146, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 840, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 847, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 852, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 858, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 880, i32 15 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 900, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 905, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 907, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 911, i32 15 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 917, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 919, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 920, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 923, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 933, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 938, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 701, i32 15 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 708, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 712, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 716, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 723, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 738, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 781, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 787, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 793, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 805, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 378, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 513, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 639, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 676, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 555, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 438, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 186, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 329, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 374, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1092, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1104, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1113, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1114, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1118, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1134, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [32 x i8] c"../drivers/md/dm-zoned-target.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1141, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_dmz_exit, ptr @__initcall__kmod_dm_zoned__275_1172_dmz_init6, ptr @dmz_bdev_is_dying._entry, ptr @dmz_bdev_is_dying._entry_ptr, ptr @dmz_check_bdev._entry, ptr @dmz_check_bdev._entry_ptr, ptr @dmz_ctr._entry, ptr @dmz_ctr._entry_ptr, ptr @dmz_exit, ptr @dmz_handle_bio._entry, ptr @dmz_handle_bio._entry_ptr, ptr @dmz_message._entry, ptr @dmz_message._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dmz_type, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dmz_ctr.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dmz_ctr.__key.15, ptr @.str.16, ptr @dmz_ctr.__key.17, ptr @.str.18, ptr @dmz_ctr.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @xa_init_flags.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @dmz_queue_chunk_work.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_bdev_is_dying._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_bdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_type to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_queue_chunk_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_handle_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmz_bdev_is_dying(ptr noundef %dmz_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dmz_dev, ptr %dmz_dev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %and.i = and i32 %1, -3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.i, ptr %flags, align 4
  %call.i = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef %dmz_dev) #12
  br i1 %call.i, label %if.then4.return_crit_edge, label %if.end.i

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.then4
  %3 = ptrtoint ptr %dmz_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmz_dev, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fops.i, align 8
  %check_events.i = getelementptr inbounds %struct.block_device_operations, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %check_events.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_events.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.return.sink.split_crit_edge, label %land.lhs.true.i

if.end.i.return.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 %10(ptr noundef %6, i32 noundef 0) #12
  %and4.i = and i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.return.sink.split_crit_edge, label %land.lhs.true.i.return.sink.split.sink.split_crit_edge

land.lhs.true.i.return.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.sink.split

land.lhs.true.i.return.sink.split_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dmz_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmz_dev, align 8
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.end5.return.sink.split_crit_edge, label %if.end5.return.sink.split.sink.split_crit_edge

if.end5.return.sink.split.sink.split_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.sink.split

if.end5.return.sink.split_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

return.sink.split.sink.split:                     ; preds = %if.end5.return.sink.split.sink.split_crit_edge, %land.lhs.true.i.return.sink.split.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str.3, %land.lhs.true.i.return.sink.split.sink.split_crit_edge ], [ @.str, %if.end5.return.sink.split.sink.split_crit_edge ]
  %name = getelementptr inbounds %struct.dmz_dev, ptr %dmz_dev, i32 0, i32 3
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink, ptr noundef %name) #15
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %flags, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %if.end5.return.sink.split_crit_edge, %land.lhs.true.i.return.sink.split_crit_edge, %if.end.i.return.sink.split_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and11.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp ne i32 %and11.i, 0
  br label %return

return:                                           ; preds = %return.sink.split, %if.then4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %if.then4.return_crit_edge ], [ %tobool12.not.i, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmz_check_bdev(ptr noundef %dmz_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dmz_dev, ptr %dmz_dev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -3
  store i32 %and, ptr %flags, align 4
  %call = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef %dmz_dev)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dmz_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmz_dev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %check_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_events, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 %9(ptr noundef %5, i32 noundef 0) #12
  %and4 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %do.end

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.dmz_dev, ptr %dmz_dev, i32 0, i32 3
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #15
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and11 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool12.not, %if.end9 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmz_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_unregister_target(ptr noundef nonnull @dmz_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @dmz_type) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %ddev.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp = icmp eq i32 %argc, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.6, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 928) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.7, ptr %error2, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %argc, i32 144) #12
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %kcalloc.exit.thread294, !prof !148

kcalloc.exit.thread:                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %dev257 = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev257 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dev257, align 4
  br label %if.then7

kcalloc.exit.thread294:                           ; preds = %if.end3
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #17
  %dev296 = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev296 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %dev296, align 4
  %tobool6.not297 = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not297, label %kcalloc.exit.thread294.if.then7_crit_edge, label %if.end7.i.i233

kcalloc.exit.thread294.if.then7_crit_edge:        ; preds = %kcalloc.exit.thread294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %kcalloc.exit.thread294.if.then7_crit_edge, %kcalloc.exit.thread
  %error8 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %8 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.8, ptr %error8, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end7.i.i233:                                   ; preds = %kcalloc.exit.thread294
  %9 = shl nuw nsw i32 %argc, 2
  %call8.i.i232 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #17
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i232, ptr %call7.i.i, align 8
  %tobool12.not = icmp eq ptr %call8.i.i232, null
  br i1 %tobool12.not, label %if.then13, label %for.body.lr.ph

if.then13:                                        ; preds = %if.end7.i.i233
  call void @__sanitizer_cov_trace_pc() #14
  %error14 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %11 = ptrtoint ptr %error14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.9, ptr %error14, align 8
  br label %err

for.body.lr.ph:                                   ; preds = %if.end7.i.i233
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %argc, ptr %nr_ddevs, align 4
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %13 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp26.i = icmp ugt i32 %argc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp5.i = icmp eq i32 %argc, 1
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0277 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %argv, i32 %i.0277
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ddev.i) #12
  %18 = ptrtoint ptr %ddev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %ddev.i, align 4, !annotation !149
  %19 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ti, align 8
  %call.i = call i32 @dm_table_get_mode(ptr noundef %20) #12
  %call1.i = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %15, i32 noundef %call.i, ptr noundef nonnull %ddev.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %error.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.26, ptr %error.i, align 8
  br label %dmz_get_zoned_device.exit.thread

if.end.i:                                         ; preds = %for.body
  %22 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then4.i_crit_edge, label %bdev_zoned_model.exit.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

bdev_zoned_model.exit.i:                          ; preds = %if.end.i
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 37, i32 27
  %28 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zoned.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %bdev_zoned_model.exit.i.if.then4.i_crit_edge, label %if.else.i

bdev_zoned_model.exit.i.if.then4.i_crit_edge:     ; preds = %bdev_zoned_model.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.then4.i:                                       ; preds = %bdev_zoned_model.exit.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  br i1 %cmp5.i, label %if.then4.i.err.i_crit_edge, label %if.end8.i

if.then4.i.err.i_crit_edge:                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end8.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0277)
  %cmp9.not.i = icmp eq i32 %i.0277, 0
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.err.i_crit_edge

if.end8.i.err.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end12.i:                                       ; preds = %if.end8.i
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool14.not.i = icmp eq ptr %33, null
  br i1 %tobool14.not.i, label %if.end17.i, label %if.end12.i.err.i_crit_edge

if.end12.i.err.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev18.i = getelementptr inbounds %struct.dmz_target, ptr %17, i32 0, i32 3
  %34 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev18.i, align 4
  %flags.i = getelementptr inbounds %struct.dmz_dev, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %flags.i, align 4
  br label %if.end33.i

if.else.i:                                        ; preds = %bdev_zoned_model.exit.i
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %17, align 4
  %arrayidx21.i = getelementptr ptr, ptr %38, i32 %i.0277
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %40, null
  br i1 %tobool22.not.i, label %if.end25.i, label %if.else.i.err.i_crit_edge

if.else.i.err.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end25.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0277)
  %cmp27.i = icmp eq i32 %i.0277, 0
  %or.cond.i = and i1 %cmp26.i, %cmp27.i
  br i1 %or.cond.i, label %if.end25.i.err.i_crit_edge, label %if.end30.i

if.end25.i.err.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end30.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev31.i = getelementptr inbounds %struct.dmz_target, ptr %17, i32 0, i32 3
  %41 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev31.i, align 4
  %arrayidx32.i = getelementptr %struct.dmz_dev, ptr %42, i32 %i.0277
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end30.i, %if.end17.i
  %dev.0.i = phi ptr [ %35, %if.end17.i ], [ %arrayidx32.i, %if.end30.i ]
  %43 = ptrtoint ptr %dev.0.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %25, ptr %dev.0.i, align 8
  %dev_idx.i = getelementptr inbounds %struct.dmz_dev, ptr %dev.0.i, i32 0, i32 6
  %44 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.0277, ptr %dev_idx.i, align 8
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %dev.0.i, i32 0, i32 3
  %call36.i = call ptr @bdevname(ptr noundef %25, ptr noundef %name.i) #12
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 1
  %45 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %capacity.i = getelementptr inbounds %struct.dmz_dev, ptr %dev.0.i, i32 0, i32 5
  %47 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %capacity.i, align 8
  %48 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %begin.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %tobool38.not.i = icmp eq i64 %49, 0
  br i1 %tobool38.not.i, label %for.inc, label %if.end33.i.err.i_crit_edge

if.end33.i.err.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

err.i:                                            ; preds = %if.end33.i.err.i_crit_edge, %if.end25.i.err.i_crit_edge, %if.else.i.err.i_crit_edge, %if.end12.i.err.i_crit_edge, %if.end8.i.err.i_crit_edge, %if.then4.i.err.i_crit_edge
  %.str.31.sink.i = phi ptr [ @.str.27, %if.then4.i.err.i_crit_edge ], [ @.str.28, %if.end8.i.err.i_crit_edge ], [ @.str.29, %if.end12.i.err.i_crit_edge ], [ @.str.30, %if.else.i.err.i_crit_edge ], [ @.str.28, %if.end25.i.err.i_crit_edge ], [ @.str.31, %if.end33.i.err.i_crit_edge ]
  %error40.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %50 = ptrtoint ptr %error40.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.str.31.sink.i, ptr %error40.i, align 8
  %51 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ddev.i, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %52) #12
  br label %dmz_get_zoned_device.exit.thread

dmz_get_zoned_device.exit.thread:                 ; preds = %err.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -22, %err.i ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ddev.i) #12
  br label %err_dev

for.inc:                                          ; preds = %if.end33.i
  %53 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ddev.i, align 4
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %17, align 4
  %arrayidx43.i = getelementptr ptr, ptr %56, i32 %i.0277
  %57 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %arrayidx43.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ddev.i) #12
  %inc = add nuw i32 %i.0277, 1
  %exitcond.not = icmp eq i32 %inc, %argc
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %58 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private, align 4
  %nr_ddevs.i = getelementptr inbounds %struct.dmz_target, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_ddevs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i237 = icmp ugt i32 %61, 1
  %dev.i = getelementptr inbounds %struct.dmz_target, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %flags.i238 = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %flags.i238 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i238, align 4
  %and.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i239 = icmp eq i32 %and.i, 0
  br i1 %cmp.i237, label %if.then.i240, label %if.else.i243

if.then.i240:                                     ; preds = %for.end
  br i1 %tobool.not.i239, label %if.then1.i, label %if.then.i240.for.body.i_crit_edge

if.then.i240.for.body.i_crit_edge:                ; preds = %if.then.i240
  br label %for.body.i

if.then1.i:                                       ; preds = %if.then.i240
  call void @__sanitizer_cov_trace_pc() #14
  %error.i241 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %66 = ptrtoint ptr %error.i241 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.32, ptr %error.i241, align 8
  br label %err_dev

for.body.i:                                       ; preds = %blk_queue_zone_sectors.exit391.i.for.body.i_crit_edge, %if.then.i240.for.body.i_crit_edge
  %i.0432.i = phi i32 [ %inc.i, %blk_queue_zone_sectors.exit391.i.for.body.i_crit_edge ], [ 1, %if.then.i240.for.body.i_crit_edge ]
  %zone_nr_sectors.0431.i = phi i64 [ %conv.i390.i, %blk_queue_zone_sectors.exit391.i.for.body.i_crit_edge ], [ 0, %if.then.i240.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %flags6.i = getelementptr %struct.dmz_dev, ptr %68, i32 %i.0432.i, i32 9
  %69 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags6.i, align 4
  %and7.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %error10.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %71 = ptrtoint ptr %error10.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.33, ptr %error10.i, align 8
  br label %err_dev

if.end11.i:                                       ; preds = %for.body.i
  %arrayidx5.i = getelementptr %struct.dmz_dev, ptr %68, i32 %i.0432.i
  %72 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx5.i, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 18
  %74 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bd_queue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zone_nr_sectors.0431.i)
  %tobool12.not.i = icmp eq i64 %zone_nr_sectors.0431.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end17.i242_crit_edge, label %land.lhs.true.i

if.end11.i.if.end17.i242_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i242

land.lhs.true.i:                                  ; preds = %if.end11.i
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %75, i32 0, i32 37, i32 27
  %76 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.true.i.i, label %land.lhs.true.i.blk_queue_zone_sectors.exit.i_crit_edge

land.lhs.true.i.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %75, i32 0, i32 37, i32 5
  %78 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chunk_sectors.i.i, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i, %land.lhs.true.i.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %79, %cond.true.i.i ], [ 0, %land.lhs.true.i.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %zone_nr_sectors.0431.i, i64 %conv.i.i)
  %cmp14.not.i = icmp eq i64 %zone_nr_sectors.0431.i, %conv.i.i
  br i1 %cmp14.not.i, label %blk_queue_zone_sectors.exit.i.if.end17.i242_crit_edge, label %if.then15.i

blk_queue_zone_sectors.exit.i.if.end17.i242_crit_edge: ; preds = %blk_queue_zone_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i242

if.then15.i:                                      ; preds = %blk_queue_zone_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %error16.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %80 = ptrtoint ptr %error16.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.34, ptr %error16.i, align 8
  br label %err_dev

if.end17.i242:                                    ; preds = %blk_queue_zone_sectors.exit.i.if.end17.i242_crit_edge, %if.end11.i.if.end17.i242_crit_edge
  %zoned.i.i.i384.i = getelementptr inbounds %struct.request_queue, ptr %75, i32 0, i32 37, i32 27
  %81 = ptrtoint ptr %zoned.i.i.i384.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %zoned.i.i.i384.i, align 4
  %call.off.i.i385.i = add i32 %82, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i385.i)
  %switch.i.i386.i = icmp ult i32 %call.off.i.i385.i, 2
  br i1 %switch.i.i386.i, label %cond.true.i388.i, label %if.end17.i242.blk_queue_zone_sectors.exit391.i_crit_edge

if.end17.i242.blk_queue_zone_sectors.exit391.i_crit_edge: ; preds = %if.end17.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %blk_queue_zone_sectors.exit391.i

cond.true.i388.i:                                 ; preds = %if.end17.i242
  call void @__sanitizer_cov_trace_pc() #14
  %chunk_sectors.i387.i = getelementptr inbounds %struct.request_queue, ptr %75, i32 0, i32 37, i32 5
  %83 = ptrtoint ptr %chunk_sectors.i387.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chunk_sectors.i387.i, align 4
  br label %blk_queue_zone_sectors.exit391.i

blk_queue_zone_sectors.exit391.i:                 ; preds = %cond.true.i388.i, %if.end17.i242.blk_queue_zone_sectors.exit391.i_crit_edge
  %cond.i389.i = phi i32 [ %84, %cond.true.i388.i ], [ 0, %if.end17.i242.blk_queue_zone_sectors.exit391.i_crit_edge ]
  %conv.i390.i = zext i32 %cond.i389.i to i64
  %zone_nr_sectors19.i = getelementptr %struct.dmz_dev, ptr %68, i32 %i.0432.i, i32 10
  %85 = ptrtoint ptr %zone_nr_sectors19.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv.i390.i, ptr %zone_nr_sectors19.i, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 17
  %86 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bd_disk.i, align 8
  %call21.i = call i32 @blkdev_nr_zones(ptr noundef %87) #12
  %nr_zones.i = getelementptr %struct.dmz_dev, ptr %68, i32 %i.0432.i, i32 7
  %88 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call21.i, ptr %nr_zones.i, align 4
  %inc.i = add nuw i32 %i.0432.i, 1
  %89 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_ddevs.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %90
  br i1 %cmp3.i, label %blk_queue_zone_sectors.exit391.i.for.body.i_crit_edge, label %if.end38.i

blk_queue_zone_sectors.exit391.i.for.body.i_crit_edge: ; preds = %blk_queue_zone_sectors.exit391.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i243:                                     ; preds = %for.end
  br i1 %tobool.not.i239, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.else.i243
  call void @__sanitizer_cov_trace_pc() #14
  %error28.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %91 = ptrtoint ptr %error28.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.35, ptr %error28.i, align 8
  br label %err_dev

if.end29.i:                                       ; preds = %if.else.i243
  %92 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %63, align 8
  %bd_queue.i392.i = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 18
  %94 = ptrtoint ptr %bd_queue.i392.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bd_queue.i392.i, align 4
  %zoned.i.i.i393.i = getelementptr inbounds %struct.request_queue, ptr %95, i32 0, i32 37, i32 27
  %96 = ptrtoint ptr %zoned.i.i.i393.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %zoned.i.i.i393.i, align 4
  %call.off.i.i394.i = add i32 %97, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i394.i)
  %switch.i.i395.i = icmp ult i32 %call.off.i.i394.i, 2
  br i1 %switch.i.i395.i, label %cond.true.i397.i, label %if.end29.i.if.end38.thread.i_crit_edge

if.end29.i.if.end38.thread.i_crit_edge:           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread.i

cond.true.i397.i:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %chunk_sectors.i396.i = getelementptr inbounds %struct.request_queue, ptr %95, i32 0, i32 37, i32 5
  %98 = ptrtoint ptr %chunk_sectors.i396.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chunk_sectors.i396.i, align 4
  br label %if.end38.thread.i

if.end38.thread.i:                                ; preds = %cond.true.i397.i, %if.end29.i.if.end38.thread.i_crit_edge
  %cond.i398.i = phi i32 [ %99, %cond.true.i397.i ], [ 0, %if.end29.i.if.end38.thread.i_crit_edge ]
  %conv.i399.i = zext i32 %cond.i398.i to i64
  %zone_nr_sectors33.i = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 10
  %100 = ptrtoint ptr %zone_nr_sectors33.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv.i399.i, ptr %zone_nr_sectors33.i, align 8
  %bd_disk35.i = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 17
  %101 = ptrtoint ptr %bd_disk35.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bd_disk35.i, align 8
  %call36.i244 = call i32 @blkdev_nr_zones(ptr noundef %102) #12
  %nr_zones37.i = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 7
  %103 = ptrtoint ptr %nr_zones37.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call36.i244, ptr %nr_zones37.i, align 4
  br label %if.end24

if.end38.i:                                       ; preds = %blk_queue_zone_sectors.exit391.i
  %tobool39.not.i = icmp eq ptr %63, null
  br i1 %tobool39.not.i, label %if.end38.i.if.end24_crit_edge, label %if.then40.i

if.end38.i.if.end24_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then40.i:                                      ; preds = %if.end38.i
  %zone_nr_sectors41.i = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 10
  %104 = ptrtoint ptr %zone_nr_sectors41.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv.i390.i, ptr %zone_nr_sectors41.i, align 8
  %capacity.i245 = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 5
  %105 = ptrtoint ptr %capacity.i245 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %capacity.i245, align 8
  %add.i = add nsw i64 %conv.i390.i, -1
  %sub.i = add i64 %106, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp219.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp219.i, label %if.then223.i, label %if.else229.i, !prof !150

if.then223.i:                                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv224.i = trunc i64 %sub.i to i32
  %div227.i = udiv i32 %conv224.i, %cond.i389.i
  %conv228.i = zext i32 %div227.i to i64
  br label %if.end233.i

if.else229.i:                                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %cond.i389.i, i64 %sub.i) #18, !srcloc !151
  %asmresult1.i.i = extractvalue { i64, i64 } %107, 1
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.else229.i, %if.then223.i
  %_tmp.0.i = phi i64 [ %conv228.i, %if.then223.i ], [ %asmresult1.i.i, %if.else229.i ]
  %conv236.i = trunc i64 %_tmp.0.i to i32
  %nr_zones237.i = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 7
  %108 = ptrtoint ptr %nr_zones237.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv236.i, ptr %nr_zones237.i, align 4
  %zone_offset238.i = getelementptr inbounds %struct.dmz_dev, ptr %63, i32 0, i32 8
  %109 = ptrtoint ptr %zone_offset238.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %zone_offset238.i, align 8
  %110 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_ddevs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp243433.i = icmp ugt i32 %111, 1
  br i1 %cmp243433.i, label %for.body245.lr.ph.i, label %if.end233.i.if.end24_crit_edge

if.end233.i.if.end24_crit_edge:                   ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.body245.lr.ph.i:                              ; preds = %if.end233.i
  %conv240.i = and i64 %_tmp.0.i, 4294967295
  br label %for.body245.i

for.body245.i:                                    ; preds = %for.body245.i.for.body245.i_crit_edge, %for.body245.lr.ph.i
  %zone_offset.0435.i = phi i64 [ %conv240.i, %for.body245.lr.ph.i ], [ %add254.i, %for.body245.i.for.body245.i_crit_edge ]
  %i.1434.i = phi i32 [ 1, %for.body245.lr.ph.i ], [ %inc256.i, %for.body245.i.for.body245.i_crit_edge ]
  %conv246.i = trunc i64 %zone_offset.0435.i to i32
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  %zone_offset249.i = getelementptr %struct.dmz_dev, ptr %113, i32 %i.1434.i, i32 8
  %114 = ptrtoint ptr %zone_offset249.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv246.i, ptr %zone_offset249.i, align 8
  %115 = load ptr, ptr %dev.i, align 4
  %nr_zones252.i = getelementptr %struct.dmz_dev, ptr %115, i32 %i.1434.i, i32 7
  %116 = ptrtoint ptr %nr_zones252.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr_zones252.i, align 4
  %conv253.i = zext i32 %117 to i64
  %add254.i = add i64 %zone_offset.0435.i, %conv253.i
  %inc256.i = add nuw i32 %i.1434.i, 1
  %118 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nr_ddevs.i, align 4
  %cmp243.i = icmp ult i32 %inc256.i, %119
  br i1 %cmp243.i, label %for.body245.i.for.body245.i_crit_edge, label %for.body245.i.if.end24_crit_edge

for.body245.i.if.end24_crit_edge:                 ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.body245.i.for.body245.i_crit_edge:            ; preds = %for.body245.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body245.i

if.end24:                                         ; preds = %for.body245.i.if.end24_crit_edge, %if.end233.i.if.end24_crit_edge, %if.end38.i.if.end24_crit_edge, %if.end38.thread.i
  %120 = ptrtoint ptr %dev296 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev296, align 4
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 4
  %122 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ti, align 8
  %call26 = call ptr @dm_table_device_name(ptr noundef %123) #12
  %call27 = call i32 @dmz_ctr_metadata(ptr noundef %121, i32 noundef %argc, ptr noundef %metadata, ptr noundef %call26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %error30 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %124 = ptrtoint ptr %error30 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.10, ptr %error30, align 8
  br label %err_dev

if.end31:                                         ; preds = %if.end24
  %125 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %metadata, align 8
  %call33 = call i32 @dmz_zone_nr_sectors(ptr noundef %126) #12
  %max_io_len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 4
  %127 = ptrtoint ptr %max_io_len to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call33, ptr %max_io_len, align 8
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %128 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %129 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %num_discard_bios, align 8
  %num_write_zeroes_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 9
  %130 = ptrtoint ptr %num_write_zeroes_bios to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %num_write_zeroes_bios, align 4
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %131 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 16, ptr %per_io_data_size, align 8
  %flush_supported = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %132 = ptrtoint ptr %flush_supported to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load = load i8, ptr %flush_supported, align 4
  %bf.set36 = or i8 %bf.load, -64
  store i8 %bf.set36, ptr %flush_supported, align 4
  %133 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %metadata, align 8
  %call38 = call i32 @dmz_nr_chunks(ptr noundef %134) #12
  %conv = zext i32 %call38 to i64
  %135 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %metadata, align 8
  %call40 = call i32 @dmz_zone_nr_sectors_shift(ptr noundef %136) #12
  %sh_prom = zext i32 %call40 to i64
  %shl = shl i64 %conv, %sh_prom
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %137 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %shl, ptr %len, align 8
  %bio_set = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 8
  %call41 = call i32 @bioset_init(ptr noundef %bio_set, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body, label %if.then43

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %error44 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %138 = ptrtoint ptr %error44 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.11, ptr %error44, align 8
  br label %err_meta

do.body:                                          ; preds = %if.end31
  %chunk_lock = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %chunk_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @dmz_ctr.__key) #12
  %chunk_rxtree = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %chunk_rxtree, ptr noundef nonnull @.str.36, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 5, i32 1
  %139 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 3072, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 5, i32 2
  %140 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %xa_head.i, align 4
  %141 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %metadata, align 8
  %call47 = call ptr @dmz_metadata_label(ptr noundef %142) #12
  %call48 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 10, i32 noundef 0, ptr noundef %call47) #12
  %chunk_wq = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 6
  %143 = ptrtoint ptr %chunk_wq to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call48, ptr %chunk_wq, align 8
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.then51, label %do.body54

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %error52 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %144 = ptrtoint ptr %error52 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str.14, ptr %error52, align 8
  br label %err_bio

do.body54:                                        ; preds = %do.body
  %flush_lock = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %flush_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @dmz_ctr.__key.15, i16 noundef signext 3) #12
  %flush_list = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 10
  %tail.i = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 10, i32 1
  %145 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %tail.i, align 4
  %146 = ptrtoint ptr %flush_list to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %flush_list, align 8
  %flush_work = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11
  call void @__init_work(ptr noundef %flush_work, i32 noundef 0) #12
  %147 = ptrtoint ptr %flush_work to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -64, ptr %flush_work, align 8
  %lockdep_map = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @dmz_ctr.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry66 = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %148 = ptrtoint ptr %entry66 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %entry66, ptr %entry66, align 4
  %prev.i = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %entry66, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 2
  %150 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @dmz_flush_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 11, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @dmz_ctr.__key.19) #12
  %151 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %metadata, align 8
  %call78 = call ptr @dmz_metadata_label(ptr noundef %152) #12
  %call79 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.21, i32 noundef 655370, i32 noundef 1, ptr noundef %call78) #12
  %flush_wq = getelementptr inbounds %struct.dmz_target, ptr %call7.i.i, i32 0, i32 12
  %153 = ptrtoint ptr %flush_wq to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call79, ptr %flush_wq, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.then82, label %if.end84

if.then82:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %error83 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %154 = ptrtoint ptr %error83 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.22, ptr %error83, align 8
  br label %err_cwq

if.end84:                                         ; preds = %do.body54
  %call.i248 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef nonnull %call79, ptr noundef %flush_work, i32 noundef 1000) #12
  %155 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp90279.not = icmp eq i32 %156, 0
  br i1 %cmp90279.not, label %if.end84.do.end106_crit_edge, label %if.end84.for.body92_crit_edge

if.end84.for.body92_crit_edge:                    ; preds = %if.end84
  br label %for.body92

if.end84.do.end106_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

for.cond88:                                       ; preds = %for.body92
  %inc102 = add nuw i32 %i.1280, 1
  %157 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nr_ddevs, align 4
  %cmp90 = icmp ult i32 %inc102, %158
  br i1 %cmp90, label %for.cond88.for.body92_crit_edge, label %for.cond88.do.end106_crit_edge

for.cond88.do.end106_crit_edge:                   ; preds = %for.cond88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

for.cond88.for.body92_crit_edge:                  ; preds = %for.cond88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body92

for.body92:                                       ; preds = %for.cond88.for.body92_crit_edge, %if.end84.for.body92_crit_edge
  %i.1280 = phi i32 [ %inc102, %for.cond88.for.body92_crit_edge ], [ 0, %if.end84.for.body92_crit_edge ]
  %159 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %metadata, align 8
  %161 = ptrtoint ptr %dev296 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev296, align 4
  %reclaim = getelementptr %struct.dmz_dev, ptr %162, i32 %i.1280, i32 2
  %call96 = call i32 @dmz_ctr_reclaim(ptr noundef %160, ptr noundef %reclaim, i32 noundef %i.1280) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %for.cond88, label %if.then98

if.then98:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #14
  %error99 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %163 = ptrtoint ptr %error99 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.23, ptr %error99, align 8
  %164 = ptrtoint ptr %flush_wq to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %flush_wq, align 4
  call void @destroy_workqueue(ptr noundef %165) #12
  br label %err_cwq

do.end106:                                        ; preds = %for.cond88.do.end106_crit_edge, %if.end84.do.end106_crit_edge
  %166 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %metadata, align 8
  %call108 = call ptr @dmz_metadata_label(ptr noundef %167) #12
  %168 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %len, align 8
  %shr = lshr i64 %169, 3
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %call108, i64 noundef %169, i64 noundef %shr) #15
  br label %cleanup

err_cwq:                                          ; preds = %if.then98, %if.then82
  %ret.0 = phi i32 [ %call96, %if.then98 ], [ -12, %if.then82 ]
  %170 = ptrtoint ptr %chunk_wq to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %chunk_wq, align 8
  call void @destroy_workqueue(ptr noundef %171) #12
  br label %err_bio

err_bio:                                          ; preds = %err_cwq, %if.then51
  %ret.1 = phi i32 [ %ret.0, %err_cwq ], [ -12, %if.then51 ]
  call void @mutex_destroy(ptr noundef %chunk_lock) #12
  call void @bioset_exit(ptr noundef %bio_set) #12
  br label %err_meta

err_meta:                                         ; preds = %err_bio, %if.then43
  %ret.2 = phi i32 [ %call41, %if.then43 ], [ %ret.1, %err_bio ]
  %172 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %metadata, align 8
  call void @dmz_dtr_metadata(ptr noundef %173) #12
  br label %err_dev

err_dev:                                          ; preds = %err_meta, %if.then29, %if.then27.i, %if.then15.i, %if.then9.i, %if.then1.i, %dmz_get_zoned_device.exit.thread
  %ret.3 = phi i32 [ %call27, %if.then29 ], [ %ret.2, %err_meta ], [ %retval.0.i.ph, %dmz_get_zoned_device.exit.thread ], [ -22, %if.then1.i ], [ -22, %if.then9.i ], [ -22, %if.then15.i ], [ -22, %if.then27.i ]
  %174 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %private, align 4
  %nr_ddevs.i250 = getelementptr inbounds %struct.dmz_target, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %nr_ddevs.i250 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr_ddevs.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp13.not.i = icmp eq i32 %177, 0
  br i1 %cmp13.not.i, label %err_dev.err_crit_edge, label %err_dev.for.body.i252_crit_edge

err_dev.for.body.i252_crit_edge:                  ; preds = %err_dev
  br label %for.body.i252

err_dev.err_crit_edge:                            ; preds = %err_dev
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.body.i252:                                    ; preds = %for.inc.i.for.body.i252_crit_edge, %err_dev.for.body.i252_crit_edge
  %i.014.i = phi i32 [ %inc.i254, %for.inc.i.for.body.i252_crit_edge ], [ 0, %err_dev.for.body.i252_crit_edge ]
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %175, align 4
  %arrayidx.i = getelementptr ptr, ptr %179, i32 %i.014.i
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i251 = icmp eq ptr %181, null
  br i1 %tobool.not.i251, label %for.body.i252.for.inc.i_crit_edge, label %if.then.i253

for.body.i252.for.inc.i_crit_edge:                ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i253:                                     ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %181) #12
  %182 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %175, align 4
  %arrayidx4.i = getelementptr ptr, ptr %183, i32 %i.014.i
  %184 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %arrayidx4.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i253, %for.body.i252.for.inc.i_crit_edge
  %inc.i254 = add nuw i32 %i.014.i, 1
  %185 = ptrtoint ptr %nr_ddevs.i250 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %nr_ddevs.i250, align 4
  %cmp.i255 = icmp ult i32 %inc.i254, %186
  br i1 %cmp.i255, label %for.inc.i.for.body.i252_crit_edge, label %for.inc.i.err_crit_edge

for.inc.i.err_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.inc.i.for.body.i252_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i252

err:                                              ; preds = %for.inc.i.err_crit_edge, %err_dev.err_crit_edge, %if.then13
  %ret.4 = phi i32 [ -12, %if.then13 ], [ %ret.3, %err_dev.err_crit_edge ], [ %ret.3, %for.inc.i.err_crit_edge ]
  %187 = ptrtoint ptr %dev296 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev296, align 4
  call void @kfree(ptr noundef %188) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end106, %if.then7, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.4, %err ], [ 0, %do.end106 ], [ -12, %if.then7 ], [ -12, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_dtr(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chunk_wq = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chunk_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #12
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17.not = icmp eq i32 %5, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %reclaim = getelementptr %struct.dmz_dev, ptr %7, i32 %i.018, i32 2
  %8 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reclaim, align 8
  tail call void @dmz_dtr_reclaim(ptr noundef %9) #12
  %inc = add nuw i32 %i.018, 1
  %10 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ddevs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %flush_work = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %flush_work) #12
  %flush_wq = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %flush_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flush_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #12
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %metadata, align 4
  %call1 = tail call i32 @dmz_flush_metadata(ptr noundef %15) #12
  %16 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %metadata, align 4
  tail call void @dmz_dtr_metadata(ptr noundef %17) #12
  %bio_set = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 8
  tail call void @bioset_exit(ptr noundef %bio_set) #12
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private, align 4
  %nr_ddevs.i = getelementptr inbounds %struct.dmz_target, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_ddevs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13.not.i = icmp eq i32 %21, 0
  br i1 %cmp13.not.i, label %for.end.dmz_put_zoned_device.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.dmz_put_zoned_device.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_put_zoned_device.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %i.014.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %25) #12
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 4
  %arrayidx4.i = getelementptr ptr, ptr %27, i32 %i.014.i
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx4.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %29 = ptrtoint ptr %nr_ddevs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_ddevs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dmz_put_zoned_device.exit_crit_edge

for.inc.i.dmz_put_zoned_device.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_put_zoned_device.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dmz_put_zoned_device.exit:                        ; preds = %for.inc.i.dmz_put_zoned_device.exit_crit_edge, %for.end.dmz_put_zoned_device.exit_crit_edge
  %chunk_lock = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %chunk_lock) #12
  %dev3 = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 4
  tail call void @kfree(ptr noundef %32) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #12
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %7, 9
  %call2 = tail call zeroext i1 @dmz_dev_is_dying(ptr noundef %3) #12
  br i1 %call2, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_map.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_map, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !152

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call ptr @dmz_metadata_label(ptr noundef %3) #12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf, align 8
  %and = and i32 %9, 255
  %10 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter, align 8
  %call10 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %3) #12
  %sh_prom = zext i32 %call10 to i64
  %shr11 = lshr i64 %11, %sh_prom
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %shr14 = lshr i64 %13, 3
  %call15 = tail call i32 @dmz_zone_nr_blocks(ptr noundef %3) #12
  %sub = add i32 %call15, -1
  %conv = zext i32 %sub to i64
  %and16 = and i64 %shr14, %conv
  %14 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size, align 8
  %shr19 = lshr i32 %15, 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_map.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.41, ptr noundef %call7, i32 noundef %and, i64 noundef %5, i32 noundef %shr, i64 noundef %shr11, i64 noundef %and16, i32 noundef %shr19) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %tobool24.not = icmp ult i32 %7, 512
  br i1 %tobool24.not, label %land.lhs.true, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end
  %bi_opf25 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf25, align 8
  %and26 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and26)
  %cmp.not = icmp eq i32 %and26, 1
  br i1 %cmp.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %18 = and i32 %7, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool31.not = icmp eq i32 %18, 0
  %and32 = and i64 %5, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call, align 4
  %zone = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %zone, align 4
  %bio36 = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %bio36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bio, ptr %bio36, align 4
  %ref = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %22 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %ref, align 4
  br i1 %tobool24.not, label %land.lhs.true38, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true38:                                  ; preds = %if.end35
  %bi_opf39 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %23 = ptrtoint ptr %bi_opf39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_opf39, align 8
  %and40 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 1
  br i1 %cmp41, label %if.then43, label %land.lhs.true38.if.end46_crit_edge

land.lhs.true38.if.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %land.lhs.true38
  %flush_lock = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %flush_lock) #12
  %25 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bio, ptr %27, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %flush_list = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %flush_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bio, ptr %flush_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %flush_lock) #12
  %flush_wq = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %flush_wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %flush_wq, align 4
  %flush_work = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %flush_work, i32 noundef 0) #12
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true38.if.end46_crit_edge, %if.end35.if.end46_crit_edge
  %call47 = tail call i32 @dmz_zone_nr_sectors(ptr noundef %3) #12
  %sub48 = add i32 %call47, -1
  %conv49 = zext i32 %sub48 to i64
  %and50 = and i64 %5, %conv49
  %conv51 = zext i32 %shr to i64
  %add = add nuw nsw i64 %and50, %conv51
  %call52 = tail call i32 @dmz_zone_nr_sectors(ptr noundef %3) #12
  %conv53 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv53)
  %cmp54 = icmp ugt i64 %add, %conv53
  br i1 %cmp54, label %if.then56, label %if.end46.if.end61_crit_edge

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call i32 @dmz_zone_nr_sectors(ptr noundef %3) #12
  %33 = trunc i64 %and50 to i32
  %conv60 = sub i32 %call57, %33
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %conv60) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end46.if.end61_crit_edge
  %34 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bi_iter, align 8
  %36 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %metadata, align 4
  %call.i138 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %37) #12
  %sh_prom.i = zext i32 %call.i138 to i64
  %shr.i = lshr i64 %35, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %chunk_lock.i = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %chunk_lock.i, i32 noundef 0) #12
  %chunk_rxtree.i = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 5
  %call1.i = tail call ptr @radix_tree_lookup(ptr noundef %chunk_rxtree.i, i32 noundef %conv.i) #12
  %tobool.not.i139 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i139, label %if.else.i141, label %if.then.i140

if.then.i140:                                     ; preds = %if.end61
  %refcount.i.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call1.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i140.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !148

if.then.i140.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i140
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %39 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end25.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !150

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end25.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i140.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i140.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end25.i

if.else.i141:                                     ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3072, i32 noundef 64) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.else.i141.do.body65_crit_edge, label %do.body.i, !prof !148

if.else.i141.do.body65_crit_edge:                 ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65

do.body.i:                                        ; preds = %if.else.i141
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @dmz_queue_chunk_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry11.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry11.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dmz_chunk_work, ptr %func.i, align 4
  %refcount.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  %45 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 1, ptr %refcount.i, align 4
  %target.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %target.i, align 8
  %chunk13.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call7.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %chunk13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i, ptr %chunk13.i, align 4
  %bio_list.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call7.i.i, i32 0, i32 4
  %tail.i.i = getelementptr inbounds %struct.dm_chunk_work, ptr %call7.i.i, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %tail.i.i, align 4
  %49 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %bio_list.i, align 8
  %call15.i = tail call i32 @radix_tree_insert(ptr noundef %chunk_rxtree.i, i32 noundef %conv.i, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.if.end25.i_crit_edge, label %if.then23.i, !prof !150

do.body.i.if.end25.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %do.body65

if.end25.i:                                       ; preds = %do.body.i.if.end25.i_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end25.i_crit_edge
  %cw.0.i = phi ptr [ %call7.i.i, %do.body.i.if.end25.i_crit_edge ], [ %call1.i, %if.else.i.i.i.i.i.if.end25.i_crit_edge ], [ %call1.i, %if.end15.sink.split.i.i.i.i.i ]
  %50 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %bio, align 8
  %tail.i58.i = getelementptr inbounds %struct.dm_chunk_work, ptr %cw.0.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %tail.i58.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i58.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %bio, ptr %52, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %bio_list26.i = getelementptr inbounds %struct.dm_chunk_work, ptr %cw.0.i, i32 0, i32 4
  %54 = ptrtoint ptr %bio_list26.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %bio, ptr %bio_list26.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %55 = ptrtoint ptr %tail.i58.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bio, ptr %tail.i58.i, align 4
  %chunk_wq.i = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %chunk_wq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chunk_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef nonnull %cw.0.i) #12
  br i1 %call.i.i, label %if.then29.i, label %bio_list_add.exit.i.dmz_queue_chunk_work.exit.thread_crit_edge

bio_list_add.exit.i.dmz_queue_chunk_work.exit.thread_crit_edge: ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_queue_chunk_work.exit.thread

if.then29.i:                                      ; preds = %bio_list_add.exit.i
  %refcount.i59.i = getelementptr inbounds %struct.dm_chunk_work, ptr %cw.0.i, i32 0, i32 1
  %call.i.i.i.i.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i59.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i59.i, i32 1, i32 3, i32 1) #12
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i59.i, ptr %refcount.i59.i, i32 1, ptr elementtype(i32) %refcount.i59.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i61.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i61.i)
  %tobool1.not.i.i.i.i62.i = icmp eq i32 %asmresult.i.i.i.i.i.i61.i, 0
  br i1 %tobool1.not.i.i.i.i62.i, label %if.then29.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, label %if.else.i.i.i.i65.i, !prof !148

if.then29.i.if.end15.sink.split.i.i.i.i67.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i67.i

if.else.i.i.i.i65.i:                              ; preds = %if.then29.i
  %add.i.i.i.i63.i = add i32 %asmresult.i.i.i.i.i.i61.i, 1
  %59 = or i32 %add.i.i.i.i63.i, %asmresult.i.i.i.i.i.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %.not.i.i.i.i64.i = icmp sgt i32 %59, -1
  br i1 %.not.i.i.i.i64.i, label %if.else.i.i.i.i65.i.dmz_queue_chunk_work.exit.thread_crit_edge, label %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, !prof !150

if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge: ; preds = %if.else.i.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i67.i

if.else.i.i.i.i65.i.dmz_queue_chunk_work.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_queue_chunk_work.exit.thread

if.end15.sink.split.i.i.i.i67.i:                  ; preds = %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge, %if.then29.i.if.end15.sink.split.i.i.i.i67.i_crit_edge
  %.sink.i.i.i.i66.i = phi i32 [ 2, %if.then29.i.if.end15.sink.split.i.i.i.i67.i_crit_edge ], [ 1, %if.else.i.i.i.i65.i.if.end15.sink.split.i.i.i.i67.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i59.i, i32 noundef %.sink.i.i.i.i66.i) #12
  br label %dmz_queue_chunk_work.exit.thread

dmz_queue_chunk_work.exit.thread:                 ; preds = %if.end15.sink.split.i.i.i.i67.i, %if.else.i.i.i.i65.i.dmz_queue_chunk_work.exit.thread_crit_edge, %bio_list_add.exit.i.dmz_queue_chunk_work.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %chunk_lock.i) #12
  br label %cleanup

do.body65:                                        ; preds = %if.then23.i, %if.else.i141.do.body65_crit_edge
  %ret.1.i = phi i32 [ %call15.i, %if.then23.i ], [ -12, %if.else.i141.do.body65_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %chunk_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_map.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_map, %if.then77)) #12
          to label %cleanup [label %if.then77], !srcloc !152

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call ptr @dmz_metadata_label(ptr noundef %3) #12
  %bi_opf79 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %60 = ptrtoint ptr %bi_opf79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bi_opf79, align 8
  %and80 = and i32 %61, 255
  %62 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %bi_iter, align 8
  %call83 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %3) #12
  %sh_prom84 = zext i32 %call83 to i64
  %shr85 = lshr i64 %63, %sh_prom84
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_map.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.42, ptr noundef %call78, i32 noundef %and80, i64 noundef %shr85, i32 noundef %ret.1.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body65, %dmz_queue_chunk_work.exit.thread, %bio_list_add.exit, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bio_list_add.exit ], [ 4, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 4, %if.end29.cleanup_crit_edge ], [ 2, %if.then77 ], [ 0, %dmz_queue_chunk_work.exit.thread ], [ 2, %do.body65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_suspend(ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chunk_wq = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chunk_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #12
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %reclaim = getelementptr %struct.dmz_dev, ptr %7, i32 %i.07, i32 2
  %8 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reclaim, align 8
  tail call void @dmz_suspend_reclaim(ptr noundef %9) #12
  %inc = add nuw i32 %i.07, 1
  %10 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ddevs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %flush_work = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %flush_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_resume(ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %flush_wq = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flush_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flush_wq, align 4
  %flush_work = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %flush_work, i32 noundef 1000) #12
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %reclaim = getelementptr %struct.dmz_dev, ptr %7, i32 %i.07, i32 2
  %8 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reclaim, align 8
  tail call void @dmz_resume_reclaim(ptr noundef %9) #12
  %inc = add nuw i32 %i.07, 1
  %10 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ddevs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.cond.end_crit_edge, label %cond.false

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %metadata, align 4
  %call = tail call i32 @dmz_nr_zones(ptr noundef %5) #12
  %6 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %metadata, align 4
  %call2 = tail call i32 @dmz_nr_unmap_cache_zones(ptr noundef %7) #12
  %8 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metadata, align 4
  %call4 = tail call i32 @dmz_nr_cache_zones(ptr noundef %9) #12
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.55, i32 noundef %call, i32 noundef %call2, i32 noundef %call4) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.false ], [ 0, %sw.bb.cond.end_crit_edge ]
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6128.not = icmp eq i32 %11, 0
  br i1 %cmp6128.not, label %cond.end.sw.epilog_crit_edge, label %land.lhs.true.peel

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.peel:                               ; preds = %cond.end
  %metadata8 = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metadata8, align 4
  %call9.peel = tail call i32 @dmz_nr_cache_zones(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.peel)
  %cmp10.not.peel = icmp eq i32 %call9.peel, 0
  br i1 %cmp10.not.peel, label %if.end.peel, label %land.lhs.true.peel.for.inc.peel_crit_edge

land.lhs.true.peel.for.inc.peel_crit_edge:        ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.peel

if.end.peel:                                      ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %maxlen)
  %cmp11.not.peel = icmp ult i32 %cond, %maxlen
  br i1 %cmp11.not.peel, label %cond.false13.peel, label %if.end.peel.cond.end25.peel_crit_edge

if.end.peel.cond.end25.peel_crit_edge:            ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end25.peel

cond.false13.peel:                                ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14.peel = getelementptr i8, ptr %result, i32 %cond
  %sub15.peel = sub i32 %maxlen, %cond
  %14 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %metadata8, align 4
  %call17.peel = tail call i32 @dmz_nr_unmap_rnd_zones(ptr noundef %15, i32 noundef 0) #12
  %16 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %metadata8, align 4
  %call19.peel = tail call i32 @dmz_nr_rnd_zones(ptr noundef %17, i32 noundef 0) #12
  %18 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %metadata8, align 4
  %call21.peel = tail call i32 @dmz_nr_unmap_seq_zones(ptr noundef %19, i32 noundef 0) #12
  %20 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %metadata8, align 4
  %call23.peel = tail call i32 @dmz_nr_seq_zones(ptr noundef %21, i32 noundef 0) #12
  %call24.peel = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.peel, i32 noundef %sub15.peel, ptr noundef nonnull @.str.56, i32 noundef %call17.peel, i32 noundef %call19.peel, i32 noundef %call21.peel, i32 noundef %call23.peel) #12
  br label %cond.end25.peel

cond.end25.peel:                                  ; preds = %cond.false13.peel, %if.end.peel.cond.end25.peel_crit_edge
  %cond26.peel = phi i32 [ %call24.peel, %cond.false13.peel ], [ 0, %if.end.peel.cond.end25.peel_crit_edge ]
  %add27.peel = add i32 %cond26.peel, %cond
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %cond.end25.peel, %land.lhs.true.peel.for.inc.peel_crit_edge
  %sz.1.peel = phi i32 [ %cond, %land.lhs.true.peel.for.inc.peel_crit_edge ], [ %add27.peel, %cond.end25.peel ]
  %22 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp6.peel = icmp ugt i32 %23, 1
  br i1 %cmp6.peel, label %for.inc.peel.if.end_crit_edge, label %for.inc.peel.sw.epilog_crit_edge

for.inc.peel.sw.epilog_crit_edge:                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.peel.if.end_crit_edge:                    ; preds = %for.inc.peel
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %for.inc.peel.if.end_crit_edge
  %sz.0130 = phi i32 [ %add27, %for.inc.if.end_crit_edge ], [ %sz.1.peel, %for.inc.peel.if.end_crit_edge ]
  %i.0129 = phi i32 [ %inc, %for.inc.if.end_crit_edge ], [ 1, %for.inc.peel.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0130, i32 %maxlen)
  %cmp11.not = icmp ult i32 %sz.0130, %maxlen
  br i1 %cmp11.not, label %cond.false13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cond.false13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14 = getelementptr i8, ptr %result, i32 %sz.0130
  %sub15 = sub i32 %maxlen, %sz.0130
  %24 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %metadata8, align 4
  %call17 = tail call i32 @dmz_nr_unmap_rnd_zones(ptr noundef %25, i32 noundef %i.0129) #12
  %26 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metadata8, align 4
  %call19 = tail call i32 @dmz_nr_rnd_zones(ptr noundef %27, i32 noundef %i.0129) #12
  %28 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %metadata8, align 4
  %call21 = tail call i32 @dmz_nr_unmap_seq_zones(ptr noundef %29, i32 noundef %i.0129) #12
  %30 = ptrtoint ptr %metadata8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %metadata8, align 4
  %call23 = tail call i32 @dmz_nr_seq_zones(ptr noundef %31, i32 noundef %i.0129) #12
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.56, i32 noundef %call17, i32 noundef %call19, i32 noundef %call21, i32 noundef %call23) #12
  br label %for.inc

for.inc:                                          ; preds = %cond.false13, %if.end.for.inc_crit_edge
  %cond26 = phi i32 [ %call24, %cond.false13 ], [ 0, %if.end.for.inc_crit_edge ]
  %add27 = add i32 %cond26, %sz.0130
  %inc = add nuw i32 %i.0129, 1
  %32 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_ddevs, align 4
  %cmp6 = icmp ult i32 %inc, %33
  br i1 %cmp6, label %for.inc.if.end_crit_edge, label %for.inc.sw.epilog_crit_edge, !llvm.loop !154

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb28:                                          ; preds = %entry
  %dev29 = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev29, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %39, 20
  %and = and i32 %39, 1048575
  %call32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.57, i32 noundef %shr, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp34 = icmp eq i32 %maxlen, 0
  br i1 %cmp34, label %sw.bb28.cond.end41_crit_edge, label %cond.false36

sw.bb28.cond.end41_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end41

cond.false36:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.58, ptr noundef nonnull %buf) #12
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false36, %sw.bb28.cond.end41_crit_edge
  %cond42 = phi i32 [ %call40, %cond.false36 ], [ 0, %sw.bb28.cond.end41_crit_edge ]
  %nr_ddevs45 = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %nr_ddevs45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_ddevs45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp46124 = icmp ugt i32 %41, 1
  br i1 %cmp46124, label %cond.end41.for.body47_crit_edge, label %cond.end41.sw.epilog_crit_edge

cond.end41.sw.epilog_crit_edge:                   ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

cond.end41.for.body47_crit_edge:                  ; preds = %cond.end41
  br label %for.body47

for.body47:                                       ; preds = %cond.end67.for.body47_crit_edge, %cond.end41.for.body47_crit_edge
  %sz.2126 = phi i32 [ %add69, %cond.end67.for.body47_crit_edge ], [ %cond42, %cond.end41.for.body47_crit_edge ]
  %i.1125 = phi i32 [ %inc71, %cond.end67.for.body47_crit_edge ], [ 1, %cond.end41.for.body47_crit_edge ]
  %42 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev29, align 4
  %arrayidx49 = getelementptr %struct.dmz_dev, ptr %43, i32 %i.1125
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx49, align 8
  %bd_dev52 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %bd_dev52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bd_dev52, align 4
  %shr53 = lshr i32 %47, 20
  %and56 = and i32 %47, 1048575
  %call57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.57, i32 noundef %shr53, i32 noundef %and56)
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.2126, i32 %maxlen)
  %cmp60.not = icmp ult i32 %sz.2126, %maxlen
  br i1 %cmp60.not, label %cond.false62, label %for.body47.cond.end67_crit_edge

for.body47.cond.end67_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end67

cond.false62:                                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i8, ptr %result, i32 %sz.2126
  %sub64 = sub i32 %maxlen, %sz.2126
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.59, ptr noundef nonnull %buf) #12
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false62, %for.body47.cond.end67_crit_edge
  %cond68 = phi i32 [ %call66, %cond.false62 ], [ 0, %for.body47.cond.end67_crit_edge ]
  %add69 = add i32 %cond68, %sz.2126
  %inc71 = add nuw i32 %i.1125, 1
  %48 = ptrtoint ptr %nr_ddevs45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_ddevs45, align 4
  %cmp46 = icmp ult i32 %inc71, %49
  br i1 %cmp46, label %cond.end67.for.body47_crit_edge, label %cond.end67.sw.epilog_crit_edge

cond.end67.sw.epilog_crit_edge:                   ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

cond.end67.for.body47_crit_edge:                  ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %cond.end67.sw.epilog_crit_edge, %cond.end41.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %for.inc.peel.sw.epilog_crit_edge, %cond.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %reclaim = getelementptr %struct.dmz_dev, ptr %7, i32 %i.09, i32 2
  %8 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reclaim, align 8
  tail call void @dmz_schedule_reclaim(ptr noundef %9) #12
  %inc = add nuw i32 %i.09, 1
  %10 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ddevs, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %r.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dev1 = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %flags.i = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, -3
  store i32 %and.i, ptr %flags.i, align 4
  %call.i = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef %3) #12
  br i1 %call.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops.i, align 8
  %check_events.i = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %check_events.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %check_events.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.dmz_check_bdev.exit_crit_edge, label %land.lhs.true.i

if.end.i.dmz_check_bdev.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_check_bdev.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 %13(ptr noundef %9, i32 noundef 0) #12
  %and4.i = and i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dmz_check_bdev.exit_crit_edge, label %do.end.i

land.lhs.true.i.dmz_check_bdev.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_check_bdev.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i) #15
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %dmz_check_bdev.exit

dmz_check_bdev.exit:                              ; preds = %do.end.i, %land.lhs.true.i.dmz_check_bdev.exit_crit_edge, %if.end.i.dmz_check_bdev.exit_crit_edge
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and11.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end, label %dmz_check_bdev.exit.cleanup_crit_edge

dmz_check_bdev.exit.cleanup_crit_edge:            ; preds = %dmz_check_bdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dmz_check_bdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %bdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dmz_check_bdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %dmz_check_bdev.exit.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata, align 4
  %call = tail call i32 @dmz_zone_nr_sectors(ptr noundef %3) #12
  %dev = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 3
  %nr_ddevs = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_ddevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not = icmp eq i32 %5, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %neg = sub i32 0, %call
  %conv = zext i32 %neg to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %nr_ddevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_ddevs, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %capacity1 = getelementptr %struct.dmz_dev, ptr %9, i32 %i.013, i32 5
  %10 = ptrtoint ptr %capacity1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %capacity1, align 8
  %and = and i64 %11, %conv
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %13, i32 %i.013
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 %fn(ptr noundef %ti, ptr noundef %15, i64 noundef 0, i64 noundef %and, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %r.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %call3, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_io_hints(ptr nocapture noundef readonly %ti, ptr noundef %limits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata, align 4
  %call = tail call i32 @dmz_zone_nr_sectors(ptr noundef %3) #12
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 9
  %4 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %logical_block_size, align 4
  %physical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 8
  %5 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %physical_block_size, align 4
  tail call void @blk_limits_io_min(ptr noundef %limits, i32 noundef 4096) #12
  tail call void @blk_limits_io_opt(ptr noundef %limits, i32 noundef 4096) #12
  %discard_alignment = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 19
  %6 = ptrtoint ptr %discard_alignment to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %discard_alignment, align 4
  %discard_granularity = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %7 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %discard_granularity, align 4
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %8 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %max_discard_sectors, align 4
  %max_hw_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 14
  %9 = ptrtoint ptr %max_hw_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %max_hw_discard_sectors, align 4
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 16
  %10 = ptrtoint ptr %max_write_zeroes_sectors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %max_write_zeroes_sectors, align 4
  %chunk_sectors1 = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 5
  %11 = ptrtoint ptr %chunk_sectors1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %chunk_sectors1, align 4
  %max_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 6
  %12 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %max_sectors, align 4
  %zoned = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 27
  %13 = ptrtoint ptr %zoned to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %zoned, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_ctr_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_device_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_zone_nr_sectors(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_chunks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_zone_nr_sectors_shift(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_metadata_label(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_flush_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr i8, ptr %work, i32 -808
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 4
  %call = tail call i32 @dmz_flush_metadata(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_flush_work.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_flush_work, %if.then6)) #12
          to label %if.end9 [label %if.then6], !srcloc !152

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata, align 4
  %call8 = tail call ptr @dmz_metadata_label(ptr noundef %3) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_flush_work.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.39, ptr noundef %call8, i32 noundef %call) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body, %entry.if.end9_crit_edge
  %flush_lock = getelementptr i8, ptr %work, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %flush_lock) #12
  %flush_list = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_list, align 4
  %tobool.not.i27 = icmp eq ptr %5, null
  br i1 %tobool.not.i27, label %if.end9.while.end_crit_edge, label %if.then.i.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %if.end9
  %tail.i = getelementptr i8, ptr %work, i32 -4
  br label %if.then.i

if.then.i:                                        ; preds = %if.end14.if.then.i_crit_edge, %if.then.i.lr.ph
  %6 = phi ptr [ %5, %if.then.i.lr.ph ], [ %13, %if.end14.if.then.i_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %flush_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %flush_list, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tail.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then5.i, %if.then.i.if.end14_crit_edge
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %6, align 8
  tail call void @_raw_spin_unlock(ptr noundef %flush_lock) #12
  %call15 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %call) #12
  tail call fastcc void @dmz_bio_endio(ptr noundef nonnull %6, i8 noundef zeroext %call15)
  tail call void @_raw_spin_lock(ptr noundef %flush_lock) #12
  %12 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flush_list, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end14.while.end_crit_edge, label %if.end14.if.then.i_crit_edge

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.end9.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %flush_lock) #12
  %flush_wq = getelementptr i8, ptr %work, i32 100
  %14 = ptrtoint ptr %flush_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flush_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef 1000) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_ctr_reclaim(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_dtr_metadata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_flush_metadata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_bio_endio(ptr noundef %bio, i8 noundef zeroext %status) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %cmp.not = icmp eq i8 %status, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp3 = icmp eq i8 %1, 0
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %status, ptr %bi_status, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true6:                                   ; preds = %if.end
  %bi_status7 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %5 = ptrtoint ptr %bi_status7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bi_status7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.not = icmp eq i8 %6, 0
  br i1 %cmp9.not, label %land.lhs.true6.if.end13_crit_edge, label %if.then11

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.dmz_dev, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %ref = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !157
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then15, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end34_crit_edge, label %if.then10.i.i.i, !prof !150

if.end5.i.i.i.if.end34_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %if.end34

if.then15:                                        ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  %zone16 = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %zone16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone16, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %if.then15.if.end33_crit_edge, label %if.then18

if.then15.if.end33_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then18:                                        ; preds = %if.then15
  %bi_status19 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %12 = ptrtoint ptr %bi_status19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bi_status19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp21.not = icmp eq i8 %13, 0
  br i1 %cmp21.not, label %if.then18.if.end32_crit_edge, label %land.lhs.true23

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true23:                                  ; preds = %if.then18
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf, align 8
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp24 = icmp eq i32 %and, 1
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true23.if.end32_crit_edge

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %flags27 = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags27, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not = icmp eq i32 %18, 0
  br i1 %tobool29.not, label %land.lhs.true26.if.end32_crit_edge, label %if.then30

land.lhs.true26.if.end32_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags27) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true26.if.end32_crit_edge, %land.lhs.true23.if.end32_crit_edge, %if.then18.if.end32_crit_edge
  %dev.i = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %reclaim.i = getelementptr inbounds %struct.dmz_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reclaim.i, align 8
  tail call void @dmz_reclaim_bio_acc(ptr noundef %22) #12
  %refcount.i = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !159
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then15.if.end33_crit_edge
  tail call void @bio_endio(ptr noundef %bio) #12
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then10.i.i.i, %if.end5.i.i.i.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_reclaim_bio_acc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_dtr_reclaim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_dev_is_dying(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_zone_nr_blocks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_accept_partial_bio(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_chunk_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.dm_chunk_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target, align 4
  %chunk_lock = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %chunk_lock, i32 noundef 0) #12
  %bio_list = getelementptr inbounds %struct.dm_chunk_work, ptr %work, i32 0, i32 4
  %2 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_list, align 4
  %tobool.not.i16 = icmp eq ptr %3, null
  br i1 %tobool.not.i16, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %tail.i = getelementptr inbounds %struct.dm_chunk_work, ptr %work, i32 0, i32 4, i32 1
  %metadata.i = getelementptr inbounds %struct.dmz_target, ptr %1, i32 0, i32 4
  br label %if.then.i

if.then.i:                                        ; preds = %dmz_handle_bio.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %4 = phi ptr [ %3, %if.then.i.lr.ph ], [ %31, %dmz_handle_bio.exit.if.then.i_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bio_list, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tail.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then5.i, %if.then.i.while.body_crit_edge
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 8
  tail call void @mutex_unlock(ptr noundef %chunk_lock) #12
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef nonnull %4, i32 noundef 16) #12
  %10 = ptrtoint ptr %metadata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metadata.i, align 4
  tail call void @dmz_lock_metadata(ptr noundef %11) #12
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter.i, align 8
  %call1.i = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %11) #12
  %sh_prom.i = zext i32 %call1.i to i64
  %shr.i = lshr i64 %13, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf.i, align 8
  %and.i = and i32 %15, 255
  %call2.i = tail call ptr @dmz_get_chunk_mapping(ptr noundef %11, i32 noundef %conv.i, i32 noundef %and.i) #12
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i12, label %if.end.i14

if.then.i12:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call2.i to i32
  br label %dmz_handle_bio.exit

if.end.i14:                                       ; preds = %while.body
  %tobool.not.i13 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i13, label %if.end.i14.if.end7.i_crit_edge, label %if.then5.i15

if.end.i14.if.end7.i_crit_edge:                   ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  %refcount.i.i = getelementptr inbounds %struct.dm_zone, ptr %call2.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !160
  %zone6.i = getelementptr inbounds %struct.dmz_bioctx, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %zone6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %zone6.i, align 4
  %dev.i = getelementptr inbounds %struct.dm_zone, ptr %call2.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %reclaim.i = getelementptr inbounds %struct.dmz_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reclaim.i, align 8
  tail call void @dmz_reclaim_bio_acc(ptr noundef %22) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i15, %if.end.i14.if.end7.i_crit_edge
  %23 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %24 to i8
  %25 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %trunc.i, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb11.i
    i8 3, label %if.end7.i.sw.bb13.i_crit_edge
    i8 9, label %if.end7.i.sw.bb13.i_crit_edge17
  ]

if.end7.i.sw.bb13.i_crit_edge17:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end7.i.sw.bb13.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = tail call fastcc i32 @dmz_handle_read(ptr noundef %1, ptr noundef %call2.i, ptr noundef nonnull %4) #12
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i = tail call fastcc i32 @dmz_handle_write(ptr noundef %1, ptr noundef %call2.i, ptr noundef nonnull %4) #12
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end7.i.sw.bb13.i_crit_edge, %if.end7.i.sw.bb13.i_crit_edge17
  %call14.i = tail call fastcc i32 @dmz_handle_discard(ptr noundef %1, ptr noundef %call2.i, ptr noundef nonnull %4) #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %metadata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metadata.i, align 4
  %call16.i = tail call ptr @dmz_metadata_label(ptr noundef %27) #12
  %28 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bi_opf.i, align 8
  %and18.i = and i32 %29, 255
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %call16.i, i32 noundef %and18.i) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb13.i, %sw.bb11.i, %sw.bb.i
  %ret.0.i = phi i32 [ -5, %do.end.i ], [ %call14.i, %sw.bb13.i ], [ %call12.i, %sw.bb11.i ], [ %call10.i, %sw.bb.i ]
  br i1 %tobool.not.i13, label %sw.epilog.i.dmz_handle_bio.exit_crit_edge, label %if.then21.i

sw.epilog.i.dmz_handle_bio.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmz_handle_bio.exit

if.then21.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dmz_put_chunk_mapping(ptr noundef %11, ptr noundef nonnull %call2.i) #12
  br label %dmz_handle_bio.exit

dmz_handle_bio.exit:                              ; preds = %if.then21.i, %sw.epilog.i.dmz_handle_bio.exit_crit_edge, %if.then.i12
  %ret.1.i = phi i32 [ %16, %if.then.i12 ], [ %ret.0.i, %if.then21.i ], [ %ret.0.i, %sw.epilog.i.dmz_handle_bio.exit_crit_edge ]
  %call23.i = tail call zeroext i8 @errno_to_blk_status(i32 noundef %ret.1.i) #12
  tail call fastcc void @dmz_bio_endio(ptr noundef nonnull %4, i8 noundef zeroext %call23.i) #12
  tail call void @dmz_unlock_metadata(ptr noundef %11) #12
  tail call void @mutex_lock_nested(ptr noundef %chunk_lock, i32 noundef 0) #12
  tail call fastcc void @dmz_put_chunk_work(ptr noundef %work)
  %30 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bio_list, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %dmz_handle_bio.exit.while.end_crit_edge, label %dmz_handle_bio.exit.if.then.i_crit_edge

dmz_handle_bio.exit.if.then.i_crit_edge:          ; preds = %dmz_handle_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

dmz_handle_bio.exit.while.end_crit_edge:          ; preds = %dmz_handle_bio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %dmz_handle_bio.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @dmz_put_chunk_work(ptr noundef %work)
  tail call void @mutex_unlock(ptr noundef %chunk_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_put_chunk_work(ptr noundef %cw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.dm_chunk_work, ptr %cw, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !157
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end24_crit_edge, label %if.then10.i.i.i, !prof !150

if.end5.i.i.i.if.end24_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %if.end24

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  %bio_list = getelementptr inbounds %struct.dm_chunk_work, ptr %cw, i32 0, i32 4
  %1 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bio_list, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %do.end, !prof !150

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 470, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %target = getelementptr inbounds %struct.dm_chunk_work, ptr %cw, i32 0, i32 2
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target, align 4
  %chunk_rxtree = getelementptr inbounds %struct.dmz_target, ptr %4, i32 0, i32 5
  %chunk = getelementptr inbounds %struct.dm_chunk_work, ptr %cw, i32 0, i32 3
  %5 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chunk, align 4
  %call23 = tail call ptr @radix_tree_delete(ptr noundef %chunk_rxtree, i32 noundef %6) #12
  tail call void @kfree(ptr noundef %cw) #12
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_lock_metadata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_get_chunk_mapping(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_handle_read(ptr noundef %dmz, ptr noundef %zone, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %dmz, i32 0, i32 4
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %shr = lshr i64 %3, 3
  %call = tail call i32 @dmz_zone_nr_blocks(ptr noundef %1) #12
  %sub = add i32 %call, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %shr, %conv
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr2 = lshr i32 %5, 12
  %conv6 = zext i32 %shr2 to i64
  %add = add nuw nsw i64 %and, %conv6
  %tobool.not = icmp eq ptr %zone, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @zero_fill_bio(ptr noundef %bio) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_handle_read.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_handle_read, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !152

if.then11:                                        ; preds = %do.body
  %call12 = tail call ptr @dmz_metadata_label(ptr noundef %1) #12
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %call15 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %1) #12
  %sh_prom = zext i32 %call15 to i64
  %shr16 = lshr i64 %7, %sh_prom
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %cond.false, label %if.then11.cond.end_crit_edge

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i137 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i137)
  %tobool21.not = icmp eq i32 %and1.i137, 0
  %cond = select i1 %tobool21.not, ptr @.str.50, ptr @.str.49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then11.cond.end_crit_edge
  %cond22 = phi ptr [ %cond, %cond.false ], [ @.str.48, %if.then11.cond.end_crit_edge ]
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_handle_read.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.47, ptr noundef %call12, i64 noundef %shr16, ptr noundef nonnull %cond22, i32 noundef %14, i64 noundef %and, i32 noundef %shr2) #12
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  %bzone24 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 8
  %15 = ptrtoint ptr %bzone24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bzone24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp157.not = icmp ult i32 %5, 4096
  br i1 %cmp157.not, label %do.end.cleanup_crit_edge, label %while.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %flags26 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 5
  %tobool48.not = icmp eq ptr %16, null
  br label %while.body

while.body:                                       ; preds = %if.end77.while.body_crit_edge, %while.body.lr.ph
  %chunk_block.0160 = phi i64 [ %and, %while.body.lr.ph ], [ %chunk_block.1, %if.end77.while.body_crit_edge ]
  %17 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags26, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %while.body.if.then36_crit_edge

while.body.if.then36_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

lor.lhs.false:                                    ; preds = %while.body
  %20 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags26, align 4
  %and1.i140 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i140)
  %tobool31.not = icmp eq i32 %and1.i140, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wp_block, align 4
  %conv33 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %chunk_block.0160, i64 %conv33)
  %cmp34 = icmp ult i64 %chunk_block.0160, %conv33
  br i1 %cmp34, label %lor.lhs.false32.if.then36_crit_edge, label %lor.lhs.false32.land.lhs.true_crit_edge

lor.lhs.false32.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %while.body.if.then36_crit_edge
  %call37 = tail call i32 @dmz_block_valid(ptr noundef %1, ptr noundef nonnull %zone, i64 noundef %chunk_block.0160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then36.cleanup_crit_edge, label %if.end46

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp42.not = icmp eq i32 %call37, 0
  br i1 %cmp42.not, label %if.end46.land.lhs.true_crit_edge, label %if.end46.if.then61_crit_edge

if.end46.if.then61_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.end46.land.lhs.true_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end46.land.lhs.true_crit_edge, %lor.lhs.false32.land.lhs.true_crit_edge
  br i1 %tobool48.not, label %land.lhs.true.if.else_crit_edge, label %if.then49

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then49:                                        ; preds = %land.lhs.true
  %call50 = tail call i32 @dmz_block_valid(ptr noundef %1, ptr noundef nonnull %16, i64 noundef %chunk_block.0160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then49.cleanup_crit_edge, label %if.end59

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp55.not = icmp eq i32 %call50, 0
  br i1 %cmp55.not, label %if.end59.if.else_crit_edge, label %if.end59.if.then61_crit_edge

if.end59.if.then61_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.end59.if.else_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then61:                                        ; preds = %if.end59.if.then61_crit_edge, %if.end46.if.then61_crit_edge
  %rzone.2156 = phi ptr [ %16, %if.end59.if.then61_crit_edge ], [ %zone, %if.end46.if.then61_crit_edge ]
  %nr_blocks.1155 = phi i32 [ %call50, %if.end59.if.then61_crit_edge ], [ %call37, %if.end46.if.then61_crit_edge ]
  %sub62 = sub i64 %add, %chunk_block.0160
  %conv63 = trunc i64 %sub62 to i32
  %24 = tail call i32 @llvm.umin.i32(i32 %nr_blocks.1155, i32 %conv63)
  %call71 = tail call fastcc i32 @dmz_submit_bio(ptr noundef %dmz, ptr noundef nonnull %rzone.2156, ptr noundef %bio, i64 noundef %chunk_block.0160, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then61.cleanup_crit_edge

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end74:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %conv75 = zext i32 %24 to i64
  br label %if.end77

if.else:                                          ; preds = %if.end59.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %25 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_size, align 8
  store i32 4096, ptr %bi_size, align 8
  tail call void @zero_fill_bio(ptr noundef %bio) #12
  %27 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_size, align 8
  store i32 %26, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i.i = icmp eq i32 %26, %28
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bi_size, align 8
  br label %if.end77

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bio_advance(ptr noundef %bio, i32 noundef %28) #12
  br label %if.end77

if.end77:                                         ; preds = %if.end.i.i, %if.then.i.i, %if.end74
  %conv75.pn = phi i64 [ %conv75, %if.end74 ], [ 1, %if.then.i.i ], [ 1, %if.end.i.i ]
  %chunk_block.1 = add i64 %conv75.pn, %chunk_block.0160
  %cmp = icmp ugt i64 %add, %chunk_block.1
  br i1 %cmp, label %if.end77.while.body_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end77.while.body_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup:                                          ; preds = %if.end77.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %do.end.cleanup_crit_edge ], [ %call37, %if.then36.cleanup_crit_edge ], [ %call50, %if.then49.cleanup_crit_edge ], [ %call71, %if.then61.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_handle_write(ptr noundef %dmz, ptr noundef %zone, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %dmz, i32 0, i32 4
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %shr = lshr i64 %3, 3
  %call = tail call i32 @dmz_zone_nr_blocks(ptr noundef %1) #12
  %sub = add i32 %call, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %shr, %conv
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr2 = lshr i32 %5, 12
  %tobool.not = icmp eq ptr %zone, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_handle_write.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_handle_write, %if.then10)) #12
          to label %do.end [label %if.then10], !srcloc !152

if.then10:                                        ; preds = %do.body
  %call11 = tail call ptr @dmz_metadata_label(ptr noundef %1) #12
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %call14 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %1) #12
  %sh_prom = zext i32 %call14 to i64
  %shr15 = lshr i64 %7, %sh_prom
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %cond.false, label %if.then10.cond.end_crit_edge

if.then10.cond.end_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i59 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i59)
  %tobool20.not = icmp eq i32 %and1.i59, 0
  %cond = select i1 %tobool20.not, ptr @.str.50, ptr @.str.49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then10.cond.end_crit_edge
  %cond21 = phi ptr [ %cond, %cond.false ], [ @.str.48, %if.then10.cond.end_crit_edge ]
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_handle_write.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.52, ptr noundef %call11, i64 noundef %shr15, ptr noundef nonnull %cond21, i32 noundef %14, i64 noundef %and, i32 noundef %shr2) #12
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  %flags23 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %15 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags23, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool25.not = icmp eq i32 %17, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %do.end.if.then32_crit_edge

do.end.if.then32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

lor.lhs.false:                                    ; preds = %do.end
  %18 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags23, align 4
  %and1.i62 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i62)
  %tobool28.not = icmp eq i32 %and1.i62, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 5
  %20 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wp_block, align 4
  %conv30 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv30)
  %cmp = icmp eq i64 %and, %conv30
  br i1 %cmp, label %lor.lhs.false29.if.then32_crit_edge, label %if.end34

lor.lhs.false29.if.then32_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false29.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %do.end.if.then32_crit_edge
  %22 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %metadata, align 4
  %bzone1.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 8
  %24 = ptrtoint ptr %bzone1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bzone1.i, align 4
  %26 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags23, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then32
  %call2.i = tail call fastcc i32 @dmz_submit_bio(ptr noundef %dmz, ptr noundef nonnull %zone, ptr noundef %bio, i64 noundef %and, i32 noundef %shr2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @dmz_validate_blocks(ptr noundef %23, ptr noundef nonnull %zone, i64 noundef %and, i32 noundef %shr2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end5.i
  %tobool7.not.i = icmp eq ptr %25, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then8.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call i32 @dmz_invalidate_blocks(ptr noundef %23, ptr noundef nonnull %25, i64 noundef %and, i32 noundef %shr2) #12
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false29
  %29 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %metadata, align 4
  %call.i = tail call ptr @dmz_get_chunk_buffer(ptr noundef %30, ptr noundef nonnull %zone) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i67

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end.i67:                                       ; preds = %if.end34
  %flags.i65 = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i65, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i66 = icmp eq i32 %34, 0
  br i1 %tobool.not.i66, label %if.end5.i70, label %if.end.i67.cleanup_crit_edge

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i70:                                      ; preds = %if.end.i67
  %call6.i68 = tail call fastcc i32 @dmz_submit_bio(ptr noundef %dmz, ptr noundef %call.i, ptr noundef %bio, i64 noundef %and, i32 noundef %shr2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i68)
  %tobool7.not.i69 = icmp eq i32 %call6.i68, 0
  br i1 %tobool7.not.i69, label %if.end9.i, label %if.end5.i70.cleanup_crit_edge

if.end5.i70.cleanup_crit_edge:                    ; preds = %if.end5.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i70
  %call10.i = tail call i32 @dmz_validate_blocks(ptr noundef %30, ptr noundef %call.i, i64 noundef %and, i32 noundef %shr2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i71 = icmp eq i32 %call10.i, 0
  br i1 %cmp.i71, label %land.lhs.true.i72, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i72:                                ; preds = %if.end9.i
  %35 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wp_block, align 4
  %conv.i = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv.i)
  %cmp11.i = icmp ult i64 %and, %conv.i
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true.i72.cleanup_crit_edge

land.lhs.true.i72.cleanup_crit_edge:              ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13.i:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @dmz_invalidate_blocks(ptr noundef %30, ptr noundef nonnull %zone, i64 noundef %and, i32 noundef %shr2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %land.lhs.true.i72.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end5.i70.cleanup_crit_edge, %if.end.i67.cleanup_crit_edge, %if.then.i, %if.then8.i, %land.lhs.true.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ -30, %if.then32.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call9.i, %if.then8.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %call6.i, %if.end5.i.cleanup_crit_edge ], [ %31, %if.then.i ], [ -30, %if.end.i67.cleanup_crit_edge ], [ %call6.i68, %if.end5.i70.cleanup_crit_edge ], [ %call14.i, %if.then13.i ], [ 0, %land.lhs.true.i72.cleanup_crit_edge ], [ %call10.i, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_handle_discard(ptr nocapture noundef readonly %dmz, ptr noundef %zone, ptr nocapture noundef readonly %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %dmz, i32 0, i32 4
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %shr = lshr i64 %3, 3
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr2 = lshr i32 %5, 12
  %call = tail call i32 @dmz_zone_nr_blocks(ptr noundef %1) #12
  %sub = add i32 %call, -1
  %conv5 = zext i32 %sub to i64
  %and = and i64 %shr, %conv5
  %tobool.not = icmp eq ptr %zone, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_handle_discard.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_handle_discard, %if.then14)) #12
          to label %do.end [label %if.then14], !srcloc !152

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %metadata, align 4
  %call16 = tail call ptr @dmz_metadata_label(ptr noundef %10) #12
  %11 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bi_iter, align 8
  %call19 = tail call i32 @dmz_zone_nr_sectors_shift(ptr noundef %1) #12
  %sh_prom = zext i32 %call19 to i64
  %shr20 = lshr i64 %12, %sh_prom
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_handle_discard.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.54, ptr noundef %call16, i64 noundef %shr20, i32 noundef %14, i64 noundef %and, i32 noundef %shr2) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

lor.lhs.false:                                    ; preds = %do.end
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i67 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i67)
  %tobool27.not = icmp eq i32 %and1.i67, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 5
  %20 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wp_block, align 4
  %conv29 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv29)
  %cmp = icmp ult i64 %and, %conv29
  br i1 %cmp, label %lor.lhs.false28.if.end33_crit_edge, label %lor.lhs.false28.land.lhs.true_crit_edge

lor.lhs.false28.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false28.if.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %call32 = tail call i32 @dmz_invalidate_blocks(ptr noundef %1, ptr noundef nonnull %zone, i64 noundef %and, i32 noundef %shr2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp eq i32 %call32, 0
  br i1 %cmp34, label %if.end33.land.lhs.true_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33.land.lhs.true_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33.land.lhs.true_crit_edge, %lor.lhs.false28.land.lhs.true_crit_edge
  %bzone = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 8
  %22 = ptrtoint ptr %bzone to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bzone, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %land.lhs.true.cleanup_crit_edge, label %if.then37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call i32 @dmz_invalidate_blocks(ptr noundef %1, ptr noundef nonnull %23, i64 noundef %and, i32 noundef %shr2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %land.lhs.true.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -30, %if.end.cleanup_crit_edge ], [ %call39, %if.then37 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call32, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_put_chunk_mapping(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_unlock_metadata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_block_valid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_submit_bio(ptr noundef %dmz, ptr noundef %zone, ptr noundef %bio, i64 noundef %chunk_block, i32 noundef %nr_blocks) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #12
  %dev1 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %flags = getelementptr inbounds %struct.dmz_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bio_set = getelementptr inbounds %struct.dmz_target, ptr %dmz, i32 0, i32 8
  %call2 = tail call ptr @bio_clone_fast(ptr noundef %bio, i32 noundef 3072, ptr noundef %bio_set) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %if.end5.bio_set_dev.exit_crit_edge, label %if.then.i

if.end5.bio_set_dev.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end5.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call2) #12
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %call, align 4
  %metadata = getelementptr inbounds %struct.dmz_target, ptr %dmz, i32 0, i32 4
  %13 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %metadata, align 4
  %call7 = tail call i64 @dmz_start_sect(ptr noundef %14, ptr noundef %zone) #12
  %shl = shl i64 %chunk_block, 3
  %add = add i64 %call7, %shl
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 8
  %15 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add, ptr %bi_iter, align 8
  %shl8 = shl i32 %nr_blocks, 12
  %bi_size = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl8, ptr %bi_size, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 10
  %17 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dmz_clone_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call2, i32 0, i32 11
  %18 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %bi_private, align 4
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shl8)
  %cmp.i = icmp eq i32 %20, %shl8
  br i1 %cmp.i, label %if.then.i43, label %if.end.i

if.then.i43:                                      ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bi_size.i, align 8
  br label %bio_advance.exit

if.end.i:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bio_advance(ptr noundef %bio, i32 noundef %shl8) #12
  br label %bio_advance.exit

bio_advance.exit:                                 ; preds = %if.end.i, %if.then.i43
  %ref = getelementptr inbounds %struct.dmz_bioctx, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !153
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %bio_advance.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !148

bio_advance.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %bio_advance.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %bio_advance.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !150

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %bio_advance.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %bio_advance.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @submit_bio_noacct(ptr noundef nonnull %call2) #12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_opf, align 8
  %and14 = and i32 %25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14)
  %cmp = icmp eq i32 %and14, 1
  br i1 %cmp, label %land.lhs.true, label %refcount_inc.exit.cleanup_crit_edge

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %refcount_inc.exit
  %flags16 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %26 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags16, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not = icmp eq i32 %28, 0
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 5
  %29 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wp_block, align 4
  %add20 = add i32 %30, %nr_blocks
  store i32 %add20, ptr %wp_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %refcount_inc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %refcount_inc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dmz_start_sect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_clone_endio(ptr noundef %clone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  tail call void @bio_put(ptr noundef %clone) #12
  %bio = getelementptr inbounds %struct.dmz_bioctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio, align 4
  tail call fastcc void @dmz_bio_endio(ptr noundef %5, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_advance(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_validate_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_invalidate_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_get_chunk_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_suspend_reclaim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_resume_reclaim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_zones(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_unmap_cache_zones(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_cache_zones(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_unmap_rnd_zones(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_rnd_zones(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_unmap_seq_zones(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_seq_zones(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_schedule_reclaim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_min(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_limits_io_opt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-zoned-target.c", i32 591, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dmz_bdev_is_dying._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dmz_bdev_is_dying._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-zoned-target.c", i32 616, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dmz_check_bdev._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dmz_check_bdev._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_dm_zoned__275_1172_dmz_init6, !12, !"__initcall__kmod_dm_zoned__275_1172_dmz_init6", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-zoned-target.c", i32 1172, i32 1}
!13 = !{ptr @__exitcall_dmz_exit, !14, !"__exitcall_dmz_exit", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-zoned-target.c", i32 1173, i32 1}
!15 = !{ptr @__UNIQUE_ID_description276, !16, !"__UNIQUE_ID_description276", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-zoned-target.c", i32 1175, i32 1}
!17 = !{ptr @__UNIQUE_ID_author277, !18, !"__UNIQUE_ID_author277", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-zoned-target.c", i32 1176, i32 1}
!19 = !{ptr @__UNIQUE_ID_file278, !20, !"__UNIQUE_ID_file278", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-zoned-target.c", i32 1177, i32 1}
!21 = !{ptr @__UNIQUE_ID_license279, !20, !"__UNIQUE_ID_license279", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-zoned-target.c", i32 1146, i32 12}
!24 = !{ptr @dmz_type, !25, !"dmz_type", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-zoned-target.c", i32 1145, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-zoned-target.c", i32 840, i32 15}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-zoned-target.c", i32 847, i32 15}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-zoned-target.c", i32 852, i32 15}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-zoned-target.c", i32 858, i32 15}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-zoned-target.c", i32 880, i32 15}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-zoned-target.c", i32 900, i32 15}
!38 = !{ptr @dmz_ctr.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-zoned-target.c", i32 905, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-zoned-target.c", i32 907, i32 34}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-zoned-target.c", i32 911, i32 15}
!45 = !{ptr @dmz_ctr.__key.15, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-zoned-target.c", i32 917, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dmz_ctr.__key.17, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-zoned-target.c", i32 919, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dmz_ctr.__key.19, !49, !"__key", i1 false, i1 false}
!52 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-zoned-target.c", i32 920, i32 18}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-zoned-target.c", i32 923, i32 15}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-zoned-target.c", i32 933, i32 16}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-zoned-target.c", i32 938, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dmz_ctr._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @dmz_ctr._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-zoned-target.c", i32 701, i32 15}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-zoned-target.c", i32 708, i32 16}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-zoned-target.c", i32 712, i32 16}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-zoned-target.c", i32 716, i32 16}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-zoned-target.c", i32 723, i32 16}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-zoned-target.c", i32 738, i32 15}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-zoned-target.c", i32 781, i32 16}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-zoned-target.c", i32 787, i32 17}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-zoned-target.c", i32 793, i32 17}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-zoned-target.c", i32 805, i32 16}
!84 = !{ptr @xa_init_flags.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-zoned-target.c", i32 513, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dmz_flush_work.__UNIQUE_ID_ddebug272, !88, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-zoned-target.c", i32 639, i32 2}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dmz_map.__UNIQUE_ID_ddebug273, !93, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-zoned-target.c", i32 676, i32 3}
!98 = !{ptr @dmz_map.__UNIQUE_ID_ddebug274, !97, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!99 = !{ptr @dmz_queue_chunk_work.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-zoned-target.c", i32 555, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-zoned-target.c", i32 438, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dmz_handle_bio._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dmz_handle_bio._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-zoned-target.c", i32 186, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dmz_handle_read.__UNIQUE_ID_ddebug267, !108, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!111 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/md/dm-zoned-target.c", i32 329, i32 2}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @dmz_handle_write.__UNIQUE_ID_ddebug270, !115, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/dm-zoned-target.c", i32 374, i32 2}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @dmz_handle_discard.__UNIQUE_ID_ddebug271, !119, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/md/dm-zoned-target.c", i32 1092, i32 3}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-zoned-target.c", i32 1104, i32 4}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-zoned-target.c", i32 1113, i32 3}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/md/dm-zoned-target.c", i32 1114, i32 3}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/dm-zoned-target.c", i32 1118, i32 4}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/md/dm-zoned-target.c", i32 1134, i32 27}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/md/dm-zoned-target.c", i32 1141, i32 3}
!136 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @dmz_message._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @dmz_message._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{!"auto-init"}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{i64 2148333613, i64 2148333893, i64 2148334227, i64 2148334561}
!152 = !{i64 2148308426, i64 2148308431, i64 2148308444, i64 2148308488, i64 2148308522, i64 2148308543}
!153 = !{i64 2148496563, i64 2148496595, i64 2148496624, i64 2148496658, i64 2148496689, i64 2148496712}
!154 = distinct !{!154, !155}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{i64 2148584564}
!157 = !{i64 2148499028, i64 2148499060, i64 2148499089, i64 2148499123, i64 2148499154, i64 2148499177}
!158 = !{i64 2149630534}
!159 = !{i64 2148497498, i64 2148497524, i64 2148497553, i64 2148497587, i64 2148497618, i64 2148497641}
!160 = !{i64 2148495033, i64 2148495059, i64 2148495088, i64 2148495122, i64 2148495153, i64 2148495176}
