; ModuleID = '/llk/IR_all_yes/fs/reiserfs/lbalance.c_pt.bc'
source_filename = "../fs/reiserfs/lbalance.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.buffer_info = type { ptr, ptr, ptr, i32 }
%struct.tree_balance = type { i32, i32, ptr, ptr, ptr, [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], [2 x i32], i32, i32, [7 x ptr], ptr, i32, ptr, i32, %struct.in_core_key }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_key = type { i32, i32, %union.anon.70 }
%union.anon.70 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%union.anon.71 = type { i16 }
%struct.offset_v1 = type { i32, i32 }
%struct.item_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.disk_child = type { i32, i16, i16 }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.leaf_shift_left = private unnamed_addr constant [16 x i8] c"leaf_shift_left\00", align 1
@.str.1 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"(!(shift_bytes != -1)) at fs/reiserfs/lbalance.c:%i:%s: vs-10270: S0 is empty now, but shift_bytes != -1 (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-10275\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"balance condition corrupted (%c)\00", [63 x i8] zeroinitializer }, align 32
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@.str.4 = internal constant { [359 x i8], [89 x i8] } { [359 x i8] c"(!((shift_bytes != -1 && !(is_direntry_le_ih(item_head(S0, 0)) && !(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((item_head(S0, 0))->u.ih_entry_count))))) && (!item_ops[le_key_k_type (le_key_version (leaf_key(S0, 0)), leaf_key(S0, 0))]->is_left_mergeable (leaf_key(S0, 0), S0->b_size)))) at fs/reiserfs/lbalance.c:%i:%s: vs-10280: item must be mergeable\0A\00", [89 x i8] zeroinitializer }, align 32
@__func__.leaf_delete_items = private unnamed_addr constant [18 x i8] c"leaf_delete_items\00", align 1
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"(!(!bh)) at fs/reiserfs/lbalance.c:%i:%s: 10155: bh is not defined\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"(!(del_num < 0)) at fs/reiserfs/lbalance.c:%i:%s: 10160: del_num can not be < 0. del_num==%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [182 x i8], [42 x i8] } { [182 x i8] c"(!(first < 0 || first + del_num > item_amount)) at fs/reiserfs/lbalance.c:%i:%s: 10165: invalid number of first item to be deleted (%d) or no so much items (%d) to delete (only %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.leaf_insert_into_buf = private unnamed_addr constant [21 x i8] c"leaf_insert_into_buf\00", align 1
@.str.8 = internal constant { [223 x i8], [33 x i8] } { [223 x i8] c"(!(free_space < (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((inserted_item_ih)->ih_item_len))) + (sizeof(struct item_head)))) at fs/reiserfs/lbalance.c:%i:%s: vs-10170: not enough free space in block %z, new item %h\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [186 x i8], [38 x i8] } { [186 x i8] c"(!(zeros_number > (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((inserted_item_ih)->ih_item_len))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10172: zero number == %d, item length == %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.leaf_paste_in_buffer = private unnamed_addr constant [21 x i8] c"leaf_paste_in_buffer\00", align 1
@.str.10 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"(!(free_space < paste_size)) at fs/reiserfs/lbalance.c:%i:%s: vs-10175: not enough free space: needed %d, available %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10177\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-10177\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"zeros_number == %d, paste_size == %d\00", [59 x i8] zeroinitializer }, align 32
@__func__.leaf_cut_from_buffer = private unnamed_addr constant [21 x i8] c"leaf_cut_from_buffer\00", align 1
@.str.14 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"(!(cut_item_num)) at fs/reiserfs/lbalance.c:%i:%s: when 0-th enrty of item is cut, that item must be first in the node, not %d-th\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"(!(is_statdata_le_ih(ih))) at fs/reiserfs/lbalance.c:%i:%s: 10195: item is stat data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [220 x i8], [36 x i8] } { [220 x i8] c"(!(pos_in_item && pos_in_item + cut_size != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))))) at fs/reiserfs/lbalance.c:%i:%s: 10200: invalid offset (%lu) or trunc_size (%lu) or ih_item_len (%lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [326 x i8], [90 x i8] } { [326 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) == cut_size && ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_version))) == 1 ? 0 : (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_free_space_reserved)))))) at fs/reiserfs/lbalance.c:%i:%s: 10205: invalid ih_free_space (%h)\0A\00", [90 x i8] zeroinitializer }, align 32
@__func__.leaf_paste_entries = private unnamed_addr constant [19 x i8] c"leaf_paste_entries\00", align 1
@.str.18 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(!is_direntry_le_ih(ih))) at fs/reiserfs/lbalance.c:%i:%s: 10225: item is not directory item\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [205 x i8], [51 x i8] } { [205 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_entry_count))) < before)) at fs/reiserfs/lbalance.c:%i:%s: 10230: there are no entry we paste entries before. entry_count = %d, before = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-10240\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"directory item (%h) corrupted (prev %a, cur(%d) %a)\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-10250\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"directory item (%h) corrupted (cur(%d) %a, next %a)\00", [44 x i8] zeroinitializer }, align 32
@__func__.leaf_define_dest_src_infos = private unnamed_addr constant [27 x i8] c"leaf_define_dest_src_infos\00", align 1
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shift type is unknown (%d)\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"(!(!src_bi->bi_bh || !dest_bi->bi_bh)) at fs/reiserfs/lbalance.c:%i:%s: vs-10260: mode==%d, source (%p) or dest (%p) buffer is initialized incorrectly\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.leaf_copy_items = private unnamed_addr constant [16 x i8] c"leaf_copy_items\00", align 1
@.str.28 = internal constant { [199 x i8], [57 x i8] } { [199 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((src)->b_data)))->blk_nr_item))))) < cpy_num)) at fs/reiserfs/lbalance.c:%i:%s: vs-10230: No enough items: %d, req. %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"(!(cpy_num < 0)) at fs/reiserfs/lbalance.c:%i:%s: vs-10240: cpy_num < 0 (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.leaf_copy_boundary_item = private unnamed_addr constant [24 x i8] c"leaf_copy_boundary_item\00", align 1
@.str.30 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"(!(!(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10010: item can not have empty length\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-10020\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"last unformatted node must be filled entirely (%h)\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [311 x i8], [73 x i8] } { [311 x i8] c"(!(((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((dih)->ih_version))) == 1 ? 0 : (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((dih)->u.ih_free_space_reserved)))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10030: merge to left: last unformatted node of non-last indirect item %h must have zerto free space\0A\00", [73 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [334 x i8], [82 x i8] } { [334 x i8] c"(!(is_indirect_le_ih(ih) && ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_version))) == 1 ? 0 : (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_free_space_reserved)))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10040: merge to right: last unformatted node of non-last indirect item must be filled entirely (%h)\0A\00", [82 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [182 x i8], [42 x i8] } { [182 x i8] c"(!(le_ih_k_offset(dih) != le_ih_k_offset(ih) + item_ops[le_ih_k_type (ih)]->bytes_number (ih, src->b_size))) at fs/reiserfs/lbalance.c:%i:%s: vs-10050: items %h and %h do not match\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [174 x i8], [50 x i8] } { [174 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) <= bytes_or_entries)) at fs/reiserfs/lbalance.c:%i:%s: vs-10060: no so much bytes %lu (needed %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"(!(le_ih_k_offset(dih) <= (unsigned long)bytes_or_entries)) at fs/reiserfs/lbalance.c:%i:%s: vs-10070: dih %h, bytes_or_entries(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"(!(le_ih_k_offset(dih) <= (bytes_or_entries / (sizeof(unp_t))) * dest->b_size)) at fs/reiserfs/lbalance.c:%i:%s: vs-10080: dih %h, bytes_or_entries(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.leaf_copy_dir_entries = private unnamed_addr constant [22 x i8] c"leaf_copy_dir_entries\00", align 1
@.str.39 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"(!(!is_direntry_le_ih(ih))) at fs/reiserfs/lbalance.c:%i:%s: vs-10000: item must be directory item\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.leaf_copy_items_entirely = private unnamed_addr constant [25 x i8] c"leaf_copy_items_entirely\00", align 1
@.str.41 = internal constant { [226 x i8], [62 x i8] } { [226 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((src)->b_data)))->blk_nr_item))))) - first < cpy_num)) at fs/reiserfs/lbalance.c:%i:%s: vs-10100: too few items in source %d, required %d from %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"(!(cpy_num < 0)) at fs/reiserfs/lbalance.c:%i:%s: vs-10110: can not copy negative amount of items\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(!dest_bi)) at fs/reiserfs/lbalance.c:%i:%s: vs-10120: can not copy negative amount of items\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"(!(!dest)) at fs/reiserfs/lbalance.c:%i:%s: vs-10130: can not copy negative amount of items\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [215 x i8], [41 x i8] } { [215 x i8] c"(!(((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((blkh)->blk_free_space)))) < cpy_num * (sizeof(struct item_head)))) at fs/reiserfs/lbalance.c:%i:%s: vs-10140: not enough free space for headers %d (needed %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"(!(free_space < j - last_inserted_loc)) at fs/reiserfs/lbalance.c:%i:%s: vs-10150: not enough free space for items %d (needed %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [226 x i8], [62 x i8] } { [226 x i8] c"(!(((__u32)__builtin_bswap32((__u32)(( __u32)(__le32)((t_dc)->dc_block_number)))) != dest->b_blocknr)) at fs/reiserfs/lbalance.c:%i:%s: vs-10160: block number in bh does not match to field in disk_child structure %lu and %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.leaf_item_bottle = private unnamed_addr constant [17 x i8] c"leaf_item_bottle\00", align 1
@.str.49 = internal constant { [393 x i8], [119 x i8] } { [393 x i8] c"(!(cpy_bytes == (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) && ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_version))) == 1 ? 0 : (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_free_space_reserved)))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10180: when whole indirect item is bottle to left neighbor, it must have free_space==0 (not %lu)\0A\00", [119 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [191 x i8], [33 x i8] } { [191 x i8] c"(!(item_ops[le_key_k_type (le_key_version (&ih->ih_key), &ih->ih_key)]->is_left_mergeable (&ih->ih_key, src->b_size))) at fs/reiserfs/lbalance.c:%i:%s: vs-10190: bad mergeability of item %h\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [294 x i8], [90 x i8] } { [294 x i8] c"(!(!cpy_bytes && ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_version))) == 1 ? 0 : (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_free_space_reserved)))))) at fs/reiserfs/lbalance.c:%i:%s: vs-10200: ih->ih_free_space must be 0 when indirect item will be appended\0A\00", [90 x i8] zeroinitializer }, align 32
@__func__.leaf_cut_entries = private unnamed_addr constant [17 x i8] c"leaf_cut_entries\00", align 1
@.str.52 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(!is_direntry_le_ih(ih))) at fs/reiserfs/lbalance.c:%i:%s: 10180: item is not directory item\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [219 x i8], [37 x i8] } { [219 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_entry_count))) < from + del_count)) at fs/reiserfs/lbalance.c:%i:%s: 10185: item contains not enough entries: entry_count = %d, from = %d, to delete = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.leaf_delete_items_entirely = private unnamed_addr constant [27 x i8] c"leaf_delete_items_entirely\00", align 1
@.str.54 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"(!(bh == ((void *)0))) at fs/reiserfs/lbalance.c:%i:%s: 10210: buffer is 0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"(!(first < 0 || first + del_num > nr)) at fs/reiserfs/lbalance.c:%i:%s: 10220: first=%d, number=%d, there is %d items\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.leaf_copy_boundary_item = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -2, i32 -1, i32 500], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 105, i64 112]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4093706240]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 756, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 761, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 762, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 776, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 833, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 834, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 836, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 919, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 922, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 994, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1003, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1004, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1166, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1174, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1175, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1196, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1337, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1338, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1411, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1417, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 703, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 706, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 531, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 534, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 161, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 187, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 204, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 249, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 257, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 269, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 276, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 284, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 33, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 324, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 327, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 328, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 332, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 350, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 375, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 397, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 445, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 452, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 491, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1086, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1087, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1250, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [26 x i8] c"../fs/reiserfs/lbalance.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1259, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [37 x i8] c"switch.table.leaf_copy_boundary_item\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @switch.table.leaf_copy_boundary_item], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 359, i32 448, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 223, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 326, i32 416, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 205, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 199, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 311, i32 384, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 334, i32 416, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 226, i32 288, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 215, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 226, i32 288, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 393, i32 512, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 294, i32 384, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 219, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.leaf_copy_boundary_item to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @leaf_move_items(i32 noundef %shift_mode, ptr noundef %tb, i32 noundef %mov_num, i32 noundef %mov_bytes, ptr noundef %Snew) local_unnamed_addr #0 align 64 {
entry:
  %dest_bi = alloca %struct.buffer_info, align 4
  %src_bi = alloca %struct.buffer_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi) #5
  %0 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %2 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi) #5
  %3 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %4 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %5 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %6 = call ptr @memset(ptr %dest_bi, i32 0, i32 12)
  %7 = call ptr @memset(ptr %src_bi, i32 0, i32 16)
  %8 = zext i32 %shift_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shift_mode, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb22.i
    i32 2, label %sw.bb57.i
    i32 3, label %sw.bb76.i
    i32 4, label %sw.bb95.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tb, ptr %src_bi, align 4
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %10 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb_path.i, align 8
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %3, align 4
  %17 = load i32, ptr %11, align 4
  %sub.i = add i32 %17, -1
  %add.ptr8.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub.i
  %18 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr8.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %4, align 4
  %21 = load i32, ptr %11, align 4
  %sub15.i = add i32 %21, -1
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub15.i, i32 1
  %22 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pe_position.i, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %5, align 4
  %25 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tb, ptr %dest_bi, align 4
  %L.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %26 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %L.i, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %0, align 4
  %FL.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 7
  %29 = ptrtoint ptr %FL.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %FL.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %1, align 4
  %call.i = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  br label %do.body.i

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tb, ptr %src_bi, align 4
  %tb_path24.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %33 = ptrtoint ptr %tb_path24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tb_path24.i, align 8
  %path_elements25.i = getelementptr inbounds %struct.treepath, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add.ptr29.i = getelementptr %struct.path_element, ptr %path_elements25.i, i32 %36
  %37 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr29.i, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %3, align 4
  %40 = load i32, ptr %34, align 4
  %sub37.i = add i32 %40, -1
  %add.ptr38.i = getelementptr %struct.path_element, ptr %path_elements25.i, i32 %sub37.i
  %41 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr38.i, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %4, align 4
  %44 = load i32, ptr %34, align 4
  %sub46.i = add i32 %44, -1
  %pe_position48.i = getelementptr %struct.path_element, ptr %path_elements25.i, i32 %sub46.i, i32 1
  %45 = ptrtoint ptr %pe_position48.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pe_position48.i, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %5, align 4
  %48 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tb, ptr %dest_bi, align 4
  %R.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %49 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %R.i, align 8
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %0, align 4
  %FR.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %52 = ptrtoint ptr %FR.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %FR.i, align 8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %1, align 4
  %call55.i = tail call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  br label %do.body.i

sw.bb57.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tb, ptr %src_bi, align 4
  %R59.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %56 = ptrtoint ptr %R59.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %R59.i, align 8
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %3, align 4
  %FR62.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %59 = ptrtoint ptr %FR62.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %FR62.i, align 8
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %4, align 4
  %call65.i = tail call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call65.i, ptr %5, align 4
  %63 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %tb, ptr %dest_bi, align 4
  %L68.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %64 = ptrtoint ptr %L68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %L68.i, align 4
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %0, align 4
  %FL71.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 7
  %67 = ptrtoint ptr %FL71.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %FL71.i, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %1, align 4
  %call74.i = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  br label %do.body.i

sw.bb76.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tb, ptr %src_bi, align 4
  %L78.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %71 = ptrtoint ptr %L78.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %L78.i, align 4
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %3, align 4
  %FL81.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 7
  %74 = ptrtoint ptr %FL81.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %FL81.i, align 4
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %4, align 4
  %call84.i = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call84.i, ptr %5, align 4
  %78 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %tb, ptr %dest_bi, align 4
  %R87.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %79 = ptrtoint ptr %R87.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %R87.i, align 8
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %0, align 4
  %FR90.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %82 = ptrtoint ptr %FR90.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %FR90.i, align 8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %1, align 4
  %call93.i = tail call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef 0) #5
  br label %do.body.i

sw.bb95.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %tb, ptr %src_bi, align 4
  %tb_path97.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %86 = ptrtoint ptr %tb_path97.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tb_path97.i, align 8
  %path_elements98.i = getelementptr inbounds %struct.treepath, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add.ptr102.i = getelementptr %struct.path_element, ptr %path_elements98.i, i32 %89
  %90 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr102.i, align 4
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %3, align 4
  %93 = load i32, ptr %87, align 4
  %sub110.i = add i32 %93, -1
  %add.ptr111.i = getelementptr %struct.path_element, ptr %path_elements98.i, i32 %sub110.i
  %94 = ptrtoint ptr %add.ptr111.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr111.i, align 4
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %4, align 4
  %97 = load i32, ptr %87, align 4
  %sub119.i = add i32 %97, -1
  %pe_position121.i = getelementptr %struct.path_element, ptr %path_elements98.i, i32 %sub119.i, i32 1
  %98 = ptrtoint ptr %pe_position121.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pe_position121.i, align 4
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %5, align 4
  %101 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %tb, ptr %dest_bi, align 4
  %102 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %Snew, ptr %0, align 4
  br label %do.body.i

sw.default.i:                                     ; preds = %entry
  %103 = ptrtoint ptr %src_bi to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %src_bi, align 4
  %tobool.not.i.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i.i, label %sw.default.i.sb_from_bi.exit.i_crit_edge, label %cond.true.i.i.i

sw.default.i.sb_from_bi.exit.i_crit_edge:         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit.i

cond.true.i.i.i:                                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %tb_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tb_sb.i.i.i, align 8
  br label %sb_from_bi.exit.i

sb_from_bi.exit.i:                                ; preds = %cond.true.i.i.i, %sw.default.i.sb_from_bi.exit.i_crit_edge
  %cond.i.i = phi ptr [ %106, %cond.true.i.i.i ], [ null, %sw.default.i.sb_from_bi.exit.i_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %cond.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.leaf_define_dest_src_infos, ptr noundef nonnull @.str.24, i32 noundef %shift_mode) #8
  unreachable

do.body.i:                                        ; preds = %sw.bb95.i, %sw.bb76.i, %sw.bb57.i, %sw.bb22.i, %sw.bb.i
  %call.sink.i = phi i32 [ %call.i, %sw.bb.i ], [ %call55.i, %sw.bb22.i ], [ %call74.i, %sw.bb57.i ], [ %call93.i, %sw.bb76.i ], [ 0, %sw.bb95.i ]
  %cmp29.i = phi i1 [ true, %sw.bb.i ], [ false, %sw.bb22.i ], [ true, %sw.bb57.i ], [ false, %sw.bb76.i ], [ false, %sw.bb95.i ]
  %.sink.i = phi i32 [ 0, %sw.bb.i ], [ 1, %sw.bb22.i ], [ 0, %sw.bb57.i ], [ 1, %sw.bb76.i ], [ 1, %sw.bb95.i ]
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call.sink.i, ptr %2, align 4
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %109, null
  br i1 %tobool.not.i, label %do.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

do.body.i.if.then.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %0, align 4
  %tobool130.not.i = icmp eq ptr %111, null
  br i1 %tobool130.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %do.body8.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.body.i.if.then.i_crit_edge
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %0, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_define_dest_src_infos, ptr noundef nonnull @.str.25, i32 noundef 708, ptr noundef nonnull @__func__.leaf_define_dest_src_infos, i32 noundef %shift_mode, ptr noundef %109, ptr noundef %113) #8
  unreachable

do.body8.i:                                       ; preds = %lor.lhs.false.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %109, i32 0, i32 5
  %114 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %blk_nr_item.i, align 2
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #5
  %conv.i = zext i16 %118 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %mov_num)
  %cmp9.i = icmp slt i32 %conv.i, %mov_num
  br i1 %cmp9.i, label %if.then11.i, label %do.body18.i

if.then11.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items, ptr noundef nonnull @.str.28, i32 noundef 533, ptr noundef nonnull @__func__.leaf_copy_items, i32 noundef %conv.i, i32 noundef %mov_num) #8
  unreachable

do.body18.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mov_num)
  %cmp19.i = icmp slt i32 %mov_num, 0
  br i1 %cmp19.i, label %if.then21.i, label %do.end24.i

if.then21.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items, ptr noundef nonnull @.str.29, i32 noundef 534, ptr noundef nonnull @__func__.leaf_copy_items, i32 noundef %mov_num) #8
  unreachable

do.end24.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mov_num)
  %cmp25.i = icmp eq i32 %mov_num, 0
  br i1 %cmp25.i, label %leaf_copy_items.exit, label %if.end28.i

if.end28.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mov_num)
  %cmp32.i = icmp eq i32 %mov_num, 1
  %cpy_bytes..i = select i1 %cmp32.i, i32 %mov_bytes, i32 -1
  br i1 %cmp29.i, label %if.then31.i, label %if.else48.i

if.then31.i:                                      ; preds = %if.end28.i
  %call.i8 = call fastcc i32 @leaf_copy_boundary_item(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 0, i32 noundef %cpy_bytes..i) #5
  %sub.i9 = sub i32 %mov_num, %call.i8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i8, i32 %mov_num)
  %cmp36.i = icmp eq i32 %call.i8, %mov_num
  br i1 %cmp36.i, label %if.then31.i.cond.end_crit_edge, label %if.end39.i

if.then31.i.cond.end_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end39.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mov_bytes)
  %cmp40.i = icmp eq i32 %mov_bytes, -1
  br i1 %cmp40.i, label %if.then42.i, label %if.else43.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @leaf_copy_items_entirely(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 0, i32 noundef %call.i8, i32 noundef %sub.i9) #5
  br label %cond.end

if.else43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub44.i = add i32 %sub.i9, -1
  call fastcc void @leaf_copy_items_entirely(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 0, i32 noundef %call.i8, i32 noundef %sub44.i) #5
  %sub46.i10 = add nsw i32 %mov_num, -1
  call fastcc void @leaf_item_bottle(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 0, i32 noundef %sub46.i10, i32 noundef %mov_bytes) #5
  br label %cond.end

if.else48.i:                                      ; preds = %if.end28.i
  %call57.i = call fastcc i32 @leaf_copy_boundary_item(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 1, i32 noundef %cpy_bytes..i) #5
  %sub58.i = sub i32 %mov_num, %call57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call57.i, i32 %mov_num)
  %cmp59.i = icmp eq i32 %call57.i, %mov_num
  br i1 %cmp59.i, label %if.else48.i.cond.false_crit_edge, label %if.end62.i

if.else48.i.cond.false_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

if.end62.i:                                       ; preds = %if.else48.i
  %sub64.i = sub nsw i32 %conv.i, %mov_num
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mov_bytes)
  %cmp65.i = icmp eq i32 %mov_bytes, -1
  br i1 %cmp65.i, label %if.then67.i, label %if.else68.i

if.then67.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @leaf_copy_items_entirely(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 1, i32 noundef %sub64.i, i32 noundef %sub58.i) #5
  br label %cond.false

if.else68.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %add69.i = add nsw i32 %sub64.i, 1
  %sub70.i = add i32 %sub58.i, -1
  call fastcc void @leaf_copy_items_entirely(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 1, i32 noundef %add69.i, i32 noundef %sub70.i) #5
  call fastcc void @leaf_item_bottle(ptr noundef nonnull %dest_bi, ptr noundef nonnull %109, i32 noundef 1, i32 noundef %sub64.i, i32 noundef %mov_bytes) #5
  br label %cond.false

leaf_copy_items.exit:                             ; preds = %do.end24.i
  br i1 %cmp29.i, label %leaf_copy_items.exit.cond.end_crit_edge, label %leaf_copy_items.exit.cond.false_crit_edge

leaf_copy_items.exit.cond.false_crit_edge:        ; preds = %leaf_copy_items.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

leaf_copy_items.exit.cond.end_crit_edge:          ; preds = %leaf_copy_items.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %leaf_copy_items.exit.cond.false_crit_edge, %if.else68.i, %if.then67.i, %if.else48.i.cond.false_crit_edge
  %retval.0.i20 = phi i32 [ 0, %leaf_copy_items.exit.cond.false_crit_edge ], [ %call57.i, %if.else68.i ], [ %call57.i, %if.then67.i ], [ %mov_num, %if.else48.i.cond.false_crit_edge ]
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %3, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %blk_nr_item, align 2
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %conv = zext i16 %125 to i32
  %sub = sub nsw i32 %conv, %mov_num
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %leaf_copy_items.exit.cond.end_crit_edge, %if.else43.i, %if.then42.i, %if.then31.i.cond.end_crit_edge
  %retval.0.i14 = phi i32 [ %retval.0.i20, %cond.false ], [ 0, %leaf_copy_items.exit.cond.end_crit_edge ], [ %call.i8, %if.else43.i ], [ %call.i8, %if.then42.i ], [ %mov_num, %if.then31.i.cond.end_crit_edge ]
  %cond = phi i32 [ %sub, %cond.false ], [ 0, %leaf_copy_items.exit.cond.end_crit_edge ], [ 0, %if.else43.i ], [ 0, %if.then42.i ], [ 0, %if.then31.i.cond.end_crit_edge ]
  call void @leaf_delete_items(ptr noundef nonnull %src_bi, i32 noundef %.sink.i, i32 noundef %cond, i32 noundef %mov_num, i32 noundef %mov_bytes)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi) #5
  ret i32 %retval.0.i14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @leaf_delete_items(ptr noundef %cur_bi, i32 noundef %last_first, i32 noundef %first, i32 noundef %del_num, i32 noundef %del_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_delete_items, ptr noundef nonnull @.str.5, i32 noundef 833, ptr noundef nonnull @__func__.leaf_delete_items) #8
  unreachable

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_num)
  %cmp = icmp slt i32 %del_num, 0
  br i1 %cmp, label %if.then3, label %do.body7

if.then3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_delete_items, ptr noundef nonnull @.str.6, i32 noundef 835, ptr noundef nonnull @__func__.leaf_delete_items, i32 noundef %del_num) #8
  unreachable

do.body7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %cmp8 = icmp slt i32 %first, 0
  %add = add i32 %del_num, %first
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp10 = icmp sgt i32 %add, %conv
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then12, label %do.end16

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_delete_items, ptr noundef nonnull @.str.7, i32 noundef 840, ptr noundef nonnull @__func__.leaf_delete_items, i32 noundef %first, i32 noundef %add, i32 noundef %conv) #8
  unreachable

do.end16:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_num)
  %cmp17 = icmp eq i32 %del_num, 0
  br i1 %cmp17, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %cmp21 = icmp eq i32 %first, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %del_num)
  %cmp23 = icmp eq i32 %conv, %del_num
  %or.cond92 = select i1 %cmp21, i1 %cmp23, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %del_bytes)
  %cmp26 = icmp eq i32 %del_bytes, -1
  %or.cond93 = and i1 %cmp26, %or.cond92
  br i1 %or.cond93, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @make_empty_node(ptr noundef %cur_bi) #5
  %7 = ptrtoint ptr %cur_bi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %8, ptr noundef nonnull %1, i32 noundef 0) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  br i1 %cmp26, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @leaf_delete_items_entirely(ptr noundef %cur_bi, i32 noundef %first, i32 noundef %del_num)
  br label %cleanup

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp33 = icmp eq i32 %last_first, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %del_num, -1
  tail call fastcc void @leaf_delete_items_entirely(ptr noundef %cur_bi, i32 noundef %first, i32 noundef %sub)
  tail call void @leaf_cut_from_buffer(ptr noundef %cur_bi, i32 noundef 0, i32 noundef 0, i32 noundef %del_bytes)
  br label %cleanup

if.else36:                                        ; preds = %if.else
  %add37 = add nuw i32 %first, 1
  %sub38 = add nsw i32 %del_num, -1
  tail call fastcc void @leaf_delete_items_entirely(ptr noundef %cur_bi, i32 noundef %add37, i32 noundef %sub38)
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %blk_nr_item40 = getelementptr inbounds %struct.block_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %blk_nr_item40 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %blk_nr_item40, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv41 = zext i16 %13 to i32
  %sub42 = add nsw i32 %conv41, -1
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %sub42
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %14 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.else36
  %16 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %u.i.i.i, align 1
  %18 = and i64 %17, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %18)
  %phi.cmp1.i.i = icmp eq i64 %18, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then45_crit_edge, label %if.else.i.i.i.if.else47_crit_edge

if.else.i.i.i.if.else47_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else47

if.else.i.i.i.if.then45_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

is_direntry_le_ih.exit:                           ; preds = %if.else36
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %20)
  %cond.i.i = icmp eq i32 %20, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.if.then45_crit_edge, label %is_direntry_le_ih.exit.if.else47_crit_edge

is_direntry_le_ih.exit.if.else47_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else47

is_direntry_le_ih.exit.if.then45_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.then45:                                        ; preds = %is_direntry_le_ih.exit.if.then45_crit_edge, %if.else.i.i.i.if.then45_crit_edge
  %u = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  br label %if.end49

if.else47:                                        ; preds = %is_direntry_le_ih.exit.if.else47_crit_edge, %if.else.i.i.i.if.else47_crit_edge
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  %ih_item_len.sink = phi ptr [ %ih_item_len, %if.else47 ], [ %u, %if.then45 ]
  %21 = ptrtoint ptr %ih_item_len.sink to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %ih_item_len.sink, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %len.0 = zext i16 %23 to i32
  %sub54 = sub i32 %len.0, %del_bytes
  tail call void @leaf_cut_from_buffer(ptr noundef %cur_bi, i32 noundef %sub42, i32 noundef %sub54, i32 noundef %del_bytes)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then35, %if.then32, %if.then28, %do.end16.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %shift_num, i32 noundef %shift_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @leaf_move_items(i32 noundef 0, ptr noundef %tb, i32 noundef %shift_num, i32 noundef %shift_bytes, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift_num)
  %tobool.not = icmp eq i32 %shift_num, 0
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.then

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then:                                          ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blk_nr_item, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp eq i16 %9, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shift_bytes)
  %cmp4.not = icmp eq i32 %shift_bytes, -1
  br i1 %cmp4.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_shift_left, ptr noundef nonnull @.str.1, i32 noundef 758, ptr noundef nonnull @__func__.leaf_shift_left, i32 noundef %shift_bytes) #8
  unreachable

do.end:                                           ; preds = %do.body
  %10 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tb, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %11, label %if.end14 [
    i32 112, label %do.end.if.then12_crit_edge
    i32 105, label %do.end.if.then12_crit_edge98
  ]

do.end.if.then12_crit_edge98:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %do.end.if.then12_crit_edge, %do.end.if.then12_crit_edge98
  tail call void @print_cur_tb(ptr noundef nonnull @.str.2) #5
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %13 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb_sb, align 8
  %15 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.leaf_shift_left, ptr noundef nonnull @.str.3, i32 noundef %16) #8
  unreachable

if.end14:                                         ; preds = %do.end
  %17 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb_path, align 8
  %path_elements16 = getelementptr inbounds %struct.treepath, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %sub = add i32 %20, -1
  %pe_position = getelementptr %struct.path_element, ptr %path_elements16, i32 %sub, i32 1
  %21 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp21 = icmp eq i32 %22, 0
  br i1 %cmp21, label %if.then23, label %if.end14.if.end61_crit_edge

if.end14.if.end61_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr20 = getelementptr %struct.path_element, ptr %path_elements16, i32 %sub
  %CFL = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %23 = ptrtoint ptr %CFL to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %CFL, align 4
  %lkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %25 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lkey, align 4
  %27 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr20, align 4
  tail call void @replace_key(ptr noundef %tb, ptr noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef 0) #5
  br label %if.end61

if.else:                                          ; preds = %if.then
  %CFL34 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %29 = ptrtoint ptr %CFL34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %CFL34, align 4
  %lkey36 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %31 = ptrtoint ptr %lkey36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lkey36, align 4
  tail call void @replace_key(ptr noundef %tb, ptr noundef %30, i32 noundef %32, ptr noundef %5, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shift_bytes)
  %cmp39.not = icmp eq i32 %shift_bytes, -1
  br i1 %cmp39.not, label %if.else.if.end61_crit_edge, label %land.lhs.true

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

land.lhs.true:                                    ; preds = %if.else
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 24
  %ih_version.i = getelementptr i8, ptr %34, i32 46
  %35 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.i.i.i = icmp eq i16 %36, 0
  %u.i.i.i = getelementptr i8, ptr %34, i32 32
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true
  %37 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %u.i.i.i, align 1
  %39 = and i64 %38, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %39)
  %phi.cmp1.i.i = icmp eq i64 %39, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.land.lhs.true44_crit_edge, label %if.else.i.i.i.land.lhs.true47_crit_edge

if.else.i.i.i.land.lhs.true47_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true47

if.else.i.i.i.land.lhs.true44_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true44

is_direntry_le_ih.exit:                           ; preds = %land.lhs.true
  %k_uniqueness.i.i.i = getelementptr i8, ptr %34, i32 36
  %40 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %41)
  %cond.i.i = icmp eq i32 %41, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.land.lhs.true44_crit_edge, label %is_direntry_le_ih.exit.land.lhs.true47_crit_edge

is_direntry_le_ih.exit.land.lhs.true47_crit_edge: ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true47

is_direntry_le_ih.exit.land.lhs.true44_crit_edge: ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %is_direntry_le_ih.exit.land.lhs.true44_crit_edge, %if.else.i.i.i.land.lhs.true44_crit_edge
  %u = getelementptr i8, ptr %34, i32 40
  %42 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool46.not = icmp eq i16 %43, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.end61_crit_edge, label %land.lhs.true44.land.lhs.true47_crit_edge

land.lhs.true44.land.lhs.true47_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true47

land.lhs.true44.if.end61_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

land.lhs.true47:                                  ; preds = %land.lhs.true44.land.lhs.true47_crit_edge, %is_direntry_le_ih.exit.land.lhs.true47_crit_edge, %if.else.i.i.i.land.lhs.true47_crit_edge
  %44 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %u.i.i.i, align 1
  %46 = trunc i64 %45 to i32
  %47 = lshr i32 %46, 4
  %conv1.i.i = and i32 %47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %48 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %48)
  %switch9.i = icmp ult i16 %48, -3
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %switch.i = select i1 %not.cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true47
  %k_uniqueness.i = getelementptr i8, ptr %34, i32 36
  %49 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %k_uniqueness.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %51, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

if.else.i:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  %narrow.i = select i1 %cmp.i.i, i32 %conv1.i.i, i32 15
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %if.else.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i32 [ %narrow.i, %if.else.i ], [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ %51, %if.then.i.le_key_k_type.exit_crit_edge ]
  %arrayidx52 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx52, align 4
  %is_left_mergeable = getelementptr inbounds %struct.item_operations, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %is_left_mergeable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %is_left_mergeable, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %b_size, align 8
  %call54 = tail call i32 %56(ptr noundef %add.ptr.i.i, i32 noundef %58) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %le_key_k_type.exit.if.end61_crit_edge

le_key_k_type.exit.if.end61_crit_edge:            ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then56:                                        ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_shift_left, ptr noundef nonnull @.str.4, i32 noundef 781, ptr noundef nonnull @__func__.leaf_shift_left) #8
  unreachable

if.end61:                                         ; preds = %le_key_k_type.exit.if.end61_crit_edge, %land.lhs.true44.if.end61_crit_edge, %if.else.if.end61_crit_edge, %if.then23, %if.end14.if.end61_crit_edge, %entry.if.end61_crit_edge
  ret i32 %call
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cur_tb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @replace_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %shift_num, i32 noundef %shift_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @leaf_move_items(i32 noundef 1, ptr noundef %tb, i32 noundef %shift_num, i32 noundef %shift_bytes, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift_num)
  %tobool.not = icmp eq i32 %shift_num, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %CFR = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %0 = ptrtoint ptr %CFR to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %CFR, align 8
  %rkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %2 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rkey, align 8
  %R = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %4 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %R, align 8
  tail call void @replace_key(ptr noundef %tb, ptr noundef %1, i32 noundef %3, ptr noundef %5, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_balance_mark_leaf_dirty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leaf_delete_items_entirely(ptr noundef %bi, i32 noundef %first, i32 noundef %del_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %do.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_delete_items_entirely, ptr noundef nonnull @.str.54, i32 noundef 1250, ptr noundef nonnull @__func__.leaf_delete_items_entirely) #8
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_num)
  %cmp7 = icmp eq i32 %del_num, 0
  br i1 %cmp7, label %do.end6.cleanup_crit_edge, label %if.end9

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %cmp11 = icmp slt i32 %first, 0
  %add = add i32 %del_num, %first
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp13 = icmp sgt i32 %add, %conv
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %do.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_delete_items_entirely, ptr noundef nonnull @.str.56, i32 noundef 1261, ptr noundef nonnull @__func__.leaf_delete_items_entirely, i32 noundef %first, i32 noundef %del_num, i32 noundef %conv) #8
  unreachable

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %cmp19 = icmp eq i32 %first, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %del_num)
  %cmp21 = icmp eq i32 %conv, %del_num
  %or.cond173 = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %or.cond173, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @make_empty_node(ptr noundef %bi) #5
  %7 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %8, ptr noundef nonnull %1, i32 noundef 0) #5
  br label %cleanup

if.end24:                                         ; preds = %do.end18
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %first
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %b_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location = getelementptr %struct.item_head, ptr %arrayidx.i, i32 -1, i32 3
  %11 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %ih_item_location, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv27 = zext i16 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %conv27, %cond.false ]
  %14 = xor i32 %first, -1
  %sub28 = add i32 %conv, %14
  %ih_item_location29 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub28, i32 3
  %15 = ptrtoint ptr %ih_item_location29 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %ih_item_location29, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv30 = zext i16 %17 to i32
  %sub31 = add i32 %del_num, -1
  %ih_item_location33 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub31, i32 3
  %18 = ptrtoint ptr %ih_item_location33 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %ih_item_location33, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv34 = zext i16 %20 to i32
  %idx.neg = sub nsw i32 0, %conv34
  %add.ptr36 = getelementptr i8, ptr %3, i32 %conv30
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 %cond
  %add.ptr38 = getelementptr i8, ptr %add.ptr37, i32 %idx.neg
  %sub41 = sub nsw i32 %conv34, %conv30
  %21 = call ptr @memmove(ptr %add.ptr38, ptr %add.ptr36, i32 %sub41)
  %add.ptr42 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %del_num
  %sub44 = sub i32 %conv, %add
  %mul = mul i32 %sub44, 24
  %22 = call ptr @memmove(ptr %arrayidx.i, ptr %add.ptr42, i32 %mul)
  %sub45 = sub i32 %conv, %del_num
  call void @__sanitizer_cov_trace_cmp4(i32 %sub45, i32 %first)
  %cmp46174 = icmp sgt i32 %sub45, %first
  br i1 %cmp46174, label %do.body48.lr.ph, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body48.lr.ph:                                  ; preds = %cond.end
  %23 = trunc i32 %cond to i16
  %24 = sub i16 %23, %20
  br label %do.body48

do.body48:                                        ; preds = %do.body48.do.body48_crit_edge, %do.body48.lr.ph
  %i.0175 = phi i32 [ %first, %do.body48.lr.ph ], [ %inc, %do.body48.do.body48_crit_edge ]
  %sub49 = sub i32 %i.0175, %first
  %ih_item_location51 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub49, i32 3
  %25 = ptrtoint ptr %ih_item_location51 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %ih_item_location51, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv55 = add i16 %24, %27
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv55)
  %29 = ptrtoint ptr %ih_item_location51 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %ih_item_location51, align 1
  %inc = add nsw i32 %i.0175, 1
  %cmp46 = icmp slt i32 %inc, %sub45
  br i1 %cmp46, label %do.body48.do.body48_crit_edge, label %do.body48.for.end_crit_edge

do.body48.for.end_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body48.do.body48_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

for.end:                                          ; preds = %do.body48.for.end_crit_edge, %cond.end.for.end_crit_edge
  %30 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %blk_nr_item, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = trunc i32 %del_num to i16
  %conv64 = sub i16 %32, %33
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv64)
  %35 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %blk_nr_item, align 2
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %blk_free_space, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %mul68 = mul i32 %del_num, 24
  %sub67 = add i32 %cond, %mul68
  %39 = trunc i32 %sub67 to i16
  %40 = sub i16 %39, %20
  %conv71 = add i16 %38, %40
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv71)
  %42 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %blk_free_space, align 2
  %43 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %44, ptr noundef nonnull %1, i32 noundef 0) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %45 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bi_parent, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then74

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then74:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %b_data76 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data76, align 4
  %add.ptr77 = getelementptr i8, ptr %48, i32 24
  %blk_nr_item80 = getelementptr inbounds %struct.block_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %blk_nr_item80 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %blk_nr_item80, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv81 = zext i16 %51 to i32
  %mul82 = shl nuw nsw i32 %conv81, 4
  %add.ptr83 = getelementptr i8, ptr %add.ptr77, i32 %mul82
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  %52 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_position, align 4
  %mul84 = shl i32 %53, 3
  %add.ptr85 = getelementptr i8, ptr %add.ptr83, i32 %mul84
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr85, i32 0, i32 1
  %54 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dc_size, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv92 = sub i16 %56, %40
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv92)
  %58 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %dc_size, align 4
  %59 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi, align 4
  %61 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %60, ptr noundef %62, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %for.end.cleanup_crit_edge, %if.then23, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @leaf_cut_from_buffer(ptr nocapture noundef readonly %bi, i32 noundef %cut_item_num, i32 noundef %pos_in_item, i32 noundef %cut_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %cut_item_num
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %7 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i.i = icmp eq i16 %8, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %is_direntry_le_ih.exit.thread

is_direntry_le_ih.exit:                           ; preds = %entry
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %k_uniqueness.i.i.i, align 1
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %10, label %is_direntry_le_ih.exit.do.body17_crit_edge [
    i32 -201261056, label %is_direntry_le_ih.exit.do.body1.i_crit_edge
    i32 0, label %is_direntry_le_ih.exit.if.then13_crit_edge
  ]

is_direntry_le_ih.exit.if.then13_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

is_direntry_le_ih.exit.do.body1.i_crit_edge:      ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i

is_direntry_le_ih.exit.do.body17_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

is_direntry_le_ih.exit.thread:                    ; preds = %entry
  %12 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %u.i.i.i, align 1
  %14 = and i64 %13, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %14)
  %phi.cmp1.i.i.not = icmp eq i64 %14, 48
  %15 = and i64 %13, 240
  br i1 %phi.cmp1.i.i.not, label %if.else.i.i.i.i, label %is_statdata_le_ih.exit

if.else.i.i.i.i:                                  ; preds = %is_direntry_le_ih.exit.thread
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %15)
  %phi.cmp1.i.i.i = icmp eq i64 %15, 48
  br i1 %phi.cmp1.i.i.i, label %if.else.i.i.i.i.do.body1.i_crit_edge, label %if.then.i

if.else.i.i.i.i.do.body1.i_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1.i

if.then.i:                                        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_entries, ptr noundef nonnull @.str.52, i32 noundef 1086, ptr noundef nonnull @__func__.leaf_cut_entries) #8
  unreachable

do.body1.i:                                       ; preds = %if.else.i.i.i.i.do.body1.i_crit_edge, %is_direntry_le_ih.exit.do.body1.i_crit_edge
  %u.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %u.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #5
  %conv.i = zext i16 %18 to i32
  %add.i = add i32 %cut_size, %pos_in_item
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp sgt i32 %add.i, %conv.i
  br i1 %cmp.i, label %if.then3.i, label %do.end8.i

if.then3.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_entries, ptr noundef nonnull @.str.53, i32 noundef 1089, ptr noundef nonnull @__func__.leaf_cut_entries, i32 noundef %conv.i, i32 noundef %pos_in_item, i32 noundef %cut_size) #8
  unreachable

do.end8.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cut_size)
  %cmp9.i = icmp eq i32 %cut_size, 0
  br i1 %cmp9.i, label %do.end8.i.leaf_cut_entries.exit_crit_edge, label %if.end12.i

do.end8.i.leaf_cut_entries.exit_crit_edge:        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leaf_cut_entries.exit

if.end12.i:                                       ; preds = %do.end8.i
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %19 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %ih_item_location.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #5
  %conv13.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %tobool15.not.i = icmp eq i32 %pos_in_item, 0
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %sub.i = add i32 %pos_in_item, -1
  %deh_location.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %sub.i, i32 3
  %ih_item_len.sink.i = select i1 %tobool15.not.i, ptr %ih_item_len.i, ptr %deh_location.i
  %22 = ptrtoint ptr %ih_item_len.sink.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %ih_item_len.sink.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #5
  %cond.i = zext i16 %24 to i32
  %sub19.i = add i32 %add.i, -1
  %deh_location21.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %sub19.i, i32 3
  %25 = ptrtoint ptr %deh_location21.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %deh_location21.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #5
  %conv22.i = zext i16 %27 to i32
  %sub23.i = sub nsw i32 %cond.i, %conv22.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 %cond.i
  %i.0139.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0139.i, i32 %sub19.i)
  %cmp30140.i = icmp sgt i32 %i.0139.i, %sub19.i
  br i1 %cmp30140.i, label %for.body.lr.ph.i, label %if.end12.i.for.cond39.preheader.i_crit_edge

if.end12.i.for.cond39.preheader.i_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond39.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %28 = trunc i32 %cut_size to i16
  %29 = mul i16 %28, -16
  br label %for.body.i

for.cond39.preheader.i:                           ; preds = %for.body.i.for.cond39.preheader.i_crit_edge, %if.end12.i.for.cond39.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %cmp40142.i = icmp sgt i32 %pos_in_item, 0
  %mul46.i = shl i32 %cut_size, 4
  %add47.i = add i32 %sub23.i, %mul46.i
  br i1 %cmp40142.i, label %for.body42.lr.ph.i, label %for.cond39.preheader.i.do.body54.i_crit_edge

for.cond39.preheader.i.do.body54.i_crit_edge:     ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54.i

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %30 = trunc i32 %add47.i to i16
  br label %for.body42.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0141.i = phi i32 [ %i.0139.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %deh_location33.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %i.0141.i, i32 3
  %31 = ptrtoint ptr %deh_location33.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %deh_location33.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #5
  %conv36.i = add i16 %33, %29
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv36.i) #5
  %35 = ptrtoint ptr %deh_location33.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %deh_location33.i, align 1
  %i.0.i = add nsw i32 %i.0141.i, -1
  %cmp30.i = icmp sgt i32 %i.0.i, %sub19.i
  br i1 %cmp30.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond39.preheader.i_crit_edge

for.body.i.for.cond39.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond39.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.1143.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc.i, %for.body42.i.for.body42.i_crit_edge ]
  %deh_location44.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %i.1143.i, i32 3
  %36 = ptrtoint ptr %deh_location44.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %deh_location44.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #5
  %conv49.i = sub i16 %38, %30
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv49.i) #5
  %40 = ptrtoint ptr %deh_location44.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %deh_location44.i, align 1
  %inc.i = add nuw nsw i32 %i.1143.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %pos_in_item
  br i1 %exitcond.not.i, label %for.body42.i.do.body54.i_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body42.i

for.body42.i.do.body54.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54.i

do.body54.i:                                      ; preds = %for.body42.i.do.body54.i_crit_edge, %for.cond39.preheader.i.do.body54.i_crit_edge
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %u.i, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #5
  %44 = trunc i32 %cut_size to i16
  %conv58.i = sub i16 %43, %44
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv58.i) #5
  %46 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %u.i, align 1
  %add.ptr62.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %pos_in_item
  %add.ptr64.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr62.i, i32 %cut_size
  %idx.neg.i = sub nsw i32 0, %sub23.i
  %add.ptr65.i = getelementptr i8, ptr %add.ptr24.i, i32 %idx.neg.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr65.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr64.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %47 = call ptr @memmove(ptr %add.ptr62.i, ptr %add.ptr64.i, i32 %sub.ptr.sub.i)
  %idx.neg71.i = sub i32 0, %mul46.i
  %add.ptr72.i = getelementptr i8, ptr %add.ptr65.i, i32 %idx.neg71.i
  %48 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ih_item_len.i, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #5
  %conv74.i = zext i16 %50 to i32
  %add.ptr75.i = getelementptr i8, ptr %add.ptr.i, i32 %conv74.i
  %sub.ptr.lhs.cast76.i = ptrtoint ptr %add.ptr75.i to i32
  %sub.ptr.rhs.cast77.i = ptrtoint ptr %add.ptr24.i to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast76.i, %sub.ptr.rhs.cast77.i
  %51 = call ptr @memmove(ptr %add.ptr72.i, ptr %add.ptr24.i, i32 %sub.ptr.sub78.i)
  br label %leaf_cut_entries.exit

leaf_cut_entries.exit:                            ; preds = %do.body54.i, %do.end8.i.leaf_cut_entries.exit_crit_edge
  %retval.0.i = phi i32 [ %add47.i, %do.body54.i ], [ 0, %do.end8.i.leaf_cut_entries.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %cmp = icmp eq i32 %pos_in_item, 0
  br i1 %cmp, label %do.body, label %leaf_cut_entries.exit.if.end67_crit_edge

leaf_cut_entries.exit.if.end67_crit_edge:         ; preds = %leaf_cut_entries.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.body:                                          ; preds = %leaf_cut_entries.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cut_item_num)
  %tobool5.not = icmp eq i32 %cut_item_num, 0
  br i1 %tobool5.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_from_buffer, ptr noundef nonnull @.str.14, i32 noundef 1168, ptr noundef nonnull @__func__.leaf_cut_from_buffer, i32 noundef %cut_item_num) #8
  unreachable

do.end:                                           ; preds = %do.body
  %52 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data, align 4
  %ih_item_location.i234 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %54 = ptrtoint ptr %ih_item_location.i234 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %ih_item_location.i234, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #5
  %conv.i235 = zext i16 %56 to i32
  %add.ptr.i236 = getelementptr i8, ptr %53, i32 %conv.i235
  %57 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr.i236, align 1
  %59 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.i.i = icmp eq i16 %60, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %58, ptr %u.i.i.i, align 1
  br label %if.end67

if.else.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %58)
  %conv8 = zext i32 %62 to i64
  %63 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %u.i.i.i, align 1
  %and1.i.i.i = and i64 %64, 240
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv8) #5
  %or.i.i.i = or i64 %and1.i.i.i, %65
  %66 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %or.i.i.i, ptr %u.i.i.i, align 1
  br label %if.end67

is_statdata_le_ih.exit:                           ; preds = %is_direntry_le_ih.exit.thread
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %phi.cmp1.i.i243.not = icmp eq i64 %15, 0
  br i1 %phi.cmp1.i.i243.not, label %is_statdata_le_ih.exit.if.then13_crit_edge, label %is_statdata_le_ih.exit.do.body17_crit_edge

is_statdata_le_ih.exit.do.body17_crit_edge:       ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

is_statdata_le_ih.exit.if.then13_crit_edge:       ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %is_statdata_le_ih.exit.if.then13_crit_edge, %is_direntry_le_ih.exit.if.then13_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_from_buffer, ptr noundef nonnull @.str.15, i32 noundef 1174, ptr noundef nonnull @__func__.leaf_cut_from_buffer) #8
  unreachable

do.body17:                                        ; preds = %is_statdata_le_ih.exit.do.body17_crit_edge, %is_direntry_le_ih.exit.do.body17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %cond232 = icmp eq i32 %pos_in_item, 0
  br i1 %cond232, label %if.then30, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body17
  %add = add i32 %cut_size, %pos_in_item
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %67 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %ih_item_len, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv19 = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp20.not = icmp eq i32 %add, %conv19
  br i1 %cmp20.not, label %land.lhs.true.if.end67_crit_edge, label %if.then22

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_from_buffer, ptr noundef nonnull @.str.16, i32 noundef 1178, ptr noundef nonnull @__func__.leaf_cut_from_buffer, i32 noundef %pos_in_item, i32 noundef %cut_size, i32 noundef %conv19) #8
  unreachable

if.then30:                                        ; preds = %do.body17
  %ih_item_location = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %70 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %ih_item_location, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %conv32 = zext i16 %72 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv32
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %cut_size
  %ih_item_len38 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %73 = ptrtoint ptr %ih_item_len38 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %ih_item_len38, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv39 = zext i16 %75 to i32
  %sub = sub i32 %conv39, %cut_size
  %76 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr37, i32 %sub)
  %77 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp.i.i.i247 = icmp eq i16 %78, 0
  br i1 %cmp.i.i.i247, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %if.then30
  %k_uniqueness.i.i.i249 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %k_uniqueness.i.i.i249 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %k_uniqueness.i.i.i249, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cond.i.i250.not = icmp eq i32 %80, -1
  %81 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %u.i.i.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  br i1 %cond.i.i250.not, label %if.then.i.i264, label %set_le_ih_k_offset.exit289.thread

is_direct_le_ih.exit.thread:                      ; preds = %if.then30
  %84 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %u.i.i.i, align 1
  %86 = and i64 %85, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %86)
  %phi.cmp1.i.i252.not = icmp eq i64 %86, 32
  %87 = and i64 %85, -241
  %88 = tail call i64 @llvm.bswap.i64(i64 %87) #5
  br i1 %phi.cmp1.i.i252.not, label %if.else.i.i269, label %set_le_ih_k_offset.exit289

if.then.i.i264:                                   ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add45313 = add i32 %83, %cut_size
  %89 = tail call i32 @llvm.bswap.i32(i32 %add45313) #5
  %90 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %u.i.i.i, align 1
  br label %if.end67

if.else.i.i269:                                   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %conv44 = sext i32 %cut_size to i64
  %add45 = add nsw i64 %88, %conv44
  %and.i.i.i266 = and i64 %add45, 1152921504606846975
  %and1.i.i.i267 = and i64 %85, 240
  %91 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i266) #5
  %or.i.i.i268 = or i64 %91, %and1.i.i.i267
  %92 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %or.i.i.i268, ptr %u.i.i.i, align 1
  br label %if.end67

set_le_ih_k_offset.exit289:                       ; preds = %is_direct_le_ih.exit.thread
  %div231 = lshr i32 %cut_size, 2
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %93 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %b_size, align 8
  %mul = mul i32 %94, %div231
  %conv48 = zext i32 %mul to i64
  %add49 = add nuw nsw i64 %88, %conv48
  %and.i.i.i285 = and i64 %add49, 1152921504606846975
  %and1.i.i.i286 = and i64 %85, 240
  %95 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i285) #5
  %or.i.i.i287 = or i64 %95, %and1.i.i.i286
  %96 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %or.i.i.i287, ptr %u.i.i.i, align 1
  %97 = ptrtoint ptr %ih_item_len38 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %ih_item_len38, align 1
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %conv52 = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %cut_size)
  %cmp53 = icmp ne i32 %conv52, %cut_size
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %78)
  %cmp57 = icmp eq i16 %78, 256
  %or.cond326 = select i1 %cmp53, i1 true, i1 %cmp57
  br i1 %or.cond326, label %set_le_ih_k_offset.exit289.if.end67_crit_edge, label %set_le_ih_k_offset.exit289.cond.false_crit_edge

set_le_ih_k_offset.exit289.cond.false_crit_edge:  ; preds = %set_le_ih_k_offset.exit289
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

set_le_ih_k_offset.exit289.if.end67_crit_edge:    ; preds = %set_le_ih_k_offset.exit289
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

set_le_ih_k_offset.exit289.thread:                ; preds = %is_direct_le_ih.exit
  %div231316 = lshr i32 %cut_size, 2
  %b_size317 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %b_size317 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %b_size317, align 8
  %mul318 = mul i32 %101, %div231316
  %add49320 = add i32 %mul318, %83
  %102 = tail call i32 @llvm.bswap.i32(i32 %add49320) #5
  %103 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %u.i.i.i, align 1
  %104 = ptrtoint ptr %ih_item_len38 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %ih_item_len38, align 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %105)
  %conv52322 = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52322, i32 %cut_size)
  %cmp53323 = icmp eq i32 %conv52322, %cut_size
  br i1 %cmp53323, label %set_le_ih_k_offset.exit289.thread.cond.false_crit_edge, label %set_le_ih_k_offset.exit289.thread.if.end67_crit_edge

set_le_ih_k_offset.exit289.thread.if.end67_crit_edge: ; preds = %set_le_ih_k_offset.exit289.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

set_le_ih_k_offset.exit289.thread.cond.false_crit_edge: ; preds = %set_le_ih_k_offset.exit289.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %set_le_ih_k_offset.exit289.thread.cond.false_crit_edge, %set_le_ih_k_offset.exit289.cond.false_crit_edge
  %u = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %107 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool60.not = icmp eq i16 %108, 0
  br i1 %tobool60.not, label %cond.false.if.end67_crit_edge, label %if.then61

cond.false.if.end67_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then61:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_cut_from_buffer, ptr noundef nonnull @.str.17, i32 noundef 1198, ptr noundef nonnull @__func__.leaf_cut_from_buffer, ptr noundef %arrayidx.i) #8
  unreachable

if.end67:                                         ; preds = %cond.false.if.end67_crit_edge, %set_le_ih_k_offset.exit289.thread.if.end67_crit_edge, %set_le_ih_k_offset.exit289.if.end67_crit_edge, %if.else.i.i269, %if.then.i.i264, %land.lhs.true.if.end67_crit_edge, %if.else.i.i, %if.then.i.i, %leaf_cut_entries.exit.if.end67_crit_edge
  %cut_size.addr.0 = phi i32 [ %retval.0.i, %leaf_cut_entries.exit.if.end67_crit_edge ], [ %cut_size, %cond.false.if.end67_crit_edge ], [ %cut_size, %set_le_ih_k_offset.exit289.if.end67_crit_edge ], [ %retval.0.i, %if.then.i.i ], [ %retval.0.i, %if.else.i.i ], [ %cut_size, %land.lhs.true.if.end67_crit_edge ], [ %cut_size, %if.then.i.i264 ], [ %cut_size, %if.else.i.i269 ], [ %cut_size, %set_le_ih_k_offset.exit289.thread.if.end67_crit_edge ]
  %109 = xor i32 %cut_item_num, -1
  %sub69 = add i32 %conv, %109
  %ih_item_location70 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub69, i32 3
  %110 = ptrtoint ptr %ih_item_location70 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %ih_item_location70, align 1
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  %conv71 = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cut_item_num)
  %tobool72.not = icmp eq i32 %cut_item_num, 0
  br i1 %tobool72.not, label %cond.false77, label %cond.true73

cond.true73:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location75 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 -1, i32 3
  %113 = ptrtoint ptr %ih_item_location75 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %ih_item_location75, align 1
  %115 = tail call i16 @llvm.bswap.i16(i16 %114)
  %conv76 = zext i16 %115 to i32
  br label %cond.end

cond.false77:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %b_size78 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %b_size78 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %b_size78, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false77, %cond.true73
  %cond = phi i32 [ %conv76, %cond.true73 ], [ %117, %cond.false77 ]
  %118 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_data, align 4
  %add.ptr80 = getelementptr i8, ptr %119, i32 %conv71
  %add.ptr81 = getelementptr i8, ptr %add.ptr80, i32 %cut_size.addr.0
  %120 = add i32 %cut_size.addr.0, %conv71
  %sub85 = sub i32 %cond, %120
  %121 = call ptr @memmove(ptr %add.ptr81, ptr %add.ptr80, i32 %sub85)
  %ih_item_len87 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %122 = ptrtoint ptr %ih_item_len87 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %ih_item_len87, align 1
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %125 = trunc i32 %cut_size.addr.0 to i16
  %conv90 = sub i16 %124, %125
  %126 = tail call i16 @llvm.bswap.i16(i16 %conv90)
  %127 = ptrtoint ptr %ih_item_len87 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %126, ptr %ih_item_len87, align 1
  %128 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp.i.i.i291 = icmp eq i16 %129, 0
  br i1 %cmp.i.i.i291, label %if.then.i.i.i295, label %if.else.i.i.i297

if.then.i.i.i295:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %k_uniqueness.i.i.i293 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %k_uniqueness.i.i.i293 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %k_uniqueness.i.i.i293, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %131)
  %cond.i.i294 = icmp eq i32 %131, -16777217
  br label %is_indirect_le_ih.exit

if.else.i.i.i297:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %u.i.i.i, align 1
  %134 = and i64 %133, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %134)
  %phi.cmp1.i.i296 = icmp eq i64 %134, 16
  br label %is_indirect_le_ih.exit

is_indirect_le_ih.exit:                           ; preds = %if.else.i.i.i297, %if.then.i.i.i295
  %retval.0.in.i.in.i.i298 = phi i1 [ %phi.cmp1.i.i296, %if.else.i.i.i297 ], [ %cond.i.i294, %if.then.i.i.i295 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %tobool97.not = icmp ne i32 %pos_in_item, 0
  %135 = and i1 %tobool97.not, %retval.0.in.i.in.i.i298
  br i1 %135, label %do.body99, label %is_indirect_le_ih.exit.if.end110_crit_edge

is_indirect_le_ih.exit.if.end110_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

do.body99:                                        ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  %u106 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %136 = ptrtoint ptr %u106 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 0, ptr %u106, align 1
  br label %if.end110

if.end110:                                        ; preds = %do.body99, %is_indirect_le_ih.exit.if.end110_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %cut_item_num)
  %cmp111327 = icmp sgt i32 %conv, %cut_item_num
  br i1 %cmp111327, label %if.end110.do.body113_crit_edge, label %if.end110.for.end_crit_edge

if.end110.for.end_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end110.do.body113_crit_edge:                   ; preds = %if.end110
  br label %do.body113

do.body113:                                       ; preds = %do.body113.do.body113_crit_edge, %if.end110.do.body113_crit_edge
  %i.0328 = phi i32 [ %inc, %do.body113.do.body113_crit_edge ], [ %cut_item_num, %if.end110.do.body113_crit_edge ]
  %sub114 = sub i32 %i.0328, %cut_item_num
  %ih_item_location116 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub114, i32 3
  %137 = ptrtoint ptr %ih_item_location116 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %ih_item_location116, align 1
  %139 = tail call i16 @llvm.bswap.i16(i16 %138)
  %conv119 = add i16 %139, %125
  %140 = tail call i16 @llvm.bswap.i16(i16 %conv119)
  %141 = ptrtoint ptr %ih_item_location116 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %ih_item_location116, align 1
  %inc = add nsw i32 %i.0328, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.body113.for.end_crit_edge, label %do.body113.do.body113_crit_edge

do.body113.do.body113_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body113

do.body113.for.end_crit_edge:                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.body113.for.end_crit_edge, %if.end110.for.end_crit_edge
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %142 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %blk_free_space, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %conv127 = add i16 %144, %125
  %145 = tail call i16 @llvm.bswap.i16(i16 %conv127)
  %146 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %blk_free_space, align 2
  %147 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %148, ptr noundef %1, i32 noundef 0) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %149 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bi_parent, align 4
  %tobool129.not = icmp eq ptr %150, null
  br i1 %tobool129.not, label %for.end.if.end151_crit_edge, label %if.then130

for.end.if.end151_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then130:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %b_data132 = getelementptr inbounds %struct.buffer_head, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %b_data132 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %b_data132, align 4
  %add.ptr133 = getelementptr i8, ptr %152, i32 24
  %blk_nr_item136 = getelementptr inbounds %struct.block_head, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %blk_nr_item136 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %blk_nr_item136, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %154)
  %conv137 = zext i16 %155 to i32
  %mul138 = shl nuw nsw i32 %conv137, 4
  %add.ptr139 = getelementptr i8, ptr %add.ptr133, i32 %mul138
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  %156 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bi_position, align 4
  %mul140 = shl i32 %157, 3
  %add.ptr141 = getelementptr i8, ptr %add.ptr139, i32 %mul140
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr141, i32 0, i32 1
  %158 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %dc_size, align 4
  %160 = tail call i16 @llvm.bswap.i16(i16 %159)
  %conv145 = sub i16 %160, %125
  %161 = tail call i16 @llvm.bswap.i16(i16 %conv145)
  %162 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %dc_size, align 4
  %163 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bi, align 4
  %165 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %164, ptr noundef %166, i32 noundef 0) #5
  br label %if.end151

if.end151:                                        ; preds = %if.then130, %for.end.if.end151_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @leaf_insert_into_buf(ptr nocapture noundef readonly %bi, i32 noundef %before, ptr noundef %inserted_item_ih, ptr noundef readonly %inserted_item_body, i32 noundef %zeros_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blk_free_space, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv1 = zext i16 %9 to i32
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %inserted_item_ih, i32 0, i32 2
  %10 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %ih_item_len, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv2 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv2, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp = icmp ugt i32 %add, %conv1
  br i1 %cmp, label %if.then, label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_insert_into_buf, ptr noundef nonnull @.str.8, i32 noundef 921, ptr noundef nonnull @__func__.leaf_insert_into_buf, ptr noundef %1, ptr noundef %inserted_item_ih) #8
  unreachable

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %zeros_number)
  %cmp7 = icmp slt i32 %conv2, %zeros_number
  br i1 %cmp7, label %if.then9, label %do.end14

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_insert_into_buf, ptr noundef nonnull @.str.9, i32 noundef 924, ptr noundef nonnull @__func__.leaf_insert_into_buf, i32 noundef %zeros_number, i32 noundef %conv2) #8
  unreachable

do.end14:                                         ; preds = %do.body4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %before
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %13 = xor i32 %before, -1
  %sub15 = add i32 %conv, %13
  %ih_item_location = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub15, i32 3
  %14 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ih_item_location, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv16 = zext i16 %16 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %18, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %before)
  %tobool17.not = icmp eq i32 %before, 0
  br i1 %tobool17.not, label %cond.false21, label %cond.true18

cond.true18:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location19 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 -1, i32 3
  %19 = ptrtoint ptr %ih_item_location19 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %ih_item_location19, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv20 = zext i16 %21 to i32
  br label %cond.end23

cond.false21:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %b_size22 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %b_size22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size22, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true18
  %cond24 = phi i32 [ %conv20, %cond.true18 ], [ %23, %cond.false21 ]
  %add.ptr26 = getelementptr i8, ptr %3, i32 %cond
  %idx.neg = sub nsw i32 0, %conv2
  %add.ptr29 = getelementptr i8, ptr %add.ptr26, i32 %idx.neg
  %sub32 = sub i32 %cond24, %cond
  %24 = call ptr @memmove(ptr %add.ptr29, ptr %add.ptr26, i32 %sub32)
  %25 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 %cond24
  %27 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ih_item_len, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv36 = zext i16 %29 to i32
  %idx.neg37 = sub nsw i32 0, %conv36
  %add.ptr38 = getelementptr i8, ptr %add.ptr34, i32 %idx.neg37
  %30 = call ptr @memset(ptr %add.ptr38, i32 0, i32 %zeros_number)
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i32 %zeros_number
  %tobool40.not = icmp eq ptr %inserted_item_body, null
  %31 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ih_item_len, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv46 = zext i16 %33 to i32
  %sub47 = sub i32 %conv46, %zeros_number
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  %34 = call ptr @memmove(ptr %add.ptr39, ptr %inserted_item_body, i32 %sub47)
  br label %if.end48

if.else:                                          ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  %35 = call ptr @memset(ptr %add.ptr39, i32 0, i32 %sub47)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then41
  %add.ptr49 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 1
  %sub50 = sub i32 %conv, %before
  %mul = mul i32 %sub50, 24
  %36 = call ptr @memmove(ptr %add.ptr49, ptr %arrayidx.i, i32 %mul)
  %37 = call ptr @memmove(ptr %arrayidx.i, ptr %inserted_item_ih, i32 24)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %before)
  %cmp52.not166 = icmp slt i32 %conv, %before
  br i1 %cmp52.not166, label %if.end48.for.end_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end48.for.body_crit_edge
  %unmoved_loc.0168 = phi i32 [ %sub58, %for.body.for.body_crit_edge ], [ %cond24, %if.end48.for.body_crit_edge ]
  %i.0167 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %before, %if.end48.for.body_crit_edge ]
  %sub54 = sub i32 %i.0167, %before
  %ih_item_len56 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub54, i32 2
  %38 = ptrtoint ptr %ih_item_len56 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %ih_item_len56, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv57 = zext i16 %40 to i32
  %sub58 = sub i32 %unmoved_loc.0168, %conv57
  %conv60 = trunc i32 %sub58 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv60)
  %ih_item_location63 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub54, i32 3
  %42 = ptrtoint ptr %ih_item_location63 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %ih_item_location63, align 1
  %inc = add nsw i32 %i.0167, 1
  %exitcond = icmp eq i32 %i.0167, %conv
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  %43 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %blk_nr_item, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %add68 = add i16 %45, 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %add68)
  %47 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %blk_nr_item, align 2
  %48 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ih_item_len, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %add73.neg = add i16 %9, -24
  %sub74 = sub i16 %add73.neg, %50
  %51 = tail call i16 @llvm.bswap.i16(i16 %sub74)
  %52 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %blk_free_space, align 2
  %53 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %54, ptr noundef %1, i32 noundef 1) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %55 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bi_parent, align 4
  %tobool77.not = icmp eq ptr %56, null
  br i1 %tobool77.not, label %for.end.if.end102_crit_edge, label %if.then78

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %b_data80 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %b_data80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data80, align 4
  %add.ptr81 = getelementptr i8, ptr %58, i32 24
  %blk_nr_item84 = getelementptr inbounds %struct.block_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %blk_nr_item84 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %blk_nr_item84, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv85 = zext i16 %61 to i32
  %mul86 = shl nuw nsw i32 %conv85, 4
  %add.ptr87 = getelementptr i8, ptr %add.ptr81, i32 %mul86
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  %62 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bi_position, align 4
  %mul88 = shl i32 %63, 3
  %add.ptr89 = getelementptr i8, ptr %add.ptr87, i32 %mul88
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr89, i32 0, i32 1
  %64 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dc_size, align 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %67 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %ih_item_len, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %add94 = add i16 %66, 24
  %add95 = add i16 %add94, %69
  %70 = tail call i16 @llvm.bswap.i16(i16 %add95)
  %71 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %dc_size, align 4
  %72 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bi, align 4
  %74 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %73, ptr noundef %75, i32 noundef 0) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then78, %for.end.if.end102_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @leaf_paste_in_buffer(ptr noundef readonly %bi, i32 noundef %affected_item_num, i32 noundef %pos_in_item, i32 noundef %paste_size, ptr noundef readonly %body, i32 noundef %zeros_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blk_free_space, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv1 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %paste_size)
  %cmp = icmp slt i32 %conv1, %paste_size
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_paste_in_buffer, ptr noundef nonnull @.str.10, i32 noundef 996, ptr noundef nonnull @__func__.leaf_paste_in_buffer, i32 noundef %paste_size, i32 noundef %conv1) #8
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %paste_size, i32 %zeros_number)
  %cmp3 = icmp slt i32 %paste_size, %zeros_number
  br i1 %cmp3, label %if.then5, label %if.end10

if.then5:                                         ; preds = %do.end
  %tobool.not = icmp eq ptr %bi, null
  br i1 %tobool.not, label %if.then5.if.end9_crit_edge, label %land.lhs.true

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then5
  %10 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb_sb, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %if.then5.if.end9_crit_edge
  %sb.0 = phi ptr [ %13, %if.then7 ], [ null, %land.lhs.true.if.end9_crit_edge ], [ null, %if.then5.if.end9_crit_edge ]
  tail call void @print_cur_tb(ptr noundef nonnull @.str.11) #5
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb.0, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.leaf_paste_in_buffer, ptr noundef nonnull @.str.13, i32 noundef %zeros_number, i32 noundef %paste_size) #8
  unreachable

if.end10:                                         ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %affected_item_num
  %14 = xor i32 %affected_item_num, -1
  %sub11 = add i32 %conv, %14
  %ih_item_location = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub11, i32 3
  %15 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %ih_item_location, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv12 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %affected_item_num)
  %tobool13.not = icmp eq i32 %affected_item_num, 0
  br i1 %tobool13.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location14 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 -1, i32 3
  %18 = ptrtoint ptr %ih_item_location14 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %ih_item_location14, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv15 = zext i16 %20 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %22, %cond.false ]
  %add.ptr17 = getelementptr i8, ptr %3, i32 %conv12
  %idx.neg = sub i32 0, %paste_size
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 %idx.neg
  %sub21 = sub i32 %cond, %conv12
  %23 = call ptr @memmove(ptr %add.ptr18, ptr %add.ptr17, i32 %sub21)
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %affected_item_num)
  %cmp22191 = icmp sgt i32 %conv, %affected_item_num
  br i1 %cmp22191, label %do.body24.lr.ph, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body24.lr.ph:                                  ; preds = %cond.end
  %24 = trunc i32 %paste_size to i16
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %do.body24.lr.ph
  %i.0192 = phi i32 [ %affected_item_num, %do.body24.lr.ph ], [ %inc, %do.body24.do.body24_crit_edge ]
  %sub25 = sub i32 %i.0192, %affected_item_num
  %ih_item_location27 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub25, i32 3
  %25 = ptrtoint ptr %ih_item_location27 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %ih_item_location27, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv30 = sub i16 %27, %24
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %29 = ptrtoint ptr %ih_item_location27 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %ih_item_location27, align 1
  %inc = add nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.body24.for.end_crit_edge, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.body24.for.end_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.body24.for.end_crit_edge, %cond.end.for.end_crit_edge
  %tobool36.not = icmp eq ptr %body, null
  br i1 %tobool36.not, label %if.else75, label %if.then37

if.then37:                                        ; preds = %for.end
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %30 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i.i = icmp eq i16 %31, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then37
  %32 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %u.i.i.i, align 1
  %34 = and i64 %33, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %34)
  %phi.cmp1.i.i = icmp eq i64 %34, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.do.body81_crit_edge, label %if.else.i.i.i.if.then40_crit_edge

if.else.i.i.i.if.then40_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.else.i.i.i.do.body81_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

is_direntry_le_ih.exit:                           ; preds = %if.then37
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %36)
  %cond.i.i = icmp eq i32 %36, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.do.body81_crit_edge, label %is_direntry_le_ih.exit.if.then40_crit_edge

is_direntry_le_ih.exit.if.then40_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

is_direntry_le_ih.exit.do.body81_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body81

if.then40:                                        ; preds = %is_direntry_le_ih.exit.if.then40_crit_edge, %if.else.i.i.i.if.then40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos_in_item)
  %tobool41.not = icmp eq i32 %pos_in_item, 0
  %37 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data, align 4
  br i1 %tobool41.not, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location44 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %39 = ptrtoint ptr %ih_item_location44 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %ih_item_location44, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv45 = zext i16 %41 to i32
  %add.ptr46 = getelementptr i8, ptr %38, i32 %conv45
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 %paste_size
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %42 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %ih_item_len, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv52 = zext i16 %44 to i32
  %45 = call ptr @memmove(ptr %add.ptr47, ptr %add.ptr46, i32 %conv52)
  %46 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data, align 4
  %48 = ptrtoint ptr %ih_item_location44 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ih_item_location44, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv55 = zext i16 %50 to i32
  %add.ptr56 = getelementptr i8, ptr %47, i32 %conv55
  %51 = call ptr @memset(ptr %add.ptr56, i32 0, i32 %zeros_number)
  %52 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data, align 4
  %54 = ptrtoint ptr %ih_item_location44 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %ih_item_location44, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv59 = zext i16 %56 to i32
  %add.ptr60 = getelementptr i8, ptr %53, i32 %conv59
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 %zeros_number
  %sub62 = sub i32 %paste_size, %zeros_number
  %57 = call ptr @memcpy(ptr %add.ptr61, ptr %body, i32 %sub62)
  br label %do.body81

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr64 = getelementptr i8, ptr %38, i32 %cond
  %add.ptr66 = getelementptr i8, ptr %add.ptr64, i32 %idx.neg
  %58 = call ptr @memset(ptr %add.ptr66, i32 0, i32 %zeros_number)
  %59 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data, align 4
  %add.ptr68 = getelementptr i8, ptr %60, i32 %cond
  %add.ptr70 = getelementptr i8, ptr %add.ptr68, i32 %idx.neg
  %add.ptr71 = getelementptr i8, ptr %add.ptr70, i32 %zeros_number
  %sub72 = sub i32 %paste_size, %zeros_number
  %61 = call ptr @memcpy(ptr %add.ptr71, ptr %body, i32 %sub72)
  br label %do.body81

if.else75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data, align 4
  %add.ptr77 = getelementptr i8, ptr %63, i32 %cond
  %add.ptr79 = getelementptr i8, ptr %add.ptr77, i32 %idx.neg
  %64 = call ptr @memset(ptr %add.ptr79, i32 0, i32 %paste_size)
  br label %do.body81

do.body81:                                        ; preds = %if.else75, %if.else, %if.then42, %is_direntry_le_ih.exit.do.body81_crit_edge, %if.else.i.i.i.do.body81_crit_edge
  %ih_item_len82 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %65 = ptrtoint ptr %ih_item_len82 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %ih_item_len82, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %68 = trunc i32 %paste_size to i16
  %conv84 = add i16 %67, %68
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv84)
  %70 = ptrtoint ptr %ih_item_len82 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %ih_item_len82, align 1
  %conv89 = sub i16 %9, %68
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv89)
  %72 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %blk_free_space, align 2
  %73 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %74, ptr noundef %1, i32 noundef 0) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %75 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_parent, align 4
  %tobool92.not = icmp eq ptr %76, null
  br i1 %tobool92.not, label %do.body81.if.end113_crit_edge, label %if.then93

do.body81.if.end113_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %b_data95 = getelementptr inbounds %struct.buffer_head, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %b_data95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data95, align 4
  %add.ptr96 = getelementptr i8, ptr %78, i32 24
  %blk_nr_item99 = getelementptr inbounds %struct.block_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %blk_nr_item99 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %blk_nr_item99, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %conv100 = zext i16 %81 to i32
  %mul = shl nuw nsw i32 %conv100, 4
  %add.ptr101 = getelementptr i8, ptr %add.ptr96, i32 %mul
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  %82 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_position, align 4
  %mul102 = shl i32 %83, 3
  %add.ptr103 = getelementptr i8, ptr %add.ptr101, i32 %mul102
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr103, i32 0, i32 1
  %84 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %dc_size, align 4
  %86 = tail call i16 @llvm.bswap.i16(i16 %85)
  %conv107 = add i16 %86, %68
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv107)
  %88 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %dc_size, align 4
  %89 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bi, align 4
  %91 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %90, ptr noundef %92, i32 noundef 0) #5
  br label %if.end113

if.end113:                                        ; preds = %if.then93, %do.body81.if.end113_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @leaf_paste_entries(ptr noundef readonly %bi, i32 noundef %item_num, i32 noundef %before, i32 noundef %new_entry_count, ptr nocapture noundef readonly %new_dehs, ptr nocapture noundef readonly %records, i32 noundef %paste_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_entry_count)
  %cmp = icmp eq i32 %new_entry_count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %item_num
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %4 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i.i.i = icmp eq i16 %5, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %6 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %u.i.i.i, align 1
  %8 = and i64 %7, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %8)
  %phi.cmp1.i.i = icmp eq i64 %8, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.do.body4_crit_edge, label %if.else.i.i.i.if.then2_crit_edge

if.else.i.i.i.if.then2_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.else.i.i.i.do.body4_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

is_direntry_le_ih.exit:                           ; preds = %if.end
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %10)
  %cond.i.i = icmp eq i32 %10, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.do.body4_crit_edge, label %is_direntry_le_ih.exit.if.then2_crit_edge

is_direntry_le_ih.exit.if.then2_crit_edge:        ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

is_direntry_le_ih.exit.do.body4_crit_edge:        ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

if.then2:                                         ; preds = %is_direntry_le_ih.exit.if.then2_crit_edge, %if.else.i.i.i.if.then2_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_paste_entries, ptr noundef nonnull @.str.18, i32 noundef 1337, ptr noundef nonnull @__func__.leaf_paste_entries) #8
  unreachable

do.body4:                                         ; preds = %is_direntry_le_ih.exit.do.body4_crit_edge, %if.else.i.i.i.do.body4_crit_edge
  %u = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %u, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %before)
  %cmp5 = icmp slt i32 %conv, %before
  br i1 %cmp5, label %if.then7, label %do.end12

if.then7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_paste_entries, ptr noundef nonnull @.str.19, i32 noundef 1340, ptr noundef nonnull @__func__.leaf_paste_entries, i32 noundef %conv, i32 noundef %before) #8
  unreachable

do.end12:                                         ; preds = %do.body4
  %ih_item_location = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %14 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ih_item_location, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv13 = zext i16 %16 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %before)
  %tobool15.not = icmp eq i32 %before, 0
  br i1 %tobool15.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %before, -1
  %deh_location = getelementptr %struct.reiserfs_de_head, ptr %add.ptr, i32 %sub, i32 3
  %17 = ptrtoint ptr %deh_location to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %deh_location, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv16 = zext i16 %19 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %20 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %ih_item_len, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv17 = zext i16 %22 to i32
  %sub18 = sub i32 %conv17, %paste_size
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %sub18, %cond.false ]
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %before)
  %cmp23.not270.not = icmp sgt i32 %conv, %before
  br i1 %cmp23.not270.not, label %for.body.lr.ph, label %cond.end.for.cond31.preheader_crit_edge

cond.end.for.cond31.preheader_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond31.preheader

for.body.lr.ph:                                   ; preds = %cond.end
  %i.0269 = add nsw i32 %conv, -1
  %new_entry_count.tr = trunc i32 %new_entry_count to i16
  %23 = shl i16 %new_entry_count.tr, 4
  br label %for.body

for.cond31.preheader:                             ; preds = %for.body.for.cond31.preheader_crit_edge, %cond.end.for.cond31.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %before)
  %cmp32272 = icmp sgt i32 %before, 0
  br i1 %cmp32272, label %for.body34.lr.ph, label %for.cond31.preheader.do.body44_crit_edge

for.cond31.preheader.do.body44_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %24 = trunc i32 %paste_size to i16
  br label %for.body34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0271 = phi i32 [ %i.0269, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %deh_location26 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr, i32 %i.0271, i32 3
  %25 = ptrtoint ptr %deh_location26 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %deh_location26, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv28 = add i16 %27, %23
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv28)
  %29 = ptrtoint ptr %deh_location26 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %deh_location26, align 1
  %i.0 = add i32 %i.0271, -1
  %cmp23.not = icmp slt i32 %i.0, %before
  br i1 %cmp23.not, label %for.body.for.cond31.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond31.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond31.preheader

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %i.1273 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc, %for.body34.for.body34_crit_edge ]
  %deh_location36 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr, i32 %i.1273, i32 3
  %30 = ptrtoint ptr %deh_location36 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %deh_location36, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv39 = add i16 %32, %24
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv39)
  %34 = ptrtoint ptr %deh_location36 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %deh_location36, align 1
  %inc = add nuw nsw i32 %i.1273, 1
  %exitcond.not = icmp eq i32 %inc, %before
  br i1 %exitcond.not, label %for.body34.do.body44_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.body34.do.body44_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

do.body44:                                        ; preds = %for.body34.do.body44_crit_edge, %for.cond31.preheader.do.body44_crit_edge
  %35 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %u, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = trunc i32 %new_entry_count to i16
  %conv48 = add i16 %37, %38
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %40 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %u, align 1
  %add.ptr52 = getelementptr i8, ptr %add.ptr19, i32 %paste_size
  %ih_item_len53 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %41 = ptrtoint ptr %ih_item_len53 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %ih_item_len53, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv54 = zext i16 %43 to i32
  %sub55 = sub i32 %conv54, %paste_size
  %add.ptr56 = getelementptr i8, ptr %add.ptr, i32 %sub55
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr56 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %44 = call ptr @memmove(ptr %add.ptr52, ptr %add.ptr19, i32 %sub.ptr.sub)
  %mul57 = shl i32 %new_entry_count, 4
  %add.ptr58 = getelementptr i8, ptr %add.ptr19, i32 %mul57
  %sub60 = sub i32 %paste_size, %mul57
  %45 = call ptr @memcpy(ptr %add.ptr58, ptr %records, i32 %sub60)
  %add.ptr61 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr, i32 %before
  %add.ptr62 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr61, i32 %new_entry_count
  %sub.ptr.rhs.cast64 = ptrtoint ptr %add.ptr61 to i32
  %sub.ptr.sub65 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast64
  %46 = call ptr @memmove(ptr %add.ptr62, ptr %add.ptr61, i32 %sub.ptr.sub65)
  %47 = call ptr @memcpy(ptr %add.ptr61, ptr %new_dehs, i32 %mul57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_entry_count)
  %cmp68274 = icmp sgt i32 %new_entry_count, 0
  br i1 %cmp68274, label %for.body70.lr.ph, label %do.body44.for.end91_crit_edge

do.body44.for.end91_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end91

for.body70.lr.ph:                                 ; preds = %do.body44
  %sub74 = add nsw i32 %new_entry_count, -1
  %deh_location76 = getelementptr %struct.reiserfs_de_head, ptr %new_dehs, i32 %sub74, i32 3
  %sub.ptr.rhs.cast83 = ptrtoint ptr %add.ptr to i32
  %add.ptr79 = getelementptr i8, ptr %add.ptr19, i32 %mul57
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.lr.ph
  %i.2275 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc90, %for.body70.for.body70_crit_edge ]
  %arrayidx71 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr61, i32 %i.2275
  %deh_location72 = getelementptr inbounds %struct.reiserfs_de_head, ptr %arrayidx71, i32 0, i32 3
  %48 = ptrtoint ptr %deh_location72 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %deh_location72, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %51 = ptrtoint ptr %deh_location76 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %deh_location76, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv77 = zext i16 %53 to i32
  %sub78 = sub nsw i32 0, %conv77
  %add.ptr81 = getelementptr i8, ptr %add.ptr79, i32 %sub78
  %sub.ptr.lhs.cast82 = ptrtoint ptr %add.ptr81 to i32
  %sub.ptr.sub84 = sub i32 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %54 = trunc i32 %sub.ptr.sub84 to i16
  %conv86 = add i16 %50, %54
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv86)
  %56 = ptrtoint ptr %deh_location72 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %deh_location72, align 1
  %inc90 = add nuw nsw i32 %i.2275, 1
  %exitcond282.not = icmp eq i32 %inc90, %new_entry_count
  br i1 %exitcond282.not, label %for.body70.for.end91_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

for.body70.for.end91_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end91

for.end91:                                        ; preds = %for.body70.for.end91_crit_edge, %do.body44.for.end91_crit_edge
  br i1 %tobool15.not, label %if.then93, label %for.end91.if.end95_crit_edge

for.end91.if.end95_crit_edge:                     ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then93:                                        ; preds = %for.end91
  %57 = ptrtoint ptr %new_dehs to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %new_dehs, align 1
  %59 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.i.i = icmp eq i16 %60, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %58, ptr %u.i.i.i, align 1
  br label %if.end95

if.else.i.i:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %58)
  %conv94 = zext i32 %62 to i64
  %63 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %u.i.i.i, align 1
  %and1.i.i.i = and i64 %64, 240
  %65 = tail call i64 @llvm.bswap.i64(i64 %conv94) #5
  %or.i.i.i = or i64 %and1.i.i.i, %65
  %66 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %or.i.i.i, ptr %u.i.i.i, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.else.i.i, %if.then.i.i, %for.end91.if.end95_crit_edge
  %67 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data.i.i, align 4
  %69 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %ih_item_location, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #5
  %conv.i258 = zext i16 %71 to i32
  %add.ptr.i259 = getelementptr i8, ptr %68, i32 %conv.i258
  %72 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp100277.not = icmp eq i16 %73, 0
  br i1 %cmp100277.not, label %if.end95.cleanup_crit_edge, label %for.body102.lr.ph

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body102.lr.ph:                                ; preds = %if.end95
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %tobool.not.i = icmp eq ptr %bi, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %74)
  %cmp106.peel = icmp ugt i16 %74, 1
  br i1 %cmp106.peel, label %if.end137.peel, label %for.body102.lr.ph.for.inc151.peel_crit_edge

for.body102.lr.ph.for.inc151.peel_crit_edge:      ; preds = %for.body102.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc151.peel

if.end137.peel:                                   ; preds = %for.body102.lr.ph
  %deh_location111.peel = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 1, i32 3
  %75 = ptrtoint ptr %deh_location111.peel to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %deh_location111.peel, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool138.not.peel = icmp eq i16 %76, 0
  br i1 %tobool138.not.peel, label %if.end137.peel.for.inc151.peel_crit_edge, label %land.lhs.true139.peel

if.end137.peel.for.inc151.peel_crit_edge:         ; preds = %if.end137.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc151.peel

land.lhs.true139.peel:                            ; preds = %if.end137.peel
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %deh_location141.peel = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 0, i32 3
  %78 = ptrtoint ptr %deh_location141.peel to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %deh_location141.peel, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %80)
  %cmp143.not.peel = icmp ult i16 %77, %80
  br i1 %cmp143.not.peel, label %land.lhs.true139.peel.for.inc151.peel_crit_edge, label %if.then145.peel

land.lhs.true139.peel.for.inc151.peel_crit_edge:  ; preds = %land.lhs.true139.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc151.peel

if.then145.peel:                                  ; preds = %land.lhs.true139.peel
  br i1 %tobool.not.i, label %if.then145.peel.sb_from_bi.exit266.peel_crit_edge, label %cond.true.i262.peel

if.then145.peel.sb_from_bi.exit266.peel_crit_edge: ; preds = %if.then145.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit266.peel

cond.true.i262.peel:                              ; preds = %if.then145.peel
  %81 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bi, align 4
  %tobool.not.i.i261.peel = icmp eq ptr %82, null
  br i1 %tobool.not.i.i261.peel, label %cond.true.i262.peel.sb_from_bi.exit266.peel_crit_edge, label %cond.true.i.i264.peel

cond.true.i262.peel.sb_from_bi.exit266.peel_crit_edge: ; preds = %cond.true.i262.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit266.peel

cond.true.i.i264.peel:                            ; preds = %cond.true.i262.peel
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb.i.i263.peel = getelementptr inbounds %struct.tree_balance, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %tb_sb.i.i263.peel to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tb_sb.i.i263.peel, align 8
  br label %sb_from_bi.exit266.peel

sb_from_bi.exit266.peel:                          ; preds = %cond.true.i.i264.peel, %cond.true.i262.peel.sb_from_bi.exit266.peel_crit_edge, %if.then145.peel.sb_from_bi.exit266.peel_crit_edge
  %cond.i265.peel = phi ptr [ null, %if.then145.peel.sb_from_bi.exit266.peel_crit_edge ], [ %84, %cond.true.i.i264.peel ], [ null, %cond.true.i262.peel.sb_from_bi.exit266.peel_crit_edge ]
  %add.ptr149.peel = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 1
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %cond.i265.peel, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.leaf_paste_entries, ptr noundef nonnull @.str.23, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef %add.ptr.i259, ptr noundef %add.ptr149.peel) #5
  br label %for.inc151.peel

for.inc151.peel:                                  ; preds = %sb_from_bi.exit266.peel, %land.lhs.true139.peel.for.inc151.peel_crit_edge, %if.end137.peel.for.inc151.peel_crit_edge, %for.body102.lr.ph.for.inc151.peel_crit_edge
  %85 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %u, align 1
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %87)
  %cmp100.peel = icmp ugt i16 %87, 1
  br i1 %cmp100.peel, label %for.body102.peel.next, label %for.inc151.peel.cleanup_crit_edge

for.inc151.peel.cleanup_crit_edge:                ; preds = %for.inc151.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body102.peel.next:                            ; preds = %for.inc151.peel
  %conv99.peel = zext i16 %87 to i32
  br label %for.body102

for.body102:                                      ; preds = %for.inc151.for.body102_crit_edge, %for.body102.peel.next
  %conv99281 = phi i32 [ %conv99.peel, %for.body102.peel.next ], [ %conv99, %for.inc151.for.body102_crit_edge ]
  %i.3278 = phi i32 [ 1, %for.body102.peel.next ], [ %inc152, %for.inc151.for.body102_crit_edge ]
  %sub105 = add nsw i32 %conv99281, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3278, i32 %sub105)
  %cmp106 = icmp slt i32 %i.3278, %sub105
  br i1 %cmp106, label %cond.true108, label %for.body102.cond.end124_crit_edge

for.body102.cond.end124_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end124

cond.true108:                                     ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #7
  %add109 = add nuw nsw i32 %i.3278, 1
  %deh_location111 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %add109, i32 3
  %88 = ptrtoint ptr %deh_location111 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %deh_location111, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %conv112 = zext i16 %90 to i32
  br label %cond.end124

cond.end124:                                      ; preds = %cond.true108, %for.body102.cond.end124_crit_edge
  %cond115 = phi i32 [ %conv112, %cond.true108 ], [ 0, %for.body102.cond.end124_crit_edge ]
  %sub119 = add nsw i32 %i.3278, -1
  %deh_location121 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %sub119, i32 3
  %91 = ptrtoint ptr %deh_location121 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %deh_location121, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool126.not = icmp eq i16 %92, 0
  br i1 %tobool126.not, label %cond.end124.if.end137_crit_edge, label %land.lhs.true

cond.end124.if.end137_crit_edge:                  ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

land.lhs.true:                                    ; preds = %cond.end124
  %93 = tail call i16 @llvm.bswap.i16(i16 %92)
  %deh_location128 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %i.3278, i32 3
  %94 = ptrtoint ptr %deh_location128 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %deh_location128, align 1
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %96)
  %cmp130.not = icmp ugt i16 %93, %96
  br i1 %cmp130.not, label %land.lhs.true.if.end137_crit_edge, label %if.then132

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.then132:                                       ; preds = %land.lhs.true
  %arrayidx127 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %i.3278
  br i1 %tobool.not.i, label %if.then132.sb_from_bi.exit_crit_edge, label %cond.true.i

if.then132.sb_from_bi.exit_crit_edge:             ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit

cond.true.i:                                      ; preds = %if.then132
  %97 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bi, align 4
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %cond.true.i.sb_from_bi.exit_crit_edge, label %cond.true.i.i

cond.true.i.sb_from_bi.exit_crit_edge:            ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit

cond.true.i.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb.i.i = getelementptr inbounds %struct.tree_balance, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %tb_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tb_sb.i.i, align 8
  br label %sb_from_bi.exit

sb_from_bi.exit:                                  ; preds = %cond.true.i.i, %cond.true.i.sb_from_bi.exit_crit_edge, %if.then132.sb_from_bi.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then132.sb_from_bi.exit_crit_edge ], [ %100, %cond.true.i.i ], [ null, %cond.true.i.sb_from_bi.exit_crit_edge ]
  %add.ptr135 = getelementptr %struct.reiserfs_de_head, ptr %arrayidx127, i32 -1
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %cond.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.leaf_paste_entries, ptr noundef nonnull @.str.21, ptr noundef %arrayidx.i, ptr noundef %add.ptr135, i32 noundef %i.3278, ptr noundef %arrayidx127) #5
  br label %if.end137

if.end137:                                        ; preds = %sb_from_bi.exit, %land.lhs.true.if.end137_crit_edge, %cond.end124.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond115)
  %tobool138.not = icmp eq i32 %cond115, 0
  br i1 %tobool138.not, label %if.end137.for.inc151_crit_edge, label %land.lhs.true139

if.end137.for.inc151_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc151

land.lhs.true139:                                 ; preds = %if.end137
  %deh_location141 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %i.3278, i32 3
  %101 = ptrtoint ptr %deh_location141 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %deh_location141, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv142 = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond115, i32 %conv142)
  %cmp143.not = icmp ult i32 %cond115, %conv142
  br i1 %cmp143.not, label %land.lhs.true139.for.inc151_crit_edge, label %if.then145

land.lhs.true139.for.inc151_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc151

if.then145:                                       ; preds = %land.lhs.true139
  %arrayidx140 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i259, i32 %i.3278
  br i1 %tobool.not.i, label %if.then145.sb_from_bi.exit266_crit_edge, label %cond.true.i262

if.then145.sb_from_bi.exit266_crit_edge:          ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit266

cond.true.i262:                                   ; preds = %if.then145
  %104 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bi, align 4
  %tobool.not.i.i261 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i261, label %cond.true.i262.sb_from_bi.exit266_crit_edge, label %cond.true.i.i264

cond.true.i262.sb_from_bi.exit266_crit_edge:      ; preds = %cond.true.i262
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit266

cond.true.i.i264:                                 ; preds = %cond.true.i262
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb.i.i263 = getelementptr inbounds %struct.tree_balance, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %tb_sb.i.i263 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tb_sb.i.i263, align 8
  br label %sb_from_bi.exit266

sb_from_bi.exit266:                               ; preds = %cond.true.i.i264, %cond.true.i262.sb_from_bi.exit266_crit_edge, %if.then145.sb_from_bi.exit266_crit_edge
  %cond.i265 = phi ptr [ null, %if.then145.sb_from_bi.exit266_crit_edge ], [ %107, %cond.true.i.i264 ], [ null, %cond.true.i262.sb_from_bi.exit266_crit_edge ]
  %add.ptr149 = getelementptr %struct.reiserfs_de_head, ptr %arrayidx140, i32 1
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %cond.i265, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.leaf_paste_entries, ptr noundef nonnull @.str.23, ptr noundef %arrayidx.i, i32 noundef %i.3278, ptr noundef %arrayidx140, ptr noundef %add.ptr149) #5
  br label %for.inc151

for.inc151:                                       ; preds = %sb_from_bi.exit266, %land.lhs.true139.for.inc151_crit_edge, %if.end137.for.inc151_crit_edge
  %inc152 = add nuw nsw i32 %i.3278, 1
  %108 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %u, align 1
  %110 = tail call i16 @llvm.bswap.i16(i16 %109)
  %conv99 = zext i16 %110 to i32
  %cmp100 = icmp ult i32 %inc152, %conv99
  br i1 %cmp100, label %for.inc151.for.body102_crit_edge, label %for.inc151.cleanup_crit_edge, !llvm.loop !132

for.inc151.cleanup_crit_edge:                     ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc151.for.body102_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body102

cleanup:                                          ; preds = %for.inc151.cleanup_crit_edge, %for.inc151.peel.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_left_neighbor_position(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_right_neighbor_position(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @leaf_copy_boundary_item(ptr noundef %dest_bi, ptr nocapture noundef readonly %src, i32 noundef %last_first, i32 noundef %bytes_or_entries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %blk_nr_item, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp = icmp eq i32 %last_first, 0
  br i1 %cmp, label %if.then, label %if.end94

if.then:                                          ; preds = %entry
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 24
  %sub = add nsw i32 %conv, -1
  %add.ptr.i.i326 = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i326, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %u.i = getelementptr i8, ptr %8, i32 32
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %u.i, align 1
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 4
  %conv1.i.i = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %13 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %13)
  %switch9.i = icmp ult i16 %13, -3
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %switch.i = select i1 %not.cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false
  %k_uniqueness.i = getelementptr i8, ptr %8, i32 36
  %14 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %k_uniqueness.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %16, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %narrow.i = select i1 %cmp.i.i, i32 %conv1.i.i, i32 15
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %if.else.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i32 [ %narrow.i, %if.else.i ], [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ %16, %if.then.i.le_key_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %is_left_mergeable = getelementptr inbounds %struct.item_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %is_left_mergeable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %is_left_mergeable, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 4
  %22 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size, align 8
  %call7 = tail call i32 %21(ptr noundef %add.ptr.i.i, i32 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %le_key_k_type.exit.cleanup_crit_edge, label %do.body

le_key_k_type.exit.cleanup_crit_edge:             ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %le_key_k_type.exit
  %ih_item_len = getelementptr i8, ptr %8, i32 42
  %24 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %ih_item_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool10.not = icmp eq i16 %25, 0
  br i1 %tobool10.not, label %if.then11, label %do.end

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.30, i32 noundef 162, ptr noundef nonnull @__func__.leaf_copy_boundary_item) #8
  unreachable

do.end:                                           ; preds = %do.body
  %ih_version.i = getelementptr i8, ptr %8, i32 46
  %26 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.i.i = icmp eq i16 %27, 0
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %28 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %u.i, align 1
  %30 = and i64 %29, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %30)
  %phi.cmp1.i.i = icmp eq i64 %30, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then15_crit_edge, label %if.else.i.i.i.if.end21_crit_edge

if.else.i.i.i.if.end21_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else.i.i.i.if.then15_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

is_direntry_le_ih.exit:                           ; preds = %do.end
  %k_uniqueness.i.i.i = getelementptr i8, ptr %8, i32 36
  %31 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %32)
  %cond.i.i = icmp eq i32 %32, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.if.then15_crit_edge, label %is_direntry_le_ih.exit.if.end21_crit_edge

is_direntry_le_ih.exit.if.end21_crit_edge:        ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

is_direntry_le_ih.exit.if.then15_crit_edge:       ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %is_direntry_le_ih.exit.if.then15_crit_edge, %if.else.i.i.i.if.then15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bytes_or_entries)
  %cmp16 = icmp eq i32 %bytes_or_entries, -1
  br i1 %cmp16, label %if.then18, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %u = getelementptr i8, ptr %8, i32 40
  %33 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %u, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv19 = zext i16 %35 to i32
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  %bytes_or_entries.addr.0 = phi i32 [ %conv19, %if.then18 ], [ %bytes_or_entries, %if.then15.if.end20_crit_edge ]
  tail call fastcc void @leaf_copy_dir_entries(ptr noundef %dest_bi, ptr noundef %src, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %bytes_or_entries.addr.0)
  br label %cleanup

if.end21:                                         ; preds = %is_direntry_le_ih.exit.if.end21_crit_edge, %if.else.i.i.i.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bytes_or_entries)
  %cmp22 = icmp eq i32 %bytes_or_entries, -1
  %36 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv26 = zext i16 %36 to i32
  br i1 %cmp22, label %if.end21.if.end44_crit_edge, label %if.else

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %bytes_or_entries)
  %cmp29 = icmp eq i32 %conv26, %bytes_or_entries
  br i1 %cmp29, label %land.lhs.true, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.else
  br i1 %cmp.i.i.i, label %is_indirect_le_ih.exit.thread, label %is_indirect_le_ih.exit

is_indirect_le_ih.exit:                           ; preds = %land.lhs.true
  %37 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %u.i, align 1
  %39 = and i64 %38, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %39)
  %phi.cmp1.i.i336 = icmp ne i64 %39, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %27)
  %cmp35 = icmp eq i16 %27, 256
  %or.cond = select i1 %phi.cmp1.i.i336, i1 true, i1 %cmp35
  br i1 %or.cond, label %is_indirect_le_ih.exit.if.end44_crit_edge, label %is_indirect_le_ih.exit.cond.false_crit_edge

is_indirect_le_ih.exit.cond.false_crit_edge:      ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

is_indirect_le_ih.exit.if.end44_crit_edge:        ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

is_indirect_le_ih.exit.thread:                    ; preds = %land.lhs.true
  %k_uniqueness.i.i.i333 = getelementptr i8, ptr %8, i32 36
  %40 = ptrtoint ptr %k_uniqueness.i.i.i333 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %k_uniqueness.i.i.i333, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %41)
  %cond.i.i334.not = icmp eq i32 %41, -16777217
  br i1 %cond.i.i334.not, label %is_indirect_le_ih.exit.thread.cond.false_crit_edge, label %is_indirect_le_ih.exit.thread.if.end44_crit_edge

is_indirect_le_ih.exit.thread.if.end44_crit_edge: ; preds = %is_indirect_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

is_indirect_le_ih.exit.thread.cond.false_crit_edge: ; preds = %is_indirect_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %is_indirect_le_ih.exit.thread.cond.false_crit_edge, %is_indirect_le_ih.exit.cond.false_crit_edge
  %u37 = getelementptr i8, ptr %8, i32 40
  %42 = ptrtoint ptr %u37 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %u37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool39.not = icmp eq i16 %43, 0
  br i1 %tobool39.not, label %cond.false.if.end44_crit_edge, label %if.then40

cond.false.if.end44_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then40:                                        ; preds = %cond.false
  %tobool.not.i = icmp eq ptr %dest_bi, null
  br i1 %tobool.not.i, label %if.then40.sb_from_bi.exit_crit_edge, label %cond.true.i

if.then40.sb_from_bi.exit_crit_edge:              ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit

cond.true.i:                                      ; preds = %if.then40
  %44 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dest_bi, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %cond.true.i.sb_from_bi.exit_crit_edge, label %cond.true.i.i

cond.true.i.sb_from_bi.exit_crit_edge:            ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sb_from_bi.exit

cond.true.i.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb.i.i = getelementptr inbounds %struct.tree_balance, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %tb_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tb_sb.i.i, align 8
  br label %sb_from_bi.exit

sb_from_bi.exit:                                  ; preds = %cond.true.i.i, %cond.true.i.sb_from_bi.exit_crit_edge, %if.then40.sb_from_bi.exit_crit_edge
  %cond.i = phi ptr [ null, %if.then40.sb_from_bi.exit_crit_edge ], [ %47, %cond.true.i.i ], [ null, %cond.true.i.sb_from_bi.exit_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %cond.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.32, ptr noundef %add.ptr.i.i) #8
  unreachable

if.end44:                                         ; preds = %cond.false.if.end44_crit_edge, %is_indirect_le_ih.exit.thread.if.end44_crit_edge, %is_indirect_le_ih.exit.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.end21.if.end44_crit_edge
  %bytes_or_entries.addr.1 = phi i32 [ %bytes_or_entries, %cond.false.if.end44_crit_edge ], [ %bytes_or_entries, %is_indirect_le_ih.exit.if.end44_crit_edge ], [ %bytes_or_entries, %if.else.if.end44_crit_edge ], [ %bytes_or_entries, %is_indirect_le_ih.exit.thread.if.end44_crit_edge ], [ %conv26, %if.end21.if.end44_crit_edge ]
  %ih_item_len46 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %48 = ptrtoint ptr %ih_item_len46 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ih_item_len46, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv47 = zext i16 %50 to i32
  %51 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i.i, align 4
  %ih_item_location.i = getelementptr i8, ptr %8, i32 44
  %53 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %ih_item_location.i, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #5
  %conv.i = zext i16 %55 to i32
  %add.ptr.i = getelementptr i8, ptr %52, i32 %conv.i
  tail call void @leaf_paste_in_buffer(ptr noundef %dest_bi, i32 noundef %sub, i32 noundef %conv47, i32 noundef %bytes_or_entries.addr.1, ptr noundef %add.ptr.i, i32 noundef 0)
  %ih_version.i340 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %56 = ptrtoint ptr %ih_version.i340 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %ih_version.i340, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp.i.i.i341 = icmp eq i16 %57, 0
  %u.i.i.i342 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i341, label %is_indirect_le_ih.exit350.thread, label %is_indirect_le_ih.exit350

is_indirect_le_ih.exit350:                        ; preds = %if.end44
  %58 = ptrtoint ptr %u.i.i.i342 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %u.i.i.i342, align 1
  %60 = and i64 %59, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %60)
  %phi.cmp1.i.i346.not = icmp eq i64 %60, 16
  br i1 %phi.cmp1.i.i346.not, label %do.body52, label %is_indirect_le_ih.exit350.cleanup_crit_edge

is_indirect_le_ih.exit350.cleanup_crit_edge:      ; preds = %is_indirect_le_ih.exit350
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_indirect_le_ih.exit350.thread:                 ; preds = %if.end44
  %k_uniqueness.i.i.i343 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i342, i32 0, i32 1
  %61 = ptrtoint ptr %k_uniqueness.i.i.i343 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %k_uniqueness.i.i.i343, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %62)
  %cond.i.i344.not = icmp eq i32 %62, -16777217
  br i1 %cond.i.i344.not, label %is_indirect_le_ih.exit350.thread.cond.false58_crit_edge, label %is_indirect_le_ih.exit350.thread.cleanup_crit_edge

is_indirect_le_ih.exit350.thread.cleanup_crit_edge: ; preds = %is_indirect_le_ih.exit350.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_indirect_le_ih.exit350.thread.cond.false58_crit_edge: ; preds = %is_indirect_le_ih.exit350.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58

do.body52:                                        ; preds = %is_indirect_le_ih.exit350
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %57)
  %cmp55 = icmp eq i16 %57, 256
  br i1 %cmp55, label %do.end65, label %do.body52.cond.false58_crit_edge

do.body52.cond.false58_crit_edge:                 ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58

cond.false58:                                     ; preds = %do.body52.cond.false58_crit_edge, %is_indirect_le_ih.exit350.thread.cond.false58_crit_edge
  %u59 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %63 = ptrtoint ptr %u59 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %u59, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool61.not = icmp eq i16 %64, 0
  br i1 %tobool61.not, label %do.end65.thread, label %if.then62

if.then62:                                        ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.33, i32 noundef 206, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef %add.ptr.i.i) #8
  unreachable

do.end65:                                         ; preds = %do.body52
  %65 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %ih_item_len, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %conv67 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_or_entries.addr.1, i32 %conv67)
  %cmp68 = icmp eq i32 %bytes_or_entries.addr.1, %conv67
  br i1 %cmp68, label %do.end65.cond.end86_crit_edge, label %do.end65.cleanup_crit_edge

do.end65.cleanup_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end65.cond.end86_crit_edge:                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

do.end65.thread:                                  ; preds = %cond.false58
  %68 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %ih_item_len, align 1
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %conv67575 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_or_entries.addr.1, i32 %conv67575)
  %cmp68576 = icmp eq i32 %bytes_or_entries.addr.1, %conv67575
  br i1 %cmp68576, label %cond.false77, label %do.end65.thread.cleanup_crit_edge

do.end65.thread.cleanup_crit_edge:                ; preds = %do.end65.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false77:                                     ; preds = %do.end65.thread
  %71 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %72)
  %cmp80 = icmp eq i16 %72, 256
  br i1 %cmp80, label %cond.false77.cond.end86_crit_edge, label %cond.false83

cond.false77.cond.end86_crit_edge:                ; preds = %cond.false77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end86

cond.false83:                                     ; preds = %cond.false77
  call void @__sanitizer_cov_trace_pc() #7
  %u84 = getelementptr i8, ptr %8, i32 40
  %73 = ptrtoint ptr %u84 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %u84, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false83, %cond.false77.cond.end86_crit_edge, %do.end65.cond.end86_crit_edge
  %cond87 = phi i16 [ %75, %cond.false83 ], [ 0, %cond.false77.cond.end86_crit_edge ], [ 0, %do.end65.cond.end86_crit_edge ]
  %76 = tail call i16 @llvm.bswap.i16(i16 %cond87)
  %u89 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %77 = ptrtoint ptr %u89 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %u89, align 1
  br label %cleanup

if.end94:                                         ; preds = %entry
  %b_data95 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %78 = ptrtoint ptr %b_data95 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data95, align 4
  %blk_nr_item96 = getelementptr inbounds %struct.block_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %blk_nr_item96 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %blk_nr_item96, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %conv97 = zext i16 %82 to i32
  %sub98 = add nsw i32 %conv97, -1
  %add.ptr.i.i352 = getelementptr i8, ptr %79, i32 24
  %arrayidx.i353 = getelementptr %struct.item_head, ptr %add.ptr.i.i352, i32 %sub98
  %add.ptr.i.i355 = getelementptr i8, ptr %3, i32 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool101.not = icmp eq i16 %5, 0
  br i1 %tobool101.not, label %if.end94.cleanup_crit_edge, label %lor.lhs.false102

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false102:                                 ; preds = %if.end94
  %u.i356 = getelementptr i8, ptr %3, i32 32
  %83 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %u.i356, align 1
  %85 = trunc i64 %84 to i32
  %86 = lshr i32 %85, 4
  %conv1.i.i357 = and i32 %86, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i357)
  %cmp.i.i358 = icmp ult i32 %conv1.i.i357, 4
  %phi.cast.i.i359 = trunc i32 %conv1.i.i357 to i16
  %87 = add nsw i16 %phi.cast.i.i359, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %87)
  %switch9.i361 = icmp ult i16 %87, -3
  %not.cmp.i.i358 = xor i1 %cmp.i.i358, true
  %switch.i362 = select i1 %not.cmp.i.i358, i1 true, i1 %switch9.i361
  br i1 %switch.i362, label %if.then.i367, label %if.else.i375

if.then.i367:                                     ; preds = %lor.lhs.false102
  %k_uniqueness.i366 = getelementptr i8, ptr %3, i32 36
  %88 = ptrtoint ptr %k_uniqueness.i366 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %k_uniqueness.i366, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %90, label %sw.default.i.i371 [
    i32 0, label %if.then.i367.le_key_k_type.exit378_crit_edge
    i32 -2, label %sw.bb1.i.i368
    i32 -1, label %sw.bb2.i.i369
    i32 500, label %sw.bb3.i.i370
  ]

if.then.i367.le_key_k_type.exit378_crit_edge:     ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit378

sw.bb1.i.i368:                                    ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit378

sw.bb2.i.i369:                                    ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit378

sw.bb3.i.i370:                                    ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit378

sw.default.i.i371:                                ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit378

if.else.i375:                                     ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #7
  %narrow.i374 = select i1 %cmp.i.i358, i32 %conv1.i.i357, i32 15
  br label %le_key_k_type.exit378

le_key_k_type.exit378:                            ; preds = %if.else.i375, %sw.default.i.i371, %sw.bb3.i.i370, %sw.bb2.i.i369, %sw.bb1.i.i368, %if.then.i367.le_key_k_type.exit378_crit_edge
  %retval.0.in.i376 = phi i32 [ %narrow.i374, %if.else.i375 ], [ 15, %sw.default.i.i371 ], [ 3, %sw.bb3.i.i370 ], [ 2, %sw.bb2.i.i369 ], [ 1, %sw.bb1.i.i368 ], [ %90, %if.then.i367.le_key_k_type.exit378_crit_edge ]
  %arrayidx108 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i376
  %92 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx108, align 4
  %is_left_mergeable109 = getelementptr inbounds %struct.item_operations, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %is_left_mergeable109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %is_left_mergeable109, align 4
  %b_size111 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 4
  %96 = ptrtoint ptr %b_size111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %b_size111, align 8
  %call112 = tail call i32 %95(ptr noundef %add.ptr.i.i355, i32 noundef %97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %le_key_k_type.exit378.cleanup_crit_edge, label %if.end115

le_key_k_type.exit378.cleanup_crit_edge:          ; preds = %le_key_k_type.exit378
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end115:                                        ; preds = %le_key_k_type.exit378
  %ih_version.i379 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 4
  %98 = ptrtoint ptr %ih_version.i379 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %ih_version.i379, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i.i.i380 = icmp eq i16 %99, 0
  %u.i.i.i381 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i353, i32 0, i32 2
  br i1 %cmp.i.i.i380, label %is_direntry_le_ih.exit389, label %is_direntry_le_ih.exit389.thread

is_direntry_le_ih.exit389:                        ; preds = %if.end115
  %k_uniqueness.i.i.i382 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i381, i32 0, i32 1
  %100 = ptrtoint ptr %k_uniqueness.i.i.i382 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %k_uniqueness.i.i.i382, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %101)
  %cond.i.i383.not = icmp eq i32 %101, -201261056
  br i1 %cond.i.i383.not, label %is_direntry_le_ih.exit389.if.then118_crit_edge, label %is_indirect_le_ih.exit400.thread

is_direntry_le_ih.exit389.if.then118_crit_edge:   ; preds = %is_direntry_le_ih.exit389
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

is_direntry_le_ih.exit389.thread:                 ; preds = %if.end115
  %102 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %u.i.i.i381, align 1
  %104 = and i64 %103, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %104)
  %phi.cmp1.i.i385.not = icmp eq i64 %104, 48
  br i1 %phi.cmp1.i.i385.not, label %is_direntry_le_ih.exit389.thread.if.then118_crit_edge, label %is_indirect_le_ih.exit400

is_direntry_le_ih.exit389.thread.if.then118_crit_edge: ; preds = %is_direntry_le_ih.exit389.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

if.then118:                                       ; preds = %is_direntry_le_ih.exit389.thread.if.then118_crit_edge, %is_direntry_le_ih.exit389.if.then118_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bytes_or_entries)
  %cmp119 = icmp eq i32 %bytes_or_entries, -1
  br i1 %cmp119, label %if.then121, label %if.then118.if.end124_crit_edge

if.then118.if.end124_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  %u122 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 1
  %105 = ptrtoint ptr %u122 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %u122, align 1
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv123 = zext i16 %107 to i32
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.then118.if.end124_crit_edge
  %bytes_or_entries.addr.2 = phi i32 [ %conv123, %if.then121 ], [ %bytes_or_entries, %if.then118.if.end124_crit_edge ]
  %u126 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 1
  %108 = ptrtoint ptr %u126 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %u126, align 1
  %110 = tail call i16 @llvm.bswap.i16(i16 %109)
  %conv127 = zext i16 %110 to i32
  %sub128 = sub i32 %conv127, %bytes_or_entries.addr.2
  tail call fastcc void @leaf_copy_dir_entries(ptr noundef %dest_bi, ptr noundef %src, i32 noundef 1, i32 noundef %sub98, i32 noundef %sub128, i32 noundef %bytes_or_entries.addr.2)
  br label %cleanup

is_indirect_le_ih.exit400:                        ; preds = %is_direntry_le_ih.exit389.thread
  %111 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %u.i.i.i381, align 1
  %113 = and i64 %112, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %113)
  %phi.cmp1.i.i396 = icmp ne i64 %113, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %99)
  %cmp136 = icmp eq i16 %99, 256
  %or.cond573 = select i1 %phi.cmp1.i.i396, i1 true, i1 %cmp136
  br i1 %or.cond573, label %is_indirect_le_ih.exit400.do.end146_crit_edge, label %is_indirect_le_ih.exit400.cond.false139_crit_edge

is_indirect_le_ih.exit400.cond.false139_crit_edge: ; preds = %is_indirect_le_ih.exit400
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139

is_indirect_le_ih.exit400.do.end146_crit_edge:    ; preds = %is_indirect_le_ih.exit400
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

is_indirect_le_ih.exit400.thread:                 ; preds = %is_direntry_le_ih.exit389
  %114 = ptrtoint ptr %k_uniqueness.i.i.i382 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %k_uniqueness.i.i.i382, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %115)
  %cond.i.i394.not = icmp eq i32 %115, -16777217
  br i1 %cond.i.i394.not, label %is_indirect_le_ih.exit400.thread.cond.false139_crit_edge, label %is_indirect_le_ih.exit400.thread.do.end146_crit_edge

is_indirect_le_ih.exit400.thread.do.end146_crit_edge: ; preds = %is_indirect_le_ih.exit400.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

is_indirect_le_ih.exit400.thread.cond.false139_crit_edge: ; preds = %is_indirect_le_ih.exit400.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false139

cond.false139:                                    ; preds = %is_indirect_le_ih.exit400.thread.cond.false139_crit_edge, %is_indirect_le_ih.exit400.cond.false139_crit_edge
  %u140 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 1
  %116 = ptrtoint ptr %u140 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %u140, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool142.not = icmp eq i16 %117, 0
  br i1 %tobool142.not, label %cond.false139.do.end146_crit_edge, label %if.then143

cond.false139.do.end146_crit_edge:                ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end146

if.then143:                                       ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.34, i32 noundef 251, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef %arrayidx.i353) #8
  unreachable

do.end146:                                        ; preds = %cond.false139.do.end146_crit_edge, %is_indirect_le_ih.exit400.thread.do.end146_crit_edge, %is_indirect_le_ih.exit400.do.end146_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bytes_or_entries)
  %cmp147 = icmp eq i32 %bytes_or_entries, -1
  %ih_item_len150 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 2
  %118 = ptrtoint ptr %ih_item_len150 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %ih_item_len150, align 1
  br i1 %cmp147, label %if.then149, label %do.body171

if.then149:                                       ; preds = %do.end146
  %ih_version.i401 = getelementptr i8, ptr %3, i32 46
  %120 = ptrtoint ptr %ih_version.i401 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %ih_version.i401, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %cmp.i.i402 = icmp eq i16 %121, 0
  br i1 %cmp.i.i402, label %cond.true.i.i403, label %cond.false.i.i

cond.true.i.i403:                                 ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %u.i356, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #5
  %conv.i.i = zext i32 %124 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %u.i356, align 1
  %127 = and i64 %126, -241
  %128 = tail call i64 @llvm.bswap.i64(i64 %127) #5
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i403
  %cond.i.i404 = phi i64 [ %conv.i.i, %cond.true.i.i403 ], [ %128, %cond.false.i.i ]
  br i1 %cmp.i.i.i380, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %le_ih_k_offset.exit
  %129 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %u.i.i.i381, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  %conv.i.i408 = zext i32 %131 to i64
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i381, i32 0, i32 1
  %132 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %k_uniqueness.i.i, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #5
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %134, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %u.i.i.i381, align 1
  %138 = and i64 %137, -241
  %139 = tail call i64 @llvm.bswap.i64(i64 %138) #5
  %140 = trunc i64 %137 to i32
  %141 = lshr i32 %140, 4
  %conv1.i.i.i = and i32 %141, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i416 = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i416, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %cond.i.i411546 = phi i64 [ %139, %if.else.i.i ], [ %conv.i.i408, %sw.default.i.i.i ], [ %conv.i.i408, %sw.bb3.i.i.i ], [ %conv.i.i408, %sw.bb2.i.i.i ], [ %conv.i.i408, %sw.bb1.i.i.i ], [ %conv.i.i408, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %134, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx157 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %142 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx157, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %b_size111 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %b_size111, align 8
  %call159 = tail call i32 %145(ptr noundef %arrayidx.i353, i32 noundef %147) #5
  %conv160 = sext i32 %call159 to i64
  %add = add i64 %cond.i.i411546, %conv160
  call void @__sanitizer_cov_trace_cmp8(i64 %cond.i.i404, i64 %add)
  %cmp161.not = icmp eq i64 %cond.i.i404, %add
  br i1 %cmp161.not, label %do.end166, label %if.then163

if.then163:                                       ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.35, i32 noundef 259, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef %arrayidx.i353, ptr noundef %add.ptr.i.i355) #8
  unreachable

do.end166:                                        ; preds = %le_ih_k_type.exit
  %148 = tail call i16 @llvm.bswap.i16(i16 %119)
  %conv151 = zext i16 %148 to i32
  %149 = ptrtoint ptr %ih_version.i379 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %ih_version.i379, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %cmp.i.i418 = icmp eq i16 %150, 0
  br i1 %cmp.i.i418, label %cond.true.i.i421, label %cond.false.i.i422

cond.true.i.i421:                                 ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %u.i.i.i381, align 1
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #5
  %conv.i.i420 = zext i32 %153 to i64
  br label %le_ih_k_offset.exit424

cond.false.i.i422:                                ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %u.i.i.i381, align 1
  %156 = and i64 %155, -241
  %157 = tail call i64 @llvm.bswap.i64(i64 %156) #5
  br label %le_ih_k_offset.exit424

le_ih_k_offset.exit424:                           ; preds = %cond.false.i.i422, %cond.true.i.i421
  %cond.i.i423 = phi i64 [ %conv.i.i420, %cond.true.i.i421 ], [ %157, %cond.false.i.i422 ]
  %158 = ptrtoint ptr %ih_version.i401 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %ih_version.i401, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %cmp.i.i426 = icmp eq i16 %159, 0
  br i1 %cmp.i.i426, label %if.then.i.i429, label %if.else.i.i430

if.then.i.i429:                                   ; preds = %le_ih_k_offset.exit424
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i427 = trunc i64 %cond.i.i423 to i32
  %160 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i427) #5
  %161 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %160, ptr %u.i356, align 1
  br label %set_le_ih_k_offset.exit

if.else.i.i430:                                   ; preds = %le_ih_k_offset.exit424
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i64 %cond.i.i423, 1152921504606846975
  %162 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 8)
  %163 = load i64, ptr %u.i356, align 1
  %and1.i.i.i = and i64 %163, 240
  %164 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i) #5
  %or.i.i.i = or i64 %and1.i.i.i, %164
  %165 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 %or.i.i.i, ptr %u.i356, align 1
  br label %set_le_ih_k_offset.exit

set_le_ih_k_offset.exit:                          ; preds = %if.else.i.i430, %if.then.i.i429
  %166 = ptrtoint ptr %ih_version.i379 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %ih_version.i379, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp.i.i432 = icmp eq i16 %167, 0
  br i1 %cmp.i.i432, label %if.then.i.i435, label %if.else.i.i443

if.then.i.i435:                                   ; preds = %set_le_ih_k_offset.exit
  %k_uniqueness.i.i434 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i381, i32 0, i32 1
  %168 = ptrtoint ptr %k_uniqueness.i.i434 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %k_uniqueness.i.i434, align 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %170, label %sw.default.i.i.i439 [
    i32 0, label %if.then.i.i435.le_ih_k_type.exit446_crit_edge
    i32 -2, label %sw.bb1.i.i.i436
    i32 -1, label %sw.bb2.i.i.i437
    i32 500, label %sw.bb3.i.i.i438
  ]

if.then.i.i435.le_ih_k_type.exit446_crit_edge:    ; preds = %if.then.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit446

sw.bb1.i.i.i436:                                  ; preds = %if.then.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit446

sw.bb2.i.i.i437:                                  ; preds = %if.then.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit446

sw.bb3.i.i.i438:                                  ; preds = %if.then.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit446

sw.default.i.i.i439:                              ; preds = %if.then.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_ih_k_type.exit446

if.else.i.i443:                                   ; preds = %set_le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %u.i.i.i381 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 8)
  %173 = load i64, ptr %u.i.i.i381, align 1
  %174 = trunc i64 %173 to i32
  %175 = lshr i32 %174, 4
  %conv1.i.i.i440 = and i32 %175, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i440)
  %cmp.i.i.i441 = icmp ult i32 %conv1.i.i.i440, 4
  %narrow.i.i442 = select i1 %cmp.i.i.i441, i32 %conv1.i.i.i440, i32 15
  br label %le_ih_k_type.exit446

le_ih_k_type.exit446:                             ; preds = %if.else.i.i443, %sw.default.i.i.i439, %sw.bb3.i.i.i438, %sw.bb2.i.i.i437, %sw.bb1.i.i.i436, %if.then.i.i435.le_ih_k_type.exit446_crit_edge
  %retval.0.in.i.i444 = phi i32 [ %narrow.i.i442, %if.else.i.i443 ], [ 15, %sw.default.i.i.i439 ], [ 3, %sw.bb3.i.i.i438 ], [ 2, %sw.bb2.i.i.i437 ], [ 1, %sw.bb1.i.i.i436 ], [ %170, %if.then.i.i435.le_ih_k_type.exit446_crit_edge ]
  %176 = ptrtoint ptr %ih_version.i401 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %ih_version.i401, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %cmp.i.i448 = icmp eq i16 %177, 0
  br i1 %cmp.i.i448, label %if.then.i.i449, label %if.else.i.i459

if.then.i.i449:                                   ; preds = %le_ih_k_type.exit446
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.in.i.i444)
  %178 = icmp ult i32 %retval.0.in.i.i444, 4
  br i1 %178, label %switch.lookup, label %if.then.i.i449.type2uniqueness.exit.i.i_crit_edge

if.then.i.i449.type2uniqueness.exit.i.i_crit_edge: ; preds = %if.then.i.i449
  call void @__sanitizer_cov_trace_pc() #7
  br label %type2uniqueness.exit.i.i

switch.lookup:                                    ; preds = %if.then.i.i449
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.leaf_copy_boundary_item, i32 0, i32 %retval.0.in.i.i444
  %179 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %179)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %type2uniqueness.exit.i.i

type2uniqueness.exit.i.i:                         ; preds = %switch.lookup, %if.then.i.i449.type2uniqueness.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 555, %if.then.i.i449.type2uniqueness.exit.i.i_crit_edge ]
  %180 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #5
  %k_uniqueness.i.i455 = getelementptr i8, ptr %3, i32 36
  %181 = ptrtoint ptr %k_uniqueness.i.i455 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %k_uniqueness.i.i455, align 1
  br label %if.end218

if.else.i.i459:                                   ; preds = %le_ih_k_type.exit446
  call void @__sanitizer_cov_trace_pc() #7
  %retval.0.i.i445 = zext i32 %retval.0.in.i.i444 to i64
  %182 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 8)
  %183 = load i64, ptr %u.i356, align 1
  %and.i.i.i457 = and i64 %183, -241
  %184 = shl nuw nsw i64 %retval.0.i.i445, 4
  %185 = and i64 %184, 240
  %or.i.i.i458 = or i64 %and.i.i.i457, %185
  store i64 %or.i.i.i458, ptr %u.i356, align 1
  br label %if.end218

do.body171:                                       ; preds = %do.end146
  %186 = tail call i16 @llvm.bswap.i16(i16 %119)
  %conv173 = zext i16 %186 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv173, i32 %bytes_or_entries)
  %cmp174.not = icmp sgt i32 %conv173, %bytes_or_entries
  br i1 %cmp174.not, label %do.end181, label %if.then176

if.then176:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.36, i32 noundef 272, ptr noundef nonnull @__func__.leaf_copy_boundary_item, i32 noundef %conv173, i32 noundef %bytes_or_entries) #8
  unreachable

do.end181:                                        ; preds = %do.body171
  %ih_version.i460 = getelementptr i8, ptr %3, i32 46
  %187 = ptrtoint ptr %ih_version.i460 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %ih_version.i460, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %cmp.i.i.i461 = icmp eq i16 %188, 0
  br i1 %cmp.i.i.i461, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %do.end181
  %k_uniqueness.i.i.i463 = getelementptr i8, ptr %3, i32 36
  %189 = ptrtoint ptr %k_uniqueness.i.i.i463 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %k_uniqueness.i.i.i463, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %190)
  %cond.i.i464.not = icmp eq i32 %190, -1
  %191 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %u.i356, align 1
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #5
  br i1 %cond.i.i464.not, label %le_ih_k_offset.exit477, label %le_ih_k_offset.exit504

is_direct_le_ih.exit.thread:                      ; preds = %do.end181
  %194 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 8)
  %195 = load i64, ptr %u.i356, align 1
  %196 = and i64 %195, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %196)
  %phi.cmp1.i.i466.not = icmp eq i64 %196, 32
  %197 = and i64 %195, -241
  %198 = tail call i64 @llvm.bswap.i64(i64 %197) #5
  br i1 %phi.cmp1.i.i466.not, label %le_ih_k_offset.exit477.thread, label %le_ih_k_offset.exit504.thread

le_ih_k_offset.exit477:                           ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %bytes_or_entries)
  %cmp188.not = icmp ugt i32 %193, %bytes_or_entries
  br i1 %cmp188.not, label %if.then.i.i490, label %le_ih_k_offset.exit477.if.then190_crit_edge

le_ih_k_offset.exit477.if.then190_crit_edge:      ; preds = %le_ih_k_offset.exit477
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then190

le_ih_k_offset.exit477.thread:                    ; preds = %is_direct_le_ih.exit.thread
  %conv187552 = zext i32 %bytes_or_entries to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %198, i64 %conv187552)
  %cmp188.not553 = icmp ugt i64 %198, %conv187552
  br i1 %cmp188.not553, label %if.else.i.i495, label %le_ih_k_offset.exit477.thread.if.then190_crit_edge

le_ih_k_offset.exit477.thread.if.then190_crit_edge: ; preds = %le_ih_k_offset.exit477.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then190

if.then190:                                       ; preds = %le_ih_k_offset.exit477.thread.if.then190_crit_edge, %le_ih_k_offset.exit477.if.then190_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.37, i32 noundef 279, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef %add.ptr.i.i355, i32 noundef %bytes_or_entries) #8
  unreachable

if.then.i.i490:                                   ; preds = %le_ih_k_offset.exit477
  call void @__sanitizer_cov_trace_pc() #7
  %199 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %u.i356, align 1
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #5
  %sub196556 = sub i32 %201, %bytes_or_entries
  %202 = tail call i32 @llvm.bswap.i32(i32 %sub196556) #5
  %203 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %202, ptr %u.i356, align 1
  br label %if.end218

if.else.i.i495:                                   ; preds = %le_ih_k_offset.exit477.thread
  call void @__sanitizer_cov_trace_pc() #7
  %204 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 8)
  %205 = load i64, ptr %u.i356, align 1
  %206 = and i64 %205, -241
  %207 = tail call i64 @llvm.bswap.i64(i64 %206) #5
  %conv195 = sext i32 %bytes_or_entries to i64
  %sub196 = sub nsw i64 %207, %conv195
  %and.i.i.i492 = and i64 %sub196, 1152921504606846975
  %and1.i.i.i493 = and i64 %205, 240
  %208 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i492) #5
  %or.i.i.i494 = or i64 %208, %and1.i.i.i493
  %209 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 8)
  store i64 %or.i.i.i494, ptr %u.i356, align 1
  br label %if.end218

le_ih_k_offset.exit504:                           ; preds = %is_direct_le_ih.exit
  %div324 = lshr i32 %bytes_or_entries, 2
  %b_size200 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %210 = ptrtoint ptr %b_size200 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %b_size200, align 8
  %mul = mul i32 %211, %div324
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %mul)
  %cmp202.not = icmp ugt i32 %193, %mul
  br i1 %cmp202.not, label %if.then.i.i517, label %le_ih_k_offset.exit504.if.then204_crit_edge

le_ih_k_offset.exit504.if.then204_crit_edge:      ; preds = %le_ih_k_offset.exit504
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then204

le_ih_k_offset.exit504.thread:                    ; preds = %is_direct_le_ih.exit.thread
  %div324559 = lshr i32 %bytes_or_entries, 2
  %b_size200560 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %212 = ptrtoint ptr %b_size200560 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %b_size200560, align 8
  %mul561 = mul i32 %213, %div324559
  %conv201562 = zext i32 %mul561 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %198, i64 %conv201562)
  %cmp202.not563 = icmp ugt i64 %198, %conv201562
  br i1 %cmp202.not563, label %if.else.i.i522, label %le_ih_k_offset.exit504.thread.if.then204_crit_edge

le_ih_k_offset.exit504.thread.if.then204_crit_edge: ; preds = %le_ih_k_offset.exit504.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then204

if.then204:                                       ; preds = %le_ih_k_offset.exit504.thread.if.then204_crit_edge, %le_ih_k_offset.exit504.if.then204_crit_edge
  %mul564 = phi i32 [ %mul561, %le_ih_k_offset.exit504.thread.if.then204_crit_edge ], [ %mul, %le_ih_k_offset.exit504.if.then204_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef nonnull @.str.38, i32 noundef 288, ptr noundef nonnull @__func__.leaf_copy_boundary_item, ptr noundef %add.ptr.i.i355, i32 noundef %mul564) #8
  unreachable

if.then.i.i517:                                   ; preds = %le_ih_k_offset.exit504
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %u.i356, align 1
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #5
  %sub216571 = sub i32 %216, %mul
  %217 = tail call i32 @llvm.bswap.i32(i32 %sub216571) #5
  %218 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %u.i356, align 1
  br label %if.end218

if.else.i.i522:                                   ; preds = %le_ih_k_offset.exit504.thread
  call void @__sanitizer_cov_trace_pc() #7
  %219 = ptrtoint ptr %u.i356 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 8)
  %220 = load i64, ptr %u.i356, align 1
  %221 = and i64 %220, -241
  %222 = tail call i64 @llvm.bswap.i64(i64 %221) #5
  %sub216 = sub nsw i64 %222, %conv201562
  %and.i.i.i519 = and i64 %sub216, 1152921504606846975
  %and1.i.i.i520 = and i64 %220, 240
  %223 = tail call i64 @llvm.bswap.i64(i64 %and.i.i.i519) #5
  %or.i.i.i521 = or i64 %223, %and1.i.i.i520
  %224 = ptrtoint ptr %u.i356 to i32
  call void @__asan_storeN_noabort(i32 %224, i32 8)
  store i64 %or.i.i.i521, ptr %u.i356, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.else.i.i522, %if.then.i.i517, %if.else.i.i495, %if.then.i.i490, %if.else.i.i459, %type2uniqueness.exit.i.i
  %bytes_or_entries.addr.3 = phi i32 [ %conv151, %type2uniqueness.exit.i.i ], [ %conv151, %if.else.i.i459 ], [ %bytes_or_entries, %if.then.i.i490 ], [ %bytes_or_entries, %if.else.i.i495 ], [ %bytes_or_entries, %if.then.i.i517 ], [ %bytes_or_entries, %if.else.i.i522 ]
  %225 = ptrtoint ptr %b_data95 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %b_data95, align 4
  %ih_item_location.i525 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 3
  %227 = ptrtoint ptr %ih_item_location.i525 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %228 = load i16, ptr %ih_item_location.i525, align 1
  %229 = tail call i16 @llvm.bswap.i16(i16 %228) #5
  %conv.i526 = zext i16 %229 to i32
  %add.ptr.i527 = getelementptr i8, ptr %226, i32 %conv.i526
  %ih_item_len220 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i353, i32 0, i32 2
  %230 = ptrtoint ptr %ih_item_len220 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %ih_item_len220, align 1
  %232 = tail call i16 @llvm.bswap.i16(i16 %231)
  %conv221 = zext i16 %232 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i527, i32 %conv221
  %idx.neg = sub i32 0, %bytes_or_entries.addr.3
  %add.ptr222 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  tail call void @leaf_paste_in_buffer(ptr noundef %dest_bi, i32 noundef 0, i32 noundef 0, i32 noundef %bytes_or_entries.addr.3, ptr noundef %add.ptr222, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end218, %if.end124, %le_key_k_type.exit378.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %cond.end86, %do.end65.thread.cleanup_crit_edge, %do.end65.cleanup_crit_edge, %is_indirect_le_ih.exit350.thread.cleanup_crit_edge, %is_indirect_le_ih.exit350.cleanup_crit_edge, %if.end20, %le_key_k_type.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 1, %if.end124 ], [ 1, %if.end218 ], [ 0, %le_key_k_type.exit.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %do.end65.cleanup_crit_edge ], [ 1, %cond.end86 ], [ 1, %is_indirect_le_ih.exit350.cleanup_crit_edge ], [ 0, %le_key_k_type.exit378.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ], [ 1, %is_indirect_le_ih.exit350.thread.cleanup_crit_edge ], [ 1, %do.end65.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leaf_copy_items_entirely(ptr noundef readonly %dest_bi, ptr nocapture noundef readonly %src, i32 noundef %last_first, i32 noundef %first, i32 noundef %cpy_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %blk_nr_item, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %sub = sub i32 %conv, %first
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cpy_num)
  %cmp3 = icmp slt i32 %sub, %cpy_num
  br i1 %cmp3, label %if.then5, label %do.body12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.41, i32 noundef 326, ptr noundef nonnull @__func__.leaf_copy_items_entirely, i32 noundef %conv, i32 noundef %cpy_num, i32 noundef %first) #8
  unreachable

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpy_num)
  %cmp13 = icmp slt i32 %cpy_num, 0
  br i1 %cmp13, label %if.then15, label %do.body19

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.42, i32 noundef 327, ptr noundef nonnull @__func__.leaf_copy_items_entirely) #8
  unreachable

do.body19:                                        ; preds = %do.body12
  %tobool.not = icmp eq ptr %dest_bi, null
  br i1 %tobool.not, label %if.then20, label %do.end23

if.then20:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.43, i32 noundef 328, ptr noundef nonnull @__func__.leaf_copy_items_entirely) #8
  unreachable

do.end23:                                         ; preds = %do.body19
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bh, align 4
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %if.then26, label %do.end29

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.44, i32 noundef 332, ptr noundef nonnull @__func__.leaf_copy_items_entirely) #8
  unreachable

do.end29:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpy_num)
  %cmp30 = icmp eq i32 %cpy_num, 0
  br i1 %cmp30, label %do.end29.cleanup_crit_edge, label %if.end33

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %do.end29
  %b_data34 = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data34, align 4
  %blk_nr_item35 = getelementptr inbounds %struct.block_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %blk_nr_item35 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blk_nr_item35, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv36 = zext i16 %11 to i32
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blk_free_space, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv37 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %last_first)
  %cmp38 = icmp eq i32 %last_first, 1
  %spec.select = select i1 %cmp38, i32 0, i32 %conv36
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %spec.select
  %mul = mul i32 %cpy_num, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv37)
  %cmp43 = icmp ugt i32 %mul, %conv37
  br i1 %cmp43, label %if.then45, label %do.end52

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.45, i32 noundef 352, ptr noundef nonnull @__func__.leaf_copy_items_entirely, i32 noundef %conv37, i32 noundef %mul) #8
  unreachable

do.end52:                                         ; preds = %if.end33
  %add.ptr = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %cpy_num
  %sub53 = sub nsw i32 %conv36, %spec.select
  %mul54 = mul nsw i32 %sub53, 24
  %15 = call ptr @memmove(ptr %add.ptr, ptr %arrayidx.i, i32 %mul54)
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i260 = getelementptr i8, ptr %17, i32 24
  %arrayidx.i261 = getelementptr %struct.item_head, ptr %add.ptr.i.i260, i32 %first
  %18 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx.i261, i32 %mul)
  %sub58 = sub i32 %conv37, %mul
  %conv59 = trunc i32 %sub58 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  %20 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %blk_free_space, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp61 = icmp eq i32 %spec.select, 0
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 4
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size, align 8
  br label %cond.end67

cond.false64:                                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  %ih_item_location = getelementptr %struct.item_head, ptr %arrayidx.i, i32 -1, i32 3
  %23 = ptrtoint ptr %ih_item_location to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %ih_item_location, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv66 = zext i16 %25 to i32
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false64, %cond.true63
  %cond68 = phi i32 [ %22, %cond.true63 ], [ %conv66, %cond.false64 ]
  %add = add nuw i32 %conv36, %cpy_num
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %add)
  %cmp69263 = icmp slt i32 %spec.select, %add
  br i1 %cmp69263, label %for.body.lr.ph, label %cond.end67.for.end_crit_edge

cond.end67.for.end_crit_edge:                     ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end67
  %idx.neg = sub nsw i32 0, %spec.select
  %add.ptr71 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %idx.neg
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0265 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %location.0264 = phi i32 [ %cond68, %for.body.lr.ph ], [ %sub74, %for.body.for.body_crit_edge ]
  %add.ptr72 = getelementptr %struct.item_head, ptr %add.ptr71, i32 %i.0265
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %add.ptr72, i32 0, i32 2
  %26 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %ih_item_len, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv73 = zext i16 %28 to i32
  %sub74 = sub i32 %location.0264, %conv73
  %conv76 = trunc i32 %sub74 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv76)
  %ih_item_location80 = getelementptr inbounds %struct.item_head, ptr %add.ptr72, i32 0, i32 3
  %30 = ptrtoint ptr %ih_item_location80 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %ih_item_location80, align 1
  %inc = add nuw nsw i32 %i.0265, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end67.for.end_crit_edge
  %sub88 = add i32 %cpy_num, -1
  %ih_item_location90 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub88, i32 3
  %31 = ptrtoint ptr %ih_item_location90 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ih_item_location90, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv91 = zext i16 %33 to i32
  %sub93 = sub i32 %cond68, %conv91
  call void @__sanitizer_cov_trace_cmp4(i32 %sub58, i32 %sub93)
  %cmp94 = icmp slt i32 %sub58, %sub93
  br i1 %cmp94, label %if.then96, label %do.end100

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.46, i32 noundef 377, ptr noundef nonnull @__func__.leaf_copy_items_entirely, i32 noundef %sub58, i32 noundef %sub93) #8
  unreachable

do.end100:                                        ; preds = %for.end
  %34 = xor i32 %spec.select, -1
  %sub85 = add i32 %add, %34
  %ih_item_location86 = getelementptr %struct.item_head, ptr %arrayidx.i, i32 %sub85, i32 3
  %35 = ptrtoint ptr %ih_item_location86 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ih_item_location86, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv87 = zext i16 %37 to i32
  %38 = ptrtoint ptr %b_data34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data34, align 4
  %add.ptr102 = getelementptr i8, ptr %39, i32 %conv87
  %add.ptr105 = getelementptr i8, ptr %add.ptr102, i32 %cond68
  %idx.neg106 = sub nsw i32 0, %conv91
  %add.ptr107 = getelementptr i8, ptr %add.ptr105, i32 %idx.neg106
  %sub108 = sub nsw i32 %conv91, %conv87
  %40 = call ptr @memmove(ptr %add.ptr102, ptr %add.ptr107, i32 %sub108)
  %41 = load ptr, ptr %b_data34, align 4
  %add.ptr110 = getelementptr i8, ptr %41, i32 %conv91
  %sub112 = add i32 %sub88, %first
  %42 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %sub112
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ih_item_location.i.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #5
  %conv.i.i = zext i16 %46 to i32
  %add.ptr.i.i262 = getelementptr i8, ptr %43, i32 %conv.i.i
  %47 = call ptr @memcpy(ptr %add.ptr110, ptr %add.ptr.i.i262, i32 %sub93)
  %conv116 = trunc i32 %add to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv116)
  %49 = ptrtoint ptr %blk_nr_item35 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %blk_nr_item35, align 2
  %sub119 = sub i32 %sub58, %sub93
  %conv120 = trunc i32 %sub119 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv120)
  %51 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %blk_free_space, align 2
  %52 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dest_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %53, ptr noundef nonnull %6, i32 noundef 0) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %54 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bi_parent, align 4
  %tobool122.not = icmp eq ptr %55, null
  br i1 %tobool122.not, label %do.end100.cleanup_crit_edge, label %if.then123

do.end100.cleanup_crit_edge:                      ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then123:                                       ; preds = %do.end100
  %b_data125 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %b_data125 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data125, align 4
  %add.ptr126 = getelementptr i8, ptr %57, i32 24
  %blk_nr_item129 = getelementptr inbounds %struct.block_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %blk_nr_item129 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %blk_nr_item129, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv130 = zext i16 %60 to i32
  %mul131 = shl nuw nsw i32 %conv130, 4
  %add.ptr132 = getelementptr i8, ptr %add.ptr126, i32 %mul131
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %61 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_position, align 4
  %mul133 = shl i32 %62, 3
  %add.ptr134 = getelementptr i8, ptr %add.ptr132, i32 %mul133
  %63 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr134, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %conv136 = zext i32 %65 to i64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 3
  %66 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %conv136)
  %cmp137.not = icmp eq i64 %67, %conv136
  br i1 %cmp137.not, label %do.body146, label %if.then139

if.then139:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %conv141 = trunc i64 %67 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_items_entirely, ptr noundef nonnull @.str.47, i32 noundef 400, ptr noundef nonnull @__func__.leaf_copy_items_entirely, i32 noundef %conv141, i32 noundef %65) #8
  unreachable

do.body146:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr134, i32 0, i32 1
  %68 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dc_size, align 4
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %add150 = add i32 %sub93, %mul
  %71 = trunc i32 %add150 to i16
  %conv152 = add i16 %70, %71
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv152)
  %73 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %dc_size, align 4
  %74 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dest_bi, align 4
  %76 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %75, ptr noundef %77, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body146, %do.end100.cleanup_crit_edge, %do.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leaf_item_bottle(ptr noundef %dest_bi, ptr nocapture noundef readonly %src, i32 noundef %last_first, i32 noundef %item_num, i32 noundef %cpy_bytes) unnamed_addr #0 align 64 {
entry:
  %n_ih = alloca %struct.item_head, align 4
  %n_ih68 = alloca %struct.item_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp1 = icmp eq i32 %last_first, 0
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %item_num
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %4 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i.i.i = icmp eq i16 %5, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp1, label %if.then2, label %if.else60

if.then2:                                         ; preds = %entry
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then2
  %6 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %u.i.i.i, align 1
  %8 = and i64 %7, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %8)
  %phi.cmp1.i.i = icmp eq i64 %8, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then4_crit_edge, label %if.else.i.i.i.if.else_crit_edge

if.else.i.i.i.if.else_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else.i.i.i.if.then4_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

is_direntry_le_ih.exit:                           ; preds = %if.then2
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %10)
  %cond.i.i = icmp eq i32 %10, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.if.then4_crit_edge, label %is_direntry_le_ih.exit.if.else_crit_edge

is_direntry_le_ih.exit.if.else_crit_edge:         ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

is_direntry_le_ih.exit.if.then4_crit_edge:        ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %is_direntry_le_ih.exit.if.then4_crit_edge, %if.else.i.i.i.if.then4_crit_edge
  tail call fastcc void @leaf_copy_dir_entries(ptr noundef %dest_bi, ptr noundef %src, i32 noundef 0, i32 noundef %item_num, i32 noundef 0, i32 noundef %cpy_bytes)
  br label %if.end151

if.else:                                          ; preds = %is_direntry_le_ih.exit.if.else_crit_edge, %if.else.i.i.i.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %n_ih) #5
  %11 = getelementptr inbounds %struct.item_head, ptr %n_ih, i32 0, i32 1
  %12 = getelementptr inbounds %struct.item_head, ptr %n_ih, i32 0, i32 2
  %13 = getelementptr inbounds %struct.item_head, ptr %n_ih, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %n_ih, ptr %arrayidx.i, i32 24)
  %conv = trunc i32 %cpy_bytes to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %12, align 2
  %17 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i.i207 = icmp eq i16 %18, 0
  br i1 %cmp.i.i.i207, label %is_indirect_le_ih.exit, label %if.else.i.i.i213

if.else.i.i.i213:                                 ; preds = %if.else
  %19 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %u.i.i.i, align 1
  %21 = and i64 %20, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %21)
  %phi.cmp1.i.i212 = icmp eq i64 %21, 16
  br i1 %phi.cmp1.i.i212, label %if.else.i.i.i213.do.body11_crit_edge, label %if.else.i.i.i213.do.body44_crit_edge

if.else.i.i.i213.do.body44_crit_edge:             ; preds = %if.else.i.i.i213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

if.else.i.i.i213.do.body11_crit_edge:             ; preds = %if.else.i.i.i213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

is_indirect_le_ih.exit:                           ; preds = %if.else
  %k_uniqueness.i.i.i209 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %k_uniqueness.i.i.i209 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %k_uniqueness.i.i.i209, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %23)
  %cond.i.i210 = icmp eq i32 %23, -16777217
  br i1 %cond.i.i210, label %is_indirect_le_ih.exit.do.body11_crit_edge, label %is_indirect_le_ih.exit.do.body44_crit_edge

is_indirect_le_ih.exit.do.body44_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

is_indirect_le_ih.exit.do.body11_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.body11:                                        ; preds = %is_indirect_le_ih.exit.do.body11_crit_edge, %if.else.i.i.i213.do.body11_crit_edge
  %ih_item_len12 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %24 = ptrtoint ptr %ih_item_len12 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %ih_item_len12, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv13 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %cpy_bytes)
  %cmp14 = icmp ne i32 %conv13, %cpy_bytes
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp17 = icmp eq i16 %18, 256
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp17
  br i1 %or.cond, label %do.body11.do.body33_crit_edge, label %cond.false

do.body11.do.body33_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

cond.false:                                       ; preds = %do.body11
  %u = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %27 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool20.not = icmp eq i16 %28, 0
  br i1 %tobool20.not, label %cond.false.do.body33_crit_edge, label %cond.end

cond.false.do.body33_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

cond.end:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv19 = zext i16 %29 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_item_bottle, ptr noundef nonnull @.str.49, i32 noundef 448, ptr noundef nonnull @__func__.leaf_item_bottle, i32 noundef %conv19) #8
  unreachable

do.body33:                                        ; preds = %cond.false.do.body33_crit_edge, %do.body11.do.body33_crit_edge
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %11, align 4
  br label %do.body44

do.body44:                                        ; preds = %do.body33, %is_indirect_le_ih.exit.do.body44_crit_edge, %if.else.i.i.i213.do.body44_crit_edge
  %31 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %u.i.i.i, align 1
  %33 = trunc i64 %32 to i32
  %34 = lshr i32 %33, 4
  %conv1.i.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %35 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %35)
  %switch9.i = icmp ult i16 %35, -3
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %switch.i = select i1 %not.cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body44
  %k_uniqueness.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %k_uniqueness.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %38, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %le_key_k_type.exit

if.else.i:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %narrow.i = select i1 %cmp.i.i, i32 %conv1.i.i, i32 15
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %if.else.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i32 [ %narrow.i, %if.else.i ], [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ %38, %if.then.i.le_key_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %is_left_mergeable = getelementptr inbounds %struct.item_operations, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %is_left_mergeable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %is_left_mergeable, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 4
  %44 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_size, align 8
  %call49 = tail call i32 %43(ptr noundef %arrayidx.i, i32 noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end54, label %if.then51

if.then51:                                        ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_item_bottle, ptr noundef nonnull @.str.50, i32 noundef 453, ptr noundef nonnull @__func__.leaf_item_bottle, ptr noundef %arrayidx.i) #8
  unreachable

do.end54:                                         ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %ih_version.i, align 1
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %13, align 2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %blk_nr_item, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv57 = zext i16 %53 to i32
  %54 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %item_num
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %ih_item_location.i.i, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #5
  %conv.i.i = zext i16 %58 to i32
  %add.ptr.i.i219 = getelementptr i8, ptr %55, i32 %conv.i.i
  call void @leaf_insert_into_buf(ptr noundef %dest_bi, i32 noundef %conv57, ptr noundef nonnull %n_ih, ptr noundef %add.ptr.i.i219, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %n_ih) #5
  br label %if.end151

if.else60:                                        ; preds = %entry
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit233, label %if.else.i.i.i230

if.else.i.i.i230:                                 ; preds = %if.else60
  %59 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %u.i.i.i, align 1
  %61 = and i64 %60, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %61)
  %phi.cmp1.i.i229 = icmp eq i64 %61, 48
  br i1 %phi.cmp1.i.i229, label %if.else.i.i.i230.if.then64_crit_edge, label %if.else.i.i.i230.if.else67_crit_edge

if.else.i.i.i230.if.else67_crit_edge:             ; preds = %if.else.i.i.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

if.else.i.i.i230.if.then64_crit_edge:             ; preds = %if.else.i.i.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

is_direntry_le_ih.exit233:                        ; preds = %if.else60
  %k_uniqueness.i.i.i226 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %k_uniqueness.i.i.i226 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %k_uniqueness.i.i.i226, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %63)
  %cond.i.i227 = icmp eq i32 %63, -201261056
  br i1 %cond.i.i227, label %is_direntry_le_ih.exit233.if.then64_crit_edge, label %is_direntry_le_ih.exit233.if.else67_crit_edge

is_direntry_le_ih.exit233.if.else67_crit_edge:    ; preds = %is_direntry_le_ih.exit233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

is_direntry_le_ih.exit233.if.then64_crit_edge:    ; preds = %is_direntry_le_ih.exit233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

if.then64:                                        ; preds = %is_direntry_le_ih.exit233.if.then64_crit_edge, %if.else.i.i.i230.if.then64_crit_edge
  %u65 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %64 = ptrtoint ptr %u65 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %u65, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv66 = zext i16 %66 to i32
  %sub = sub i32 %conv66, %cpy_bytes
  tail call fastcc void @leaf_copy_dir_entries(ptr noundef %dest_bi, ptr noundef %src, i32 noundef 1, i32 noundef %item_num, i32 noundef %sub, i32 noundef %cpy_bytes)
  br label %if.end151

if.else67:                                        ; preds = %is_direntry_le_ih.exit233.if.else67_crit_edge, %if.else.i.i.i230.if.else67_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %n_ih68) #5
  %67 = getelementptr inbounds %struct.reiserfs_key, ptr %n_ih68, i32 0, i32 2
  %68 = getelementptr inbounds %struct.item_head, ptr %n_ih68, i32 0, i32 1
  %69 = getelementptr inbounds %struct.item_head, ptr %n_ih68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.item_head, ptr %n_ih68, i32 0, i32 4
  %71 = getelementptr inbounds i8, ptr %n_ih68, i32 20
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %71, align 4
  %73 = call ptr @memcpy(ptr %n_ih68, ptr %arrayidx.i, i32 16)
  %74 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.i.i.i235 = icmp eq i16 %75, 0
  br i1 %cmp.i.i.i235, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %if.else67
  %k_uniqueness.i.i.i237 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %k_uniqueness.i.i.i237 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %k_uniqueness.i.i.i237, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cond.i.i238.not = icmp eq i32 %77, -1
  br i1 %cond.i.i238.not, label %cond.true.i.i, label %is_direct_le_ih.exit.do.body92_crit_edge

is_direct_le_ih.exit.do.body92_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

is_direct_le_ih.exit.thread:                      ; preds = %if.else67
  %78 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %u.i.i.i, align 1
  %80 = and i64 %79, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %80)
  %phi.cmp1.i.i240.not = icmp eq i64 %80, 32
  br i1 %phi.cmp1.i.i240.not, label %cond.false.i.i, label %is_direct_le_ih.exit.thread.do.body92_crit_edge

is_direct_le_ih.exit.thread.do.body92_crit_edge:  ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

cond.true.i.i:                                    ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %u.i.i.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %conv.i.i246 = zext i32 %83 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %u.i.i.i, align 1
  %86 = and i64 %85, -241
  %87 = tail call i64 @llvm.bswap.i64(i64 %86) #5
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i247 = phi i64 [ %conv.i.i246, %cond.true.i.i ], [ %87, %cond.false.i.i ]
  %ih_item_len77 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %88 = ptrtoint ptr %ih_item_len77 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %ih_item_len77, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %conv78 = zext i16 %90 to i64
  %conv79 = sext i32 %cpy_bytes to i64
  %add = sub nsw i64 %cond.i.i247, %conv79
  %sub80 = add nsw i64 %add, %conv78
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.i.i249 = icmp eq i16 %75, 0
  br i1 %cmp.i.i249, label %if.then.i.i254, label %if.else.i.i259

if.then.i.i254:                                   ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i250 = trunc i64 %sub80 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i250) #5
  %92 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %67, align 4
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %67, i32 0, i32 1
  %93 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %k_uniqueness.i.i, align 4
  br label %set_le_ih_k_type.exit

if.else.i.i259:                                   ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i64 %sub80, 1152921504606846975
  %94 = or i64 %and.i.i.i, 2305843009213693952
  %95 = tail call i64 @llvm.bswap.i64(i64 %94)
  %96 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %67, align 4
  br label %set_le_ih_k_type.exit

set_le_ih_k_type.exit:                            ; preds = %if.else.i.i259, %if.then.i.i254
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp84 = icmp ne i16 %75, 256
  %conv87 = sext i1 %cmp84 to i16
  br label %do.body139

do.body92:                                        ; preds = %is_direct_le_ih.exit.thread.do.body92_crit_edge, %is_direct_le_ih.exit.do.body92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpy_bytes)
  %tobool93.not = icmp ne i32 %cpy_bytes, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp97 = icmp eq i16 %75, 256
  %or.cond299 = select i1 %tobool93.not, i1 true, i1 %cmp97
  br i1 %or.cond299, label %do.body92.do.end107_crit_edge, label %cond.false100

do.body92.do.end107_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end107

cond.false100:                                    ; preds = %do.body92
  %u101 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %97 = ptrtoint ptr %u101 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %u101, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool103.not = icmp eq i16 %98, 0
  br i1 %tobool103.not, label %cond.false100.do.end107_crit_edge, label %if.then104

cond.false100.do.end107_crit_edge:                ; preds = %cond.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end107

if.then104:                                       ; preds = %cond.false100
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_item_bottle, ptr noundef nonnull @.str.51, i32 noundef 492, ptr noundef nonnull @__func__.leaf_item_bottle) #8
  unreachable

do.end107:                                        ; preds = %cond.false100.do.end107_crit_edge, %do.body92.do.end107_crit_edge
  br i1 %cmp.i.i.i235, label %cond.true.i.i264, label %cond.false.i.i265

cond.true.i.i264:                                 ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %u.i.i.i, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  %conv.i.i263 = zext i32 %101 to i64
  br label %le_ih_k_offset.exit267

cond.false.i.i265:                                ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %u.i.i.i, align 1
  %104 = and i64 %103, -241
  %105 = tail call i64 @llvm.bswap.i64(i64 %104) #5
  br label %le_ih_k_offset.exit267

le_ih_k_offset.exit267:                           ; preds = %cond.false.i.i265, %cond.true.i.i264
  %cond.i.i266 = phi i64 [ %conv.i.i263, %cond.true.i.i264 ], [ %105, %cond.false.i.i265 ]
  %ih_item_len109 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %106 = ptrtoint ptr %ih_item_len109 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %ih_item_len109, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %conv110 = zext i16 %108 to i32
  %sub111 = sub i32 %conv110, %cpy_bytes
  %div205 = lshr i32 %sub111, 2
  %b_size112 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 4
  %109 = ptrtoint ptr %b_size112 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %b_size112, align 8
  %mul = mul i32 %div205, %110
  %conv113 = zext i32 %mul to i64
  %add114 = add nsw i64 %cond.i.i266, %conv113
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp.i.i269 = icmp eq i16 %75, 0
  br i1 %cmp.i.i269, label %set_le_ih_k_type.exit288.thread, label %set_le_ih_k_type.exit288

set_le_ih_k_type.exit288.thread:                  ; preds = %le_ih_k_offset.exit267
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i270 = trunc i64 %add114 to i32
  %111 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i270) #5
  %112 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %67, align 4
  %k_uniqueness.i.i283 = getelementptr inbounds %struct.offset_v1, ptr %67, i32 0, i32 1
  %113 = ptrtoint ptr %k_uniqueness.i.i283 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -16777217, ptr %k_uniqueness.i.i283, align 4
  br label %cond.false121

set_le_ih_k_type.exit288:                         ; preds = %le_ih_k_offset.exit267
  %and.i.i.i274 = and i64 %add114, 1152921504606846975
  %114 = or i64 %and.i.i.i274, 1152921504606846976
  %115 = tail call i64 @llvm.bswap.i64(i64 %114)
  %116 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp118 = icmp eq i16 %75, 256
  br i1 %cmp118, label %set_le_ih_k_type.exit288.do.body139_crit_edge, label %set_le_ih_k_type.exit288.cond.false121_crit_edge

set_le_ih_k_type.exit288.cond.false121_crit_edge: ; preds = %set_le_ih_k_type.exit288
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false121

set_le_ih_k_type.exit288.do.body139_crit_edge:    ; preds = %set_le_ih_k_type.exit288
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body139

cond.false121:                                    ; preds = %set_le_ih_k_type.exit288.cond.false121_crit_edge, %set_le_ih_k_type.exit288.thread
  %117 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %118)
  %cmp124 = icmp eq i16 %118, 256
  br i1 %cmp124, label %cond.false121.do.body139_crit_edge, label %cond.false127

cond.false121.do.body139_crit_edge:               ; preds = %cond.false121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body139

cond.false127:                                    ; preds = %cond.false121
  call void @__sanitizer_cov_trace_pc() #7
  %u128 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %119 = ptrtoint ptr %u128 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %u128, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120)
  br label %do.body139

do.body139:                                       ; preds = %cond.false127, %cond.false121.do.body139_crit_edge, %set_le_ih_k_type.exit288.do.body139_crit_edge, %set_le_ih_k_type.exit
  %conv87.sink = phi i16 [ %conv87, %set_le_ih_k_type.exit ], [ 0, %set_le_ih_k_type.exit288.do.body139_crit_edge ], [ %121, %cond.false127 ], [ 0, %cond.false121.do.body139_crit_edge ]
  %122 = tail call i16 @llvm.bswap.i16(i16 %conv87.sink)
  %123 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %68, align 4
  %conv140 = trunc i32 %cpy_bytes to i16
  %124 = tail call i16 @llvm.bswap.i16(i16 %conv140)
  %125 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %69, align 2
  %126 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %ih_version.i, align 1
  %128 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %70, align 2
  %ih_item_location.i.i292 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %129 = ptrtoint ptr %ih_item_location.i.i292 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %ih_item_location.i.i292, align 1
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #5
  %conv.i.i293 = zext i16 %131 to i32
  %add.ptr.i.i294 = getelementptr i8, ptr %3, i32 %conv.i.i293
  %ih_item_len147 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %132 = ptrtoint ptr %ih_item_len147 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %ih_item_len147, align 1
  %134 = tail call i16 @llvm.bswap.i16(i16 %133)
  %conv148 = zext i16 %134 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i294, i32 %conv148
  %idx.neg = sub i32 0, %cpy_bytes
  %add.ptr149 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  call void @leaf_insert_into_buf(ptr noundef %dest_bi, i32 noundef 0, ptr noundef nonnull %n_ih68, ptr noundef %add.ptr149, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %n_ih68) #5
  br label %if.end151

if.end151:                                        ; preds = %do.body139, %if.then64, %do.end54, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leaf_copy_dir_entries(ptr noundef %dest_bi, ptr nocapture noundef readonly %source, i32 noundef %last_first, i32 noundef %item_num, i32 noundef %from, i32 noundef %copy_count) unnamed_addr #0 align 64 {
entry:
  %new_ih = alloca %struct.item_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %source, i32 0, i32 5
  %2 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %item_num
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %4 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i.i.i = icmp eq i16 %5, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %6 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %u.i.i.i, align 1
  %8 = and i64 %7, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %8)
  %phi.cmp1.i.i = icmp eq i64 %8, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.do.end_crit_edge, label %if.else.i.i.i.if.then_crit_edge

if.else.i.i.i.if.then_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.i.i.i.do.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

is_direntry_le_ih.exit:                           ; preds = %entry
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %10)
  %cond.i.i = icmp eq i32 %10, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.do.end_crit_edge, label %is_direntry_le_ih.exit.if.then_crit_edge

is_direntry_le_ih.exit.if.then_crit_edge:         ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

is_direntry_le_ih.exit.do.end_crit_edge:          ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %is_direntry_le_ih.exit.if.then_crit_edge, %if.else.i.i.i.if.then_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leaf_copy_dir_entries, ptr noundef nonnull @.str.39, i32 noundef 33, ptr noundef nonnull @__func__.leaf_copy_dir_entries) #8
  unreachable

do.end:                                           ; preds = %is_direntry_le_ih.exit.do.end_crit_edge, %if.else.i.i.i.do.end_crit_edge
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 3
  %11 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %ih_item_location.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_count)
  %tobool3.not = icmp eq i32 %copy_count, 0
  br i1 %tobool3.not, label %do.end.if.end19_crit_edge, label %if.then4

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from)
  %tobool5.not = icmp eq i32 %from, 0
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %sub = add i32 %from, -1
  %deh_location = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %sub, i32 3
  %ih_item_len.sink = select i1 %tobool5.not, ptr %ih_item_len, ptr %deh_location
  %14 = ptrtoint ptr %ih_item_len.sink to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ih_item_len.sink, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %cond = zext i16 %16 to i32
  %sub7 = add i32 %sub, %copy_count
  %deh_location9 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %sub7, i32 3
  %17 = ptrtoint ptr %deh_location9 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %deh_location9, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv10 = zext i16 %19 to i32
  %sub11 = sub nsw i32 %cond, %conv10
  %add.ptr18 = getelementptr i8, ptr %add.ptr.i, i32 %conv10
  br label %if.end19

if.end19:                                         ; preds = %if.then4, %do.end.if.end19_crit_edge
  %copy_records_len.0 = phi i32 [ %sub11, %if.then4 ], [ 0, %do.end.if.end19_crit_edge ]
  %records.0 = phi ptr [ %add.ptr18, %if.then4 ], [ null, %do.end.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %last_first)
  %cmp = icmp eq i32 %last_first, 1
  %b_data22 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %b_data22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data22, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %blk_nr_item, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool24.not = icmp eq i16 %23, 0
  br i1 %cmp, label %cond.end31.thread, label %cond.end31

cond.end31:                                       ; preds = %if.end19
  br i1 %tobool24.not, label %cond.end31.if.then47_crit_edge, label %lor.lhs.false

cond.end31.if.then47_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

cond.end31.thread:                                ; preds = %if.end19
  br i1 %tobool24.not, label %cond.end31.thread.if.then47_crit_edge, label %land.lhs.true43

cond.end31.thread.if.then47_crit_edge:            ; preds = %cond.end31.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

lor.lhs.false:                                    ; preds = %cond.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp35 = icmp eq i32 %last_first, 0
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false.cond.end94_crit_edge

lor.lhs.false.cond.end94_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end94

land.lhs.true:                                    ; preds = %lor.lhs.false
  br i1 %cmp.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %u.i.i.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %conv.i.i = zext i32 %26 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %u.i.i.i, align 1
  %29 = and i64 %28, -241
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #5
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i169 = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %30, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i.i169)
  %cmp38 = icmp eq i64 %cond.i.i169, 1
  br i1 %cmp38, label %le_ih_k_offset.exit.if.then47_crit_edge, label %cond.true88

le_ih_k_offset.exit.if.then47_crit_edge:          ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

land.lhs.true43:                                  ; preds = %cond.end31.thread
  %31 = ptrtoint ptr %b_data22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data22, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 24
  %call45 = tail call i32 @comp_short_le_keys(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true43.cond.end94_crit_edge, label %land.lhs.true43.if.then47_crit_edge

land.lhs.true43.if.then47_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

land.lhs.true43.cond.end94_crit_edge:             ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end94

if.then47:                                        ; preds = %land.lhs.true43.if.then47_crit_edge, %le_ih_k_offset.exit.if.then47_crit_edge, %cond.end31.thread.if.then47_crit_edge, %cond.end31.if.then47_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_ih) #5
  %33 = getelementptr inbounds %struct.reiserfs_key, ptr %new_ih, i32 0, i32 2
  %34 = getelementptr inbounds %struct.item_head, ptr %new_ih, i32 0, i32 1
  %35 = getelementptr inbounds %struct.item_head, ptr %new_ih, i32 0, i32 2
  %36 = getelementptr inbounds %struct.item_head, ptr %new_ih, i32 0, i32 4
  %37 = getelementptr inbounds i8, ptr %new_ih, i32 20
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4
  %39 = call ptr @memcpy(ptr %new_ih, ptr %arrayidx.i, i32 16)
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %36, align 2
  %mul = shl i32 %copy_count, 4
  %add54 = add i32 %copy_records_len.0, %mul
  %conv55 = trunc i32 %add54 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv55)
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %35, align 2
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %34, align 4
  br i1 %cmp, label %if.then64, label %cond.false79.critedge

if.then64:                                        ; preds = %if.then47
  %u65 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 1
  %44 = ptrtoint ptr %u65 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %u65, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv66 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv66, i32 %from)
  %cmp67 = icmp sgt i32 %conv66, %from
  br i1 %cmp67, label %set_le_ih_k_offset.exit, label %if.then64.if.end73_crit_edge

if.then64.if.end73_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

set_le_ih_k_offset.exit:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx70 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %from
  %47 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx70, align 1
  br label %if.end73

if.end73:                                         ; preds = %set_le_ih_k_offset.exit, %if.then64.if.end73_crit_edge
  %storemerge = phi i32 [ %48, %set_le_ih_k_offset.exit ], [ -1, %if.then64.if.end73_crit_edge ]
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %33, align 4
  %k_uniqueness.i = getelementptr inbounds %struct.offset_v1, ptr %33, i32 0, i32 1
  %50 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -201261056, ptr %k_uniqueness.i, align 4
  br label %cond.end83

cond.false79.critedge:                            ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %b_data80 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %b_data80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data80, align 4
  %blk_nr_item81 = getelementptr inbounds %struct.block_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %blk_nr_item81 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %blk_nr_item81, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %conv82 = zext i16 %55 to i32
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false79.critedge, %if.end73
  %cond84 = phi i32 [ %conv82, %cond.false79.critedge ], [ 0, %if.end73 ]
  call void @leaf_insert_into_buf(ptr noundef %dest_bi, i32 noundef %cond84, ptr noundef nonnull %new_ih, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_ih) #5
  br label %if.end98

cond.true88:                                      ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %b_data22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data22, align 4
  %blk_nr_item90 = getelementptr inbounds %struct.block_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %blk_nr_item90 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %blk_nr_item90, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv91 = zext i16 %60 to i32
  %sub92 = add nsw i32 %conv91, -1
  br label %cond.end94

cond.end94:                                       ; preds = %cond.true88, %land.lhs.true43.cond.end94_crit_edge, %lor.lhs.false.cond.end94_crit_edge
  %cond95 = phi i32 [ %sub92, %cond.true88 ], [ 0, %lor.lhs.false.cond.end94_crit_edge ], [ 0, %land.lhs.true43.cond.end94_crit_edge ]
  %mul96 = shl i32 %copy_count, 4
  %add97 = add i32 %copy_records_len.0, %mul96
  tail call void @leaf_paste_in_buffer(ptr noundef %dest_bi, i32 noundef %cond95, i32 noundef 65535, i32 noundef %add97, ptr noundef %records.0, i32 noundef 0)
  br label %if.end98

if.end98:                                         ; preds = %cond.end94, %cond.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp99 = icmp eq i32 %last_first, 0
  br i1 %cmp99, label %cond.true111, label %if.end98.cond.end116_crit_edge

if.end98.cond.end116_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end116

cond.true111:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %b_data102 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %b_data102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data102, align 4
  %blk_nr_item103 = getelementptr inbounds %struct.block_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %blk_nr_item103 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %blk_nr_item103, align 2
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %conv104 = zext i16 %65 to i32
  %sub105 = add nsw i32 %conv104, -1
  %add.ptr.i.i183 = getelementptr i8, ptr %62, i32 24
  %arrayidx.i184 = getelementptr %struct.item_head, ptr %add.ptr.i.i183, i32 %sub105
  %u113 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i184, i32 0, i32 1
  %66 = ptrtoint ptr %u113 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %u113, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67)
  %conv114 = zext i16 %68 to i32
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true111, %if.end98.cond.end116_crit_edge
  %cond108196 = phi i32 [ %sub105, %cond.true111 ], [ 0, %if.end98.cond.end116_crit_edge ]
  %cond117 = phi i32 [ %conv114, %cond.true111 ], [ 0, %if.end98.cond.end116_crit_edge ]
  %add.ptr118 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %from
  %mul119 = shl i32 %copy_count, 4
  %add120 = add i32 %copy_records_len.0, %mul119
  call void @leaf_paste_entries(ptr noundef %dest_bi, i32 noundef %cond108196, i32 noundef %cond117, i32 noundef %copy_count, ptr noundef %add.ptr118, ptr noundef %records.0, i32 noundef %add120)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_le_keys(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !60, !62, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !114, !116, !118, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/lbalance.c", i32 756, i32 4}
!2 = !{ptr @__func__.leaf_shift_left, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/lbalance.c", i32 761, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/reiserfs/lbalance.c", i32 762, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/lbalance.c", i32 776, i32 4}
!10 = !{ptr @__func__.leaf_delete_items, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/lbalance.c", i32 833, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/reiserfs/lbalance.c", i32 834, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/lbalance.c", i32 836, i32 2}
!17 = !{ptr @__func__.leaf_insert_into_buf, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/lbalance.c", i32 919, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/reiserfs/lbalance.c", i32 922, i32 2}
!22 = !{ptr @__func__.leaf_paste_in_buffer, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/lbalance.c", i32 994, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/reiserfs/lbalance.c", i32 1003, i32 16}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/reiserfs/lbalance.c", i32 1004, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.leaf_cut_from_buffer, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/lbalance.c", i32 1166, i32 4}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/reiserfs/lbalance.c", i32 1174, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/reiserfs/lbalance.c", i32 1175, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/reiserfs/lbalance.c", i32 1196, i32 5}
!39 = !{ptr @__func__.leaf_paste_entries, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/lbalance.c", i32 1337, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/lbalance.c", i32 1338, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/lbalance.c", i32 1411, i32 5}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/reiserfs/lbalance.c", i32 1417, i32 5}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.leaf_define_dest_src_infos, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/lbalance.c", i32 703, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/reiserfs/lbalance.c", i32 706, i32 2}
!55 = !{ptr @__func__.leaf_copy_items, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/reiserfs/lbalance.c", i32 528, i32 2}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/reiserfs/lbalance.c", i32 529, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/reiserfs/lbalance.c", i32 531, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/reiserfs/lbalance.c", i32 534, i32 2}
!64 = !{ptr @__func__.leaf_copy_boundary_item, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/reiserfs/lbalance.c", i32 161, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/lbalance.c", i32 187, i32 6}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/reiserfs/lbalance.c", i32 204, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/reiserfs/lbalance.c", i32 249, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/lbalance.c", i32 257, i32 3}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/reiserfs/lbalance.c", i32 269, i32 3}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/reiserfs/lbalance.c", i32 276, i32 4}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/reiserfs/lbalance.c", i32 284, i32 4}
!82 = !{ptr @__func__.leaf_copy_dir_entries, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/lbalance.c", i32 33, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @__func__.leaf_copy_items_entirely, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/reiserfs/lbalance.c", i32 322, i32 2}
!87 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/reiserfs/lbalance.c", i32 324, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/reiserfs/lbalance.c", i32 327, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/lbalance.c", i32 328, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/reiserfs/lbalance.c", i32 332, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/reiserfs/lbalance.c", i32 350, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/reiserfs/lbalance.c", i32 375, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/reiserfs/lbalance.c", i32 397, i32 3}
!102 = !{ptr @__func__.leaf_item_bottle, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/reiserfs/lbalance.c", i32 421, i32 2}
!104 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/reiserfs/lbalance.c", i32 445, i32 5}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/reiserfs/lbalance.c", i32 452, i32 4}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/reiserfs/lbalance.c", i32 491, i32 5}
!111 = !{ptr @__func__.leaf_cut_entries, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/reiserfs/lbalance.c", i32 1086, i32 2}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/reiserfs/lbalance.c", i32 1087, i32 2}
!116 = !{ptr @__func__.leaf_delete_items_entirely, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/lbalance.c", i32 1250, i32 2}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/reiserfs/lbalance.c", i32 1251, i32 2}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/reiserfs/lbalance.c", i32 1259, i32 2}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.peeled.count", i32 1}
