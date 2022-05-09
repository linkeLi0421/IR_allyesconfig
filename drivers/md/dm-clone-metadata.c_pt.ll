; ModuleID = '/llk/IR_all_yes/drivers/md/dm-clone-metadata.c_pt.bc'
source_filename = "../drivers/md/dm-clone-metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.dm_clone_metadata = type { ptr, i64, i64, i32, i32, %struct.spinlock, [2 x %struct.dirty_map], ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, %struct.dm_disk_bitset, i64, [128 x i8], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dirty_map = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dm_disk_bitset = type { %struct.dm_array_info, i32, i64, i8 }
%struct.dm_array_info = type { ptr, %struct.dm_btree_value_type, %struct.dm_btree_info }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.superblock_disk = type <{ i32, i32, i64, [16 x i8], i64, i32, [128 x i8], i64, i64, i64 }>
%struct.dm_bitset_cursor = type { ptr, %struct.dm_array_cursor, i32, i32, i32, i64 }
%struct.dm_array_cursor = type { ptr, %struct.dm_btree_cursor, ptr, ptr, i32 }
%struct.dm_btree_cursor = type { ptr, i64, i8, i32, [16 x %struct.cursor_node] }
%struct.cursor_node = type { ptr, i32 }

@dm_clone_metadata_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013device-mapper: clone metadata: Failed to allocate memory for dm-clone metadata\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm_clone_metadata_open\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/md/dm-clone-metadata.c\00", [33 x i8] zeroinitializer }, align 32
@dm_clone_metadata_open._entry_ptr = internal global ptr @dm_clone_metadata_open._entry, section ".printk_index", align 4
@dm_clone_metadata_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cmd->lock\00", [21 x i8] zeroinitializer }, align 32
@dm_clone_metadata_open.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cmd->bitmap_lock\00", [46 x i8] zeroinitializer }, align 32
@dm_clone_metadata_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: clone metadata: Failed to allocate memory for region bitmap\0A\00", [50 x i8] zeroinitializer }, align 32
@dm_clone_metadata_open._entry_ptr.8 = internal global ptr @dm_clone_metadata_open._entry.6, section ".printk_index", align 4
@dm_clone_metadata_open._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: clone metadata: Failed to load on-disk region map\0A\00", [60 x i8] zeroinitializer }, align 32
@dm_clone_metadata_open._entry_ptr.11 = internal global ptr @dm_clone_metadata_open._entry.9, section ".printk_index", align 4
@dm_clone_set_region_hydrated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013device-mapper: clone metadata: Region %lu out of range (total number of regions %lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dm_clone_set_region_hydrated\00", [35 x i8] zeroinitializer }, align 32
@dm_clone_set_region_hydrated._entry_ptr = internal global ptr @dm_clone_set_region_hydrated._entry, section ".printk_index", align 4
@dm_clone_cond_set_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013device-mapper: clone metadata: Invalid region range: start %lu, nr_regions %lu (total number of regions %lu)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dm_clone_cond_set_range\00", [40 x i8] zeroinitializer }, align 32
@dm_clone_cond_set_range._entry_ptr = internal global ptr @dm_clone_cond_set_range._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__create_persistent_data_structures._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 448, ptr null, ptr null }, align 1
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: clone metadata: Failed to create block manager\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"__create_persistent_data_structures\00", [60 x i8] zeroinitializer }, align 32
@__create_persistent_data_structures._entry_ptr = internal global ptr @__create_persistent_data_structures._entry, section ".printk_index", align 4
@__superblock_all_zeroes._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 246, ptr null, ptr null }, align 1
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: clone metadata: Failed to read_lock superblock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__superblock_all_zeroes\00", [40 x i8] zeroinitializer }, align 32
@__superblock_all_zeroes._entry_ptr = internal global ptr @__superblock_all_zeroes._entry, section ".printk_index", align 4
@__format_metadata._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 368, ptr null, ptr null }, align 1
@.str.20 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: clone metadata: Failed to create transaction manager\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__format_metadata\00", [46 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr = internal global ptr @__format_metadata._entry, section ".printk_index", align 4
@__format_metadata._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 376, ptr null, ptr null }, align 1
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: clone metadata: Failed to create empty on-disk bitset\0A\00", [56 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.24 = internal global ptr @__format_metadata._entry.22, section ".printk_index", align 4
@__format_metadata._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 383, ptr null, ptr null }, align 1
@.str.26 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: clone metadata: Failed to resize on-disk bitset to %lu entries\0A\00", [47 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.27 = internal global ptr @__format_metadata._entry.25, section ".printk_index", align 4
@__format_metadata._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 390, ptr null, ptr null }, align 1
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: clone metadata: dm_tm_pre_commit failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.30 = internal global ptr @__format_metadata._entry.28, section ".printk_index", align 4
@__format_metadata._entry.31 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 396, ptr null, ptr null }, align 1
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: clone metadata: __copy_sm_root failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.33 = internal global ptr @__format_metadata._entry.31, section ".printk_index", align 4
@__format_metadata._entry.34 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 402, ptr null, ptr null }, align 1
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: clone metadata: Failed to write_lock superblock\0A\00", [62 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.36 = internal global ptr @__format_metadata._entry.34, section ".printk_index", align 4
@__format_metadata._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.2, i32 410, ptr null, ptr null }, align 1
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: clone metadata: Failed to commit superblock\0A\00", [34 x i8] zeroinitializer }, align 32
@__format_metadata._entry_ptr.39 = internal global ptr @__format_metadata._entry.37, section ".printk_index", align 4
@sb_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.40, ptr @sb_prepare_for_write, ptr @sb_check }, [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"superblock\00", [21 x i8] zeroinitializer }, align 32
@sb_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013device-mapper: clone metadata: Superblock check failed: blocknr %llu, expected %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sb_check\00", [23 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr = internal global ptr @sb_check._entry, section ".printk_index", align 4
@sb_check._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: clone metadata: Superblock check failed: magic %llu, expected %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.45 = internal global ptr @sb_check._entry.43, section ".printk_index", align 4
@sb_check._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: clone metadata: Superblock check failed: checksum %u, expected %u\0A\00", [44 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.48 = internal global ptr @sb_check._entry.46, section ".printk_index", align 4
@sb_check._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\013device-mapper: clone metadata: Clone metadata version %u found, but only versions between %u and %u supported.\0A\00", [46 x i8] zeroinitializer }, align 32
@sb_check._entry_ptr.51 = internal global ptr @sb_check._entry.49, section ".printk_index", align 4
@__open_metadata._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.52, ptr @.str.2, i32 327, ptr null, ptr null }, align 1
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__open_metadata\00", [16 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr = internal global ptr @__open_metadata._entry, section ".printk_index", align 4
@__open_metadata._entry.53 = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 336, ptr null, ptr null }, align 1
@.str.54 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013device-mapper: clone metadata: Region and/or target size don't match the ones in metadata\0A\00", [35 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.55 = internal global ptr @__open_metadata._entry.53, section ".printk_index", align 4
@__open_metadata._entry.56 = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 347, ptr null, ptr null }, align 1
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: clone metadata: dm_tm_open_with_sm failed\0A\00", [36 x i8] zeroinitializer }, align 32
@__open_metadata._entry_ptr.58 = internal global ptr @__open_metadata._entry.56, section ".printk_index", align 4
@dirty_map_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: clone metadata: Failed to allocate dirty bitmap\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dirty_map_init\00", [17 x i8] zeroinitializer }, align 32
@dirty_map_init._entry_ptr = internal global ptr @dirty_map_init._entry, section ".printk_index", align 4
@dirty_map_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dirty_map_init._entry_ptr.62 = internal global ptr @dirty_map_init._entry.61, section ".printk_index", align 4
@__update_metadata_word._entry = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 677, ptr null, ptr null }, align 1
@.str.63 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: clone metadata: dm_bitset_set_bit failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__update_metadata_word\00", [41 x i8] zeroinitializer }, align 32
@__update_metadata_word._entry_ptr = internal global ptr @__update_metadata_word._entry, section ".printk_index", align 4
@__metadata_commit._entry = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 697, ptr null, ptr null }, align 1
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: clone metadata: dm_bitset_flush failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__metadata_commit\00", [46 x i8] zeroinitializer }, align 32
@__metadata_commit._entry_ptr = internal global ptr @__metadata_commit._entry, section ".printk_index", align 4
@__metadata_commit._entry.67 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.66, ptr @.str.2, i32 704, ptr null, ptr null }, align 1
@__metadata_commit._entry_ptr.68 = internal global ptr @__metadata_commit._entry.67, section ".printk_index", align 4
@__metadata_commit._entry.69 = internal constant %struct.pi_entry { ptr @.str.32, ptr @.str.66, ptr @.str.2, i32 711, ptr null, ptr null }, align 1
@__metadata_commit._entry_ptr.70 = internal global ptr @__metadata_commit._entry.69, section ".printk_index", align 4
@__metadata_commit._entry.71 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.66, ptr @.str.2, i32 718, ptr null, ptr null }, align 1
@__metadata_commit._entry_ptr.72 = internal global ptr @__metadata_commit._entry.71, section ".printk_index", align 4
@__metadata_commit._entry.73 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.66, ptr @.str.2, i32 729, ptr null, ptr null }, align 1
@__metadata_commit._entry_ptr.74 = internal global ptr @__metadata_commit._entry.73, section ".printk_index", align 4
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 566, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 576, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 577, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 584, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 595, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 848, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 884, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 448, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 246, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 368, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 376, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 383, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 390, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 396, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 402, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 410, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"sb_validator\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 223, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 224, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 189, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 196, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 205, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 214, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 327, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 336, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 347, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 500, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 505, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 677, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [34 x i8] c"../drivers/md/dm-clone-metadata.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 697, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__create_persistent_data_structures._entry, ptr @__create_persistent_data_structures._entry_ptr, ptr @__format_metadata._entry, ptr @__format_metadata._entry.22, ptr @__format_metadata._entry.25, ptr @__format_metadata._entry.28, ptr @__format_metadata._entry.31, ptr @__format_metadata._entry.34, ptr @__format_metadata._entry.37, ptr @__format_metadata._entry_ptr, ptr @__format_metadata._entry_ptr.24, ptr @__format_metadata._entry_ptr.27, ptr @__format_metadata._entry_ptr.30, ptr @__format_metadata._entry_ptr.33, ptr @__format_metadata._entry_ptr.36, ptr @__format_metadata._entry_ptr.39, ptr @__metadata_commit._entry, ptr @__metadata_commit._entry.67, ptr @__metadata_commit._entry.69, ptr @__metadata_commit._entry.71, ptr @__metadata_commit._entry.73, ptr @__metadata_commit._entry_ptr, ptr @__metadata_commit._entry_ptr.68, ptr @__metadata_commit._entry_ptr.70, ptr @__metadata_commit._entry_ptr.72, ptr @__metadata_commit._entry_ptr.74, ptr @__open_metadata._entry, ptr @__open_metadata._entry.53, ptr @__open_metadata._entry.56, ptr @__open_metadata._entry_ptr, ptr @__open_metadata._entry_ptr.55, ptr @__open_metadata._entry_ptr.58, ptr @__superblock_all_zeroes._entry, ptr @__superblock_all_zeroes._entry_ptr, ptr @__update_metadata_word._entry, ptr @__update_metadata_word._entry_ptr, ptr @dirty_map_init._entry, ptr @dirty_map_init._entry.61, ptr @dirty_map_init._entry_ptr, ptr @dirty_map_init._entry_ptr.62, ptr @dm_clone_cond_set_range._entry, ptr @dm_clone_cond_set_range._entry_ptr, ptr @dm_clone_metadata_open._entry, ptr @dm_clone_metadata_open._entry.6, ptr @dm_clone_metadata_open._entry.9, ptr @dm_clone_metadata_open._entry_ptr, ptr @dm_clone_metadata_open._entry_ptr.11, ptr @dm_clone_metadata_open._entry_ptr.8, ptr @dm_clone_set_region_hydrated._entry, ptr @dm_clone_set_region_hydrated._entry_ptr, ptr @sb_check._entry, ptr @sb_check._entry.43, ptr @sb_check._entry.46, ptr @sb_check._entry.49, ptr @sb_check._entry_ptr, ptr @sb_check._entry_ptr.45, ptr @sb_check._entry_ptr.48, ptr @sb_check._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dm_clone_metadata_open.__key, ptr @.str.3, ptr @dm_clone_metadata_open.__key.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @sb_validator, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_metadata_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_metadata_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_metadata_open.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_metadata_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_metadata_open._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_set_region_hydrated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_clone_cond_set_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_check._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_map_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_map_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_clone_metadata_open(ptr noundef %bdev, i64 noundef %target_size, i64 noundef %region_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 440) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bdev, ptr %call7.i.i, align 8
  %target_size4 = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %target_size4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %target_size, ptr %target_size4, align 8
  %region_size5 = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %region_size5 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %region_size, ptr %region_size5, align 8
  %add = add i64 %target_size, -1
  %sub = add i64 %add, %region_size
  %conv = trunc i64 %region_size to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp181 = icmp ult i64 %sub, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !141

if.then185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv186 = trunc i64 %sub to i32
  %div189 = udiv i32 %conv186, %conv
  br label %if.end195

if.else191:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %sub) #14, !srcloc !142
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t397 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %_r.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t397, %if.else191 ]
  %nr_regions = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %nr_regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %_r.0.off0, ptr %nr_regions, align 8
  %sub201 = add i32 %_r.0.off0, 31
  %div202363 = lshr i32 %sub201, 5
  %nr_words = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %nr_words to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div202363, ptr %nr_words, align 4
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @dm_clone_metadata_open.__key) #9
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %bitmap_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @dm_clone_metadata_open.__key.4, i16 noundef signext 3) #9
  %read_only = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %read_only to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %read_only, align 8
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %fail_io, align 8
  %bf.clear211 = and i8 %bf.load, 63
  store i8 %bf.clear211, ptr %fail_io, align 8
  %9 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_regions, align 8
  %sub.i366 = add i32 %10, 31
  %11 = lshr i32 %sub.i366, 3
  %mul.i = and i32 %11, 536870908
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i, i32 noundef 3264, i32 noundef -1) #15
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %region_map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %region_map, align 4
  %tobool217.not = icmp eq ptr %call.i, null
  br i1 %tobool217.not, label %do.end221, label %if.end224

do.end221:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %out_with_md

if.end224:                                        ; preds = %if.end195
  %call225 = tail call fastcc i32 @__create_persistent_data_structures(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end224.out_with_region_map_crit_edge

if.end224.out_with_region_map_crit_edge:          ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_with_region_map

if.end228:                                        ; preds = %if.end224
  %call229 = tail call fastcc i32 @__load_bitset_in_core(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end237, label %do.end234

do.end234:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %out_with_pds

if.end237:                                        ; preds = %if.end228
  %dmap.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %nr_words to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_words, align 4
  %15 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_regions, align 8
  %changed.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %changed.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %changed.i.i, align 4
  %sub.i.i.i = add i32 %14, 31
  %18 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %18, 536870908
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i.i.i, i32 noundef 3520, i32 noundef -1) #15
  %19 = ptrtoint ptr %dmap.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i.i, ptr %dmap.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end237.do.end.i_crit_edge, label %if.end.i.i

if.end237.do.end.i_crit_edge:                     ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end237
  %sub.i15.i.i = add i32 %16, 31
  %20 = lshr i32 %sub.i15.i.i, 3
  %mul.i16.i.i = and i32 %20, 536870908
  %call.i.i17.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i16.i.i, i32 noundef 3520, i32 noundef -1) #15
  %dirty_regions.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %dirty_regions.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i17.i.i, ptr %dirty_regions.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %call.i.i17.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmap.i, align 4
  tail call void @kvfree(ptr noundef %23) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i.i, %if.end237.do.end.i_crit_edge
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  br label %out_with_pds

if.end.i:                                         ; preds = %if.end.i.i
  %arrayidx3.i = getelementptr %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %nr_words to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_words, align 4
  %26 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_regions, align 8
  %changed.i27.i = getelementptr %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 2
  %28 = ptrtoint ptr %changed.i27.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %changed.i27.i, align 8
  %sub.i.i28.i = add i32 %25, 31
  %29 = lshr i32 %sub.i.i28.i, 3
  %mul.i.i29.i = and i32 %29, 536870908
  %call.i.i.i30.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i.i29.i, i32 noundef 3520, i32 noundef -1) #15
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i30.i, ptr %arrayidx3.i, align 8
  %tobool.not.i31.i = icmp eq ptr %call.i.i.i30.i, null
  br i1 %tobool.not.i31.i, label %if.end.i.do.end10.i_crit_edge, label %if.end.i37.i

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i

if.end.i37.i:                                     ; preds = %if.end.i
  %sub.i15.i32.i = add i32 %27, 31
  %31 = lshr i32 %sub.i15.i32.i, 3
  %mul.i16.i33.i = and i32 %31, 536870908
  %call.i.i17.i34.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul.i16.i33.i, i32 noundef 3520, i32 noundef -1) #15
  %dirty_regions.i35.i = getelementptr %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %32 = ptrtoint ptr %dirty_regions.i35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i17.i34.i, ptr %dirty_regions.i35.i, align 4
  %tobool6.not.i36.i = icmp eq ptr %call.i.i17.i34.i, null
  br i1 %tobool6.not.i36.i, label %if.then7.i38.i, label %if.end241

if.then7.i38.i:                                   ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx3.i, align 8
  tail call void @kvfree(ptr noundef %34) #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i38.i, %if.end.i.do.end10.i_crit_edge
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  %35 = ptrtoint ptr %dmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dmap.i, align 4
  tail call void @kvfree(ptr noundef %36) #9
  %37 = ptrtoint ptr %dirty_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dirty_regions.i.i, align 8
  tail call void @kvfree(ptr noundef %38) #9
  br label %out_with_pds

if.end241:                                        ; preds = %if.end.i37.i
  %current_dmap.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %current_dmap.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dmap.i, ptr %current_dmap.i, align 4
  %committing_dmap.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %committing_dmap.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %committing_dmap.i, align 8
  %41 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_regions, align 8
  %43 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %region_map, align 4
  %call.i369 = tail call i32 @_find_first_zero_bit_be(ptr noundef %44, i32 noundef %42) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i369, i32 %42)
  %cmp4.i = icmp eq i32 %call.i369, %42
  br i1 %cmp4.i, label %if.then245, label %if.end241.cleanup_crit_edge

if.end241.cleanup_crit_edge:                      ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then245:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load247 = load i8, ptr %fail_io, align 8
  %bf.set249 = or i8 %bf.load247, -128
  store i8 %bf.set249, ptr %fail_io, align 8
  br label %cleanup

out_with_pds:                                     ; preds = %do.end10.i, %do.end.i, %do.end234
  %r.0 = phi i32 [ %call229, %do.end234 ], [ -12, %do.end.i ], [ -12, %do.end10.i ]
  %sm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sm.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void %49(ptr noundef %47) #9
  %tm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 13
  %50 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %51) #9
  %bm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %call7.i.i, i32 0, i32 11
  %52 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %53) #9
  br label %out_with_region_map

out_with_region_map:                              ; preds = %out_with_pds, %if.end224.out_with_region_map_crit_edge
  %r.1 = phi i32 [ %call225, %if.end224.out_with_region_map_crit_edge ], [ %r.0, %out_with_pds ]
  %54 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %region_map, align 4
  tail call void @kvfree(ptr noundef %55) #9
  br label %out_with_md

out_with_md:                                      ; preds = %out_with_region_map, %do.end221
  %r.2 = phi i32 [ %r.1, %out_with_region_map ], [ -12, %do.end221 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %56 = inttoptr i32 %r.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_with_md, %if.then245, %if.end241.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %56, %out_with_md ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.then245 ], [ %call7.i.i, %if.end241.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__create_persistent_data_structures(ptr noundef %cmd, i1 noundef zeroext %may_format_device) unnamed_addr #0 align 64 {
entry:
  %sblock.i20.i = alloca ptr, align 4
  %root_size.i.i.i = alloca i32, align 4
  %sblock.i11.i = alloca ptr, align 4
  %sblock.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %call = tail call ptr @dm_block_manager_create(ptr noundef %1, i32 noundef 4096, i32 noundef 5) #9
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i) #9
  %6 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i, align 4, !annotation !143
  %call.i.i = call i32 @dm_bm_read_lock(ptr noundef %call, i64 noundef 0, ptr noundef null, ptr noundef nonnull %sblock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %__superblock_all_zeroes.exit.i

if.end.i.i:                                       ; preds = %if.end
  %7 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sblock.i.i, align 4
  %call2.i.i = call ptr @dm_block_data(ptr noundef %8) #9
  %call4.i.i = call i32 @dm_bm_block_size(ptr noundef %call) #9
  %rem.i.i = and i32 %call4.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool5.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end17.i.i, label %do.body9.i.i, !prof !141

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-clone-metadata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #9, !srcloc !144
  unreachable

do.end17.i.i:                                     ; preds = %if.end.i.i
  %call18.i.i = call i32 @dm_bm_block_size(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call18.i.i)
  %cmp34.not.i.i = icmp ult i32 %call18.i.i, 8
  br i1 %cmp34.not.i.i, label %do.end17.i.i.if.then2.i_crit_edge, label %for.body.preheader.i.i

do.end17.i.i.if.then2.i_crit_edge:                ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

for.body.preheader.i.i:                           ; preds = %do.end17.i.i
  %div33.i.i = lshr i32 %call18.i.i, 3
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div33.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then2.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.if.then2.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.035.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i64, ptr %call2.i.i, i32 %i.035.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp19.not.i.i = icmp eq i64 %10, 0
  br i1 %cmp19.not.i.i, label %for.cond.i.i, label %if.end5.i

__superblock_all_zeroes.exit.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #9
  br label %if.then8

if.then2.i:                                       ; preds = %for.cond.i.i.if.then2.i_crit_edge, %do.end17.i.i.if.then2.i_crit_edge
  %11 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #9
  br i1 %may_format_device, label %cond.true.i, label %if.then2.i.if.then8_crit_edge

if.then2.i.if.then8_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.true.i:                                      ; preds = %if.then2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i11.i) #9
  %13 = ptrtoint ptr %sblock.i11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i11.i, align 4, !annotation !143
  %14 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bm, align 4
  %tm.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 13
  %sm.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %call.i12.i = call i32 @dm_tm_create_with_sm(ptr noundef %15, i64 noundef 0, ptr noundef %tm.i.i, ptr noundef %sm.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i18.i, label %do.end.i15.i

do.end.i15.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %__format_metadata.exit.i

if.end.i18.i:                                     ; preds = %cond.true.i
  %16 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tm.i.i, align 4
  %bitset_info.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 15
  call void @dm_disk_bitset_init(ptr noundef %17, ptr noundef %bitset_info.i.i) #9
  %bitset_root.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 16
  %call4.i16.i = call i32 @dm_bitset_empty(ptr noundef %bitset_info.i.i, ptr noundef %bitset_root.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i16.i)
  %tobool5.not.i17.i = icmp eq i32 %call4.i16.i, 0
  br i1 %tobool5.not.i17.i, label %if.end12.i.i, label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  br label %err_with_tm.i.i

if.end12.i.i:                                     ; preds = %if.end.i18.i
  %18 = ptrtoint ptr %bitset_root.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bitset_root.i.i, align 8
  %nr_regions.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_regions.i.i, align 8
  %call16.i.i = call i32 @dm_bitset_resize(ptr noundef %bitset_info.i.i, i64 noundef %19, i32 noundef 0, i32 noundef %21, i1 noundef zeroext false, ptr noundef %bitset_root.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end25.i.i, label %do.end21.i.i

do.end21.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_regions.i.i, align 8
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %23) #13
  br label %err_with_tm.i.i

if.end25.i.i:                                     ; preds = %if.end12.i.i
  %24 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tm.i.i, align 4
  %call27.i.i = call i32 @dm_tm_pre_commit(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end35.i.i, label %do.end32.i.i

do.end32.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %err_with_tm.i.i

if.end35.i.i:                                     ; preds = %if.end25.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  %26 = ptrtoint ptr %root_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %root_size.i.i.i, align 4, !annotation !143
  %27 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sm.i.i, align 8
  %root_size.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %root_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %root_size.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %30(ptr noundef %28, ptr noundef nonnull %root_size.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__copy_sm_root.exit.i.i, label %__copy_sm_root.exit.thread.i.i

__copy_sm_root.exit.thread.i.i:                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  br label %do.end41.i.i

__copy_sm_root.exit.i.i:                          ; preds = %if.end35.i.i
  %31 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sm.i.i, align 8
  %metadata_space_map_root.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 17
  %33 = ptrtoint ptr %root_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %root_size.i.i.i, align 4
  %copy_root.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %32, i32 0, i32 12
  %35 = ptrtoint ptr %copy_root.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %copy_root.i.i.i.i, align 4
  %call.i7.i.i.i = call i32 %36(ptr noundef %32, ptr noundef %metadata_space_map_root.i.i.i, i32 noundef %34) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool37.not.i.i = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end44.i.i, label %__copy_sm_root.exit.i.i.do.end41.i.i_crit_edge

__copy_sm_root.exit.i.i.do.end41.i.i_crit_edge:   ; preds = %__copy_sm_root.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %__copy_sm_root.exit.i.i.do.end41.i.i_crit_edge, %__copy_sm_root.exit.thread.i.i
  %retval.0.i98.i.i = phi i32 [ %call.i.i.i.i, %__copy_sm_root.exit.thread.i.i ], [ %call.i7.i.i.i, %__copy_sm_root.exit.i.i.do.end41.i.i_crit_edge ]
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %err_with_tm.i.i

if.end44.i.i:                                     ; preds = %__copy_sm_root.exit.i.i
  %37 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bm, align 4
  %call.i.i.i = call i32 @dm_bm_write_lock_zero(ptr noundef %38, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool46.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end53.i.i, label %do.end50.i.i

do.end50.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call52.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %err_with_tm.i.i

if.end53.i.i:                                     ; preds = %if.end44.i.i
  %39 = ptrtoint ptr %sblock.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sblock.i11.i, align 4
  %call54.i.i = call ptr @dm_block_data(ptr noundef %40) #9
  %flags.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %flags.i.i.i, align 1
  %uuid.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 3
  %42 = call ptr @memset(ptr %uuid.i.i.i, i32 0, i32 16)
  %magic.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 7241773400354455552, ptr %magic.i.i.i, align 1
  %version.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 16777216, ptr %version.i.i.i, align 1
  %metadata_space_map_root.i95.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 6
  %45 = call ptr @memcpy(ptr %metadata_space_map_root.i95.i.i, ptr %metadata_space_map_root.i.i.i, i32 128)
  %region_size.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 2
  %46 = ptrtoint ptr %region_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %region_size.i.i.i, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47) #9
  %region_size2.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %region_size2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %region_size2.i.i.i, align 1
  %target_size.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 1
  %50 = ptrtoint ptr %target_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %target_size.i.i.i, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #9
  %target_size3.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %target_size3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %target_size3.i.i.i, align 1
  %54 = ptrtoint ptr %bitset_root.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bitset_root.i.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #9
  %bitset_root4.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call54.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %bitset_root4.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %bitset_root4.i.i.i, align 1
  %58 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tm.i.i, align 4
  %60 = ptrtoint ptr %sblock.i11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sblock.i11.i, align 4
  %call56.i.i = call i32 @dm_tm_commit(ptr noundef %59, ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %tobool57.not.i.i = icmp eq i32 %call56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end53.i.i.__format_metadata.exit.i_crit_edge, label %do.end61.i.i

if.end53.i.i.__format_metadata.exit.i_crit_edge:  ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__format_metadata.exit.i

do.end61.i.i:                                     ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call63.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %err_with_tm.i.i

err_with_tm.i.i:                                  ; preds = %do.end61.i.i, %do.end50.i.i, %do.end41.i.i, %do.end32.i.i, %do.end21.i.i, %do.end9.i.i
  %r.0.i.i = phi i32 [ %call4.i16.i, %do.end9.i.i ], [ %call16.i.i, %do.end21.i.i ], [ %call27.i.i, %do.end32.i.i ], [ %retval.0.i98.i.i, %do.end41.i.i ], [ %call.i.i.i, %do.end50.i.i ], [ %call56.i.i, %do.end61.i.i ]
  %62 = ptrtoint ptr %sm.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  call void %65(ptr noundef %63) #9
  %66 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tm.i.i, align 4
  call void @dm_tm_destroy(ptr noundef %67) #9
  br label %__format_metadata.exit.i

__format_metadata.exit.i:                         ; preds = %err_with_tm.i.i, %if.end53.i.i.__format_metadata.exit.i_crit_edge, %do.end.i15.i
  %retval.0.i19.i = phi i32 [ %call.i12.i, %do.end.i15.i ], [ %r.0.i.i, %err_with_tm.i.i ], [ 0, %if.end53.i.i.__format_metadata.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i11.i) #9
  br label %__open_or_format_metadata.exit

if.end5.i:                                        ; preds = %for.body.i.i
  %68 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sblock.i.i, align 4
  call void @dm_bm_unlock(ptr noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i20.i) #9
  %70 = ptrtoint ptr %sblock.i20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i20.i, align 4, !annotation !143
  %71 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bm, align 4
  %call.i.i21.i = call i32 @dm_bm_read_lock(ptr noundef %72, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i20.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i.i21.i, 0
  br i1 %tobool.not.i22.i, label %if.end.i26.i, label %do.end.i24.i

do.end.i24.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %__open_metadata.exit.i

if.end.i26.i:                                     ; preds = %if.end5.i
  %73 = ptrtoint ptr %sblock.i20.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sblock.i20.i, align 4
  %call2.i25.i = call ptr @dm_block_data(ptr noundef %74) #9
  %region_size.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 2
  %75 = ptrtoint ptr %region_size.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %region_size.i.i, align 8
  %region_size3.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i25.i, i32 0, i32 7
  %77 = ptrtoint ptr %region_size3.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %region_size3.i.i, align 1
  %79 = call i64 @llvm.bswap.i64(i64 %78) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %79)
  %cmp.not.i.i = icmp eq i64 %76, %79
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i26.i.do.end9.i28.i_crit_edge

if.end.i26.i.do.end9.i28.i_crit_edge:             ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i28.i

lor.lhs.false.i.i:                                ; preds = %if.end.i26.i
  %target_size.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 1
  %80 = ptrtoint ptr %target_size.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %target_size.i.i, align 8
  %target_size4.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i25.i, i32 0, i32 8
  %82 = ptrtoint ptr %target_size4.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %target_size4.i.i, align 1
  %84 = call i64 @llvm.bswap.i64(i64 %83) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %84)
  %cmp5.not.i.i = icmp eq i64 %81, %84
  br i1 %cmp5.not.i.i, label %if.end12.i31.i, label %lor.lhs.false.i.i.do.end9.i28.i_crit_edge

lor.lhs.false.i.i.do.end9.i28.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i28.i

do.end9.i28.i:                                    ; preds = %lor.lhs.false.i.i.do.end9.i28.i_crit_edge, %if.end.i26.i.do.end9.i28.i_crit_edge
  %call11.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %out_with_lock.i.i

if.end12.i31.i:                                   ; preds = %lor.lhs.false.i.i
  %85 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bm, align 4
  %metadata_space_map_root.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i25.i, i32 0, i32 6
  %tm.i29.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 13
  %sm.i30.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %call13.i.i = call i32 @dm_tm_open_with_sm(ptr noundef %86, i64 noundef 0, ptr noundef %metadata_space_map_root.i.i, i32 noundef 128, ptr noundef %tm.i29.i, ptr noundef %sm.i30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end21.i.i, label %do.end18.i.i

do.end18.i.i:                                     ; preds = %if.end12.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %out_with_lock.i.i

if.end21.i.i:                                     ; preds = %if.end12.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %tm.i29.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tm.i29.i, align 4
  %bitset_info.i32.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 15
  call void @dm_disk_bitset_init(ptr noundef %88, ptr noundef %bitset_info.i32.i) #9
  %bitset_root.i33.i = getelementptr inbounds %struct.superblock_disk, ptr %call2.i25.i, i32 0, i32 9
  %89 = ptrtoint ptr %bitset_root.i33.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %bitset_root.i33.i, align 1
  %91 = call i64 @llvm.bswap.i64(i64 %90) #9
  %bitset_root23.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 16
  %92 = ptrtoint ptr %bitset_root23.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %bitset_root23.i.i, align 8
  br label %out_with_lock.i.i

out_with_lock.i.i:                                ; preds = %if.end21.i.i, %do.end18.i.i, %do.end9.i28.i
  %r.0.i34.i = phi i32 [ -22, %do.end9.i28.i ], [ %call13.i.i, %do.end18.i.i ], [ 0, %if.end21.i.i ]
  %93 = ptrtoint ptr %sblock.i20.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sblock.i20.i, align 4
  call void @dm_bm_unlock(ptr noundef %94) #9
  br label %__open_metadata.exit.i

__open_metadata.exit.i:                           ; preds = %out_with_lock.i.i, %do.end.i24.i
  %retval.0.i35.i = phi i32 [ %call.i.i21.i, %do.end.i24.i ], [ %r.0.i34.i, %out_with_lock.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i20.i) #9
  br label %__open_or_format_metadata.exit

__open_or_format_metadata.exit:                   ; preds = %__open_metadata.exit.i, %__format_metadata.exit.i
  %retval.0.i = phi i32 [ %retval.0.i35.i, %__open_metadata.exit.i ], [ %retval.0.i19.i, %__format_metadata.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %__open_or_format_metadata.exit.cleanup_crit_edge, label %__open_or_format_metadata.exit.if.then8_crit_edge

__open_or_format_metadata.exit.if.then8_crit_edge: ; preds = %__open_or_format_metadata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

__open_or_format_metadata.exit.cleanup_crit_edge: ; preds = %__open_or_format_metadata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %__open_or_format_metadata.exit.if.then8_crit_edge, %if.then2.i.if.then8_crit_edge, %__superblock_all_zeroes.exit.i
  %retval.0.i19 = phi i32 [ %retval.0.i, %__open_or_format_metadata.exit.if.then8_crit_edge ], [ -1, %if.then2.i.if.then8_crit_edge ], [ %call.i.i, %__superblock_all_zeroes.exit.i ]
  %95 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bm, align 4
  call void @dm_block_manager_destroy(ptr noundef %96) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %__open_or_format_metadata.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %retval.0.i19, %if.then8 ], [ 0, %__open_or_format_metadata.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__load_bitset_in_core(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %c = alloca %struct.dm_bitset_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %c) #9
  %0 = call ptr @memset(ptr %c, i32 255, i32 208)
  %bitset_info = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 15
  %bitset_root = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 16
  %1 = ptrtoint ptr %bitset_root to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %bitset_root, align 8
  %call = tail call i32 @dm_bitset_flush(ptr noundef %bitset_info, i64 noundef %2, ptr noundef %bitset_root) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bitset_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bitset_root, align 8
  %nr_regions = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_regions, align 8
  %call4 = call i32 @dm_bitset_cursor_begin(ptr noundef %bitset_info, i64 noundef %4, i32 noundef %6, ptr noundef nonnull %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %region_map10 = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %if.end14.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %if.end14.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %call8 = call zeroext i1 @dm_bitset_cursor_get_value(ptr noundef nonnull %c) #9
  %7 = ptrtoint ptr %region_map10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %region_map10, align 4
  %rem.i = and i32 %i.0, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.0, 5
  %add.ptr.i = getelementptr i32, ptr %8, i32 %div2.i
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %10, %shl.i
  br label %if.end11

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i = xor i32 %shl.i, -1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %12, %neg.i
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %and.i.sink = phi i32 [ %and.i, %if.else ], [ %or.i, %if.then9 ]
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i.sink, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_regions, align 8
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %sub)
  %cmp.not = icmp ult i32 %i.0, %sub
  br i1 %cmp.not, label %if.end14, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @dm_bitset_cursor_next(ptr noundef nonnull %c) #9
  %tobool16.not = icmp eq i32 %call15, 0
  %inc = add nuw i32 %i.0, 1
  br i1 %tobool16.not, label %if.end14.for.cond_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.for.cond_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end11.for.end_crit_edge
  %r.1 = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ %call15, %if.end14.for.end_crit_edge ]
  call void @dm_bitset_cursor_end(ptr noundef nonnull %c) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %c) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_clone_metadata_close(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %3) #9
  %tm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 13
  %6 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %7) #9
  %bm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %8 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bm.i, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmap.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6
  %10 = ptrtoint ptr %dmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmap.i, align 4
  tail call void @kvfree(ptr noundef %11) #9
  %dirty_regions.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %dirty_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dirty_regions.i.i, align 4
  tail call void @kvfree(ptr noundef %13) #9
  %arrayidx2.i = getelementptr %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @kvfree(ptr noundef %15) #9
  %dirty_regions.i4.i = getelementptr %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %dirty_regions.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dirty_regions.i4.i, align 4
  tail call void @kvfree(ptr noundef %17) #9
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %18 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %region_map, align 4
  tail call void @kvfree(ptr noundef %19) #9
  tail call void @kfree(ptr noundef %cmd) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dm_clone_is_hydration_done(ptr nocapture noundef readonly %cmd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hydration_done = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %hydration_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %hydration_done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast = icmp slt i8 %bf.load, 0
  ret i1 %bf.cast
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dm_clone_is_region_hydrated(ptr nocapture noundef readonly %cmd, i32 noundef %region_nr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hydration_done.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %hydration_done.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %hydration_done.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.i = icmp slt i8 %bf.load.i, 0
  br i1 %bf.cast.i, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %1 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %region_map, align 4
  %div3.i = lshr i32 %region_nr, 5
  %arrayidx.i = getelementptr i32, ptr %2, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %region_nr, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %7 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool, %lor.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_clone_is_range_hydrated(ptr nocapture noundef readonly %cmd, i32 noundef %start, i32 noundef %nr_regions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hydration_done.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %hydration_done.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %hydration_done.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.i = icmp slt i8 %bf.load.i, 0
  br i1 %bf.cast.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %1 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %region_map, align 4
  %nr_regions1 = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %nr_regions1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_regions1, align 8
  %call2 = tail call i32 @_find_next_zero_bit_be(ptr noundef %2, i32 noundef %4, i32 noundef %start) #9
  %add = add i32 %nr_regions, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %add)
  %cmp = icmp uge i32 %call2, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_nr_of_hydrated_regions(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_regions = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_regions, align 8
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %2 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region_map, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %3, i32 noundef %1) #9
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_find_next_unhydrated_region(ptr nocapture noundef readonly %cmd, i32 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %0 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %region_map, align 4
  %nr_regions = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_regions, align 8
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef %start) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_metadata_pre_commit(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm, align 4
  %call = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %3) #9
  br i1 %call, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %current_dmap = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %current_dmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_dmap, align 4
  %dmap1 = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6
  %cmp = icmp eq ptr %5, %dmap1
  %arrayidx3 = getelementptr %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 1
  %cond = select i1 %cmp, ptr %arrayidx3, ptr %dmap1
  %changed = getelementptr inbounds %struct.dirty_map, ptr %cond, i32 0, i32 2
  %6 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %committing_dmap = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %committing_dmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %committing_dmap, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end30, label %lor.rhs.do.end_crit_edge, !prof !141

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 798, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end30:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bitmap_lock) #9
  %10 = ptrtoint ptr %current_dmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cond, ptr %current_dmap, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bitmap_lock) #9
  %11 = ptrtoint ptr %committing_dmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %committing_dmap, align 8
  br label %out

out:                                              ; preds = %if.end30, %do.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ -22, %do.end ], [ 0, %if.end30 ], [ -1, %lor.lhs.false.out_crit_edge ], [ -1, %entry.out_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_bm_is_read_only(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_metadata_commit(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %root_size.i.i.i = alloca i32, align 4
  %sblock.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm, align 4
  %call = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %3) #9
  br i1 %call, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %committing_dmap = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 8
  %4 = ptrtoint ptr %committing_dmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %committing_dmap, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !145

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 825, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25:                                         ; preds = %if.end
  %nr_words.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 4
  %dirty_regions.i = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 1
  %nr_regions.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %bitset_info.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 15
  %bitset_root.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end25
  %word.0.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %if.end4.i.do.body.i_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %nr_words.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_words.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %9, i32 noundef %word.0.i) #9
  %10 = ptrtoint ptr %nr_words.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_words.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp.i = icmp eq i32 %call.i, %11
  br i1 %cmp.i, label %do.body.i.do.end.i_crit_edge, label %if.end.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %do.body.i
  %12 = ptrtoint ptr %dirty_regions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dirty_regions.i, align 4
  %mul.i.i = shl i32 %call.i, 5
  %14 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_regions.i.i, align 8
  %mul1.i.i = add i32 %mul.i.i, 32
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %mul1.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %16)
  %cmp225.i.i = icmp ult i32 %mul.i.i, %16
  br i1 %cmp225.i.i, label %if.end.i.while.body.i.i_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %index.026.i.i = phi i32 [ %inc.i.i, %if.end9.i.i.while.body.i.i_crit_edge ], [ %mul.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %div3.i.i.i = lshr i32 %index.026.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %13, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %index.026.i.i, 31
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end9.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %21 = ptrtoint ptr %bitset_root.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bitset_root.i.i, align 8
  %call4.i.i = tail call i32 @dm_bitset_set_bit(ptr noundef %bitset_info.i.i, i64 noundef %22, i32 noundef %index.026.i.i, ptr noundef %bitset_root.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i, label %__update_metadata_word.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i.i = xor i32 %19, -1
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i24.i.i = and i32 %24, %neg.i.i.i
  store i32 %and.i24.i.i, ptr %arrayidx.i.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %while.body.i.i.if.end9.i.i_crit_edge
  %inc.i.i = add i32 %index.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %if.end9.i.i.if.end4.i_crit_edge, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end9.i.i.if.end4.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

__update_metadata_word.exit.i:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %out

if.end4.i:                                        ; preds = %if.end9.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %26, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %28, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add i32 %call.i, 1
  %29 = ptrtoint ptr %nr_words.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_words.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %30
  br i1 %cmp7.i, label %if.end4.i.do.body.i_crit_edge, label %if.end4.i.do.end.i_crit_edge

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %if.end4.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sblock.i.i) #9
  %31 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %sblock.i.i, align 4, !annotation !143
  %32 = ptrtoint ptr %bitset_root.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bitset_root.i.i, align 8
  %call.i.i = tail call i32 @dm_bitset_flush(ptr noundef %bitset_info.i.i, i64 noundef %33, ptr noundef %bitset_root.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i35.i, label %do.end.i34.i

do.end.i34.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  br label %__metadata_commit.exit.thread.i

if.end.i35.i:                                     ; preds = %do.end.i
  %tm.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 13
  %34 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tm.i.i, align 4
  %call3.i.i = tail call i32 @dm_tm_pre_commit(ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %__metadata_commit.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end.i35.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  %36 = ptrtoint ptr %root_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %root_size.i.i.i, align 4, !annotation !143
  %sm.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %37 = ptrtoint ptr %sm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sm.i.i.i, align 8
  %root_size.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %root_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %root_size.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %40(ptr noundef %38, ptr noundef nonnull %root_size.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__copy_sm_root.exit.i.i, label %__copy_sm_root.exit.thread.i.i

__copy_sm_root.exit.thread.i.i:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  br label %do.end17.i.i

__copy_sm_root.exit.i.i:                          ; preds = %if.end11.i.i
  %41 = ptrtoint ptr %sm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sm.i.i.i, align 8
  %metadata_space_map_root.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 17
  %43 = ptrtoint ptr %root_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %root_size.i.i.i, align 4
  %copy_root.i.i.i.i = getelementptr inbounds %struct.dm_space_map, ptr %42, i32 0, i32 12
  %45 = ptrtoint ptr %copy_root.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %copy_root.i.i.i.i, align 4
  %call.i7.i.i.i = call i32 %46(ptr noundef %42, ptr noundef %metadata_space_map_root.i.i.i, i32 noundef %44) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_size.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool13.not.i.i = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end20.i.i, label %__copy_sm_root.exit.i.i.do.end17.i.i_crit_edge

__copy_sm_root.exit.i.i.do.end17.i.i_crit_edge:   ; preds = %__copy_sm_root.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %__copy_sm_root.exit.i.i.do.end17.i.i_crit_edge, %__copy_sm_root.exit.thread.i.i
  %retval.0.i72.i.i = phi i32 [ %call.i.i.i.i, %__copy_sm_root.exit.thread.i.i ], [ %call.i7.i.i.i, %__copy_sm_root.exit.i.i.do.end17.i.i_crit_edge ]
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %__metadata_commit.exit.thread.i

if.end20.i.i:                                     ; preds = %__copy_sm_root.exit.i.i
  %47 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bm, align 4
  %call.i.i.i = call i32 @dm_bm_write_lock_zero(ptr noundef %48, i64 noundef 0, ptr noundef nonnull @sb_validator, ptr noundef nonnull %sblock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end29.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  br label %__metadata_commit.exit.thread.i

if.end29.i.i:                                     ; preds = %if.end20.i.i
  %49 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sblock.i.i, align 4
  %call30.i.i = call ptr @dm_block_data(ptr noundef %50) #9
  %flags.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %flags.i.i.i, align 1
  %uuid.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 3
  %52 = call ptr @memset(ptr %uuid.i.i.i, i32 0, i32 16)
  %magic.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 7241773400354455552, ptr %magic.i.i.i, align 1
  %version.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 16777216, ptr %version.i.i.i, align 1
  %metadata_space_map_root.i65.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 6
  %55 = call ptr @memcpy(ptr %metadata_space_map_root.i65.i.i, ptr %metadata_space_map_root.i.i.i, i32 128)
  %region_size.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 2
  %56 = ptrtoint ptr %region_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %region_size.i.i.i, align 8
  %58 = call i64 @llvm.bswap.i64(i64 %57) #9
  %region_size2.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %region_size2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %region_size2.i.i.i, align 1
  %target_size.i.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 1
  %60 = ptrtoint ptr %target_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %target_size.i.i.i, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %61) #9
  %target_size3.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %target_size3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %target_size3.i.i.i, align 1
  %64 = ptrtoint ptr %bitset_root.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bitset_root.i.i, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #9
  %bitset_root4.i.i.i = getelementptr inbounds %struct.superblock_disk, ptr %call30.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %bitset_root4.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %66, ptr %bitset_root4.i.i.i, align 1
  %68 = ptrtoint ptr %tm.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tm.i.i, align 4
  %70 = ptrtoint ptr %sblock.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sblock.i.i, align 4
  %call32.i.i = call i32 @dm_tm_commit(ptr noundef %69, ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %bitmap_full.exit.i.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %__metadata_commit.exit.thread.i

bitmap_full.exit.i.i:                             ; preds = %if.end29.i.i
  %72 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_regions.i.i, align 8
  %region_map.i.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %74 = ptrtoint ptr %region_map.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %region_map.i.i, align 4
  %call.i67.i.i = call i32 @_find_first_zero_bit_be(ptr noundef %75, i32 noundef %73) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i67.i.i, i32 %73)
  %cmp4.i.i.i = icmp eq i32 %call.i67.i.i, %73
  br i1 %cmp4.i.i.i, label %if.then42.i.i, label %bitmap_full.exit.i.i.if.then29_crit_edge

bitmap_full.exit.i.i.if.then29_crit_edge:         ; preds = %bitmap_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then42.i.i:                                    ; preds = %bitmap_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i.i = load i8, ptr %fail_io, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %fail_io, align 8
  br label %if.then29

__metadata_commit.exit.thread.i:                  ; preds = %do.end37.i.i, %do.end26.i.i, %do.end17.i.i, %do.end8.i.i, %do.end.i34.i
  %retval.0.i39.ph.i = phi i32 [ %call32.i.i, %do.end37.i.i ], [ %call.i.i.i, %do.end26.i.i ], [ %retval.0.i72.i.i, %do.end17.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %call.i.i, %do.end.i34.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #9
  br label %out

if.then29:                                        ; preds = %if.then42.i.i, %bitmap_full.exit.i.i.if.then29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sblock.i.i) #9
  %bitmap_lock.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %bitmap_lock.i) #9
  %changed.i = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %changed.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %changed.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %bitmap_lock.i) #9
  %78 = ptrtoint ptr %committing_dmap to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %committing_dmap, align 8
  br label %out

out:                                              ; preds = %if.then29, %__metadata_commit.exit.thread.i, %__update_metadata_word.exit.i, %do.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %lor.lhs.false.out_crit_edge ], [ -22, %do.end ], [ 0, %if.then29 ], [ %retval.0.i39.ph.i, %__metadata_commit.exit.thread.i ], [ %call4.i.i, %__update_metadata_word.exit.i ]
  call void @up_write(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_set_region_hydrated(ptr noundef %cmd, i32 noundef %region_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_regions = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_regions, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %region_nr)
  %cmp.not = icmp ugt i32 %1, %region_nr
  br i1 %cmp.not, label %if.end, label %do.end, !prof !141

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %region_nr, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bitmap_lock) #9
  %read_only = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_only, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div32 = lshr i32 %region_nr, 5
  %current_dmap = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %current_dmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_dmap, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rem.i = and i32 %div32, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %region_nr, 10
  %add.ptr.i = getelementptr i32, ptr %7, i32 %div2.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %9, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %dirty_regions = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dirty_regions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dirty_regions, align 4
  %rem.i33 = and i32 %region_nr, 31
  %shl.i34 = shl nuw i32 1, %rem.i33
  %add.ptr.i36 = getelementptr i32, ptr %11, i32 %div32
  %12 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i36, align 4
  %or.i37 = or i32 %13, %shl.i34
  store i32 %or.i37, ptr %add.ptr.i36, align 4
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %14 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %region_map, align 4
  %add.ptr.i41 = getelementptr i32, ptr %15, i32 %div32
  %16 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i41, align 4
  %or.i42 = or i32 %17, %shl.i34
  store i32 %or.i42, ptr %add.ptr.i41, align 4
  %changed = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %changed, align 4
  br label %out

out:                                              ; preds = %if.end15, %if.end.out_crit_edge
  %r.0 = phi i32 [ 0, %if.end15 ], [ -1, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ %r.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_cond_set_range(ptr noundef %cmd, i32 noundef %start, i32 noundef %nr_regions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_regions1 = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %nr_regions1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_regions1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %start)
  %cmp.not = icmp ugt i32 %1, %start
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge, !prof !141

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %nr_regions, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp2 = icmp ult i32 %add, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp5 = icmp ugt i32 %add, %1
  %spec.select = select i1 %cmp2, i1 true, i1 %cmp5, !prof !145
  br i1 %spec.select, label %lor.lhs.false.do.end_crit_edge, label %if.end, !prof !145

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %start, i32 noundef %nr_regions, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bitmap_lock) #9
  %read_only = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_only, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end
  %current_dmap = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %current_dmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_dmap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp1257 = icmp ugt i32 %add, %start
  br i1 %cmp1257, label %for.body.lr.ph, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %if.end10
  %region_map = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 9
  %dirty_regions = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 1
  %changed = getelementptr inbounds %struct.dirty_map, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %region_nr.058 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %region_map, align 4
  %div3.i = lshr i32 %region_nr.058, 5
  %arrayidx.i = getelementptr i32, ptr %7, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %region_nr.058, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.then15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %rem.i = and i32 %div3.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %region_nr.058, 10
  %add.ptr.i = getelementptr i32, ptr %13, i32 %div2.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %15, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %dirty_regions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dirty_regions, align 4
  %add.ptr.i50 = getelementptr i32, ptr %17, i32 %div3.i
  %18 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i50, align 4
  %or.i51 = or i32 %19, %10
  store i32 %or.i51, ptr %add.ptr.i50, align 4
  %20 = ptrtoint ptr %region_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %region_map, align 4
  %add.ptr.i55 = getelementptr i32, ptr %21, i32 %div3.i
  %22 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i55, align 4
  %or.i56 = or i32 %23, %10
  store i32 %or.i56, ptr %add.ptr.i55, align 4
  %24 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %changed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %region_nr.058, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge
  %r.0 = phi i32 [ -1, %if.end.out_crit_edge ], [ 0, %if.end10.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %bitmap_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ %r.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_reload_in_core_bitset(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @__load_bitset_in_core(ptr noundef %cmd)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call, %if.end ]
  tail call void @up_write(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_clone_changed_this_transaction(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bitmap_lock) #9
  %changed = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 0, i32 2
  %0 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %changed7 = getelementptr %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 6, i32 1, i32 2
  %2 = ptrtoint ptr %changed7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %changed7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool8, %lor.rhs ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock, i32 noundef %call2) #9
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_metadata_abort(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm, align 4
  %call = tail call zeroext i1 @dm_bm_is_read_only(ptr noundef %3) #9
  br i1 %call, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %sm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %4 = ptrtoint ptr %sm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sm.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %5) #9
  %tm.i = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 13
  %8 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tm.i, align 4
  tail call void @dm_tm_destroy(ptr noundef %9) #9
  %10 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bm, align 4
  tail call void @dm_block_manager_destroy(ptr noundef %11) #9
  %call1 = tail call fastcc i32 @__create_persistent_data_structures(ptr noundef %cmd, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load4 = load i8, ptr %fail_io, align 8
  %bf.set = or i8 %bf.load4, 64
  store i8 %bf.set, ptr %fail_io, align 8
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ -1, %entry.out_crit_edge ], [ -1, %lor.lhs.false.out_crit_edge ], [ %call1, %if.then2 ], [ 0, %if.end.out_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_clone_metadata_set_read_only(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bitmap_lock) #9
  %read_only = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 10
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %read_only, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %bitmap_lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %1 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %fail_io, align 8
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not = icmp eq i8 %2, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  tail call void @dm_bm_set_read_only(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_only(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_clone_metadata_set_read_write(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_write(ptr noundef %lock) #9
  %bitmap_lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bitmap_lock) #9
  %read_only = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 10
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %read_only, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %bitmap_lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %1 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %fail_io, align 8
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %bf.cast.not = icmp eq i8 %2, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 11
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  tail call void @dm_bm_set_read_write(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_set_read_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_get_free_metadata_block_count(ptr noundef %cmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_read(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  %get_nr_free.i = getelementptr inbounds %struct.dm_space_map, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_nr_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nr_free.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3, ptr noundef %result) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_read(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_clone_get_metadata_dev_size(ptr noundef %cmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 14
  tail call void @down_read(ptr noundef %lock) #9
  %fail_io = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 18
  %0 = ptrtoint ptr %fail_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %fail_io, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sm = getelementptr inbounds %struct.dm_clone_metadata, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm, align 8
  %get_nr_blocks.i = getelementptr inbounds %struct.dm_space_map, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_nr_blocks.i, align 4
  %call.i = tail call i32 %5(ptr noundef %3, ptr noundef %result) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ -22, %entry.if.end_crit_edge ], [ %call.i, %if.then ]
  tail call void @up_read(ptr noundef %lock) #9
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_manager_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_block_manager_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bm_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_create_with_sm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_disk_bitset_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_empty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_pre_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock_zero(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sb_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #9
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #9
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %blocknr, align 1
  %flags = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 257649492) #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %call, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %sb_block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #9
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #9
  %blocknr = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %blocknr, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i64 @dm_block_location(ptr noundef %b) #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i64 noundef %2, i64 noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 7241773400354455552, i64 %4)
  %cmp5.not = icmp eq i64 %4, 7241773400354455552
  br i1 %cmp5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i64 noundef %5, i64 noundef 2331148132) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 1
  %sub = add i32 %sb_block_size, -4
  %call14 = tail call i32 @dm_bm_checksum(ptr noundef %flags, i32 noundef %sub, i32 noundef 257649492) #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %call, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %call14)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp16.not = icmp eq i32 %7, %8
  br i1 %cmp16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call14, i32 noundef %9) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %version = getelementptr inbounds %struct.superblock_disk, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %version, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp26 = icmp ugt i32 %12, 1
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp26
  br i1 %or.cond, label %do.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %12, i32 noundef 1, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end24.cleanup_crit_edge, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ -15, %do.end ], [ -84, %do.end9 ], [ -84, %do.end20 ], [ -22, %do.end30 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_open_with_sm(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_flush(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_cursor_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_bitset_cursor_get_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_cursor_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bitset_cursor_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bitset_set_bit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-clone-metadata.c", i32 566, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_clone_metadata_open._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_clone_metadata_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @dm_clone_metadata_open.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-clone-metadata.c", i32 576, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dm_clone_metadata_open.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-clone-metadata.c", i32 577, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-clone-metadata.c", i32 584, i32 3}
!14 = !{ptr @dm_clone_metadata_open._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dm_clone_metadata_open._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-clone-metadata.c", i32 595, i32 3}
!18 = !{ptr @dm_clone_metadata_open._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dm_clone_metadata_open._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-clone-metadata.c", i32 848, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dm_clone_set_region_hydrated._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dm_clone_set_region_hydrated._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-clone-metadata.c", i32 884, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dm_clone_cond_set_range._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dm_clone_cond_set_range._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-clone-metadata.c", i32 448, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__create_persistent_data_structures._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__create_persistent_data_structures._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-clone-metadata.c", i32 246, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__superblock_all_zeroes._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @__superblock_all_zeroes._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-clone-metadata.c", i32 368, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__format_metadata._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__format_metadata._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-clone-metadata.c", i32 376, i32 3}
!47 = !{ptr @__format_metadata._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @__format_metadata._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-clone-metadata.c", i32 383, i32 3}
!51 = !{ptr @__format_metadata._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__format_metadata._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-clone-metadata.c", i32 390, i32 3}
!55 = !{ptr @__format_metadata._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__format_metadata._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-clone-metadata.c", i32 396, i32 3}
!59 = !{ptr @__format_metadata._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @__format_metadata._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-clone-metadata.c", i32 402, i32 3}
!63 = !{ptr @__format_metadata._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__format_metadata._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-clone-metadata.c", i32 410, i32 3}
!67 = !{ptr @__format_metadata._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @__format_metadata._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-clone-metadata.c", i32 224, i32 10}
!71 = !{ptr @sb_validator, !72, !"sb_validator", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-clone-metadata.c", i32 223, i32 34}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-clone-metadata.c", i32 189, i32 3}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sb_check._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sb_check._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-clone-metadata.c", i32 196, i32 3}
!80 = !{ptr @sb_check._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sb_check._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-clone-metadata.c", i32 205, i32 3}
!84 = !{ptr @sb_check._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sb_check._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-clone-metadata.c", i32 214, i32 3}
!88 = !{ptr @sb_check._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sb_check._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-clone-metadata.c", i32 327, i32 3}
!92 = !{ptr @__open_metadata._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @__open_metadata._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-clone-metadata.c", i32 336, i32 3}
!96 = !{ptr @__open_metadata._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @__open_metadata._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-clone-metadata.c", i32 347, i32 3}
!100 = !{ptr @__open_metadata._entry.56, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @__open_metadata._entry_ptr.58, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-clone-metadata.c", i32 500, i32 3}
!104 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dirty_map_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dirty_map_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dirty_map_init._entry.61, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/md/dm-clone-metadata.c", i32 505, i32 3}
!109 = !{ptr @dirty_map_init._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-clone-metadata.c", i32 677, i32 5}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @__update_metadata_word._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @__update_metadata_word._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-clone-metadata.c", i32 697, i32 3}
!117 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__metadata_commit._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @__metadata_commit._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @__metadata_commit._entry.67, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-clone-metadata.c", i32 704, i32 3}
!122 = !{ptr @__metadata_commit._entry_ptr.68, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @__metadata_commit._entry.69, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-clone-metadata.c", i32 711, i32 3}
!125 = !{ptr @__metadata_commit._entry_ptr.70, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @__metadata_commit._entry.71, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-clone-metadata.c", i32 718, i32 3}
!128 = !{ptr @__metadata_commit._entry_ptr.72, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @__metadata_commit._entry.73, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-clone-metadata.c", i32 729, i32 3}
!131 = !{ptr @__metadata_commit._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2148537601, i64 2148537881, i64 2148538215, i64 2148538549}
!143 = !{!"auto-init"}
!144 = !{i64 2154361006, i64 2154361501, i64 2154361043, i64 2154361099, i64 2154361133, i64 2154361157, i64 2154361198, i64 2154361219, i64 2154361247, i64 2154361281}
!145 = !{!"branch_weights", i32 1, i32 2000}
