; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-space-map-metadata.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-space-map-metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_space_map = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sm_metadata = type { %struct.dm_space_map, %struct.ll_disk, %struct.ll_disk, i64, i32, i32, %struct.bop_ring_buffer, %struct.threshold }
%struct.ll_disk = type { ptr, %struct.dm_btree_info, %struct.dm_btree_info, i32, i32, i64, i64, i64, i64, %struct.disk_metadata_index, ptr, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ie_cache] }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.disk_metadata_index = type { i32, i32, i64, [255 x %struct.disk_index_entry] }
%struct.disk_index_entry = type { i64, i32, i32 }
%struct.ie_cache = type { i8, i8, i64, %struct.disk_index_entry }
%struct.bop_ring_buffer = type { i32, i32, [1025 x %struct.block_op] }
%struct.block_op = type { i32, i64, i64 }
%struct.threshold = type { i8, i8, i64, i64, ptr, ptr }

@ops = internal constant { %struct.dm_space_map, [40 x i8] } { %struct.dm_space_map { ptr @sm_metadata_destroy, ptr @sm_metadata_extend, ptr @sm_metadata_get_nr_blocks, ptr @sm_metadata_get_nr_free, ptr @sm_metadata_get_count, ptr @sm_metadata_count_is_more_than_one, ptr @sm_metadata_set_count, ptr @sm_metadata_commit, ptr @sm_metadata_inc_blocks, ptr @sm_metadata_dec_blocks, ptr @sm_metadata_new_block, ptr @sm_metadata_root_size, ptr @sm_metadata_copy_root, ptr @sm_metadata_register_threshold_callback }, [40 x i8] zeroinitializer }, align 32
@bootstrap_ops = internal constant { %struct.dm_space_map, [40 x i8] } { %struct.dm_space_map { ptr @sm_bootstrap_destroy, ptr @sm_bootstrap_extend, ptr @sm_bootstrap_get_nr_blocks, ptr @sm_bootstrap_get_nr_free, ptr @sm_bootstrap_get_count, ptr @sm_bootstrap_count_is_more_than_one, ptr @sm_bootstrap_set_count, ptr @sm_bootstrap_commit, ptr @sm_bootstrap_inc_blocks, ptr @sm_bootstrap_dec_blocks, ptr @sm_bootstrap_new_block, ptr @sm_bootstrap_root_size, ptr @sm_bootstrap_copy_root, ptr null }, [40 x i8] zeroinitializer }, align 32
@dm_sm_metadata_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: space map metadata: %s: apply_bops failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_sm_metadata_create\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/md/persistent-data/dm-space-map-metadata.c\00", [45 x i8] zeroinitializer }, align 32
@dm_sm_metadata_create._entry_ptr = internal global ptr @dm_sm_metadata_create._entry, section ".printk_index", align 4
@sm_metadata_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sm_metadata_extend\00", [45 x i8] zeroinitializer }, align 32
@sm_metadata_extend._entry_ptr = internal global ptr @sm_metadata_extend._entry, section ".printk_index", align 4
@sm_metadata_set_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: space map metadata: cannot recurse set_count()\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sm_metadata_set_count\00", [42 x i8] zeroinitializer }, align 32
@sm_metadata_set_count._entry_ptr = internal global ptr @sm_metadata_set_count._entry, section ".printk_index", align 4
@out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: space map metadata: lost track of recursion depth\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@out._entry_ptr = internal global ptr @out._entry, section ".printk_index", align 4
@sm_metadata_new_block._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sm_metadata_new_block = private unnamed_addr constant [22 x i8] c"sm_metadata_new_block\00", align 1
@sm_metadata_new_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.sm_metadata_new_block, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013device-mapper: space map metadata: unable to allocate new metadata block\0A\00", [52 x i8] zeroinitializer }, align 32
@sm_metadata_new_block._entry_ptr = internal global ptr @sm_metadata_new_block._entry, section ".printk_index", align 4
@sm_metadata_new_block._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.sm_metadata_new_block, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: space map metadata: couldn't get free block count\0A\00", [60 x i8] zeroinitializer }, align 32
@sm_metadata_new_block._entry_ptr.13 = internal global ptr @sm_metadata_new_block._entry.11, section ".printk_index", align 4
@sm_bootstrap_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: space map metadata: bootstrap doesn't support extend\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm_bootstrap_extend\00", [44 x i8] zeroinitializer }, align 32
@sm_bootstrap_extend._entry_ptr = internal global ptr @sm_bootstrap_extend._entry, section ".printk_index", align 4
@sm_bootstrap_set_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: space map metadata: bootstrap doesn't support set_count\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sm_bootstrap_set_count\00", [41 x i8] zeroinitializer }, align 32
@sm_bootstrap_set_count._entry_ptr = internal global ptr @sm_bootstrap_set_count._entry, section ".printk_index", align 4
@sm_bootstrap_root_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: space map metadata: bootstrap doesn't support root_size\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sm_bootstrap_root_size\00", [41 x i8] zeroinitializer }, align 32
@sm_bootstrap_root_size._entry_ptr = internal global ptr @sm_bootstrap_root_size._entry, section ".printk_index", align 4
@sm_bootstrap_copy_root._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: space map metadata: bootstrap doesn't support copy_root\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sm_bootstrap_copy_root\00", [41 x i8] zeroinitializer }, align 32
@sm_bootstrap_copy_root._entry_ptr = internal global ptr @sm_bootstrap_copy_root._entry, section ".printk_index", align 4
@add_bop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: space map metadata: too many recursive allocations\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"add_bop\00", [24 x i8] zeroinitializer }, align 32
@add_bop._entry_ptr = internal global ptr @add_bop._entry, section ".printk_index", align 4
@apply_bops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: space map metadata: bug in bop ring buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apply_bops\00", [21 x i8] zeroinitializer }, align 32
@apply_bops._entry_ptr = internal global ptr @apply_bops._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 559, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"bootstrap_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 696, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 816, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 747, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 399, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 246, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 490, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 496, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 588, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 632, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 683, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 691, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 185, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [54 x i8] c"../drivers/md/persistent-data/dm-space-map-metadata.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 224, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @add_bop._entry, ptr @add_bop._entry_ptr, ptr @apply_bops._entry, ptr @apply_bops._entry_ptr, ptr @dm_sm_metadata_create._entry, ptr @dm_sm_metadata_create._entry_ptr, ptr @out._entry, ptr @out._entry_ptr, ptr @sm_bootstrap_copy_root._entry, ptr @sm_bootstrap_copy_root._entry_ptr, ptr @sm_bootstrap_extend._entry, ptr @sm_bootstrap_extend._entry_ptr, ptr @sm_bootstrap_root_size._entry, ptr @sm_bootstrap_root_size._entry_ptr, ptr @sm_bootstrap_set_count._entry, ptr @sm_bootstrap_set_count._entry_ptr, ptr @sm_metadata_extend._entry, ptr @sm_metadata_extend._entry_ptr, ptr @sm_metadata_new_block._entry, ptr @sm_metadata_new_block._entry.11, ptr @sm_metadata_new_block._entry_ptr, ptr @sm_metadata_new_block._entry_ptr.13, ptr @sm_metadata_set_count._entry, ptr @sm_metadata_set_count._entry_ptr, ptr @ops, ptr @bootstrap_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sm_metadata_new_block._rs, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bootstrap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_sm_metadata_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_metadata_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_metadata_set_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_metadata_new_block._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_metadata_new_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_metadata_new_block._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_bootstrap_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_bootstrap_set_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_bootstrap_root_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_bootstrap_copy_root._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_bop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_bops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_sm_metadata_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 37272, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memcpy(ptr %call1.i.i, ptr @ops, i32 56)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_sm_metadata_create(ptr noundef %sm, ptr noundef %tm, i64 noundef %nr_blocks, i64 noundef %superblock) local_unnamed_addr #0 align 64 {
entry:
  %nr_allocations.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %superblock, 1
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %0 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %add, ptr %begin, align 8
  %recursion_count = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 4
  %allocated_this_transaction = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %uncommitted = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %threshold = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7
  %1 = ptrtoint ptr %threshold to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %threshold, align 8
  %value_set.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %value_set.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %value_set.i, align 1
  %3 = call ptr @memset(ptr %recursion_count, i32 0, i32 16)
  %4 = call ptr @memcpy(ptr %sm, ptr @bootstrap_ops, i32 56)
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_new_metadata(ptr noundef %ll, ptr noundef %tm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %sm, ptr @ops, i32 56)
  br label %cleanup

if.end5:                                          ; preds = %entry
  %6 = tail call i64 @llvm.umin.i64(i64 %nr_blocks, i64 4161600)
  %call4 = tail call i32 @sm_ll_extend(ptr noundef %ll, i64 noundef %6) #10
  %7 = call ptr @memcpy(ptr %sm, ptr @ops, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool7.not = icmp eq i32 %call4, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %add.i.i.i = add i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %10 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uncommitted, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %11)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %11
  br i1 %cmp.i.i, label %add_bop.exit, label %if.end14

add_bop.exit:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %begin, align 8
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %9
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %9, i32 1
  %15 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %superblock, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %9, i32 2
  %16 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %e4.i.i, align 8
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i.i.i, ptr %end.i, align 4
  %18 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uncommitted, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.select.i.i.i)
  %cmp.i31.i = icmp eq i32 %19, %spec.select.i.i.i
  br i1 %cmp.i31.i, label %if.end14.if.end20_crit_edge, label %if.end14.if.end.i_crit_edge

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  br label %if.end.i

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge
  %20 = phi i32 [ %32, %cleanup.i.if.end.i_crit_edge ], [ %19, %if.end14.if.end.i_crit_edge ]
  %add.ptr.i.i46 = getelementptr %struct.block_op, ptr %bops.i.i, i32 %20
  %21 = ptrtoint ptr %add.ptr.i.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bop.sroa.0.0.copyload19.i = load i32, ptr %add.ptr.i.i46, align 8
  %bop.sroa.521.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i46, i32 8
  %22 = ptrtoint ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %bop.sroa.521.0.copyload22.i = load i64, ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i, align 8
  %bop.sroa.7.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i46, i32 16
  %23 = ptrtoint ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %bop.sroa.7.0.copyload24.i = load i64, ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  %24 = ptrtoint ptr %nr_allocations.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %nr_allocations.i.i, align 4, !annotation !75
  %25 = zext i32 %bop.sroa.0.0.copyload19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bop.sroa.0.0.copyload19.i, label %commit_bop.exit.thread.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

commit_bop.exit.thread.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  br label %if.end7.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = call i32 @sm_ll_dec(ptr noundef %ll, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

commit_bop.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %r.0.i.i = phi i32 [ %call5.i.i, %sw.bb1.i.i ], [ %call.i.i, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i)
  %tobool5.not.i = icmp eq i32 %r.0.i.i, 0
  br i1 %tobool5.not.i, label %commit_bop.exit.i.if.end7.i_crit_edge, label %do.end

commit_bop.exit.i.if.end7.i_crit_edge:            ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %commit_bop.exit.i.if.end7.i_crit_edge, %commit_bop.exit.thread.i
  %26 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uncommitted, align 8
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i.i17.i = icmp eq i32 %27, %29
  br i1 %cmp.i.i17.i, label %if.end7.i.cleanup.i_crit_edge, label %if.end.i18.i

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i18.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i47 = add i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i47)
  %cmp.i1.i.i = icmp ugt i32 %add.i.i.i47, 1024
  %spec.select.i.i.i48 = select i1 %cmp.i1.i.i, i32 0, i32 %add.i.i.i47
  %30 = ptrtoint ptr %uncommitted to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i.i.i48, ptr %uncommitted, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i18.i, %if.end7.i.cleanup.i_crit_edge
  %31 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uncommitted, align 8
  %cmp.i.i49 = icmp eq i32 %32, %29
  br i1 %cmp.i.i49, label %cleanup.i.if.end20_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cleanup.i.if.end20_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end20:                                         ; preds = %cleanup.i.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %call.i = call i32 @sm_ll_commit(ptr noundef %ll) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i50, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i50:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %old_ll.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %old_ll.i, ptr %ll, i32 6280)
  %34 = ptrtoint ptr %allocated_this_transaction to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %allocated_this_transaction, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i50, %if.end20.cleanup_crit_edge, %do.end, %add_bop.exit, %if.end5.cleanup_crit_edge, %if.end5.thread
  %retval.0 = phi i32 [ %r.0.i.i, %do.end ], [ %call4, %if.end5.cleanup_crit_edge ], [ -12, %add_bop.exit ], [ %call, %if.end5.thread ], [ %call.i, %if.end20.cleanup_crit_edge ], [ 0, %if.end.i50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_new_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_commit(ptr noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_commit(ptr noundef %ll) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %old_ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %old_ll, ptr %ll, i32 6280)
  %allocated_this_transaction = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %1 = ptrtoint ptr %allocated_this_transaction to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %allocated_this_transaction, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_sm_metadata_open(ptr noundef %sm, ptr noundef %tm, ptr noundef %root_le, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call = tail call i32 @sm_ll_open_metadata(ptr noundef %ll, ptr noundef %tm, ptr noundef %root_le, i32 noundef %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %threshold = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %threshold, align 8
  %value_set.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %value_set.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %value_set.i, align 1
  %old_ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2
  %2 = call ptr @memset(ptr %begin, i32 0, i32 24)
  %3 = call ptr @memcpy(ptr %old_ll, ptr %ll, i32 6280)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_open_metadata(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm_metadata_destroy(ptr noundef %sm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %sm) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_extend(ptr noundef %sm, i64 noundef %extra_blocks) #0 align 64 {
entry:
  %nr_allocations.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %2 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %begin, align 8
  %3 = call ptr @memcpy(ptr %sm, ptr @bootstrap_ops, i32 56)
  %call = tail call i32 @sm_ll_extend(ptr noundef %ll, i64 noundef %extra_blocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body.preheader:                                ; preds = %entry
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond20.do.body_crit_edge, %do.body.preheader
  %old_len.0 = phi i64 [ %14, %do.cond20.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %6 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %7)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %7
  br i1 %cmp.i.i, label %add_bop.exit, label %if.end6

add_bop.exit:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %out

if.end6:                                          ; preds = %do.body
  %8 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %begin, align 8
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %5
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %5, i32 1
  %11 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %old_len.0, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %5, i32 2
  %12 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %e4.i.i, align 8
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i.i.i, ptr %end.i.i, align 4
  %14 = load i64, ptr %begin, align 8
  %15 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %spec.select.i.i.i)
  %cmp.i31.i = icmp eq i32 %16, %spec.select.i.i.i
  br i1 %cmp.i31.i, label %if.end6.if.end14_crit_edge, label %if.end6.if.end.i_crit_edge

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  br label %if.end.i

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %17 = phi i32 [ %29, %cleanup.i.if.end.i_crit_edge ], [ %16, %if.end6.if.end.i_crit_edge ]
  %add.ptr.i.i42 = getelementptr %struct.block_op, ptr %bops.i.i, i32 %17
  %18 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bop.sroa.0.0.copyload19.i = load i32, ptr %add.ptr.i.i42, align 8
  %bop.sroa.521.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i42, i32 8
  %19 = ptrtoint ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %bop.sroa.521.0.copyload22.i = load i64, ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i, align 8
  %bop.sroa.7.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i42, i32 16
  %20 = ptrtoint ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %bop.sroa.7.0.copyload24.i = load i64, ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  %21 = ptrtoint ptr %nr_allocations.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %nr_allocations.i.i, align 4, !annotation !75
  %22 = zext i32 %bop.sroa.0.0.copyload19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %bop.sroa.0.0.copyload19.i, label %commit_bop.exit.thread.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

commit_bop.exit.thread.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  br label %if.end7.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = call i32 @sm_ll_dec(ptr noundef %ll, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

commit_bop.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %r.0.i.i = phi i32 [ %call5.i.i, %sw.bb1.i.i ], [ %call.i.i, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i)
  %tobool5.not.i = icmp eq i32 %r.0.i.i, 0
  br i1 %tobool5.not.i, label %commit_bop.exit.i.if.end7.i_crit_edge, label %do.end

commit_bop.exit.i.if.end7.i_crit_edge:            ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %commit_bop.exit.i.if.end7.i_crit_edge, %commit_bop.exit.thread.i
  %23 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uncommitted.i, align 8
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i.i17.i = icmp eq i32 %24, %26
  br i1 %cmp.i.i17.i, label %if.end7.i.cleanup.i_crit_edge, label %if.end.i18.i

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i18.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i43 = add i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i43)
  %cmp.i1.i.i = icmp ugt i32 %add.i.i.i43, 1024
  %spec.select.i.i.i44 = select i1 %cmp.i1.i.i, i32 0, i32 %add.i.i.i43
  %27 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.i.i.i44, ptr %uncommitted.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i18.i, %if.end7.i.cleanup.i_crit_edge
  %28 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uncommitted.i, align 8
  %cmp.i.i45 = icmp eq i32 %29, %26
  br i1 %cmp.i.i45, label %cleanup.i.if.end14_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cleanup.i.if.end14_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  br label %out

if.end14:                                         ; preds = %cleanup.i.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %call16 = call i32 @sm_ll_commit(ptr noundef %ll) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.cond20, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.cond20:                                        ; preds = %if.end14
  %30 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %begin, align 8
  %cmp.not = icmp eq i64 %14, %31
  br i1 %cmp.not, label %do.cond20.out_crit_edge, label %do.cond20.do.body_crit_edge

do.cond20.do.body_crit_edge:                      ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond20.out_crit_edge:                          ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.cond20.out_crit_edge, %if.end14.out_crit_edge, %do.end, %add_bop.exit, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -12, %add_bop.exit ], [ %r.0.i.i, %do.end ], [ 0, %do.cond20.out_crit_edge ], [ %call16, %if.end14.out_crit_edge ]
  %32 = call ptr @memcpy(ptr %sm, ptr @ops, i32 56)
  ret i32 %r.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_metadata_get_nr_blocks(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_metadata_get_nr_free(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %nr_allocated = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_allocated, align 8
  %allocated_this_transaction = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %4 = ptrtoint ptr %allocated_this_transaction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %allocated_this_transaction, align 4
  %conv = zext i32 %5 to i64
  %6 = add i64 %3, %conv
  %sub2 = sub i64 %1, %6
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub2, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_get_count(ptr noundef %sm, i64 noundef %b, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uncommitted = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %0 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uncommitted, align 8
  %end = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not30 = icmp eq i32 %1, %3
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bops = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %adjustment.032 = phi i32 [ 0, %for.body.lr.ph ], [ %adjustment.2, %cleanup.for.body_crit_edge ]
  %i.031 = phi i32 [ %1, %for.body.lr.ph ], [ %spec.select.i, %cleanup.for.body_crit_edge ]
  %add.ptr3 = getelementptr %struct.block_op, ptr %bops, i32 %i.031
  %b4 = getelementptr %struct.block_op, ptr %bops, i32 %i.031, i32 1
  %4 = ptrtoint ptr %b4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %b)
  %cmp5 = icmp ugt i64 %5, %b
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %e = getelementptr %struct.block_op, ptr %bops, i32 %i.031, i32 2
  %6 = ptrtoint ptr %e to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %e, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %b)
  %cmp6.not = icmp ugt i64 %7, %b
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr3, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %adjustment.032, 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %adjustment.032, -1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %adjustment.2 = phi i32 [ %adjustment.032, %lor.lhs.false.cleanup_crit_edge ], [ %adjustment.032, %for.body.cleanup_crit_edge ], [ %adjustment.032, %if.end.cleanup_crit_edge ], [ %dec, %sw.bb7 ], [ %inc, %sw.bb ]
  %add.i = add i32 %i.031, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1024
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cmp.not = icmp eq i32 %spec.select.i, %3
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %adjustment.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %adjustment.2, %cleanup.for.end_crit_edge ]
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call9 = tail call i32 @sm_ll_lookup(ptr noundef %ll, i64 noundef %b, ptr noundef %result) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %for.end.cleanup12_crit_edge

for.end.cleanup12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result, align 4
  %add = add i32 %12, %adjustment.0.lcssa
  store i32 %add, ptr %result, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %if.end11, %for.end.cleanup12_crit_edge
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_count_is_more_than_one(ptr noundef %sm, i64 noundef %b, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #10
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rc, align 4, !annotation !75
  %uncommitted = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %1 = ptrtoint ptr %uncommitted to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uncommitted, align 8
  %end = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not40 = icmp eq i32 %2, %4
  br i1 %cmp.not40, label %entry.if.end11_crit_edge, label %for.body.lr.ph

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.lr.ph:                                   ; preds = %entry
  %bops = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ %2, %for.body.lr.ph ], [ %spec.select.i, %cleanup.for.body_crit_edge ]
  %adjustment.041 = phi i32 [ 0, %for.body.lr.ph ], [ %adjustment.2, %cleanup.for.body_crit_edge ]
  %add.ptr3 = getelementptr %struct.block_op, ptr %bops, i32 %i.042
  %b4 = getelementptr %struct.block_op, ptr %bops, i32 %i.042, i32 1
  %5 = ptrtoint ptr %b4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %b4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %b)
  %cmp5 = icmp ugt i64 %6, %b
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %e = getelementptr %struct.block_op, ptr %bops, i32 %i.042, i32 2
  %7 = ptrtoint ptr %e to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %e, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %b)
  %cmp6.not = icmp ugt i64 %8, %b
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %adjustment.041, 1
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %adjustment.041, -1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %adjustment.2 = phi i32 [ %adjustment.041, %lor.lhs.false.cleanup_crit_edge ], [ %adjustment.041, %for.body.cleanup_crit_edge ], [ %adjustment.041, %if.end.cleanup_crit_edge ], [ %dec, %sw.bb7 ], [ %inc, %sw.bb ]
  %add.i = add i32 %i.042, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1024
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cmp.not = icmp eq i32 %spec.select.i, %4
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %adjustment.2)
  %cmp9 = icmp sgt i32 %adjustment.2, 1
  br i1 %cmp9, label %for.end.cleanup19.sink.split_crit_edge, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.end.cleanup19.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19.sink.split

if.end11:                                         ; preds = %for.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %adjustment.0.lcssa45 = phi i32 [ %adjustment.2, %for.end.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call12 = call i32 @sm_ll_lookup_bitmap(ptr noundef %ll, i64 noundef %b, ptr noundef nonnull %rc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.cleanup19_crit_edge

if.end11.cleanup19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp15 = icmp eq i32 %13, 3
  %add = add i32 %13, %adjustment.0.lcssa45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp17 = icmp ugt i32 %add, 1
  %narrow = select i1 %cmp15, i1 true, i1 %cmp17
  %storemerge = zext i1 %narrow to i32
  br label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %if.end14, %for.end.cleanup19.sink.split_crit_edge
  %storemerge.sink = phi i32 [ %storemerge, %if.end14 ], [ 1, %for.end.cleanup19.sink.split_crit_edge ]
  %14 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.sink, ptr %result, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %if.end11.cleanup19_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11.cleanup19_crit_edge ], [ 0, %cleanup19.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_set_count(ptr noundef %sm, i64 noundef %b, i32 noundef %count) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #10
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !75
  %recursion_count = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 4
  %1 = ptrtoint ptr %recursion_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %recursion_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %recursion_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %recursion_count, align 8
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call2 = call i32 @sm_ll_insert(ptr noundef %ll, i64 noundef %b, i32 noundef %count, ptr noundef nonnull %nr_allocations) #10
  %call3 = call fastcc i32 @out(ptr noundef %sm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.i = icmp eq i32 %call2, 0
  %r2.r1.i = select i1 %tobool.not.i, i32 %call3, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %r2.r1.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_inc_blocks(ptr noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #10
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !75
  %recursion_count.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 4
  %1 = ptrtoint ptr %recursion_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %recursion_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %5 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %6)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %6
  br i1 %cmp.i.i, label %add_bop.exit, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4, i32 1
  %8 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %b, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4, i32 2
  %9 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %e, ptr %e4.i.i, align 8
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i.i.i, ptr %end.i.i, align 4
  br label %12

add_bop.exit:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %11 = ptrtoint ptr %recursion_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %recursion_count.i, align 8
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call4 = call i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr noundef nonnull %nr_allocations) #10
  %call5 = call fastcc i32 @out(ptr noundef %sm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i = icmp eq i32 %call4, 0
  br i1 %tobool.not.i, label %if.end6._crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6._crit_edge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %12

12:                                               ; preds = %if.end6._crit_edge, %if.end6.thread
  %r2.025 = phi i32 [ 0, %if.end6.thread ], [ %call5, %if.end6._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %12, %if.end6.cleanup_crit_edge, %add_bop.exit
  %retval.0 = phi i32 [ -12, %add_bop.exit ], [ %r2.025, %12 ], [ %call4, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_dec_blocks(ptr noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  %nr_allocations = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations) #10
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations, align 4, !annotation !75
  %recursion_count.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 4
  %1 = ptrtoint ptr %recursion_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %recursion_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %5 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %6)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %6
  br i1 %cmp.i.i, label %if.end.thread16, label %if.end.thread

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4, i32 1
  %8 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %b, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %4, i32 2
  %9 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %e, ptr %e4.i.i, align 8
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i.i.i, ptr %end.i.i, align 4
  br label %12

if.end.thread16:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %13

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %recursion_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %recursion_count.i, align 8
  %ll = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %call2 = call i32 @sm_ll_dec(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr noundef nonnull %nr_allocations) #10
  %call3 = call fastcc i32 @out(ptr noundef %sm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.i = icmp eq i32 %call2, 0
  br i1 %tobool.not.i, label %if.end._crit_edge, label %if.end._crit_edge20

if.end._crit_edge20:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %13

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %12

12:                                               ; preds = %if.end._crit_edge, %if.end.thread
  %r2.015 = phi i32 [ 0, %if.end.thread ], [ %call3, %if.end._crit_edge ]
  br label %13

13:                                               ; preds = %12, %if.end._crit_edge20, %if.end.thread16
  %14 = phi i32 [ %r2.015, %12 ], [ %call2, %if.end._crit_edge20 ], [ -12, %if.end.thread16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations) #10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_metadata_new_block(ptr noundef %sm, ptr noundef %b) #0 align 64 {
entry:
  %nr_allocations.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations.i) #10
  %0 = ptrtoint ptr %nr_allocations.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_allocations.i, align 4, !annotation !75
  %old_ll.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2
  %ll.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1
  %begin.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %1 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %begin.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_blocks.i, align 8
  %call.i = tail call i32 @sm_ll_find_common_free_block(ptr noundef %old_ll.i, ptr noundef %ll.i, i64 noundef %2, i64 noundef %4, ptr noundef %b) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %begin.i, align 8
  %call5.i = tail call i32 @sm_ll_find_common_free_block(ptr noundef %old_ll.i, ptr noundef %ll.i, i64 noundef 0, i64 noundef %6, ptr noundef %b) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %r.0.i = phi i32 [ %call5.i, %if.then.i ], [ %call.i, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool.not.i = icmp eq i32 %r.0.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.sm_metadata_new_block_.exit.thread_crit_edge

if.end.i.sm_metadata_new_block_.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm_metadata_new_block_.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b, align 8
  %add.i = add i64 %8, 1
  %9 = ptrtoint ptr %begin.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add.i, ptr %begin.i, align 8
  %recursion_count.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 4
  %10 = ptrtoint ptr %recursion_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %recursion_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not.i = icmp eq i32 %11, 0
  br i1 %tobool10.not.i, label %if.end18.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  %uncommitted.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 1024
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %14 = ptrtoint ptr %uncommitted.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uncommitted.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i.i, i32 %15)
  %cmp.i.i.i = icmp eq i32 %spec.select.i.i.i.i, %15
  br i1 %cmp.i.i.i, label %if.end18.thread59.i, label %sm_metadata_new_block_.exit.thread35

sm_metadata_new_block_.exit.thread35:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b, align 8
  %add12.i = add i64 %17, 1
  %bops.i.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i.i = getelementptr %struct.block_op, ptr %bops.i.i.i, i32 %13
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr.i.i.i, align 8
  %b3.i.i.i = getelementptr %struct.block_op, ptr %bops.i.i.i, i32 %13, i32 1
  %19 = ptrtoint ptr %b3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %b3.i.i.i, align 8
  %e4.i.i.i = getelementptr %struct.block_op, ptr %bops.i.i.i, i32 %13, i32 2
  %20 = ptrtoint ptr %e4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add12.i, ptr %e4.i.i.i, align 8
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i.i.i.i, ptr %end.i.i.i, align 4
  %allocated_this_transaction.i37 = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %22 = ptrtoint ptr %allocated_this_transaction.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %allocated_this_transaction.i37, align 4
  %inc.i38 = add i32 %23, 1
  store i32 %inc.i38, ptr %allocated_this_transaction.i37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i) #10
  br label %if.end6

if.end18.thread59.i:                              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %sm_metadata_new_block_.exit.thread

if.end18.i:                                       ; preds = %if.end7.i
  %24 = ptrtoint ptr %recursion_count.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %recursion_count.i.i, align 8
  %25 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b, align 8
  %add15.i = add i64 %26, 1
  %call16.i = call i32 @sm_ll_inc(ptr noundef %ll.i, i64 noundef %26, i64 noundef %add15.i, ptr noundef nonnull %nr_allocations.i) #10
  %call17.i = call fastcc i32 @out(ptr noundef %sm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool19.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool19.not.i, label %sm_metadata_new_block_.exit, label %if.end18.i.sm_metadata_new_block_.exit.thread_crit_edge

if.end18.i.sm_metadata_new_block_.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sm_metadata_new_block_.exit.thread

sm_metadata_new_block_.exit.thread:               ; preds = %if.end18.i.sm_metadata_new_block_.exit.thread_crit_edge, %if.end18.thread59.i, %if.end.i.sm_metadata_new_block_.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call16.i, %if.end18.i.sm_metadata_new_block_.exit.thread_crit_edge ], [ -12, %if.end18.thread59.i ], [ %r.0.i, %if.end.i.sm_metadata_new_block_.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i) #10
  br label %if.then

sm_metadata_new_block_.exit:                      ; preds = %if.end18.i
  %allocated_this_transaction.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %27 = ptrtoint ptr %allocated_this_transaction.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %allocated_this_transaction.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %allocated_this_transaction.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %sm_metadata_new_block_.exit.if.end6_crit_edge, label %sm_metadata_new_block_.exit.if.then_crit_edge

sm_metadata_new_block_.exit.if.then_crit_edge:    ; preds = %sm_metadata_new_block_.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sm_metadata_new_block_.exit.if.end6_crit_edge:    ; preds = %sm_metadata_new_block_.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %sm_metadata_new_block_.exit.if.then_crit_edge, %sm_metadata_new_block_.exit.thread
  %retval.0.i34 = phi i32 [ %retval.0.i.ph, %sm_metadata_new_block_.exit.thread ], [ %call17.i, %sm_metadata_new_block_.exit.if.then_crit_edge ]
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @sm_metadata_new_block._rs, ptr noundef nonnull @__func__.sm_metadata_new_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end6:                                          ; preds = %sm_metadata_new_block_.exit.if.end6_crit_edge, %sm_metadata_new_block_.exit.thread35
  %nr_blocks.i28 = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %nr_blocks.i28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %nr_blocks.i28, align 8
  %nr_allocated.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %nr_allocated.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %nr_allocated.i, align 8
  %allocated_this_transaction.i29 = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 5
  %33 = ptrtoint ptr %allocated_this_transaction.i29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %allocated_this_transaction.i29, align 4
  %conv.i = zext i32 %34 to i64
  %35 = add i64 %32, %conv.i
  %sub2.i = sub i64 %30, %35
  %threshold = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7
  %36 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %threshold, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.end6.check_threshold.exit_crit_edge, label %below_threshold.exit.i

if.end6.check_threshold.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_threshold.exit

below_threshold.exit.i:                           ; preds = %if.end6
  %threshold.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %threshold.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %threshold.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %sub2.i)
  %cmp.i.not.i = icmp ult i64 %39, %sub2.i
  br i1 %cmp.i.not.i, label %below_threshold.exit.i.check_threshold.exit_crit_edge, label %land.lhs.true.i

below_threshold.exit.i.check_threshold.exit_crit_edge: ; preds = %below_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_threshold.exit

land.lhs.true.i:                                  ; preds = %below_threshold.exit.i
  %value_set.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %value_set.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %value_set.i.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i8.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i.if.then.i30_crit_edge, label %threshold_already_triggered.exit.i

land.lhs.true.i.if.then.i30_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i30

threshold_already_triggered.exit.i:               ; preds = %land.lhs.true.i
  %current_value.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %current_value.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %current_value.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %43)
  %cmp.i.i.not.i = icmp ult i64 %39, %43
  br i1 %cmp.i.i.not.i, label %threshold_already_triggered.exit.i.if.then.i30_crit_edge, label %threshold_already_triggered.exit.i.check_threshold.exit_crit_edge

threshold_already_triggered.exit.i.check_threshold.exit_crit_edge: ; preds = %threshold_already_triggered.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_threshold.exit

threshold_already_triggered.exit.i.if.then.i30_crit_edge: ; preds = %threshold_already_triggered.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i30

if.then.i30:                                      ; preds = %threshold_already_triggered.exit.i.if.then.i30_crit_edge, %land.lhs.true.i.if.then.i30_crit_edge
  %fn.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 4
  %44 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fn.i, align 8
  %context.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 5
  %46 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context.i, align 4
  call void %45(ptr noundef %47) #10
  br label %check_threshold.exit

check_threshold.exit:                             ; preds = %if.then.i30, %threshold_already_triggered.exit.i.check_threshold.exit_crit_edge, %below_threshold.exit.i.check_threshold.exit_crit_edge, %if.end6.check_threshold.exit_crit_edge
  %value_set.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %value_set.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %value_set.i, align 1
  %current_value.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 3
  %49 = ptrtoint ptr %current_value.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %sub2.i, ptr %current_value.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %check_threshold.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %check_threshold.exit ], [ %retval.0.i34, %do.end ], [ %retval.0.i34, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm_metadata_root_size(ptr nocapture noundef readnone %sm, ptr nocapture noundef writeonly %result) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %result, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_metadata_copy_root(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %where_le, i32 noundef %max) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %max)
  %cmp = icmp ult i32 %max, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ref_count_root = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %ref_count_root to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ref_count_root, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %bitmap_root = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 7
  %3 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bitmap_root, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %nr_allocated = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nr_allocated, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %nr_blocks, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %where_le to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %where_le, align 1
  %root_le.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 8
  %13 = ptrtoint ptr %root_le.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %8, ptr %root_le.sroa.5.0..sroa_idx, align 1
  %root_le.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 16
  %14 = ptrtoint ptr %root_le.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %5, ptr %root_le.sroa.7.0..sroa_idx, align 1
  %root_le.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %where_le, i32 24
  %15 = ptrtoint ptr %root_le.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %2, ptr %root_le.sroa.9.0..sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm_metadata_register_threshold_callback(ptr nocapture noundef writeonly %sm, i64 noundef %threshold, ptr noundef %fn, ptr noundef %context) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %threshold1 = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7
  %0 = ptrtoint ptr %threshold1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %threshold1, align 8
  %threshold.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 2
  %1 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %threshold, ptr %threshold.i, align 8
  %fn1.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fn, ptr %fn1.i, align 8
  %context2.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 7, i32 5
  %3 = ptrtoint ptr %context2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %context, ptr %context2.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_lookup_bitmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_insert(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @out(ptr noundef %smm) unnamed_addr #0 align 64 {
entry:
  %nr_allocations.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %recursion_count = getelementptr inbounds %struct.sm_metadata, ptr %smm, i32 0, i32 4
  %0 = ptrtoint ptr %recursion_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recursion_count, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %1, label %entry.if.end4_crit_edge [
    i32 0, label %do.end
    i32 1, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.then2:                                         ; preds = %entry
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %smm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %smm, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uncommitted.i, align 8
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i31.i = icmp eq i32 %4, %6
  br i1 %cmp.i31.i, label %if.then2.if.end4_crit_edge, label %if.end.lr.ph.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.lr.ph.i:                                   ; preds = %if.then2
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %smm, i32 0, i32 6, i32 2
  %ll2.i.i = getelementptr inbounds %struct.sm_metadata, ptr %smm, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %7 = phi i32 [ %4, %if.end.lr.ph.i ], [ %19, %cleanup.i.if.end.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %7
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bop.sroa.0.0.copyload19.i = load i32, ptr %add.ptr.i.i, align 8
  %bop.sroa.521.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 8
  %9 = ptrtoint ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %bop.sroa.521.0.copyload22.i = load i64, ptr %bop.sroa.521.0.add.ptr.i.sroa_idx.i, align 8
  %bop.sroa.7.0.add.ptr.i.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i32 16
  %10 = ptrtoint ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %bop.sroa.7.0.copyload24.i = load i64, ptr %bop.sroa.7.0.add.ptr.i.sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  %11 = ptrtoint ptr %nr_allocations.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %nr_allocations.i.i, align 4, !annotation !75
  %12 = zext i32 %bop.sroa.0.0.copyload19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %bop.sroa.0.0.copyload19.i, label %commit_bop.exit.thread.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

commit_bop.exit.thread.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  br label %if.end7.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @sm_ll_inc(ptr noundef %ll2.i.i, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = call i32 @sm_ll_dec(ptr noundef %ll2.i.i, i64 noundef %bop.sroa.521.0.copyload22.i, i64 noundef %bop.sroa.7.0.copyload24.i, ptr noundef nonnull %nr_allocations.i.i) #10
  br label %commit_bop.exit.i

commit_bop.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %r.0.i.i = phi i32 [ %call5.i.i, %sw.bb1.i.i ], [ %call.i.i, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_allocations.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i.i)
  %tobool5.not.i = icmp eq i32 %r.0.i.i, 0
  br i1 %tobool5.not.i, label %commit_bop.exit.i.if.end7.i_crit_edge, label %commit_bop.exit.i.if.end4_crit_edge

commit_bop.exit.i.if.end4_crit_edge:              ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

commit_bop.exit.i.if.end7.i_crit_edge:            ; preds = %commit_bop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %commit_bop.exit.i.if.end7.i_crit_edge, %commit_bop.exit.thread.i
  %13 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uncommitted.i, align 8
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i.i17.i = icmp eq i32 %14, %16
  br i1 %cmp.i.i17.i, label %if.end7.i.cleanup.i_crit_edge, label %if.end.i18.i

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i18.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i = add i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i1.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i1.i.i, i32 0, i32 %add.i.i.i
  %17 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i.i.i, ptr %uncommitted.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i18.i, %if.end7.i.cleanup.i_crit_edge
  %18 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uncommitted.i, align 8
  %cmp.i.i = icmp eq i32 %19, %16
  br i1 %cmp.i.i, label %cleanup.i.if.end4_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cleanup.i.if.end4_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %cleanup.i.if.end4_crit_edge, %commit_bop.exit.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %entry.if.end4_crit_edge
  %r.0 = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 0, %if.then2.if.end4_crit_edge ], [ 0, %cleanup.i.if.end4_crit_edge ], [ %r.0.i.i, %commit_bop.exit.i.if.end4_crit_edge ]
  %20 = ptrtoint ptr %recursion_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %recursion_count, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %recursion_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %r.0, %if.end4 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_inc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_dec(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_ll_find_common_free_block(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sm_bootstrap_destroy(ptr nocapture noundef %sm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_extend(ptr nocapture noundef readnone %sm, i64 noundef %extra_blocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  ret i32 -22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_bootstrap_get_nr_blocks(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_bootstrap_get_nr_free(ptr nocapture noundef readonly %sm, ptr nocapture noundef writeonly %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks, align 8
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %2 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %begin, align 8
  %sub = sub i64 %1, %3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_bootstrap_get_count(ptr nocapture noundef readonly %sm, i64 noundef %b, ptr nocapture noundef writeonly %result) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %0 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %begin, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %b)
  %cmp = icmp ugt i64 %1, %b
  %cond = zext i1 %cmp to i32
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %result, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sm_bootstrap_count_is_more_than_one(ptr nocapture noundef readnone %sm, i64 noundef %b, ptr nocapture noundef writeonly %result) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_set_count(ptr nocapture noundef readnone %sm, i64 noundef %b, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_bootstrap_commit(ptr nocapture noundef readnone %sm) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_inc_blocks(ptr nocapture noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i.i, align 4
  %add.i.i.i = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %2 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %3)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %3
  br i1 %cmp.i.i, label %do.end.i, label %brb_push.exit.thread.i

brb_push.exit.thread.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1, i32 1
  %5 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %b, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1, i32 2
  %6 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %e, ptr %e4.i.i, align 8
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select.i.i.i, ptr %end.i.i, align 4
  br label %add_bop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %add_bop.exit

add_bop.exit:                                     ; preds = %do.end.i, %brb_push.exit.thread.i
  %retval.0.i = phi i32 [ -12, %do.end.i ], [ 0, %brb_push.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_dec_blocks(ptr nocapture noundef %sm, i64 noundef %b, i64 noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uncommitted.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i.i, align 4
  %add.i.i.i = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 1024
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %2 = ptrtoint ptr %uncommitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uncommitted.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i.i, i32 %3)
  %cmp.i.i = icmp eq i32 %spec.select.i.i.i, %3
  br i1 %cmp.i.i, label %do.end.i, label %brb_push.exit.thread.i

brb_push.exit.thread.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bops.i.i = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 6, i32 2
  %add.ptr.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %add.ptr.i.i, align 8
  %b3.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1, i32 1
  %5 = ptrtoint ptr %b3.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %b, ptr %b3.i.i, align 8
  %e4.i.i = getelementptr %struct.block_op, ptr %bops.i.i, i32 %1, i32 2
  %6 = ptrtoint ptr %e4.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %e, ptr %e4.i.i, align 8
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select.i.i.i, ptr %end.i.i, align 4
  br label %add_bop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %add_bop.exit

add_bop.exit:                                     ; preds = %do.end.i, %brb_push.exit.thread.i
  %retval.0.i = phi i32 [ -12, %do.end.i ], [ 0, %brb_push.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sm_bootstrap_new_block(ptr nocapture noundef %sm, ptr nocapture noundef writeonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %begin = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 3
  %0 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %begin, align 8
  %nr_blocks = getelementptr inbounds %struct.sm_metadata, ptr %sm, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i64 %1, 1
  %4 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inc, ptr %begin, align 8
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %1, ptr %b, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_root_size(ptr nocapture noundef readnone %sm, ptr nocapture noundef readnone %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_bootstrap_copy_root(ptr nocapture noundef readnone %sm, ptr nocapture noundef readnone %where, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  ret i32 -22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 816, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_sm_metadata_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_sm_metadata_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ops, !7, !"ops", i1 false, i1 false}
!7 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 559, i32 34}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 747, i32 4}
!10 = !{ptr @sm_metadata_extend._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sm_metadata_extend._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 399, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sm_metadata_set_count._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @sm_metadata_set_count._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 246, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @out._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @out._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 490, i32 3}
!24 = !{ptr @sm_metadata_new_block._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.sm_metadata_new_block, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sm_metadata_new_block._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @sm_metadata_new_block._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 496, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sm_metadata_new_block._entry.11, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @sm_metadata_new_block._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @bootstrap_ops, !35, !"bootstrap_ops", i1 false, i1 false}
!35 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 696, i32 34}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 588, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sm_bootstrap_extend._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sm_bootstrap_extend._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 632, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sm_bootstrap_set_count._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sm_bootstrap_set_count._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 683, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sm_bootstrap_root_size._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sm_bootstrap_root_size._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 691, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sm_bootstrap_copy_root._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sm_bootstrap_copy_root._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 185, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @add_bop._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @add_bop._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/persistent-data/dm-space-map-metadata.c", i32 224, i32 4}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @apply_bops._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @apply_bops._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
