; ModuleID = '/llk/IR_all_yes/drivers/md/dm-cache-metadata.c_pt.bc'
source_filename = "../drivers/md/dm-cache-metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.dm_cache_metadata = type { %struct.refcount_struct, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.dm_array_info, %struct.dm_array_info, %struct.dm_disk_bitset, %struct.rw_semaphore, i32, i64, i64, i64, i64, i64, i64, i32, i8, [16 x i8], [3 x i32], i32, %struct.dm_cache_statistics, [128 x i8], i8, i64, %struct.dm_disk_bitset, %struct.dm_array_cursor, %struct.dm_array_cursor, %struct.dm_bitset_cursor }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dm_array_info = type { ptr, %struct.dm_btree_value_type, %struct.dm_btree_info }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dm_cache_statistics = type { i32, i32, i32, i32 }
%struct.dm_disk_bitset = type { %struct.dm_array_info, i32, i64, i8 }
%struct.dm_array_cursor = type { ptr, %struct.dm_btree_cursor, ptr, ptr, i32 }
%struct.dm_btree_cursor = type { ptr, i64, i8, i32, [16 x %struct.cursor_node] }
%struct.cursor_node = type { ptr, i32 }
%struct.dm_bitset_cursor = type { ptr, %struct.dm_array_cursor, i32, i32, i32, i64 }
%struct.cache_disk_superblock = type <{ i32, i32, i64, [16 x i8], i64, i32, [16 x i8], i32, [128 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i64 }>
%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dm_cache_policy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @table_lock, i64 52), ptr getelementptr (i8, ptr @table_lock, i64 52) }, ptr @table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dm_cache_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: cache metadata: unable to shrink cache due to dirty blocks\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_cache_resize\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/md/dm-cache-metadata.c\00", [33 x i8] zeroinitializer }, align 32
@dm_cache_resize._entry_ptr = internal global ptr @dm_cache_resize._entry, section ".printk_index", align 4
@dm_cache_metadata_set_needs_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: cache metadata: couldn't read superblock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dm_cache_metadata_set_needs_check\00", [62 x i8] zeroinitializer }, align 32
@dm_cache_metadata_set_needs_check._entry_ptr = internal global ptr @dm_cache_metadata_set_needs_check._entry, section ".printk_index", align 4
@table = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @table, ptr @table }, [24 x i8] zeroinitializer }, align 32
@metadata_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: cache metadata: could not allocate metadata struct\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"metadata_open\00", [18 x i8] zeroinitializer }, align 32
@metadata_open._entry_ptr = internal global ptr @metadata_open._entry, section ".printk_index", align 4
@metadata_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cmd->root_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@same_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013device-mapper: cache metadata: data_block_size (%llu) different from that in metadata (%llu)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"same_params\00", [20 x i8] zeroinitializer }, align 32
@same_params._entry_ptr = internal global ptr @same_params._entry, section ".printk_index", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"table_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"table_lock\00", [21 x i8] zeroinitializer }, align 32
@blocks_are_clean_separate_dirty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: cache metadata: %s: dm_bitset_cursor_begin for dirty failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"blocks_are_clean_separate_dirty\00", [32 x i8] zeroinitializer }, align 32
@blocks_are_clean_separate_dirty._entry_ptr = internal global ptr @blocks_are_clean_separate_dirty._entry, section ".printk_index", align 4
@blocks_are_clean_separate_dirty._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: cache metadata: %s: dm_bitset_cursor_skip for dirty failed\0A\00", [51 x i8] zeroinitializer }, align 32
@blocks_are_clean_separate_dirty._entry_ptr.16 = internal global ptr @blocks_are_clean_separate_dirty._entry.14, section ".printk_index", align 4
@blocks_are_clean_separate_dirty._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: cache metadata: %s: cache block %llu is dirty\0A\00", [32 x i8] zeroinitializer }, align 32
@blocks_are_clean_separate_dirty._entry_ptr.19 = internal global ptr @blocks_are_clean_separate_dirty._entry.17, section ".printk_index", align 4
@blocks_are_clean_separate_dirty._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: cache metadata: %s: dm_bitset_cursor_next for dirty failed\0A\00", [51 x i8] zeroinitializer }, align 32
@blocks_are_clean_separate_dirty._entry_ptr.22 = internal global ptr @blocks_are_clean_separate_dirty._entry.20, section ".printk_index", align 4
@blocks_are_clean_combined_dirty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: cache metadata: block_clean_combined_dirty failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"blocks_are_clean_combined_dirty\00", [32 x i8] zeroinitializer }, align 32
@blocks_are_clean_combined_dirty._entry_ptr = internal global ptr @blocks_are_clean_combined_dirty._entry, section ".printk_index", align 4
@blocks_are_clean_combined_dirty._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: cache metadata: cache block %llu is dirty\0A\00", [36 x i8] zeroinitializer }, align 32
@blocks_are_clean_combined_dirty._entry_ptr.27 = internal global ptr @blocks_are_clean_combined_dirty._entry.25, section ".printk_index", align 4
@__load_mappings._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1466, ptr null, ptr null }, align 1
@.str.28 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: cache metadata: dm_array_cursor_next for mapping failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__load_mappings\00", [16 x i8] zeroinitializer }, align 32
@__load_mappings._entry_ptr = internal global ptr @__load_mappings._entry, section ".printk_index", align 4
@__load_mappings._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 1481, ptr null, ptr null }, align 1
@.str.31 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: cache metadata: dm_bitset_cursor_next for dirty failed\0A\00", [55 x i8] zeroinitializer }, align 32
@__load_mappings._entry_ptr.32 = internal global ptr @__load_mappings._entry.30, section ".printk_index", align 4
@__load_mapping_v2._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1401, ptr null, ptr null }, align 1
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: cache metadata: policy couldn't load cache block %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__load_mapping_v2\00", [46 x i8] zeroinitializer }, align 32
@__load_mapping_v2._entry_ptr = internal global ptr @__load_mapping_v2._entry, section ".printk_index", align 4
@__load_mapping_v1._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.2, i32 1359, ptr null, ptr null }, align 1
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__load_mapping_v1\00", [46 x i8] zeroinitializer }, align 32
@__load_mapping_v1._entry_ptr = internal global ptr @__load_mapping_v1._entry, section ".printk_index", align 4
@__set_dirty_bits_v2._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1602, ptr null, ptr null }, align 1
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: cache metadata: dirty bitset is wrong size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__set_dirty_bits_v2\00", [44 x i8] zeroinitializer }, align 32
@__set_dirty_bits_v2._entry_ptr = internal global ptr @__set_dirty_bits_v2._entry, section ".printk_index", align 4
@sb_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.38, ptr @sb_prepare_for_write, ptr @sb_check }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"superblock\00", [21 x i8] zeroinitializer }, align 32
@sb_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: cache metadata: sb_check failed: blocknr %llu: wanted %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sb_check\00", [23 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr = internal global ptr @sb_check._entry, section ".printk_index", align 4
@sb_check._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: cache metadata: sb_check failed: magic %llu: wanted %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.43 = internal global ptr @sb_check._entry.41, section ".printk_index", align 4
@sb_check._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013device-mapper: cache metadata: sb_check failed: csum %u: wanted %u\0A\00", [58 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.46 = internal global ptr @sb_check._entry.44, section ".printk_index", align 4
@check_metadata_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\013device-mapper: cache metadata: Cache metadata version %u found, but only versions between %u and %u supported.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_metadata_version\00", [41 x i8] zeroinitializer }, align 32
@check_metadata_version._entry_ptr = internal global ptr @check_metadata_version._entry, section ".printk_index", align 4
@__create_persistent_data_objects._entry = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 539, ptr null, ptr null }, align 1
@.str.49 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: cache metadata: could not create block manager\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__create_persistent_data_objects\00", [63 x i8] zeroinitializer }, align 32
@__create_persistent_data_objects._entry_ptr = internal global ptr @__create_persistent_data_objects._entry, section ".printk_index", align 4
@__format_metadata._entry = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 397, ptr null, ptr null }, align 1
@.str.51 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: cache metadata: tm_create_with_sm failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__format_metadata\00", [46 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr = internal global ptr @__format_metadata._entry, section ".printk_index", align 4
@__open_metadata._entry = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 474, ptr null, ptr null }, align 1
@.str.53 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: cache metadata: couldn't read lock superblock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__open_metadata\00", [16 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr = internal global ptr @__open_metadata._entry, section ".printk_index", align 4
@__open_metadata._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 484, ptr null, ptr null }, align 1
@.str.56 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013device-mapper: cache metadata: changing the data block size (from %u to %llu) is not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.57 = internal global ptr @__open_metadata._entry.55, section ".printk_index", align 4
@__open_metadata._entry.58 = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 498, ptr null, ptr null }, align 1
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: cache metadata: tm_open_with_sm failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.60 = internal global ptr @__open_metadata._entry.58, section ".printk_index", align 4
@__check_incompat_features._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 445, ptr null, ptr null }, align 1
@.str.61 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013device-mapper: cache metadata: could not access metadata due to unsupported optional features (%lx).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__check_incompat_features\00", [38 x i8] zeroinitializer }, align 32
@__check_incompat_features._entry_ptr = internal global ptr @__check_incompat_features._entry, section ".printk_index", align 4
@__check_incompat_features._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 458, ptr null, ptr null }, align 1
@.str.64 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013device-mapper: cache metadata: could not access metadata RDWR due to unsupported optional features (%lx).\0A\00", [51 x i8] zeroinitializer }, align 32
@__check_incompat_features._entry_ptr.65 = internal global ptr @__check_incompat_features._entry.63, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"table_lock\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1063, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1786, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 792, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 757, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 763, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 843, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 791, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 944, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 950, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 962, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 975, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 913, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 918, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1466, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1481, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1400, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1358, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1602, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"sb_validator\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 229, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 230, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 204, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 211, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 221, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 188, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 539, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 397, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 474, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 482, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 498, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 444, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [34 x i8] c"../drivers/md/dm-cache-metadata.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 457, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__check_incompat_features._entry, ptr @__check_incompat_features._entry.63, ptr @__check_incompat_features._entry_ptr, ptr @__check_incompat_features._entry_ptr.65, ptr @__create_persistent_data_objects._entry, ptr @__create_persistent_data_objects._entry_ptr, ptr @__format_metadata._entry, ptr @__format_metadata._entry_ptr, ptr @__load_mapping_v1._entry, ptr @__load_mapping_v1._entry_ptr, ptr @__load_mapping_v2._entry, ptr @__load_mapping_v2._entry_ptr, ptr @__load_mappings._entry, ptr @__load_mappings._entry.30, ptr @__load_mappings._entry_ptr, ptr @__load_mappings._entry_ptr.32, ptr @__open_metadata._entry, ptr @__open_metadata._entry.55, ptr @__open_metadata._entry.58, ptr @__open_metadata._entry_ptr, ptr @__open_metadata._entry_ptr.57, ptr @__open_metadata._entry_ptr.60, ptr @__set_dirty_bits_v2._entry, ptr @__set_dirty_bits_v2._entry_ptr, ptr @blocks_are_clean_combined_dirty._entry, ptr @blocks_are_clean_combined_dirty._entry.25, ptr @blocks_are_clean_combined_dirty._entry_ptr, ptr @blocks_are_clean_combined_dirty._entry_ptr.27, ptr @blocks_are_clean_separate_dirty._entry, ptr @blocks_are_clean_separate_dirty._entry.14, ptr @blocks_are_clean_separate_dirty._entry.17, ptr @blocks_are_clean_separate_dirty._entry.20, ptr @blocks_are_clean_separate_dirty._entry_ptr, ptr @blocks_are_clean_separate_dirty._entry_ptr.16, ptr @blocks_are_clean_separate_dirty._entry_ptr.19, ptr @blocks_are_clean_separate_dirty._entry_ptr.22, ptr @check_metadata_version._entry, ptr @check_metadata_version._entry_ptr, ptr @dm_cache_metadata_set_needs_check._entry, ptr @dm_cache_metadata_set_needs_check._entry_ptr, ptr @dm_cache_resize._entry, ptr @dm_cache_resize._entry_ptr, ptr @metadata_open._entry, ptr @metadata_open._entry_ptr, ptr @same_params._entry, ptr @same_params._entry_ptr, ptr @sb_check._entry, ptr @sb_check._entry.41, ptr @sb_check._entry.44, ptr @sb_check._entry_ptr, ptr @sb_check._entry_ptr.43, ptr @sb_check._entry_ptr.46, ptr @table_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @table, ptr @.str.5, ptr @.str.6, ptr @metadata_open.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sb_validator, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cache_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_cache_metadata_set_needs_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @same_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_separate_dirty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_separate_dirty._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_separate_dirty._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_separate_dirty._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_combined_dirty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocks_are_clean_combined_dirty._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_metadata_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_cache_metadata_open(ptr noundef %bdev, i64 noundef %data_block_size, i1 noundef zeroext %may_format_device, i32 noundef %policy_hint_size, i32 noundef %metadata_version) local_unnamed_addr #0 align 64 {
entry:
  %flags.addr.i.i.i.i = alloca i32, align 4
  %sblock.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ @table, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @table
  br i1 %cmp.not.i.i, label %lookup.exit.thread.i, label %for.body.i.i

lookup.exit.thread.i:                             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bdev1.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %1 = ptrtoint ptr %bdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev1.i.i, align 8
  %cmp2.i.i = icmp eq ptr %2, %bdev
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %cmd.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd.0.le.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cmd.0.le.i.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd.0.le.i.i, ptr %cmd.0.le.i.i, i32 1, ptr elementtype(i32) %cmd.0.le.i.i) #12, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.lookup.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.lookup.exit.i_crit_edge:        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %cmd.0.le.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %lookup.exit.i

lookup.exit.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.lookup.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  %tobool.not.i = icmp eq ptr %cmd.0.le.i.i, null
  br i1 %tobool.not.i, label %lookup.exit.i.if.end.i_crit_edge, label %lookup.exit.i.lookup_or_open.exit_crit_edge

lookup.exit.i.lookup_or_open.exit_crit_edge:      ; preds = %lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_or_open.exit

lookup.exit.i.if.end.i_crit_edge:                 ; preds = %lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %lookup.exit.i.if.end.i_crit_edge, %lookup.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1192) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %lookup_or_open.exit.thread, label %if.end.i.i

lookup_or_open.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %version.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %metadata_version, ptr %version.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #12
  %7 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call7.i.i.i.i, align 8
  %root_lock.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 10
  tail call void @__init_rwsem(ptr noundef %root_lock.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @metadata_open.__key) #12
  %bdev6.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %bdev6.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bdev, ptr %bdev6.i.i, align 8
  %data_block_size7.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %data_block_size7.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %data_block_size, ptr %data_block_size7.i.i, align 8
  %cache_blocks.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %cache_blocks.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cache_blocks.i.i, align 8
  %policy_hint_size8.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 22
  %11 = ptrtoint ptr %policy_hint_size8.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %policy_hint_size, ptr %policy_hint_size8.i.i, align 4
  %changed.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %changed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %changed.i.i, align 4
  %fail_io.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %fail_io.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load9.i.i = load i8, ptr %fail_io.i.i, align 8
  %bf.clear10.i.i = and i8 %bf.load9.i.i, 127
  store i8 %bf.clear10.i.i, ptr %fail_io.i.i, align 8
  %call13.i.i = tail call fastcc i32 @__create_persistent_data_objects(ptr noundef nonnull %call7.i.i.i.i, i1 noundef zeroext %may_format_device) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end17.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  %14 = inttoptr i32 %call13.i.i to ptr
  br label %metadata_open.exit.i

if.end17.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i.i) #12
  %15 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i.i, align 4, !annotation !145
  %bm.i.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %call7.i.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %bm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bm.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @dm_bm_write_lock(ptr noundef %17, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end17.i.i.__begin_transaction_flags.exit.i.i_crit_edge

if.end17.i.i.__begin_transaction_flags.exit.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__begin_transaction_flags.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sblock.i.i.i, align 4
  %call1.i.i.i = call ptr @dm_block_data(ptr noundef %19) #12
  %flags.i.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call1.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %flags.i.i.i.i, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.addr.i.i.i.i) #12
  %23 = ptrtoint ptr %flags.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags.addr.i.i.i.i, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %flags.addr.i.i.i.i) #12
  %24 = ptrtoint ptr %flags.addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.addr.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.addr.i.i.i.i) #12
  %26 = call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %flags.i.i.i.i, align 1
  call fastcc void @read_superblock_fields(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %call1.i.i.i) #12
  %28 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sblock.i.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %29) #12
  %30 = ptrtoint ptr %bm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bm.i.i.i.i, align 4
  %call2.i.i.i = call i32 @dm_bm_flush(ptr noundef %31) #12
  br label %__begin_transaction_flags.exit.i.i

__begin_transaction_flags.exit.i.i:               ; preds = %if.end.i.i.i, %if.end17.i.i.__begin_transaction_flags.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.end.i.i.i ], [ %call.i.i.i.i, %if.end17.i.i.__begin_transaction_flags.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %if.then19.i.i, label %__begin_transaction_flags.exit.i.i.metadata_open.exit.i_crit_edge

__begin_transaction_flags.exit.i.i.metadata_open.exit.i_crit_edge: ; preds = %__begin_transaction_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %metadata_open.exit.i

if.then19.i.i:                                    ; preds = %__begin_transaction_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_cache_metadata_close(ptr noundef nonnull %call7.i.i.i.i) #12
  %32 = inttoptr i32 %retval.0.i.i.i to ptr
  br label %metadata_open.exit.i

metadata_open.exit.i:                             ; preds = %if.then19.i.i, %__begin_transaction_flags.exit.i.i.metadata_open.exit.i_crit_edge, %if.then15.i.i
  %retval.0.i20.i = phi ptr [ %14, %if.then15.i.i ], [ %32, %if.then19.i.i ], [ %call7.i.i.i.i, %__begin_transaction_flags.exit.i.i.metadata_open.exit.i_crit_edge ]
  %cmp.i21.i = icmp ugt ptr %retval.0.i20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21.i, label %metadata_open.exit.i.lookup_or_open.exit_crit_edge, label %if.then4.i

metadata_open.exit.i.lookup_or_open.exit_crit_edge: ; preds = %metadata_open.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_or_open.exit

if.then4.i:                                       ; preds = %metadata_open.exit.i
  call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  br label %for.cond.i25.i

for.cond.i25.i:                                   ; preds = %for.body.i28.i.for.cond.i25.i_crit_edge, %if.then4.i
  %.pn.in.i22.i = phi ptr [ @table, %if.then4.i ], [ %.pn.i23.i, %for.body.i28.i.for.cond.i25.i_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.i22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i23.i = load ptr, ptr %.pn.in.i22.i, align 4
  %cmp.not.i24.i = icmp eq ptr %.pn.i23.i, @table
  br i1 %cmp.not.i24.i, label %for.cond.i25.i.if.end8.i_crit_edge, label %for.body.i28.i

for.cond.i25.i.if.end8.i_crit_edge:               ; preds = %for.cond.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.body.i28.i:                                   ; preds = %for.cond.i25.i
  %bdev1.i26.i = getelementptr i8, ptr %.pn.i23.i, i32 12
  %34 = ptrtoint ptr %bdev1.i26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdev1.i26.i, align 8
  %cmp2.i27.i = icmp eq ptr %35, %bdev
  br i1 %cmp2.i27.i, label %if.then.i33.i, label %for.body.i28.i.for.cond.i25.i_crit_edge

for.body.i28.i.for.cond.i25.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i25.i

if.then.i33.i:                                    ; preds = %for.body.i28.i
  %cmd.0.le.i29.i = getelementptr i8, ptr %.pn.i23.i, i32 -4
  %call.i.i.i.i.i.i30.i = call zeroext i1 @__kasan_check_write(ptr noundef %cmd.0.le.i29.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %cmd.0.le.i29.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd.0.le.i29.i, ptr %cmd.0.le.i29.i, i32 1, ptr elementtype(i32) %cmd.0.le.i29.i) #12, !srcloc !142
  %asmresult.i.i.i.i.i.i31.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i31.i)
  %tobool1.not.i.i.i.i32.i = icmp eq i32 %asmresult.i.i.i.i.i.i31.i, 0
  br i1 %tobool1.not.i.i.i.i32.i, label %if.then.i33.i.if.end15.sink.split.i.i.i.i38.i_crit_edge, label %if.else.i.i.i.i36.i, !prof !143

if.then.i33.i.if.end15.sink.split.i.i.i.i38.i_crit_edge: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i38.i

if.else.i.i.i.i36.i:                              ; preds = %if.then.i33.i
  %add.i.i.i.i34.i = add i32 %asmresult.i.i.i.i.i.i31.i, 1
  %37 = or i32 %add.i.i.i.i34.i, %asmresult.i.i.i.i.i.i31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i35.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i35.i, label %if.else.i.i.i.i36.i.lookup.exit40.i_crit_edge, label %if.else.i.i.i.i36.i.if.end15.sink.split.i.i.i.i38.i_crit_edge, !prof !144

if.else.i.i.i.i36.i.if.end15.sink.split.i.i.i.i38.i_crit_edge: ; preds = %if.else.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i38.i

if.else.i.i.i.i36.i.lookup.exit40.i_crit_edge:    ; preds = %if.else.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup.exit40.i

if.end15.sink.split.i.i.i.i38.i:                  ; preds = %if.else.i.i.i.i36.i.if.end15.sink.split.i.i.i.i38.i_crit_edge, %if.then.i33.i.if.end15.sink.split.i.i.i.i38.i_crit_edge
  %.sink.i.i.i.i37.i = phi i32 [ 2, %if.then.i33.i.if.end15.sink.split.i.i.i.i38.i_crit_edge ], [ 1, %if.else.i.i.i.i36.i.if.end15.sink.split.i.i.i.i38.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %cmd.0.le.i29.i, i32 noundef %.sink.i.i.i.i37.i) #12
  br label %lookup.exit40.i

lookup.exit40.i:                                  ; preds = %if.end15.sink.split.i.i.i.i38.i, %if.else.i.i.i.i36.i.lookup.exit40.i_crit_edge
  %tobool6.not.i = icmp eq ptr %cmd.0.le.i29.i, null
  br i1 %tobool6.not.i, label %lookup.exit40.i.if.end8.i_crit_edge, label %if.then7.i

lookup.exit40.i.if.end8.i_crit_edge:              ; preds = %lookup.exit40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then7.i:                                       ; preds = %lookup.exit40.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  %metadata_sm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i20.i, i32 0, i32 5
  %38 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %metadata_sm.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void %41(ptr noundef %39) #12
  %tm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i20.i, i32 0, i32 6
  %42 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tm.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %43) #12
  %bm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i20.i, i32 0, i32 4
  %44 = ptrtoint ptr %bm.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bm.i.i, align 4
  call void @dm_block_manager_destroy(ptr noundef %45) #12
  call void @kfree(ptr noundef %retval.0.i20.i) #12
  br label %lookup_or_open.exit

if.end8.i:                                        ; preds = %lookup.exit40.i.if.end8.i_crit_edge, %for.cond.i25.i.if.end8.i_crit_edge
  %list.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i20.i, i32 0, i32 1
  %46 = load ptr, ptr @table, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @table, ptr noundef %46) #12
  br i1 %call.i.i.i, label %if.end.i.i41.i, label %if.end8.i.list_add.exit.i_crit_edge

if.end8.i.list_add.exit.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i41.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i20.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @table, ptr %prev3.i.i.i, align 4
  store volatile ptr %list.i, ptr @table, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i41.i, %if.end8.i.list_add.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  br label %lookup_or_open.exit

lookup_or_open.exit:                              ; preds = %list_add.exit.i, %if.then7.i, %metadata_open.exit.i.lookup_or_open.exit_crit_edge, %lookup.exit.i.lookup_or_open.exit_crit_edge
  %retval.0.i = phi ptr [ %cmd.0.le.i29.i, %if.then7.i ], [ %cmd.0.le.i.i, %lookup.exit.i.lookup_or_open.exit_crit_edge ], [ %retval.0.i20.i, %list_add.exit.i ], [ %retval.0.i20.i, %metadata_open.exit.i.lookup_or_open.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lookup_or_open.exit.cleanup_crit_edge, label %land.lhs.true

lookup_or_open.exit.cleanup_crit_edge:            ; preds = %lookup_or_open.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %lookup_or_open.exit
  %data_block_size1.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %retval.0.i, i32 0, i32 17
  %50 = ptrtoint ptr %data_block_size1.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %data_block_size1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %data_block_size)
  %cmp.not.i = icmp eq i64 %51, %data_block_size
  br i1 %cmp.not.i, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %data_block_size, i64 noundef %51) #16
  call void @dm_cache_metadata_close(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %lookup_or_open.exit.cleanup_crit_edge, %lookup_or_open.exit.thread
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %retval.0.i, %lookup_or_open.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %lookup_or_open.exit.thread ], [ %retval.0.i, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_metadata_close(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr %cmd, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd, ptr %cmd, i32 1, ptr elementtype(i32) %cmd) #12, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end2_crit_edge, label %if.then10.i.i.i, !prof !144

if.end5.i.i.i.if.end2_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %cmd, i32 noundef 3) #12
  br label %if.end2

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @mutex_lock_nested(ptr noundef nonnull @table_lock, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @table_lock) #12
  %fail_io = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %9 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %fail_io, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then1, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then1:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_sm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metadata_sm.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %11) #12
  %tm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 6
  %14 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %15) #12
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %16 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %17) #12
  br label %if.end

if.end:                                           ; preds = %if.then1, %list_del.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %cmd) #12
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end2_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_resize(ptr noundef %cmd, i32 noundef %new_cache_size) local_unnamed_addr #0 align 64 {
entry:
  %clean = alloca i8, align 1
  %null_mapping = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clean) #12
  %0 = ptrtoint ptr %clean to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %clean, align 1, !annotation !145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %null_mapping) #12
  %1 = ptrtoint ptr %null_mapping to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %null_mapping, align 8
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %2 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %4) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %cache_blocks = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %5 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %new_cache_size)
  %cmp = icmp ugt i32 %6, %new_cache_size
  br i1 %cmp, label %if.then4, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then4:                                         ; preds = %do.end
  %call6 = call fastcc i32 @blocks_are_unmapped_or_clean(ptr noundef %cmd, i32 noundef %new_cache_size, i32 noundef %6, ptr noundef nonnull %clean)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then4.out_crit_edge

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.then4
  %7 = ptrtoint ptr %clean to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %clean, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %do.end13, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %out

if.end16:                                         ; preds = %if.end8.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %info = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %root, align 8
  %11 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache_blocks, align 8
  %call21 = call i32 @dm_array_resize(ptr noundef %info, i64 noundef %10, i32 noundef %12, i32 noundef %new_cache_size, ptr noundef nonnull %null_mapping, ptr noundef %root) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end24:                                         ; preds = %if.end16
  %version.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp ugt i32 %14, 1
  br i1 %cmp.i, label %if.then26, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then26:                                        ; preds = %if.end24
  %dirty_info = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  %dirty_root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %15 = ptrtoint ptr %dirty_root to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dirty_root, align 8
  %17 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cache_blocks, align 8
  %call31 = call i32 @dm_bitset_resize(ptr noundef %dirty_info, i64 noundef %16, i32 noundef %18, i32 noundef %new_cache_size, i1 noundef zeroext false, ptr noundef %dirty_root) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then26.if.end35_crit_edge, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %if.then26.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %19 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new_cache_size, ptr %cache_blocks, align 8
  %changed = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %20 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %changed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %changed, align 4
  br label %out

out:                                              ; preds = %if.end35, %if.then26.out_crit_edge, %if.end16.out_crit_edge, %do.end13, %if.then4.out_crit_edge
  %r.1 = phi i32 [ %call6, %if.then4.out_crit_edge ], [ %call21, %if.end16.out_crit_edge ], [ %call31, %if.then26.out_crit_edge ], [ 0, %if.end35 ], [ -22, %do.end13 ]
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %r.1, %out ], [ -22, %cmd_write_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %null_mapping) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clean) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blocks_are_unmapped_or_clean(ptr noundef %cmd, i32 noundef %begin, i32 noundef %end, ptr nocapture noundef writeonly %result) unnamed_addr #0 align 64 {
entry:
  %value.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %result, align 1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cache_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %3 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i8 = icmp eq i32 %4, 0
  br i1 %cmp.i8, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.then
  %dirty_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  %dirty_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %5 = ptrtoint ptr %dirty_root.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dirty_root.i, align 8
  %dirty_cursor.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 30
  %call3.i = tail call i32 @dm_bitset_cursor_begin(ptr noundef %dirty_info.i, i64 noundef %6, i32 noundef %4, ptr noundef %dirty_cursor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @dm_bitset_cursor_skip(ptr noundef %dirty_cursor.i, i32 noundef %begin) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.while.cond.i_crit_edge, label %do.end14.i

if.end6.i.while.cond.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.cond.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #16
  tail call void @dm_bitset_cursor_end(ptr noundef %dirty_cursor.i) #12
  br label %return

while.cond.i:                                     ; preds = %if.end37.i.while.cond.i_crit_edge, %if.end6.i.while.cond.i_crit_edge
  %begin.addr.0.i = phi i32 [ %add.i, %if.end37.i.while.cond.i_crit_edge ], [ %begin, %if.end6.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %begin.addr.0.i, i32 %end)
  %cmp19.not.i = icmp eq i32 %begin.addr.0.i, %end
  br i1 %cmp19.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %call21.i = tail call zeroext i1 @dm_bitset_cursor_get_value(ptr noundef %dirty_cursor.i) #12
  br i1 %call21.i, label %do.end26.i, label %if.end31.i

do.end26.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i32 %begin.addr.0.i to i64
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i64 noundef %conv.i) #16
  tail call void @dm_bitset_cursor_end(ptr noundef %dirty_cursor.i) #12
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %result, align 1
  br label %return

if.end31.i:                                       ; preds = %while.body.i
  %add.i = add i32 %begin.addr.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end)
  %cmp34.i = icmp eq i32 %add.i, %end
  br i1 %cmp34.i, label %if.end31.i.while.end.i_crit_edge, label %if.end37.i

if.end31.i.while.end.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end37.i:                                       ; preds = %if.end31.i
  %call39.i = tail call i32 @dm_bitset_cursor_next(ptr noundef %dirty_cursor.i) #12
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.while.cond.i_crit_edge, label %do.end44.i

if.end37.i.while.cond.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end44.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13) #16
  tail call void @dm_bitset_cursor_end(ptr noundef %dirty_cursor.i) #12
  br label %return

while.end.i:                                      ; preds = %if.end31.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  tail call void @dm_bitset_cursor_end(ptr noundef %dirty_cursor.i) #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %begin, i32 %end)
  %cmp.not22.i = icmp eq i32 %begin, %end
  br i1 %cmp.not22.i, label %if.else.return_crit_edge, label %while.body.lr.ph.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

while.body.lr.ph.i:                               ; preds = %if.else
  %info.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  br label %while.body.i9

while.body.i9:                                    ; preds = %if.end10.i.while.body.i9_crit_edge, %while.body.lr.ph.i
  %begin.addr.023.i = phi i32 [ %begin, %while.body.lr.ph.i ], [ %add.i14, %if.end10.i.while.body.i9_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #12
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %value.i.i, align 8, !annotation !145
  %9 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %root.i.i, align 8
  %call1.i.i = call i32 @dm_array_get_value(ptr noundef %info.i.i, i64 noundef %10, i32 noundef %begin.addr.023.i, ptr noundef nonnull %value.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i11, label %do.end.i10

do.end.i10:                                       ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #12
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #16
  br label %return

if.end.i11:                                       ; preds = %while.body.i9
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value.i.i, align 8
  %13 = and i64 %12, 216172782113783808
  call void @__sanitizer_cov_trace_const_cmp8(i64 216172782113783808, i64 %13)
  %14 = icmp ne i64 %13, 216172782113783808
  %frombool.i.i = zext i1 %14 to i8
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i.i, ptr %result, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #12
  br i1 %14, label %if.end10.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i12 = zext i32 %begin.addr.023.i to i64
  %call9.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i64 noundef %conv.i12) #16
  br label %return

if.end10.i:                                       ; preds = %if.end.i11
  %add.i14 = add i32 %begin.addr.023.i, 1
  %cmp.not.i = icmp eq i32 %add.i14, %end
  br i1 %cmp.not.i, label %if.end10.i.return_crit_edge, label %if.end10.i.while.body.i9_crit_edge

if.end10.i.while.body.i9_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i9

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %if.end10.i.return_crit_edge, %do.end6.i, %do.end.i10, %if.else.return_crit_edge, %while.end.i, %do.end44.i, %do.end26.i, %do.end14.i, %do.end.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call3.i, %do.end.i ], [ %call9.i, %do.end14.i ], [ 0, %do.end26.i ], [ 0, %while.end.i ], [ %call39.i, %do.end44.i ], [ 0, %if.then.return_crit_edge ], [ %call1.i.i, %do.end.i10 ], [ 0, %do.end6.i ], [ 0, %if.else.return_crit_edge ], [ 0, %if.end10.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_discard_bitset_resize(ptr noundef %cmd, i64 noundef %discard_block_size, i64 noundef %new_nr_entries) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %discard_info = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  %discard_root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %3 = ptrtoint ptr %discard_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %discard_root, align 8
  %discard_nr_blocks = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 16
  %5 = ptrtoint ptr %discard_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %discard_nr_blocks, align 8
  %conv = trunc i64 %6 to i32
  %conv3 = trunc i64 %new_nr_entries to i32
  %call5 = tail call i32 @dm_bitset_resize(ptr noundef %discard_info, i64 noundef %4, i32 noundef %conv, i32 noundef %conv3, i1 noundef zeroext false, ptr noundef %discard_root) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %discard_block_size7 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  %7 = ptrtoint ptr %discard_block_size7 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %discard_block_size, ptr %discard_block_size7, align 8
  %8 = ptrtoint ptr %discard_nr_blocks to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %new_nr_entries, ptr %discard_nr_blocks, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %changed = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %9 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %changed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %changed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_set_discard(ptr noundef %cmd, i64 noundef %dblock, i1 noundef zeroext %discard) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %cond.i = select i1 %discard, ptr @__set_discard, ptr @__clear_discard
  %call.i4 = tail call i32 %cond.i(ptr noundef %cmd, i64 noundef %dblock) #12, !callees !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %changed.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %3 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i5 = load i8, ptr %changed.i, align 4
  %bf.set.i = or i8 %bf.load.i5, -128
  store i8 %bf.set.i, ptr %changed.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call.i4, %do.end.cleanup_crit_edge ], [ %call.i4, %if.end.i ]
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_load_discards(ptr noundef %cmd, ptr nocapture noundef readonly %fn, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %c.i = alloca %struct.dm_bitset_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %cmd_read_lock.exit

cmd_read_lock.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %c.i) #12
  %1 = call ptr @memset(ptr %c.i, i32 255, i32 208)
  %discard_nr_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %discard_nr_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i = icmp eq i64 %3, 0
  br i1 %cmp.i, label %do.end.__load_discards.exit_crit_edge, label %if.end.i

do.end.__load_discards.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_discards.exit

if.end.i:                                         ; preds = %do.end
  %clean_when_opened.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %4 = ptrtoint ptr %clean_when_opened.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i4 = load i8, ptr %clean_when_opened.i, align 4
  %5 = and i8 %bf.load.i4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not.i5 = icmp eq i8 %5, 0
  br i1 %bf.cast.not.i5, label %for.cond32.preheader.i, label %if.then1.i

for.cond32.preheader.i:                           ; preds = %if.end.i
  %discard_block_size38.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  br label %for.body.i

if.then1.i:                                       ; preds = %if.end.i
  %discard_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  %discard_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %6 = ptrtoint ptr %discard_root.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %discard_root.i, align 8
  %call3.i = tail call i32 @dm_bitset_flush(ptr noundef %discard_info.i, i64 noundef %7, ptr noundef %discard_root.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then1.i.__load_discards.exit_crit_edge

if.then1.i.__load_discards.exit_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_discards.exit

if.end5.i:                                        ; preds = %if.then1.i
  %8 = ptrtoint ptr %discard_root.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %discard_root.i, align 8
  %10 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %discard_nr_blocks.i, align 8
  %conv.i = trunc i64 %11 to i32
  %call10.i = call i32 @dm_bitset_cursor_begin(ptr noundef %discard_info.i, i64 noundef %9, i32 noundef %conv.i, ptr noundef nonnull %c.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond.preheader.i, label %if.end5.i.__load_discards.exit_crit_edge

if.end5.i.__load_discards.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_discards.exit

for.cond.preheader.i:                             ; preds = %if.end5.i
  %discard_block_size.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  %12 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %discard_block_size.i, align 8
  %call1677.i = call zeroext i1 @dm_bitset_cursor_get_value(ptr noundef nonnull %c.i) #12
  %call1778.i = call i32 %fn(ptr noundef %context, i64 noundef %13, i64 noundef 0, i1 noundef zeroext %call1677.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1778.i)
  %tobool18.not79.i = icmp eq i32 %call1778.i, 0
  br i1 %tobool18.not79.i, label %for.cond.preheader.i.if.end20.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.if.end20.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end20.i

for.cond.i:                                       ; preds = %if.end27.i
  %inc.i = add i32 %indvars.i, 1
  %14 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %discard_block_size.i, align 8
  %conv14.i = zext i32 %inc.i to i64
  %call16.i = call zeroext i1 @dm_bitset_cursor_get_value(ptr noundef nonnull %c.i) #12
  %call17.i = call i32 %fn(ptr noundef %context, i64 noundef %15, i64 noundef %conv14.i, i1 noundef zeroext %call16.i) #12
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.cond.i.if.end20.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.i.if.end20.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %for.cond.i.if.end20.i_crit_edge, %for.cond.preheader.i.if.end20.i_crit_edge
  %conv1481.i = phi i64 [ %conv14.i, %for.cond.i.if.end20.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end20.i_crit_edge ]
  %indvars.i = trunc i64 %conv1481.i to i32
  %16 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %discard_nr_blocks.i, align 8
  %sub.i = add i64 %17, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv1481.i)
  %cmp24.not.i = icmp ugt i64 %sub.i, %conv1481.i
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end27.i:                                       ; preds = %if.end20.i
  %call28.i = call i32 @dm_bitset_cursor_next(ptr noundef nonnull %c.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond.i, label %if.end27.i.for.end.i_crit_edge

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end27.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %r.0.i = phi i32 [ %call1778.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %call17.i, %for.cond.i.for.end.i_crit_edge ], [ 0, %if.end20.i.for.end.i_crit_edge ], [ %call28.i, %if.end27.i.for.end.i_crit_edge ]
  call void @dm_bitset_cursor_end(ptr noundef nonnull %c.i) #12
  br label %__load_discards.exit

for.cond32.i:                                     ; preds = %for.body.i
  %indvars89.i = trunc i64 %conv3386.i to i32
  %inc46.i = add i32 %indvars89.i, 1
  %conv33.i = zext i32 %inc46.i to i64
  %18 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %discard_nr_blocks.i, align 8
  %cmp36.i = icmp ugt i64 %19, %conv33.i
  br i1 %cmp36.i, label %for.cond32.i.for.body.i_crit_edge, label %for.cond32.i.__load_discards.exit_crit_edge

for.cond32.i.__load_discards.exit_crit_edge:      ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_discards.exit

for.cond32.i.for.body.i_crit_edge:                ; preds = %for.cond32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond32.i.for.body.i_crit_edge, %for.cond32.preheader.i
  %conv3386.i = phi i64 [ %conv33.i, %for.cond32.i.for.body.i_crit_edge ], [ 0, %for.cond32.preheader.i ]
  %20 = ptrtoint ptr %discard_block_size38.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %discard_block_size38.i, align 8
  %call41.i = tail call i32 %fn(ptr noundef %context, i64 noundef %21, i64 noundef %conv3386.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %for.cond32.i, label %for.body.i.__load_discards.exit_crit_edge

for.body.i.__load_discards.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_discards.exit

__load_discards.exit:                             ; preds = %for.body.i.__load_discards.exit_crit_edge, %for.cond32.i.__load_discards.exit_crit_edge, %for.end.i, %if.end5.i.__load_discards.exit_crit_edge, %if.then1.i.__load_discards.exit_crit_edge, %do.end.__load_discards.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.__load_discards.exit_crit_edge ], [ %call3.i, %if.then1.i.__load_discards.exit_crit_edge ], [ %call10.i, %if.end5.i.__load_discards.exit_crit_edge ], [ %r.0.i, %for.end.i ], [ 0, %for.cond32.i.__load_discards.exit_crit_edge ], [ %call41.i, %for.body.i.__load_discards.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %c.i) #12
  call void @up_read(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %__load_discards.exit, %cmd_read_lock.exit
  %retval.0 = phi i32 [ %retval.0.i, %__load_discards.exit ], [ -22, %cmd_read_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_size(ptr noundef %cmd, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cache_blocks = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %1 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_blocks, align 8
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %result, align 4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.return_crit_edge ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_remove_mapping(ptr noundef %cmd, i32 noundef %cblock) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #12
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %value.i, align 8
  %info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %root.i, align 8
  %call3.i = call i32 @dm_array_set_value(ptr noundef %info.i, i64 noundef %5, i32 noundef %cblock, ptr noundef nonnull %value.i, ptr noundef %root.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.__remove.exit_crit_edge

do.end.__remove.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %changed.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %6 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i4 = load i8, ptr %changed.i, align 4
  %bf.set.i = or i8 %bf.load.i4, -128
  store i8 %bf.set.i, ptr %changed.i, align 4
  br label %__remove.exit

__remove.exit:                                    ; preds = %if.end.i, %do.end.__remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #12
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %__remove.exit, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %call3.i, %__remove.exit ], [ -22, %cmd_write_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_insert_mapping(ptr noundef %cmd, i32 noundef %cblock, i64 noundef %oblock) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #12
  %shl.i.i = shl i64 %oblock, 16
  %or.i.i = or i64 %shl.i.i, 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %or.i.i) #12
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %value.i, align 8
  %info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %5 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %root.i, align 8
  %call3.i = call i32 @dm_array_set_value(ptr noundef %info.i, i64 noundef %6, i32 noundef %cblock, ptr noundef nonnull %value.i, ptr noundef %root.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.__insert.exit_crit_edge

do.end.__insert.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__insert.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %changed.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %7 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i4 = load i8, ptr %changed.i, align 4
  %bf.set.i = or i8 %bf.load.i4, -128
  store i8 %bf.set.i, ptr %changed.i, align 4
  br label %__insert.exit

__insert.exit:                                    ; preds = %if.end.i, %do.end.__insert.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #12
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %__insert.exit, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %call3.i, %__insert.exit ], [ -22, %cmd_write_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_load_mappings(ptr noundef %cmd, ptr noundef %policy, ptr nocapture noundef readonly %fn, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %mapping_value_le.i148.i = alloca ptr, align 4
  %hint_value_le.i149.i = alloca ptr, align 4
  %mapping_value_le.i.i = alloca ptr, align 4
  %hint_value_le.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %cmd_read_lock.exit

cmd_read_lock.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %clean_when_opened.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %1 = ptrtoint ptr %clean_when_opened.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %clean_when_opened.i.i, align 4
  %2 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not.i.i = icmp eq i8 %2, 0
  br i1 %bf.cast.not.i.i, label %do.end.hints_array_available.exit.i_crit_edge, label %land.lhs.true.i.i

do.end.hints_array_available.exit.i_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hints_array_available.exit.i

land.lhs.true.i.i:                                ; preds = %do.end
  %call.i.i.i = tail call ptr @dm_cache_policy_get_name(ptr noundef %policy) #12
  %call1.i.i.i = tail call ptr @dm_cache_policy_get_version(ptr noundef %policy) #12
  %call2.i.i.i = tail call i32 @dm_cache_policy_get_hint_size(ptr noundef %policy) #12
  %policy_name3.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 20
  %call4.i.i.i = tail call i32 @strncmp(ptr noundef %policy_name3.i.i.i, ptr noundef %call.i.i.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.hints_array_available.exit.i_crit_edge

land.lhs.true.i.i.hints_array_available.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hints_array_available.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i
  %policy_version5.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21
  %3 = ptrtoint ptr %policy_version5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %policy_version5.i.i.i, align 8
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i.i.i = icmp eq i32 %4, %6
  br i1 %cmp.not.i.i.i, label %policy_unchanged.exit.i.i, label %if.end.i.i.i.hints_array_available.exit.i_crit_edge

if.end.i.i.i.hints_array_available.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hints_array_available.exit.i

policy_unchanged.exit.i.i:                        ; preds = %if.end.i.i.i
  %policy_hint_size9.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %7 = ptrtoint ptr %policy_hint_size9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %policy_hint_size9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call2.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %8, %call2.i.i.i
  br i1 %cmp10.not.i.i.i, label %land.rhs.i.i, label %policy_unchanged.exit.i.i.hints_array_available.exit.i_crit_edge

policy_unchanged.exit.i.i.hints_array_available.exit.i_crit_edge: ; preds = %policy_unchanged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hints_array_available.exit.i

land.rhs.i.i:                                     ; preds = %policy_unchanged.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hint_root.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %9 = ptrtoint ptr %hint_root.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hint_root.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i4.i.i = icmp ne i64 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool1.i.i.i = icmp ne i32 %call2.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i4.i.i, i1 %tobool1.i.i.i, i1 false
  br label %hints_array_available.exit.i

hints_array_available.exit.i:                     ; preds = %land.rhs.i.i, %policy_unchanged.exit.i.i.hints_array_available.exit.i_crit_edge, %if.end.i.i.i.hints_array_available.exit.i_crit_edge, %land.lhs.true.i.i.hints_array_available.exit.i_crit_edge, %do.end.hints_array_available.exit.i_crit_edge
  %11 = phi i1 [ false, %policy_unchanged.exit.i.i.hints_array_available.exit.i_crit_edge ], [ false, %do.end.hints_array_available.exit.i_crit_edge ], [ false, %land.lhs.true.i.i.hints_array_available.exit.i_crit_edge ], [ false, %if.end.i.i.i.hints_array_available.exit.i_crit_edge ], [ %spec.select.i, %land.rhs.i.i ]
  %cache_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %12 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %hints_array_available.exit.i.__load_mappings.exit_crit_edge, label %if.end.i

hints_array_available.exit.i.__load_mappings.exit_crit_edge: ; preds = %hints_array_available.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mappings.exit

if.end.i:                                         ; preds = %hints_array_available.exit.i
  %info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %14 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %root.i, align 8
  %mapping_cursor.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 28
  %call2.i = tail call i32 @dm_array_cursor_begin(ptr noundef %info.i, i64 noundef %15, ptr noundef %mapping_cursor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.__load_mappings.exit_crit_edge

if.end.i.__load_mappings.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mappings.exit

if.end4.i:                                        ; preds = %if.end.i
  br i1 %11, label %if.then6.i, label %if.end4.i.if.end12.i_crit_edge

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end4.i
  %hint_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 8
  %hint_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %16 = ptrtoint ptr %hint_root.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hint_root.i, align 8
  %hint_cursor.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 29
  %call7.i = tail call i32 @dm_array_cursor_begin(ptr noundef %hint_info.i, i64 noundef %17, ptr noundef %hint_cursor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then9.i

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dm_array_cursor_end(ptr noundef %mapping_cursor.i) #12
  br label %__load_mappings.exit

if.end12.i:                                       ; preds = %if.then6.i.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %version.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 1
  br i1 %cmp.i.i, label %if.then14.i, label %if.end12.i.if.end23.i_crit_edge

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then14.i:                                      ; preds = %if.end12.i
  %dirty_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  %dirty_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %20 = ptrtoint ptr %dirty_root.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dirty_root.i, align 8
  %22 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cache_blocks.i, align 8
  %dirty_cursor.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 30
  %call17.i = tail call i32 @dm_bitset_cursor_begin(ptr noundef %dirty_info.i, i64 noundef %21, i32 noundef %23, ptr noundef %dirty_cursor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then14.i.if.end23.i_crit_edge, label %if.then19.i

if.then14.i.if.end23.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %hint_cursor20.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 29
  tail call void @dm_array_cursor_end(ptr noundef %hint_cursor20.i) #12
  tail call void @dm_array_cursor_end(ptr noundef %mapping_cursor.i) #12
  br label %__load_mappings.exit

if.end23.i:                                       ; preds = %if.then14.i.if.end23.i_crit_edge, %if.end12.i.if.end23.i_crit_edge
  %hint_cursor33.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 29
  %dirty_cursor29.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end23.i
  %cb.0.i = phi i64 [ 0, %if.end23.i ], [ %inc.i, %for.inc.i ]
  %hints_valid.0.off0.i = phi i1 [ %11, %if.end23.i ], [ %hints_valid.1.off0.i, %for.inc.i ]
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i144.i = icmp ugt i32 %25, 1
  br i1 %cmp.i144.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping_value_le.i.i) #12
  %26 = ptrtoint ptr %mapping_value_le.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping_value_le.i.i, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hint_value_le.i.i) #12
  %27 = ptrtoint ptr %hint_value_le.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %hint_value_le.i.i, align 4, !annotation !145
  call void @dm_array_cursor_get_value(ptr noundef %mapping_cursor.i, ptr noundef nonnull %mapping_value_le.i.i) #12
  %28 = ptrtoint ptr %mapping_value_le.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapping_value_le.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %mapping.0.copyload.i.i = load i64, ptr %29, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %mapping.0.copyload.i.i) #12
  %shr.i.i.i = lshr i64 %31, 16
  %and22.i.i = and i64 %31, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i.i)
  %tobool.not.i.i = icmp eq i64 %and22.i.i, 0
  br i1 %tobool.not.i.i, label %if.then25.i.__load_mapping_v2.exit.i_crit_edge, label %if.then.i.i

if.then25.i.__load_mapping_v2.exit.i_crit_edge:   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mapping_v2.exit.i

if.then.i.i:                                      ; preds = %if.then25.i
  br i1 %hints_valid.0.off0.i, label %if.then2.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_array_cursor_get_value(ptr noundef %hint_cursor33.i, ptr noundef nonnull %hint_value_le.i.i) #12
  %32 = ptrtoint ptr %hint_value_le.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hint_value_le.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %hint.0.copyload.i.i = load i32, ptr %33, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %hint.0.i.i = phi i32 [ %hint.0.copyload.i.i, %if.then2.i.i ], [ 0, %if.then.i.i.if.end.i.i_crit_edge ]
  %35 = ptrtoint ptr %clean_when_opened.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i146.i = load i8, ptr %clean_when_opened.i.i, align 4
  %36 = and i8 %bf.load.i146.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast.not.i147.i = icmp eq i8 %36, 0
  br i1 %bf.cast.not.i147.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call zeroext i1 @dm_bitset_cursor_get_value(ptr noundef %dirty_cursor29.i) #12
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %dirty.0.off0.i.i = phi i1 [ %call.i.i, %if.then3.i.i ], [ true, %if.end.i.i.if.end5.i.i_crit_edge ]
  %conv.i.i = trunc i64 %cb.0.i to i32
  %37 = call i32 @llvm.bswap.i32(i32 %hint.0.i.i) #12
  %call9.i.i = call i32 %fn(ptr noundef %context, i64 noundef %shr.i.i.i, i32 noundef %conv.i.i, i1 noundef zeroext %dirty.0.off0.i.i, i32 noundef %37, i1 noundef zeroext %hints_valid.0.off0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end5.i.i.__load_mapping_v2.exit.i_crit_edge, label %do.end.i.i

if.end5.i.i.__load_mapping_v2.exit.i_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mapping_v2.exit.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i64 noundef %cb.0.i) #16
  br label %__load_mapping_v2.exit.i

__load_mapping_v2.exit.i:                         ; preds = %do.end.i.i, %if.end5.i.i.__load_mapping_v2.exit.i_crit_edge, %if.then25.i.__load_mapping_v2.exit.i_crit_edge
  %r.0.i.i = phi i32 [ %call9.i.i, %do.end.i.i ], [ 0, %if.end5.i.i.__load_mapping_v2.exit.i_crit_edge ], [ 0, %if.then25.i.__load_mapping_v2.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint_value_le.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping_value_le.i.i) #12
  br label %if.end35.i

if.else.i:                                        ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping_value_le.i148.i) #12
  %38 = ptrtoint ptr %mapping_value_le.i148.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping_value_le.i148.i, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hint_value_le.i149.i) #12
  %39 = ptrtoint ptr %hint_value_le.i149.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %hint_value_le.i149.i, align 4, !annotation !145
  call void @dm_array_cursor_get_value(ptr noundef %mapping_cursor.i, ptr noundef nonnull %mapping_value_le.i148.i) #12
  %40 = ptrtoint ptr %mapping_value_le.i148.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping_value_le.i148.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %mapping.0.copyload.i150.i = load i64, ptr %41, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %mapping.0.copyload.i150.i) #12
  %shr.i.i151.i = lshr i64 %43, 16
  %44 = trunc i64 %43 to i32
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i152.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i152.i, label %if.else.i.__load_mapping_v1.exit.i_crit_edge, label %if.then.i153.i

if.else.i.__load_mapping_v1.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mapping_v1.exit.i

if.then.i153.i:                                   ; preds = %if.else.i
  br i1 %hints_valid.0.off0.i, label %if.then2.i155.i, label %if.then.i153.i.if.end.i162.i_crit_edge

if.then.i153.i.if.end.i162.i_crit_edge:           ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i162.i

if.then2.i155.i:                                  ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_array_cursor_get_value(ptr noundef %hint_cursor33.i, ptr noundef nonnull %hint_value_le.i149.i) #12
  %45 = ptrtoint ptr %hint_value_le.i149.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hint_value_le.i149.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %hint.0.copyload.i154.i = load i32, ptr %46, align 4
  br label %if.end.i162.i

if.end.i162.i:                                    ; preds = %if.then2.i155.i, %if.then.i153.i.if.end.i162.i_crit_edge
  %hint.0.i156.i = phi i32 [ %hint.0.copyload.i154.i, %if.then2.i155.i ], [ 0, %if.then.i153.i.if.end.i162.i_crit_edge ]
  %48 = ptrtoint ptr %clean_when_opened.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i158.i = load i8, ptr %clean_when_opened.i.i, align 4
  %49 = and i8 %bf.load.i158.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %bf.cast.not.i159.i = icmp eq i8 %49, 0
  %and4.i.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.i.i = icmp ne i32 %and4.i.i, 0
  %dirty.0.off0.i160.i = select i1 %bf.cast.not.i159.i, i1 true, i1 %tobool5.i.i
  %conv.i161.i = trunc i64 %cb.0.i to i32
  %50 = call i32 @llvm.bswap.i32(i32 %hint.0.i156.i) #12
  %call10.i.i = call i32 %fn(ptr noundef %context, i64 noundef %shr.i.i151.i, i32 noundef %conv.i161.i, i1 noundef zeroext %dirty.0.off0.i160.i, i32 noundef %50, i1 noundef zeroext %hints_valid.0.off0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i162.i.__load_mapping_v1.exit.i_crit_edge, label %do.end.i163.i

if.end.i162.i.__load_mapping_v1.exit.i_crit_edge: ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mapping_v1.exit.i

do.end.i163.i:                                    ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i64 noundef %cb.0.i) #16
  br label %__load_mapping_v1.exit.i

__load_mapping_v1.exit.i:                         ; preds = %do.end.i163.i, %if.end.i162.i.__load_mapping_v1.exit.i_crit_edge, %if.else.i.__load_mapping_v1.exit.i_crit_edge
  %r.0.i164.i = phi i32 [ %call10.i.i, %do.end.i163.i ], [ 0, %if.end.i162.i.__load_mapping_v1.exit.i_crit_edge ], [ 0, %if.else.i.__load_mapping_v1.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint_value_le.i149.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping_value_le.i148.i) #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %__load_mapping_v1.exit.i, %__load_mapping_v2.exit.i
  %r.0.i = phi i32 [ %r.0.i.i, %__load_mapping_v2.exit.i ], [ %r.0.i164.i, %__load_mapping_v1.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool36.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end35.i.out.i_crit_edge

if.end35.i.out.i_crit_edge:                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end38.i:                                       ; preds = %if.end35.i
  %51 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cache_blocks.i, align 8
  %sub.i = add i32 %52, -1
  %conv.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cb.0.i, i64 %conv.i)
  %cmp41.not.i = icmp ult i64 %cb.0.i, %conv.i
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end38.i.out.i_crit_edge

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end44.i:                                       ; preds = %if.end38.i
  %call46.i = call i32 @dm_array_cursor_next(ptr noundef %mapping_cursor.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end50.i, label %do.end.i

do.end.i:                                         ; preds = %if.end44.i
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #16
  call void @dm_array_cursor_end(ptr noundef %mapping_cursor.i) #12
  br i1 %hints_valid.0.off0.i, label %do.end.i.if.then75.i_crit_edge, label %do.end.i.if.end77.i_crit_edge

do.end.i.if.end77.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

do.end.i.if.then75.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

if.end50.i:                                       ; preds = %if.end44.i
  br i1 %hints_valid.0.off0.i, label %if.then52.i, label %if.end50.i.if.end59.i_crit_edge

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then52.i:                                      ; preds = %if.end50.i
  %call54.i = call i32 @dm_array_cursor_next(ptr noundef %hint_cursor33.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.then52.i.if.end59.i_crit_edge, label %if.then56.i

if.then52.i.if.end59.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_array_cursor_end(ptr noundef %hint_cursor33.i) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.then52.i.if.end59.i_crit_edge, %if.end50.i.if.end59.i_crit_edge
  %hints_valid.1.off0.i = phi i1 [ false, %if.then56.i ], [ true, %if.then52.i.if.end59.i_crit_edge ], [ false, %if.end50.i.if.end59.i_crit_edge ]
  %53 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i166.i = icmp ugt i32 %54, 1
  br i1 %cmp.i166.i, label %if.then61.i, label %if.end59.i.for.inc.i_crit_edge

if.end59.i.for.inc.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then61.i:                                      ; preds = %if.end59.i
  %call63.i = call i32 @dm_bitset_cursor_next(ptr noundef %dirty_cursor29.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then61.i.for.inc.i_crit_edge, label %do.end68.i

if.then61.i.for.inc.i_crit_edge:                  ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end68.i:                                       ; preds = %if.then61.i
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  call void @dm_array_cursor_end(ptr noundef %mapping_cursor.i) #12
  br i1 %hints_valid.1.off0.i, label %do.end68.i.if.then75.i_crit_edge, label %do.end68.i.if.end77.i_crit_edge

do.end68.i.if.end77.i_crit_edge:                  ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

do.end68.i.if.then75.i_crit_edge:                 ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

for.inc.i:                                        ; preds = %if.then61.i.for.inc.i_crit_edge, %if.end59.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i64 %cb.0.i, 1
  br label %for.cond.i

out.i:                                            ; preds = %if.end38.i.out.i_crit_edge, %if.end35.i.out.i_crit_edge
  call void @dm_array_cursor_end(ptr noundef %mapping_cursor.i) #12
  br i1 %hints_valid.0.off0.i, label %out.i.if.then75.i_crit_edge, label %out.i.if.end77.i_crit_edge

out.i.if.end77.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

out.i.if.then75.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

if.then75.i:                                      ; preds = %out.i.if.then75.i_crit_edge, %do.end68.i.if.then75.i_crit_edge, %do.end.i.if.then75.i_crit_edge
  %r.1170.i = phi i32 [ %call46.i, %do.end.i.if.then75.i_crit_edge ], [ %r.0.i, %out.i.if.then75.i_crit_edge ], [ %call63.i, %do.end68.i.if.then75.i_crit_edge ]
  call void @dm_array_cursor_end(ptr noundef %hint_cursor33.i) #12
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %out.i.if.end77.i_crit_edge, %do.end68.i.if.end77.i_crit_edge, %do.end.i.if.end77.i_crit_edge
  %r.1169.i = phi i32 [ %call46.i, %do.end.i.if.end77.i_crit_edge ], [ %r.1170.i, %if.then75.i ], [ %r.0.i, %out.i.if.end77.i_crit_edge ], [ %call63.i, %do.end68.i.if.end77.i_crit_edge ]
  %55 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i168.i = icmp ugt i32 %56, 1
  br i1 %cmp.i168.i, label %if.then79.i, label %if.end77.i.__load_mappings.exit_crit_edge

if.end77.i.__load_mappings.exit_crit_edge:        ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__load_mappings.exit

if.then79.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dm_bitset_cursor_end(ptr noundef %dirty_cursor29.i) #12
  br label %__load_mappings.exit

__load_mappings.exit:                             ; preds = %if.then79.i, %if.end77.i.__load_mappings.exit_crit_edge, %if.then19.i, %if.then9.i, %if.end.i.__load_mappings.exit_crit_edge, %hints_array_available.exit.i.__load_mappings.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.then9.i ], [ %call17.i, %if.then19.i ], [ 0, %hints_array_available.exit.i.__load_mappings.exit_crit_edge ], [ %call2.i, %if.end.i.__load_mappings.exit_crit_edge ], [ %r.1169.i, %if.then79.i ], [ %r.1169.i, %if.end77.i.__load_mappings.exit_crit_edge ]
  call void @up_read(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %__load_mappings.exit, %cmd_read_lock.exit
  %retval.0 = phi i32 [ %retval.0.i, %__load_mappings.exit ], [ -22, %cmd_read_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_dump(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %1 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %root.i, align 8
  %call.i = tail call i32 @dm_array_walk(ptr noundef %info.i, i64 noundef %2, ptr noundef nonnull @__dump_mapping, ptr noundef null) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_changed_this_transaction(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %changed = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %1 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %changed, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %2 = zext i8 %bf.load.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_set_dirty_bits(ptr noundef %cmd, i32 noundef %nr_bits, ptr noundef %bits) local_unnamed_addr #0 align 64 {
entry:
  %value.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %version.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp ugt i32 %4, 1
  br i1 %cmp.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.end
  %cache_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %5 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %nr_bits)
  %cmp.not.i = icmp eq i32 %6, %nr_bits
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #16
  br label %if.end5

if.end.i:                                         ; preds = %if.then2
  %dirty_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  %dirty_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %7 = ptrtoint ptr %dirty_root.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dirty_root.i, align 8
  %call2.i = tail call i32 @dm_bitset_del(ptr noundef %dirty_info.i, i64 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %changed.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %9 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i12 = load i8, ptr %changed.i, align 4
  %bf.set.i = or i8 %bf.load.i12, -128
  store i8 %bf.set.i, ptr %changed.i, align 4
  %call7.i = tail call i32 @dm_bitset_new(ptr noundef %dirty_info.i, ptr noundef %dirty_root.i, i32 noundef %nr_bits, ptr noundef nonnull @is_dirty_callback, ptr noundef %bits) #12
  br label %if.end5

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bits)
  %cmp12.not.i = icmp eq i32 %nr_bits, 0
  br i1 %cmp12.not.i, label %if.else.if.end5_crit_edge, label %for.body.lr.ph.i

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %if.else
  %info.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %changed.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.013.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bits, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.013.i, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp ne i32 %13, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i.i) #12
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %value.i.i, align 8, !annotation !145
  %15 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %root.i.i, align 8
  %call1.i.i = call i32 @dm_array_get_value(ptr noundef %info.i.i, i64 noundef %16, i32 noundef %i.013.i, ptr noundef nonnull %value.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.__dirty.exit.i_crit_edge

for.body.i.__dirty.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dirty.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %value.i.i, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #12
  %20 = trunc i64 %19 to i32
  %and.i9.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool2.not.i.i = icmp ne i32 %and.i9.i, 0
  %or.cond.i.i = xor i1 %tobool.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end9.i.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %shr.i.i.i = and i64 %19, -65536
  %and10.i.i = and i32 %20, 65533
  %cond.i.i = select i1 %tobool.i, i32 2, i32 0
  %or.i.i = or i32 %and10.i.i, %cond.i.i
  %conv.i36.i.i = zext i32 %or.i.i to i64
  %or.i.i.i = or i64 %shr.i.i.i, %conv.i36.i.i
  %21 = call i64 @llvm.bswap.i64(i64 %or.i.i.i) #12
  %22 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %value.i.i, align 8
  %23 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %root.i.i, align 8
  %call17.i.i = call i32 @dm_array_set_value(ptr noundef %info.i.i, i64 noundef %24, i32 noundef %i.013.i, ptr noundef nonnull %value.i.i, ptr noundef %root.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end9.i.i.__dirty.exit.i_crit_edge

if.end9.i.i.__dirty.exit.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__dirty.exit.i

if.end20.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %changed.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %changed.i.i, align 4
  br label %for.inc.i

__dirty.exit.i:                                   ; preds = %if.end9.i.i.__dirty.exit.i_crit_edge, %for.body.i.__dirty.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %for.body.i.__dirty.exit.i_crit_edge ], [ %call17.i.i, %if.end9.i.i.__dirty.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #12
  br label %if.end5

for.inc.i:                                        ; preds = %if.end20.i.i, %if.end.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i.i) #12
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_bits
  br i1 %exitcond.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %__dirty.exit.i, %if.else.if.end5_crit_edge, %if.end4.i, %if.end.i.if.end5_crit_edge, %do.end.i
  %r.0 = phi i32 [ -22, %do.end.i ], [ %call7.i, %if.end4.i ], [ %call2.i, %if.end.i.if.end5_crit_edge ], [ %retval.0.i.i, %__dirty.exit.i ], [ 0, %if.else.if.end5_crit_edge ], [ 0, %for.inc.i.if.end5_crit_edge ]
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %r.0, %if.end5 ], [ -22, %cmd_write_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_metadata_get_stats(ptr noundef %cmd, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats1 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23
  %1 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 16)
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_metadata_set_stats(ptr noundef %cmd, ptr nocapture noundef readonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.return_crit_edge, label %do.end

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %stats1 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23
  %3 = call ptr @memcpy(ptr %stats1, ptr %stats, i32 16)
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_commit(ptr noundef %cmd, i1 noundef zeroext %clean_shutdown) local_unnamed_addr #0 align 64 {
entry:
  %sblock.i16 = alloca ptr, align 4
  %metadata_len.i.i = alloca i32, align 4
  %sblock.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %clean_shutdown, ptr @set_clean_shutdown, ptr @clear_clean_shutdown
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %3 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end2, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i) #12
  %4 = ptrtoint ptr %sblock.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i, align 4, !annotation !145
  %version.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.i = icmp ugt i32 %6, 1
  br i1 %cmp.i.i, label %if.then.i14, label %if.end2.if.end4.i_crit_edge

if.end2.if.end4.i_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i14:                                      ; preds = %if.end2
  %dirty_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  %dirty_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %7 = ptrtoint ptr %dirty_root.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dirty_root.i, align 8
  %call2.i = tail call i32 @dm_bitset_flush(ptr noundef %dirty_info.i, i64 noundef %8, ptr noundef %dirty_root.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i14.if.end4.i_crit_edge, label %if.then.i14.__commit_transaction.exit.thread_crit_edge

if.then.i14.__commit_transaction.exit.thread_crit_edge: ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit.thread

if.then.i14.if.end4.i_crit_edge:                  ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i14.if.end4.i_crit_edge, %if.end2.if.end4.i_crit_edge
  %discard_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  %discard_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %9 = ptrtoint ptr %discard_root.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %discard_root.i, align 8
  %call6.i = tail call i32 @dm_bitset_flush(ptr noundef %discard_info.i, i64 noundef %10, ptr noundef %discard_root.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.__commit_transaction.exit.thread_crit_edge

if.end4.i.__commit_transaction.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %tm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 6
  %11 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tm.i, align 4
  %call10.i = tail call i32 @dm_tm_pre_commit(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.end9.i.__commit_transaction.exit.thread_crit_edge, label %if.end12.i

if.end9.i.__commit_transaction.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit.thread

if.end12.i:                                       ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata_len.i.i) #12
  %13 = ptrtoint ptr %metadata_len.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %metadata_len.i.i, align 4, !annotation !145
  %metadata_sm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %metadata_sm.i.i, align 8
  %root_size.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %root_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_size.i.i.i, align 4
  %call.i.i.i = call i32 %17(ptr noundef %15, ptr noundef nonnull %metadata_len.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i121.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i121.i, label %__save_sm_root.exit.thread.i, label %__save_sm_root.exit.i

__save_sm_root.exit.thread.i:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i) #12
  br label %__commit_transaction.exit.thread

__save_sm_root.exit.i:                            ; preds = %if.end12.i
  %18 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %metadata_sm.i.i, align 8
  %metadata_space_map_root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 24
  %20 = ptrtoint ptr %metadata_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %metadata_len.i.i, align 4
  %copy_root.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %19, i32 0, i32 12
  %22 = ptrtoint ptr %copy_root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %copy_root.i.i.i, align 4
  %call.i7.i.i = call i32 %23(ptr noundef %19, ptr noundef %metadata_space_map_root.i.i, i32 noundef %21) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %tobool14.not.i = icmp eq i32 %call.i7.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %__save_sm_root.exit.i.__commit_transaction.exit.thread_crit_edge

__save_sm_root.exit.i.__commit_transaction.exit.thread_crit_edge: ; preds = %__save_sm_root.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit.thread

if.end16.i:                                       ; preds = %__save_sm_root.exit.i
  %24 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bm.i, align 4
  %call.i.i = call i32 @dm_bm_write_lock(ptr noundef %25, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.__commit_transaction.exit.thread_crit_edge

if.end16.i.__commit_transaction.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit.thread

if.end20.i:                                       ; preds = %if.end16.i
  %26 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sblock.i, align 4
  %call21.i = call ptr @dm_block_data(ptr noundef %27) #12
  %flags.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 11
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29) #12
  %flags22.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags22.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %flags22.i, align 1
  %call.i122.i = call i32 %cond(i32 noundef %29) #12, !callees !151
  %32 = call i32 @llvm.bswap.i32(i32 %call.i122.i) #12
  %33 = ptrtoint ptr %flags22.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %flags22.i, align 1
  %root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %34 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %root.i, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #12
  %mapping_root.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 9
  %37 = ptrtoint ptr %mapping_root.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %mapping_root.i, align 1
  %38 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i124.i = icmp ugt i32 %39, 1
  br i1 %cmp.i124.i, label %if.then27.i, label %if.end20.i.__commit_transaction.exit_crit_edge

if.end20.i.__commit_transaction.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__commit_transaction.exit

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %dirty_root28.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %40 = ptrtoint ptr %dirty_root28.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dirty_root28.i, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #12
  %dirty_root29.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 25
  %43 = ptrtoint ptr %dirty_root29.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %dirty_root29.i, align 1
  br label %__commit_transaction.exit

__commit_transaction.exit.thread:                 ; preds = %if.end16.i.__commit_transaction.exit.thread_crit_edge, %__save_sm_root.exit.i.__commit_transaction.exit.thread_crit_edge, %__save_sm_root.exit.thread.i, %if.end9.i.__commit_transaction.exit.thread_crit_edge, %if.end4.i.__commit_transaction.exit.thread_crit_edge, %if.then.i14.__commit_transaction.exit.thread_crit_edge
  %retval.0.i15.ph = phi i32 [ %call.i.i.i, %__save_sm_root.exit.thread.i ], [ %call.i.i, %if.end16.i.__commit_transaction.exit.thread_crit_edge ], [ %call.i7.i.i, %__save_sm_root.exit.i.__commit_transaction.exit.thread_crit_edge ], [ %call10.i, %if.end9.i.__commit_transaction.exit.thread_crit_edge ], [ %call6.i, %if.end4.i.__commit_transaction.exit.thread_crit_edge ], [ %call2.i, %if.then.i14.__commit_transaction.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #12
  br label %out

__commit_transaction.exit:                        ; preds = %if.then27.i, %if.end20.i.__commit_transaction.exit_crit_edge
  %hint_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %44 = ptrtoint ptr %hint_root.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %hint_root.i, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #12
  %hint_root31.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 10
  %47 = ptrtoint ptr %hint_root31.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %hint_root31.i, align 1
  %48 = ptrtoint ptr %discard_root.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %discard_root.i, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49) #12
  %discard_root33.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 11
  %51 = ptrtoint ptr %discard_root33.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %discard_root33.i, align 1
  %discard_block_size.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  %52 = ptrtoint ptr %discard_block_size.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %discard_block_size.i, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53) #12
  %discard_block_size34.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 12
  %55 = ptrtoint ptr %discard_block_size34.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %discard_block_size34.i, align 1
  %discard_nr_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 16
  %56 = ptrtoint ptr %discard_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %discard_nr_blocks.i, align 8
  %58 = call i64 @llvm.bswap.i64(i64 %57) #12
  %discard_nr_blocks36.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 13
  %59 = ptrtoint ptr %discard_nr_blocks36.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %discard_nr_blocks36.i, align 1
  %cache_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %60 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cache_blocks.i, align 8
  %62 = call i32 @llvm.bswap.i32(i32 %61) #12
  %cache_blocks38.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 16
  %63 = ptrtoint ptr %cache_blocks38.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %cache_blocks38.i, align 1
  %policy_name.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 6
  %policy_name39.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 20
  %call41.i = call ptr @strncpy(ptr noundef %policy_name.i, ptr noundef %policy_name39.i, i32 noundef 16) #12
  %policy_version.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21
  %64 = ptrtoint ptr %policy_version.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %policy_version.i, align 8
  %66 = call i32 @llvm.bswap.i32(i32 %65) #12
  %policy_version42.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 24
  %67 = ptrtoint ptr %policy_version42.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %policy_version42.i, align 1
  %arrayidx45.i = getelementptr %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21, i32 1
  %68 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx45.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #12
  %arrayidx47.i = getelementptr %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 24, i32 1
  %71 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %arrayidx47.i, align 1
  %arrayidx49.i = getelementptr %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21, i32 2
  %72 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx49.i, align 8
  %74 = call i32 @llvm.bswap.i32(i32 %73) #12
  %arrayidx51.i = getelementptr %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 24, i32 2
  %75 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %arrayidx51.i, align 1
  %policy_hint_size.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %76 = ptrtoint ptr %policy_hint_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %policy_hint_size.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #12
  %policy_hint_size52.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 7
  %79 = ptrtoint ptr %policy_hint_size52.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %policy_hint_size52.i, align 1
  %stats.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23
  %80 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %stats.i, align 8
  %82 = call i32 @llvm.bswap.i32(i32 %81) #12
  %read_hits53.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 20
  %83 = ptrtoint ptr %read_hits53.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %read_hits53.i, align 1
  %read_misses.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 1
  %84 = ptrtoint ptr %read_misses.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %read_misses.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #12
  %read_misses55.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 21
  %87 = ptrtoint ptr %read_misses55.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %read_misses55.i, align 1
  %write_hits.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 2
  %88 = ptrtoint ptr %write_hits.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %write_hits.i, align 8
  %90 = call i32 @llvm.bswap.i32(i32 %89) #12
  %write_hits57.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 22
  %91 = ptrtoint ptr %write_hits57.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %write_hits57.i, align 1
  %write_misses.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 3
  %92 = ptrtoint ptr %write_misses.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %write_misses.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #12
  %write_misses59.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 23
  %95 = ptrtoint ptr %write_misses59.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %write_misses59.i, align 1
  %metadata_space_map_root.i125.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call21.i, i32 0, i32 8
  %96 = call ptr @memcpy(ptr %metadata_space_map_root.i125.i, ptr %metadata_space_map_root.i.i, i32 128)
  %97 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tm.i, align 4
  %99 = ptrtoint ptr %sblock.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sblock.i, align 4
  %call61.i = call i32 @dm_tm_commit(ptr noundef %98, ptr noundef %100) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool4.not = icmp eq i32 %call61.i, 0
  br i1 %tobool4.not, label %if.end6, label %__commit_transaction.exit.out_crit_edge

__commit_transaction.exit.out_crit_edge:          ; preds = %__commit_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %__commit_transaction.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i16) #12
  %101 = ptrtoint ptr %sblock.i16 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i16, align 4, !annotation !145
  %102 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bm.i, align 4
  %call.i.i18 = call i32 @dm_bm_read_lock(ptr noundef %103, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i19, label %if.end.i, label %if.end6.__begin_transaction.exit_crit_edge

if.end6.__begin_transaction.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__begin_transaction.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %sblock.i16 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sblock.i16, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %105) #12
  call fastcc void @read_superblock_fields(ptr noundef %cmd, ptr noundef %call1.i) #12
  %106 = ptrtoint ptr %sblock.i16 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sblock.i16, align 4
  call void @dm_bm_unlock(ptr noundef %107) #12
  br label %__begin_transaction.exit

__begin_transaction.exit:                         ; preds = %if.end.i, %if.end6.__begin_transaction.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i16) #12
  br label %out

out:                                              ; preds = %__begin_transaction.exit, %__commit_transaction.exit.out_crit_edge, %__commit_transaction.exit.thread, %do.end.out_crit_edge
  %r.0 = phi i32 [ -22, %do.end.out_crit_edge ], [ %call61.i, %__commit_transaction.exit.out_crit_edge ], [ %call.i.i18, %__begin_transaction.exit ], [ %retval.0.i15.ph, %__commit_transaction.exit.thread ]
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %r.0, %out ], [ -22, %cmd_write_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_clean_shutdown(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %flags.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags.addr, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %flags.addr) #12
  %1 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.addr, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_clean_shutdown(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %flags.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags.addr, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %flags.addr) #12
  %1 = ptrtoint ptr %flags.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.addr, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_get_free_metadata_block_count(ptr noundef %cmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then1, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_sm = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata_sm, align 8
  %get_nr_free.i = getelementptr inbounds %struct.dm_space_map, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_nr_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nr_free.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3, ptr noundef %result) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %call.i, %if.then1 ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_get_metadata_dev_size(ptr noundef %cmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then1, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_sm = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %metadata_sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metadata_sm, align 8
  %get_nr_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nr_blocks.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3, ptr noundef %result) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %call.i, %if.then1 ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_write_hints(ptr noundef %cmd, ptr noundef %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %call.i4 = tail call ptr @dm_cache_policy_get_name(ptr noundef %policy) #12
  %call1.i = tail call ptr @dm_cache_policy_get_version(ptr noundef %policy) #12
  %3 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call.i4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %lor.lhs.false.i5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i5:                                 ; preds = %do.end
  %call2.i = tail call i32 @strlen(ptr noundef %call.i4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call2.i)
  %cmp.i = icmp ugt i32 %call2.i, 15
  br i1 %cmp.i, label %lor.lhs.false.i5.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i5.cleanup_crit_edge:               ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i5
  %policy_name3.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 20
  %call4.i = tail call ptr @strncpy(ptr noundef %policy_name3.i, ptr noundef %call.i4, i32 noundef 16) #12
  %policy_version5.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21
  %5 = call ptr @memcpy(ptr %policy_version5.i, ptr %call1.i, i32 12)
  %call7.i = tail call i32 @dm_cache_policy_get_hint_size(ptr noundef %policy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %policy_hint_size.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %6 = ptrtoint ptr %policy_hint_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7.i, ptr %policy_hint_size.i, align 4
  %hint_root.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %7 = ptrtoint ptr %hint_root.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hint_root.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool11.not.i = icmp eq i64 %8, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.then12.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end10.i
  %hint_info.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 8
  %call14.i = tail call i32 @dm_array_del(ptr noundef %hint_info.i, i64 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end18.i_crit_edge, label %if.then12.i.cleanup_crit_edge

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %hint_info19.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 8
  %cache_blocks.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %9 = ptrtoint ptr %cache_blocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cache_blocks.i, align 8
  %call22.i = tail call i32 @dm_array_new(ptr noundef %hint_info19.i, ptr noundef %hint_root.i, i32 noundef %10, ptr noundef nonnull @get_hint, ptr noundef %policy) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i, %if.then12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i5.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call22.i, %if.end18.i ], [ -22, %lor.lhs.false.i5.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call14.i, %if.then12.i.cleanup_crit_edge ]
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_metadata_all_clean(ptr noundef %cmd, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cache_blocks = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %1 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_blocks, align 8
  %call1 = tail call fastcc i32 @blocks_are_unmapped_or_clean(ptr noundef %cmd, i32 noundef 0, i32 noundef %2, ptr noundef %result)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_metadata_set_read_only(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.return_crit_edge, label %do.end

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm.i, align 4
  tail call void @dm_bm_set_read_only(ptr noundef %4) #12
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cache_metadata_set_read_write(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.return_crit_edge, label %do.end

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm.i, align 4
  tail call void @dm_bm_set_read_write(ptr noundef %4) #12
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_metadata_set_needs_check(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %sblock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock) #12
  %0 = ptrtoint ptr %sblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock, align 4, !annotation !145
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %1 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cmd_write_lock.exit_crit_edge

entry.cmd_write_lock.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %3) #12
  br i1 %call.i, label %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, label %do.end

lor.lhs.false.i.cmd_write_lock.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cmd_write_lock.exit

cmd_write_lock.exit:                              ; preds = %lor.lhs.false.i.cmd_write_lock.exit_crit_edge, %entry.cmd_write_lock.exit_crit_edge
  tail call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %flags = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  %4 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm.i, align 4
  %call.i19 = call i32 @dm_bm_write_lock(ptr noundef %5, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not = icmp eq i32 %call.i19, 0
  br i1 %tobool.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  br label %out

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sblock, align 4
  %call8 = call ptr @dm_block_data(ptr noundef %7) #12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %flags10 = getelementptr inbounds %struct.cache_disk_superblock, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %flags10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %flags10, align 1
  %12 = ptrtoint ptr %sblock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sblock, align 4
  call void @dm_bm_unlock(ptr noundef %13) #12
  br label %out

out:                                              ; preds = %if.end7, %do.end5
  call void @up_write(ptr noundef %root_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %cmd_write_lock.exit
  %retval.0 = phi i32 [ %call.i19, %out ], [ -22, %cmd_write_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_metadata_needs_check(ptr noundef %cmd, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_read(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %result, align 1
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.return_crit_edge ]
  tail call void @up_read(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cache_metadata_abort(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root_lock.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 10
  tail call void @down_write(ptr noundef %root_lock.i) #12
  %fail_io.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 25
  %0 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fail_io.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm.i, align 4
  %call.i = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %2) #12
  br i1 %call.i, label %lor.lhs.false.i.cleanup_crit_edge, label %do.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.i
  %metadata_sm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %metadata_sm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %metadata_sm.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef %4) #12
  %tm.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %8) #12
  %9 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %10) #12
  %call1 = tail call fastcc i32 @__create_persistent_data_objects(ptr noundef %cmd, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.then2

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %fail_io.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %fail_io.i, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %fail_io.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call1, %if.then2 ], [ %call1, %do.end.cleanup_crit_edge ]
  tail call void @up_write(ptr noundef %root_lock.i) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__create_persistent_data_objects(ptr noundef %cmd, i1 noundef zeroext %may_format_device) unnamed_addr #0 align 64 {
entry:
  %vt.i.i17.i = alloca %struct.dm_btree_value_type, align 4
  %sblock.i.i = alloca ptr, align 4
  %sb_flags.i.i = alloca i32, align 4
  %metadata_len.i.i.i.i = alloca i32, align 4
  %sblock.i.i.i = alloca ptr, align 4
  %vt.i.i.i = alloca %struct.dm_btree_value_type, align 4
  %b.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %call = tail call ptr @dm_block_manager_create(ptr noundef %1, i32 noundef 4096, i32 noundef 5) #12
  %bm = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #16
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  %5 = ptrtoint ptr %4 to i32
  store ptr null, ptr %bm, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i.i) #12
  %6 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %b.i.i, align 4, !annotation !145
  %call.i.i = tail call i32 @dm_bm_block_size(ptr noundef %call) #12
  %div16.i.i = lshr i32 %call.i.i, 3
  %call1.i.i = call i32 @dm_bm_read_lock(ptr noundef %call, i64 noundef 0, ptr noundef null, ptr noundef nonnull %b.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %__superblock_all_zeroes.exit.i

if.end.i.i:                                       ; preds = %if.end
  %7 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b.i.i, align 4
  %call2.i.i = call ptr @dm_block_data(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp17.not.i.i = icmp ult i32 %call.i.i, 8
  br i1 %cmp17.not.i.i, label %if.end.i.i.if.then2.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.if.then2.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div16.i.i, i32 1) #12
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then2.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.if.then2.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #12
  br label %if.then9

if.then2.i:                                       ; preds = %for.cond.i.i.if.then2.i_crit_edge, %if.end.i.i.if.then2.i_crit_edge
  %11 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #12
  br i1 %may_format_device, label %cond.true.i, label %if.then2.i.if.then9_crit_edge

if.then2.i.if.then9_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

cond.true.i:                                      ; preds = %if.then2.i
  %13 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bm, align 4
  %tm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 6
  %metadata_sm.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %call.i11.i = call i32 @dm_tm_create_with_sm(ptr noundef %14, i64 noundef 0, ptr noundef %tm.i.i, ptr noundef %metadata_sm.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i13.i

do.end.i.i:                                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #16
  br label %if.then9

if.end.i13.i:                                     ; preds = %cond.true.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vt.i.i.i) #12
  %15 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %vt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vt.i.i.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %15, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %16, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %17, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %18, align 4
  %info.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %24 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tm.i.i, align 4
  call void @dm_array_info_init(ptr noundef %info.i.i.i, ptr noundef %25, ptr noundef nonnull %vt.i.i.i) #12
  %policy_hint_size.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %26 = ptrtoint ptr %policy_hint_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %policy_hint_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %if.end.i13.i.__setup_mapping_info.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i13.i.__setup_mapping_info.exit.i.i_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__setup_mapping_info.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %15, align 4
  %hint_info.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 8
  %29 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tm.i.i, align 4
  call void @dm_array_info_init(ptr noundef %hint_info.i.i.i, ptr noundef %30, ptr noundef nonnull %vt.i.i.i) #12
  br label %__setup_mapping_info.exit.i.i

__setup_mapping_info.exit.i.i:                    ; preds = %if.then.i.i.i, %if.end.i13.i.__setup_mapping_info.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vt.i.i.i) #12
  %root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %call2.i14.i = call i32 @dm_array_empty(ptr noundef %info.i.i.i, ptr noundef %root.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14.i)
  %cmp3.i.i = icmp slt i32 %call2.i14.i, 0
  br i1 %cmp3.i.i, label %__setup_mapping_info.exit.i.i.bad.i.i_crit_edge, label %if.end5.i.i

__setup_mapping_info.exit.i.i.bad.i.i_crit_edge:  ; preds = %__setup_mapping_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i

if.end5.i.i:                                      ; preds = %__setup_mapping_info.exit.i.i
  %version.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %31 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %32, 1
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.end5.i.i.if.end14.i.i_crit_edge

if.end5.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %33 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tm.i.i, align 4
  %dirty_info.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  call void @dm_disk_bitset_init(ptr noundef %34, ptr noundef %dirty_info.i.i) #12
  %dirty_root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %call10.i.i = call i32 @dm_bitset_empty(ptr noundef %dirty_info.i.i, ptr noundef %dirty_root.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.then7.i.i.bad.i.i_crit_edge, label %if.then7.i.i.if.end14.i.i_crit_edge

if.then7.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then7.i.i.bad.i.i_crit_edge:                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i

if.end14.i.i:                                     ; preds = %if.then7.i.i.if.end14.i.i_crit_edge, %if.end5.i.i.if.end14.i.i_crit_edge
  %35 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tm.i.i, align 4
  %discard_info.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  call void @dm_disk_bitset_init(ptr noundef %36, ptr noundef %discard_info.i.i) #12
  %discard_root.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %call17.i.i = call i32 @dm_bitset_empty(ptr noundef %discard_info.i.i, ptr noundef %discard_root.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %if.end14.i.i.bad.i.i_crit_edge, label %if.end20.i.i

if.end14.i.i.bad.i.i_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %discard_block_size.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  %discard_nr_blocks.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 16
  %37 = call ptr @memset(ptr %discard_block_size.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i.i) #12
  %38 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i.i, align 4, !annotation !145
  %39 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tm.i.i, align 4
  %call1.i.i.i = call i32 @dm_tm_pre_commit(ptr noundef %40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end20.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, label %if.end4.i.i.i

if.end20.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_initial_superblock.exit.thread.i.i

if.end4.i.i.i:                                    ; preds = %if.end20.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i) #12
  %41 = ptrtoint ptr %metadata_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %metadata_len.i.i.i.i, align 4, !annotation !145
  %42 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %metadata_sm.i.i, align 8
  %root_size.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %root_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %root_size.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %45(ptr noundef %43, ptr noundef nonnull %metadata_len.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %__save_sm_root.exit.thread.i.i.i, label %__save_sm_root.exit.i.i.i

__save_sm_root.exit.thread.i.i.i:                 ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i) #12
  br label %__write_initial_superblock.exit.thread.i.i

__save_sm_root.exit.i.i.i:                        ; preds = %if.end4.i.i.i
  %46 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %metadata_sm.i.i, align 8
  %metadata_space_map_root.i.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 24
  %48 = ptrtoint ptr %metadata_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %metadata_len.i.i.i.i, align 4
  %copy_root.i.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %47, i32 0, i32 12
  %50 = ptrtoint ptr %copy_root.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %copy_root.i.i.i.i.i, align 4
  %call.i7.i.i.i.i = call i32 %51(ptr noundef %47, ptr noundef %metadata_space_map_root.i.i.i.i, i32 noundef %49) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata_len.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i.i)
  %tobool.not.i53.i.i = icmp eq i32 %call.i7.i.i.i.i, 0
  br i1 %tobool.not.i53.i.i, label %if.end7.i.i.i, label %__save_sm_root.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge

__save_sm_root.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %__save_sm_root.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_initial_superblock.exit.thread.i.i

if.end7.i.i.i:                                    ; preds = %__save_sm_root.exit.i.i.i
  %52 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bm, align 4
  %call.i.i.i.i = call i32 @dm_bm_write_lock_zero(ptr noundef %53, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end11.i.i.i, label %if.end7.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge

if.end7.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_initial_superblock.exit.thread.i.i

if.end11.i.i.i:                                   ; preds = %if.end7.i.i.i
  %54 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sblock.i.i.i, align 4
  %call12.i.i.i = call ptr @dm_block_data(ptr noundef %55) #12
  %flags.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %flags.i.i.i, align 1
  %uuid.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 3
  %57 = call ptr @memset(ptr %uuid.i.i.i, i32 0, i32 16)
  %magic.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 271368265828139008, ptr %magic.i.i.i, align 1
  %59 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %version.i.i.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #12
  %version13.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %version13.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %version13.i.i.i, align 1
  %policy_name.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 6
  %policy_version.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 24
  %63 = call ptr @memset(ptr %policy_version.i.i.i, i32 0, i32 12)
  %metadata_space_map_root.i70.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 8
  %64 = call ptr @memset(ptr %policy_name.i.i.i, i32 0, i32 20)
  %65 = call ptr @memcpy(ptr %metadata_space_map_root.i70.i.i.i, ptr %metadata_space_map_root.i.i.i.i, i32 128)
  %66 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %root.i.i, align 8
  %68 = call i64 @llvm.bswap.i64(i64 %67) #12
  %mapping_root.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 9
  %69 = ptrtoint ptr %mapping_root.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %mapping_root.i.i.i, align 1
  %hint_root.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %70 = ptrtoint ptr %hint_root.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %hint_root.i.i.i, align 8
  %72 = call i64 @llvm.bswap.i64(i64 %71) #12
  %hint_root16.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 10
  %73 = ptrtoint ptr %hint_root16.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %hint_root16.i.i.i, align 1
  %74 = ptrtoint ptr %discard_root.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %discard_root.i.i, align 8
  %76 = call i64 @llvm.bswap.i64(i64 %75) #12
  %discard_root17.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 11
  %77 = ptrtoint ptr %discard_root17.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %discard_root17.i.i.i, align 1
  %78 = ptrtoint ptr %discard_block_size.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %discard_block_size.i.i, align 8
  %80 = call i64 @llvm.bswap.i64(i64 %79) #12
  %discard_block_size18.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 12
  %81 = ptrtoint ptr %discard_block_size18.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %80, ptr %discard_block_size18.i.i.i, align 1
  %82 = ptrtoint ptr %discard_nr_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %discard_nr_blocks.i.i, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #12
  %discard_nr_blocks20.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 13
  %85 = ptrtoint ptr %discard_nr_blocks20.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %discard_nr_blocks20.i.i.i, align 1
  %metadata_block_size.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 15
  %86 = ptrtoint ptr %metadata_block_size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 134217728, ptr %metadata_block_size.i.i.i, align 1
  %data_block_size.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 17
  %87 = ptrtoint ptr %data_block_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data_block_size.i.i.i, align 8
  %conv.i.i.i = trunc i64 %88 to i32
  %89 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #12
  %data_block_size21.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 14
  %90 = ptrtoint ptr %data_block_size21.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %data_block_size21.i.i.i, align 1
  %cache_blocks.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 16
  %91 = ptrtoint ptr %cache_blocks.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 0, ptr %cache_blocks.i.i.i, align 1
  %read_hits.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 20
  %92 = call ptr @memset(ptr %read_hits.i.i.i, i32 0, i32 16)
  %93 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i71.i.i.i = icmp ugt i32 %94, 1
  br i1 %cmp.i71.i.i.i, label %if.then23.i.i.i, label %if.end11.i.i.i.__write_initial_superblock.exit.i.i_crit_edge

if.end11.i.i.i.__write_initial_superblock.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__write_initial_superblock.exit.i.i

if.then23.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dirty_root.i.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %95 = ptrtoint ptr %dirty_root.i.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dirty_root.i.i.i, align 8
  %97 = call i64 @llvm.bswap.i64(i64 %96) #12
  %dirty_root24.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call12.i.i.i, i32 0, i32 25
  %98 = ptrtoint ptr %dirty_root24.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %dirty_root24.i.i.i, align 1
  br label %__write_initial_superblock.exit.i.i

__write_initial_superblock.exit.thread.i.i:       ; preds = %if.end7.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, %__save_sm_root.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge, %__save_sm_root.exit.thread.i.i.i, %if.end20.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call.i.i.i.i.i, %__save_sm_root.exit.thread.i.i.i ], [ %call.i.i.i.i, %if.end7.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ], [ %call.i7.i.i.i.i, %__save_sm_root.exit.i.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ], [ %call1.i.i.i, %if.end20.i.i.__write_initial_superblock.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #12
  br label %bad.i.i

__write_initial_superblock.exit.i.i:              ; preds = %if.then23.i.i.i, %if.end11.i.i.i.__write_initial_superblock.exit.i.i_crit_edge
  %99 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tm.i.i, align 4
  %101 = ptrtoint ptr %sblock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sblock.i.i.i, align 4
  %call27.i.i.i = call i32 @dm_tm_commit(ptr noundef %100, ptr noundef %102) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool.not.i15.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool.not.i15.i, label %__open_or_format_metadata.exit.thread25, label %__write_initial_superblock.exit.i.i.bad.i.i_crit_edge

__write_initial_superblock.exit.i.i.bad.i.i_crit_edge: ; preds = %__write_initial_superblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i

__open_or_format_metadata.exit.thread25:          ; preds = %__write_initial_superblock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %clean_when_opened.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %103 = ptrtoint ptr %clean_when_opened.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i.i = load i8, ptr %clean_when_opened.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %clean_when_opened.i.i, align 4
  br label %cleanup

bad.i.i:                                          ; preds = %__write_initial_superblock.exit.i.i.bad.i.i_crit_edge, %__write_initial_superblock.exit.thread.i.i, %if.end14.i.i.bad.i.i_crit_edge, %if.then7.i.i.bad.i.i_crit_edge, %__setup_mapping_info.exit.i.i.bad.i.i_crit_edge
  %r.0.i.i = phi i32 [ %call2.i14.i, %__setup_mapping_info.exit.i.i.bad.i.i_crit_edge ], [ %call10.i.i, %if.then7.i.i.bad.i.i_crit_edge ], [ %call17.i.i, %if.end14.i.i.bad.i.i_crit_edge ], [ %call27.i.i.i, %__write_initial_superblock.exit.i.i.bad.i.i_crit_edge ], [ %retval.0.i.ph.i.i, %__write_initial_superblock.exit.thread.i.i ]
  %104 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tm.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %105) #12
  %106 = ptrtoint ptr %metadata_sm.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %metadata_sm.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  call void %109(ptr noundef %107) #12
  br label %if.then9

if.end5.i:                                        ; preds = %for.body.i.i
  %110 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %b.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %111) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i) #12
  %112 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_flags.i.i)
  %113 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bm, align 4
  %call.i.i.i = call i32 @dm_bm_read_lock(ptr noundef %114, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i18.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i18.i, label %do.end.i20.i, label %if.end.i22.i

do.end.i20.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #16
  br label %__open_or_format_metadata.exit.thread29

if.end.i22.i:                                     ; preds = %if.end5.i
  %115 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sblock.i.i, align 4
  %call2.i21.i = call ptr @dm_block_data(ptr noundef %116) #12
  %data_block_size.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call2.i21.i, i32 0, i32 14
  %117 = ptrtoint ptr %data_block_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %data_block_size.i.i, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #12
  %conv.i.i = zext i32 %119 to i64
  %data_block_size3.i.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 17
  %120 = ptrtoint ptr %data_block_size3.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %data_block_size3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %conv.i.i)
  %cmp4.not.i.i = icmp eq i64 %121, %conv.i.i
  br i1 %cmp4.not.i.i, label %if.end14.i24.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %119, i64 noundef %121) #16
  br label %bad.i38.i

if.end14.i24.i:                                   ; preds = %if.end.i22.i
  %incompat_flags1.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call2.i21.i, i32 0, i32 19
  %122 = ptrtoint ptr %incompat_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %incompat_flags1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i23.i = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i23.i, label %if.end.i.i.i, label %if.end14.i24.i.__check_incompat_features.exit.i.i_crit_edge

if.end14.i24.i.__check_incompat_features.exit.i.i_crit_edge: ; preds = %if.end14.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__check_incompat_features.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end14.i24.i
  %124 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bdev, align 8
  %bd_read_only.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %bd_read_only.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bd_read_only.i.i.i.i, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i.i.i.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i, label %if.end.i.i.i.if.end19.i.i_crit_edge

if.end.i.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %bd_disk.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %125, i32 0, i32 17
  %128 = ptrtoint ptr %bd_disk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bd_disk.i.i.i.i, align 8
  %part0.i.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %part0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %part0.i.i.i.i.i, align 4
  %bd_read_only.i.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %bd_read_only.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bd_read_only.i.i.i.i.i, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i.i.i.i.i = icmp eq i8 %133, 0
  br i1 %tobool.not.i.i.i.i.i, label %bdev_read_only.exit.i.i.i, label %lor.rhs.i.i.i.i.if.end19.i.i_crit_edge

lor.rhs.i.i.i.i.if.end19.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.i

bdev_read_only.exit.i.i.i:                        ; preds = %lor.rhs.i.i.i.i
  %state.i.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %129, i32 0, i32 12
  %134 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %state.i.i.i.i.i, align 4
  %136 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool3.not.i.i.i = icmp eq i32 %136, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge

bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge: ; preds = %bdev_read_only.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.i

if.end5.i.i.i:                                    ; preds = %bdev_read_only.exit.i.i.i
  %compat_ro_flags.i.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call2.i21.i, i32 0, i32 18
  %137 = ptrtoint ptr %compat_ro_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %compat_ro_flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool7.not.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end19.i.i_crit_edge, label %if.end5.i.i.i.__check_incompat_features.exit.i.i_crit_edge

if.end5.i.i.i.__check_incompat_features.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__check_incompat_features.exit.i.i

if.end5.i.i.i.if.end19.i.i_crit_edge:             ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.i

__check_incompat_features.exit.i.i:               ; preds = %if.end5.i.i.i.__check_incompat_features.exit.i.i_crit_edge, %if.end14.i24.i.__check_incompat_features.exit.i.i_crit_edge
  %.sink22.i.i.i = phi i32 [ %123, %if.end14.i24.i.__check_incompat_features.exit.i.i_crit_edge ], [ %138, %if.end5.i.i.i.__check_incompat_features.exit.i.i_crit_edge ]
  %.str.64.sink.i.i.i = phi ptr [ @.str.61, %if.end14.i24.i.__check_incompat_features.exit.i.i_crit_edge ], [ @.str.64, %if.end5.i.i.i.__check_incompat_features.exit.i.i_crit_edge ]
  %139 = call i32 @llvm.bswap.i32(i32 %.sink22.i.i.i) #12
  %call13.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink.i.i.i, i32 noundef %139) #16
  br label %bad.i38.i

if.end19.i.i:                                     ; preds = %if.end5.i.i.i.if.end19.i.i_crit_edge, %bdev_read_only.exit.i.i.i.if.end19.i.i_crit_edge, %lor.rhs.i.i.i.i.if.end19.i.i_crit_edge, %if.end.i.i.i.if.end19.i.i_crit_edge
  %140 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bm, align 4
  %metadata_space_map_root.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call2.i21.i, i32 0, i32 8
  %tm.i25.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 6
  %metadata_sm.i26.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 5
  %call20.i.i = call i32 @dm_tm_open_with_sm(ptr noundef %141, i64 noundef 0, ptr noundef %metadata_space_map_root.i.i, i32 noundef 128, ptr noundef %tm.i25.i, ptr noundef %metadata_sm.i26.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %do.end26.i.i, label %if.end29.i.i

do.end26.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #16
  br label %bad.i38.i

if.end29.i.i:                                     ; preds = %if.end19.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vt.i.i17.i) #12
  %142 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i17.i, i32 0, i32 1
  %143 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i17.i, i32 0, i32 2
  %144 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i17.i, i32 0, i32 3
  %145 = getelementptr inbounds %struct.dm_btree_value_type, ptr %vt.i.i17.i, i32 0, i32 4
  %146 = ptrtoint ptr %vt.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %vt.i.i17.i, align 4
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 8, ptr %142, align 4
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %143, align 4
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %144, align 4
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %145, align 4
  %info.i.i27.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 7
  %151 = ptrtoint ptr %tm.i25.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tm.i25.i, align 4
  call void @dm_array_info_init(ptr noundef %info.i.i27.i, ptr noundef %152, ptr noundef nonnull %vt.i.i17.i) #12
  %policy_hint_size.i.i28.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %153 = ptrtoint ptr %policy_hint_size.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %policy_hint_size.i.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i57.i.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i57.i.i, label %if.end29.i.i.__open_or_format_metadata.exit_crit_edge, label %if.then.i.i30.i

if.end29.i.i.__open_or_format_metadata.exit_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__open_or_format_metadata.exit

if.then.i.i30.i:                                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4, ptr %142, align 4
  %hint_info.i.i29.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 8
  %156 = ptrtoint ptr %tm.i25.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tm.i25.i, align 4
  call void @dm_array_info_init(ptr noundef %hint_info.i.i29.i, ptr noundef %157, ptr noundef nonnull %vt.i.i17.i) #12
  br label %__open_or_format_metadata.exit

bad.i38.i:                                        ; preds = %do.end26.i.i, %__check_incompat_features.exit.i.i, %do.end9.i.i
  %r.0.i37.i = phi i32 [ -22, %do.end9.i.i ], [ -22, %__check_incompat_features.exit.i.i ], [ %call20.i.i, %do.end26.i.i ]
  %158 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %159) #12
  br label %__open_or_format_metadata.exit.thread29

__open_or_format_metadata.exit.thread29:          ; preds = %bad.i38.i, %do.end.i20.i
  %retval.0.i39.i.ph = phi i32 [ %r.0.i37.i, %bad.i38.i ], [ %call.i.i.i, %do.end.i20.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_flags.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #12
  br label %if.then9

__open_or_format_metadata.exit:                   ; preds = %if.then.i.i30.i, %if.end29.i.i.__open_or_format_metadata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vt.i.i17.i) #12
  %160 = ptrtoint ptr %tm.i25.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tm.i25.i, align 4
  %dirty_info.i31.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 27
  call void @dm_disk_bitset_init(ptr noundef %161, ptr noundef %dirty_info.i31.i) #12
  %162 = ptrtoint ptr %tm.i25.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tm.i25.i, align 4
  %discard_info.i32.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  call void @dm_disk_bitset_init(ptr noundef %163, ptr noundef %discard_info.i32.i) #12
  %flags.i.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call2.i21.i, i32 0, i32 1
  %164 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %flags.i.i, align 1
  %166 = call i32 @llvm.bswap.i32(i32 %165) #12
  %167 = ptrtoint ptr %sb_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %sb_flags.i.i, align 4
  %sb_flags.i.i.0.sb_flags.i.i.0.sb_flags.i.0.sb_flags.i.0.sb_flags.0.sb_flags.0..i.i = load volatile i32, ptr %sb_flags.i.i, align 4
  %clean_when_opened.i33.i = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %168 = ptrtoint ptr %clean_when_opened.i33.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load.i34.i = load i8, ptr %clean_when_opened.i33.i, align 4
  %169 = trunc i32 %sb_flags.i.i.0.sb_flags.i.i.0.sb_flags.i.0.sb_flags.i.0.sb_flags.0.sb_flags.0..i.i to i8
  %170 = shl i8 %169, 6
  %171 = and i8 %170, 64
  %bf.clear.i.i = and i8 %bf.load.i34.i, -65
  %bf.set.i35.i = or i8 %171, %bf.clear.i.i
  store i8 %bf.set.i35.i, ptr %clean_when_opened.i33.i, align 4
  %172 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_flags.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #12
  br label %cleanup

if.then9:                                         ; preds = %__open_or_format_metadata.exit.thread29, %bad.i.i, %do.end.i.i, %if.then2.i.if.then9_crit_edge, %__superblock_all_zeroes.exit.i
  %retval.0.i24 = phi i32 [ %retval.0.i39.i.ph, %__open_or_format_metadata.exit.thread29 ], [ %r.0.i.i, %bad.i.i ], [ %call.i11.i, %do.end.i.i ], [ -1, %if.then2.i.if.then9_crit_edge ], [ %call1.i.i, %__superblock_all_zeroes.exit.i ]
  %174 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bm, align 4
  call void @dm_block_manager_destroy(ptr noundef %175) #12
  %176 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %bm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %__open_or_format_metadata.exit, %__open_or_format_metadata.exit.thread25, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %retval.0.i24, %if.then9 ], [ 0, %__open_or_format_metadata.exit ], [ 0, %__open_or_format_metadata.exit.thread25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @read_superblock_fields(ptr noundef %cmd, ptr nocapture noundef readonly %disk_super) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 5
  %0 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %version, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %version1 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %version1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %version1, align 4
  %flags = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %flags, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %flags2 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 11
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags2, align 8
  %mapping_root = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 9
  %8 = ptrtoint ptr %mapping_root to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %mapping_root, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 12
  %11 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %root, align 8
  %hint_root = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 10
  %12 = ptrtoint ptr %hint_root to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %hint_root, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %hint_root3 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 13
  %15 = ptrtoint ptr %hint_root3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %hint_root3, align 8
  %discard_root = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 11
  %16 = ptrtoint ptr %discard_root to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %discard_root, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %discard_root4 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %19 = ptrtoint ptr %discard_root4 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %discard_root4, align 8
  %discard_block_size = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 12
  %20 = ptrtoint ptr %discard_block_size to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %discard_block_size, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %discard_block_size5 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 15
  %23 = ptrtoint ptr %discard_block_size5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %discard_block_size5, align 8
  %discard_nr_blocks = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 13
  %24 = ptrtoint ptr %discard_nr_blocks to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %discard_nr_blocks, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %discard_nr_blocks6 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 16
  %27 = ptrtoint ptr %discard_nr_blocks6 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %discard_nr_blocks6, align 8
  %data_block_size = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 14
  %28 = ptrtoint ptr %data_block_size to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %data_block_size, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %conv = zext i32 %30 to i64
  %data_block_size7 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 17
  %31 = ptrtoint ptr %data_block_size7 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %data_block_size7, align 8
  %cache_blocks = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 16
  %32 = ptrtoint ptr %cache_blocks to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %cache_blocks, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %cache_blocks9 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 18
  %35 = ptrtoint ptr %cache_blocks9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cache_blocks9, align 8
  %policy_name = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 20
  %policy_name10 = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 6
  %call12 = tail call ptr @strncpy(ptr noundef %policy_name, ptr noundef %policy_name10, i32 noundef 16)
  %policy_version = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 24
  %36 = ptrtoint ptr %policy_version to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %policy_version, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %policy_version13 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21
  %39 = ptrtoint ptr %policy_version13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %policy_version13, align 8
  %arrayidx16 = getelementptr %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 24, i32 1
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx16, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %arrayidx18 = getelementptr %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21, i32 1
  %43 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 24, i32 2
  %44 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx20, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx22 = getelementptr %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 21, i32 2
  %47 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx22, align 8
  %policy_hint_size = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 7
  %48 = ptrtoint ptr %policy_hint_size to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %policy_hint_size, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %policy_hint_size23 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 22
  %51 = ptrtoint ptr %policy_hint_size23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %policy_hint_size23, align 4
  %read_hits = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 20
  %52 = ptrtoint ptr %read_hits to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %read_hits, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %stats = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23
  %55 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %stats, align 8
  %read_misses = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 21
  %56 = ptrtoint ptr %read_misses to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %read_misses, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %read_misses26 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 1
  %59 = ptrtoint ptr %read_misses26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %read_misses26, align 4
  %write_hits = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 22
  %60 = ptrtoint ptr %write_hits to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %write_hits, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %write_hits28 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 2
  %63 = ptrtoint ptr %write_hits28 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %write_hits28, align 8
  %write_misses = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 23
  %64 = ptrtoint ptr %write_misses to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %write_misses, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %write_misses30 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 23, i32 3
  %67 = ptrtoint ptr %write_misses30 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %write_misses30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp ugt i32 %2, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dirty_root = getelementptr inbounds %struct.cache_disk_superblock, ptr %disk_super, i32 0, i32 25
  %68 = ptrtoint ptr %dirty_root to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %dirty_root, align 1
  %70 = tail call i64 @llvm.bswap.i64(i64 %69)
  %dirty_root32 = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 26
  %71 = ptrtoint ptr %dirty_root32 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %dirty_root32, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 19
  %72 = ptrtoint ptr %changed to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %changed, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %changed, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_block_manager_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_bm_is_read_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_cursor_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_cursor_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bitset_cursor_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_bitset_cursor_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_cursor_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_get_value(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__set_discard(ptr noundef %cmd, i64 noundef %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %discard_info = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  %discard_root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %0 = ptrtoint ptr %discard_root to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %discard_root, align 8
  %conv = trunc i64 %b to i32
  %call2 = tail call i32 @dm_bitset_set_bit(ptr noundef %discard_info, i64 noundef %1, i32 noundef %conv, ptr noundef %discard_root) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__clear_discard(ptr noundef %cmd, i64 noundef %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %discard_info = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 9
  %discard_root = getelementptr inbounds %struct.dm_cache_metadata, ptr %cmd, i32 0, i32 14
  %0 = ptrtoint ptr %discard_root to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %discard_root, align 8
  %conv = trunc i64 %b to i32
  %call2 = tail call i32 @dm_bitset_clear_bit(ptr noundef %discard_info, i64 noundef %1, i32 noundef %conv, ptr noundef %discard_root) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_set_bit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_clear_bit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_flush(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_set_value(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_cursor_begin(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_array_cursor_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_cursor_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_cache_policy_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_cache_policy_get_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_cache_policy_get_hint_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_array_cursor_get_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_walk(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__dump_mapping(ptr nocapture noundef readnone %context, i64 noundef %cblock, ptr nocapture noundef readonly %leaf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_del(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_dirty_callback(i32 noundef %index, ptr nocapture noundef writeonly %value, ptr noundef %context) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %index, 5
  %arrayidx.i = getelementptr i32, ptr %context, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %value, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_pre_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sb_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #12
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #12
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %blocknr, align 1
  %flags = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 9031977) #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %call, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #12
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #12
  %blocknr = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %blocknr, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i64 @dm_block_location(ptr noundef %b) #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %2, i64 noundef %call3) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 271368265828139008, i64 %4)
  %cmp5.not = icmp eq i64 %4, 271368265828139008
  br i1 %cmp5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i64 noundef %5, i64 noundef 1623043) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call14 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 9031977) #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %call14)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %call, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp15.not = icmp eq i32 %6, %8
  br i1 %cmp15.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call14, i32 noundef %9) #16
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %version.i = getelementptr inbounds %struct.cache_disk_superblock, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %version.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %version.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp1.i = icmp ugt i32 %12, 2
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %do.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %12, i32 noundef 1, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end23.cleanup_crit_edge, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ -15, %do.end ], [ -84, %do.end9 ], [ -84, %do.end19 ], [ -22, %do.end.i ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_del(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_hint(i32 noundef %index, ptr nocapture noundef writeonly %value_le, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %get_hint.i = getelementptr inbounds %struct.dm_cache_policy, ptr %context, i32 0, i32 9
  %0 = ptrtoint ptr %get_hint.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_hint.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.policy_get_hint.exit_crit_edge, label %cond.true.i

entry.policy_get_hint.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %policy_get_hint.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %1(ptr noundef %context, i32 noundef %index) #12
  br label %policy_get_hint.exit

policy_get_hint.exit:                             ; preds = %cond.true.i, %entry.policy_get_hint.exit_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ 0, %entry.policy_get_hint.exit_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %cond.i)
  %3 = ptrtoint ptr %value_le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %value_le, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_manager_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_create_with_sm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_array_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_disk_bitset_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_array_info_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock_zero(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_open_with_sm(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-cache-metadata.c", i32 1063, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_cache_resize._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_cache_resize._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-cache-metadata.c", i32 1786, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dm_cache_metadata_set_needs_check._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dm_cache_metadata_set_needs_check._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-cache-metadata.c", i32 757, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @metadata_open._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @metadata_open._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @metadata_open.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-cache-metadata.c", i32 763, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @table, !20, !"table", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-cache-metadata.c", i32 792, i32 8}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-cache-metadata.c", i32 843, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @same_params._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @same_params._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-cache-metadata.c", i32 791, i32 8}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @table_lock, !27, !"table_lock", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-cache-metadata.c", i32 944, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @blocks_are_clean_separate_dirty._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @blocks_are_clean_separate_dirty._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-cache-metadata.c", i32 950, i32 3}
!37 = !{ptr @blocks_are_clean_separate_dirty._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @blocks_are_clean_separate_dirty._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-cache-metadata.c", i32 962, i32 4}
!41 = !{ptr @blocks_are_clean_separate_dirty._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @blocks_are_clean_separate_dirty._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-cache-metadata.c", i32 975, i32 4}
!45 = !{ptr @blocks_are_clean_separate_dirty._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @blocks_are_clean_separate_dirty._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-cache-metadata.c", i32 913, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @blocks_are_clean_combined_dirty._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @blocks_are_clean_combined_dirty._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-cache-metadata.c", i32 918, i32 4}
!54 = !{ptr @blocks_are_clean_combined_dirty._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @blocks_are_clean_combined_dirty._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-cache-metadata.c", i32 1466, i32 4}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__load_mappings._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @__load_mappings._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-cache-metadata.c", i32 1481, i32 5}
!63 = !{ptr @__load_mappings._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__load_mappings._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-cache-metadata.c", i32 1400, i32 4}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__load_mapping_v2._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @__load_mapping_v2._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-cache-metadata.c", i32 1358, i32 4}
!72 = !{ptr @__load_mapping_v1._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @__load_mapping_v1._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-cache-metadata.c", i32 1602, i32 3}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__set_dirty_bits_v2._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @__set_dirty_bits_v2._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-cache-metadata.c", i32 230, i32 10}
!81 = !{ptr @sb_validator, !82, !"sb_validator", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-cache-metadata.c", i32 229, i32 34}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/md/dm-cache-metadata.c", i32 204, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sb_check._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @sb_check._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-cache-metadata.c", i32 211, i32 3}
!90 = !{ptr @sb_check._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sb_check._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-cache-metadata.c", i32 221, i32 3}
!94 = !{ptr @sb_check._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sb_check._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-cache-metadata.c", i32 188, i32 3}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @check_metadata_version._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @check_metadata_version._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/md/dm-cache-metadata.c", i32 539, i32 3}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__create_persistent_data_objects._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @__create_persistent_data_objects._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-cache-metadata.c", i32 397, i32 3}
!108 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__format_metadata._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @__format_metadata._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/md/dm-cache-metadata.c", i32 474, i32 3}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__open_metadata._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @__open_metadata._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/md/dm-cache-metadata.c", i32 482, i32 3}
!118 = !{ptr @__open_metadata._entry.55, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @__open_metadata._entry_ptr.57, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-cache-metadata.c", i32 498, i32 3}
!122 = !{ptr @__open_metadata._entry.58, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @__open_metadata._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-cache-metadata.c", i32 444, i32 3}
!126 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__check_incompat_features._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @__check_incompat_features._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-cache-metadata.c", i32 457, i32 3}
!131 = !{ptr @__check_incompat_features._entry.63, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @__check_incompat_features._entry_ptr.65, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148512307, i64 2148512339, i64 2148512368, i64 2148512402, i64 2148512433, i64 2148512456}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"auto-init"}
!146 = !{i64 2148600308}
!147 = !{i64 2148514772, i64 2148514804, i64 2148514833, i64 2148514867, i64 2148514898, i64 2148514921}
!148 = !{i64 2149646278}
!149 = !{i8 0, i8 2}
!150 = !{ptr @__clear_discard, ptr @__set_discard}
!151 = !{ptr @clear_clean_shutdown, ptr @set_clean_shutdown}
