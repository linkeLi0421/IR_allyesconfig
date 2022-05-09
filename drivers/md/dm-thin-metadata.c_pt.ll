; ModuleID = '/llk/IR_all_yes/drivers/md/dm-thin-metadata.c_pt.bc'
source_filename = "../drivers/md/dm-thin-metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.dm_pool_metadata = type { %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dm_btree_info, %struct.dm_btree_info, %struct.dm_btree_info, %struct.dm_btree_info, %struct.dm_btree_info, %struct.rw_semaphore, i32, i64, i64, %struct.list_head, i64, i32, i64, ptr, ptr, i64, i8, [128 x i8], [128 x i8] }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.thin_disk_superblock = type <{ i32, i32, i64, [16 x i8], i64, i32, i32, i64, i64, [128 x i8], [128 x i8], i64, i64, i32, i32, i64, i32, i32, i32 }>
%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dm_thin_device = type { %struct.list_head, ptr, i64, i32, i8, i64, i64, i32, i32 }
%struct.disk_device_details = type { i64, i64, i32, i32 }
%struct.dm_thin_lookup_result = type { i64, i8 }

@dm_pool_metadata_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: thin metadata: could not allocate metadata struct\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_pool_metadata_open\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/dm-thin-metadata.c\00", [34 x i8] zeroinitializer }, align 32
@dm_pool_metadata_open._entry_ptr = internal global ptr @dm_pool_metadata_open._entry, section ".printk_index", align 4
@dm_pool_metadata_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pmd->root_lock\00", [16 x i8] zeroinitializer }, align 32
@dm_pool_metadata_open._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014device-mapper: thin metadata: %s: dm_pool_metadata_close() failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@dm_pool_metadata_open._entry_ptr.6 = internal global ptr @dm_pool_metadata_open._entry.4, section ".printk_index", align 4
@dm_pool_metadata_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013device-mapper: thin metadata: attempt to close pmd when %u device(s) are still open\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_pool_metadata_close\00", [41 x i8] zeroinitializer }, align 32
@dm_pool_metadata_close._entry_ptr = internal global ptr @dm_pool_metadata_close._entry, section ".printk_index", align 4
@dm_pool_metadata_close._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014device-mapper: thin metadata: %s: __commit_transaction() failed, error = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@dm_pool_metadata_close._entry_ptr.11 = internal global ptr @dm_pool_metadata_close._entry.9, section ".printk_index", align 4
@dm_pool_set_metadata_transaction_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: thin metadata: mismatched transaction id\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dm_pool_set_metadata_transaction_id\00", [60 x i8] zeroinitializer }, align 32
@dm_pool_set_metadata_transaction_id._entry_ptr = internal global ptr @dm_pool_set_metadata_transaction_id._entry, section ".printk_index", align 4
@dm_pool_metadata_set_needs_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: thin metadata: couldn't lock superblock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dm_pool_metadata_set_needs_check\00", [63 x i8] zeroinitializer }, align 32
@dm_pool_metadata_set_needs_check._entry_ptr = internal global ptr @dm_pool_metadata_set_needs_check._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__create_persistent_data_objects._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 764, ptr null, ptr null }, align 1
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: thin metadata: could not create block manager\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__create_persistent_data_objects\00", [63 x i8] zeroinitializer }, align 32
@__create_persistent_data_objects._entry_ptr = internal global ptr @__create_persistent_data_objects._entry, section ".printk_index", align 4
@__format_metadata._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 600, ptr null, ptr null }, align 1
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: thin metadata: tm_create_with_sm failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__format_metadata\00", [46 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr = internal global ptr @__format_metadata._entry, section ".printk_index", align 4
@__format_metadata._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 606, ptr null, ptr null }, align 1
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: thin metadata: sm_disk_create failed\0A\00", [41 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.22 = internal global ptr @__format_metadata._entry.20, section ".printk_index", align 4
@__format_metadata._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 613, ptr null, ptr null }, align 1
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: thin metadata: could not create non-blocking clone tm\0A\00", [56 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.25 = internal global ptr @__format_metadata._entry.23, section ".printk_index", align 4
@__format_metadata._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 626, ptr null, ptr null }, align 1
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: thin metadata: couldn't create devices root\0A\00", [34 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.28 = internal global ptr @__format_metadata._entry.26, section ".printk_index", align 4
@subtree_dec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: thin metadata: btree delete failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"subtree_dec\00", [20 x i8] zeroinitializer }, align 32
@subtree_dec._entry_ptr = internal global ptr @subtree_dec._entry, section ".printk_index", align 4
@sb_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.31, ptr @sb_prepare_for_write, ptr @sb_check }, [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"superblock\00", [21 x i8] zeroinitializer }, align 32
@sb_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013device-mapper: thin metadata: sb_check failed: blocknr %llu: wanted %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sb_check\00", [23 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr = internal global ptr @sb_check._entry, section ".printk_index", align 4
@sb_check._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: thin metadata: sb_check failed: magic %llu: wanted %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.36 = internal global ptr @sb_check._entry.34, section ".printk_index", align 4
@sb_check._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: thin metadata: sb_check failed: csum %u: wanted %u\0A\00", [59 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.39 = internal global ptr @sb_check._entry.37, section ".printk_index", align 4
@__open_metadata._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 684, ptr null, ptr null }, align 1
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: thin metadata: couldn't read superblock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__open_metadata\00", [16 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr = internal global ptr @__open_metadata._entry, section ".printk_index", align 4
@__open_metadata._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 694, ptr null, ptr null }, align 1
@.str.43 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013device-mapper: thin metadata: changing the data block size (from %u to %llu) is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.44 = internal global ptr @__open_metadata._entry.42, section ".printk_index", align 4
@__open_metadata._entry.45 = internal constant %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 708, ptr null, ptr null }, align 1
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: thin metadata: tm_open_with_sm failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.47 = internal global ptr @__open_metadata._entry.45, section ".printk_index", align 4
@__open_metadata._entry.48 = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 715, ptr null, ptr null }, align 1
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: thin metadata: sm_disk_open failed\0A\00", [43 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.50 = internal global ptr @__open_metadata._entry.48, section ".printk_index", align 4
@__open_metadata._entry.51 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.41, ptr @.str.2, i32 722, ptr null, ptr null }, align 1
@__open_metadata._entry_ptr.52 = internal global ptr @__open_metadata._entry.51, section ".printk_index", align 4
@__check_incompat_features._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 655, ptr null, ptr null }, align 1
@.str.53 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013device-mapper: thin metadata: could not access metadata due to unsupported optional features (%lx).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__check_incompat_features\00", [38 x i8] zeroinitializer }, align 32
@__check_incompat_features._entry_ptr = internal global ptr @__check_incompat_features._entry, section ".printk_index", align 4
@__check_incompat_features._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 668, ptr null, ptr null }, align 1
@.str.56 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013device-mapper: thin metadata: could not access metadata RDWR due to unsupported optional features (%lx).\0A\00", [52 x i8] zeroinitializer }, align 32
@__check_incompat_features._entry_ptr.57 = internal global ptr @__check_incompat_features._entry.55, section ".printk_index", align 4
@__set_metadata_reserve._entry = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 913, ptr null, ptr null }, align 1
@.str.58 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: thin metadata: could not get size of metadata device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__set_metadata_reserve\00", [41 x i8] zeroinitializer }, align 32
@__set_metadata_reserve._entry_ptr = internal global ptr @__set_metadata_reserve._entry, section ".printk_index", align 4
@__commit_transaction._entry = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 868, ptr null, ptr null }, align 1
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: thin metadata: pre-commit callback failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__commit_transaction\00", [43 x i8] zeroinitializer }, align 32
@__commit_transaction._entry_ptr = internal global ptr @__commit_transaction._entry, section ".printk_index", align 4
@__reserve_metadata_snap._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.62, ptr @.str.2, i32 1313, ptr null, ptr null }, align 1
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__reserve_metadata_snap\00", [40 x i8] zeroinitializer }, align 32
@__reserve_metadata_snap._entry_ptr = internal global ptr @__reserve_metadata_snap._entry, section ".printk_index", align 4
@__reserve_metadata_snap._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1332, ptr null, ptr null }, align 1
@.str.64 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\014device-mapper: thin metadata: Pool metadata snapshot already exists: release this before taking another.\0A\00", [52 x i8] zeroinitializer }, align 32
@__reserve_metadata_snap._entry_ptr.65 = internal global ptr @__reserve_metadata_snap._entry.63, section ".printk_index", align 4
@__release_metadata_snap._entry = internal constant %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1399, ptr null, ptr null }, align 1
@.str.66 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014device-mapper: thin metadata: No pool metadata snapshot found: nothing to release.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__release_metadata_snap\00", [40 x i8] zeroinitializer }, align 32
@__release_metadata_snap._entry_ptr = internal global ptr @__release_metadata_snap._entry, section ".printk_index", align 4
@__resize_space_map._entry = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2023, ptr null, ptr null }, align 1
@.str.68 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: thin metadata: cannot reduce size of space map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__resize_space_map\00", [45 x i8] zeroinitializer }, align 32
@__resize_space_map._entry_ptr = internal global ptr @__resize_space_map._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 928, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 932, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 951, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 978, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 987, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1271, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2109, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 764, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 600, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 606, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 613, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 626, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 395, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"sb_validator\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 293, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 294, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 268, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 275, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 285, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 684, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 692, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 708, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 715, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 654, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 667, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 913, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 868, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1312, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1332, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1399, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [33 x i8] c"../drivers/md/dm-thin-metadata.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2023, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__check_incompat_features._entry, ptr @__check_incompat_features._entry.55, ptr @__check_incompat_features._entry_ptr, ptr @__check_incompat_features._entry_ptr.57, ptr @__commit_transaction._entry, ptr @__commit_transaction._entry_ptr, ptr @__create_persistent_data_objects._entry, ptr @__create_persistent_data_objects._entry_ptr, ptr @__format_metadata._entry, ptr @__format_metadata._entry.20, ptr @__format_metadata._entry.23, ptr @__format_metadata._entry.26, ptr @__format_metadata._entry_ptr, ptr @__format_metadata._entry_ptr.22, ptr @__format_metadata._entry_ptr.25, ptr @__format_metadata._entry_ptr.28, ptr @__open_metadata._entry, ptr @__open_metadata._entry.42, ptr @__open_metadata._entry.45, ptr @__open_metadata._entry.48, ptr @__open_metadata._entry.51, ptr @__open_metadata._entry_ptr, ptr @__open_metadata._entry_ptr.44, ptr @__open_metadata._entry_ptr.47, ptr @__open_metadata._entry_ptr.50, ptr @__open_metadata._entry_ptr.52, ptr @__release_metadata_snap._entry, ptr @__release_metadata_snap._entry_ptr, ptr @__reserve_metadata_snap._entry, ptr @__reserve_metadata_snap._entry.63, ptr @__reserve_metadata_snap._entry_ptr, ptr @__reserve_metadata_snap._entry_ptr.65, ptr @__resize_space_map._entry, ptr @__resize_space_map._entry_ptr, ptr @__set_metadata_reserve._entry, ptr @__set_metadata_reserve._entry_ptr, ptr @dm_pool_metadata_close._entry, ptr @dm_pool_metadata_close._entry.9, ptr @dm_pool_metadata_close._entry_ptr, ptr @dm_pool_metadata_close._entry_ptr.11, ptr @dm_pool_metadata_open._entry, ptr @dm_pool_metadata_open._entry.4, ptr @dm_pool_metadata_open._entry_ptr, ptr @dm_pool_metadata_open._entry_ptr.6, ptr @dm_pool_metadata_set_needs_check._entry, ptr @dm_pool_metadata_set_needs_check._entry_ptr, ptr @dm_pool_set_metadata_transaction_id._entry, ptr @dm_pool_set_metadata_transaction_id._entry_ptr, ptr @sb_check._entry, ptr @sb_check._entry.34, ptr @sb_check._entry.37, ptr @sb_check._entry_ptr, ptr @sb_check._entry_ptr.36, ptr @sb_check._entry_ptr.39, ptr @subtree_dec._entry, ptr @subtree_dec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dm_pool_metadata_open.__key, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @sb_validator, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_open._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_close._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_set_metadata_transaction_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pool_metadata_set_needs_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subtree_dec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_pool_metadata_open(ptr noundef %bdev, i64 noundef %data_block_size, i1 noundef zeroext %format_device) local_unnamed_addr #0 align 64 {
entry:
  %total.i = alloca i64, align 8
  %sblock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 600) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 12
  tail call void @__init_rwsem(ptr noundef %root_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @dm_pool_metadata_open.__key) #8
  %time = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 13
  %1 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %time, align 4
  %thin_devices = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 16
  %2 = ptrtoint ptr %thin_devices to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %thin_devices, ptr %thin_devices, align 8
  %prev.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %thin_devices, ptr %prev.i, align 4
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 23
  %4 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %fail_io, align 8
  %bf.clear7 = and i8 %bf.load, 63
  store i8 %bf.clear7, ptr %fail_io, align 8
  %bdev9 = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %bdev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bdev, ptr %bdev9, align 8
  %data_block_size10 = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 19
  %6 = ptrtoint ptr %data_block_size10 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %data_block_size, ptr %data_block_size10, align 8
  %pre_commit_fn = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 20
  %7 = ptrtoint ptr %pre_commit_fn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pre_commit_fn, align 8
  %pre_commit_context = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 21
  %8 = ptrtoint ptr %pre_commit_context to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pre_commit_context, align 4
  %call12 = tail call fastcc i32 @__create_persistent_data_objects(ptr noundef nonnull %call7.i, i1 noundef zeroext %format_device)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  %9 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end16:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #8
  %10 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !142
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bm.i, align 4
  %call.i = call i32 @dm_bm_read_lock(ptr noundef %12, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__begin_transaction.exit.thread, label %__begin_transaction.exit

__begin_transaction.exit.thread:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sblock.i, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %14) #8
  %time.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 6
  %15 = ptrtoint ptr %time.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %time.i, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %time, align 4
  %data_mapping_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 11
  %19 = ptrtoint ptr %data_mapping_root.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %data_mapping_root.i, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 14
  %22 = ptrtoint ptr %root.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %root.i, align 8
  %device_details_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 12
  %23 = ptrtoint ptr %device_details_root.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %device_details_root.i, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24) #8
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 15
  %26 = ptrtoint ptr %details_root.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %details_root.i, align 8
  %trans_id.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 7
  %27 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %trans_id.i, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28) #8
  %trans_id3.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 17
  %30 = ptrtoint ptr %trans_id3.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %trans_id3.i, align 8
  %flags.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %flags.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %flags4.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 18
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %flags4.i, align 8
  %data_block_size.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 13
  %35 = ptrtoint ptr %data_block_size.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data_block_size.i, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %conv.i = zext i32 %37 to i64
  %38 = ptrtoint ptr %data_block_size10 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.i, ptr %data_block_size10, align 8
  %39 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sblock.i, align 4
  call void @dm_bm_unlock(ptr noundef %40) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  br label %if.end29

__begin_transaction.exit:                         ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then18, label %__begin_transaction.exit.if.end29_crit_edge

__begin_transaction.exit.if.end29_crit_edge:      ; preds = %__begin_transaction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then18:                                        ; preds = %__begin_transaction.exit
  %call19 = call i32 @dm_pool_metadata_close(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.then18.if.end27_crit_edge

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.then18.if.end27_crit_edge
  %41 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end29:                                         ; preds = %__begin_transaction.exit.if.end29_crit_edge, %__begin_transaction.exit.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %total.i) #8
  %42 = ptrtoint ptr %total.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %total.i, align 8, !annotation !142
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 3
  %43 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %metadata_sm.i, align 8
  %get_nr_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %get_nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_nr_blocks.i.i, align 4
  %call.i.i = call i32 %46(ptr noundef %44, ptr noundef nonnull %total.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i49 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i49, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %__set_metadata_reserve.exit

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %total.i, align 8
  %div791.i.i.i = lshr i64 %48, 1
  %49 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 3689348814741910323) #13, !srcloc !143
  %50 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 %49) #13, !srcloc !144
  %51 = call i64 @llvm.umin.i64(i64 %50, i64 4096) #8
  br label %__set_metadata_reserve.exit

__set_metadata_reserve.exit:                      ; preds = %if.else.i, %do.end.i
  %.sink.i = phi i64 [ %51, %if.else.i ], [ 4096, %do.end.i ]
  %52 = getelementptr inbounds %struct.dm_pool_metadata, ptr %call7.i, i32 0, i32 22
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %.sink.i, ptr %52, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %total.i) #8
  br label %cleanup

cleanup:                                          ; preds = %__set_metadata_reserve.exit, %if.end27, %if.then14, %do.end
  %retval.0 = phi ptr [ %9, %if.then14 ], [ %41, %if.end27 ], [ %call7.i, %__set_metadata_reserve.exit ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__create_persistent_data_objects(ptr noundef %pmd, i1 noundef zeroext %format_device) unnamed_addr #0 align 64 {
entry:
  %sblock.i.i = alloca ptr, align 4
  %len.i.i.i.i = alloca i32, align 4
  %sblock.i.i.i = alloca ptr, align 4
  %b.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %call = tail call ptr @dm_block_manager_create(ptr noundef %1, i32 noundef 4096, i32 noundef 6) #8
  %bm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i.i) #8
  %6 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %b.i.i, align 4, !annotation !142
  %call.i.i = tail call i32 @dm_bm_block_size(ptr noundef %call) #8
  %div16.i.i = lshr i32 %call.i.i, 3
  %call1.i.i = call i32 @dm_bm_read_lock(ptr noundef %call, i64 noundef 0, ptr noundef null, ptr noundef nonnull %b.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %__superblock_all_zeroes.exit.i

if.end.i.i:                                       ; preds = %if.end
  %7 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b.i.i, align 4
  %call2.i.i = call ptr @dm_block_data(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp17.not.i.i = icmp ult i32 %call.i.i, 8
  br i1 %cmp17.not.i.i, label %if.end.i.i.if.then2.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.if.then2.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div16.i.i, i32 1) #8
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then2.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.then2.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.018.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i64, ptr %call2.i.i, i32 %i.018.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp3.not.i.i = icmp eq i64 %10, 0
  br i1 %cmp3.not.i.i, label %for.cond.i.i, label %if.end5.i

__superblock_all_zeroes.exit.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #8
  br label %if.then9

if.then2.i:                                       ; preds = %for.cond.i.i.if.then2.i_crit_edge, %if.end.i.i.if.then2.i_crit_edge
  %11 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #8
  br i1 %format_device, label %cond.true.i, label %if.then2.i.if.then9_crit_edge

if.then2.i.if.then9_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

cond.true.i:                                      ; preds = %if.then2.i
  %13 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bm, align 4
  %tm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %metadata_sm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %call.i11.i = call i32 @dm_tm_create_with_sm(ptr noundef %14, i64 noundef 0, ptr noundef %tm.i.i, ptr noundef %metadata_sm.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i13.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %if.then9

if.end.i13.i:                                     ; preds = %cond.true.i
  %15 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tm.i.i, align 8
  %call3.i.i = call ptr @dm_sm_disk_create(ptr noundef %16, i64 noundef 0) #8
  %data_sm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %17 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i.i, ptr %data_sm.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end9.i.i, label %if.end14.i.i

do.end9.i.i:                                      ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %18 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_sm.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %bad_cleanup_tm.i.i

if.end14.i.i:                                     ; preds = %if.end.i13.i
  %21 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tm.i.i, align 8
  %call16.i.i = call ptr @dm_tm_create_non_blocking_clone(ptr noundef %22) #8
  %nb_tm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 6
  %23 = ptrtoint ptr %nb_tm.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call16.i.i, ptr %nb_tm.i.i, align 4
  %tobool.not.i14.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool.not.i14.i, label %do.end21.i.i, label %if.end24.i.i

do.end21.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %bad_cleanup_data_sm.i.i

if.end24.i.i:                                     ; preds = %if.end14.i.i
  %24 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tm.i.i, align 8
  %info.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7
  %26 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %info.i.i.i, align 8
  %levels.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %levels.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %levels.i.i.i, align 4
  %28 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_sm.i.i, align 4
  %value_type.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %value_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %value_type.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 1
  %31 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %size.i.i.i, align 4
  %inc.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 2
  %32 = ptrtoint ptr %inc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @data_block_inc, ptr %inc.i.i.i, align 8
  %dec.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 3
  %33 = ptrtoint ptr %dec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @data_block_dec, ptr %dec.i.i.i, align 4
  %equal.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 4
  %34 = ptrtoint ptr %equal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @data_block_equal, ptr %equal.i.i.i, align 8
  %nb_info.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 8
  %35 = call ptr @memcpy(ptr %nb_info.i.i.i, ptr %info.i.i.i, i32 28)
  %36 = ptrtoint ptr %nb_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call16.i.i, ptr %nb_info.i.i.i, align 4
  %tl_info.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9
  %37 = ptrtoint ptr %tl_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %25, ptr %tl_info.i.i.i, align 8
  %levels18.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %levels18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %levels18.i.i.i, align 4
  %bl_info.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10
  %value_type20.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %value_type20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %bl_info.i.i.i, ptr %value_type20.i.i.i, align 8
  %size24.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 1
  %40 = ptrtoint ptr %size24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %size24.i.i.i, align 4
  %inc27.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 2
  %41 = ptrtoint ptr %inc27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @subtree_inc, ptr %inc27.i.i.i, align 8
  %dec30.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 3
  %42 = ptrtoint ptr %dec30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @subtree_dec, ptr %dec30.i.i.i, align 4
  %equal33.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 4
  %43 = ptrtoint ptr %equal33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @subtree_equal, ptr %equal33.i.i.i, align 8
  %44 = ptrtoint ptr %bl_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %25, ptr %bl_info.i.i.i, align 4
  %levels38.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %levels38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %levels38.i.i.i, align 4
  %value_type41.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2
  %46 = ptrtoint ptr %value_type41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %29, ptr %value_type41.i.i.i, align 4
  %size45.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 1
  %47 = ptrtoint ptr %size45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %size45.i.i.i, align 4
  %inc48.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 2
  %48 = ptrtoint ptr %inc48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @data_block_inc, ptr %inc48.i.i.i, align 4
  %dec51.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 3
  %49 = ptrtoint ptr %dec51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @data_block_dec, ptr %dec51.i.i.i, align 4
  %equal54.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 4
  %50 = ptrtoint ptr %equal54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @data_block_equal, ptr %equal54.i.i.i, align 4
  %details_info.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %51 = ptrtoint ptr %details_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %25, ptr %details_info.i.i.i, align 8
  %levels58.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 1
  %52 = ptrtoint ptr %levels58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %levels58.i.i.i, align 4
  %value_type60.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2
  %53 = ptrtoint ptr %value_type60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %value_type60.i.i.i, align 8
  %size64.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 1
  %54 = ptrtoint ptr %size64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 24, ptr %size64.i.i.i, align 4
  %inc67.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 2
  %55 = ptrtoint ptr %inc67.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %inc67.i.i.i, align 8
  %dec70.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 3
  %56 = ptrtoint ptr %dec70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %dec70.i.i.i, align 4
  %equal73.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 4
  %57 = ptrtoint ptr %equal73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %equal73.i.i.i, align 8
  %root.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %call25.i.i = call i32 @dm_btree_empty(ptr noundef %info.i.i.i, ptr noundef %root.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp26.i.i = icmp slt i32 %call25.i.i, 0
  br i1 %cmp26.i.i, label %if.end24.i.i.bad_cleanup_nb_tm.i.i_crit_edge, label %if.end28.i.i

if.end24.i.i.bad_cleanup_nb_tm.i.i_crit_edge:     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad_cleanup_nb_tm.i.i

if.end28.i.i:                                     ; preds = %if.end24.i.i
  %details_root.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %call29.i.i = call i32 @dm_btree_empty(ptr noundef %details_info.i.i.i, ptr noundef %details_root.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp30.i.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %do.end34.i.i, label %if.end37.i.i

do.end34.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %bad_cleanup_nb_tm.i.i

if.end37.i.i:                                     ; preds = %if.end28.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i.i) #8
  %58 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i.i, align 4, !annotation !142
  %59 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bdev, align 8
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  %63 = call i64 @llvm.umin.i64(i64 %62, i64 33292800) #8
  %64 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data_sm.i.i, align 4
  %commit.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %commit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %commit.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %67(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end37.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, label %if.end4.i.i.i

if.end37.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_initial_superblock.exit.thread.i.i

if.end4.i.i.i:                                    ; preds = %if.end37.i.i
  %68 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tm.i.i, align 8
  %call5.i.i.i = call i32 @dm_tm_pre_commit(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end4.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, label %if.end8.i.i.i

if.end4.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_initial_superblock.exit.thread.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i.i.i) #8
  %70 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %len.i.i.i.i, align 4, !annotation !142
  %71 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %metadata_sm.i.i, align 8
  %root_size.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %root_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %root_size.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %74(ptr noundef %72, ptr noundef nonnull %len.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end8.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end8.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i.i
  %75 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %metadata_sm.i.i, align 8
  %metadata_space_map_root.i.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 25
  %77 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i.i.i.i, align 4
  %copy_root.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %76, i32 0, i32 12
  %79 = ptrtoint ptr %copy_root.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %copy_root.i.i.i.i.i, align 4
  %call.i23.i.i.i.i = call i32 %80(ptr noundef %76, ptr noundef %metadata_space_map_root.i.i.i.i, i32 noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i23.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge, label %if.end5.i.i.i.i

if.end.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %81 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_sm.i.i, align 4
  %root_size.i24.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %root_size.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %root_size.i24.i.i.i.i, align 4
  %call.i25.i.i.i.i = call i32 %84(ptr noundef %82, ptr noundef nonnull %len.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i.i.i.i)
  %cmp7.i.i.i.i = icmp slt i32 %call.i25.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %if.end5.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge, label %save_sm_roots.exit.i.i.i

if.end5.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread.i.i.i

save_sm_roots.exit.thread.i.i.i:                  ; preds = %if.end5.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge, %if.end.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge, %if.end8.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ %call.i25.i.i.i.i, %if.end5.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge ], [ %call.i23.i.i.i.i, %if.end.i.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge ], [ %call.i.i.i.i.i, %if.end8.i.i.i.save_sm_roots.exit.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i.i.i) #8
  br label %__write_initial_superblock.exit.thread.i.i

save_sm_roots.exit.i.i.i:                         ; preds = %if.end5.i.i.i.i
  %85 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data_sm.i.i, align 4
  %data_space_map_root.i.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 24
  %87 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i.i.i, align 4
  %copy_root.i26.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %86, i32 0, i32 12
  %89 = ptrtoint ptr %copy_root.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %copy_root.i26.i.i.i.i, align 4
  %call.i27.i.i.i.i = call i32 %90(ptr noundef %86, ptr noundef %data_space_map_root.i.i.i.i, i32 noundef %88) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i.i.i.i)
  %cmp10.i.i.i = icmp slt i32 %call.i27.i.i.i.i, 0
  br i1 %cmp10.i.i.i, label %save_sm_roots.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, label %if.end12.i.i.i

save_sm_roots.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %save_sm_roots.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_initial_superblock.exit.thread.i.i

if.end12.i.i.i:                                   ; preds = %save_sm_roots.exit.i.i.i
  %91 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bm, align 4
  %call.i52.i.i.i = call i32 @dm_bm_write_lock_zero(ptr noundef %92, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i52.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__write_initial_superblock.exit.i.i, label %if.end12.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge

if.end12.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_initial_superblock.exit.thread.i.i

__write_initial_superblock.exit.thread.i.i:       ; preds = %if.end12.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, %save_sm_roots.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, %save_sm_roots.exit.thread.i.i.i, %if.end4.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, %if.end37.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %retval.0.i.ph.i.i.i, %save_sm_roots.exit.thread.i.i.i ], [ %call.i52.i.i.i, %if.end12.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ], [ %call.i27.i.i.i.i, %save_sm_roots.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ], [ %call5.i.i.i, %if.end4.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ], [ %call.i.i.i.i, %if.end37.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #8
  br label %bad_cleanup_nb_tm.i.i

__write_initial_superblock.exit.i.i:              ; preds = %if.end12.i.i.i
  %93 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sblock.i.i.i, align 4
  %call16.i.i.i = call ptr @dm_block_data(ptr noundef %94) #8
  %flags.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 0, ptr %flags.i.i.i, align 1
  %uuid.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 3
  %96 = call ptr @memset(ptr %uuid.i.i.i, i32 0, i32 16)
  %magic.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 -5020779106455781376, ptr %magic.i.i.i, align 1
  %version.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 33554432, ptr %version.i.i.i, align 1
  %time.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 6
  %metadata_space_map_root.i53.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 10
  %99 = call ptr @memset(ptr %time.i.i.i, i32 0, i32 20)
  %100 = call ptr @memcpy(ptr %metadata_space_map_root.i53.i.i.i, ptr %metadata_space_map_root.i.i.i.i, i32 128)
  %data_space_map_root.i54.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 9
  %101 = call ptr @memcpy(ptr %data_space_map_root.i54.i.i.i, ptr %data_space_map_root.i.i.i.i, i32 128)
  %102 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %root.i.i, align 8
  %104 = call i64 @llvm.bswap.i64(i64 %103) #8
  %data_mapping_root.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 11
  %105 = ptrtoint ptr %data_mapping_root.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 %104, ptr %data_mapping_root.i.i.i, align 1
  %106 = ptrtoint ptr %details_root.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %details_root.i.i, align 8
  %108 = call i64 @llvm.bswap.i64(i64 %107) #8
  %device_details_root.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 12
  %109 = ptrtoint ptr %device_details_root.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 %108, ptr %device_details_root.i.i.i, align 1
  %metadata_block_size.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 14
  %110 = ptrtoint ptr %metadata_block_size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 134217728, ptr %metadata_block_size.i.i.i, align 1
  %shr.i.i.i = lshr i64 %63, 3
  %111 = call i64 @llvm.bswap.i64(i64 %shr.i.i.i) #8
  %metadata_nr_blocks.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 15
  %112 = ptrtoint ptr %metadata_nr_blocks.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 %111, ptr %metadata_nr_blocks.i.i.i, align 1
  %data_block_size.i.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 19
  %113 = ptrtoint ptr %data_block_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %data_block_size.i.i.i, align 8
  %conv.i.i.i = trunc i64 %114 to i32
  %115 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #8
  %data_block_size17.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call16.i.i.i, i32 0, i32 13
  %116 = ptrtoint ptr %data_block_size17.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %115, ptr %data_block_size17.i.i.i, align 1
  %117 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tm.i.i, align 8
  %119 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sblock.i.i.i, align 4
  %call19.i.i.i = call i32 @dm_tm_commit(ptr noundef %118, ptr noundef %120) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool39.not.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool39.not.i.i, label %__write_initial_superblock.exit.i.i.cleanup_crit_edge, label %__write_initial_superblock.exit.i.i.bad_cleanup_nb_tm.i.i_crit_edge

__write_initial_superblock.exit.i.i.bad_cleanup_nb_tm.i.i_crit_edge: ; preds = %__write_initial_superblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad_cleanup_nb_tm.i.i

__write_initial_superblock.exit.i.i.cleanup_crit_edge: ; preds = %__write_initial_superblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bad_cleanup_nb_tm.i.i:                            ; preds = %__write_initial_superblock.exit.i.i.bad_cleanup_nb_tm.i.i_crit_edge, %__write_initial_superblock.exit.thread.i.i, %do.end34.i.i, %if.end24.i.i.bad_cleanup_nb_tm.i.i_crit_edge
  %r.0.i.i = phi i32 [ %call25.i.i, %if.end24.i.i.bad_cleanup_nb_tm.i.i_crit_edge ], [ %call29.i.i, %do.end34.i.i ], [ %call19.i.i.i, %__write_initial_superblock.exit.i.i.bad_cleanup_nb_tm.i.i_crit_edge ], [ %retval.0.i.ph.i.i, %__write_initial_superblock.exit.thread.i.i ]
  %121 = ptrtoint ptr %nb_tm.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nb_tm.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %122) #8
  br label %bad_cleanup_data_sm.i.i

bad_cleanup_data_sm.i.i:                          ; preds = %bad_cleanup_nb_tm.i.i, %do.end21.i.i
  %r.1.i.i = phi i32 [ %r.0.i.i, %bad_cleanup_nb_tm.i.i ], [ -12, %do.end21.i.i ]
  %123 = ptrtoint ptr %data_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data_sm.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  call void %126(ptr noundef %124) #8
  br label %bad_cleanup_tm.i.i

bad_cleanup_tm.i.i:                               ; preds = %bad_cleanup_data_sm.i.i, %do.end9.i.i
  %r.2.i.i = phi i32 [ %20, %do.end9.i.i ], [ %r.1.i.i, %bad_cleanup_data_sm.i.i ]
  %127 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tm.i.i, align 8
  call void @dm_tm_destroy(ptr noundef %128) #8
  %129 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %metadata_sm.i.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  call void %132(ptr noundef %130) #8
  br label %__open_or_format_metadata.exit

if.end5.i:                                        ; preds = %for.body.i.i
  %133 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %b.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %134) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i) #8
  %135 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i, align 4, !annotation !142
  %136 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bm, align 4
  %call.i17.i = call i32 @dm_bm_read_lock(ptr noundef %137, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i18.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i18.i, label %do.end.i20.i, label %if.end.i22.i

do.end.i20.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %__open_metadata.exit.i

if.end.i22.i:                                     ; preds = %if.end5.i
  %138 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sblock.i.i, align 4
  %call2.i21.i = call ptr @dm_block_data(ptr noundef %139) #8
  %data_block_size.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call2.i21.i, i32 0, i32 13
  %140 = ptrtoint ptr %data_block_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %data_block_size.i.i, align 1
  %142 = call i32 @llvm.bswap.i32(i32 %141) #8
  %conv.i.i = zext i32 %142 to i64
  %data_block_size3.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 19
  %143 = ptrtoint ptr %data_block_size3.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %data_block_size3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %144, i64 %conv.i.i)
  %cmp4.not.i.i = icmp eq i64 %144, %conv.i.i
  br i1 %cmp4.not.i.i, label %if.end14.i25.i, label %do.end9.i23.i

do.end9.i23.i:                                    ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %142, i64 noundef %144) #12
  br label %bad_unlock_sblock.i.i

if.end14.i25.i:                                   ; preds = %if.end.i22.i
  %incompat_flags.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call2.i21.i, i32 0, i32 18
  %145 = ptrtoint ptr %incompat_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %incompat_flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i.i24.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i.i24.i, label %if.end.i.i.i, label %if.end14.i25.i.__check_incompat_features.exit.i.i_crit_edge

if.end14.i25.i.__check_incompat_features.exit.i.i_crit_edge: ; preds = %if.end14.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_incompat_features.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end14.i25.i
  %147 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bdev, align 8
  %bd_read_only.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %bd_read_only.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bd_read_only.i.i.i.i, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i.i.i.i = icmp eq i8 %150, 0
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i, label %if.end.i.i.i.if.end19.i.i_crit_edge

if.end.i.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %bd_disk.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %148, i32 0, i32 17
  %151 = ptrtoint ptr %bd_disk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bd_disk.i.i.i.i, align 8
  %part0.i.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %152, i32 0, i32 7
  %153 = ptrtoint ptr %part0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %part0.i.i.i.i.i, align 4
  %bd_read_only.i.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %bd_read_only.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bd_read_only.i.i.i.i.i, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i.i.i.i.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i.i.i.i.i, label %bdev_read_only.exit.i.i.i, label %lor.rhs.i.i.i.i.if.end19.i.i_crit_edge

lor.rhs.i.i.i.i.if.end19.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

bdev_read_only.exit.i.i.i:                        ; preds = %lor.rhs.i.i.i.i
  %state.i.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %152, i32 0, i32 12
  %157 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %state.i.i.i.i.i, align 4
  %159 = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool2.not.i.i.i = icmp eq i32 %159, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i27.i, label %bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge

bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge: ; preds = %bdev_read_only.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.end4.i.i27.i:                                  ; preds = %bdev_read_only.exit.i.i.i
  %compat_ro_flags.i.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call2.i21.i, i32 0, i32 17
  %160 = ptrtoint ptr %compat_ro_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %compat_ro_flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool6.not.i.i.i = icmp eq i32 %161, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i27.i.if.end19.i.i_crit_edge, label %if.end4.i.i27.i.__check_incompat_features.exit.i.i_crit_edge

if.end4.i.i27.i.__check_incompat_features.exit.i.i_crit_edge: ; preds = %if.end4.i.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__check_incompat_features.exit.i.i

if.end4.i.i27.i.if.end19.i.i_crit_edge:           ; preds = %if.end4.i.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

__check_incompat_features.exit.i.i:               ; preds = %if.end4.i.i27.i.__check_incompat_features.exit.i.i_crit_edge, %if.end14.i25.i.__check_incompat_features.exit.i.i_crit_edge
  %.sink20.i.i.i = phi i32 [ %146, %if.end14.i25.i.__check_incompat_features.exit.i.i_crit_edge ], [ %161, %if.end4.i.i27.i.__check_incompat_features.exit.i.i_crit_edge ]
  %.str.56.sink.i.i.i = phi ptr [ @.str.53, %if.end14.i25.i.__check_incompat_features.exit.i.i_crit_edge ], [ @.str.56, %if.end4.i.i27.i.__check_incompat_features.exit.i.i_crit_edge ]
  %162 = call i32 @llvm.bswap.i32(i32 %.sink20.i.i.i) #8
  %call12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.56.sink.i.i.i, i32 noundef %162) #12
  br label %bad_unlock_sblock.i.i

if.end19.i.i:                                     ; preds = %if.end4.i.i27.i.if.end19.i.i_crit_edge, %bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge, %lor.rhs.i.i.i.i.if.end19.i.i_crit_edge, %if.end.i.i.i.if.end19.i.i_crit_edge
  %163 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bm, align 4
  %metadata_space_map_root.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call2.i21.i, i32 0, i32 10
  %tm.i28.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %metadata_sm.i29.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %call21.i.i = call i32 @dm_tm_open_with_sm(ptr noundef %164, i64 noundef 0, ptr noundef %metadata_space_map_root.i.i, i32 noundef 128, ptr noundef %tm.i28.i, ptr noundef %metadata_sm.i29.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %do.end27.i.i, label %if.end30.i.i

do.end27.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %bad_unlock_sblock.i.i

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %165 = ptrtoint ptr %tm.i28.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tm.i28.i, align 8
  %data_space_map_root.i.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call2.i21.i, i32 0, i32 9
  %call33.i.i = call ptr @dm_sm_disk_open(ptr noundef %166, ptr noundef %data_space_map_root.i.i, i32 noundef 128) #8
  %data_sm.i31.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %167 = ptrtoint ptr %data_sm.i31.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call33.i.i, ptr %data_sm.i31.i, align 4
  %cmp.i.i32.i = icmp ugt ptr %call33.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i32.i, label %do.end39.i.i, label %if.end44.i.i

do.end39.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  %168 = ptrtoint ptr %data_sm.i31.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data_sm.i31.i, align 4
  %170 = ptrtoint ptr %169 to i32
  br label %bad_cleanup_tm.i65.i

if.end44.i.i:                                     ; preds = %if.end30.i.i
  %171 = ptrtoint ptr %tm.i28.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tm.i28.i, align 8
  %call46.i.i = call ptr @dm_tm_create_non_blocking_clone(ptr noundef %172) #8
  %nb_tm.i33.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 6
  %173 = ptrtoint ptr %nb_tm.i33.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call46.i.i, ptr %nb_tm.i33.i, align 4
  %tobool.not.i34.i = icmp eq ptr %call46.i.i, null
  br i1 %tobool.not.i34.i, label %do.end51.i.i, label %if.end54.i.i

do.end51.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %174 = ptrtoint ptr %data_sm.i31.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data_sm.i31.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  call void %177(ptr noundef %175) #8
  br label %bad_cleanup_tm.i65.i

if.end54.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %tm.i28.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tm.i28.i, align 8
  %info.i.i35.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7
  %180 = ptrtoint ptr %info.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %info.i.i35.i, align 8
  %levels.i.i36.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 1
  %181 = ptrtoint ptr %levels.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 2, ptr %levels.i.i36.i, align 4
  %182 = ptrtoint ptr %data_sm.i31.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data_sm.i31.i, align 4
  %value_type.i.i37.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2
  %184 = ptrtoint ptr %value_type.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %value_type.i.i37.i, align 8
  %size.i.i38.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 1
  %185 = ptrtoint ptr %size.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 8, ptr %size.i.i38.i, align 4
  %inc.i.i39.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 2
  %186 = ptrtoint ptr %inc.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @data_block_inc, ptr %inc.i.i39.i, align 8
  %dec.i.i40.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 3
  %187 = ptrtoint ptr %dec.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @data_block_dec, ptr %dec.i.i40.i, align 4
  %equal.i.i41.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7, i32 2, i32 4
  %188 = ptrtoint ptr %equal.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @data_block_equal, ptr %equal.i.i41.i, align 8
  %nb_info.i.i42.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 8
  %189 = call ptr @memcpy(ptr %nb_info.i.i42.i, ptr %info.i.i35.i, i32 28)
  %190 = ptrtoint ptr %nb_info.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call46.i.i, ptr %nb_info.i.i42.i, align 4
  %tl_info.i.i43.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9
  %191 = ptrtoint ptr %tl_info.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %179, ptr %tl_info.i.i43.i, align 8
  %levels18.i.i44.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 1
  %192 = ptrtoint ptr %levels18.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %levels18.i.i44.i, align 4
  %bl_info.i.i45.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10
  %value_type20.i.i46.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2
  %193 = ptrtoint ptr %value_type20.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %bl_info.i.i45.i, ptr %value_type20.i.i46.i, align 8
  %size24.i.i47.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 1
  %194 = ptrtoint ptr %size24.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 8, ptr %size24.i.i47.i, align 4
  %inc27.i.i48.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 2
  %195 = ptrtoint ptr %inc27.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @subtree_inc, ptr %inc27.i.i48.i, align 8
  %dec30.i.i49.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 3
  %196 = ptrtoint ptr %dec30.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @subtree_dec, ptr %dec30.i.i49.i, align 4
  %equal33.i.i50.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9, i32 2, i32 4
  %197 = ptrtoint ptr %equal33.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @subtree_equal, ptr %equal33.i.i50.i, align 8
  %198 = ptrtoint ptr %bl_info.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %179, ptr %bl_info.i.i45.i, align 4
  %levels38.i.i51.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 1
  %199 = ptrtoint ptr %levels38.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %levels38.i.i51.i, align 4
  %value_type41.i.i52.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2
  %200 = ptrtoint ptr %value_type41.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %183, ptr %value_type41.i.i52.i, align 4
  %size45.i.i53.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 1
  %201 = ptrtoint ptr %size45.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 8, ptr %size45.i.i53.i, align 4
  %inc48.i.i54.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 2
  %202 = ptrtoint ptr %inc48.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @data_block_inc, ptr %inc48.i.i54.i, align 4
  %dec51.i.i55.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 3
  %203 = ptrtoint ptr %dec51.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @data_block_dec, ptr %dec51.i.i55.i, align 4
  %equal54.i.i56.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10, i32 2, i32 4
  %204 = ptrtoint ptr %equal54.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @data_block_equal, ptr %equal54.i.i56.i, align 4
  %details_info.i.i57.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %205 = ptrtoint ptr %details_info.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %179, ptr %details_info.i.i57.i, align 8
  %levels58.i.i58.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 1
  %206 = ptrtoint ptr %levels58.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %levels58.i.i58.i, align 4
  %value_type60.i.i59.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2
  %207 = ptrtoint ptr %value_type60.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %value_type60.i.i59.i, align 8
  %size64.i.i60.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 1
  %208 = ptrtoint ptr %size64.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 24, ptr %size64.i.i60.i, align 4
  %inc67.i.i61.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 2
  %209 = ptrtoint ptr %inc67.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %inc67.i.i61.i, align 8
  %dec70.i.i62.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 3
  %210 = ptrtoint ptr %dec70.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %dec70.i.i62.i, align 4
  %equal73.i.i63.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11, i32 2, i32 4
  %211 = ptrtoint ptr %equal73.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %equal73.i.i63.i, align 8
  %212 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %213) #8
  br label %__open_metadata.exit.i

bad_cleanup_tm.i65.i:                             ; preds = %do.end51.i.i, %do.end39.i.i
  %r.0.i64.i = phi i32 [ %170, %do.end39.i.i ], [ -12, %do.end51.i.i ]
  %214 = ptrtoint ptr %tm.i28.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %tm.i28.i, align 8
  call void @dm_tm_destroy(ptr noundef %215) #8
  %216 = ptrtoint ptr %metadata_sm.i29.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %metadata_sm.i29.i, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  call void %219(ptr noundef %217) #8
  br label %bad_unlock_sblock.i.i

bad_unlock_sblock.i.i:                            ; preds = %bad_cleanup_tm.i65.i, %do.end27.i.i, %__check_incompat_features.exit.i.i, %do.end9.i23.i
  %r.1.i66.i = phi i32 [ -22, %do.end9.i23.i ], [ -22, %__check_incompat_features.exit.i.i ], [ %call21.i.i, %do.end27.i.i ], [ %r.0.i64.i, %bad_cleanup_tm.i65.i ]
  %220 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %221) #8
  br label %__open_metadata.exit.i

__open_metadata.exit.i:                           ; preds = %bad_unlock_sblock.i.i, %if.end54.i.i, %do.end.i20.i
  %retval.0.i67.i = phi i32 [ %call.i17.i, %do.end.i20.i ], [ %r.1.i66.i, %bad_unlock_sblock.i.i ], [ 0, %if.end54.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #8
  br label %__open_or_format_metadata.exit

__open_or_format_metadata.exit:                   ; preds = %__open_metadata.exit.i, %bad_cleanup_tm.i.i
  %retval.0.i = phi i32 [ %retval.0.i67.i, %__open_metadata.exit.i ], [ %r.2.i.i, %bad_cleanup_tm.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %__open_or_format_metadata.exit.cleanup_crit_edge, label %__open_or_format_metadata.exit.if.then9_crit_edge

__open_or_format_metadata.exit.if.then9_crit_edge: ; preds = %__open_or_format_metadata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

__open_or_format_metadata.exit.cleanup_crit_edge: ; preds = %__open_or_format_metadata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %__open_or_format_metadata.exit.if.then9_crit_edge, %do.end.i.i, %if.then2.i.if.then9_crit_edge, %__superblock_all_zeroes.exit.i
  %retval.0.i24 = phi i32 [ %retval.0.i, %__open_or_format_metadata.exit.if.then9_crit_edge ], [ %call.i11.i, %do.end.i.i ], [ -1, %if.then2.i.if.then9_crit_edge ], [ %call1.i.i, %__superblock_all_zeroes.exit.i ]
  %222 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bm, align 4
  call void @dm_block_manager_destroy(ptr noundef %223) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %do.end
  %retval.0.ph = phi i32 [ %retval.0.i24, %if.then9 ], [ %5, %do.end ]
  %224 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %bm, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %__open_or_format_metadata.exit.cleanup_crit_edge, %__write_initial_superblock.exit.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__open_or_format_metadata.exit.cleanup_crit_edge ], [ 0, %__write_initial_superblock.exit.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_metadata_close(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %thin_devices = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 16
  %0 = ptrtoint ptr %thin_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thin_devices, align 8
  %cmp.not61 = icmp eq ptr %1, %thin_devices
  br i1 %cmp.not61, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %root_lock) #8
  br label %if.end18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %open_devices.064 = phi i32 [ %open_devices.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %td.062 = phi ptr [ %tmp.065, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %td.062 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.065 = load ptr, ptr %td.062, align 8
  %open_count = getelementptr inbounds %struct.dm_thin_device, ptr %td.062, i32 0, i32 3
  %3 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %open_devices.064, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %td.062) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %td.062, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %td.062 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td.062, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %11 = ptrtoint ptr %td.062 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %td.062, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %td.062, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %td.062) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then
  %open_devices.1 = phi i32 [ %inc, %if.then ], [ %open_devices.064, %list_del.exit ]
  %cmp.not = icmp eq ptr %tmp.065, %thin_devices
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @up_read(ptr noundef %root_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open_devices.1)
  %tobool15.not = icmp eq i32 %open_devices.1, 0
  br i1 %tobool15.not, label %for.end.if.end18_crit_edge, label %do.end

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %open_devices.1) #12
  br label %cleanup

if.end18:                                         ; preds = %for.end.if.end18_crit_edge, %for.end.thread
  tail call void @down_write(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %13 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.lhs.true, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end18
  %bm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %14 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bm, align 4
  %call19 = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %15) #8
  br i1 %call19, label %land.lhs.true.if.end30_crit_edge, label %if.then20

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then20:                                        ; preds = %land.lhs.true
  %call21 = tail call fastcc i32 @__commit_transaction(ptr noundef %pmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %call21) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.then20.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  tail call void @up_write(ptr noundef %root_lock) #8
  %16 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load32 = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32)
  %bf.cast34.not = icmp sgt i8 %bf.load32, -1
  br i1 %bf.cast34.not, label %if.then35, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %data_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %17 = ptrtoint ptr %data_sm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_sm.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %18) #8
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %21 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metadata_sm.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void %24(ptr noundef %22) #8
  %nb_tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 6
  %25 = ptrtoint ptr %nb_tm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nb_tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %26) #8
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %27 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tm.i, align 8
  tail call void @dm_tm_destroy(ptr noundef %28) #8
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %29 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %30) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  tail call void @kfree(ptr noundef %pmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_bm_is_read_only(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__commit_transaction(ptr noundef %pmd) unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %details.i = alloca %struct.disk_device_details, align 8
  %key.i = alloca i64, align 8
  %sblock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock) #8
  %0 = ptrtoint ptr %sblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock, align 4, !annotation !142
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %root_lock, i32 noundef 4) #8
  %1 = ptrtoint ptr %root_lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %root_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 0
  br i1 %cmp.i.not, label %do.body5, label %do.end12, !prof !146

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-thin-metadata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 860, 0\0A.popsection", ""() #8, !srcloc !147
  unreachable

do.end12:                                         ; preds = %entry
  %in_service = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %3 = ptrtoint ptr %in_service to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %in_service, align 8
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  br i1 %bf.cast.not, label %do.end12.cleanup_crit_edge, label %if.end22, !prof !146

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %do.end12
  %pre_commit_fn = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 20
  %5 = ptrtoint ptr %pre_commit_fn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pre_commit_fn, align 8
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %if.end22.if.end33_crit_edge, label %if.then24

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then24:                                        ; preds = %if.end22
  %pre_commit_context = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 21
  %7 = ptrtoint ptr %pre_commit_context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pre_commit_context, align 4
  %call26 = tail call i32 %6(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.then24.if.end33_crit_edge

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %cleanup

if.end33:                                         ; preds = %if.then24.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %details.i) #8
  %9 = getelementptr inbounds %struct.disk_device_details, ptr %details.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.disk_device_details, ptr %details.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.disk_device_details, ptr %details.i, i32 0, i32 3
  %12 = call ptr @memset(ptr %details.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #8
  %13 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %key.i, align 8, !annotation !142
  %thin_devices.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 16
  %14 = ptrtoint ptr %thin_devices.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thin_devices.i, align 8
  %cmp.not48.i = icmp eq ptr %15, %thin_devices.i
  br i1 %cmp.not48.i, label %if.end33.__write_changed_details.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end33.__write_changed_details.exit.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_changed_details.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end33
  %details_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %td.049.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %tmp.051.i, %for.inc.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %td.049.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.051.i = load ptr, ptr %td.049.i, align 8
  %changed.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 4
  %17 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 2
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %id.i, align 8
  %20 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %key.i, align 8
  %mapped_blocks.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 5
  %21 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mapped_blocks.i, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #8
  %24 = ptrtoint ptr %details.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %details.i, align 8
  %transaction_id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 6
  %25 = ptrtoint ptr %transaction_id.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %transaction_id.i, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26) #8
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %9, align 8
  %creation_time.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 7
  %29 = ptrtoint ptr %creation_time.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %creation_time.i, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %10, align 8
  %snapshotted_time.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 8
  %33 = ptrtoint ptr %snapshotted_time.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %snapshotted_time.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %11, align 4
  %37 = ptrtoint ptr %details_root.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %details_root.i, align 8
  %call.i = call i32 @dm_btree_insert(ptr noundef %details_info.i, i64 noundef %38, ptr noundef nonnull %key.i, ptr noundef nonnull %details.i, ptr noundef %details_root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %__write_changed_details.exit

if.end14.i:                                       ; preds = %if.end.i
  %open_count.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.049.i, i32 0, i32 3
  %39 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %open_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not.i = icmp eq i32 %40, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load18.i = load i8, ptr %changed.i, align 4
  %bf.clear.i = and i8 %bf.load18.i, 127
  store i8 %bf.clear.i, ptr %changed.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end14.i
  %call.i.i.i94 = call zeroext i1 @__list_del_entry_valid(ptr noundef %td.049.i) #8
  br i1 %call.i.i.i94, label %if.end.i.i.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %td.049.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %td.049.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %td.049.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_del.exit.i_crit_edge
  %48 = ptrtoint ptr %td.049.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %td.049.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %td.049.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %td.049.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %if.then16.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.051.i, %thin_devices.i
  br i1 %cmp.not.i, label %for.inc.i.__write_changed_details.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.__write_changed_details.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__write_changed_details.exit.thread

__write_changed_details.exit.thread:              ; preds = %for.inc.i.__write_changed_details.exit.thread_crit_edge, %if.end33.__write_changed_details.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %details.i) #8
  br label %if.end37

__write_changed_details.exit:                     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %details.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %__write_changed_details.exit.cleanup_crit_edge, label %__write_changed_details.exit.if.end37_crit_edge

__write_changed_details.exit.if.end37_crit_edge:  ; preds = %__write_changed_details.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

__write_changed_details.exit.cleanup_crit_edge:   ; preds = %__write_changed_details.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %__write_changed_details.exit.if.end37_crit_edge, %__write_changed_details.exit.thread
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %50 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data_sm, align 4
  %commit.i = getelementptr inbounds %struct.dm_space_map, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %commit.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %commit.i, align 4
  %call.i95 = call i32 %53(ptr noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp39 = icmp slt i32 %call.i95, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %tm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %54 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tm, align 8
  %call42 = call i32 @dm_tm_pre_commit(ptr noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %len.i, align 4, !annotation !142
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %57 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %metadata_sm.i, align 8
  %root_size.i.i = getelementptr inbounds %struct.dm_space_map, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %root_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %root_size.i.i, align 4
  %call.i.i = call i32 %60(ptr noundef %58, ptr noundef nonnull %len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i96 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i96, label %if.end45.save_sm_roots.exit.thread_crit_edge, label %if.end.i97

if.end45.save_sm_roots.exit.thread_crit_edge:     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread

if.end.i97:                                       ; preds = %if.end45
  %61 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %metadata_sm.i, align 8
  %metadata_space_map_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 25
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i, align 4
  %copy_root.i.i = getelementptr inbounds %struct.dm_space_map, ptr %62, i32 0, i32 12
  %65 = ptrtoint ptr %copy_root.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %copy_root.i.i, align 4
  %call.i23.i = call i32 %66(ptr noundef %62, ptr noundef %metadata_space_map_root.i, i32 noundef %64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp3.i = icmp slt i32 %call.i23.i, 0
  br i1 %cmp3.i, label %if.end.i97.save_sm_roots.exit.thread_crit_edge, label %if.end5.i

if.end.i97.save_sm_roots.exit.thread_crit_edge:   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread

if.end5.i:                                        ; preds = %if.end.i97
  %67 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data_sm, align 4
  %root_size.i24.i = getelementptr inbounds %struct.dm_space_map, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %root_size.i24.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %root_size.i24.i, align 4
  %call.i25.i = call i32 %70(ptr noundef %68, ptr noundef nonnull %len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp7.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp7.i, label %if.end5.i.save_sm_roots.exit.thread_crit_edge, label %save_sm_roots.exit

if.end5.i.save_sm_roots.exit.thread_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %save_sm_roots.exit.thread

save_sm_roots.exit.thread:                        ; preds = %if.end5.i.save_sm_roots.exit.thread_crit_edge, %if.end.i97.save_sm_roots.exit.thread_crit_edge, %if.end45.save_sm_roots.exit.thread_crit_edge
  %retval.0.i98.ph = phi i32 [ %call.i25.i, %if.end5.i.save_sm_roots.exit.thread_crit_edge ], [ %call.i23.i, %if.end.i97.save_sm_roots.exit.thread_crit_edge ], [ %call.i.i, %if.end45.save_sm_roots.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %cleanup

save_sm_roots.exit:                               ; preds = %if.end5.i
  %71 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data_sm, align 4
  %data_space_map_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 24
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  %copy_root.i26.i = getelementptr inbounds %struct.dm_space_map, ptr %72, i32 0, i32 12
  %75 = ptrtoint ptr %copy_root.i26.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %copy_root.i26.i, align 4
  %call.i27.i = call i32 %76(ptr noundef %72, ptr noundef %data_space_map_root.i, i32 noundef %74) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp47 = icmp slt i32 %call.i27.i, 0
  br i1 %cmp47, label %save_sm_roots.exit.cleanup_crit_edge, label %if.end49

save_sm_roots.exit.cleanup_crit_edge:             ; preds = %save_sm_roots.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %save_sm_roots.exit
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %77 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bm.i, align 4
  %call.i99 = call i32 @dm_bm_write_lock(ptr noundef %78, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool51.not = icmp eq i32 %call.i99, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sblock, align 4
  %call54 = call ptr @dm_block_data(ptr noundef %80) #8
  %time = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 13
  %81 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %time, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %time55 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 6
  %84 = ptrtoint ptr %time55 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %time55, align 1
  %root = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %85 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %root, align 8
  %87 = call i64 @llvm.bswap.i64(i64 %86)
  %data_mapping_root = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 11
  %88 = ptrtoint ptr %data_mapping_root to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %data_mapping_root, align 1
  %details_root = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %89 = ptrtoint ptr %details_root to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %details_root, align 8
  %91 = call i64 @llvm.bswap.i64(i64 %90)
  %device_details_root = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 12
  %92 = ptrtoint ptr %device_details_root to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %91, ptr %device_details_root, align 1
  %trans_id = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 17
  %93 = ptrtoint ptr %trans_id to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %trans_id, align 8
  %95 = call i64 @llvm.bswap.i64(i64 %94)
  %trans_id56 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 7
  %96 = ptrtoint ptr %trans_id56 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %trans_id56, align 1
  %flags = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 18
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 8
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %flags57 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 1
  %100 = ptrtoint ptr %flags57 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %flags57, align 1
  %metadata_space_map_root.i100 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 10
  %101 = call ptr @memcpy(ptr %metadata_space_map_root.i100, ptr %metadata_space_map_root.i, i32 128)
  %data_space_map_root.i101 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call54, i32 0, i32 9
  %102 = call ptr @memcpy(ptr %data_space_map_root.i101, ptr %data_space_map_root.i, i32 128)
  %103 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tm, align 8
  %105 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sblock, align 4
  %call59 = call i32 @dm_tm_commit(ptr noundef %104, ptr noundef %106) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end49.cleanup_crit_edge, %save_sm_roots.exit.cleanup_crit_edge, %save_sm_roots.exit.thread, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %__write_changed_details.exit.cleanup_crit_edge, %do.end30, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.end30 ], [ %call59, %if.end53 ], [ 0, %do.end12.cleanup_crit_edge ], [ %call.i, %__write_changed_details.exit.cleanup_crit_edge ], [ %call.i95, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call.i27.i, %save_sm_roots.exit.cleanup_crit_edge ], [ %call.i99, %if.end49.cleanup_crit_edge ], [ %retval.0.i98.ph, %save_sm_roots.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_create_thin(ptr noundef %pmd, i64 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %dev_root.i = alloca i64, align 8
  %key.i = alloca i64, align 8
  %td.i = alloca ptr, align 4
  %value.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_root.i) #8
  %3 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %dev_root.i, align 8, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #8
  %4 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dev, ptr %key.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i) #8
  %5 = ptrtoint ptr %td.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %td.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  %details_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %6 = ptrtoint ptr %details_root.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %details_root.i, align 8
  %call.i = call i32 @dm_btree_lookup(ptr noundef %details_info.i, i64 noundef %7, ptr noundef nonnull %key.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.__create_thin.exit_crit_edge, label %if.end.i

if.then.__create_thin.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__create_thin.exit

if.end.i:                                         ; preds = %if.then
  %bl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 10
  %call1.i = call i32 @dm_btree_empty(ptr noundef %bl_info.i, ptr noundef nonnull %dev_root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__create_thin.exit_crit_edge

if.end.i.__create_thin.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__create_thin.exit

if.end4.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dev_root.i, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9) #8
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %value.i, align 8
  %tl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %12 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %root.i, align 8
  %call6.i = call i32 @dm_btree_insert(ptr noundef %tl_info.i, i64 noundef %13, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i, ptr noundef %root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dev_root.i, align 8
  %call10.i = call i32 @dm_btree_del(ptr noundef %bl_info.i, i64 noundef %15) #8
  br label %__create_thin.exit

if.end11.i:                                       ; preds = %if.end4.i
  %call12.i = call fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %dev, i32 noundef 1, ptr noundef nonnull %td.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end21.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %root.i, align 8
  %call18.i = call i32 @dm_btree_remove(ptr noundef %tl_info.i, i64 noundef %17, ptr noundef nonnull %key.i, ptr noundef %root.i) #8
  %18 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dev_root.i, align 8
  %call20.i = call i32 @dm_btree_del(ptr noundef %bl_info.i, i64 noundef %19) #8
  br label %__create_thin.exit

if.end21.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %td.i, align 4
  %open_count.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %open_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %open_count.i.i, align 8
  %dec.i.i = add i32 %23, -1
  store i32 %dec.i.i, ptr %open_count.i.i, align 8
  br label %__create_thin.exit

__create_thin.exit:                               ; preds = %if.end21.i, %if.then14.i, %if.then8.i, %if.end.i.__create_thin.exit_crit_edge, %if.then.__create_thin.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then8.i ], [ %call12.i, %if.then14.i ], [ 0, %if.end21.i ], [ -17, %if.then.__create_thin.exit_crit_edge ], [ %call1.i, %if.end.i.__create_thin.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_root.i) #8
  br label %if.end

if.end:                                           ; preds = %__create_thin.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__create_thin.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_create_snap(ptr noundef %pmd, i64 noundef %dev, i64 noundef %origin) local_unnamed_addr #0 align 64 {
entry:
  %td.i.i = alloca ptr, align 4
  %key.i = alloca i64, align 8
  %dev_key.i = alloca i64, align 8
  %td.i = alloca ptr, align 4
  %value.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #8
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %origin, ptr %key.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_key.i) #8
  %4 = ptrtoint ptr %dev_key.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dev, ptr %dev_key.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i) #8
  %5 = ptrtoint ptr %td.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %td.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %value.i, align 8, !annotation !142
  %details_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %7 = ptrtoint ptr %details_root.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %details_root.i, align 8
  %call.i = call i32 @dm_btree_lookup(ptr noundef %details_info.i, i64 noundef %8, ptr noundef nonnull %dev_key.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.__create_snap.exit_crit_edge, label %if.end.i

if.then.__create_snap.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__create_snap.exit

if.end.i:                                         ; preds = %if.then
  %tl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %9 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %root.i, align 8
  %call1.i = call i32 @dm_btree_lookup(ptr noundef %tl_info.i, i64 noundef %10, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__create_snap.exit_crit_edge

if.end.i.__create_snap.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__create_snap.exit

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value.i, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12) #8
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %14 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tm.i, align 8
  call void @dm_tm_inc(ptr noundef %15, i64 noundef %13) #8
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %12, ptr %value.i, align 8
  %17 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %dev, ptr %key.i, align 8
  %18 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %root.i, align 8
  %call8.i = call i32 @dm_btree_insert(ptr noundef %tl_info.i, i64 noundef %19, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i, ptr noundef %root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tm.i, align 8
  call void @dm_tm_dec(ptr noundef %21, i64 noundef %13) #8
  br label %__create_snap.exit

if.end12.i:                                       ; preds = %if.end4.i
  %time.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 13
  %22 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %time.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %time.i, align 4
  %call13.i = call fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %dev, i32 noundef 1, ptr noundef nonnull %td.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.bad.i_crit_edge

if.end12.i.bad.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad.i

if.end16.i:                                       ; preds = %if.end12.i
  %24 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %td.i, align 4
  %26 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %time.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i.i) #8
  %28 = ptrtoint ptr %td.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %td.i.i, align 4, !annotation !142
  %call.i.i = call fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %origin, i32 noundef 0, ptr noundef nonnull %td.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__set_snapshot_details.exit.thread.i, label %__set_snapshot_details.exit.i

__set_snapshot_details.exit.thread.i:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %td.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %td.i.i, align 4
  %changed.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %changed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %changed.i.i, align 4
  %snapshotted_time.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %snapshotted_time.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %snapshotted_time.i.i, align 4
  %mapped_blocks.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %mapped_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mapped_blocks.i.i, align 8
  %mapped_blocks1.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %25, i32 0, i32 5
  %35 = ptrtoint ptr %mapped_blocks1.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %mapped_blocks1.i.i, align 8
  %snapshotted_time2.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %25, i32 0, i32 8
  %36 = ptrtoint ptr %snapshotted_time2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %27, ptr %snapshotted_time2.i.i, align 4
  %open_count.i.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %30, i32 0, i32 3
  %37 = ptrtoint ptr %open_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %open_count.i.i.i, align 8
  %dec.i.i.i = add i32 %38, -1
  store i32 %dec.i.i.i, ptr %open_count.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i.i) #8
  %open_count.i65.i = getelementptr inbounds %struct.dm_thin_device, ptr %25, i32 0, i32 3
  %39 = ptrtoint ptr %open_count.i65.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %open_count.i65.i, align 8
  %dec.i66.i = add i32 %40, -1
  store i32 %dec.i66.i, ptr %open_count.i65.i, align 8
  br label %__create_snap.exit

__set_snapshot_details.exit.i:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i.i) #8
  %open_count.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %25, i32 0, i32 3
  %41 = ptrtoint ptr %open_count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %open_count.i.i, align 8
  %dec.i.i = add i32 %42, -1
  store i32 %dec.i.i, ptr %open_count.i.i, align 8
  br label %bad.i

bad.i:                                            ; preds = %__set_snapshot_details.exit.i, %if.end12.i.bad.i_crit_edge
  %r.0.i = phi i32 [ %call13.i, %if.end12.i.bad.i_crit_edge ], [ %call.i.i, %__set_snapshot_details.exit.i ]
  %43 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %root.i, align 8
  %call25.i = call i32 @dm_btree_remove(ptr noundef %tl_info.i, i64 noundef %44, ptr noundef nonnull %key.i, ptr noundef %root.i) #8
  %45 = ptrtoint ptr %details_root.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %details_root.i, align 8
  %call29.i = call i32 @dm_btree_remove(ptr noundef %details_info.i, i64 noundef %46, ptr noundef nonnull %key.i, ptr noundef %details_root.i) #8
  br label %__create_snap.exit

__create_snap.exit:                               ; preds = %bad.i, %__set_snapshot_details.exit.thread.i, %if.then10.i, %if.end.i.__create_snap.exit_crit_edge, %if.then.__create_snap.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.then10.i ], [ %r.0.i, %bad.i ], [ -17, %if.then.__create_snap.exit_crit_edge ], [ %call1.i, %if.end.i.__create_snap.exit_crit_edge ], [ 0, %__set_snapshot_details.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_key.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  br label %if.end

if.end:                                           ; preds = %__create_snap.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__create_snap.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_delete_thin_device(ptr noundef %pmd, i64 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca i64, align 8
  %td.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #8
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %dev, ptr %key.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i) #8
  %4 = ptrtoint ptr %td.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %td.i, align 4, !annotation !142
  %call.i = call fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %dev, i32 noundef 0, ptr noundef nonnull %td.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__delete_device.exit_crit_edge

if.then.__delete_device.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__delete_device.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %td.i, align 4
  %open_count.i = getelementptr inbounds %struct.dm_thin_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp sgt i32 %8, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add nsw i32 %8, -1
  %9 = ptrtoint ptr %open_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i.i, ptr %open_count.i, align 8
  br label %__delete_device.exit

if.end2.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end2.i.list_del.exit.i_crit_edge

if.end2.i.list_del.exit.i_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end2.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %6) #8
  %details_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %18 = ptrtoint ptr %details_root.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %details_root.i, align 8
  %call4.i = call i32 @dm_btree_remove(ptr noundef %details_info.i, i64 noundef %19, ptr noundef nonnull %key.i, ptr noundef %details_root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %list_del.exit.i.__delete_device.exit_crit_edge

list_del.exit.i.__delete_device.exit_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__delete_device.exit

if.end7.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %tl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 9
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %20 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %root.i, align 8
  %call9.i = call i32 @dm_btree_remove(ptr noundef %tl_info.i, i64 noundef %21, ptr noundef nonnull %key.i, ptr noundef %root.i) #8
  br label %__delete_device.exit

__delete_device.exit:                             ; preds = %if.end7.i, %list_del.exit.i.__delete_device.exit_crit_edge, %if.then1.i, %if.then.__delete_device.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then1.i ], [ %call.i, %if.then.__delete_device.exit_crit_edge ], [ %call4.i, %list_del.exit.i.__delete_device.exit_crit_edge ], [ %call9.i, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #8
  br label %if.end

if.end:                                           ; preds = %__delete_device.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__delete_device.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_set_metadata_transaction_id(ptr noundef %pmd, i64 noundef %current_id, i64 noundef %new_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %pmd_write_lock.exit.out_crit_edge

pmd_write_lock.exit.out_crit_edge:                ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %pmd_write_lock.exit
  %trans_id = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 17
  %3 = ptrtoint ptr %trans_id to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %trans_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %current_id)
  %cmp.not = icmp eq i64 %4, %current_id
  br i1 %cmp.not, label %if.end2, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %out

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %trans_id to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %new_id, ptr %trans_id, align 8
  br label %out

out:                                              ; preds = %if.end2, %do.end, %pmd_write_lock.exit.out_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.out_crit_edge ], [ -22, %do.end ], [ 0, %if.end2 ]
  tail call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_metadata_transaction_id(ptr noundef %pmd, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %trans_id = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 17
  %1 = ptrtoint ptr %trans_id to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %trans_id, align 8
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ 0, %if.then ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_reserve_metadata_snap(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  %inc.i = alloca i32, align 4
  %copy.i = alloca ptr, align 4
  %sblock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc.i) #8
  %3 = ptrtoint ptr %inc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %inc.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copy.i) #8
  %4 = ptrtoint ptr %copy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %copy.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #8
  %5 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !142
  %call.i = tail call fastcc i32 @__commit_transaction(ptr noundef %pmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.62, i32 noundef %call.i) #12
  br label %__reserve_metadata_snap.exit

if.end.i:                                         ; preds = %if.then
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %6 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %metadata_sm.i, align 8
  %inc_blocks.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %inc_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inc_blocks.i.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %7, i64 noundef 0, i64 noundef 1) #8
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %10 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tm.i, align 8
  %call3.i = call i32 @dm_tm_shadow_block(ptr noundef %11, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %copy.i, ptr noundef nonnull %inc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body6.i, label %if.end.i.__reserve_metadata_snap.exit_crit_edge

if.end.i.__reserve_metadata_snap.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__reserve_metadata_snap.exit

do.body6.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %inc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i, label %do.body12.i, label %do.end20.i, !prof !146

do.body12.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-thin-metadata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1326, 0\0A.popsection", ""() #8, !srcloc !148
  unreachable

do.end20.i:                                       ; preds = %do.body6.i
  %14 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy.i, align 4
  %call21.i = call i64 @dm_block_location(ptr noundef %15) #8
  %16 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %copy.i, align 4
  %call22.i = call ptr @dm_block_data(ptr noundef %17) #8
  %held_root23.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call22.i, i32 0, i32 8
  %18 = ptrtoint ptr %held_root23.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %held_root23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool24.not.i = icmp eq i64 %19, 0
  br i1 %tobool24.not.i, label %if.end33.i, label %do.end28.i

do.end28.i:                                       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  %20 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tm.i, align 8
  call void @dm_tm_dec(ptr noundef %21, i64 noundef %call21.i) #8
  %22 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tm.i, align 8
  %24 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %copy.i, align 4
  call void @dm_tm_unlock(ptr noundef %23, ptr noundef %25) #8
  br label %__reserve_metadata_snap.exit

if.end33.i:                                       ; preds = %do.end20.i
  %data_space_map_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call22.i, i32 0, i32 9
  %26 = call ptr @memset(ptr %data_space_map_root.i, i32 0, i32 256)
  %27 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tm.i, align 8
  %data_mapping_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call22.i, i32 0, i32 11
  %29 = ptrtoint ptr %data_mapping_root.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %data_mapping_root.i, align 1
  %31 = call i64 @llvm.bswap.i64(i64 %30) #8
  call void @dm_tm_inc(ptr noundef %28, i64 noundef %31) #8
  %32 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tm.i, align 8
  %device_details_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call22.i, i32 0, i32 12
  %34 = ptrtoint ptr %device_details_root.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %device_details_root.i, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #8
  call void @dm_tm_inc(ptr noundef %33, i64 noundef %36) #8
  %37 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tm.i, align 8
  %39 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %copy.i, align 4
  call void @dm_tm_unlock(ptr noundef %38, ptr noundef %40) #8
  %bm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %41 = ptrtoint ptr %bm.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bm.i.i, align 4
  %call.i.i = call i32 @dm_bm_write_lock(ptr noundef %42, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool38.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool38.not.i, label %if.end41.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tm.i, align 8
  call void @dm_tm_dec(ptr noundef %44, i64 noundef %call21.i) #8
  br label %__reserve_metadata_snap.exit

if.end41.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sblock.i, align 4
  %call42.i = call ptr @dm_block_data(ptr noundef %46) #8
  %47 = call i64 @llvm.bswap.i64(i64 %call21.i) #8
  %held_root43.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call42.i, i32 0, i32 8
  %48 = ptrtoint ptr %held_root43.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %held_root43.i, align 1
  %49 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sblock.i, align 4
  call void @dm_bm_unlock(ptr noundef %50) #8
  br label %__reserve_metadata_snap.exit

__reserve_metadata_snap.exit:                     ; preds = %if.end41.i, %if.then39.i, %do.end28.i, %if.end.i.__reserve_metadata_snap.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ -16, %do.end28.i ], [ %call.i.i, %if.then39.i ], [ 0, %if.end41.i ], [ %call3.i, %if.end.i.__reserve_metadata_snap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i) #8
  br label %if.end

if.end:                                           ; preds = %__reserve_metadata_snap.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__reserve_metadata_snap.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_release_metadata_snap(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  %sblock.i = alloca ptr, align 4
  %copy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #8
  %3 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copy.i) #8
  %4 = ptrtoint ptr %copy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %copy.i, align 4, !annotation !142
  %bm.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %5 = ptrtoint ptr %bm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bm.i.i, align 4
  %call.i.i = call i32 @dm_bm_write_lock(ptr noundef %6, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__release_metadata_snap.exit_crit_edge

if.then.__release_metadata_snap.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__release_metadata_snap.exit

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sblock.i, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %8) #8
  %held_root2.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 8
  %9 = ptrtoint ptr %held_root2.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %held_root2.i, align 1
  %11 = call i64 @llvm.bswap.i64(i64 %10) #8
  %12 = ptrtoint ptr %held_root2.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %held_root2.i, align 1
  %13 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sblock.i, align 4
  call void @dm_bm_unlock(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool4.not.i = icmp eq i64 %10, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %__release_metadata_snap.exit

if.end7.i:                                        ; preds = %if.end.i
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %15 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tm.i, align 8
  %call8.i = call i32 @dm_tm_read_lock(ptr noundef %16, i64 noundef %11, ptr noundef nonnull @sb_validator, ptr noundef nonnull %copy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.__release_metadata_snap.exit_crit_edge

if.end7.i.__release_metadata_snap.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__release_metadata_snap.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %copy.i, align 4
  %call12.i = call ptr @dm_block_data(ptr noundef %18) #8
  %info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 7
  %data_mapping_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call12.i, i32 0, i32 11
  %19 = ptrtoint ptr %data_mapping_root.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %data_mapping_root.i, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %call13.i = call i32 @dm_btree_del(ptr noundef %info.i, i64 noundef %21) #8
  %details_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %device_details_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call12.i, i32 0, i32 12
  %22 = ptrtoint ptr %device_details_root.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %device_details_root.i, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23) #8
  %call14.i = call i32 @dm_btree_del(ptr noundef %details_info.i, i64 noundef %24) #8
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %25 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %metadata_sm.i, align 8
  %add.i.i = add i64 %11, 1
  %dec_blocks.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %dec_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dec_blocks.i.i.i, align 4
  %call.i.i.i = call i32 %28(ptr noundef %26, i64 noundef %11, i64 noundef %add.i.i) #8
  %29 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tm.i, align 8
  %31 = ptrtoint ptr %copy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %copy.i, align 4
  call void @dm_tm_unlock(ptr noundef %30, ptr noundef %32) #8
  br label %__release_metadata_snap.exit

__release_metadata_snap.exit:                     ; preds = %if.end11.i, %if.end7.i.__release_metadata_snap.exit_crit_edge, %do.end.i, %if.then.__release_metadata_snap.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end11.i ], [ -22, %do.end.i ], [ %call.i.i, %if.then.__release_metadata_snap.exit_crit_edge ], [ %call8.i, %if.end7.i.__release_metadata_snap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  br label %if.end

if.end:                                           ; preds = %__release_metadata_snap.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__release_metadata_snap.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_metadata_snap(ptr noundef %pmd, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %sblock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #8
  %1 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !142
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %2 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm.i, align 4
  %call.i = call i32 @dm_bm_read_lock(ptr noundef %3, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__get_metadata_snap.exit_crit_edge

if.then.__get_metadata_snap.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__get_metadata_snap.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sblock.i, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %5) #8
  %held_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 8
  %6 = ptrtoint ptr %held_root.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %held_root.i, align 1
  %8 = call i64 @llvm.bswap.i64(i64 %7) #8
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %result, align 8
  %10 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sblock.i, align 4
  call void @dm_bm_unlock(ptr noundef %11) #8
  br label %__get_metadata_snap.exit

__get_metadata_snap.exit:                         ; preds = %if.end.i, %if.then.__get_metadata_snap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  br label %if.end

if.end:                                           ; preds = %__get_metadata_snap.exit, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %__get_metadata_snap.exit ]
  call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_open_thin_device(ptr noundef %pmd, i64 noundef %dev, ptr nocapture noundef %td) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %dev, i32 noundef 0, ptr noundef %td)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call, %if.then ]
  tail call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__open_device(ptr noundef %pmd, i64 noundef %dev, i32 noundef %create, ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  %key = alloca i64, align 8
  %details_le = alloca %struct.disk_device_details, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %dev, ptr %key, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %details_le) #8
  %1 = getelementptr inbounds %struct.disk_device_details, ptr %details_le, i32 0, i32 1
  %2 = getelementptr inbounds %struct.disk_device_details, ptr %details_le, i32 0, i32 2
  %3 = getelementptr inbounds %struct.disk_device_details, ptr %details_le, i32 0, i32 3
  %thin_devices = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 16
  %4 = call ptr @memset(ptr %details_le, i32 255, i32 24)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %td2.0.in = phi ptr [ %thin_devices, %entry ], [ %td2.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %td2.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %td2.0 = load ptr, ptr %td2.0.in, align 8
  %cmp.not = icmp eq ptr %td2.0, %thin_devices
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %id = getelementptr inbounds %struct.dm_thin_device, ptr %td2.0, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %id, align 8
  %cmp2 = icmp eq i64 %7, %dev
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %open_count = getelementptr inbounds %struct.dm_thin_device, ptr %td2.0, i32 0, i32 3
  %8 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_count, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %open_count, align 8
  %10 = ptrtoint ptr %td to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %td2.0, ptr %td, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %details_info = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 11
  %details_root = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %11 = ptrtoint ptr %details_root to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %details_root, align 8
  %call = call i32 @dm_btree_lookup(ptr noundef %details_info, i64 noundef %12, ptr noundef nonnull %key, ptr noundef nonnull %details_le) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %for.end.if.end17_crit_edge, label %if.then11

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call)
  %cmp12.not = icmp ne i32 %call, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool13.not = icmp eq i32 %create, 0
  %or.cond = or i1 %tobool13.not, %cmp12.not
  br i1 %or.cond, label %if.then11.cleanup_crit_edge, label %if.end15

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %details_le to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %details_le, align 8
  %trans_id = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 17
  %14 = ptrtoint ptr %trans_id to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %trans_id, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %1, align 8
  %time = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 13
  %18 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %3, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %for.end.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3072, i32 noundef 56) #11
  %24 = ptrtoint ptr %td to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %td, align 4
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %pmd22 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %pmd22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pmd, ptr %pmd22, align 8
  %id23 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 2
  %26 = ptrtoint ptr %id23 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %dev, ptr %id23, align 8
  %open_count24 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 3
  %27 = ptrtoint ptr %open_count24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %open_count24, align 8
  %changed26 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 4
  %28 = ptrtoint ptr %changed26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %changed26, align 4
  %bf.shl = select i1 %tobool10.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %changed26, align 4
  %29 = ptrtoint ptr %details_le to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %details_le, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %mapped_blocks32 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 5
  %32 = ptrtoint ptr %mapped_blocks32 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %mapped_blocks32, align 8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %1, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34)
  %transaction_id34 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 6
  %36 = ptrtoint ptr %transaction_id34 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %transaction_id34, align 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 8
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %creation_time36 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 7
  %40 = ptrtoint ptr %creation_time36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %creation_time36, align 8
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %snapshotted_time38 = getelementptr inbounds %struct.dm_thin_device, ptr %call7.i, i32 0, i32 8
  %44 = ptrtoint ptr %snapshotted_time38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %snapshotted_time38, align 4
  %45 = ptrtoint ptr %thin_devices to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %thin_devices, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %thin_devices, ptr noundef %46) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %thin_devices, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %thin_devices to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i, ptr %thin_devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -17, %if.then.cleanup_crit_edge ], [ %call, %if.then11.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %details_le) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_close_thin_device(ptr nocapture noundef %td) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %open_count.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 3
  %2 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count.i, align 8
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %open_count.i, align 8
  %4 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd, align 8
  %root_lock.i4 = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 12
  tail call void @up_write(ptr noundef %root_lock.i4) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @dm_thin_dev_id(ptr nocapture noundef readonly %td) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id, align 8
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_find_block(ptr nocapture noundef readonly %td, i64 noundef %block, i32 noundef %can_issue_io, ptr nocapture noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i64, align 8
  %keys.i = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd1 = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd1, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %root_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %value.i, align 8, !annotation !142
  %4 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i) #8
  %6 = getelementptr inbounds [2 x i64], ptr %keys.i, i32 0, i32 1
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %id.i, align 8
  %9 = ptrtoint ptr %keys.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %keys.i, align 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %block, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_issue_io)
  %tobool.not.i = icmp eq i32 %can_issue_io, 0
  %info2.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 7
  %nb_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 8
  %info.0.i = select i1 %tobool.not.i, ptr %nb_info.i, ptr %info2.i
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %root.i, align 8
  %call.i = call i32 @dm_btree_lookup(ptr noundef %info.0.i, i64 noundef %12, ptr noundef nonnull %keys.i, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.__find_block.exit_crit_edge

if.end.__find_block.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__find_block.exit

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %value.i, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14) #8
  %shr.i.i.i = lshr i64 %15, 24
  %16 = trunc i64 %15 to i32
  %conv.i.i.i = and i32 %16, 16777215
  %17 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr.i.i.i, ptr %result, align 8
  %snapshotted_time.i.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 8
  %18 = ptrtoint ptr %snapshotted_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snapshotted_time.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %19, %conv.i.i.i
  %shared.i.i = getelementptr inbounds %struct.dm_thin_lookup_result, ptr %result, i32 0, i32 1
  %20 = ptrtoint ptr %shared.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %shared.i.i, align 8
  %bf.shl.i.i = select i1 %cmp.i.i.i, i8 -128, i8 0
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.shl.i.i, %bf.clear.i.i
  store i8 %bf.set.i.i, ptr %shared.i.i, align 8
  br label %__find_block.exit

__find_block.exit:                                ; preds = %if.then4.i, %if.end.__find_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  call void @up_read(ptr noundef %root_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %__find_block.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i, %__find_block.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_find_mapped_range(ptr nocapture noundef readonly %td, i64 noundef %begin, i64 noundef %end, ptr nocapture noundef writeonly %thin_begin, ptr nocapture noundef writeonly %thin_end, ptr nocapture noundef %pool_begin, ptr nocapture noundef %maybe_shared) local_unnamed_addr #0 align 64 {
entry:
  %value.i41.i = alloca i64, align 8
  %keys.i42.i = alloca [2 x i64], align 8
  %value.i.i = alloca i64, align 8
  %keys.i.i = alloca [2 x i64], align 8
  %begin.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd1 = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd1, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %begin.addr.i)
  %3 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %begin, ptr %begin.addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %begin)
  %cmp.i = icmp ult i64 %end, %begin
  br i1 %cmp.i, label %if.then.__find_mapped_range.exit_crit_edge, label %if.end.i

if.then.__find_mapped_range.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__find_mapped_range.exit

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #8
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %value.i.i, align 8, !annotation !142
  %5 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmd1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i.i) #8
  %7 = getelementptr inbounds [2 x i64], ptr %keys.i.i, i32 0, i32 1
  %id.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %8 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id.i.i, align 8
  %10 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %keys.i.i, align 8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %begin, ptr %7, align 8
  %info.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 7
  %root.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 14
  %12 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %root.i.i, align 8
  %call.i.i = call i32 @dm_btree_lookup_next(ptr noundef %info.i.i, i64 noundef %13, ptr noundef nonnull %keys.i.i, ptr noundef nonnull %begin.addr.i, ptr noundef nonnull %value.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i, label %__find_next_mapped_block.exit.i

__find_next_mapped_block.exit.i:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #8
  br label %__find_mapped_range.exit

if.end2.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %value.i.i, align 8
  %snapshotted_time.i.i.i.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 8
  %16 = ptrtoint ptr %snapshotted_time.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %snapshotted_time.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #8
  %18 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %begin.addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %end)
  %cmp3.not.i = icmp ult i64 %19, %end
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end2.i.__find_mapped_range.exit_crit_edge

if.end2.i.__find_mapped_range.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__find_mapped_range.exit

if.end5.i:                                        ; preds = %if.end2.i
  %20 = call i64 @llvm.bswap.i64(i64 %15) #8
  %21 = trunc i64 %20 to i32
  %conv.i.i.i.i = and i32 %21, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %17, %conv.i.i.i.i
  %bf.set.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %shr.i.i.i.i = lshr i64 %20, 24
  %22 = ptrtoint ptr %thin_begin to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %thin_begin, align 8
  %23 = ptrtoint ptr %pool_begin to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shr.i.i.i.i, ptr %pool_begin, align 8
  %24 = ptrtoint ptr %maybe_shared to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set.i.i.i, ptr %maybe_shared, align 1
  %inc.i = add nuw i64 %19, 1
  %25 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %inc.i, ptr %begin.addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc.i, i64 %end)
  %cmp6.not66.i = icmp eq i64 %inc.i, %end
  br i1 %cmp6.not66.i, label %if.end5.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %26 = ptrtoint ptr %pool_begin to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pool_begin, align 8
  %28 = getelementptr inbounds [2 x i64], ptr %keys.i42.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %29 = phi i64 [ %inc.i, %while.body.lr.ph.i ], [ %inc26.i, %if.end24.i.while.body.i_crit_edge ]
  %pool_end.068.in.i = phi i64 [ %27, %while.body.lr.ph.i ], [ %pool_end.068.i, %if.end24.i.while.body.i_crit_edge ]
  %pool_end.068.i = add i64 %pool_end.068.in.i, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i41.i) #8
  %30 = ptrtoint ptr %value.i41.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %value.i41.i, align 8, !annotation !142
  %31 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pmd1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i42.i) #8
  %33 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %id.i.i, align 8
  %35 = ptrtoint ptr %keys.i42.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %keys.i42.i, align 8
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %29, ptr %28, align 8
  %info2.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %32, i32 0, i32 7
  %root.i45.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %32, i32 0, i32 14
  %37 = ptrtoint ptr %root.i45.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %root.i45.i, align 8
  %call.i46.i = call i32 @dm_btree_lookup(ptr noundef %info2.i.i, i64 noundef %38, ptr noundef nonnull %keys.i42.i, ptr noundef nonnull %value.i41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool3.not.i.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool3.not.i.i, label %__find_block.exit.thread.i, label %__find_block.exit.i

__find_block.exit.thread.i:                       ; preds = %while.body.i
  %39 = ptrtoint ptr %value.i41.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %value.i41.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #8
  %shr.i.i.i47.i = lshr i64 %41, 24
  %42 = ptrtoint ptr %snapshotted_time.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %snapshotted_time.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i42.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i41.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i47.i, i64 %pool_end.068.i)
  %cmp14.not.i = icmp eq i64 %shr.i.i.i47.i, %pool_end.068.i
  br i1 %cmp14.not.i, label %lor.lhs.false.i, label %__find_block.exit.thread.i.while.end.i_crit_edge

__find_block.exit.thread.i.while.end.i_crit_edge: ; preds = %__find_block.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

__find_block.exit.i:                              ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i42.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call.i46.i)
  %cond.i = icmp eq i32 %call.i46.i, -61
  br i1 %cond.i, label %__find_block.exit.i.while.end.i_crit_edge, label %__find_block.exit.i.__find_mapped_range.exit_crit_edge

__find_block.exit.i.__find_mapped_range.exit_crit_edge: ; preds = %__find_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__find_mapped_range.exit

__find_block.exit.i.while.end.i_crit_edge:        ; preds = %__find_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

lor.lhs.false.i:                                  ; preds = %__find_block.exit.thread.i
  %44 = trunc i64 %41 to i32
  %conv.i.i.i48.i = and i32 %44, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv.i.i.i48.i)
  %cmp.i.i.i50.i = icmp ugt i32 %43, %conv.i.i.i48.i
  %bf.shl.i.i53.i = zext i1 %cmp.i.i.i50.i to i8
  %45 = ptrtoint ptr %maybe_shared to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %maybe_shared, align 1, !range !145
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %bf.shl.i.i53.i)
  %cmp21.not.i = icmp eq i8 %46, %bf.shl.i.i53.i
  br i1 %cmp21.not.i, label %if.end24.i, label %lor.lhs.false.i.while.end.i_crit_edge

lor.lhs.false.i.while.end.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %47 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %begin.addr.i, align 8
  %inc26.i = add i64 %48, 1
  store i64 %inc26.i, ptr %begin.addr.i, align 8
  %cmp6.not.i = icmp eq i64 %inc26.i, %end
  br i1 %cmp6.not.i, label %if.end24.i.while.end.i_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end24.i.while.end.i_crit_edge, %lor.lhs.false.i.while.end.i_crit_edge, %__find_block.exit.i.while.end.i_crit_edge, %__find_block.exit.thread.i.while.end.i_crit_edge, %if.end5.i.while.end.i_crit_edge
  %49 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %begin.addr.i, align 8
  %51 = ptrtoint ptr %thin_end to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %thin_end, align 8
  br label %__find_mapped_range.exit

__find_mapped_range.exit:                         ; preds = %while.end.i, %__find_block.exit.i.__find_mapped_range.exit_crit_edge, %if.end2.i.__find_mapped_range.exit_crit_edge, %__find_next_mapped_block.exit.i, %if.then.__find_mapped_range.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i ], [ -61, %if.then.__find_mapped_range.exit_crit_edge ], [ %call.i.i, %__find_next_mapped_block.exit.i ], [ -61, %if.end2.i.__find_mapped_range.exit_crit_edge ], [ %call.i46.i, %__find_block.exit.i.__find_mapped_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %begin.addr.i)
  br label %if.end

if.end:                                           ; preds = %__find_mapped_range.exit, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %retval.0.i, %__find_mapped_range.exit ]
  call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_insert_block(ptr nocapture noundef %td, i64 noundef %block, i64 noundef %data_block) local_unnamed_addr #0 align 64 {
entry:
  %inserted.i = alloca i32, align 4
  %value.i = alloca i64, align 8
  %keys.i = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %4 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %5 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmd, align 8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inserted.i) #8
  %8 = ptrtoint ptr %inserted.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %inserted.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i) #8
  %9 = getelementptr inbounds [2 x i64], ptr %keys.i, i32 0, i32 1
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %id.i, align 8
  %12 = ptrtoint ptr %keys.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %keys.i, align 8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %block, ptr %9, align 8
  %time.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 13
  %14 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time.i, align 4
  %shl.i.i = shl i64 %data_block, 24
  %conv.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %16 = tail call i64 @llvm.bswap.i64(i64 %or.i.i) #8
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %value.i, align 8
  %info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 14
  %18 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %root.i, align 8
  %call3.i = call i32 @dm_btree_insert_notify(ptr noundef %info.i, i64 noundef %19, ptr noundef nonnull %keys.i, ptr noundef nonnull %value.i, ptr noundef %root.i, ptr noundef nonnull %inserted.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__insert.exit_crit_edge

if.then.__insert.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__insert.exit

if.end.i:                                         ; preds = %if.then
  %changed.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 4
  %20 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i6 = load i8, ptr %changed.i, align 4
  %bf.set.i7 = or i8 %bf.load.i6, -128
  store i8 %bf.set.i7, ptr %changed.i, align 4
  %21 = ptrtoint ptr %inserted.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inserted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i, label %if.end.i.__insert.exit_crit_edge, label %if.then5.i

if.end.i.__insert.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__insert.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mapped_blocks.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 5
  %23 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mapped_blocks.i, align 8
  %inc.i = add i64 %24, 1
  store i64 %inc.i, ptr %mapped_blocks.i, align 8
  br label %__insert.exit

__insert.exit:                                    ; preds = %if.then5.i, %if.end.i.__insert.exit_crit_edge, %if.then.__insert.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inserted.i) #8
  br label %if.end

if.end:                                           ; preds = %__insert.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %call3.i, %__insert.exit ]
  %25 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmd, align 8
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %26, i32 0, i32 12
  call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_remove_block(ptr nocapture noundef %td, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %keys.i = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %4 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %5 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmd, align 8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i) #8
  %8 = getelementptr inbounds [2 x i64], ptr %keys.i, i32 0, i32 1
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id.i, align 8
  %11 = ptrtoint ptr %keys.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %keys.i, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %block, ptr %8, align 8
  %info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 14
  %13 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %root.i, align 8
  %call.i = call i32 @dm_btree_remove(ptr noundef %info.i, i64 noundef %14, ptr noundef nonnull %keys.i, ptr noundef %root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__remove.exit_crit_edge

if.then.__remove.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mapped_blocks.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 5
  %15 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mapped_blocks.i, align 8
  %dec.i = add i64 %16, -1
  store i64 %dec.i, ptr %mapped_blocks.i, align 8
  %changed.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 4
  %17 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i6 = load i8, ptr %changed.i, align 4
  %bf.set.i7 = or i8 %bf.load.i6, -128
  store i8 %bf.set.i7, ptr %changed.i, align 4
  br label %__remove.exit

__remove.exit:                                    ; preds = %if.end.i, %if.then.__remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i) #8
  br label %if.end

if.end:                                           ; preds = %__remove.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %call.i, %__remove.exit ]
  %18 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmd, align 8
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %19, i32 0, i32 12
  call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_remove_range(ptr nocapture noundef %td, i64 noundef %begin, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %begin.addr.i = alloca i64, align 8
  %count.i = alloca i32, align 4
  %keys.i = alloca [1 x i64], align 8
  %value.i = alloca i64, align 8
  %mapping_root.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %4 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %5 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmd, align 8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %begin.addr.i)
  %8 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %begin, ptr %begin.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %count.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %keys.i) #8
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %id.i, align 8
  %12 = ptrtoint ptr %keys.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %keys.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #8
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %value.i, align 8, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mapping_root.i) #8
  %tl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 9
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 14
  %14 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %root.i, align 8
  %call.i = call i32 @dm_btree_lookup(ptr noundef %tl_info.i, i64 noundef %15, ptr noundef nonnull %keys.i, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__remove_range.exit_crit_edge

if.then.__remove_range.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_range.exit

if.end.i:                                         ; preds = %if.then
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #8
  %19 = ptrtoint ptr %mapping_root.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %mapping_root.i, align 8
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 5
  %20 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tm.i, align 8
  call void @dm_tm_inc(ptr noundef %21, i64 noundef %18) #8
  %22 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %root.i, align 8
  %call6.i = call i32 @dm_btree_remove(ptr noundef %tl_info.i, i64 noundef %23, ptr noundef nonnull %keys.i, ptr noundef %root.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %while.cond.preheader.i, label %if.end.i.__remove_range.exit_crit_edge

if.end.i.__remove_range.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_range.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %24 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %begin.addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %end)
  %cmp61.i = icmp ult i64 %25, %end
  br i1 %cmp61.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %bl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %6, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %total_count.062.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end24.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %mapping_root.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mapping_root.i, align 8
  %call10.i = call i32 @dm_btree_lookup_next(ptr noundef %bl_info.i, i64 noundef %27, ptr noundef nonnull %begin.addr.i, ptr noundef nonnull %begin.addr.i, ptr noundef nonnull %value.i) #8
  %28 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10.i, label %while.body.i.__remove_range.exit_crit_edge [
    i32 -61, label %while.body.i.while.end.i_crit_edge
    i32 0, label %if.end16.i
  ]

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.__remove_range.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_range.exit

if.end16.i:                                       ; preds = %while.body.i
  %29 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %begin.addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %end)
  %cmp17.not.i = icmp ult i64 %30, %end
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end16.i.while.end.i_crit_edge

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end19.i:                                       ; preds = %if.end16.i
  %31 = ptrtoint ptr %mapping_root.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mapping_root.i, align 8
  %call21.i = call i32 @dm_btree_remove_leaves(ptr noundef %bl_info.i, i64 noundef %32, ptr noundef nonnull %begin.addr.i, i64 noundef %end, ptr noundef nonnull %mapping_root.i, ptr noundef nonnull %count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.__remove_range.exit_crit_edge

if.end19.i.__remove_range.exit_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_range.exit

if.end24.i:                                       ; preds = %if.end19.i
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 4
  %add.i = add i32 %34, %total_count.062.i
  %35 = ptrtoint ptr %begin.addr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %begin.addr.i, align 8
  %cmp.i = icmp ult i64 %36, %end
  br i1 %cmp.i, label %if.end24.i.while.body.i_crit_edge, label %if.end24.i.while.end.i_crit_edge

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end24.i.while.end.i_crit_edge, %if.end16.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %total_count.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %add.i, %if.end24.i.while.end.i_crit_edge ], [ %total_count.062.i, %if.end16.i.while.end.i_crit_edge ], [ %total_count.062.i, %while.body.i.while.end.i_crit_edge ]
  %conv.i = zext i32 %total_count.0.lcssa.i to i64
  %mapped_blocks.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 5
  %37 = ptrtoint ptr %mapped_blocks.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mapped_blocks.i, align 8
  %sub.i = sub i64 %38, %conv.i
  store i64 %sub.i, ptr %mapped_blocks.i, align 8
  %changed.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 4
  %39 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i6 = load i8, ptr %changed.i, align 4
  %bf.set.i7 = or i8 %bf.load.i6, -128
  store i8 %bf.set.i7, ptr %changed.i, align 4
  %40 = ptrtoint ptr %mapping_root.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %mapping_root.i, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #8
  %43 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %value.i, align 8
  %44 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %root.i, align 8
  %call29.i = call i32 @dm_btree_insert(ptr noundef %tl_info.i, i64 noundef %45, ptr noundef nonnull %keys.i, ptr noundef nonnull %value.i, ptr noundef %root.i) #8
  br label %__remove_range.exit

__remove_range.exit:                              ; preds = %while.end.i, %if.end19.i.__remove_range.exit_crit_edge, %while.body.i.__remove_range.exit_crit_edge, %if.end.i.__remove_range.exit_crit_edge, %if.then.__remove_range.exit_crit_edge
  %retval.0.i = phi i32 [ %call29.i, %while.end.i ], [ %call.i, %if.then.__remove_range.exit_crit_edge ], [ %call6.i, %if.end.i.__remove_range.exit_crit_edge ], [ %call10.i, %while.body.i.__remove_range.exit_crit_edge ], [ %call21.i, %if.end19.i.__remove_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mapping_root.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %keys.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %begin.addr.i)
  br label %if.end

if.end:                                           ; preds = %__remove_range.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__remove_range.exit ]
  %46 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pmd, align 8
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %47, i32 0, i32 12
  call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_block_is_shared(ptr noundef %pmd, i64 noundef %b, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %ref_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_count) #8
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ref_count, align 4, !annotation !142
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %1 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_sm, align 4
  %get_count.i = getelementptr inbounds %struct.dm_space_map, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %get_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_count.i, align 4
  %call.i = call i32 %4(ptr noundef %2, i64 noundef %b, ptr noundef nonnull %ref_count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  %frombool = zext i1 %cmp to i8
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @up_read(ptr noundef %root_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_count) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_inc_data_range(ptr noundef %pmd, i64 noundef %b, i64 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %3 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_sm, align 4
  %inc_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %inc_blocks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inc_blocks.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4, i64 noundef %b, i64 noundef %e) #8
  tail call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_dec_data_range(ptr noundef %pmd, i64 noundef %b, i64 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %3 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_sm, align 4
  %dec_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %dec_blocks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dec_blocks.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4, i64 noundef %b, i64 noundef %e) #8
  tail call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_thin_changed_this_transaction(ptr nocapture noundef readonly %td) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %changed = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 4
  %2 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast = icmp slt i8 %bf.load, 0
  %3 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pmd, align 8
  %root_lock2 = getelementptr inbounds %struct.dm_pool_metadata, ptr %4, i32 0, i32 12
  tail call void @up_read(ptr noundef %root_lock2) #8
  ret i1 %bf.cast
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pool_changed_this_transaction(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %thin_devices = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %td.0.in = phi ptr [ %thin_devices, %entry ], [ %td.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %td.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %td.0 = load ptr, ptr %td.0.in, align 8
  %cmp.not = icmp eq ptr %td.0, %thin_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %changed = getelementptr inbounds %struct.dm_thin_device, ptr %td.0, i32 0, i32 4
  %1 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %changed, align 4
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %2 = xor i1 %cmp.not, true
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_thin_aborted_changes(ptr nocapture noundef readonly %td) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %aborted_with_changes = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 4
  %2 = ptrtoint ptr %aborted_with_changes to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %aborted_with_changes, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast = icmp ne i8 %3, 0
  %4 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd, align 8
  %root_lock2 = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 12
  tail call void @up_read(ptr noundef %root_lock2) #8
  ret i1 %bf.cast
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_alloc_data_block(ptr noundef %pmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %3 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_sm, align 4
  %new_block.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %new_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %new_block.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4, ptr noundef %result) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_commit_metadata(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  %sblock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @__commit_transaction(ptr noundef %pmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #8
  %1 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !142
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %2 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm.i, align 4
  %call.i = call i32 @dm_bm_read_lock(ptr noundef %3, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end2.__begin_transaction.exit_crit_edge

if.end2.__begin_transaction.exit_crit_edge:       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %__begin_transaction.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sblock.i, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %5) #8
  %time.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 6
  %6 = ptrtoint ptr %time.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %time.i, align 1
  %8 = call i32 @llvm.bswap.i32(i32 %7) #8
  %time2.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 13
  %9 = ptrtoint ptr %time2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %time2.i, align 4
  %data_mapping_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 11
  %10 = ptrtoint ptr %data_mapping_root.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %data_mapping_root.i, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11) #8
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 14
  %13 = ptrtoint ptr %root.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %root.i, align 8
  %device_details_root.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 12
  %14 = ptrtoint ptr %device_details_root.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %device_details_root.i, align 1
  %16 = call i64 @llvm.bswap.i64(i64 %15) #8
  %details_root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 15
  %17 = ptrtoint ptr %details_root.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %details_root.i, align 8
  %trans_id.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 7
  %18 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %trans_id.i, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #8
  %trans_id3.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 17
  %21 = ptrtoint ptr %trans_id3.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %trans_id3.i, align 8
  %flags.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags.i, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  %flags4.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 18
  %25 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %flags4.i, align 8
  %data_block_size.i = getelementptr inbounds %struct.thin_disk_superblock, ptr %call1.i, i32 0, i32 13
  %26 = ptrtoint ptr %data_block_size.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data_block_size.i, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  %conv.i = zext i32 %28 to i64
  %data_block_size5.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 19
  %29 = ptrtoint ptr %data_block_size5.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i, ptr %data_block_size5.i, align 8
  %30 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sblock.i, align 4
  call void @dm_bm_unlock(ptr noundef %31) #8
  br label %__begin_transaction.exit

__begin_transaction.exit:                         ; preds = %if.end.i, %if.end2.__begin_transaction.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #8
  br label %out

out:                                              ; preds = %__begin_transaction.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ], [ %call.i, %__begin_transaction.exit ]
  call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_abort_metadata(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %pmd_write_lock.exit.out_crit_edge

pmd_write_lock.exit.out_crit_edge:                ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %pmd_write_lock.exit
  %thin_devices.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 16
  %3 = ptrtoint ptr %thin_devices.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %td.012.i = load ptr, ptr %thin_devices.i, align 8
  %cmp.not13.i = icmp eq ptr %td.012.i, %thin_devices.i
  br i1 %cmp.not13.i, label %if.end.__set_abort_with_changes_flags.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.__set_abort_with_changes_flags.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_abort_with_changes_flags.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %td.014.i = phi ptr [ %td.0.i, %for.body.i.for.body.i_crit_edge ], [ %td.012.i, %if.end.for.body.i_crit_edge ]
  %changed.i = getelementptr inbounds %struct.dm_thin_device, ptr %td.014.i, i32 0, i32 4
  %4 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i12 = load i8, ptr %changed.i, align 4
  %5 = lshr i8 %bf.load.i12, 1
  %bf.shl.i = and i8 %5, 64
  %bf.clear.i = and i8 %bf.load.i12, -65
  %bf.set.i13 = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i13, ptr %changed.i, align 4
  %6 = ptrtoint ptr %td.014.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %td.0.i = load ptr, ptr %td.014.i, align 8
  %cmp.not.i = icmp eq ptr %td.0.i, %thin_devices.i
  br i1 %cmp.not.i, label %for.body.i.__set_abort_with_changes_flags.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.__set_abort_with_changes_flags.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__set_abort_with_changes_flags.exit

__set_abort_with_changes_flags.exit:              ; preds = %for.body.i.__set_abort_with_changes_flags.exit_crit_edge, %if.end.__set_abort_with_changes_flags.exit_crit_edge
  %data_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %7 = ptrtoint ptr %data_sm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_sm.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void %10(ptr noundef %8) #8
  %metadata_sm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %11 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %metadata_sm.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void %14(ptr noundef %12) #8
  %nb_tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 6
  %15 = ptrtoint ptr %nb_tm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nb_tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %16) #8
  %tm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %17 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tm.i, align 8
  tail call void @dm_tm_destroy(ptr noundef %18) #8
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %19 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %20) #8
  %call = tail call fastcc i32 @__create_persistent_data_objects(ptr noundef %pmd, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %__set_abort_with_changes_flags.exit.out_crit_edge, label %if.then1

__set_abort_with_changes_flags.exit.out_crit_edge: ; preds = %__set_abort_with_changes_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then1:                                         ; preds = %__set_abort_with_changes_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load3 = load i8, ptr %in_service.i, align 8
  %bf.set = or i8 %bf.load3, -128
  store i8 %bf.set, ptr %in_service.i, align 8
  br label %out

out:                                              ; preds = %if.then1, %__set_abort_with_changes_flags.exit.out_crit_edge, %pmd_write_lock.exit.out_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.out_crit_edge ], [ %call, %if.then1 ], [ 0, %__set_abort_with_changes_flags.exit.out_crit_edge ]
  tail call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_free_block_count(ptr noundef %pmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %1 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_sm, align 4
  %get_nr_free.i = getelementptr inbounds %struct.dm_space_map, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %get_nr_free.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_nr_free.i, align 4
  %call.i = tail call i32 %4(ptr noundef %2, ptr noundef %result) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_free_metadata_block_count(ptr noundef %pmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end:                                           ; preds = %entry
  %metadata_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %1 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metadata_sm, align 8
  %get_nr_free.i = getelementptr inbounds %struct.dm_space_map, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %get_nr_free.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_nr_free.i, align 4
  %call.i = tail call i32 %4(ptr noundef %2, ptr noundef %result) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %result, align 8
  %metadata_reserve = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 22
  %7 = ptrtoint ptr %metadata_reserve to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %metadata_reserve, align 8
  %9 = call i64 @llvm.usub.sat.i64(i64 %6, i64 %8)
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %result, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %r.019 = phi i32 [ %call.i, %if.end.if.end5_crit_edge ], [ -22, %entry.if.end5_crit_edge ], [ 0, %if.then1 ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_metadata_dev_size(ptr noundef %pmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %metadata_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %1 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metadata_sm, align 8
  %get_nr_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %get_nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_nr_blocks.i, align 4
  %call.i = tail call i32 %4(ptr noundef %2, ptr noundef %result) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_get_data_dev_size(ptr noundef %pmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %1 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_sm, align 4
  %get_nr_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %get_nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_nr_blocks.i, align 4
  %call.i = tail call i32 %4(ptr noundef %2, ptr noundef %result) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_get_mapped_count(ptr nocapture noundef readonly %td, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd1 = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd1, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mapped_blocks = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 5
  %3 = ptrtoint ptr %mapped_blocks to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mapped_blocks, align 8
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ 0, %if.then ]
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_thin_get_highest_mapped_block(ptr noundef %td, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %value_le.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pmd1 = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 1
  %0 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmd1, align 8
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value_le.i) #8
  %3 = ptrtoint ptr %value_le.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %value_le.i, align 8, !annotation !142
  %4 = ptrtoint ptr %pmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd1, align 8
  %tl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 9
  %root.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %root.i, align 8
  %id.i = getelementptr inbounds %struct.dm_thin_device, ptr %td, i32 0, i32 2
  %call.i = call i32 @dm_btree_lookup(ptr noundef %tl_info.i, i64 noundef %7, ptr noundef %id.i, ptr noundef nonnull %value_le.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__highest_block.exit_crit_edge

if.then.__highest_block.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__highest_block.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %value_le.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %value_le.i, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9) #8
  %bl_info.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %5, i32 0, i32 10
  %call2.i = call i32 @dm_btree_find_highest_key(ptr noundef %bl_info.i, i64 noundef %10, ptr noundef %result) #8
  br label %__highest_block.exit

__highest_block.exit:                             ; preds = %if.end.i, %if.then.__highest_block.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %if.then.__highest_block.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value_le.i) #8
  br label %if.end

if.end:                                           ; preds = %__highest_block.exit, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %retval.0.i, %__highest_block.exit ]
  call void @up_read(ptr noundef %root_lock) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_resize_data_dev(ptr noundef %pmd, i64 noundef %new_count) local_unnamed_addr #0 align 64 {
entry:
  %old_count.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end_crit_edge

pmd_write_lock.exit.if.end_crit_edge:             ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pmd_write_lock.exit
  %data_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 4
  %3 = ptrtoint ptr %data_sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_sm, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_count.i) #8
  %5 = ptrtoint ptr %old_count.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %old_count.i, align 8, !annotation !142
  %get_nr_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %get_nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_nr_blocks.i.i, align 4
  %call.i.i = call i32 %7(ptr noundef %4, ptr noundef nonnull %old_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__resize_space_map.exit_crit_edge

if.then.__resize_space_map.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__resize_space_map.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %old_count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %old_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %new_count)
  %cmp.i = icmp eq i64 %9, %new_count
  br i1 %cmp.i, label %if.end.i.__resize_space_map.exit_crit_edge, label %if.end2.i

if.end.i.__resize_space_map.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__resize_space_map.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %new_count)
  %cmp3.i = icmp ugt i64 %9, %new_count
  br i1 %cmp3.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %__resize_space_map.exit

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 %new_count, %9
  %extend.i.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %extend.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extend.i.i, align 4
  %call.i13.i = call i32 %11(ptr noundef %4, i64 noundef %sub.i) #8
  br label %__resize_space_map.exit

__resize_space_map.exit:                          ; preds = %if.end6.i, %do.end.i, %if.end.i.__resize_space_map.exit_crit_edge, %if.then.__resize_space_map.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call.i13.i, %if.end6.i ], [ %call.i.i, %if.then.__resize_space_map.exit_crit_edge ], [ 0, %if.end.i.__resize_space_map.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_count.i) #8
  br label %if.end

if.end:                                           ; preds = %__resize_space_map.exit, %pmd_write_lock.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end_crit_edge ], [ %retval.0.i, %__resize_space_map.exit ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_resize_metadata_dev(ptr noundef %pmd, i64 noundef %new_count) local_unnamed_addr #0 align 64 {
entry:
  %total.i = alloca i64, align 8
  %old_count.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not.i = icmp eq i8 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %pmd_write_lock.exit.if.end2_crit_edge

pmd_write_lock.exit.if.end2_crit_edge:            ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %pmd_write_lock.exit
  %metadata_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %3 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %metadata_sm, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_count.i) #8
  %5 = ptrtoint ptr %old_count.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %old_count.i, align 8, !annotation !142
  %get_nr_blocks.i.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %get_nr_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_nr_blocks.i.i, align 4
  %call.i.i = call i32 %7(ptr noundef %4, ptr noundef nonnull %old_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.__resize_space_map.exit.thread_crit_edge

if.then.__resize_space_map.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__resize_space_map.exit.thread

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %old_count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %old_count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %new_count)
  %cmp.i = icmp eq i64 %9, %new_count
  br i1 %cmp.i, label %__resize_space_map.exit.thread15, label %if.end2.i

__resize_space_map.exit.thread15:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_count.i) #8
  br label %if.then1

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %new_count)
  %cmp3.i = icmp ugt i64 %9, %new_count
  br i1 %cmp3.i, label %do.end.i, label %__resize_space_map.exit

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %__resize_space_map.exit.thread

__resize_space_map.exit.thread:                   ; preds = %do.end.i, %if.then.__resize_space_map.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.then.__resize_space_map.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_count.i) #8
  br label %if.end2

__resize_space_map.exit:                          ; preds = %if.end2.i
  %sub.i = sub i64 %new_count, %9
  %extend.i.i = getelementptr inbounds %struct.dm_space_map, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %extend.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extend.i.i, align 4
  %call.i13.i = call i32 %11(ptr noundef %4, i64 noundef %sub.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool.not = icmp eq i32 %call.i13.i, 0
  br i1 %tobool.not, label %__resize_space_map.exit.if.then1_crit_edge, label %__resize_space_map.exit.if.end2_crit_edge

__resize_space_map.exit.if.end2_crit_edge:        ; preds = %__resize_space_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

__resize_space_map.exit.if.then1_crit_edge:       ; preds = %__resize_space_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.then1:                                         ; preds = %__resize_space_map.exit.if.then1_crit_edge, %__resize_space_map.exit.thread15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %total.i) #8
  %12 = ptrtoint ptr %total.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %total.i, align 8, !annotation !142
  %13 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %metadata_sm, align 8
  %get_nr_blocks.i.i8 = getelementptr inbounds %struct.dm_space_map, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %get_nr_blocks.i.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_nr_blocks.i.i8, align 4
  %call.i.i9 = call i32 %16(ptr noundef %14, ptr noundef nonnull %total.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i10, label %if.else.i, label %do.end.i11

do.end.i11:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %__set_metadata_reserve.exit

if.else.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %total.i, align 8
  %div791.i.i.i = lshr i64 %18, 1
  %19 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 3689348814741910323) #13, !srcloc !143
  %20 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 %19) #13, !srcloc !144
  %21 = call i64 @llvm.umin.i64(i64 %20, i64 4096) #8
  br label %__set_metadata_reserve.exit

__set_metadata_reserve.exit:                      ; preds = %if.else.i, %do.end.i11
  %.sink.i = phi i64 [ %21, %if.else.i ], [ 4096, %do.end.i11 ]
  %22 = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 22
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %.sink.i, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %total.i) #8
  br label %if.end2

if.end2:                                          ; preds = %__set_metadata_reserve.exit, %__resize_space_map.exit.if.end2_crit_edge, %__resize_space_map.exit.thread, %pmd_write_lock.exit.if.end2_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.if.end2_crit_edge ], [ %call.i13.i, %__resize_space_map.exit.if.end2_crit_edge ], [ 0, %__set_metadata_reserve.exit ], [ %retval.0.i.ph, %__resize_space_map.exit.thread ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_pool_metadata_read_only(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %bm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  tail call void @dm_bm_set_read_only(ptr noundef %1) #8
  tail call void @up_write(ptr noundef %root_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_only(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_pool_metadata_read_write(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %bm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  tail call void @dm_bm_set_read_write(ptr noundef %1) #8
  tail call void @up_write(ptr noundef %root_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_register_metadata_threshold(ptr noundef %pmd, i64 noundef %threshold, ptr noundef %fn, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %metadata_sm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 3
  %0 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata_sm, align 8
  %register_threshold_callback.i = getelementptr inbounds %struct.dm_space_map, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %register_threshold_callback.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %register_threshold_callback.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dm_sm_register_threshold_callback.exit_crit_edge, label %if.then.i

entry.dm_sm_register_threshold_callback.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_sm_register_threshold_callback.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %1, i64 noundef %threshold, ptr noundef %fn, ptr noundef %context) #8
  br label %dm_sm_register_threshold_callback.exit

dm_sm_register_threshold_callback.exit:           ; preds = %if.then.i, %entry.dm_sm_register_threshold_callback.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -22, %entry.dm_sm_register_threshold_callback.exit_crit_edge ]
  tail call void @up_write(ptr noundef %root_lock.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_pool_register_pre_commit_callback(ptr noundef %pmd, ptr noundef %fn, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i) #8
  %pre_commit_fn = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 20
  %0 = ptrtoint ptr %pre_commit_fn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %pre_commit_fn, align 8
  %pre_commit_context = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 21
  %1 = ptrtoint ptr %pre_commit_context to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %context, ptr %pre_commit_context, align 4
  tail call void @up_write(ptr noundef %root_lock.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_pool_metadata_set_needs_check(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  %sblock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock) #8
  %0 = ptrtoint ptr %sblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock, align 4, !annotation !142
  %root_lock.i.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_write(ptr noundef %root_lock.i.i) #8
  %in_service.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %1 = ptrtoint ptr %in_service.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %in_service.i, align 8
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not.i = icmp eq i8 %2, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %entry.pmd_write_lock.exit_crit_edge, !prof !146

entry.pmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pmd_write_lock.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %3 = ptrtoint ptr %in_service.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set.i, ptr %in_service.i, align 8
  br label %pmd_write_lock.exit

pmd_write_lock.exit:                              ; preds = %if.then.i, %entry.pmd_write_lock.exit_crit_edge
  %bf.load = phi i8 [ %bf.load.i, %entry.pmd_write_lock.exit_crit_edge ], [ %bf.set.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %pmd_write_lock.exit.out_crit_edge

pmd_write_lock.exit.out_crit_edge:                ; preds = %pmd_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %pmd_write_lock.exit
  %flags = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 18
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 8
  %bm.i = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 2
  %6 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm.i, align 4
  %call.i = call i32 @dm_bm_write_lock(ptr noundef %7, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sblock, align 4
  %call4 = call ptr @dm_block_data(ptr noundef %9) #8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %flags6 = getelementptr inbounds %struct.thin_disk_superblock, ptr %call4, i32 0, i32 1
  %13 = ptrtoint ptr %flags6 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %flags6, align 1
  %14 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sblock, align 4
  call void @dm_bm_unlock(ptr noundef %15) #8
  br label %out

out:                                              ; preds = %if.end3, %do.end, %pmd_write_lock.exit.out_crit_edge
  %r.0 = phi i32 [ -22, %pmd_write_lock.exit.out_crit_edge ], [ %call.i, %do.end ], [ 0, %if.end3 ]
  call void @up_write(ptr noundef %root_lock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock) #8
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_pool_metadata_needs_check(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %flags = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call void @up_read(ptr noundef %root_lock) #8
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_pool_issue_prefetches(ptr noundef %pmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 12
  tail call void @down_read(ptr noundef %root_lock) #8
  %fail_io = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 23
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tm = getelementptr inbounds %struct.dm_pool_metadata, ptr %pmd, i32 0, i32 5
  %1 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tm, align 8
  tail call void @dm_tm_issue_prefetches(ptr noundef %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_read(ptr noundef %root_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_issue_prefetches(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_manager_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_block_manager_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_create_with_sm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_sm_disk_create(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_tm_create_non_blocking_clone(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_empty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_block_inc(ptr noundef %context, ptr nocapture noundef readonly %value_le, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp24.not.i = icmp eq i32 %count, 0
  br i1 %cmp24.not.i, label %entry.with_runs.exit_crit_edge, label %for.inc.peel.i

entry.with_runs.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %with_runs.exit

for.inc.peel.i:                                   ; preds = %entry
  %0 = ptrtoint ptr %value_le to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value_le, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #8
  %shr.i.peel.i = lshr i64 %2, 24
  %end.1.peel.i = add nuw nsw i64 %shr.i.peel.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %exitcond.peel.not.i = icmp eq i32 %count, 1
  br i1 %exitcond.peel.not.i, label %for.inc.peel.i.if.then8.i_crit_edge, label %if.then.i.preheader

for.inc.peel.i.if.then8.i_crit_edge:              ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then.i.preheader:                              ; preds = %for.inc.peel.i
  %inc_blocks.i2 = getelementptr inbounds %struct.dm_space_map, ptr %context, i32 0, i32 8
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.then.i.preheader
  %i.029.i = phi i32 [ %inc6.i, %for.inc.i.if.then.i_crit_edge ], [ 1, %if.then.i.preheader ]
  %end.027.i = phi i64 [ %end.1.i, %for.inc.i.if.then.i_crit_edge ], [ %end.1.peel.i, %if.then.i.preheader ]
  %begin.026.i = phi i64 [ %begin.1.i, %for.inc.i.if.then.i_crit_edge ], [ %shr.i.peel.i, %if.then.i.preheader ]
  %value_le.addr.025.pn.i = phi ptr [ %value_le.addr.025.i, %for.inc.i.if.then.i_crit_edge ], [ %value_le, %if.then.i.preheader ]
  %value_le.addr.025.i = getelementptr i64, ptr %value_le.addr.025.pn.i, i32 1
  %3 = ptrtoint ptr %value_le.addr.025.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %value_le.addr.025.i, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #8
  %shr.i.i = lshr i64 %5, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %end.027.i)
  %cmp1.i = icmp eq i64 %shr.i.i, %end.027.i
  br i1 %cmp1.i, label %if.then.i.for.inc.i_crit_edge, label %if.else.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %inc_blocks.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inc_blocks.i2, align 4
  %call.i3 = tail call i32 %7(ptr noundef %context, i64 noundef %begin.026.i, i64 noundef %end.027.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i.for.inc.i_crit_edge
  %begin.1.i = phi i64 [ %shr.i.i, %if.else.i ], [ %begin.026.i, %if.then.i.for.inc.i_crit_edge ]
  %end.1.in.i = phi i64 [ %shr.i.i, %if.else.i ], [ %end.027.i, %if.then.i.for.inc.i_crit_edge ]
  %end.1.i = add i64 %end.1.in.i, 1
  %inc6.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.if.then8.i_crit_edge, label %for.inc.i.if.then.i_crit_edge, !llvm.loop !149

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.i.if.then8.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then8.i:                                       ; preds = %for.inc.i.if.then8.i_crit_edge, %for.inc.peel.i.if.then8.i_crit_edge
  %end.0.lcssa39.i = phi i64 [ %end.1.peel.i, %for.inc.peel.i.if.then8.i_crit_edge ], [ %end.1.i, %for.inc.i.if.then8.i_crit_edge ]
  %begin.0.lcssa38.i = phi i64 [ %shr.i.peel.i, %for.inc.peel.i.if.then8.i_crit_edge ], [ %begin.1.i, %for.inc.i.if.then8.i_crit_edge ]
  %inc_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %context, i32 0, i32 8
  %8 = ptrtoint ptr %inc_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inc_blocks.i, align 4
  %call.i1 = tail call i32 %9(ptr noundef %context, i64 noundef %begin.0.lcssa38.i, i64 noundef %end.0.lcssa39.i) #8
  br label %with_runs.exit

with_runs.exit:                                   ; preds = %if.then8.i, %entry.with_runs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_block_dec(ptr noundef %context, ptr nocapture noundef readonly %value_le, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp24.not.i = icmp eq i32 %count, 0
  br i1 %cmp24.not.i, label %entry.with_runs.exit_crit_edge, label %for.inc.peel.i

entry.with_runs.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %with_runs.exit

for.inc.peel.i:                                   ; preds = %entry
  %0 = ptrtoint ptr %value_le to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value_le, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #8
  %shr.i.peel.i = lshr i64 %2, 24
  %end.1.peel.i = add nuw nsw i64 %shr.i.peel.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %exitcond.peel.not.i = icmp eq i32 %count, 1
  br i1 %exitcond.peel.not.i, label %for.inc.peel.i.if.then8.i_crit_edge, label %if.then.i.preheader

for.inc.peel.i.if.then8.i_crit_edge:              ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then.i.preheader:                              ; preds = %for.inc.peel.i
  %dec_blocks.i2 = getelementptr inbounds %struct.dm_space_map, ptr %context, i32 0, i32 9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %if.then.i.preheader
  %i.029.i = phi i32 [ %inc6.i, %for.inc.i.if.then.i_crit_edge ], [ 1, %if.then.i.preheader ]
  %end.027.i = phi i64 [ %end.1.i, %for.inc.i.if.then.i_crit_edge ], [ %end.1.peel.i, %if.then.i.preheader ]
  %begin.026.i = phi i64 [ %begin.1.i, %for.inc.i.if.then.i_crit_edge ], [ %shr.i.peel.i, %if.then.i.preheader ]
  %value_le.addr.025.pn.i = phi ptr [ %value_le.addr.025.i, %for.inc.i.if.then.i_crit_edge ], [ %value_le, %if.then.i.preheader ]
  %value_le.addr.025.i = getelementptr i64, ptr %value_le.addr.025.pn.i, i32 1
  %3 = ptrtoint ptr %value_le.addr.025.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %value_le.addr.025.i, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4) #8
  %shr.i.i = lshr i64 %5, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %end.027.i)
  %cmp1.i = icmp eq i64 %shr.i.i, %end.027.i
  br i1 %cmp1.i, label %if.then.i.for.inc.i_crit_edge, label %if.else.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dec_blocks.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_blocks.i2, align 4
  %call.i3 = tail call i32 %7(ptr noundef %context, i64 noundef %begin.026.i, i64 noundef %end.027.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i.for.inc.i_crit_edge
  %begin.1.i = phi i64 [ %shr.i.i, %if.else.i ], [ %begin.026.i, %if.then.i.for.inc.i_crit_edge ]
  %end.1.in.i = phi i64 [ %shr.i.i, %if.else.i ], [ %end.027.i, %if.then.i.for.inc.i_crit_edge ]
  %end.1.i = add i64 %end.1.in.i, 1
  %inc6.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.if.then8.i_crit_edge, label %for.inc.i.if.then.i_crit_edge, !llvm.loop !149

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.i.if.then8.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then8.i:                                       ; preds = %for.inc.i.if.then8.i_crit_edge, %for.inc.peel.i.if.then8.i_crit_edge
  %end.0.lcssa39.i = phi i64 [ %end.1.peel.i, %for.inc.peel.i.if.then8.i_crit_edge ], [ %end.1.i, %for.inc.i.if.then8.i_crit_edge ]
  %begin.0.lcssa38.i = phi i64 [ %shr.i.peel.i, %for.inc.peel.i.if.then8.i_crit_edge ], [ %begin.1.i, %for.inc.i.if.then8.i_crit_edge ]
  %dec_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %context, i32 0, i32 9
  %8 = ptrtoint ptr %dec_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dec_blocks.i, align 4
  %call.i1 = tail call i32 %9(ptr noundef %context, i64 noundef %begin.0.lcssa38.i, i64 noundef %end.0.lcssa39.i) #8
  br label %with_runs.exit

with_runs.exit:                                   ; preds = %if.then8.i, %entry.with_runs.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @data_block_equal(ptr nocapture noundef readnone %context, ptr nocapture noundef readonly %value1_le, ptr nocapture noundef readonly %value2_le) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value1_le to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %v1_le.0.copyload = load i64, ptr %value1_le, align 1
  %1 = ptrtoint ptr %value2_le to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %v2_le.0.copyload = load i64, ptr %value2_le, align 1
  %2 = xor i64 %v2_le.0.copyload, %v1_le.0.copyload
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %3)
  %cmp = icmp ult i64 %3, 16777216
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subtree_inc(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %value, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %root_le.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %value, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %root_le.04 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %root_le.04, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  tail call void @dm_tm_inc(ptr noundef %1, i64 noundef %4) #8
  %inc = add nuw i32 %i.05, 1
  %incdec.ptr = getelementptr i64, ptr %root_le.04, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @subtree_dec(ptr noundef %context, ptr nocapture noundef readonly %value, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4.not = icmp eq i32 %count, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %root_le.05 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %value, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %root_le.05 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %root_le.05, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %call = tail call i32 @dm_btree_del(ptr noundef %context, i64 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.06, 1
  %incdec.ptr = getelementptr i64, ptr %root_le.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @subtree_equal(ptr nocapture noundef readnone %context, ptr nocapture noundef readonly %value1_le, ptr nocapture noundef readonly %value2_le) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value1_le to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %v1_le.0.copyload = load i64, ptr %value1_le, align 1
  %1 = ptrtoint ptr %value2_le to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %v2_le.0.copyload = load i64, ptr %value2_le, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %v1_le.0.copyload, i64 %v2_le.0.copyload)
  %cmp = icmp eq i64 %v1_le.0.copyload, %v2_le.0.copyload
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_inc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_del(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_pre_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock_zero(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sb_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #8
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #8
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.thin_disk_superblock, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %blocknr, align 1
  %flags = getelementptr inbounds %struct.thin_disk_superblock, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 160774) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %call, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #8
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #8
  %blocknr = getelementptr inbounds %struct.thin_disk_superblock, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %blocknr, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i64 @dm_block_location(ptr noundef %b) #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i64 noundef %2, i64 noundef %call3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.thin_disk_superblock, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5020779106455781376, i64 %4)
  %cmp5.not = icmp eq i64 %4, -5020779106455781376
  br i1 %cmp5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i64 noundef %5, i64 noundef 27022010) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.thin_disk_superblock, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call14 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 160774) #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %call14)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %call, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp15.not = icmp eq i32 %6, %8
  br i1 %cmp15.not, label %if.end13.cleanup_crit_edge, label %do.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call14, i32 noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end13.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -15, %do.end ], [ -84, %do.end9 ], [ -84, %do.end19 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_open_with_sm(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_sm_disk_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_insert(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_lookup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_remove(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_dec(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_shadow_block(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_unlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_lookup_next(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_insert_notify(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_remove_leaves(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_find_highest_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-thin-metadata.c", i32 928, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_pool_metadata_open._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_pool_metadata_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @dm_pool_metadata_open.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-thin-metadata.c", i32 932, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-thin-metadata.c", i32 951, i32 4}
!11 = !{ptr @dm_pool_metadata_open._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @dm_pool_metadata_open._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-thin-metadata.c", i32 978, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dm_pool_metadata_close._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dm_pool_metadata_close._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-thin-metadata.c", i32 987, i32 4}
!20 = !{ptr @dm_pool_metadata_close._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dm_pool_metadata_close._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-thin-metadata.c", i32 1271, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dm_pool_set_metadata_transaction_id._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dm_pool_set_metadata_transaction_id._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-thin-metadata.c", i32 2109, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dm_pool_metadata_set_needs_check._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dm_pool_metadata_set_needs_check._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-thin-metadata.c", i32 764, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__create_persistent_data_objects._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @__create_persistent_data_objects._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-thin-metadata.c", i32 600, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__format_metadata._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @__format_metadata._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-thin-metadata.c", i32 606, i32 3}
!44 = !{ptr @__format_metadata._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @__format_metadata._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-thin-metadata.c", i32 613, i32 3}
!48 = !{ptr @__format_metadata._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @__format_metadata._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-thin-metadata.c", i32 626, i32 3}
!52 = !{ptr @__format_metadata._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @__format_metadata._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-thin-metadata.c", i32 395, i32 4}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @subtree_dec._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @subtree_dec._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-thin-metadata.c", i32 294, i32 10}
!61 = !{ptr @sb_validator, !62, !"sb_validator", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-thin-metadata.c", i32 293, i32 34}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-thin-metadata.c", i32 268, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sb_check._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sb_check._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/md/dm-thin-metadata.c", i32 275, i32 3}
!70 = !{ptr @sb_check._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sb_check._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-thin-metadata.c", i32 285, i32 3}
!74 = !{ptr @sb_check._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sb_check._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-thin-metadata.c", i32 684, i32 3}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__open_metadata._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @__open_metadata._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-thin-metadata.c", i32 692, i32 3}
!83 = !{ptr @__open_metadata._entry.42, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__open_metadata._entry_ptr.44, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-thin-metadata.c", i32 708, i32 3}
!87 = !{ptr @__open_metadata._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @__open_metadata._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-thin-metadata.c", i32 715, i32 3}
!91 = !{ptr @__open_metadata._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @__open_metadata._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @__open_metadata._entry.51, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/md/dm-thin-metadata.c", i32 722, i32 3}
!95 = !{ptr @__open_metadata._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-thin-metadata.c", i32 654, i32 3}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__check_incompat_features._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @__check_incompat_features._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-thin-metadata.c", i32 667, i32 3}
!103 = !{ptr @__check_incompat_features._entry.55, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @__check_incompat_features._entry_ptr.57, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/md/dm-thin-metadata.c", i32 913, i32 3}
!107 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__set_metadata_reserve._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @__set_metadata_reserve._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-thin-metadata.c", i32 868, i32 4}
!112 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @__commit_transaction._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @__commit_transaction._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-thin-metadata.c", i32 1312, i32 3}
!117 = !{ptr @__reserve_metadata_snap._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @__reserve_metadata_snap._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-thin-metadata.c", i32 1332, i32 3}
!121 = !{ptr @__reserve_metadata_snap._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @__reserve_metadata_snap._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-thin-metadata.c", i32 1399, i32 3}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__release_metadata_snap._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @__release_metadata_snap._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/md/dm-thin-metadata.c", i32 2023, i32 3}
!130 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__resize_space_map._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @__resize_space_map._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
!143 = !{i64 870032, i64 870059}
!144 = !{i64 870372, i64 870399, i64 870433, i64 870454}
!145 = !{i8 0, i8 2}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2154412252, i64 2154412746, i64 2154412289, i64 2154412345, i64 2154412379, i64 2154412403, i64 2154412444, i64 2154412465, i64 2154412493, i64 2154412527}
!148 = !{i64 2154443632, i64 2154444127, i64 2154443669, i64 2154443725, i64 2154443759, i64 2154443783, i64 2154443824, i64 2154443845, i64 2154443873, i64 2154443907}
!149 = distinct !{!149, !150}
!150 = !{!"llvm.loop.peeled.count", i32 1}
