; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-space-map-common.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-space-map-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.disk_index_entry = type { i64, i32, i32 }
%struct.ll_disk = type { ptr, %struct.dm_btree_info, %struct.dm_btree_info, i32, i32, i64, i64, i64, i64, %struct.disk_metadata_index, ptr, ptr, ptr, ptr, ptr, ptr, i8, [64 x %struct.ie_cache] }
%struct.dm_btree_info = type { ptr, i32, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { ptr, i32, ptr, ptr, ptr }
%struct.disk_metadata_index = type { i32, i32, i64, [255 x %struct.disk_index_entry] }
%struct.ie_cache = type { i8, i8, i64, %struct.disk_index_entry }
%struct.inc_context = type { %struct.disk_index_entry, ptr, ptr, ptr }
%struct.node_header = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.btree_node = type { %struct.node_header, [0 x i64] }
%struct.disk_sm_root = type { i64, i64, i64, i64 }
%struct.disk_bitmap_header = type { i32, i32, i64 }

@sm_ll_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: space map common: space map too large\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sm_ll_extend\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/md/persistent-data/dm-space-map-common.c\00", [47 x i8] zeroinitializer }, align 32
@sm_ll_extend._entry_ptr = internal global ptr @sm_ll_extend._entry, section ".printk_index", align 4
@dm_sm_bitmap_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.13, ptr @dm_bitmap_prepare_for_write, ptr @dm_bitmap_check }, [20 x i8] zeroinitializer }, align 32
@sm_ll_lookup_bitmap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sm_ll_lookup_bitmap = private unnamed_addr constant [20 x i8] c"sm_ll_lookup_bitmap\00", align 1
@sm_ll_lookup_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.sm_ll_lookup_bitmap, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: space map common: metadata block out of bounds\0A\00", [63 x i8] zeroinitializer }, align 32
@sm_ll_lookup_bitmap._entry_ptr = internal global ptr @sm_ll_lookup_bitmap._entry, section ".printk_index", align 4
@sm_ll_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: space map common: dm_tm_shadow_block() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sm_ll_insert\00", [19 x i8] zeroinitializer }, align 32
@sm_ll_insert._entry_ptr = internal global ptr @sm_ll_insert._entry, section ".printk_index", align 4
@sm_ll_insert._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: space map common: ref count insert failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sm_ll_insert._entry_ptr.9 = internal global ptr @sm_ll_insert._entry.7, section ".printk_index", align 4
@sm_ll_open_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: space map common: sm_metadata root too small\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm_ll_open_metadata\00", [44 x i8] zeroinitializer }, align 32
@sm_ll_open_metadata._entry_ptr = internal global ptr @sm_ll_open_metadata._entry, section ".printk_index", align 4
@sm_ll_open_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sm_ll_open_disk\00", [16 x i8] zeroinitializer }, align 32
@sm_ll_open_disk._entry_ptr = internal global ptr @sm_ll_open_disk._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sm_bitmap\00", [22 x i8] zeroinitializer }, align 32
@dm_bitmap_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dm_bitmap_check = private unnamed_addr constant [16 x i8] c"dm_bitmap_check\00", align 1
@dm_bitmap_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.dm_bitmap_check, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: space map common: bitmap check failed: blocknr %llu != wanted %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@dm_bitmap_check._entry_ptr = internal global ptr @dm_bitmap_check._entry, section ".printk_index", align 4
@dm_bitmap_check._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dm_bitmap_check._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.dm_bitmap_check, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: space map common: bitmap check failed: csum %u != wanted %u\0A\00", [50 x i8] zeroinitializer }, align 32
@dm_bitmap_check._entry_ptr.18 = internal global ptr @dm_bitmap_check._entry.16, section ".printk_index", align 4
@shadow_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.19, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shadow_bitmap\00", [18 x i8] zeroinitializer }, align 32
@shadow_bitmap._entry_ptr = internal global ptr @shadow_bitmap._entry, section ".printk_index", align 4
@sm_ll_inc_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.20, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm_ll_inc_bitmap\00", [47 x i8] zeroinitializer }, align 32
@sm_ll_inc_bitmap._entry_ptr = internal global ptr @sm_ll_inc_bitmap._entry, section ".printk_index", align 4
@ensure_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: space map common: unable to re-get write lock for bitmap\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ensure_bitmap\00", [18 x i8] zeroinitializer }, align 32
@ensure_bitmap._entry_ptr = internal global ptr @ensure_bitmap._entry, section ".printk_index", align 4
@__sm_ll_inc_overflow._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 572, ptr null, ptr null }, align 1
@.str.23 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: space map common: overflow btree is missing an entry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__sm_ll_inc_overflow\00", [43 x i8] zeroinitializer }, align 32
@__sm_ll_inc_overflow._entry_ptr = internal global ptr @__sm_ll_inc_overflow._entry, section ".printk_index", align 4
@sm_ll_dec_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: space map common: unable to decrement block\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sm_ll_dec_bitmap\00", [47 x i8] zeroinitializer }, align 32
@sm_ll_dec_bitmap._entry_ptr = internal global ptr @sm_ll_dec_bitmap._entry, section ".printk_index", align 4
@__sm_ll_dec_overflow._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.27, ptr @.str.2, i32 785, ptr null, ptr null }, align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__sm_ll_dec_overflow\00", [43 x i8] zeroinitializer }, align 32
@__sm_ll_dec_overflow._entry_ptr = internal global ptr @__sm_ll_dec_overflow._entry, section ".printk_index", align 4
@sm_ll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: space map common: block size too big to hold bitmaps\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sm_ll_init\00", [21 x i8] zeroinitializer }, align 32
@sm_ll_init._entry_ptr = internal global ptr @sm_ll_init._entry, section ".printk_index", align 4
@index_validator = internal global { %struct.dm_block_validator, [20 x i8] } { %struct.dm_block_validator { ptr @.str.30, ptr @index_prepare_for_write, ptr @index_check }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@index_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.index_check = private unnamed_addr constant [12 x i8] c"index_check\00", align 1
@index_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.index_check, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: space map common: index_check failed: blocknr %llu != wanted %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@index_check._entry_ptr = internal global ptr @index_check._entry, section ".printk_index", align 4
@index_check._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@index_check._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.index_check, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: space map common: index_check failed: csum %u != wanted %u\0A\00", [51 x i8] zeroinitializer }, align 32
@index_check._entry_ptr.35 = internal global ptr @index_check._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 248, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"dm_sm_bitmap_validator\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 111, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 287, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 440, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 482, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1061, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1236, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 112, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 94, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 103, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 614, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 691, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 633, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 572, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 859, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 785, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 222, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"index_validator\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 61, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 62, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 44, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [52 x i8] c"../drivers/md/persistent-data/dm-space-map-common.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 53, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__sm_ll_dec_overflow._entry, ptr @__sm_ll_dec_overflow._entry_ptr, ptr @__sm_ll_inc_overflow._entry, ptr @__sm_ll_inc_overflow._entry_ptr, ptr @dm_bitmap_check._entry, ptr @dm_bitmap_check._entry.16, ptr @dm_bitmap_check._entry_ptr, ptr @dm_bitmap_check._entry_ptr.18, ptr @ensure_bitmap._entry, ptr @ensure_bitmap._entry_ptr, ptr @index_check._entry, ptr @index_check._entry.33, ptr @index_check._entry_ptr, ptr @index_check._entry_ptr.35, ptr @shadow_bitmap._entry, ptr @shadow_bitmap._entry_ptr, ptr @sm_ll_dec_bitmap._entry, ptr @sm_ll_dec_bitmap._entry_ptr, ptr @sm_ll_extend._entry, ptr @sm_ll_extend._entry_ptr, ptr @sm_ll_inc_bitmap._entry, ptr @sm_ll_inc_bitmap._entry_ptr, ptr @sm_ll_init._entry, ptr @sm_ll_init._entry_ptr, ptr @sm_ll_insert._entry, ptr @sm_ll_insert._entry.7, ptr @sm_ll_insert._entry_ptr, ptr @sm_ll_insert._entry_ptr.9, ptr @sm_ll_lookup_bitmap._entry, ptr @sm_ll_lookup_bitmap._entry_ptr, ptr @sm_ll_open_disk._entry, ptr @sm_ll_open_disk._entry_ptr, ptr @sm_ll_open_metadata._entry, ptr @sm_ll_open_metadata._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dm_sm_bitmap_validator, ptr @sm_ll_lookup_bitmap._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dm_bitmap_check._rs, ptr @.str.14, ptr @dm_bitmap_check._rs.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @index_validator, ptr @.str.30, ptr @index_check._rs, ptr @.str.31, ptr @index_check._rs.32, ptr @.str.34], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_sm_bitmap_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_lookup_bitmap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_lookup_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_insert._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_open_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_open_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bitmap_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bitmap_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bitmap_check._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bitmap_check._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_inc_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ensure_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_dec_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_ll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_validator to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_check._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_check._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_extend(ptr noundef %ll, i64 noundef %extra_blocks) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca ptr, align 4
  %idx = alloca %struct.disk_index_entry, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_blocks1 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %0 = ptrtoint ptr %nr_blocks1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_blocks1, align 8
  %add = add i64 %1, %extra_blocks
  %entries_per_block = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %2 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries_per_block, align 8
  %conv = zext i32 %3 to i64
  %add3 = add nsw i64 %conv, -1
  %sub = add i64 %add3, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp172 = icmp ult i64 %sub, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !102

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv177 = trunc i64 %sub to i32
  %div180 = udiv i32 %conv177, %3
  %conv181 = zext i32 %div180 to i64
  br label %if.else395

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #10, !srcloc !103
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.else395

if.else395:                                       ; preds = %if.else182, %if.then176
  %_r.0 = phi i64 [ %conv181, %if.then176 ], [ %asmresult1.i, %if.else182 ]
  %sub194 = add i64 %add3, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub194)
  %cmp397 = icmp ult i64 %sub194, 4294967296
  br i1 %cmp397, label %if.then634, label %if.else640, !prof !102

if.then634:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #9
  %conv406 = trunc i64 %sub194 to i32
  %div409 = udiv i32 %conv406, %3
  %conv410 = zext i32 %div409 to i64
  %conv635 = trunc i64 %sub194 to i32
  %div638 = udiv i32 %conv635, %3
  %conv639 = zext i32 %div638 to i64
  br label %if.end644

if.else640:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub194) #10, !srcloc !103
  %asmresult1.i973 = extractvalue { i64, i64 } %5, 1
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub194) #10, !srcloc !103
  %asmresult1.i1001 = extractvalue { i64, i64 } %6, 1
  br label %if.end644

if.end644:                                        ; preds = %if.else640, %if.then634
  %_r190.01093 = phi i64 [ %conv410, %if.then634 ], [ %asmresult1.i973, %if.else640 ]
  %_r419.0 = phi i64 [ %conv639, %if.then634 ], [ %asmresult1.i1001, %if.else640 ]
  %max_entries = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 14
  %7 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %max_entries, align 8
  %call647 = tail call i64 %8(ptr noundef %ll) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %_r419.0, i64 %call647)
  %cmp648 = icmp ugt i64 %_r419.0, %call647
  br i1 %cmp648, label %do.end, label %if.end653

do.end:                                           ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #9
  %call652 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup673

if.end653:                                        ; preds = %if.end644
  %9 = ptrtoint ptr %nr_blocks1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %nr_blocks1, align 8
  %conv655 = and i64 %_r.0, 4294967295
  %conv656 = and i64 %_r190.01093, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv655, i64 %conv656)
  %cmp6571144 = icmp ult i64 %conv655, %conv656
  br i1 %cmp6571144, label %for.body.lr.ph, label %if.end653.cleanup673_crit_edge

if.end653.cleanup673_crit_edge:                   ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup673

for.body.lr.ph:                                   ; preds = %if.end653
  %10 = getelementptr inbounds %struct.disk_index_entry, ptr %idx, i32 0, i32 1
  %11 = getelementptr inbounds %struct.disk_index_entry, ptr %idx, i32 0, i32 2
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i64 %i.01145, 1
  %cmp657 = icmp ult i64 %inc, %conv656
  br i1 %cmp657, label %for.cond.for.body_crit_edge, label %for.cond.cleanup673_crit_edge

for.cond.cleanup673_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup673

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.01145 = phi i64 [ %conv655, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  %12 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idx) #7
  %13 = call ptr @memset(ptr %idx, i32 255, i32 16)
  %14 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ll, align 8
  %call659 = call i32 @dm_tm_new_block(ptr noundef %15, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef nonnull %b) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call659)
  %cmp660 = icmp slt i32 %call659, 0
  br i1 %cmp660, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  br label %cleanup673

cleanup:                                          ; preds = %for.body
  %16 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b, align 4
  %call664 = call i64 @dm_block_location(ptr noundef %17) #7
  %18 = call i64 @llvm.bswap.i64(i64 %call664)
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %idx, align 8
  %20 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ll, align 8
  %22 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b, align 4
  call void @dm_tm_unlock(ptr noundef %21, ptr noundef %23) #7
  %24 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries_per_block, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %10, align 8
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %11, align 4
  %29 = ptrtoint ptr %save_ie to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %save_ie, align 4
  %call667 = call i32 %30(ptr noundef %ll, i64 noundef %i.01145, ptr noundef nonnull %idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call667)
  %cmp668 = icmp slt i32 %call667, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  br i1 %cmp668, label %cleanup.cleanup673_crit_edge, label %for.cond

cleanup.cleanup673_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup673

cleanup673:                                       ; preds = %cleanup.cleanup673_crit_edge, %cleanup.thread, %for.cond.cleanup673_crit_edge, %if.end653.cleanup673_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %call659, %cleanup.thread ], [ 0, %if.end653.cleanup673_crit_edge ], [ %call667, %cleanup.cleanup673_crit_edge ], [ 0, %for.cond.cleanup673_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_new_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_block_location(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_tm_unlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_lookup_bitmap(ptr noundef %ll, i64 noundef %b, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %ie_disk = alloca %struct.disk_index_entry, align 8
  %blk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ie_disk) #7
  %0 = call ptr @memset(ptr %ie_disk, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blk) #7
  %1 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %blk, align 4, !annotation !104
  %nr_blocks = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %2 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %b)
  %cmp.not = icmp ugt i64 %3, %b
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @sm_ll_lookup_bitmap._rs, ptr noundef nonnull @__func__.sm_ll_lookup_bitmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %entries_per_block = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %4 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries_per_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %b)
  %cmp173 = icmp ult i64 %b, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !102

if.then177:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %conv178 = trunc i64 %b to i32
  %.frozen = freeze i32 %5
  %div181 = udiv i32 %conv178, %.frozen
  %6 = mul i32 %div181, %.frozen
  %rem179.decomposed = sub i32 %conv178, %6
  %conv182 = zext i32 %div181 to i64
  br label %if.end187

if.else183:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %b) #10, !srcloc !103
  %asmresult.i298 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %shr.i = lshr i64 %asmresult.i298, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end187

if.end187:                                        ; preds = %if.else183, %if.then177
  %index.0 = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %__rem.0 = phi i32 [ %rem179.decomposed, %if.then177 ], [ %conv.i, %if.else183 ]
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %8 = ptrtoint ptr %load_ie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %load_ie, align 8
  %call190 = call i32 %9(ptr noundef %ll, i64 noundef %index.0, ptr noundef nonnull %ie_disk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.end187.cleanup_crit_edge, label %if.end194

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end194:                                        ; preds = %if.end187
  %10 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ll, align 8
  %12 = ptrtoint ptr %ie_disk to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ie_disk, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %call195 = call i32 @dm_tm_read_lock(ptr noundef %11, i64 noundef %14, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef nonnull %blk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.end194.cleanup_crit_edge, label %if.end199

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end199:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %blk, align 4
  %call.i = call ptr @dm_block_data(ptr noundef %16) #7
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %shr.i299 = lshr i32 %__rem.0, 5
  %add.ptr.i300 = getelementptr i64, ptr %add.ptr.i, i32 %shr.i299
  %and.i301 = shl i32 %__rem.0, 1
  %shl.i = lshr i32 %and.i301, 5
  %div3.i.i.i = and i32 %shl.i, 1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr.i300, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %and.i301, 30
  %and.i.i.i = xor i32 %xor.i.i, 24
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i16.i = xor i32 %xor.i.i, 25
  %23 = lshr i32 %22, %and.i.i16.i
  %24 = and i32 %23, 1
  %shl8.i = select i1 %tobool.not.i, i32 0, i32 2
  %or.i = or i32 %shl8.i, %24
  %25 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %result, align 4
  %26 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ll, align 8
  %28 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blk, align 4
  call void @dm_tm_unlock(ptr noundef %27, ptr noundef %29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.end194.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end199 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call190, %if.end187.cleanup_crit_edge ], [ %call195, %if.end194.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blk) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ie_disk) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_read_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_lookup(ptr noundef %ll, i64 noundef %b, ptr nocapture noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %b.addr.i = alloca i64, align 8
  %le_rc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sm_ll_lookup_bitmap(ptr noundef %ll, i64 noundef %b, ptr noundef %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i)
  %2 = ptrtoint ptr %b.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %b, ptr %b.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_rc.i) #7
  %3 = ptrtoint ptr %le_rc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %le_rc.i, align 4, !annotation !104
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %4 = ptrtoint ptr %ref_count_root.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ref_count_root.i, align 8
  %call.i = call i32 @dm_btree_lookup(ptr noundef %ref_count_info.i, i64 noundef %5, ptr noundef nonnull %b.addr.i, ptr noundef nonnull %le_rc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end2.sm_ll_lookup_big_ref_count.exit_crit_edge, label %if.end.i

if.end2.sm_ll_lookup_big_ref_count.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_lookup_big_ref_count.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %le_rc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %le_rc.i, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %result, align 4
  br label %sm_ll_lookup_big_ref_count.exit

sm_ll_lookup_big_ref_count.exit:                  ; preds = %if.end.i, %if.end2.sm_ll_lookup_big_ref_count.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %sm_ll_lookup_big_ref_count.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sm_ll_lookup_big_ref_count.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_find_free_block(ptr noundef %ll, i64 noundef %begin, i64 noundef %end, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %ie_disk = alloca %struct.disk_index_entry, align 8
  %blk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ie_disk) #7
  %0 = getelementptr inbounds %struct.disk_index_entry, ptr %ie_disk, i32 0, i32 1
  %1 = getelementptr inbounds %struct.disk_index_entry, ptr %ie_disk, i32 0, i32 2
  %entries_per_block = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %2 = call ptr @memset(ptr %ie_disk, i32 255, i32 16)
  %3 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entries_per_block, align 8
  %conv = zext i32 %4 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169 = icmp ult i64 %sub, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !102

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv174 = trunc i64 %sub to i32
  %div177 = udiv i32 %conv174, %4
  %conv178 = zext i32 %div177 to i64
  br label %if.else386

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %sub) #10, !srcloc !103
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  br label %if.else386

if.else386:                                       ; preds = %if.else179, %if.then173
  %_r.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %begin)
  %cmp388 = icmp ult i64 %begin, 4294967296
  br i1 %cmp388, label %if.then396, label %if.else402, !prof !102

if.then396:                                       ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #9
  %conv397 = trunc i64 %begin to i32
  %.frozen = freeze i32 %4
  %div400 = udiv i32 %conv397, %.frozen
  %6 = mul i32 %div400, %.frozen
  %rem398.decomposed = sub i32 %conv397, %6
  %conv401 = zext i32 %div400 to i64
  br label %if.else609

if.else402:                                       ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %begin) #10, !srcloc !103
  %asmresult.i989 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i990 = extractvalue { i64, i64 } %7, 1
  %shr.i991 = lshr i64 %asmresult.i989, 32
  %conv.i992 = trunc i64 %shr.i991 to i32
  br label %if.else609

if.else609:                                       ; preds = %if.else402, %if.then396
  %index_begin.0 = phi i64 [ %conv401, %if.then396 ], [ %asmresult1.i990, %if.else402 ]
  %__rem188.0 = phi i32 [ %rem398.decomposed, %if.then396 ], [ %conv.i992, %if.else402 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %end)
  %cmp611 = icmp ult i64 %end, 4294967296
  br i1 %cmp611, label %if.then619, label %if.else625, !prof !102

if.then619:                                       ; preds = %if.else609
  call void @__sanitizer_cov_trace_pc() #9
  %conv620 = trunc i64 %end to i32
  %rem621 = urem i32 %conv620, %4
  br label %if.end629

if.else625:                                       ; preds = %if.else609
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %end) #10, !srcloc !103
  %asmresult.i1017 = extractvalue { i64, i64 } %8, 0
  %shr.i1019 = lshr i64 %asmresult.i1017, 32
  %conv.i1020 = trunc i64 %shr.i1019 to i32
  br label %if.end629

if.end629:                                        ; preds = %if.else625, %if.then619
  %__rem411.0 = phi i32 [ %rem621, %if.then619 ], [ %conv.i1020, %if.else625 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem411.0)
  %cmp632 = icmp eq i32 %__rem411.0, 0
  %spec.select = select i1 %cmp632, i32 %4, i32 %__rem411.0
  call void @__sanitizer_cov_trace_cmp8(i64 %index_begin.0, i64 %_r.0)
  %cmp6381155 = icmp ult i64 %index_begin.0, %_r.0
  br i1 %cmp6381155, label %for.body.lr.ph, label %if.end629.cleanup687_crit_edge

if.end629.cleanup687_crit_edge:                   ; preds = %if.end629
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup687

for.body.lr.ph:                                   ; preds = %if.end629
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %sub654 = add i64 %_r.0, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %begin.addr.0.off01159 = phi i32 [ %__rem188.0, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %i.01156 = phi i64 [ %index_begin.0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blk) #7
  %9 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %blk, align 4, !annotation !104
  %10 = ptrtoint ptr %load_ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %load_ie, align 8
  %call640 = call i32 %11(ptr noundef %ll, i64 noundef %i.01156, ptr noundef nonnull %ie_disk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call640)
  %cmp641 = icmp slt i32 %call640, 0
  br i1 %cmp641, label %for.body.cleanup.thread_crit_edge, label %if.end644

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end644:                                        ; preds = %for.body
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp645 = icmp eq i32 %13, 0
  br i1 %cmp645, label %if.end644.for.inc_crit_edge, label %if.end648

if.end644.for.inc_crit_edge:                      ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end648:                                        ; preds = %if.end644
  %14 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ll, align 8
  %16 = ptrtoint ptr %ie_disk to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ie_disk, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %call649 = call i32 @dm_tm_read_lock(ptr noundef %15, i64 noundef %18, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef nonnull %blk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call649)
  %cmp650 = icmp slt i32 %call649, 0
  br i1 %cmp650, label %if.end648.cleanup.thread_crit_edge, label %if.end653

if.end648.cleanup.thread_crit_edge:               ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end653:                                        ; preds = %if.end648
  call void @__sanitizer_cov_trace_cmp8(i64 %i.01156, i64 %sub654)
  %cmp655 = icmp eq i64 %i.01156, %sub654
  br i1 %cmp655, label %if.end653.cond.end661_crit_edge, label %cond.false658

if.end653.cond.end661_crit_edge:                  ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end661

cond.false658:                                    ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entries_per_block, align 8
  br label %cond.end661

cond.end661:                                      ; preds = %cond.false658, %if.end653.cond.end661_crit_edge
  %cond662.off0 = phi i32 [ %20, %cond.false658 ], [ %spec.select, %if.end653.cond.end661_crit_edge ]
  %21 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blk, align 4
  %call.i = call ptr @dm_block_data(ptr noundef %22) #7
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = call i32 @llvm.umax.i32(i32 %begin.addr.0.off01159, i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %cond662.off0)
  %cmp18.i = icmp ult i32 %26, %cond662.off0
  br i1 %cmp18.i, label %cond.end661.while.body.i_crit_edge, label %cond.end661.if.then676_crit_edge

cond.end661.if.then676_crit_edge:                 ; preds = %cond.end661
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then676

cond.end661.while.body.i_crit_edge:               ; preds = %cond.end661
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %cond.end661.while.body.i_crit_edge
  %begin.addr.019.i = phi i32 [ %add.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %26, %cond.end661.while.body.i_crit_edge ]
  %and.i1021 = and i32 %begin.addr.019.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1021)
  %tobool.not.i = icmp eq i32 %and.i1021, 0
  %shr.i.i = lshr i32 %begin.addr.019.i, 5
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i, i32 %shr.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.i.i, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28) #7
  %add1.i.i = add i64 %29, -6148914691236517205
  %neg.i.i = and i64 %29, -6148914691236517206
  %and.i.i = xor i64 %neg.i.i, -6148914691236517206
  %and2.i.i = and i64 %and.i.i, %add1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.not.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool.not.i.not.i, label %land.lhs.true.i.while.cond.backedge.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.while.cond.backedge.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.while.cond.backedge.i_crit_edge, %land.lhs.true.i.while.cond.backedge.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end.i.while.cond.backedge.i_crit_edge ], [ 32, %land.lhs.true.i.while.cond.backedge.i_crit_edge ]
  %add.i = add i32 %.sink.i, %begin.addr.019.i
  %cmp.i = icmp ult i32 %add.i, %cond662.off0
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.then676_crit_edge

while.cond.backedge.i.if.then676_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then676

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %add.ptr.i14.i = getelementptr i64, ptr %add.ptr.i, i32 %shr.i.i
  %and.i15.i = shl i32 %begin.addr.019.i, 1
  %shl.i.i = lshr i32 %and.i15.i, 5
  %div3.i.i.i.i = and i32 %shl.i.i, 1
  %arrayidx.i.i.i.i = getelementptr i32, ptr %add.ptr.i14.i, i32 %div3.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %xor.i.i.i = and i32 %and.i15.i, 30
  %and.i.i.i.i = xor i32 %xor.i.i.i, 24
  %32 = shl nuw i32 1, %and.i.i.i.i
  %33 = and i32 %31, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i16.i = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i16.i.i = xor i32 %xor.i.i.i, 25
  %36 = lshr i32 %35, %and.i.i16.i.i
  %37 = and i32 %36, 1
  %shl8.i.i = select i1 %tobool.not.i16.i, i32 0, i32 2
  %or.i.i = or i32 %shl8.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool3.not.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool3.not.i, label %if.end678, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

if.then676:                                       ; preds = %while.cond.backedge.i.if.then676_crit_edge, %cond.end661.if.then676_crit_edge
  %38 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ll, align 8
  %40 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blk, align 4
  call void @dm_tm_unlock(ptr noundef %39, ptr noundef %41) #7
  br label %for.inc

if.end678:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ll, align 8
  %44 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %blk, align 4
  call void @dm_tm_unlock(ptr noundef %43, ptr noundef %45) #7
  %46 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %entries_per_block, align 8
  %conv681 = zext i32 %47 to i64
  %mul682 = mul i64 %i.01156, %conv681
  %conv683 = zext i32 %begin.addr.019.i to i64
  %add684 = add i64 %mul682, %conv683
  %48 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add684, ptr %result, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end678, %if.end648.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.end678 ], [ %call640, %for.body.cleanup.thread_crit_edge ], [ %call649, %if.end648.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blk) #7
  br label %cleanup687

for.inc:                                          ; preds = %if.then676, %if.end644.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blk) #7
  %inc = add nuw i64 %i.01156, 1
  %cmp638 = icmp ult i64 %inc, %_r.0
  br i1 %cmp638, label %for.inc.for.body_crit_edge, label %for.inc.cleanup687_crit_edge

for.inc.cleanup687_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup687

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup687:                                       ; preds = %for.inc.cleanup687_crit_edge, %cleanup.thread, %if.end629.cleanup687_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ -28, %if.end629.cleanup687_crit_edge ], [ -28, %for.inc.cleanup687_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ie_disk) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_find_common_free_block(ptr noundef %old_ll, ptr noundef %new_ll, i64 noundef %begin, i64 noundef %end, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %b.addr.i.i = alloca i64, align 8
  %le_rc.i.i = alloca i32, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #7
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !104
  %nr_blocks = getelementptr inbounds %struct.ll_disk, ptr %new_ll, i32 0, i32 5
  %nr_blocks1 = getelementptr inbounds %struct.ll_disk, ptr %old_ll, i32 0, i32 5
  %ref_count_info.i.i = getelementptr inbounds %struct.ll_disk, ptr %old_ll, i32 0, i32 2
  %ref_count_root.i.i = getelementptr inbounds %struct.ll_disk, ptr %old_ll, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %begin.addr.0 = phi i64 [ %begin, %entry ], [ %begin.addr.1.ph, %do.cond.do.body_crit_edge ]
  %1 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %nr_blocks, align 8
  %call = call i32 @sm_ll_find_free_block(ptr noundef %new_ll, i64 noundef %begin.addr.0, i64 noundef %2, ptr noundef %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b, align 8
  %5 = ptrtoint ptr %nr_blocks1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %nr_blocks1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.not = icmp ult i64 %4, %6
  br i1 %cmp.not, label %if.else, label %do.cond.thread

do.cond.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 4
  br label %do.end

if.else:                                          ; preds = %if.end
  %call.i = call i32 @sm_ll_lookup_bitmap(ptr noundef %old_ll, i64 noundef %4, ptr noundef nonnull %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.else
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 3
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end2.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i.i) #7
  %10 = ptrtoint ptr %b.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %4, ptr %b.addr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_rc.i.i) #7
  %11 = ptrtoint ptr %le_rc.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %le_rc.i.i, align 4, !annotation !104
  %12 = ptrtoint ptr %ref_count_root.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ref_count_root.i.i, align 8
  %call.i.i = call i32 @dm_btree_lookup(ptr noundef %ref_count_info.i.i, i64 noundef %13, ptr noundef nonnull %b.addr.i.i, ptr noundef nonnull %le_rc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sm_ll_lookup.exit.thread24, label %sm_ll_lookup.exit

sm_ll_lookup.exit.thread24:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i.i) #7
  br label %do.end

sm_ll_lookup.exit:                                ; preds = %if.end2.i
  %14 = ptrtoint ptr %le_rc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %le_rc.i.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %sm_ll_lookup.exit.if.end6_crit_edge, label %sm_ll_lookup.exit.do.end_crit_edge

sm_ll_lookup.exit.do.end_crit_edge:               ; preds = %sm_ll_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sm_ll_lookup.exit.if.end6_crit_edge:              ; preds = %sm_ll_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %sm_ll_lookup.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %18 = phi i32 [ %16, %sm_ll_lookup.exit.if.end6_crit_edge ], [ %9, %if.end.i.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %if.end6.do.cond_crit_edge, label %if.then8

if.end6.do.cond_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b, align 8
  %add = add i64 %20, 1
  br label %do.cond

do.cond:                                          ; preds = %if.then8, %if.end6.do.cond_crit_edge
  %begin.addr.1.ph = phi i64 [ %begin.addr.0, %if.end6.do.cond_crit_edge ], [ %add, %if.then8 ]
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %count, align 4
  %tobool11.not = icmp eq i32 %.pr, 0
  br i1 %tobool11.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %sm_ll_lookup.exit.do.end_crit_edge, %sm_ll_lookup.exit.thread24, %if.else.do.end_crit_edge, %do.cond.thread, %do.body.do.end_crit_edge
  %r.1 = phi i32 [ %call.i.i, %sm_ll_lookup.exit.thread24 ], [ 0, %do.cond.thread ], [ %call.i, %if.else.do.end_crit_edge ], [ %call.i.i, %sm_ll_lookup.exit.do.end_crit_edge ], [ 0, %do.cond.do.end_crit_edge ], [ %call, %do.body.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #7
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_insert(ptr noundef %ll, i64 noundef %b, i32 noundef %ref_count, ptr nocapture noundef writeonly %nr_allocations) local_unnamed_addr #0 align 64 {
entry:
  %b.addr.i = alloca i64, align 8
  %le_rc.i = alloca i32, align 4
  %b.addr = alloca i64, align 8
  %nb = alloca ptr, align 4
  %ie_disk = alloca %struct.disk_index_entry, align 8
  %inc = alloca i32, align 4
  %le_rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %b, ptr %b.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nb) #7
  %1 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %nb, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ie_disk) #7
  %2 = getelementptr inbounds %struct.disk_index_entry, ptr %ie_disk, i32 0, i32 1
  %3 = getelementptr inbounds %struct.disk_index_entry, ptr %ie_disk, i32 0, i32 2
  %4 = call ptr @memset(ptr %ie_disk, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc) #7
  %5 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %inc, align 4, !annotation !104
  %entries_per_block = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %6 = ptrtoint ptr %entries_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entries_per_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %b)
  %cmp164 = icmp ult i64 %b, 4294967296
  br i1 %cmp164, label %if.then168, label %if.else174, !prof !102

if.then168:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169 = trunc i64 %b to i32
  %.frozen = freeze i32 %7
  %div172 = udiv i32 %conv169, %.frozen
  %8 = mul i32 %div172, %.frozen
  %rem170.decomposed = sub i32 %conv169, %8
  %conv173 = zext i32 %div172 to i64
  br label %if.end178

if.else174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %b) #10, !srcloc !103
  %asmresult.i405 = extractvalue { i64, i64 } %9, 0
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %shr.i = lshr i64 %asmresult.i405, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end178

if.end178:                                        ; preds = %if.else174, %if.then168
  %index.0 = phi i64 [ %conv173, %if.then168 ], [ %asmresult1.i, %if.else174 ]
  %__rem.0 = phi i32 [ %rem170.decomposed, %if.then168 ], [ %conv.i, %if.else174 ]
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %10 = ptrtoint ptr %load_ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %load_ie, align 8
  %call180 = call i32 %11(ptr noundef %ll, i64 noundef %index.0, ptr noundef nonnull %ie_disk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.end178.cleanup270_crit_edge, label %if.end184

if.end178.cleanup270_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup270

if.end184:                                        ; preds = %if.end178
  %12 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll, align 8
  %14 = ptrtoint ptr %ie_disk to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ie_disk, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15)
  %call185 = call i32 @dm_tm_shadow_block(ptr noundef %13, i64 noundef %16, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef nonnull %nb, ptr noundef nonnull %inc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %do.end, label %if.end191

do.end:                                           ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup270

if.end191:                                        ; preds = %if.end184
  %17 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nb, align 4
  %call192 = call i64 @dm_block_location(ptr noundef %18) #7
  %19 = call i64 @llvm.bswap.i64(i64 %call192)
  %20 = ptrtoint ptr %ie_disk to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ie_disk, align 8
  %21 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nb, align 4
  %call.i = call ptr @dm_block_data(ptr noundef %22) #7
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 16
  %shr.i406 = lshr i32 %__rem.0, 5
  %add.ptr.i407 = getelementptr i64, ptr %add.ptr.i, i32 %shr.i406
  %and.i408 = shl i32 %__rem.0, 1
  %shl.i = lshr i32 %and.i408, 5
  %div3.i.i.i = and i32 %shl.i, 1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr.i407, i32 %div3.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %xor.i.i = and i32 %and.i408, 30
  %and.i.i.i = xor i32 %xor.i.i, 24
  %25 = shl nuw i32 1, %and.i.i.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i16.i = xor i32 %xor.i.i, 25
  %29 = lshr i32 %28, %and.i.i16.i
  %30 = and i32 %29, 1
  %shl8.i = select i1 %tobool.not.i, i32 0, i32 2
  %or.i = or i32 %shl8.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %cmp196 = icmp eq i32 %or.i, 3
  br i1 %cmp196, label %if.then198, label %if.end191.if.end205_crit_edge

if.end191.if.end205_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.then198:                                       ; preds = %if.end191
  %31 = ptrtoint ptr %b.addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %b.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i)
  %33 = ptrtoint ptr %b.addr.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %b.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_rc.i) #7
  %34 = ptrtoint ptr %le_rc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %le_rc.i, align 4, !annotation !104
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %35 = ptrtoint ptr %ref_count_root.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ref_count_root.i, align 8
  %call.i409 = call i32 @dm_btree_lookup(ptr noundef %ref_count_info.i, i64 noundef %36, ptr noundef nonnull %b.addr.i, ptr noundef nonnull %le_rc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %cmp.i = icmp slt i32 %call.i409, 0
  br i1 %cmp.i, label %if.then202, label %sm_ll_lookup_big_ref_count.exit

sm_ll_lookup_big_ref_count.exit:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %le_rc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %le_rc.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i)
  br label %if.end205

if.then202:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i)
  %40 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ll, align 8
  %42 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nb, align 4
  call void @dm_tm_unlock(ptr noundef %41, ptr noundef %43) #7
  br label %cleanup270

if.end205:                                        ; preds = %sm_ll_lookup_big_ref_count.exit, %if.end191.if.end205_crit_edge
  %old.1 = phi i32 [ %39, %sm_ll_lookup_big_ref_count.exit ], [ %or.i, %if.end191.if.end205_crit_edge ]
  %r.0 = phi i32 [ %call.i409, %sm_ll_lookup_big_ref_count.exit ], [ %call185, %if.end191.if.end205_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool206.not = icmp eq i32 %r.0, 0
  br i1 %tobool206.not, label %if.end209, label %if.then207

if.then207:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ll, align 8
  %46 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nb, align 4
  call void @dm_tm_unlock(ptr noundef %45, ptr noundef %47) #7
  br label %cleanup270

if.end209:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ref_count)
  %cmp210 = icmp ult i32 %ref_count, 3
  br i1 %cmp210, label %if.then212, label %if.else223

if.then212:                                       ; preds = %if.end209
  %and1.i = and i32 %ref_count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i414 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i414, label %if.end.i417, label %if.end.i417.thread

if.end.i417.thread:                               ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %49, %25
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %shl.i.i30.i470 = shl nuw i32 1, %and.i.i16.i
  br label %if.else5.i

if.end.i417:                                      ; preds = %if.then212
  %neg.i.i.i = xor i32 %25, -1
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i415 = and i32 %51, %neg.i.i.i
  store i32 %and.i.i.i415, ptr %arrayidx.i.i.i, align 4
  %and2.i = and i32 %ref_count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %shl.i.i30.i = shl nuw i32 1, %and.i.i16.i
  br i1 %tobool3.not.i, label %if.end.i417.if.else5.i_crit_edge, label %if.then4.i

if.end.i417.if.else5.i_crit_edge:                 ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5.i

if.then4.i:                                       ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i27.i = or i32 %and.i.i.i415, %shl.i.i30.i
  br label %sm_set_bitmap.exit

if.else5.i:                                       ; preds = %if.end.i417.if.else5.i_crit_edge, %if.end.i417.thread
  %shl.i.i30.i472 = phi i32 [ %shl.i.i30.i470, %if.end.i417.thread ], [ %shl.i.i30.i, %if.end.i417.if.else5.i_crit_edge ]
  %and.i.i.sink.i471 = phi i32 [ %or.i.i.i, %if.end.i417.thread ], [ %and.i.i.i415, %if.end.i417.if.else5.i_crit_edge ]
  %neg.i.i33.i = xor i32 %shl.i.i30.i472, -1
  %and.i.i34.i = and i32 %and.i.i.sink.i471, %neg.i.i33.i
  br label %sm_set_bitmap.exit

sm_set_bitmap.exit:                               ; preds = %if.else5.i, %if.then4.i
  %and.i.i34.sink.i = phi i32 [ %and.i.i34.i, %if.else5.i ], [ %or.i.i27.i, %if.then4.i ]
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i.i34.sink.i, ptr %arrayidx.i.i.i, align 4
  %53 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ll, align 8
  %55 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nb, align 4
  call void @dm_tm_unlock(ptr noundef %54, ptr noundef %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %old.1)
  %cmp214 = icmp ugt i32 %old.1, 2
  br i1 %cmp214, label %if.then216, label %sm_set_bitmap.exit.if.end238_crit_edge

sm_set_bitmap.exit.if.end238_crit_edge:           ; preds = %sm_set_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.then216:                                       ; preds = %sm_set_bitmap.exit
  %ref_count_info = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %57 = ptrtoint ptr %ref_count_root to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ref_count_root, align 8
  %call218 = call i32 @dm_btree_remove(ptr noundef %ref_count_info, i64 noundef %58, ptr noundef nonnull %b.addr, ptr noundef %ref_count_root) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then216.if.end238_crit_edge, label %if.then216.cleanup270_crit_edge

if.then216.cleanup270_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup270

if.then216.if.end238_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.else223:                                       ; preds = %if.end209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_rc) #7
  %59 = call i32 @llvm.bswap.i32(i32 %ref_count)
  %60 = ptrtoint ptr %le_rc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %le_rc, align 4
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i.i, align 4
  %shl.i.i30.i432 = shl nuw i32 1, %and.i.i16.i
  %or.i.i.i427 = or i32 %shl.i.i30.i432, %25
  %or.i.i27.i436 = or i32 %or.i.i.i427, %62
  store i32 %or.i.i27.i436, ptr %arrayidx.i.i.i, align 4
  %63 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ll, align 8
  %65 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nb, align 4
  call void @dm_tm_unlock(ptr noundef %64, ptr noundef %66) #7
  %ref_count_info225 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root226 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %67 = ptrtoint ptr %ref_count_root226 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ref_count_root226, align 8
  %call228 = call i32 @dm_btree_insert(ptr noundef %ref_count_info225, i64 noundef %68, ptr noundef nonnull %b.addr, ptr noundef nonnull %le_rc, ptr noundef %ref_count_root226) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %do.end234, label %if.end238.thread

do.end234:                                        ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #9
  %call236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc) #7
  br label %cleanup270

if.end238.thread:                                 ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc) #7
  br label %land.lhs.true240

if.end238:                                        ; preds = %if.then216.if.end238_crit_edge, %sm_set_bitmap.exit.if.end238_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref_count)
  %tobool239.not = icmp eq i32 %ref_count, 0
  br i1 %tobool239.not, label %if.else250, label %if.end238.land.lhs.true240_crit_edge

if.end238.land.lhs.true240_crit_edge:             ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true240

land.lhs.true240:                                 ; preds = %if.end238.land.lhs.true240_crit_edge, %if.end238.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old.1)
  %tobool241.not = icmp eq i32 %old.1, 0
  br i1 %tobool241.not, label %if.then242, label %land.lhs.true240.if.else266_crit_edge

land.lhs.true240.if.else266_crit_edge:            ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else266

if.then242:                                       ; preds = %land.lhs.true240
  %69 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %nr_allocations, align 4
  %nr_allocated = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %70 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %nr_allocated, align 8
  %inc243 = add i64 %71, 1
  store i64 %inc243, ptr %nr_allocated, align 8
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 8
  %74 = call i32 @llvm.bswap.i32(i32 %73) #7
  %add.i = add i32 %74, -1
  %75 = call i32 @llvm.bswap.i32(i32 %add.i) #7
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %2, align 8
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %3, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %__rem.0)
  %cmp244 = icmp eq i32 %79, %__rem.0
  br i1 %cmp244, label %if.then246, label %if.then242.if.end268_crit_edge

if.then242.if.end268_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then246:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  %add247 = add i32 %__rem.0, 1
  %80 = call i32 @llvm.bswap.i32(i32 %add247)
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %3, align 4
  br label %if.end268

if.else250:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old.1)
  %tobool251.not = icmp eq i32 %old.1, 0
  br i1 %tobool251.not, label %if.else250.if.else266_crit_edge, label %if.then254

if.else250.if.else266_crit_edge:                  ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else266

if.then254:                                       ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %nr_allocations, align 4
  %nr_allocated255 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %83 = ptrtoint ptr %nr_allocated255 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %nr_allocated255, align 8
  %dec = add i64 %84, -1
  store i64 %dec, ptr %nr_allocated255, align 8
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %2, align 8
  %87 = call i32 @llvm.bswap.i32(i32 %86) #7
  %add.i439 = add i32 %87, 1
  %88 = call i32 @llvm.bswap.i32(i32 %add.i439) #7
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %2, align 8
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %3, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %93 = call i32 @llvm.umin.i32(i32 %92, i32 %__rem.0)
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %3, align 4
  br label %if.end268

if.else266:                                       ; preds = %if.else250.if.else266_crit_edge, %land.lhs.true240.if.else266_crit_edge
  %96 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %nr_allocations, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.else266, %if.then254, %if.then246, %if.then242.if.end268_crit_edge
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  %97 = ptrtoint ptr %save_ie to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %save_ie, align 4
  %call269 = call i32 %98(ptr noundef %ll, i64 noundef %index.0, ptr noundef nonnull %ie_disk) #7
  br label %cleanup270

cleanup270:                                       ; preds = %if.end268, %do.end234, %if.then216.cleanup270_crit_edge, %if.then207, %if.then202, %do.end, %if.end178.cleanup270_crit_edge
  %retval.1 = phi i32 [ %call185, %do.end ], [ %call.i409, %if.then202 ], [ %r.0, %if.then207 ], [ %call269, %if.end268 ], [ %call180, %if.end178.cleanup270_crit_edge ], [ %call218, %if.then216.cleanup270_crit_edge ], [ %call228, %do.end234 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ie_disk) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nb) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_tm_shadow_block(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_remove(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_insert(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_inc(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr nocapture noundef %nr_allocations) local_unnamed_addr #0 align 64 {
entry:
  %index.i.i.i.i = alloca i32, align 4
  %b.addr.i.i = alloca i64, align 8
  %le_rc.i.i = alloca i32, align 4
  %inc.i.i = alloca i32, align 4
  %ic.i = alloca %struct.inc_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_allocations, align 4
  %bitmap_block.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 1
  %bitmap.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 2
  %overflow_leaf.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 3
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %load_ie.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %ref_count_info.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %nr_allocated.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %nr_free.i.i = getelementptr inbounds %struct.disk_index_entry, ptr %ic.i, i32 0, i32 1
  %none_free_before.i.i = getelementptr inbounds %struct.disk_index_entry, ptr %ic.i, i32 0, i32 2
  %save_ie.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %__sm_ll_inc.exit.while.cond_crit_edge, %entry
  %b.addr.0 = phi i64 [ %b, %entry ], [ %b.addr.1, %__sm_ll_inc.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %b.addr.0, i64 %e)
  %cmp.not = icmp eq i64 %b.addr.0, %e
  br i1 %cmp.not, label %while.cond.return_crit_edge, label %while.body

while.cond.return_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ic.i) #7
  %1 = call ptr @memset(ptr %ic.i, i32 255, i32 32)
  %2 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %3 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bitmap.i.i, align 4
  %4 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %5 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entries_per_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %b.addr.0)
  %cmp164.i = icmp ult i64 %b.addr.0, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !102

if.then168.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %b.addr.0 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %6
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %7 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %7
  %conv173.i = zext i32 %div172.i to i64
  br label %if.end178.i

if.else174.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %b.addr.0) #10, !srcloc !103
  %asmresult.i312.i = extractvalue { i64, i64 } %8, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %shr.i.i = lshr i64 %asmresult.i312.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.else174.i, %if.then168.i
  %index.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %9 = ptrtoint ptr %load_ie.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load_ie.i, align 8
  %call180.i = call i32 %10(ptr noundef %ll, i64 noundef %index.0.i, ptr noundef nonnull %ic.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %cmp181.i = icmp slt i32 %call180.i, 0
  br i1 %cmp181.i, label %if.end178.i.__sm_ll_inc.exit.thread_crit_edge, label %if.end184.i

if.end178.i.__sm_ll_inc.exit.thread_crit_edge:    ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_inc.exit.thread

if.end184.i:                                      ; preds = %if.end178.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc.i.i) #7
  %11 = ptrtoint ptr %inc.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %inc.i.i, align 4, !annotation !104
  %12 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll, align 8
  %14 = ptrtoint ptr %ic.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ic.i, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15) #7
  %call.i.i = call i32 @dm_tm_shadow_block(ptr noundef %13, i64 noundef %16, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef %bitmap_block.i.i, ptr noundef nonnull %inc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %shadow_bitmap.exit.i, label %if.end188.i

shadow_bitmap.exit.i:                             ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i.i) #7
  br label %__sm_ll_inc.exit.thread

if.end188.i:                                      ; preds = %if.end184.i
  %17 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmap_block.i.i, align 8
  %call3.i.i = call i64 @dm_block_location(ptr noundef %18) #7
  %19 = call i64 @llvm.bswap.i64(i64 %call3.i.i) #7
  %20 = ptrtoint ptr %ic.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ic.i, align 8
  %21 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap_block.i.i, align 8
  %call.i.i.i = call ptr @dm_block_data(ptr noundef %22) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %23 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i.i, ptr %bitmap.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i.i) #7
  %conv189.i = zext i32 %__rem.0.i to i64
  %sub190.i = sub i64 %e, %b.addr.0
  %add191.i = add i64 %sub190.i, %conv189.i
  %24 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries_per_block.i, align 8
  %conv193.i = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add191.i, i64 %conv193.i)
  %cmp195.i = icmp ult i64 %add191.i, %conv193.i
  %extract.t.i = trunc i64 %add191.i to i32
  %cond200.off0.i = select i1 %cmp195.i, i32 %extract.t.i, i32 %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i.i) #7
  %26 = ptrtoint ptr %b.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %b.addr.0, ptr %b.addr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_rc.i.i) #7
  %27 = ptrtoint ptr %le_rc.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %le_rc.i.i, align 4, !annotation !104
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %cond200.off0.i)
  %cmp.not111.i.i = icmp eq i32 %__rem.0.i, %cond200.off0.i
  br i1 %cmp.not111.i.i, label %if.end188.i.for.end.i.i_crit_edge, label %if.end188.i.for.body.i.i_crit_edge

if.end188.i.for.body.i.i_crit_edge:               ; preds = %if.end188.i
  br label %for.body.i.i

if.end188.i.for.end.i.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end188.i.for.body.i.i_crit_edge
  %bit.addr.0112.i.i = phi i32 [ %inc24.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %__rem.0.i, %if.end188.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.i.if.end.i317.i_crit_edge

for.body.i.i.if.end.i317.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i317.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  %30 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ll, align 8
  %call.i.i315.i = call ptr @dm_tm_get_bm(ptr noundef %31) #7
  %32 = ptrtoint ptr %ic.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ic.i, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #7
  %call2.i.i.i = call i32 @dm_bm_write_lock(ptr noundef %call.i.i315.i, i64 noundef %34, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef %bitmap_block.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %cleanup.thread.i.i.i, label %ensure_bitmap.exit.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitmap_block.i.i, align 8
  %call.i.i.i.i = call ptr @dm_block_data(ptr noundef %36) #7
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 16
  %37 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i.i.i, ptr %bitmap.i.i, align 4
  br label %if.end.i317.i

ensure_bitmap.exit.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %sm_ll_inc_bitmap.exit.i

if.end.i317.i:                                    ; preds = %cleanup.thread.i.i.i, %for.body.i.i.if.end.i317.i_crit_edge
  %38 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmap.i.i, align 4
  %shr.i.i.i = lshr i32 %bit.addr.0112.i.i, 5
  %add.ptr.i.i316.i = getelementptr i64, ptr %39, i32 %shr.i.i.i
  %and.i.i.i = shl i32 %bit.addr.0112.i.i, 1
  %shl.i.i.i = lshr i32 %and.i.i.i, 5
  %div3.i.i.i.i.i = and i32 %shl.i.i.i, 1
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i316.i, i32 %div3.i.i.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %xor.i.i.i.i = and i32 %and.i.i.i, 30
  %and.i.i.i.i.i = xor i32 %xor.i.i.i.i, 24
  %42 = shl nuw i32 1, %and.i.i.i.i.i
  %43 = and i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i55.i.i = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i16.i.i.i = xor i32 %xor.i.i.i.i, 25
  %46 = lshr i32 %45, %and.i.i16.i.i.i
  %47 = and i32 %46, 1
  %shl8.i.i.i = select i1 %tobool.not.i55.i.i, i32 0, i32 2
  %or.i.i.i = or i32 %shl8.i.i.i, %47
  %48 = zext i32 %or.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i.i.i, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb10.i.i
    i32 2, label %sw.bb12.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i317.i
  %neg.i.i.i.i.i = xor i32 %42, -1
  %and.i.i.i60.i.i = and i32 %45, %neg.i.i.i.i.i
  %shl.i.i30.i.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %or.i.i27.i.i.i = or i32 %and.i.i.i60.i.i, %shl.i.i30.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i27.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_allocations, align 4
  %inc.i318.i = add i32 %51, 1
  store i32 %inc.i318.i, ptr %nr_allocations, align 4
  %52 = ptrtoint ptr %nr_allocated.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %nr_allocated.i.i, align 8
  %inc3.i.i = add i64 %53, 1
  store i64 %inc3.i.i, ptr %nr_allocated.i.i, align 8
  %54 = ptrtoint ptr %nr_free.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_free.i.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #7
  %add.i.i.i = add i32 %56, -1
  %57 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %58 = ptrtoint ptr %nr_free.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %nr_free.i.i, align 8
  %59 = ptrtoint ptr %none_free_before.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %none_free_before.i.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %bit.addr.0112.i.i)
  %cmp5.i.i = icmp eq i32 %61, %bit.addr.0112.i.i
  br i1 %cmp5.i.i, label %if.then6.i.i, label %sw.bb.i.i.for.inc.i.i_crit_edge

sw.bb.i.i.for.inc.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %bit.addr.0112.i.i, 1
  %62 = call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %63 = ptrtoint ptr %none_free_before.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %none_free_before.i.i, align 4
  br label %for.inc.i.i

sw.bb10.i.i:                                      ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i.i.i = or i32 %45, %42
  %shl.i.i30.i73.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %neg.i.i33.i.i.i = xor i32 %shl.i.i30.i73.i.i, -1
  %and.i.i34.i.i.i = and i32 %or.i.i.i.i.i, %neg.i.i33.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and.i.i34.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  br label %for.inc.i.i

sw.bb12.i.i:                                      ; preds = %if.end.i317.i
  %shl.i.i30.i89.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %or.i.i.i85.i.i = or i32 %shl.i.i30.i89.i.i, %42
  %or.i.i27.i92.i.i = or i32 %45, %or.i.i.i85.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i.i27.i92.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb12.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb12.i.i.if.end.i.i.i.i_crit_edge:             ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %69, ptr noundef nonnull %67) #7
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %sw.bb12.i.i.if.end.i.i.i.i_crit_edge
  %70 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i.i.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.reset_inc_context.exit.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.reset_inc_context.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_inc_context.exit.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %73, ptr noundef nonnull %71) #7
  br label %reset_inc_context.exit.i.i

reset_inc_context.exit.i.i:                       ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.i.reset_inc_context.exit.i.i_crit_edge
  %74 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %75 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %bitmap.i.i, align 4
  %76 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %77 = ptrtoint ptr %le_rc.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 50331648, ptr %le_rc.i.i, align 4
  %78 = ptrtoint ptr %ref_count_root.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ref_count_root.i.i, align 8
  %call15.i.i = call i32 @dm_btree_insert(ptr noundef %ref_count_info.i.i, i64 noundef %79, ptr noundef nonnull %b.addr.i.i, ptr noundef nonnull %le_rc.i.i, ptr noundef %ref_count_root.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %do.end.i319.i, label %reset_inc_context.exit.i.i.for.inc.i.i_crit_edge

reset_inc_context.exit.i.i.for.inc.i.i_crit_edge: ; preds = %reset_inc_context.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end.i319.i:                                    ; preds = %reset_inc_context.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %sm_ll_inc_bitmap.exit.i

sw.default.i.i:                                   ; preds = %if.end.i317.i
  %80 = ptrtoint ptr %b.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %b.addr.i.i, align 8
  %82 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool.not.i93.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i93.i.i, label %sw.default.i.i.if.end6.i.i.i_crit_edge, label %if.then.i96.i.i

sw.default.i.i.if.end6.i.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

if.then.i96.i.i:                                  ; preds = %sw.default.i.i
  %call.i94.i.i = call ptr @dm_block_data(ptr noundef nonnull %83) #7
  %call2.i95.i.i = call i32 @lower_bound(ptr noundef %call.i94.i.i, i64 noundef %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i95.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %call2.i95.i.i, -1
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.i96.i.i.if.end6.i.i.i_crit_edge

if.then.i96.i.i.if.end6.i.i.i_crit_edge:          ; preds = %if.then.i96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i96.i.i
  %nr_entries.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i94.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %nr_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_entries.i.i.i.i, align 8
  %86 = call i32 @llvm.bswap.i32(i32 %85) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %call2.i95.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %86, %call2.i95.i.i
  br i1 %cmp1.i.i.i.i, label %contains_key.exit.i.i.i, label %land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

contains_key.exit.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.btree_node, ptr %call.i94.i.i, i32 0, i32 1, i32 %call2.i95.i.i
  %87 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %89 = call i64 @llvm.bswap.i64(i64 %88) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %81)
  %cmp2.i.i.i.i = icmp eq i64 %89, %81
  br i1 %cmp2.i.i.i.i, label %sm_ll_inc_overflow.exit.thread.i.i, label %contains_key.exit.i.i.i.if.end6.i.i.i_crit_edge

contains_key.exit.i.i.i.if.end6.i.i.i_crit_edge:  ; preds = %contains_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

sm_ll_inc_overflow.exit.thread.i.i:               ; preds = %contains_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value_size1.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i94.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %value_size1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %value_size1.i.i.i.i, align 8
  %92 = call i32 @llvm.bswap.i32(i32 %91) #7
  %max_entries.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i94.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %max_entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_entries.i.i.i.i.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #7
  %arrayidx.i.i.i97.i.i = getelementptr %struct.btree_node, ptr %call.i94.i.i, i32 0, i32 1, i32 %95
  %mul.i.i.i.i = mul i32 %92, %call2.i95.i.i
  %add.ptr.i.i98.i.i = getelementptr i8, ptr %arrayidx.i.i.i97.i.i, i32 %mul.i.i.i.i
  %96 = ptrtoint ptr %add.ptr.i.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i.i98.i.i, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #7
  %add.i99.i.i = add i32 %98, 1
  %99 = call i32 @llvm.bswap.i32(i32 %add.i99.i.i) #7
  %100 = ptrtoint ptr %add.ptr.i.i98.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %add.ptr.i.i98.i.i, align 4
  br label %for.inc.i.i

if.end6.i.i.i:                                    ; preds = %contains_key.exit.i.i.i.if.end6.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end6.i.i.i_crit_edge, %if.then.i96.i.i.if.end6.i.i.i_crit_edge, %sw.default.i.i.if.end6.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i.i.i.i) #7
  %101 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %index.i.i.i.i, align 4, !annotation !104
  %102 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end6.i.i.i.if.end.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.end6.i.i.i.if.end.i.i.i.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %105, ptr noundef nonnull %103) #7
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i, %if.end6.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %106 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %107, null
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge, label %if.then3.i.i.i.i.i.i

if.end.i.i.i.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_inc_context.exit.i.i.i.i

if.then3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %109, ptr noundef nonnull %107) #7
  br label %reset_inc_context.exit.i.i.i.i

reset_inc_context.exit.i.i.i.i:                   ; preds = %if.then3.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge
  %110 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %111 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %bitmap.i.i, align 4
  %112 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %113 = ptrtoint ptr %ref_count_root.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %ref_count_root.i.i, align 8
  %call.i.i100.i.i = call i32 @btree_get_overwrite_leaf(ptr noundef %ref_count_info.i.i, i64 noundef %114, i64 noundef %81, ptr noundef nonnull %index.i.i.i.i, ptr noundef %ref_count_root.i.i, ptr noundef %overflow_leaf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100.i.i)
  %cmp.i19.i.i.i = icmp slt i32 %call.i.i100.i.i, 0
  br i1 %cmp.i19.i.i.i, label %reset_inc_context.exit.i.i.i.i.sm_ll_inc_overflow.exit.thread107.i.i_crit_edge, label %if.end.i.i101.i.i

reset_inc_context.exit.i.i.i.i.sm_ll_inc_overflow.exit.thread107.i.i_crit_edge: ; preds = %reset_inc_context.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_inc_overflow.exit.thread107.i.i

if.end.i.i101.i.i:                                ; preds = %reset_inc_context.exit.i.i.i.i
  %115 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %overflow_leaf.i.i, align 8
  %call3.i.i.i.i = call ptr @dm_block_data(ptr noundef %116) #7
  %117 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i.i.i.i.i = icmp sgt i32 %118, -1
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i101.i.i.do.end.i.i.i.i_crit_edge

if.end.i.i101.i.i.do.end.i.i.i.i_crit_edge:       ; preds = %if.end.i.i101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i101.i.i
  %nr_entries.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 3
  %119 = ptrtoint ptr %nr_entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nr_entries.i.i.i.i.i, align 8
  %121 = call i32 @llvm.bswap.i32(i32 %120) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %118)
  %cmp1.i.i.i.i.i = icmp ugt i32 %121, %118
  br i1 %cmp1.i.i.i.i.i, label %contains_key.exit.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

contains_key.exit.i.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i
  %arrayidx.i.i20.i.i.i = getelementptr %struct.btree_node, ptr %call3.i.i.i.i, i32 0, i32 1, i32 %118
  %122 = ptrtoint ptr %arrayidx.i.i20.i.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx.i.i20.i.i.i, align 8
  %124 = call i64 @llvm.bswap.i64(i64 %123) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %81)
  %cmp2.i.i.i.i.i = icmp eq i64 %124, %81
  br i1 %cmp2.i.i.i.i.i, label %sm_ll_inc_overflow.exit.i.i, label %contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge

contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %contains_key.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.i.i101.i.i.do.end.i.i.i.i_crit_edge
  %call6.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %sm_ll_inc_overflow.exit.thread107.i.i

sm_ll_inc_overflow.exit.thread107.i.i:            ; preds = %do.end.i.i.i.i, %reset_inc_context.exit.i.i.i.i.sm_ll_inc_overflow.exit.thread107.i.i_crit_edge
  %retval.0.i.i.ph.i.i = phi i32 [ -22, %do.end.i.i.i.i ], [ %call.i.i100.i.i, %reset_inc_context.exit.i.i.i.i.sm_ll_inc_overflow.exit.thread107.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #7
  br label %sm_ll_inc_bitmap.exit.i

sm_ll_inc_overflow.exit.i.i:                      ; preds = %contains_key.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %value_size1.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 5
  %125 = ptrtoint ptr %value_size1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %value_size1.i.i.i.i.i, align 8
  %127 = call i32 @llvm.bswap.i32(i32 %126) #7
  %max_entries.i.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %max_entries.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_entries.i.i.i.i.i.i, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129) #7
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.btree_node, ptr %call3.i.i.i.i, i32 0, i32 1, i32 %130
  %mul.i.i.i.i.i = mul i32 %127, %118
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %131 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132) #7
  %add.i.i.i.i = add i32 %133, 1
  %134 = call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #7
  %135 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %add.ptr.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sm_ll_inc_overflow.exit.i.i, %sm_ll_inc_overflow.exit.thread.i.i, %reset_inc_context.exit.i.i.for.inc.i.i_crit_edge, %sw.bb10.i.i, %if.then6.i.i, %sw.bb.i.i.for.inc.i.i_crit_edge
  %inc24.i.i = add i32 %bit.addr.0112.i.i, 1
  %136 = ptrtoint ptr %b.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %b.addr.i.i, align 8
  %inc25.i.i = add i64 %137, 1
  store i64 %inc25.i.i, ptr %b.addr.i.i, align 8
  %cmp.not.i320.i = icmp eq i32 %inc24.i.i, %cond200.off0.i
  br i1 %cmp.not.i320.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end188.i.for.end.i.i_crit_edge
  %138 = ptrtoint ptr %b.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %b.addr.i.i, align 8
  br label %sm_ll_inc_bitmap.exit.i

sm_ll_inc_bitmap.exit.i:                          ; preds = %for.end.i.i, %sm_ll_inc_overflow.exit.thread107.i.i, %do.end.i319.i, %ensure_bitmap.exit.i.i
  %b.addr.1 = phi i64 [ %139, %for.end.i.i ], [ %b.addr.0, %sm_ll_inc_overflow.exit.thread107.i.i ], [ %b.addr.0, %do.end.i319.i ], [ %b.addr.0, %ensure_bitmap.exit.i.i ]
  %retval.0.i321.i = phi i32 [ 0, %for.end.i.i ], [ %retval.0.i.i.ph.i.i, %sm_ll_inc_overflow.exit.thread107.i.i ], [ %call15.i.i, %do.end.i319.i ], [ %call2.i.i.i, %ensure_bitmap.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_rc.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i.i) #7
  %140 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %141, null
  br i1 %tobool.not.i.i, label %sm_ll_inc_bitmap.exit.i.if.end.i324.i_crit_edge, label %if.then.i.i

sm_ll_inc_bitmap.exit.i.if.end.i324.i_crit_edge:  ; preds = %sm_ll_inc_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i324.i

if.then.i.i:                                      ; preds = %sm_ll_inc_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %143, ptr noundef nonnull %141) #7
  br label %if.end.i324.i

if.end.i324.i:                                    ; preds = %if.then.i.i, %sm_ll_inc_bitmap.exit.i.if.end.i324.i_crit_edge
  %144 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %145, null
  br i1 %tobool2.not.i.i, label %if.end.i324.i.exit_inc_context.exit.i_crit_edge, label %if.then3.i.i

if.end.i324.i.exit_inc_context.exit.i_crit_edge:  ; preds = %if.end.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_inc_context.exit.i

if.then3.i.i:                                     ; preds = %if.end.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %147, ptr noundef nonnull %145) #7
  br label %exit_inc_context.exit.i

exit_inc_context.exit.i:                          ; preds = %if.then3.i.i, %if.end.i324.i.exit_inc_context.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i321.i)
  %tobool203.not.i = icmp eq i32 %retval.0.i321.i, 0
  br i1 %tobool203.not.i, label %__sm_ll_inc.exit, label %exit_inc_context.exit.i.__sm_ll_inc.exit.thread_crit_edge

exit_inc_context.exit.i.__sm_ll_inc.exit.thread_crit_edge: ; preds = %exit_inc_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_inc.exit.thread

__sm_ll_inc.exit.thread:                          ; preds = %exit_inc_context.exit.i.__sm_ll_inc.exit.thread_crit_edge, %shadow_bitmap.exit.i, %if.end178.i.__sm_ll_inc.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %shadow_bitmap.exit.i ], [ %call180.i, %if.end178.i.__sm_ll_inc.exit.thread_crit_edge ], [ %retval.0.i321.i, %exit_inc_context.exit.i.__sm_ll_inc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ic.i) #7
  br label %return

__sm_ll_inc.exit:                                 ; preds = %exit_inc_context.exit.i
  %148 = ptrtoint ptr %save_ie.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %save_ie.i, align 4
  %call207.i = call i32 %149(ptr noundef %ll, i64 noundef %index.0.i, ptr noundef nonnull %ic.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ic.i) #7
  %tobool.not = icmp eq i32 %call207.i, 0
  br i1 %tobool.not, label %__sm_ll_inc.exit.while.cond_crit_edge, label %__sm_ll_inc.exit.return_crit_edge

__sm_ll_inc.exit.return_crit_edge:                ; preds = %__sm_ll_inc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

__sm_ll_inc.exit.while.cond_crit_edge:            ; preds = %__sm_ll_inc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

return:                                           ; preds = %__sm_ll_inc.exit.return_crit_edge, %__sm_ll_inc.exit.thread, %while.cond.return_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %__sm_ll_inc.exit.thread ], [ 0, %while.cond.return_crit_edge ], [ %call207.i, %__sm_ll_inc.exit.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_dec(ptr noundef %ll, i64 noundef %b, i64 noundef %e, ptr nocapture noundef %nr_allocations) local_unnamed_addr #0 align 64 {
entry:
  %b.addr.i.i.i.i.i = alloca i64, align 8
  %index.i.i.i.i = alloca i32, align 4
  %b.addr.i.i.i.i = alloca i64, align 8
  %inc.i.i = alloca i32, align 4
  %ic.i = alloca %struct.inc_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_allocations, align 4
  %bitmap_block.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 1
  %bitmap.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 2
  %overflow_leaf.i.i = getelementptr inbounds %struct.inc_context, ptr %ic.i, i32 0, i32 3
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %load_ie.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %ref_count_info.i.i.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %ref_count_root.i.i.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %nr_allocated.i.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %nr_free.i.i = getelementptr inbounds %struct.disk_index_entry, ptr %ic.i, i32 0, i32 1
  %none_free_before.i.i = getelementptr inbounds %struct.disk_index_entry, ptr %ic.i, i32 0, i32 2
  %save_ie.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %__sm_ll_dec.exit.while.cond_crit_edge, %entry
  %b.addr.0 = phi i64 [ %b, %entry ], [ %b.addr.1, %__sm_ll_dec.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %b.addr.0, i64 %e)
  %cmp.not = icmp eq i64 %b.addr.0, %e
  br i1 %cmp.not, label %while.cond.return_crit_edge, label %while.body

while.cond.return_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ic.i) #7
  %1 = call ptr @memset(ptr %ic.i, i32 255, i32 32)
  %2 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %3 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bitmap.i.i, align 4
  %4 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %5 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entries_per_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %b.addr.0)
  %cmp164.i = icmp ult i64 %b.addr.0, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !102

if.then168.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %b.addr.0 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %6
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %7 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %7
  %conv173.i = zext i32 %div172.i to i64
  br label %if.end178.i

if.else174.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %b.addr.0) #10, !srcloc !103
  %asmresult.i312.i = extractvalue { i64, i64 } %8, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %shr.i.i = lshr i64 %asmresult.i312.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.else174.i, %if.then168.i
  %index.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %9 = ptrtoint ptr %load_ie.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load_ie.i, align 8
  %call180.i = call i32 %10(ptr noundef %ll, i64 noundef %index.0.i, ptr noundef nonnull %ic.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %cmp181.i = icmp slt i32 %call180.i, 0
  br i1 %cmp181.i, label %if.end178.i.__sm_ll_dec.exit.thread_crit_edge, label %if.end184.i

if.end178.i.__sm_ll_dec.exit.thread_crit_edge:    ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_dec.exit.thread

if.end184.i:                                      ; preds = %if.end178.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc.i.i) #7
  %11 = ptrtoint ptr %inc.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %inc.i.i, align 4, !annotation !104
  %12 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll, align 8
  %14 = ptrtoint ptr %ic.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ic.i, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15) #7
  %call.i.i = call i32 @dm_tm_shadow_block(ptr noundef %13, i64 noundef %16, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef %bitmap_block.i.i, ptr noundef nonnull %inc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %shadow_bitmap.exit.i, label %if.end188.i

shadow_bitmap.exit.i:                             ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i.i) #7
  br label %__sm_ll_dec.exit.thread

if.end188.i:                                      ; preds = %if.end184.i
  %17 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmap_block.i.i, align 8
  %call3.i.i = call i64 @dm_block_location(ptr noundef %18) #7
  %19 = call i64 @llvm.bswap.i64(i64 %call3.i.i) #7
  %20 = ptrtoint ptr %ic.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ic.i, align 8
  %21 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap_block.i.i, align 8
  %call.i.i.i = call ptr @dm_block_data(ptr noundef %22) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %23 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i.i, ptr %bitmap.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc.i.i) #7
  %conv189.i = zext i32 %__rem.0.i to i64
  %sub190.i = sub i64 %e, %b.addr.0
  %add191.i = add i64 %sub190.i, %conv189.i
  %24 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries_per_block.i, align 8
  %conv193.i = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add191.i, i64 %conv193.i)
  %cmp195.i = icmp ult i64 %add191.i, %conv193.i
  %extract.t.i = trunc i64 %add191.i to i32
  %cond200.off0.i = select i1 %cmp195.i, i32 %extract.t.i, i32 %25
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %cond200.off0.i)
  %cmp.not132.i.i = icmp eq i32 %__rem.0.i, %cond200.off0.i
  br i1 %cmp.not132.i.i, label %if.end188.i.sm_ll_dec_bitmap.exit.i_crit_edge, label %if.end188.i.for.body.i.i_crit_edge

if.end188.i.for.body.i.i_crit_edge:               ; preds = %if.end188.i
  br label %for.body.i.i

if.end188.i.sm_ll_dec_bitmap.exit.i_crit_edge:    ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end188.i.for.body.i.i_crit_edge
  %b.addr.0135.i.i = phi i64 [ %inc26.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %b.addr.0, %if.end188.i.for.body.i.i_crit_edge ]
  %bit.addr.0133.i.i = phi i32 [ %inc.i319.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %__rem.0.i, %if.end188.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.i.if.end.i317.i_crit_edge

for.body.i.i.if.end.i317.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i317.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  %28 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ll, align 8
  %call.i.i315.i = call ptr @dm_tm_get_bm(ptr noundef %29) #7
  %30 = ptrtoint ptr %ic.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ic.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #7
  %call2.i.i.i = call i32 @dm_bm_write_lock(ptr noundef %call.i.i315.i, i64 noundef %32, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef %bitmap_block.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %cleanup.thread.i.i.i, label %if.then.i.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge

if.then.i.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i.sink.split

cleanup.thread.i.i.i:                             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bitmap_block.i.i, align 8
  %call.i.i.i.i = call ptr @dm_block_data(ptr noundef %34) #7
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 16
  %35 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i.i.i, ptr %bitmap.i.i, align 4
  br label %if.end.i317.i

if.end.i317.i:                                    ; preds = %cleanup.thread.i.i.i, %for.body.i.i.if.end.i317.i_crit_edge
  %36 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitmap.i.i, align 4
  %shr.i.i.i = lshr i32 %bit.addr.0133.i.i, 5
  %add.ptr.i.i316.i = getelementptr i64, ptr %37, i32 %shr.i.i.i
  %and.i.i.i = shl i32 %bit.addr.0133.i.i, 1
  %shl.i.i.i = lshr i32 %and.i.i.i, 5
  %div3.i.i.i.i.i = and i32 %shl.i.i.i, 1
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i316.i, i32 %div3.i.i.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %xor.i.i.i.i = and i32 %and.i.i.i, 30
  %and.i.i.i.i.i = xor i32 %xor.i.i.i.i, 24
  %40 = shl nuw i32 1, %and.i.i.i.i.i
  %41 = and i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i55.i.i = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i16.i.i.i = xor i32 %xor.i.i.i.i, 25
  %44 = lshr i32 %43, %and.i.i16.i.i.i
  %45 = and i32 %44, 1
  %shl8.i.i.i = select i1 %tobool.not.i55.i.i, i32 0, i32 2
  %or.i.i.i = or i32 %shl8.i.i.i, %45
  %46 = zext i32 %or.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %or.i.i.i, label %if.end.unreachabledefault.i.i [
    i32 0, label %if.end.i317.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb11.i.i
    i32 3, label %sw.bb13.i.i
  ]

if.end.i317.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge: ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i.sink.split

sw.bb3.i.i:                                       ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i30.i.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %47 = or i32 %40, %shl.i.i30.i.i.i
  %48 = xor i32 %47, -1
  %and.i.i34.i.i.i = and i32 %43, %48
  %49 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i.i34.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %nr_allocations to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_allocations, align 4
  %dec.i.i = add i32 %51, -1
  store i32 %dec.i.i, ptr %nr_allocations, align 4
  %52 = ptrtoint ptr %nr_allocated.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %nr_allocated.i.i, align 8
  %dec5.i.i = add i64 %53, -1
  store i64 %dec5.i.i, ptr %nr_allocated.i.i, align 8
  %54 = ptrtoint ptr %nr_free.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_free.i.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #7
  %add.i.i.i = add i32 %56, 1
  %57 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %58 = ptrtoint ptr %nr_free.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %nr_free.i.i, align 8
  %59 = ptrtoint ptr %none_free_before.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %none_free_before.i.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #7
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 %bit.addr.0133.i.i) #7
  %63 = call i32 @llvm.bswap.i32(i32 %62) #7
  %64 = ptrtoint ptr %none_free_before.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %none_free_before.i.i, align 4
  br label %for.inc.i.i

sw.bb11.i.i:                                      ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i.i70.i.i = xor i32 %40, -1
  %and.i.i.i71.i.i = and i32 %43, %neg.i.i.i70.i.i
  %shl.i.i30.i74.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %or.i.i27.i.i.i = or i32 %and.i.i.i71.i.i, %shl.i.i30.i74.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i.i27.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  br label %for.inc.i.i

sw.bb13.i.i:                                      ; preds = %if.end.i317.i
  %66 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool.not.i77.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i77.i.i, label %sw.bb13.i.i.if.end11.i.i.i_crit_edge, label %if.then.i80.i.i

sw.bb13.i.i.if.end11.i.i.i_crit_edge:             ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then.i80.i.i:                                  ; preds = %sw.bb13.i.i
  %call.i78.i.i = call ptr @dm_block_data(ptr noundef nonnull %67) #7
  %call2.i79.i.i = call i32 @lower_bound(ptr noundef %call.i78.i.i, i64 noundef %b.addr.0135.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i79.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %call2.i79.i.i, -1
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.i80.i.i.if.end11.i.i.i_crit_edge

if.then.i80.i.i.if.end11.i.i.i_crit_edge:         ; preds = %if.then.i80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i80.i.i
  %nr_entries.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i78.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %nr_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_entries.i.i.i.i, align 8
  %70 = call i32 @llvm.bswap.i32(i32 %69) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %call2.i79.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %70, %call2.i79.i.i
  br i1 %cmp1.i.i.i.i, label %contains_key.exit.i.i.i, label %land.lhs.true.i.i.i.i.if.end11.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end11.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

contains_key.exit.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.btree_node, ptr %call.i78.i.i, i32 0, i32 1, i32 %call2.i79.i.i
  %71 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %73 = call i64 @llvm.bswap.i64(i64 %72) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %b.addr.0135.i.i)
  %cmp2.i.i.i.i = icmp eq i64 %73, %b.addr.0135.i.i
  br i1 %cmp2.i.i.i.i, label %if.then4.i.i.i, label %contains_key.exit.i.i.i.if.end11.i.i.i_crit_edge

contains_key.exit.i.i.i.if.end11.i.i.i_crit_edge: ; preds = %contains_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then4.i.i.i:                                   ; preds = %contains_key.exit.i.i.i
  %value_size1.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i78.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %value_size1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value_size1.i.i.i.i, align 8
  %76 = call i32 @llvm.bswap.i32(i32 %75) #7
  %max_entries.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call.i78.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %max_entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_entries.i.i.i.i.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %arrayidx.i.i.i81.i.i = getelementptr %struct.btree_node, ptr %call.i78.i.i, i32 0, i32 1, i32 %79
  %mul.i.i.i.i = mul i32 %76, %call2.i79.i.i
  %add.ptr.i.i82.i.i = getelementptr i8, ptr %arrayidx.i.i.i81.i.i, i32 %mul.i.i.i.i
  %80 = ptrtoint ptr %add.ptr.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i82.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp.i.i.i = icmp ugt i32 %82, 3
  br i1 %cmp.i.i.i, label %if.end17.thread.i.i, label %if.else.i.i.i

if.end17.thread.i.i:                              ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i = add i32 %82, -1
  %83 = call i32 @llvm.bswap.i32(i32 %dec.i.i.i) #7
  %84 = ptrtoint ptr %add.ptr.i.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %add.ptr.i.i82.i.i, align 4
  br label %for.inc.i.i

if.else.i.i.i:                                    ; preds = %if.then4.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i.i.i.i) #7
  %85 = ptrtoint ptr %b.addr.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %b.addr.0135.i.i, ptr %b.addr.i.i.i.i, align 8
  %86 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.else.i.i.i.if.end.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.else.i.i.i.if.end.i.i.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %89, ptr noundef nonnull %87) #7
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i, %if.else.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %90 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i_crit_edge, label %if.then3.i.i.i.i.i.i

if.end.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_del_overflow.exit.i.i.i

if.then3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %93, ptr noundef nonnull %91) #7
  br label %__sm_ll_del_overflow.exit.i.i.i

__sm_ll_del_overflow.exit.i.i.i:                  ; preds = %if.then3.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i_crit_edge
  %94 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %95 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %bitmap.i.i, align 4
  %96 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %97 = ptrtoint ptr %ref_count_root.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %ref_count_root.i.i.i.i, align 8
  %call.i.i83.i.i = call i32 @dm_btree_remove(ptr noundef %ref_count_info.i.i.i.i, i64 noundef %98, ptr noundef nonnull %b.addr.i.i.i.i, ptr noundef %ref_count_root.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i.i.i.i) #7
  br label %sm_ll_dec_overflow.exit.i.i

if.end11.i.i.i:                                   ; preds = %contains_key.exit.i.i.i.if.end11.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end11.i.i.i_crit_edge, %if.then.i80.i.i.if.end11.i.i.i_crit_edge, %sw.bb13.i.i.if.end11.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i.i.i.i) #7
  %99 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %index.i.i.i.i, align 4
  %100 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i30.i.i.i = icmp eq ptr %101, null
  br i1 %tobool.not.i.i.i30.i.i.i, label %if.end11.i.i.i.if.end.i.i.i34.i.i.i_crit_edge, label %if.then.i.i.i31.i.i.i

if.end11.i.i.i.if.end.i.i.i34.i.i.i_crit_edge:    ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i34.i.i.i

if.then.i.i.i31.i.i.i:                            ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %103, ptr noundef nonnull %101) #7
  br label %if.end.i.i.i34.i.i.i

if.end.i.i.i34.i.i.i:                             ; preds = %if.then.i.i.i31.i.i.i, %if.end11.i.i.i.if.end.i.i.i34.i.i.i_crit_edge
  %104 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i.i33.i.i.i = icmp eq ptr %105, null
  br i1 %tobool2.not.i.i.i33.i.i.i, label %if.end.i.i.i34.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge, label %if.then3.i.i.i35.i.i.i

if.end.i.i.i34.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_inc_context.exit.i.i.i.i

if.then3.i.i.i35.i.i.i:                           ; preds = %if.end.i.i.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %107, ptr noundef nonnull %105) #7
  br label %reset_inc_context.exit.i.i.i.i

reset_inc_context.exit.i.i.i.i:                   ; preds = %if.then3.i.i.i35.i.i.i, %if.end.i.i.i34.i.i.i.reset_inc_context.exit.i.i.i.i_crit_edge
  %108 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %109 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %bitmap.i.i, align 4
  %110 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %111 = ptrtoint ptr %ref_count_root.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %ref_count_root.i.i.i.i, align 8
  %call.i39.i.i.i = call i32 @btree_get_overwrite_leaf(ptr noundef %ref_count_info.i.i.i.i, i64 noundef %112, i64 noundef %b.addr.0135.i.i, ptr noundef nonnull %index.i.i.i.i, ptr noundef %ref_count_root.i.i.i.i, ptr noundef %overflow_leaf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i.i)
  %cmp.i40.i.i.i = icmp slt i32 %call.i39.i.i.i, 0
  br i1 %cmp.i40.i.i.i, label %reset_inc_context.exit.i.i.i.i.__sm_ll_dec_overflow.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

reset_inc_context.exit.i.i.i.i.__sm_ll_dec_overflow.exit.i.i.i_crit_edge: ; preds = %reset_inc_context.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_dec_overflow.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %reset_inc_context.exit.i.i.i.i
  %113 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %overflow_leaf.i.i, align 8
  %call3.i.i.i.i = call ptr @dm_block_data(ptr noundef %114) #7
  %115 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp.i.i.i.i.i = icmp sgt i32 %116, -1
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge

if.end.i.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %nr_entries.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %nr_entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_entries.i.i.i.i.i, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %116)
  %cmp1.i.i.i.i.i = icmp ugt i32 %119, %116
  br i1 %cmp1.i.i.i.i.i, label %contains_key.exit.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

contains_key.exit.i.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i
  %arrayidx.i.i41.i.i.i = getelementptr %struct.btree_node, ptr %call3.i.i.i.i, i32 0, i32 1, i32 %116
  %120 = ptrtoint ptr %arrayidx.i.i41.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx.i.i41.i.i.i, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %121) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %122, i64 %b.addr.0135.i.i)
  %cmp2.i.i.i.i.i = icmp eq i64 %122, %b.addr.0135.i.i
  br i1 %cmp2.i.i.i.i.i, label %if.end7.i.i.i.i, label %contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge

contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %contains_key.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %contains_key.exit.i.i.i.i.do.end.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge
  %call6.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %__sm_ll_dec_overflow.exit.i.i.i

if.end7.i.i.i.i:                                  ; preds = %contains_key.exit.i.i.i.i
  %value_size1.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 5
  %123 = ptrtoint ptr %value_size1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %value_size1.i.i.i.i.i, align 8
  %125 = call i32 @llvm.bswap.i32(i32 %124) #7
  %max_entries.i.i.i.i.i.i = getelementptr inbounds %struct.node_header, ptr %call3.i.i.i.i, i32 0, i32 4
  %126 = ptrtoint ptr %max_entries.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_entries.i.i.i.i.i.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #7
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.btree_node, ptr %call3.i.i.i.i, i32 0, i32 1, i32 %128
  %mul.i.i.i.i.i = mul i32 %125, %116
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %129 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %130)
  %cmp9.i.i.i.i = icmp eq i32 %130, 50331648
  br i1 %cmp9.i.i.i.i, label %if.then10.i.i.i.i, label %if.else.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.addr.i.i.i.i.i) #7
  %132 = ptrtoint ptr %b.addr.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %b.addr.0135.i.i, ptr %b.addr.i.i.i.i.i, align 8
  %133 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.then10.i.i.i.i.if.end.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

if.then10.i.i.i.i.if.end.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %136, ptr noundef nonnull %134) #7
  br label %if.end.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i.i, %if.then10.i.i.i.i.if.end.i.i.i.i.i.i.i_crit_edge
  %137 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i.i.i.i.i.i = icmp eq ptr %138, null
  br i1 %tobool2.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i.i_crit_edge, label %if.then3.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_del_overflow.exit.i.i.i.i

if.then3.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %140, ptr noundef nonnull %138) #7
  br label %__sm_ll_del_overflow.exit.i.i.i.i

__sm_ll_del_overflow.exit.i.i.i.i:                ; preds = %if.then3.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i.__sm_ll_del_overflow.exit.i.i.i.i_crit_edge
  %141 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %bitmap_block.i.i, align 8
  %142 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %bitmap.i.i, align 4
  %143 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %overflow_leaf.i.i, align 8
  %144 = ptrtoint ptr %ref_count_root.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %ref_count_root.i.i.i.i, align 8
  %call.i.i.i.i.i = call i32 @dm_btree_remove(ptr noundef %ref_count_info.i.i.i.i, i64 noundef %145, ptr noundef nonnull %b.addr.i.i.i.i.i, ptr noundef %ref_count_root.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.addr.i.i.i.i.i) #7
  br label %__sm_ll_dec_overflow.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i.i.i = add i32 %131, -1
  %146 = call i32 @llvm.bswap.i32(i32 %dec.i.i.i.i) #7
  %147 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %add.ptr.i.i.i.i.i, align 4
  br label %__sm_ll_dec_overflow.exit.i.i.i

__sm_ll_dec_overflow.exit.i.i.i:                  ; preds = %if.else.i.i.i.i, %__sm_ll_del_overflow.exit.i.i.i.i, %do.end.i.i.i.i, %reset_inc_context.exit.i.i.i.i.__sm_ll_dec_overflow.exit.i.i.i_crit_edge
  %old.0.i.i = phi i32 [ 3, %reset_inc_context.exit.i.i.i.i.__sm_ll_dec_overflow.exit.i.i.i_crit_edge ], [ %131, %__sm_ll_del_overflow.exit.i.i.i.i ], [ %131, %if.else.i.i.i.i ], [ 3, %do.end.i.i.i.i ]
  %retval.0.i.i.i.i = phi i32 [ %call.i39.i.i.i, %reset_inc_context.exit.i.i.i.i.__sm_ll_dec_overflow.exit.i.i.i_crit_edge ], [ %call.i.i.i.i.i, %__sm_ll_del_overflow.exit.i.i.i.i ], [ 0, %if.else.i.i.i.i ], [ -22, %do.end.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #7
  br label %sm_ll_dec_overflow.exit.i.i

sm_ll_dec_overflow.exit.i.i:                      ; preds = %__sm_ll_dec_overflow.exit.i.i.i, %__sm_ll_del_overflow.exit.i.i.i
  %old.1.i.i = phi i32 [ %old.0.i.i, %__sm_ll_dec_overflow.exit.i.i.i ], [ %82, %__sm_ll_del_overflow.exit.i.i.i ]
  %retval.1.i84.i.i = phi i32 [ %retval.0.i.i.i.i, %__sm_ll_dec_overflow.exit.i.i.i ], [ %call.i.i83.i.i, %__sm_ll_del_overflow.exit.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i84.i.i)
  %cmp15.i.i = icmp slt i32 %retval.1.i84.i.i, 0
  br i1 %cmp15.i.i, label %sm_ll_dec_overflow.exit.i.i.sm_ll_dec_bitmap.exit.i_crit_edge, label %if.end17.i.i

sm_ll_dec_overflow.exit.i.i.sm_ll_dec_bitmap.exit.i_crit_edge: ; preds = %sm_ll_dec_overflow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i

if.end17.i.i:                                     ; preds = %sm_ll_dec_overflow.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %old.1.i.i)
  %cmp18.i.i = icmp eq i32 %old.1.i.i, 3
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end17.i.i.for.inc.i.i_crit_edge

if.end17.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %148 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i86.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i86.i.i, label %if.then.i90.i.i, label %if.then19.i.i.if.end23.i.i_crit_edge

if.then19.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

if.then.i90.i.i:                                  ; preds = %if.then19.i.i
  %150 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ll, align 8
  %call.i87.i.i = call ptr @dm_tm_get_bm(ptr noundef %151) #7
  %152 = ptrtoint ptr %ic.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %ic.i, align 8
  %154 = call i64 @llvm.bswap.i64(i64 %153) #7
  %call2.i88.i.i = call i32 @dm_bm_write_lock(ptr noundef %call.i87.i.i, i64 noundef %154, ptr noundef nonnull @dm_sm_bitmap_validator, ptr noundef %bitmap_block.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i88.i.i)
  %tobool3.not.i89.i.i = icmp eq i32 %call2.i88.i.i, 0
  br i1 %tobool3.not.i89.i.i, label %cleanup.thread.i94.i.i, label %if.then.i90.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge

if.then.i90.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge: ; preds = %if.then.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i.sink.split

cleanup.thread.i94.i.i:                           ; preds = %if.then.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bitmap_block.i.i, align 8
  %call.i.i91.i.i = call ptr @dm_block_data(ptr noundef %156) #7
  %add.ptr.i.i92.i.i = getelementptr i8, ptr %call.i.i91.i.i, i32 16
  %157 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %add.ptr.i.i92.i.i, ptr %bitmap.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %cleanup.thread.i94.i.i, %if.then19.i.i.if.end23.i.i_crit_edge
  %158 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bitmap.i.i, align 4
  %add.ptr.i100.i.i = getelementptr i64, ptr %159, i32 %shr.i.i.i
  %add.ptr.i.i21.i107.i.i = getelementptr i32, ptr %add.ptr.i100.i.i, i32 %div3.i.i.i.i.i
  %160 = ptrtoint ptr %add.ptr.i.i21.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i.i21.i107.i.i, align 4
  %or.i.i.i.i.i = or i32 %161, %40
  %shl.i.i30.i111.i.i = shl nuw i32 1, %and.i.i16.i.i.i
  %neg.i.i33.i114.i.i = xor i32 %shl.i.i30.i111.i.i, -1
  %and.i.i34.i115.i.i = and i32 %or.i.i.i.i.i, %neg.i.i33.i114.i.i
  store i32 %and.i.i34.i115.i.i, ptr %add.ptr.i.i21.i107.i.i, align 4
  br label %for.inc.i.i

if.end.unreachabledefault.i.i:                    ; preds = %if.end.i317.i
  unreachable

for.inc.i.i:                                      ; preds = %if.end23.i.i, %if.end17.i.i.for.inc.i.i_crit_edge, %if.end17.thread.i.i, %sw.bb11.i.i, %sw.bb3.i.i
  %inc.i319.i = add i32 %bit.addr.0133.i.i, 1
  %inc26.i.i = add i64 %b.addr.0135.i.i, 1
  %cmp.not.i320.i = icmp eq i32 %inc.i319.i, %cond200.off0.i
  br i1 %cmp.not.i320.i, label %for.inc.i.i.sm_ll_dec_bitmap.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.sm_ll_dec_bitmap.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sm_ll_dec_bitmap.exit.i

sm_ll_dec_bitmap.exit.i.sink.split:               ; preds = %if.then.i90.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge, %if.end.i317.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge, %if.then.i.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %if.then.i.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ], [ @.str.25, %if.end.i317.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ], [ @.str.21, %if.then.i90.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ]
  %retval.0.i321.i.ph = phi i32 [ %call2.i.i.i, %if.then.i.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ], [ -22, %if.end.i317.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ], [ %call2.i88.i.i, %if.then.i90.i.i.sm_ll_dec_bitmap.exit.i.sink.split_crit_edge ]
  %call5.i95.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink) #11
  br label %sm_ll_dec_bitmap.exit.i

sm_ll_dec_bitmap.exit.i:                          ; preds = %sm_ll_dec_bitmap.exit.i.sink.split, %for.inc.i.i.sm_ll_dec_bitmap.exit.i_crit_edge, %sm_ll_dec_overflow.exit.i.i.sm_ll_dec_bitmap.exit.i_crit_edge, %if.end188.i.sm_ll_dec_bitmap.exit.i_crit_edge
  %b.addr.1 = phi i64 [ %b.addr.0, %if.end188.i.sm_ll_dec_bitmap.exit.i_crit_edge ], [ %b.addr.0, %sm_ll_dec_bitmap.exit.i.sink.split ], [ %inc26.i.i, %for.inc.i.i.sm_ll_dec_bitmap.exit.i_crit_edge ], [ %b.addr.0, %sm_ll_dec_overflow.exit.i.i.sm_ll_dec_bitmap.exit.i_crit_edge ]
  %retval.0.i321.i = phi i32 [ 0, %if.end188.i.sm_ll_dec_bitmap.exit.i_crit_edge ], [ %retval.0.i321.i.ph, %sm_ll_dec_bitmap.exit.i.sink.split ], [ 0, %for.inc.i.i.sm_ll_dec_bitmap.exit.i_crit_edge ], [ %retval.1.i84.i.i, %sm_ll_dec_overflow.exit.i.i.sm_ll_dec_bitmap.exit.i_crit_edge ]
  %162 = ptrtoint ptr %bitmap_block.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bitmap_block.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %163, null
  br i1 %tobool.not.i.i, label %sm_ll_dec_bitmap.exit.i.if.end.i324.i_crit_edge, label %if.then.i.i

sm_ll_dec_bitmap.exit.i.if.end.i324.i_crit_edge:  ; preds = %sm_ll_dec_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i324.i

if.then.i.i:                                      ; preds = %sm_ll_dec_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %165, ptr noundef nonnull %163) #7
  br label %if.end.i324.i

if.end.i324.i:                                    ; preds = %if.then.i.i, %sm_ll_dec_bitmap.exit.i.if.end.i324.i_crit_edge
  %166 = ptrtoint ptr %overflow_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %overflow_leaf.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %167, null
  br i1 %tobool2.not.i.i, label %if.end.i324.i.exit_inc_context.exit.i_crit_edge, label %if.then3.i.i

if.end.i324.i.exit_inc_context.exit.i_crit_edge:  ; preds = %if.end.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_inc_context.exit.i

if.then3.i.i:                                     ; preds = %if.end.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ll, align 8
  call void @dm_tm_unlock(ptr noundef %169, ptr noundef nonnull %167) #7
  br label %exit_inc_context.exit.i

exit_inc_context.exit.i:                          ; preds = %if.then3.i.i, %if.end.i324.i.exit_inc_context.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i321.i)
  %tobool203.not.i = icmp eq i32 %retval.0.i321.i, 0
  br i1 %tobool203.not.i, label %__sm_ll_dec.exit, label %exit_inc_context.exit.i.__sm_ll_dec.exit.thread_crit_edge

exit_inc_context.exit.i.__sm_ll_dec.exit.thread_crit_edge: ; preds = %exit_inc_context.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sm_ll_dec.exit.thread

__sm_ll_dec.exit.thread:                          ; preds = %exit_inc_context.exit.i.__sm_ll_dec.exit.thread_crit_edge, %shadow_bitmap.exit.i, %if.end178.i.__sm_ll_dec.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %shadow_bitmap.exit.i ], [ %call180.i, %if.end178.i.__sm_ll_dec.exit.thread_crit_edge ], [ %retval.0.i321.i, %exit_inc_context.exit.i.__sm_ll_dec.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ic.i) #7
  br label %return

__sm_ll_dec.exit:                                 ; preds = %exit_inc_context.exit.i
  %170 = ptrtoint ptr %save_ie.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %save_ie.i, align 4
  %call207.i = call i32 %171(ptr noundef %ll, i64 noundef %index.0.i, ptr noundef nonnull %ic.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ic.i) #7
  %tobool.not = icmp eq i32 %call207.i, 0
  br i1 %tobool.not, label %__sm_ll_dec.exit.while.cond_crit_edge, label %__sm_ll_dec.exit.return_crit_edge

__sm_ll_dec.exit.return_crit_edge:                ; preds = %__sm_ll_dec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

__sm_ll_dec.exit.while.cond_crit_edge:            ; preds = %__sm_ll_dec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

return:                                           ; preds = %__sm_ll_dec.exit.return_crit_edge, %__sm_ll_dec.exit.thread, %while.cond.return_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %__sm_ll_dec.exit.thread ], [ 0, %while.cond.return_crit_edge ], [ %call207.i, %__sm_ll_dec.exit.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_commit(ptr noundef %ll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap_index_changed = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %0 = ptrtoint ptr %bitmap_index_changed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %bitmap_index_changed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %commit = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 15
  %1 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %commit, align 4
  %call = tail call i32 %2(ptr noundef %ll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %bitmap_index_changed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load3 = load i8, ptr %bitmap_index_changed, align 8
  %bf.clear = and i8 %bf.load3, 127
  store i8 %bf.clear, ptr %bitmap_index_changed, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %r.0 = phi i32 [ %call, %if.then.if.end4_crit_edge ], [ 0, %if.then1 ], [ 0, %entry.if.end4_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_new_metadata(ptr noundef %ll, ptr noundef %tm) local_unnamed_addr #0 align 64 {
entry:
  %b.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ll, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 6272)
  %2 = ptrtoint ptr %ll to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tm, ptr %ll, align 8
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %3 = ptrtoint ptr %bitmap_info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tm, ptr %bitmap_info.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1, i32 2, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %size.i, align 4
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %6 = ptrtoint ptr %ref_count_info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tm, ptr %ref_count_info.i, align 8
  %levels13.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %levels13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %levels13.i, align 4
  %size16.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %size16.i, align 4
  %call.i = tail call ptr @dm_tm_get_bm(ptr noundef %tm) #7
  %call26.i = tail call i32 @dm_bm_block_size(ptr noundef %call.i) #7
  %block_size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 3
  %9 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call26.i, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call26.i)
  %cmp.i = icmp ugt i32 %call26.i, 1073741824
  br i1 %cmp.i, label %sm_ll_init.exit.thread, label %if.end

sm_ll_init.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = shl i32 %call26.i, 2
  %mul.i = add i32 %sub.i, -64
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %10 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %entries_per_block.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %bitmap_index_changed.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %11 = call ptr @memset(ptr %bitmap_root.i, i32 0, i32 16)
  %12 = ptrtoint ptr %bitmap_index_changed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %bitmap_index_changed.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %bitmap_index_changed.i, align 8
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %13 = ptrtoint ptr %load_ie to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @metadata_ll_load_ie, ptr %load_ie, align 8
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  %14 = ptrtoint ptr %save_ie to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @metadata_ll_save_ie, ptr %save_ie, align 4
  %init_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 12
  %15 = ptrtoint ptr %init_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @metadata_ll_init_index, ptr %init_index, align 8
  %open_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 13
  %16 = ptrtoint ptr %open_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @metadata_ll_open, ptr %open_index, align 4
  %max_entries = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 14
  %17 = ptrtoint ptr %max_entries to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @metadata_ll_max_entries, ptr %max_entries, align 8
  %commit = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 15
  %18 = ptrtoint ptr %commit to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @metadata_ll_commit, ptr %commit, align 4
  %19 = call ptr @memset(ptr %nr_blocks.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %20 = ptrtoint ptr %b.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %b.i, align 4, !annotation !104
  %21 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ll, align 8
  %call.i29 = call i32 @dm_tm_new_block(ptr noundef %22, ptr noundef nonnull @index_validator, ptr noundef nonnull %b.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %metadata_ll_init_index.exit.thread, label %if.end5

metadata_ll_init_index.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b.i, align 4
  %call1.i = call i64 @dm_block_location(ptr noundef %24) #7
  %25 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call1.i, ptr %bitmap_root.i, align 8
  %26 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ll, align 8
  %28 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b.i, align 4
  call void @dm_tm_unlock(ptr noundef %27, ptr noundef %29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  %ref_count_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %call6 = tail call i32 @dm_btree_empty(ptr noundef %ref_count_info.i, ptr noundef %ref_count_root) #7
  %30 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %metadata_ll_init_index.exit.thread, %sm_ll_init.exit.thread
  %retval.0 = phi i32 [ %30, %if.end5 ], [ -22, %sm_ll_init.exit.thread ], [ %call.i29, %metadata_ll_init_index.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @metadata_ll_load_ie(ptr nocapture noundef readonly %ll, i64 noundef %index, ptr nocapture noundef writeonly %ie) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 9, i32 3
  %idx.ext = trunc i64 %index to i32
  %add.ptr = getelementptr %struct.disk_index_entry, ptr %index1, i32 %idx.ext
  %0 = call ptr @memcpy(ptr %ie, ptr %add.ptr, i32 16)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @metadata_ll_save_ie(ptr nocapture noundef %ll, i64 noundef %index, ptr nocapture noundef readonly %ie) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap_index_changed = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %0 = ptrtoint ptr %bitmap_index_changed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %bitmap_index_changed, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bitmap_index_changed, align 8
  %index1 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 9, i32 3
  %idx.ext = trunc i64 %index to i32
  %add.ptr = getelementptr %struct.disk_index_entry, ptr %index1, i32 %idx.ext
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %ie, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_ll_init_index(ptr nocapture noundef %ll) #0 align 64 {
entry:
  %b = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !104
  %1 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ll, align 8
  %call = call i32 @dm_tm_new_block(ptr noundef %2, ptr noundef nonnull @index_validator, ptr noundef nonnull %b) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b, align 4
  %call1 = call i64 @dm_block_location(ptr noundef %4) #7
  %bitmap_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %5 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call1, ptr %bitmap_root, align 8
  %6 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ll, align 8
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b, align 4
  call void @dm_tm_unlock(ptr noundef %7, ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_ll_open(ptr nocapture noundef %ll) #0 align 64 {
entry:
  %block = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block) #7
  %0 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %block, align 4, !annotation !104
  %1 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ll, align 8
  %bitmap_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %3 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bitmap_root, align 8
  %call = call i32 @dm_tm_read_lock(ptr noundef %2, i64 noundef %4, ptr noundef nonnull @index_validator, ptr noundef nonnull %block) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mi_le = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 9
  %5 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %block, align 4
  %call1 = call ptr @dm_block_data(ptr noundef %6) #7
  %7 = call ptr @memcpy(ptr %mi_le, ptr %call1, i32 4096)
  %8 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ll, align 8
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 4
  call void @dm_tm_unlock(ptr noundef %9, ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @metadata_ll_max_entries(ptr nocapture noundef readnone %ll) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 255
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_ll_commit(ptr nocapture noundef %ll) #0 align 64 {
entry:
  %inc = alloca i32, align 4
  %b = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc) #7
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inc, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !104
  %2 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll, align 8
  %bitmap_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %4 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bitmap_root, align 8
  %call = call i32 @dm_tm_shadow_block(ptr noundef %3, i64 noundef %5, ptr noundef nonnull @index_validator, ptr noundef nonnull %b, ptr noundef nonnull %inc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b, align 4
  %call1 = call ptr @dm_block_data(ptr noundef %7) #7
  %mi_le = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 9
  %8 = call ptr @memcpy(ptr %call1, ptr %mi_le, i32 4096)
  %9 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b, align 4
  %call2 = call i64 @dm_block_location(ptr noundef %10) #7
  %11 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call2, ptr %bitmap_root, align 8
  %12 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ll, align 8
  %14 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b, align 4
  call void @dm_tm_unlock(ptr noundef %13, ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_empty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_open_metadata(ptr noundef %ll, ptr noundef %tm, ptr nocapture noundef readonly %root_le, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %block.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp ult i32 %len, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %root_le to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %smr.sroa.0.0.copyload = load i64, ptr %root_le, align 1
  %smr.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %root_le, i32 8
  %1 = ptrtoint ptr %smr.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %smr.sroa.5.0.copyload = load i64, ptr %smr.sroa.5.0..sroa_idx, align 1
  %smr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %root_le, i32 16
  %2 = ptrtoint ptr %smr.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %smr.sroa.7.0.copyload = load i64, ptr %smr.sroa.7.0..sroa_idx, align 1
  %smr.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %root_le, i32 24
  %3 = ptrtoint ptr %smr.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %smr.sroa.9.0.copyload = load i64, ptr %smr.sroa.9.0..sroa_idx, align 1
  %4 = getelementptr inbounds i8, ptr %ll, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 6272)
  %6 = ptrtoint ptr %ll to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tm, ptr %ll, align 8
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %7 = ptrtoint ptr %bitmap_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tm, ptr %bitmap_info.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %4, align 4
  %size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1, i32 2, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %size.i, align 4
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %10 = ptrtoint ptr %ref_count_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tm, ptr %ref_count_info.i, align 8
  %levels13.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %levels13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %levels13.i, align 4
  %size16.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %size16.i, align 4
  %call.i = tail call ptr @dm_tm_get_bm(ptr noundef %tm) #7
  %call26.i = tail call i32 @dm_bm_block_size(ptr noundef %call.i) #7
  %block_size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 3
  %13 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call26.i, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call26.i)
  %cmp.i = icmp ugt i32 %call26.i, 1073741824
  br i1 %cmp.i, label %sm_ll_init.exit.thread, label %if.end4

sm_ll_init.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub.i = shl i32 %call26.i, 2
  %mul.i = add i32 %sub.i, -64
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %14 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.i, ptr %entries_per_block.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %bitmap_index_changed.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %15 = ptrtoint ptr %bitmap_index_changed.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %bitmap_index_changed.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %bitmap_index_changed.i, align 8
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %16 = ptrtoint ptr %load_ie to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @metadata_ll_load_ie, ptr %load_ie, align 8
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  %17 = ptrtoint ptr %save_ie to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @metadata_ll_save_ie, ptr %save_ie, align 4
  %init_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 12
  %18 = ptrtoint ptr %init_index to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @metadata_ll_init_index, ptr %init_index, align 8
  %open_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 13
  %19 = ptrtoint ptr %open_index to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @metadata_ll_open, ptr %open_index, align 4
  %max_entries = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 14
  %20 = ptrtoint ptr %max_entries to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @metadata_ll_max_entries, ptr %max_entries, align 8
  %commit = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 15
  %21 = ptrtoint ptr %commit to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @metadata_ll_commit, ptr %commit, align 4
  %22 = tail call i64 @llvm.bswap.i64(i64 %smr.sroa.0.0.copyload)
  %23 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %nr_blocks.i, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %smr.sroa.5.0.copyload)
  %nr_allocated6 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %25 = ptrtoint ptr %nr_allocated6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %nr_allocated6, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %smr.sroa.7.0.copyload)
  %27 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %bitmap_root.i, align 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %smr.sroa.9.0.copyload)
  %ref_count_root8 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %29 = ptrtoint ptr %ref_count_root8 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %ref_count_root8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block.i) #7
  %30 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %block.i, align 4, !annotation !104
  %31 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ll, align 8
  %call.i28 = call i32 @dm_tm_read_lock(ptr noundef %32, i64 noundef %26, ptr noundef nonnull @index_validator, ptr noundef nonnull %block.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.metadata_ll_open.exit_crit_edge

if.end4.metadata_ll_open.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %metadata_ll_open.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %mi_le.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 9
  %33 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %block.i, align 4
  %call1.i = call ptr @dm_block_data(ptr noundef %34) #7
  %35 = call ptr @memcpy(ptr %mi_le.i, ptr %call1.i, i32 4096)
  %36 = ptrtoint ptr %ll to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ll, align 8
  %38 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %block.i, align 4
  call void @dm_tm_unlock(ptr noundef %37, ptr noundef %39) #7
  br label %metadata_ll_open.exit

metadata_ll_open.exit:                            ; preds = %if.end.i, %if.end4.metadata_ll_open.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block.i) #7
  br label %cleanup

cleanup:                                          ; preds = %metadata_ll_open.exit, %sm_ll_init.exit.thread, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call.i28, %metadata_ll_open.exit ], [ -22, %sm_ll_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_new_disk(ptr noundef %ll, ptr noundef %tm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ll, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 6272)
  %2 = ptrtoint ptr %ll to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tm, ptr %ll, align 8
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %3 = ptrtoint ptr %bitmap_info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tm, ptr %bitmap_info.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1, i32 2, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %size.i, align 4
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %6 = ptrtoint ptr %ref_count_info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tm, ptr %ref_count_info.i, align 8
  %levels13.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %levels13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %levels13.i, align 4
  %size16.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %size16.i, align 4
  %call.i = tail call ptr @dm_tm_get_bm(ptr noundef %tm) #7
  %call26.i = tail call i32 @dm_bm_block_size(ptr noundef %call.i) #7
  %block_size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 3
  %9 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call26.i, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call26.i)
  %cmp.i = icmp ugt i32 %call26.i, 1073741824
  br i1 %cmp.i, label %sm_ll_init.exit.thread, label %if.end

sm_ll_init.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = shl i32 %call26.i, 2
  %mul.i = add i32 %sub.i, -64
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %10 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %entries_per_block.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %bitmap_index_changed.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %11 = call ptr @memset(ptr %bitmap_root.i, i32 0, i32 16)
  %12 = ptrtoint ptr %bitmap_index_changed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %bitmap_index_changed.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %bitmap_index_changed.i, align 8
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %13 = ptrtoint ptr %load_ie to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @disk_ll_load_ie, ptr %load_ie, align 8
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  %14 = ptrtoint ptr %save_ie to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @disk_ll_save_ie, ptr %save_ie, align 4
  %init_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 12
  %15 = ptrtoint ptr %init_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @disk_ll_init_index, ptr %init_index, align 8
  %open_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 13
  %16 = ptrtoint ptr %open_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @disk_ll_open, ptr %open_index, align 4
  %max_entries = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 14
  %17 = ptrtoint ptr %max_entries to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @disk_ll_max_entries, ptr %max_entries, align 8
  %commit = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 15
  %18 = ptrtoint ptr %commit to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @disk_ll_commit, ptr %commit, align 4
  %19 = call ptr @memset(ptr %nr_blocks.i, i32 0, i32 16)
  %ie_cache.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.ie_cache, ptr %ie_cache.i, i32 %i.06.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %add.ptr.i, align 8
  %dirty.i = getelementptr %struct.ie_cache, ptr %ie_cache.i, i32 %i.06.i, i32 1
  %21 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %dirty.i, align 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %disk_ll_init_index.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

disk_ll_init_index.exit:                          ; preds = %for.body.i
  %call.i31 = tail call i32 @dm_btree_empty(ptr noundef %bitmap_info.i, ptr noundef %bitmap_root.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp3 = icmp slt i32 %call.i31, 0
  br i1 %cmp3, label %disk_ll_init_index.exit.cleanup_crit_edge, label %if.end5

disk_ll_init_index.exit.cleanup_crit_edge:        ; preds = %disk_ll_init_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %disk_ll_init_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ref_count_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %call6 = tail call i32 @dm_btree_empty(ptr noundef %ref_count_info.i, ptr noundef %ref_count_root) #7
  %22 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %disk_ll_init_index.exit.cleanup_crit_edge, %sm_ll_init.exit.thread
  %retval.0 = phi i32 [ %call.i31, %disk_ll_init_index.exit.cleanup_crit_edge ], [ %22, %if.end5 ], [ -22, %sm_ll_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_ll_load_ie(ptr noundef %ll, i64 noundef %index, ptr noundef %ie) #0 align 64 {
entry:
  %index.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %index, ptr %index.addr, align 8
  %conv.i.i = trunc i64 %index to i32
  %mul.i.i = mul i32 %conv.i.i, 59
  %and.i.i = and i32 %mul.i.i, 63
  %ie_cache = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 17
  %add.ptr = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %index1 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 2
  %3 = ptrtoint ptr %index1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %index1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %index)
  %cmp = icmp eq i64 %4, %index
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ie3 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %5 = call ptr @memcpy(ptr %ie, ptr %ie3, i32 16)
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dirty = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 1
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dirty, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %dirty, align 1
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %9 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bitmap_root.i, align 8
  %ie.i = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %call.i = tail call i32 @dm_btree_insert(ptr noundef %bitmap_info.i, i64 noundef %10, ptr noundef %index1, ptr noundef %ie.i, ptr noundef %bitmap_root.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %bitmap_info = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %bitmap_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %11 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bitmap_root, align 8
  %call12 = call i32 @dm_btree_lookup(ptr noundef %bitmap_info, i64 noundef %12, ptr noundef nonnull %index.addr, ptr noundef %ie) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %add.ptr, align 8
  %dirty16 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 1
  %14 = ptrtoint ptr %dirty16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %dirty16, align 1
  %15 = ptrtoint ptr %index.addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %index.addr, align 8
  %index17 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 2
  %17 = ptrtoint ptr %index17 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %index17, align 8
  %ie18 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %18 = call ptr @memcpy(ptr %ie18, ptr %ie, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call.i, %if.then5.cleanup_crit_edge ], [ 0, %if.then14 ], [ %call12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_ll_save_ie(ptr noundef %ll, i64 noundef %index, ptr nocapture noundef readonly %ie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i.i = trunc i64 %index to i32
  %mul.i.i = mul i32 %conv.i.i, 59
  %and.i.i = and i32 %mul.i.i, 63
  %ie_cache = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 17
  %add.ptr = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i
  %bitmap_index_changed = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %0 = ptrtoint ptr %bitmap_index_changed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %bitmap_index_changed, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bitmap_index_changed, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %index1 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 2
  %3 = ptrtoint ptr %index1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %index1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %index)
  %cmp = icmp eq i64 %4, %index
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ie3 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %5 = call ptr @memcpy(ptr %ie3, ptr %ie, i32 16)
  %dirty = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 1
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %dirty, align 1
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dirty4 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 1
  %7 = ptrtoint ptr %dirty4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dirty4, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %dirty4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dirty4, align 1
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %10 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bitmap_root.i, align 8
  %ie.i = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %call.i = tail call i32 @dm_btree_insert(ptr noundef %bitmap_info.i, i64 noundef %11, ptr noundef %index1, ptr noundef %ie.i, ptr noundef %bitmap_root.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %add.ptr, align 8
  %dirty14 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 1
  %13 = ptrtoint ptr %dirty14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dirty14, align 1
  %index15 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 2
  %14 = ptrtoint ptr %index15 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %index, ptr %index15, align 8
  %ie16 = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %and.i.i, i32 3
  %15 = call ptr @memcpy(ptr %ie16, ptr %ie, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end12 ], [ %call.i, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_ll_init_index(ptr noundef %ll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ie_cache = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.06
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %add.ptr, align 8
  %dirty = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.06, i32 1
  %1 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dirty, align 1
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %bitmap_info = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %bitmap_root = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %call = tail call i32 @dm_btree_empty(ptr noundef %bitmap_info, ptr noundef %bitmap_root) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @disk_ll_open(ptr nocapture noundef readnone %ll) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @disk_ll_max_entries(ptr nocapture noundef readnone %ll) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disk_ll_commit(ptr noundef %ll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ie_cache = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 17
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %r.07 = phi i32 [ 0, %entry ], [ %r.1, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.08
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %dirty = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.08, i32 1
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dirty, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dirty, align 1
  %5 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bitmap_root.i, align 8
  %index.i = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.08, i32 2
  %ie.i = getelementptr %struct.ie_cache, ptr %ie_cache, i32 %i.08, i32 3
  %call.i = tail call i32 @dm_btree_insert(ptr noundef %bitmap_info.i, i64 noundef %6, ptr noundef %index.i, ptr noundef %ie.i, ptr noundef %bitmap_root.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %r.1 = phi i32 [ %call.i, %if.then ], [ %r.07, %land.lhs.true.if.end_crit_edge ], [ %r.07, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_ll_open_disk(ptr nocapture noundef %ll, ptr noundef %tm, ptr nocapture noundef readonly %root_le, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp ult i32 %len, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %ll, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 6272)
  %2 = ptrtoint ptr %ll to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tm, ptr %ll, align 8
  %bitmap_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1
  %3 = ptrtoint ptr %bitmap_info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tm, ptr %bitmap_info.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 1, i32 2, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %size.i, align 4
  %ref_count_info.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2
  %6 = ptrtoint ptr %ref_count_info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tm, ptr %ref_count_info.i, align 8
  %levels13.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %levels13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %levels13.i, align 4
  %size16.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 2, i32 2, i32 1
  %8 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %size16.i, align 4
  %call.i = tail call ptr @dm_tm_get_bm(ptr noundef %tm) #7
  %call26.i = tail call i32 @dm_bm_block_size(ptr noundef %call.i) #7
  %block_size.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 3
  %9 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call26.i, ptr %block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call26.i)
  %cmp.i = icmp ugt i32 %call26.i, 1073741824
  br i1 %cmp.i, label %sm_ll_init.exit.thread, label %if.end4

sm_ll_init.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = shl i32 %call26.i, 2
  %mul.i = add i32 %sub.i, -64
  %entries_per_block.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 4
  %10 = ptrtoint ptr %entries_per_block.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %entries_per_block.i, align 8
  %nr_blocks.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 5
  %11 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %nr_blocks.i, align 8
  %bitmap_root.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 7
  %bitmap_index_changed.i = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 16
  %12 = call ptr @memset(ptr %bitmap_root.i, i32 0, i32 16)
  %13 = ptrtoint ptr %bitmap_index_changed.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %bitmap_index_changed.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %bitmap_index_changed.i, align 8
  %load_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 10
  %14 = ptrtoint ptr %load_ie to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @disk_ll_load_ie, ptr %load_ie, align 8
  %save_ie = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 11
  %15 = ptrtoint ptr %save_ie to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @disk_ll_save_ie, ptr %save_ie, align 4
  %init_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 12
  %16 = ptrtoint ptr %init_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @disk_ll_init_index, ptr %init_index, align 8
  %open_index = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 13
  %17 = ptrtoint ptr %open_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @disk_ll_open, ptr %open_index, align 4
  %max_entries = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 14
  %18 = ptrtoint ptr %max_entries to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @disk_ll_max_entries, ptr %max_entries, align 8
  %commit = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 15
  %19 = ptrtoint ptr %commit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @disk_ll_commit, ptr %commit, align 4
  %20 = ptrtoint ptr %root_le to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %root_le, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %nr_blocks.i, align 8
  %nr_allocated = getelementptr inbounds %struct.disk_sm_root, ptr %root_le, i32 0, i32 1
  %24 = ptrtoint ptr %nr_allocated to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %nr_allocated, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %nr_allocated6 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 6
  %27 = ptrtoint ptr %nr_allocated6 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %nr_allocated6, align 8
  %bitmap_root = getelementptr inbounds %struct.disk_sm_root, ptr %root_le, i32 0, i32 2
  %28 = ptrtoint ptr %bitmap_root to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bitmap_root, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = ptrtoint ptr %bitmap_root.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %bitmap_root.i, align 8
  %ref_count_root = getelementptr inbounds %struct.disk_sm_root, ptr %root_le, i32 0, i32 3
  %32 = ptrtoint ptr %ref_count_root to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ref_count_root, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %ref_count_root8 = getelementptr inbounds %struct.ll_disk, ptr %ll, i32 0, i32 8
  %35 = ptrtoint ptr %ref_count_root8 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %ref_count_root8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %sm_ll_init.exit.thread, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end4 ], [ -22, %sm_ll_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_bitmap_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.disk_bitmap_header, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %blocknr, align 8
  %not_used = getelementptr inbounds %struct.disk_bitmap_header, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %not_used, i32 noundef %sub, i32 noundef 240779) #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_bitmap_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %blocknr = getelementptr inbounds %struct.disk_bitmap_header, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %blocknr, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_bitmap_check._rs, ptr noundef nonnull @__func__.dm_bitmap_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %blocknr, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call5 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %5, i64 noundef %call5) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %not_used = getelementptr inbounds %struct.disk_bitmap_header, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call8 = tail call i32 @dm_bm_checksum(ptr noundef %not_used, i32 noundef %sub, i32 noundef 240779) #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp9.not = icmp eq i32 %6, %8
  br i1 %cmp9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_bitmap_check._rs.15, ptr noundef nonnull @__func__.dm_bitmap_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call8, i32 noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -15, %do.end ], [ -15, %if.then.cleanup_crit_edge ], [ -84, %do.end16 ], [ -84, %if.then10.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_block_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_checksum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_btree_lookup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_write_lock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_tm_get_bm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lower_bound(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btree_get_overwrite_leaf(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bm_block_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @index_prepare_for_write(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1)
  %blocknr = getelementptr inbounds %struct.disk_metadata_index, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %blocknr, align 8
  %padding = getelementptr inbounds %struct.disk_metadata_index, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call2 = tail call i32 @dm_bm_checksum(ptr noundef %padding, i32 noundef %sub, i32 noundef 160478) #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @index_check(ptr nocapture noundef readnone %v, ptr noundef %b, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_block_data(ptr noundef %b) #7
  %call1 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %blocknr = getelementptr inbounds %struct.disk_metadata_index, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %blocknr, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %2)
  %cmp.not = icmp eq i64 %call1, %2
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @index_check._rs, ptr noundef nonnull @__func__.index_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %blocknr, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %call5 = tail call i64 @dm_block_location(ptr noundef %b) #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %5, i64 noundef %call5) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %padding = getelementptr inbounds %struct.disk_metadata_index, ptr %call, i32 0, i32 1
  %sub = add i32 %block_size, -4
  %call8 = tail call i32 @dm_bm_checksum(ptr noundef %padding, i32 noundef %sub, i32 noundef 160478) #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %call8)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp9.not = icmp eq i32 %6, %8
  br i1 %cmp9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @index_check._rs.32, ptr noundef nonnull @__func__.index_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call8, i32 noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -15, %do.end ], [ -15, %if.then.cleanup_crit_edge ], [ -84, %do.end16 ], [ -84, %if.then10.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 248, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sm_ll_extend._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sm_ll_extend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 287, i32 3}
!8 = !{ptr @sm_ll_lookup_bitmap._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.sm_ll_lookup_bitmap, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sm_ll_lookup_bitmap._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @sm_ll_lookup_bitmap._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 440, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sm_ll_insert._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @sm_ll_insert._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 482, i32 4}
!20 = !{ptr @sm_ll_insert._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sm_ll_insert._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 1061, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sm_ll_open_metadata._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sm_ll_open_metadata._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 1236, i32 3}
!29 = !{ptr @sm_ll_open_disk._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sm_ll_open_disk._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 112, i32 10}
!33 = !{ptr @dm_sm_bitmap_validator, !34, !"dm_sm_bitmap_validator", i1 false, i1 false}
!34 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 111, i32 34}
!35 = !{ptr @dm_bitmap_check._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 94, i32 3}
!37 = !{ptr @__func__.dm_bitmap_check, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dm_bitmap_check._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @dm_bitmap_check._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @dm_bitmap_check._rs.15, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 103, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dm_bitmap_check._entry.16, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dm_bitmap_check._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 614, i32 3}
!48 = !{ptr @shadow_bitmap._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @shadow_bitmap._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 691, i32 5}
!52 = !{ptr @sm_ll_inc_bitmap._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sm_ll_inc_bitmap._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 633, i32 4}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ensure_bitmap._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ensure_bitmap._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 572, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__sm_ll_inc_overflow._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @__sm_ll_inc_overflow._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 859, i32 4}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sm_ll_dec_bitmap._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sm_ll_dec_bitmap._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 785, i32 3}
!71 = !{ptr @__sm_ll_dec_overflow._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @__sm_ll_dec_overflow._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 222, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sm_ll_init._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sm_ll_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 62, i32 10}
!80 = !{ptr @index_validator, !81, !"index_validator", i1 false, i1 false}
!81 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 61, i32 34}
!82 = !{ptr @index_check._rs, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 44, i32 3}
!84 = !{ptr @__func__.index_check, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @index_check._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @index_check._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @index_check._rs.32, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/md/persistent-data/dm-space-map-common.c", i32 53, i32 3}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @index_check._entry.33, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @index_check._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2148338642, i64 2148338922, i64 2148339256, i64 2148339590}
!104 = !{!"auto-init"}
!105 = !{i8 0, i8 2}
