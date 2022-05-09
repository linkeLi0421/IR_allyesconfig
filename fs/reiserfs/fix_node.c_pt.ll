; ModuleID = '/llk/IR_all_yes/fs/reiserfs/fix_node.c_pt.bc'
source_filename = "../fs/reiserfs/fix_node.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tree_balance = type { i32, i32, ptr, ptr, ptr, [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], [2 x i32], i32, i32, [7 x ptr], ptr, i32, ptr, i32, %struct.in_core_key }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.72, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.72 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_key = type { i32, i32, %union.anon.70 }
%union.anon.70 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtual_node = type { ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr }
%struct.disk_child = type { i32, i16, i16 }
%struct.item_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.offset_v1 = type { i32, i32 }
%struct.virtual_item = type { i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.__reiserfs_blocknr_hint = type { ptr, i64, %struct.in_core_key, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%union.anon.71 = type { i16 }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fix_nodes\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-8305\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"there is pending do_balance\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-8320\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"S[0] (%b %z) is not uptodate at the beginning of fix_nodes or not in tree (mode %c)\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-8330\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Incorrect item number %d (in S0 - %d) in case of insert\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-8335\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Incorrect item number(%d); mode = %c insert_size = %d\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-8340\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Incorrect mode of operation\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"(!(tb->blknum[h] != 1)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8350: creating new empty root\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"(!(h == 5 - 1)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8355: attempt to create too high of a tree\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.get_direct_parent = private unnamed_addr constant [18 x i8] c"get_direct_parent\00", align 1
@.str.14 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(path_offset < 2 - 1)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8260: invalid offset in the path\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.check_balance = private unnamed_addr constant [14 x i8] c"check_balance\00", align 1
@.str.15 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"(!(mode == 'i' && !vn->vn_ins_ih)) at fs/reiserfs/fix_node.c:%i:%s: vs-8255: ins_ih can not be 0 in insert mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8210\00", [24 x i8] zeroinitializer }, align 32
@__func__.ip_check_balance = private unnamed_addr constant [17 x i8] c"ip_check_balance\00", align 1
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"S[0] can not be 0\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8215\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"incorrect return value of get_empty_nodes\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [165 x i8], [59 x i8] } { [165 x i8] c"(!(h && (tb->lnum[h] >= vn->vn_nr_item + 1 || tb->rnum[h] >= vn->vn_nr_item + 1))) at fs/reiserfs/fix_node.c:%i:%s: vs-8220: tree is not balanced on internal level\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [202 x i8], [54 x i8] } { [202 x i8] c"(!(!h && ((tb->lnum[h] >= vn->vn_nr_item && (tb->lbytes == -1)) || (tb->rnum[h] >= vn->vn_nr_item && (tb->rbytes == -1))))) at fs/reiserfs/fix_node.c:%i:%s: vs-8225: tree is not balanced on leaf level\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"(!(h && (tb->lnum[h] != 1 || tb->rnum[h] != 1 || lrnver != 1 || rnver != 2 || lnver != 2 || h != 1))) at fs/reiserfs/fix_node.c:%i:%s: vs-8230: bad h\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.get_parents = private unnamed_addr constant [12 x i8] c"get_parents\00", align 1
@.str.23 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"(!((curf && !B_IS_IN_TREE(curf)) || (curcf && !B_IS_IN_TREE(curcf)))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8195: FL (%b) or CFL (%b) is invalid\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"(!((curf && !B_IS_IN_TREE(curf)) || (curcf && !B_IS_IN_TREE(curcf)))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8205: FR (%b) or CFR (%b) is invalid\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.get_far_parent = private unnamed_addr constant [15 x i8] c"get_far_parent\00", align 1
@.str.25 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"(!(counter < 2)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8180: invalid path length\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [196 x i8], [60 x i8] } { [196 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((*pcom_father)->b_data)))->blk_level))))) <= 1)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8185: (%b %z) level too small\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [196 x i8], [60 x i8] } { [196 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((*pfather)->b_data)))->blk_level))))) != h + 1)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8190: (%b %z) level too small\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"(!(s_path_to_neighbor_father.path_length < 2)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8192: path length is too small\0A\00", [44 x i8] zeroinitializer }, align 32
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8030\00", [24 x i8] zeroinitializer }, align 32
@__func__.create_virtual_node = private unnamed_addr constant [20 x i8] c"create_virtual_node\00", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"virtual node space consumed\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"(!(vn->vn_ins_ih == ((void *)0))) at fs/reiserfs/fix_node.c:%i:%s: vs-8040: item header of inserted item is not specified\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8045\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rdkey %k, affected item==%d (mode==%c) Must be %c\00", [46 x i8] zeroinitializer }, align 32
@__func__.old_item_num = private unnamed_addr constant [13 x i8] c"old_item_num\00", align 1
@.str.34 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"(!(new_num == 0)) at fs/reiserfs/fix_node.c:%i:%s: vs-8005: for INSERT mode and item number of inserted item\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"(!(mode != 'd')) at fs/reiserfs/fix_node.c:%i:%s: vs-8010: old_item_num: mode must be M_DELETE (mode = '%c'\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.check_left = private unnamed_addr constant [11 x i8] c"check_left\00", align 1
@.str.36 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"(!(cur_free < 0)) at fs/reiserfs/fix_node.c:%i:%s: vs-8050: cur_free (%d) < 0\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"(!(!(((tb->tb_path)->path_elements + (tb->tb_path->path_length - ((0) + 1)))->pe_buffer))) at fs/reiserfs/fix_node.c:%i:%s: vs-8055: parent does not exist or invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"(!(vn->vn_mode == 'i' || vn->vn_mode == 'p')) at fs/reiserfs/fix_node.c:%i:%s: vs-8055: invalid mode or balance condition failed\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.check_right = private unnamed_addr constant [12 x i8] c"check_right\00", align 1
@.str.39 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"(!(cur_free < 0)) at fs/reiserfs/fix_node.c:%i:%s: vs-8070: cur_free < 0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"(!(!(((tb->tb_path)->path_elements + (tb->tb_path->path_length - ((0) + 1)))->pe_buffer))) at fs/reiserfs/fix_node.c:%i:%s: vs-8075: parent does not exist or invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"(!(vn->vn_mode == 'i' || vn->vn_mode == 'p')) at fs/reiserfs/fix_node.c:%i:%s: vs-8080: invalid mode or balance condition failed\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.get_num_ver = private unnamed_addr constant [12 x i8] c"get_num_ver\00", align 1
@.str.42 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"(!(tb->insert_size[h] < 0 || (mode != 'i' && mode != 'p'))) at fs/reiserfs/fix_node.c:%i:%s: vs-8100: insert_size < 0 in overflow\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"(!(needed_nodes > 3)) at fs/reiserfs/fix_node.c:%i:%s: vs-8105: too many nodes are needed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"(!(is_direct_le_ih(vi->vi_ih))) at fs/reiserfs/fix_node.c:%i:%s: vs-8110: direct item length is %d. It can not be longer than %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8111\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"split_item_position is out of range\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8115\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not directory or indirect item\00", [33 x i8] zeroinitializer }, align 32
@__func__.is_left_neighbor_in_cache = private unnamed_addr constant [26 x i8] c"is_left_neighbor_in_cache\00", align 1
@.str.49 = internal constant { [203 x i8], [53 x i8] } { [203 x i8] c"(!(!father || !B_IS_IN_TREE(father) || !B_IS_IN_TREE(tb->FL[h]) || !buffer_uptodate(father) || !buffer_uptodate(tb->FL[h]))) at fs/reiserfs/fix_node.c:%i:%s: vs-8165: F[h] (%b) or FL[h] (%b) is invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"(!(buffer_uptodate(left) && !B_IS_IN_TREE(left))) at fs/reiserfs/fix_node.c:%i:%s: vs-8170: left neighbor (%b %z) is not in the tree\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.dc_check_balance = private unnamed_addr constant [17 x i8] c"dc_check_balance\00", align 1
@.str.51 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"(!(!((((tb->tb_path)->path_elements + (tb->tb_path->path_length - (h)))->pe_buffer)))) at fs/reiserfs/fix_node.c:%i:%s: vs-8250: S is not initialized\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.dc_check_balance_internal = private unnamed_addr constant [26 x i8] c"dc_check_balance_internal\00", align 1
@.str.52 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"(!(!tb->FL[h] && !tb->FR[h])) at fs/reiserfs/fix_node.c:%i:%s: vs-8235: trying to borrow for root\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.dc_check_balance_leaf = private unnamed_addr constant [22 x i8] c"dc_check_balance_leaf\00", align 1
@.str.53 = internal constant { [220 x i8], [36 x i8] } { [220 x i8] c"(!(-levbytes >= maxsize - (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((S0)->b_data)))->blk_free_space))))))) at fs/reiserfs/fix_node.c:%i:%s: vs-8240: attempt to create empty buffer tree\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"(!(!tb->FL[h])) at fs/reiserfs/fix_node.c:%i:%s: vs-8245: dc_check_balance_leaf: FL[h] must exist\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.are_leaves_removable = private unnamed_addr constant [21 x i8] c"are_leaves_removable\00", align 1
@.str.55 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((S0)->b_data)))->blk_nr_item))))) != 1)) at fs/reiserfs/fix_node.c:%i:%s: vs-8125: item number must be 1: it is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"(!(le_ih_k_offset(ih) == 1)) at fs/reiserfs/fix_node.c:%i:%s: vs-8130: first directory item can not be removed until directory is not empty\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.get_neighbors = private unnamed_addr constant [14 x i8] c"get_neighbors\00", align 1
@.str.57 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"(!(bh == tb->FL[h] && !(((tb->tb_path)->path_elements + (path_offset))->pe_position))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8270: invalid position in the parent\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [597 x i8], [139 x i8] } { [597 x i8] c"(!(!B_IS_IN_TREE(tb->FL[h]) || child_position > (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->FL[h])->b_data)))->blk_nr_item))))) || (((__u32)__builtin_bswap32((__u32)(( __u32)(__le32)((((struct disk_child *)((tb->FL[h])->b_data + (sizeof(struct block_head)) + (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->FL[h])->b_data)))->blk_nr_item))))) * (sizeof(struct reiserfs_key)) + (sizeof(struct disk_child)) * (child_position))))->dc_block_number))))) != bh->b_blocknr)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8275: invalid parent\0A\00", [139 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"(!(!B_IS_IN_TREE(bh))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8280: invalid child\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [604 x i8], [132 x i8] } { [604 x i8] c"(!(!h && (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((bh)->b_data)))->blk_free_space))))) != ((int)( (bh)->b_size - (sizeof(struct block_head)) )) - ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct disk_child *)((tb->FL[0])->b_data + (sizeof(struct block_head)) + (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->FL[0])->b_data)))->blk_nr_item))))) * (sizeof(struct reiserfs_key)) + (sizeof(struct disk_child)) * (child_position))))->dc_size)))))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8290: invalid child size of left neighbor\0A\00", [132 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [274 x i8], [78 x i8] } { [274 x i8] c"(!(bh == tb->FR[h] && (((tb->tb_path)->path_elements + (path_offset))->pe_position) >= (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((bh)->b_data)))->blk_nr_item))))))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8295: invalid position in the parent\0A\00", [78 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [621 x i8], [147 x i8] } { [621 x i8] c"(!(!h && (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((bh)->b_data)))->blk_free_space))))) != ((int)( (bh)->b_size - (sizeof(struct block_head)) )) - ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct disk_child *)((tb->FR[0])->b_data + (sizeof(struct block_head)) + (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->FR[0])->b_data)))->blk_nr_item))))) * (sizeof(struct reiserfs_key)) + (sizeof(struct disk_child)) * (child_position))))->dc_size)))))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8300: invalid child size of right neighbor (%d != %d - %d)\0A\00", [147 x i8] zeroinitializer }, align 32
@__func__.get_empty_nodes = private unnamed_addr constant [16 x i8] c"get_empty_nodes\00", align 1
@.str.63 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"(!(!*blocknr)) at fs/reiserfs/fix_node.c:%i:%s: PAP-8135: reiserfs_new_blocknrs failed when got new blocks\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [177 x i8], [47 x i8] } { [177 x i8] c"(!(buffer_dirty(new_bh) || buffer_journaled(new_bh) || buffer_journal_dirty(new_bh))) at fs/reiserfs/fix_node.c:%i:%s: PAP-8140: journaled or dirty buffer %b for the new block\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"(!(tb->FEB[tb->cur_blknum])) at fs/reiserfs/fix_node.c:%i:%s: PAP-8141: busy slot for new buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FL\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFL\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FR\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFR\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-8200\00", [18 x i8] zeroinitializer }, align 32
@__func__.wait_tb_buffers_until_unlocked = private unnamed_addr constant [31 x i8] c"wait_tb_buffers_until_unlocked\00", align 1
@.str.74 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"too many iterations waiting for buffer to unlock (%b)\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-1\00", [24 x i8] zeroinitializer }, align 32
@__func__.tb_buffer_sanity_check = private unnamed_addr constant [23 x i8] c"tb_buffer_sanity_check\00", align 1
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"negative or zero reference counter for buffer %s[%d] (%b)\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-2\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"buffer is not up to date %s[%d] (%b)\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-3\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"buffer is not in tree %s[%d] (%b)\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-4\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"buffer has wrong device %s[%d] (%b)\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-5\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"buffer has wrong blocksize %s[%d] (%b)\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jmacd-6\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"buffer block number too high %s[%d] (%b)\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 99, i64 100, i64 105, i64 112]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 99, i64 112]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 105]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 99, i64 112]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 105, i64 112]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 16, i64 105, i64 112]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 105, i64 112]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2587, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2588, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2593, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2602, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2612, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2620, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2672, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2686, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2100, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2078, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1379, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1391, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1458, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1462, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1638, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1227, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1262, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1044, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1101, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1152, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1154, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 117, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 135, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 178, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 38, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 44, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 201, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 218, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 227, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 287, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 304, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 313, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 417, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 461, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 490, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 532, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 571, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 973, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 993, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2033, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1892, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1956, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1990, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 716, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 742, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2167, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2187, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2191, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2192, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2207, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2229, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 887, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 891, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 898, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2389, i32 13 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2412, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2421, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2430, i32 15 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2443, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2452, i32 15 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2461, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2491, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2320, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2325, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2330, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2335, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2340, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [26 x i8] c"../fs/reiserfs/fix_node.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 2345, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 202, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 203, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 597, i32 736, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 274, i32 352, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 621, i32 768, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fix_nodes(i32 noundef %op_mode, ptr noundef %tb, ptr noundef %ins_ih, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %snum012.i.i = alloca [40 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
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
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %3, i32 1
  %4 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pe_position, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %8 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_fix_nodes = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %s_fix_nodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fix_nodes, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %s_fix_nodes, align 4
  %14 = load ptr, ptr %tb_path, align 8
  %pos_in_item9 = getelementptr inbounds %struct.treepath, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %pos_in_item9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pos_in_item9, align 4
  %17 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i438 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i438 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i438, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %19, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #8
  %20 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %s_generation_counter, align 4
  %fs_gen = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %22 = ptrtoint ptr %fs_gen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fs_gen, align 8
  %23 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i439 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i439 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i439, align 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call16 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %24, ptr noundef %28, i32 noundef 1) #8
  %transaction_handle = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %29 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transaction_handle, align 4
  %31 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i440 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i440 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i440, align 16
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call20 = tail call i32 @journal_mark_dirty(ptr noundef %30, ptr noundef %36) #8
  %37 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i441 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i441 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i441, align 16
  %s_generation_counter23 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %40, i32 0, i32 14
  %call.i.i434 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter23, i32 noundef 4) #8
  %41 = ptrtoint ptr %s_generation_counter23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %s_generation_counter23, align 4
  %43 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.not = icmp eq i32 %42, %44
  br i1 %cmp.not, label %if.end, label %entry.cleanup277_crit_edge

entry.cleanup277_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

if.end:                                           ; preds = %entry
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %7, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %if.then27

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then27:                                        ; preds = %if.end
  %48 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tb_sb, align 8
  %call29 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %49) #8
  tail call void @__wait_on_buffer(ptr noundef %7) #8
  %50 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tb_sb, align 8
  tail call void @reiserfs_write_lock_nested(ptr noundef %51, i32 noundef %call29) #8
  %52 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i442 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i442 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i442, align 16
  %s_generation_counter33 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %55, i32 0, i32 14
  %call.i.i435 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter33, i32 noundef 4) #8
  %56 = ptrtoint ptr %s_generation_counter33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %s_generation_counter33, align 4
  %58 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp36.not = icmp eq i32 %57, %59
  br i1 %cmp36.not, label %if.then27.if.end39_crit_edge, label %if.then27.cleanup277_crit_edge

if.then27.cleanup277_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39:                                         ; preds = %if.then27.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %60 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i443 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i443 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i443, align 16
  %cur_tb = getelementptr inbounds %struct.reiserfs_sb_info, ptr %63, i32 0, i32 40
  %64 = ptrtoint ptr %cur_tb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_tb, align 4
  %tobool42.not = icmp eq ptr %65, null
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_cur_tb(ptr noundef nonnull @.str) #8
  %66 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %67, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #11
  unreachable

if.end45:                                         ; preds = %if.end39
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %7, align 4
  %and1.i.i436 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i436)
  %tobool47.not = icmp eq i32 %and1.i.i436, 0
  br i1 %tobool47.not, label %if.end45.if.then50_crit_edge, label %lor.lhs.false

if.end45.if.then50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.end45
  %call48 = tail call i32 @B_IS_IN_TREE(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false.if.then50_crit_edge, label %if.end52

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.end45.if.then50_crit_edge
  %70 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %71, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef %7, i32 noundef %op_mode) #11
  unreachable

if.end52:                                         ; preds = %lor.lhs.false
  %72 = zext i32 %op_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op_mode, label %sw.default [
    i32 105, label %sw.bb
    i32 112, label %if.end52.sw.bb63_crit_edge
    i32 100, label %if.end52.sw.bb63_crit_edge804
    i32 99, label %if.end52.sw.bb63_crit_edge805
  ]

if.end52.sw.bb63_crit_edge805:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

if.end52.sw.bb63_crit_edge804:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

if.end52.sw.bb63_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb63

sw.bb:                                            ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp53 = icmp slt i32 %5, 1
  br i1 %cmp53, label %sw.bb.if.then57_crit_edge, label %lor.lhs.false54

sw.bb.if.then57_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false54:                                  ; preds = %sw.bb
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %73 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %blk_nr_item, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %conv = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp55 = icmp ugt i32 %5, %conv
  br i1 %cmp55, label %lor.lhs.false54.if.then57_crit_edge, label %lor.lhs.false54.sw.epilog_crit_edge

lor.lhs.false54.sw.epilog_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %sw.bb.if.then57_crit_edge
  %78 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tb_sb, align 8
  %b_data59 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %80 = ptrtoint ptr %b_data59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data59, align 4
  %blk_nr_item60 = getelementptr inbounds %struct.block_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %blk_nr_item60 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %blk_nr_item60, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv61 = zext i16 %84 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %79, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %conv61) #11
  unreachable

sw.bb63:                                          ; preds = %if.end52.sw.bb63_crit_edge, %if.end52.sw.bb63_crit_edge804, %if.end52.sw.bb63_crit_edge805
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp64 = icmp slt i32 %5, 0
  br i1 %cmp64, label %sw.bb63.if.then72_crit_edge, label %lor.lhs.false66

sw.bb63.if.then72_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false66:                                  ; preds = %sw.bb63
  %b_data67 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %85 = ptrtoint ptr %b_data67 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data67, align 4
  %blk_nr_item68 = getelementptr inbounds %struct.block_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %blk_nr_item68 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %blk_nr_item68, align 2
  %89 = tail call i16 @llvm.bswap.i16(i16 %88)
  %conv69 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv69)
  %cmp70.not = icmp ult i32 %5, %conv69
  br i1 %cmp70.not, label %lor.lhs.false66.sw.epilog_crit_edge, label %lor.lhs.false66.if.then72_crit_edge

lor.lhs.false66.if.then72_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false66.sw.epilog_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then72:                                        ; preds = %lor.lhs.false66.if.then72_crit_edge, %sw.bb63.if.then72_crit_edge
  tail call void (ptr, ...) @print_block(ptr noundef %7, i32 noundef 0, i32 noundef -1, i32 noundef -1) #8
  %90 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tb_sb, align 8
  %insert_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %92 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %insert_size, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %91, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %op_mode, i32 noundef %93) #11
  unreachable

sw.default:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %95, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #11
  unreachable

sw.epilog:                                        ; preds = %lor.lhs.false66.sw.epilog_crit_edge, %lor.lhs.false54.sw.epilog_crit_edge
  %96 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tb_sb, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %99, -24
  %div.i.i = udiv i32 %sub.i.i, 25
  %sub2.i.i = add i32 %99, -48
  %div3.i.i = udiv i32 %sub2.i.i, 17
  %mul.i.i = mul nuw i32 %div.i.i, 24
  %sub4.i.i = shl nuw nsw i32 %div3.i.i, 1
  %add.i.i = add nuw nsw i32 %sub4.i.i, 30
  %100 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 %add.i.i) #8
  %add6.i.i = add nuw i32 %100, 28
  %vn_buf_size.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 32
  %101 = ptrtoint ptr %vn_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vn_buf_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %102)
  %cmp.i = icmp sgt i32 %add6.i.i, %102
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.get_mem_for_virtual_node.exit_crit_edge

sw.epilog.get_mem_for_virtual_node.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mem_for_virtual_node.exit

if.then.i:                                        ; preds = %sw.epilog
  %vn_buf.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 31
  %103 = ptrtoint ptr %vn_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vn_buf.i, align 4
  %tobool.not.i = icmp eq ptr %104, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %104) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %105 = ptrtoint ptr %vn_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add6.i.i, ptr %vn_buf_size.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i.i, i32 noundef 10784) #12
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end16.i

if.then7.i:                                       ; preds = %if.end.i
  %106 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tb_path, align 8
  tail call void @pathrelse(ptr noundef %107) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit57.i.i.for.body.i.i_crit_edge, %if.then7.i
  %i.058.i.i = phi i32 [ 0, %if.then7.i ], [ %inc.i.i, %brelse.exit57.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %i.058.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %109) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %arrayidx1.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %i.058.i.i
  %110 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i43.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i43.i.i, label %brelse.exit.i.i.brelse.exit45.i.i_crit_edge, label %if.then.i44.i.i

brelse.exit.i.i.brelse.exit45.i.i_crit_edge:      ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit45.i.i

if.then.i44.i.i:                                  ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %111) #8
  br label %brelse.exit45.i.i

brelse.exit45.i.i:                                ; preds = %if.then.i44.i.i, %brelse.exit.i.i.brelse.exit45.i.i_crit_edge
  %arrayidx2.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %i.058.i.i
  %112 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i46.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i46.i.i, label %brelse.exit45.i.i.brelse.exit48.i.i_crit_edge, label %if.then.i47.i.i

brelse.exit45.i.i.brelse.exit48.i.i_crit_edge:    ; preds = %brelse.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit48.i.i

if.then.i47.i.i:                                  ; preds = %brelse.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %113) #8
  br label %brelse.exit48.i.i

brelse.exit48.i.i:                                ; preds = %if.then.i47.i.i, %brelse.exit45.i.i.brelse.exit48.i.i_crit_edge
  %arrayidx3.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %i.058.i.i
  %114 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx3.i.i, align 4
  %tobool.not.i49.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i49.i.i, label %brelse.exit48.i.i.brelse.exit51.i.i_crit_edge, label %if.then.i50.i.i

brelse.exit48.i.i.brelse.exit51.i.i_crit_edge:    ; preds = %brelse.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit51.i.i

if.then.i50.i.i:                                  ; preds = %brelse.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %115) #8
  br label %brelse.exit51.i.i

brelse.exit51.i.i:                                ; preds = %if.then.i50.i.i, %brelse.exit48.i.i.brelse.exit51.i.i_crit_edge
  %arrayidx4.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %i.058.i.i
  %116 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i52.i.i = icmp eq ptr %117, null
  br i1 %tobool.not.i52.i.i, label %brelse.exit51.i.i.brelse.exit54.i.i_crit_edge, label %if.then.i53.i.i

brelse.exit51.i.i.brelse.exit54.i.i_crit_edge:    ; preds = %brelse.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit54.i.i

if.then.i53.i.i:                                  ; preds = %brelse.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %117) #8
  br label %brelse.exit54.i.i

brelse.exit54.i.i:                                ; preds = %if.then.i53.i.i, %brelse.exit51.i.i.brelse.exit54.i.i_crit_edge
  %arrayidx5.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %i.058.i.i
  %118 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool.not.i55.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i55.i.i, label %brelse.exit54.i.i.brelse.exit57.i.i_crit_edge, label %if.then.i56.i.i

brelse.exit54.i.i.brelse.exit57.i.i_crit_edge:    ; preds = %brelse.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit57.i.i

if.then.i56.i.i:                                  ; preds = %brelse.exit54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %119) #8
  br label %brelse.exit57.i.i

brelse.exit57.i.i:                                ; preds = %if.then.i56.i.i, %brelse.exit54.i.i.brelse.exit57.i.i_crit_edge
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %arrayidx.i.i, align 4
  %121 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %arrayidx1.i.i, align 4
  %122 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %arrayidx2.i.i, align 4
  %123 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %arrayidx3.i.i, align 4
  %124 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %arrayidx4.i.i, align 4
  %125 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx5.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.058.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %if.end8.i68.i, label %brelse.exit57.i.i.for.body.i.i_crit_edge

brelse.exit57.i.i.for.body.i.i_crit_edge:         ; preds = %brelse.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end8.i68.i:                                    ; preds = %brelse.exit57.i.i
  %call9.i67.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i.i, i32 noundef 3136) #12
  %tobool9.not.i = icmp eq ptr %call9.i67.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end8.i68.i.if.end12.i_crit_edge

if.end8.i68.i.if.end12.i_crit_edge:               ; preds = %if.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %vn_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %vn_buf_size.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i68.i.if.end12.i_crit_edge
  %127 = ptrtoint ptr %vn_buf.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call9.i67.i, ptr %vn_buf.i, align 4
  tail call void @schedule() #8
  br label %cleanup277

if.end16.i:                                       ; preds = %if.end.i
  %128 = ptrtoint ptr %vn_buf.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call9.i.i, ptr %vn_buf.i, align 4
  br i1 %tobool.not.i, label %if.end16.i.get_mem_for_virtual_node.exit_crit_edge, label %land.lhs.true.i

if.end16.i.get_mem_for_virtual_node.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mem_for_virtual_node.exit

land.lhs.true.i:                                  ; preds = %if.end16.i
  %129 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 33
  %131 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_generation_counter.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %132, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter.i, i32 noundef 4) #8
  %133 = ptrtoint ptr %s_generation_counter.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %s_generation_counter.i, align 4
  %135 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp21.not.i = icmp eq i32 %134, %136
  br i1 %cmp21.not.i, label %land.lhs.true.i.get_mem_for_virtual_node.exit_crit_edge, label %land.lhs.true.i.cleanup277_crit_edge

land.lhs.true.i.cleanup277_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

land.lhs.true.i.get_mem_for_virtual_node.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mem_for_virtual_node.exit

get_mem_for_virtual_node.exit:                    ; preds = %land.lhs.true.i.get_mem_for_virtual_node.exit_crit_edge, %if.end16.i.get_mem_for_virtual_node.exit_crit_edge, %sw.epilog.get_mem_for_virtual_node.exit_crit_edge
  %vn_buf.i451 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 31
  %tb_vn.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %conv.i453 = trunc i32 %op_mode to i16
  %conv2.i = trunc i32 %5 to i16
  %conv3.i = trunc i32 %16 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %op_mode)
  %cmp.i454 = icmp eq i32 %op_mode, 105
  %tobool.not.i455 = icmp eq ptr %ins_ih, null
  %or.cond.i = and i1 %cmp.i454, %tobool.not.i455
  %arrayidx.i1.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 0
  %arrayidx.i7.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 0
  %CFR.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %rkey.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %arrayidx.i81.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 0
  %arrayidx3.i.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 0
  %arrayidx4.i.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 0
  %lbytes.i.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %rbytes.i.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %s0num.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 21
  %add.ptr152.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 10
  %add.ptr188.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 20
  %add.ptr232.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 30
  %add.ptr129.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 5
  %add.ptr165.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 15
  %add.ptr201.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 25
  %add.ptr251.i.i = getelementptr inbounds i16, ptr %snum012.i.i, i32 35
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %get_mem_for_virtual_node.exit
  %h.0575 = phi i32 [ 0, %get_mem_for_virtual_node.exit ], [ %inc191.pre-phi, %for.inc.land.rhs_crit_edge ]
  %arrayidx84 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %h.0575
  %137 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool85.not = icmp eq i32 %138, 0
  br i1 %tobool85.not, label %land.rhs.do.body.i475.preheader_crit_edge, label %for.body

land.rhs.do.body.i475.preheader_crit_edge:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i475.preheader

for.body:                                         ; preds = %land.rhs
  %139 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tb_path, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %sub.i = sub i32 %142, %h.0575
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp.i444 = icmp slt i32 %sub.i, 3
  br i1 %cmp.i444, label %do.body.i, label %if.end17.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp2.i = icmp slt i32 %sub.i, 1
  br i1 %cmp2.i, label %if.then3.i, label %do.end.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_direct_parent, ptr noundef nonnull @.str.14, i32 noundef 2101, ptr noundef nonnull @__func__.get_direct_parent) #11
  unreachable

do.end.i:                                         ; preds = %do.body.i
  %add.ptr.i = getelementptr %struct.treepath, ptr %140, i32 0, i32 2, i32 2
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %b_blocknr.i, align 8
  %147 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i446 = getelementptr inbounds %struct.super_block, ptr %148, i32 0, i32 33
  %149 = ptrtoint ptr %s_fs_info.i.i446 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i.i446, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_rs.i, align 4
  %s_root_block.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %s_root_block.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %s_root_block.i, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154) #8
  %conv.i = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %conv.i)
  %cmp4.i = icmp eq i64 %146, %conv.i
  br i1 %cmp4.i, label %if.then6.i, label %do.end.i.if.else210_crit_edge

do.end.i.if.else210_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %140, i32 0, i32 2
  %sub9.i = add nsw i32 %sub.i, -1
  %add.ptr10.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub9.i
  %156 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %add.ptr10.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub9.i, i32 1
  %157 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %pe_position.i, align 4
  br label %if.end90

if.end17.i:                                       ; preds = %for.body
  %path_elements18.i = getelementptr inbounds %struct.treepath, ptr %140, i32 0, i32 2
  %sub20.i = add nsw i32 %sub.i, -1
  %add.ptr21.i = getelementptr %struct.path_element, ptr %path_elements18.i, i32 %sub20.i
  %158 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr21.i, align 4
  %call23.i = call i32 @B_IS_IN_TREE(ptr noundef %159) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i447 = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i447, label %if.end17.i.if.else210_crit_edge, label %if.end25.i

if.end17.i.if.else210_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end25.i:                                       ; preds = %if.end17.i
  %pe_position30.i = getelementptr %struct.path_element, ptr %path_elements18.i, i32 %sub20.i, i32 1
  %160 = ptrtoint ptr %pe_position30.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pe_position30.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %159, i32 0, i32 5
  %162 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %blk_nr_item.i, align 2
  %166 = call i16 @llvm.bswap.i16(i16 %165) #8
  %conv31.i = zext i16 %166 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %conv31.i)
  %cmp32.i = icmp sgt i32 %161, %conv31.i
  br i1 %cmp32.i, label %if.end25.i.if.else210_crit_edge, label %if.end35.i

if.end25.i.if.else210_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end35.i:                                       ; preds = %if.end25.i
  %add.ptr37.i = getelementptr i8, ptr %163, i32 24
  %mul.i = shl nuw nsw i32 %conv31.i, 4
  %add.ptr41.i = getelementptr i8, ptr %add.ptr37.i, i32 %mul.i
  %mul42.i = shl i32 %161, 3
  %add.ptr43.i = getelementptr i8, ptr %add.ptr41.i, i32 %mul42.i
  %167 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr43.i, align 4
  %169 = call i32 @llvm.bswap.i32(i32 %168) #8
  %conv44.i = zext i32 %169 to i64
  %add.ptr47.i = getelementptr %struct.path_element, ptr %path_elements18.i, i32 %sub.i
  %170 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr47.i, align 4
  %b_blocknr49.i = getelementptr inbounds %struct.buffer_head, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %b_blocknr49.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %b_blocknr49.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %173, i64 %conv44.i)
  %cmp50.not.i = icmp eq i64 %173, %conv44.i
  br i1 %cmp50.not.i, label %if.end53.i, label %if.end35.i.if.else210_crit_edge

if.end35.i.if.else210_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end53.i:                                       ; preds = %if.end35.i
  %174 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %159, align 4
  %176 = and i32 %175, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool55.not.i = icmp eq i32 %176, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end90_crit_edge, label %if.then56.i

if.end53.i.if.end90_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then56.i:                                      ; preds = %if.end53.i
  %177 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tb_sb, align 8
  %call58.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %178) #8
  call void @__wait_on_buffer(ptr noundef %159) #8
  %179 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_write_lock_nested(ptr noundef %180, i32 noundef %call58.i) #8
  %181 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i93.i = getelementptr inbounds %struct.super_block, ptr %182, i32 0, i32 33
  %183 = ptrtoint ptr %s_fs_info.i93.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i93.i, align 16
  %s_generation_counter.i448 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %184, i32 0, i32 14
  %call.i.i.i449 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter.i448, i32 noundef 4) #8
  %185 = ptrtoint ptr %s_generation_counter.i448 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %s_generation_counter.i448, align 4
  %187 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %188)
  %cmp63.not.i = icmp eq i32 %186, %188
  br i1 %cmp63.not.i, label %if.then56.i.if.end90_crit_edge, label %if.then56.i.if.else210_crit_edge

if.then56.i.if.else210_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.then56.i.if.end90_crit_edge:                   ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.end90:                                         ; preds = %if.then56.i.if.end90_crit_edge, %if.end53.i.if.end90_crit_edge, %if.then6.i
  %189 = ptrtoint ptr %vn_buf.i451 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %vn_buf.i451, align 4
  %191 = ptrtoint ptr %tb_vn.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %tb_vn.i, align 4
  %add.ptr.i452 = getelementptr %struct.virtual_node, ptr %190, i32 1
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %add.ptr.i452, ptr %190, align 4
  %vn_mode.i = getelementptr inbounds %struct.virtual_node, ptr %190, i32 0, i32 3
  %193 = ptrtoint ptr %vn_mode.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv.i453, ptr %vn_mode.i, align 4
  %vn_affected_item_num.i = getelementptr inbounds %struct.virtual_node, ptr %190, i32 0, i32 4
  %194 = ptrtoint ptr %vn_affected_item_num.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv2.i, ptr %vn_affected_item_num.i, align 2
  %vn_pos_in_item.i = getelementptr inbounds %struct.virtual_node, ptr %190, i32 0, i32 5
  %195 = ptrtoint ptr %vn_pos_in_item.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv3.i, ptr %vn_pos_in_item.i, align 4
  %vn_ins_ih.i = getelementptr inbounds %struct.virtual_node, ptr %190, i32 0, i32 6
  %196 = ptrtoint ptr %vn_ins_ih.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %ins_ih, ptr %vn_ins_ih.i, align 4
  %vn_data.i = getelementptr inbounds %struct.virtual_node, ptr %190, i32 0, i32 7
  %197 = ptrtoint ptr %vn_data.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %data, ptr %vn_data.i, align 4
  br i1 %or.cond.i, label %if.then.i456, label %do.end.i457

if.then.i456:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_balance, ptr noundef nonnull @.str.15, i32 noundef 2079, ptr noundef nonnull @__func__.check_balance) #11
  unreachable

do.end.i457:                                      ; preds = %if.end90
  %198 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp6.i = icmp sgt i32 %199, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %do.end.i457
  %200 = ptrtoint ptr %tb_vn.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tb_vn.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %snum012.i.i) #8
  %202 = call ptr @memset(ptr %snum012.i.i, i32 0, i32 80)
  %203 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 4
  %sub.i.i459 = sub i32 %206, %h.0575
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %sub.i.i459
  %207 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %208, null
  br i1 %tobool.not.i.i, label %if.then.i.i460, label %if.end6.i.i

if.then.i.i460:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h.0575)
  %tobool2.not.i.i = icmp eq i32 %h.0575, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i462

if.then3.i.i:                                     ; preds = %if.then.i.i460
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %210, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ip_check_balance, ptr noundef nonnull @.str.17) #11
  unreachable

if.end.i.i462:                                    ; preds = %if.then.i.i460
  %call.i.i461 = call fastcc i32 @get_empty_nodes(ptr noundef %tb, i32 noundef %h.0575) #8
  %211 = zext i32 %call.i.i461 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i.i461, label %sw.default.i.i [
    i32 0, label %set_parameters.exit.i.i
    i32 -3, label %if.end.i.i462.ip_check_balance.exit.i_crit_edge
    i32 -1, label %if.end.i.i462.ip_check_balance.exit.i_crit_edge806
  ]

if.end.i.i462.ip_check_balance.exit.i_crit_edge806: ; preds = %if.end.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_check_balance.exit.i

if.end.i.i462.ip_check_balance.exit.i_crit_edge:  ; preds = %if.end.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_check_balance.exit.i

set_parameters.exit.i.i:                          ; preds = %if.end.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %212 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %213 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %arrayidx3.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %214 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %arrayidx4.i.i.i, align 4
  %215 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %216, i32 0, i32 33
  %217 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %arrayidx33.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %218, i32 0, i32 27, i32 24, i32 %h.0575
  %219 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx33.i.i.i, align 4
  %add34.i.i.i = add i32 %220, -1
  store i32 %add34.i.i.i, ptr %arrayidx33.i.i.i, align 4
  %221 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i.i.i = getelementptr inbounds %struct.super_block, ptr %221, i32 0, i32 33
  %222 = ptrtoint ptr %s_fs_info.i72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_fs_info.i72.i.i.i, align 16
  %arrayidx39.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %223, i32 0, i32 27, i32 25, i32 %h.0575
  %224 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx39.i.i.i, align 4
  %add40.i.i.i = add i32 %225, -1
  store i32 %add40.i.i.i, ptr %arrayidx39.i.i.i, align 4
  br label %ip_check_balance.exit.i

sw.default.i.i:                                   ; preds = %if.end.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %227, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ip_check_balance, ptr noundef nonnull @.str.19) #11
  unreachable

if.end6.i.i:                                      ; preds = %if.then8.i
  %call7.i.i463 = call fastcc i32 @get_parents(ptr noundef %tb, i32 noundef %h.0575) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i463)
  %cmp.not.i.i = icmp eq i32 %call7.i.i463, 0
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %if.end6.i.i.ip_check_balance.exit.i_crit_edge

if.end6.i.i.ip_check_balance.exit.i_crit_edge:    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_check_balance.exit.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 5
  %228 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %b_data.i.i, align 4
  %blk_free_space.i.i = getelementptr inbounds %struct.block_head, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %blk_free_space.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %blk_free_space.i.i, align 2
  %232 = call i16 @llvm.bswap.i16(i16 %231) #8
  %conv.i.i = zext i16 %232 to i32
  %233 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i = getelementptr inbounds %struct.treepath, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %234, align 4
  %add.neg.i.i.i = xor i32 %h.0575, -1
  %sub.i.i.i = add i32 %236, %add.neg.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i, i32 %sub.i.i.i
  %237 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %add.ptr.i.i.i, align 4
  %cmp.i790.i.i = icmp eq ptr %238, null
  br i1 %cmp.i790.i.i, label %if.end9.i.i.get_lfree.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end9.i.i.get_lfree.exit.i.i_crit_edge:         ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end9.i.i
  %arrayidx.i791.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %239 = ptrtoint ptr %arrayidx.i791.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx.i791.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %240, null
  br i1 %cmp2.i.i.i, label %lor.lhs.false.i.i.i.lor.lhs.false.i800.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.lor.lhs.false.i800.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i800.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %cmp3.i.i.i = icmp eq ptr %238, %240
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i, i32 %sub.i.i.i, i32 1
  %241 = ptrtoint ptr %pe_position.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %pe_position.i.i.i, align 4
  %add13.i.i.i = shl i32 %242, 3
  %phi.bo.i.i.i = add i32 %add13.i.i.i, 8
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %f.0.i.i.i = phi ptr [ %238, %if.then4.i.i.i ], [ %240, %if.end.i.i.i.if.end14.i.i.i_crit_edge ]
  %order.0.i.i.i = phi i32 [ %phi.bo.i.i.i, %if.then4.i.i.i ], [ 0, %if.end.i.i.i.if.end14.i.i.i_crit_edge ]
  %b_size.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i.i, i32 0, i32 4
  %243 = ptrtoint ptr %b_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %b_size.i.i.i, align 8
  %sub15.i.i.i = add i32 %244, -24
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i.i, i32 0, i32 5
  %245 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr16.i.i.i = getelementptr i8, ptr %246, i32 24
  %blk_nr_item.i.i.i = getelementptr inbounds %struct.block_head, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %blk_nr_item.i.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %blk_nr_item.i.i.i, align 2
  %249 = call i16 @llvm.bswap.i16(i16 %248) #8
  %conv.i.i.i = zext i16 %249 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %add.ptr16.i.i.i, i32 %mul.i.i.i
  %add.ptr20.i.i.i = getelementptr i8, ptr %add.ptr18.i.i.i, i32 %order.0.i.i.i
  %dc_size.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr20.i.i.i, i32 0, i32 1
  %250 = ptrtoint ptr %dc_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %dc_size.i.i.i, align 4
  %252 = call i16 @llvm.bswap.i16(i16 %251) #8
  %conv21.i.i.i = zext i16 %252 to i32
  %sub22.i.i.i = sub i32 %sub15.i.i.i, %conv21.i.i.i
  br label %lor.lhs.false.i800.i.i

lor.lhs.false.i800.i.i:                           ; preds = %if.end14.i.i.i, %lor.lhs.false.i.i.i.lor.lhs.false.i800.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 0, %lor.lhs.false.i.i.i.lor.lhs.false.i800.i.i_crit_edge ], [ %sub22.i.i.i, %if.end14.i.i.i ]
  %arrayidx.i798.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %253 = ptrtoint ptr %arrayidx.i798.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx.i798.i.i, align 4
  %cmp2.i799.i.i = icmp eq ptr %254, null
  br i1 %cmp2.i799.i.i, label %lor.lhs.false.i800.i.i.get_lfree.exit.i.i_crit_edge, label %if.end.i802.i.i

lor.lhs.false.i800.i.i.get_lfree.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i800.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i.i

if.end.i802.i.i:                                  ; preds = %lor.lhs.false.i800.i.i
  %cmp3.i801.i.i = icmp eq ptr %238, %254
  br i1 %cmp3.i801.i.i, label %if.then4.i804.i.i, label %if.else.i.i.i

if.then4.i804.i.i:                                ; preds = %if.end.i802.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i803.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i, i32 %sub.i.i.i, i32 1
  %255 = ptrtoint ptr %pe_position.i803.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %pe_position.i803.i.i, align 4
  %sub13.i.i.i = add i32 %256, -1
  br label %if.end14.i814.i.i

if.else.i.i.i:                                    ; preds = %if.end.i802.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.i805.i.i = getelementptr inbounds %struct.buffer_head, ptr %254, i32 0, i32 5
  %257 = ptrtoint ptr %b_data.i805.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %b_data.i805.i.i, align 4
  %blk_nr_item.i806.i.i = getelementptr inbounds %struct.block_head, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %blk_nr_item.i806.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %blk_nr_item.i806.i.i, align 2
  %261 = call i16 @llvm.bswap.i16(i16 %260) #8
  %conv.i807.i.i = zext i16 %261 to i32
  br label %if.end14.i814.i.i

if.end14.i814.i.i:                                ; preds = %if.else.i.i.i, %if.then4.i804.i.i
  %f.0.i808.i.i = phi ptr [ %238, %if.then4.i804.i.i ], [ %254, %if.else.i.i.i ]
  %order.0.i809.i.i = phi i32 [ %sub13.i.i.i, %if.then4.i804.i.i ], [ %conv.i807.i.i, %if.else.i.i.i ]
  %b_size.i810.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i808.i.i, i32 0, i32 4
  %262 = ptrtoint ptr %b_size.i810.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %b_size.i810.i.i, align 8
  %sub15.i811.i.i = add i32 %263, -24
  %b_data16.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i808.i.i, i32 0, i32 5
  %264 = ptrtoint ptr %b_data16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %b_data16.i.i.i, align 4
  %add.ptr17.i.i.i = getelementptr i8, ptr %265, i32 24
  %blk_nr_item19.i.i.i = getelementptr inbounds %struct.block_head, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %blk_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %blk_nr_item19.i.i.i, align 2
  %268 = call i16 @llvm.bswap.i16(i16 %267) #8
  %conv20.i.i.i = zext i16 %268 to i32
  %mul.i812.i.i = shl nuw nsw i32 %conv20.i.i.i, 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %add.ptr17.i.i.i, i32 %mul.i812.i.i
  %mul22.i.i.i = shl i32 %order.0.i809.i.i, 3
  %add.ptr23.i.i.i = getelementptr i8, ptr %add.ptr21.i.i.i, i32 %mul22.i.i.i
  %dc_size.i813.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr23.i.i.i, i32 0, i32 1
  %269 = ptrtoint ptr %dc_size.i813.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %dc_size.i813.i.i, align 4
  %271 = call i16 @llvm.bswap.i16(i16 %270) #8
  %conv24.i.i.i = zext i16 %271 to i32
  %sub25.i.i.i = sub i32 %sub15.i811.i.i, %conv24.i.i.i
  br label %get_lfree.exit.i.i

get_lfree.exit.i.i:                               ; preds = %if.end14.i814.i.i, %lor.lhs.false.i800.i.i.get_lfree.exit.i.i_crit_edge, %if.end9.i.i.get_lfree.exit.i.i_crit_edge
  %retval.0.i873.i.i = phi i32 [ %retval.0.i.ph.i.i, %if.end14.i814.i.i ], [ %retval.0.i.ph.i.i, %lor.lhs.false.i800.i.i.get_lfree.exit.i.i_crit_edge ], [ 0, %if.end9.i.i.get_lfree.exit.i.i_crit_edge ]
  %retval.0.i815.i.i = phi i32 [ %sub25.i.i.i, %if.end14.i814.i.i ], [ 0, %lor.lhs.false.i800.i.i.get_lfree.exit.i.i_crit_edge ], [ 0, %if.end9.i.i.get_lfree.exit.i.i_crit_edge ]
  %vn_mode.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 3
  %272 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %vn_mode.i.i, align 4
  %sub.i818.i.i = sub i32 %236, %h.0575
  %add.ptr.i819.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i, i32 %sub.i818.i.i
  %274 = ptrtoint ptr %add.ptr.i819.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %add.ptr.i819.i.i, align 4
  %276 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx84, align 4
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %275, i32 0, i32 5
  %278 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %279, i32 24
  %arrayidx2.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h.0575
  %280 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool.not.i.i.i464 = icmp eq ptr %281, null
  br i1 %tobool.not.i.i.i464, label %get_lfree.exit.i.i.if.end.i823.i.i_crit_edge, label %if.then.i821.i.i

get_lfree.exit.i.i.if.end.i823.i.i_crit_edge:     ; preds = %get_lfree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i823.i.i

if.then.i821.i.i:                                 ; preds = %get_lfree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h.0575
  %282 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx5.i.i.i, align 4
  %b_data.i.i85.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %281, i32 0, i32 5
  %284 = ptrtoint ptr %b_data.i.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %b_data.i.i85.i.i.i, align 4
  %add.ptr.i.i86.i.i.i = getelementptr i8, ptr %285, i32 24
  %arrayidx.i.i.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i86.i.i.i, i32 %283
  br label %if.end.i823.i.i

if.end.i823.i.i:                                  ; preds = %if.then.i821.i.i, %get_lfree.exit.i.i.if.end.i823.i.i_crit_edge
  %r_key.0.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.then.i821.i.i ], [ null, %get_lfree.exit.i.i.if.end.i823.i.i_crit_edge ]
  %add.i.i.i = add i32 %retval.0.i873.i.i, %conv.i.i
  %add7.i.i.i = add i32 %add.i.i.i, %retval.0.i815.i.i
  %b_size.i822.i.i = getelementptr inbounds %struct.buffer_head, ptr %275, i32 0, i32 4
  %286 = ptrtoint ptr %b_size.i822.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %b_size.i822.i.i, align 8
  %sub8.i.i.i = add i32 %277, -24
  %add9.i.i.i = add i32 %sub8.i.i.i, %287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h.0575)
  %tobool10.not.i.i.i = icmp eq i32 %h.0575, 0
  br i1 %tobool10.not.i.i.i, label %land.rhs.i.i.i, label %land.end31.thread.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i823.i.i
  %u.i.i.i.i = getelementptr i8, ptr %279, i32 32
  %288 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 8)
  %289 = load i64, ptr %u.i.i.i.i, align 1
  %290 = trunc i64 %289 to i32
  %291 = lshr i32 %290, 4
  %conv1.i.i.i.i.i = and i32 %291, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %conv1.i.i.i.i.i, 4
  %phi.cast.i.i.i.i.i = trunc i32 %conv1.i.i.i.i.i to i16
  %292 = add nsw i16 %phi.cast.i.i.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %292)
  %switch9.i.i.i.i = icmp ult i16 %292, -3
  %not.cmp.i.i.i.i.i = xor i1 %cmp.i.i.i.i.i, true
  %switch.i.i.i.i = select i1 %not.cmp.i.i.i.i.i, i1 true, i1 %switch9.i.i.i.i
  br i1 %switch.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %k_uniqueness.i.i.i.i = getelementptr i8, ptr %279, i32 36
  %293 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  %295 = call i32 @llvm.bswap.i32(i32 %294) #8
  %296 = zext i32 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %295, label %sw.default.i.i.i.i.i [
    i32 0, label %if.then.i.i.i.i.land.lhs.true.i.i.i_crit_edge
    i32 -2, label %sw.bb1.i.i.i.i.i
    i32 -1, label %sw.bb2.i.i.i.i.i
    i32 500, label %sw.bb3.i.i.i.i.i
  ]

if.then.i.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

sw.bb1.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

sw.bb2.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

sw.bb3.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

sw.default.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 %conv1.i.i.i.i.i, i32 15
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i.i.i, %sw.default.i.i.i.i.i, %sw.bb3.i.i.i.i.i, %sw.bb2.i.i.i.i.i, %sw.bb1.i.i.i.i.i, %if.then.i.i.i.i.land.lhs.true.i.i.i_crit_edge
  %retval.0.in.i.i.i.i = phi i32 [ %narrow.i.i.i.i, %if.else.i.i.i.i ], [ 15, %sw.default.i.i.i.i.i ], [ 3, %sw.bb3.i.i.i.i.i ], [ 2, %sw.bb2.i.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i.i ], [ %295, %if.then.i.i.i.i.land.lhs.true.i.i.i_crit_edge ]
  %arrayidx14.i.i.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i.i.i
  %297 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx14.i.i.i, align 4
  %is_left_mergeable.i.i.i = getelementptr inbounds %struct.item_operations, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %is_left_mergeable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %is_left_mergeable.i.i.i, align 4
  %call17.i.i.i = call i32 %300(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %287) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  %phi.sel.neg.i.i.i = select i1 %tobool18.not.i.i.i, i32 0, i32 -24
  %sub19117.i.i.i = add i32 %phi.sel.neg.i.i.i, %add9.i.i.i
  %tobool21.not.i.i.i = icmp eq ptr %r_key.0.i.i.i, null
  br i1 %tobool21.not.i.i.i, label %land.lhs.true.i.i.i.land.end31.i.i.i_crit_edge, label %land.rhs22.i.i.i

land.lhs.true.i.i.i.land.end31.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end31.i.i.i

land.rhs22.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  %u.i90.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %r_key.0.i.i.i, i32 0, i32 2
  %301 = ptrtoint ptr %u.i90.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %301, i32 8)
  %302 = load i64, ptr %u.i90.i.i.i, align 1
  %303 = trunc i64 %302 to i32
  %304 = lshr i32 %303, 4
  %conv1.i.i91.i.i.i = and i32 %304, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i91.i.i.i)
  %cmp.i.i92.i.i.i = icmp ult i32 %conv1.i.i91.i.i.i, 4
  %phi.cast.i.i93.i.i.i = trunc i32 %conv1.i.i91.i.i.i to i16
  %305 = add nsw i16 %phi.cast.i.i93.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %305)
  %switch9.i95.i.i.i = icmp ult i16 %305, -3
  %not.cmp.i.i92.i.i.i = xor i1 %cmp.i.i92.i.i.i, true
  %switch.i96.i.i.i = select i1 %not.cmp.i.i92.i.i.i, i1 true, i1 %switch9.i95.i.i.i
  br i1 %switch.i96.i.i.i, label %if.then.i101.i.i.i, label %if.else.i109.i.i.i

if.then.i101.i.i.i:                               ; preds = %land.rhs22.i.i.i
  %k_uniqueness.i100.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i90.i.i.i, i32 0, i32 1
  %306 = ptrtoint ptr %k_uniqueness.i100.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %306, i32 4)
  %307 = load i32, ptr %k_uniqueness.i100.i.i.i, align 1
  %308 = call i32 @llvm.bswap.i32(i32 %307) #8
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %308, label %sw.default.i.i105.i.i.i [
    i32 0, label %if.then.i101.i.i.i.le_key_k_type.exit112.i.i.i_crit_edge
    i32 -2, label %sw.bb1.i.i102.i.i.i
    i32 -1, label %sw.bb2.i.i103.i.i.i
    i32 500, label %sw.bb3.i.i104.i.i.i
  ]

if.then.i101.i.i.i.le_key_k_type.exit112.i.i.i_crit_edge: ; preds = %if.then.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit112.i.i.i

sw.bb1.i.i102.i.i.i:                              ; preds = %if.then.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit112.i.i.i

sw.bb2.i.i103.i.i.i:                              ; preds = %if.then.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit112.i.i.i

sw.bb3.i.i104.i.i.i:                              ; preds = %if.then.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit112.i.i.i

sw.default.i.i105.i.i.i:                          ; preds = %if.then.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit112.i.i.i

if.else.i109.i.i.i:                               ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i108.i.i.i = select i1 %cmp.i.i92.i.i.i, i32 %conv1.i.i91.i.i.i, i32 15
  br label %le_key_k_type.exit112.i.i.i

le_key_k_type.exit112.i.i.i:                      ; preds = %if.else.i109.i.i.i, %sw.default.i.i105.i.i.i, %sw.bb3.i.i104.i.i.i, %sw.bb2.i.i103.i.i.i, %sw.bb1.i.i102.i.i.i, %if.then.i101.i.i.i.le_key_k_type.exit112.i.i.i_crit_edge
  %retval.0.in.i110.i.i.i = phi i32 [ %narrow.i108.i.i.i, %if.else.i109.i.i.i ], [ 15, %sw.default.i.i105.i.i.i ], [ 3, %sw.bb3.i.i104.i.i.i ], [ 2, %sw.bb2.i.i103.i.i.i ], [ 1, %sw.bb1.i.i102.i.i.i ], [ %308, %if.then.i101.i.i.i.le_key_k_type.exit112.i.i.i_crit_edge ]
  %arrayidx26.i.i.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i110.i.i.i
  %310 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx26.i.i.i, align 4
  %is_left_mergeable27.i.i.i = getelementptr inbounds %struct.item_operations, ptr %311, i32 0, i32 2
  %312 = ptrtoint ptr %is_left_mergeable27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %is_left_mergeable27.i.i.i, align 4
  %314 = ptrtoint ptr %b_size.i822.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %b_size.i822.i.i, align 8
  %call29.i.i.i = call i32 %313(ptr noundef nonnull %r_key.0.i.i.i, i32 noundef %315) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %call29.i.i.i, 0
  %phi.sel.neg83.i.i.i = select i1 %tobool30.not.i.i.i, i32 0, i32 -24
  br label %land.end31.i.i.i

land.end31.i.i.i:                                 ; preds = %le_key_k_type.exit112.i.i.i, %land.lhs.true.i.i.i.land.end31.i.i.i_crit_edge
  %.neg84.i.i.i = phi i32 [ %phi.sel.neg83.i.i.i, %le_key_k_type.exit112.i.i.i ], [ 0, %land.lhs.true.i.i.i.land.end31.i.i.i_crit_edge ]
  %sub33.i.i.i = add i32 %sub19117.i.i.i, %.neg84.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.i, i32 %sub33.i.i.i)
  %cmp.i824.i.i = icmp uge i32 %add7.i.i.i, %sub33.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %conv.i.i)
  %cmp38.not.i.i.i = icmp sgt i32 %277, %conv.i.i
  %or.cond.i.i.i = select i1 %cmp.i824.i.i, i1 true, i1 %cmp38.not.i.i.i
  br i1 %or.cond.i.i.i, label %land.lhs.true74.critedge.i.i, label %if.then.i115.i.i.i

land.end31.thread.i.i.i:                          ; preds = %if.end.i823.i.i
  %add36124.i.i.i = add i32 %add9.i.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i.i, i32 %add36124.i.i.i)
  %cmp125.i.i.i = icmp uge i32 %add7.i.i.i, %add36124.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %conv.i.i)
  %cmp38.not126.i.i.i = icmp sgt i32 %277, %conv.i.i
  %or.cond127.i.i.i = select i1 %cmp125.i.i.i, i1 true, i1 %cmp38.not126.i.i.i
  br i1 %or.cond127.i.i.i, label %land.lhs.true.i.i, label %if.end46.thread.i.i.i

if.end46.thread.i.i.i:                            ; preds = %land.end31.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i113128.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %316 = ptrtoint ptr %arrayidx.i113128.i.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 0, ptr %arrayidx.i113128.i.i.i, align 4
  %arrayidx3.i129.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %317 = ptrtoint ptr %arrayidx3.i129.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 0, ptr %arrayidx3.i129.i.i.i, align 4
  %arrayidx4.i130.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %318 = ptrtoint ptr %arrayidx4.i130.i.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 1, ptr %arrayidx4.i130.i.i.i, align 4
  br label %can_node_be_removed.exit.thread.i.i

if.then.i115.i.i.i:                               ; preds = %land.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %319 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %blk_nr_item.i825.i.i = getelementptr inbounds %struct.block_head, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %blk_nr_item.i825.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %blk_nr_item.i825.i.i, align 2
  %323 = call i16 @llvm.bswap.i16(i16 %322) #8
  %conv.i826.i.i = zext i16 %323 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %273)
  %cmp42.i.i.i = icmp eq i16 %273, 105
  %cond44.i.i.i = zext i1 %cmp42.i.i.i to i32
  %add45.i.i.i = add nuw nsw i32 %conv.i826.i.i, %cond44.i.i.i
  %324 = ptrtoint ptr %s0num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %add45.i.i.i, ptr %s0num.i.i.i, align 8
  %325 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %arrayidx.i81.i.i.i.i, align 4
  %326 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %arrayidx3.i.i.i.i.i, align 4
  %327 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %arrayidx4.i.i.i.i.i, align 4
  %328 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 -1, ptr %lbytes.i.i.i.i.i, align 4
  %329 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 -1, ptr %rbytes.i.i.i.i.i, align 8
  br label %can_node_be_removed.exit.thread.i.i

can_node_be_removed.exit.thread.i.i:              ; preds = %if.then.i115.i.i.i, %if.end46.thread.i.i.i
  %330 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %331, i32 0, i32 33
  %332 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %arrayidx33.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %333, i32 0, i32 27, i32 24, i32 %h.0575
  %334 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx33.i.i.i.i, align 4
  %add34.i.i.i.i = add i32 %335, -1
  store i32 %add34.i.i.i.i, ptr %arrayidx33.i.i.i.i, align 4
  %336 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %336, i32 0, i32 33
  %337 = ptrtoint ptr %s_fs_info.i72.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %s_fs_info.i72.i.i.i.i, align 16
  %arrayidx39.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %338, i32 0, i32 27, i32 25, i32 %h.0575
  %339 = ptrtoint ptr %arrayidx39.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx39.i.i.i.i, align 4
  %inc.i877.i.i = add i32 %340, -1
  store i32 %inc.i877.i.i, ptr %arrayidx39.i.i.i.i, align 4
  br label %ip_check_balance.exit.i

land.lhs.true.i.i:                                ; preds = %land.end31.thread.i.i.i
  %341 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i828.i.i.c = getelementptr inbounds %struct.super_block, ptr %342, i32 0, i32 33
  %343 = ptrtoint ptr %s_fs_info.i.i828.i.i.c to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %s_fs_info.i.i828.i.i.c, align 16
  %arrayidx50.i.i.i.c = getelementptr %struct.reiserfs_sb_info, ptr %344, i32 0, i32 27, i32 21, i32 %h.0575
  %345 = ptrtoint ptr %arrayidx50.i.i.i.c to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx50.i.i.i.c, align 4
  %inc.i.i.i.c = add i32 %346, 1
  store i32 %inc.i.i.i.c, ptr %arrayidx50.i.i.i.c, align 4
  call fastcc void @create_virtual_node(ptr noundef %tb, i32 noundef %h.0575) #8
  call fastcc void @check_left(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %retval.0.i815.i.i) #8
  call fastcc void @check_right(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %retval.0.i873.i.i) #8
  %arrayidx19.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %347 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx19.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %349 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx20.i.i, align 4
  %add.i.i465 = add i32 %350, %348
  %vn_nr_item.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %351 = ptrtoint ptr %vn_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %vn_nr_item.i.i, align 4
  %conv21.i.i = zext i16 %352 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i465, i32 %conv21.i.i)
  %cmp23.not.not.i.i = icmp sgt i32 %add.i.i465, %conv21.i.i
  br i1 %cmp23.not.not.i.i, label %set_parameters.exit850.i.i, label %land.lhs.true55.critedge.i.i

set_parameters.exit850.i.i:                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add22.i.i = add nuw nsw i32 %conv21.i.i, 1
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 4
  %353 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %b_size.i.i, align 8
  %sub27.i.i = add i32 %354, -32
  %div.i.i466 = udiv i32 %sub27.i.i, 24
  %sub34.i.i = sub i32 3, %add.i.i465
  %add37.i.i = add i32 %sub34.i.i, %conv21.i.i
  %355 = lshr i32 %add37.i.i, 1
  %356 = add nuw i32 %div.i.i466, %355
  %div39777.i.i = and i32 %356, 2147483647
  %add44.neg.i.i = xor i32 %div.i.i466, -1
  %sub47.neg.i.i = add i32 %348, %add44.neg.i.i
  %sub48.i.i = add i32 %sub47.neg.i.i, %div39777.i.i
  %sub52.i.i = sub i32 %add22.i.i, %sub48.i.i
  %357 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %sub52.i.i, ptr %arrayidx20.i.i, align 4
  %358 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %sub48.i.i, ptr %arrayidx19.i.i, align 4
  %arrayidx4.i832.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %359 = ptrtoint ptr %arrayidx4.i832.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %arrayidx4.i832.i.i, align 4
  %360 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i839.i.i = getelementptr inbounds %struct.super_block, ptr %361, i32 0, i32 33
  %362 = ptrtoint ptr %s_fs_info.i.i839.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %s_fs_info.i.i839.i.i, align 16
  %arrayidx22.i840.i.i = getelementptr %struct.reiserfs_sb_info, ptr %363, i32 0, i32 27, i32 22, i32 %h.0575
  %364 = ptrtoint ptr %arrayidx22.i840.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx22.i840.i.i, align 4
  %add.i841.i.i = add i32 %sub52.i.i, %365
  store i32 %add.i841.i.i, ptr %arrayidx22.i840.i.i, align 4
  %366 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70.i842.i.i = getelementptr inbounds %struct.super_block, ptr %366, i32 0, i32 33
  %367 = ptrtoint ptr %s_fs_info.i70.i842.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %s_fs_info.i70.i842.i.i, align 16
  %arrayidx27.i843.i.i = getelementptr %struct.reiserfs_sb_info, ptr %368, i32 0, i32 27, i32 23, i32 %h.0575
  %369 = ptrtoint ptr %arrayidx27.i843.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx27.i843.i.i, align 4
  %add28.i.i.i = add i32 %370, %sub48.i.i
  store i32 %add28.i.i.i, ptr %arrayidx27.i843.i.i, align 4
  %371 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i71.i844.i.i = getelementptr inbounds %struct.super_block, ptr %371, i32 0, i32 33
  %372 = ptrtoint ptr %s_fs_info.i71.i844.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %s_fs_info.i71.i844.i.i, align 16
  %arrayidx33.i845.i.i = getelementptr %struct.reiserfs_sb_info, ptr %373, i32 0, i32 27, i32 24, i32 %h.0575
  %374 = ptrtoint ptr %arrayidx33.i845.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx33.i845.i.i, align 4
  %add34.i846.i.i = add i32 %375, -1
  store i32 %add34.i846.i.i, ptr %arrayidx33.i845.i.i, align 4
  %376 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i847.i.i = getelementptr inbounds %struct.super_block, ptr %376, i32 0, i32 33
  %377 = ptrtoint ptr %s_fs_info.i72.i847.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %s_fs_info.i72.i847.i.i, align 16
  %arrayidx39.i848.i.i = getelementptr %struct.reiserfs_sb_info, ptr %378, i32 0, i32 27, i32 25, i32 %h.0575
  %379 = ptrtoint ptr %arrayidx39.i848.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx39.i848.i.i, align 4
  %add40.i849.i.i = add i32 %380, -1
  store i32 %add40.i849.i.i, ptr %arrayidx39.i848.i.i, align 4
  br label %ip_check_balance.exit.i

land.lhs.true55.critedge.i.i:                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %conv21.i.i)
  %cmp61.not.not.i.i = icmp sgt i32 %350, %conv21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %348, i32 %conv21.i.i)
  %cmp68.not.not.i.i = icmp sgt i32 %348, %conv21.i.i
  %or.cond1133.i.i = select i1 %cmp61.not.not.i.i, i1 true, i1 %cmp68.not.not.i.i
  br i1 %or.cond1133.i.i, label %if.then70.i.i, label %if.end103.thread.i.i

if.then70.i.i:                                    ; preds = %land.lhs.true55.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ip_check_balance, ptr noundef nonnull @.str.20, i32 noundef 1461, ptr noundef nonnull @__func__.ip_check_balance) #11
  unreachable

land.lhs.true74.critedge.i.i:                     ; preds = %land.end31.i.i.i
  %381 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i828.i.i = getelementptr inbounds %struct.super_block, ptr %382, i32 0, i32 33
  %383 = ptrtoint ptr %s_fs_info.i.i828.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %s_fs_info.i.i828.i.i, align 16
  %arrayidx50.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %384, i32 0, i32 27, i32 21, i32 0
  %385 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx50.i.i.i, align 4
  %inc.i.i.i = add i32 %386, 1
  store i32 %inc.i.i.i, ptr %arrayidx50.i.i.i, align 4
  call fastcc void @create_virtual_node(ptr noundef %tb, i32 noundef 0) #8
  call fastcc void @check_left(ptr noundef %tb, i32 noundef 0, i32 noundef %retval.0.i815.i.i) #8
  call fastcc void @check_right(ptr noundef %tb, i32 noundef 0, i32 noundef %retval.0.i873.i.i) #8
  %387 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx.i81.i.i.i.i, align 4
  %vn_nr_item77.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %389 = ptrtoint ptr %vn_nr_item77.i.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %vn_nr_item77.i.i, align 4
  %conv78.i.i = zext i16 %390 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %conv78.i.i)
  %cmp79.not.i.i = icmp slt i32 %388, %conv78.i.i
  br i1 %cmp79.not.i.i, label %land.lhs.true74.critedge.i.i.lor.lhs.false84.i.i_crit_edge, label %land.lhs.true81.i.i

land.lhs.true74.critedge.i.i.lor.lhs.false84.i.i_crit_edge: ; preds = %land.lhs.true74.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false84.i.i

land.lhs.true81.i.i:                              ; preds = %land.lhs.true74.critedge.i.i
  %391 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %392)
  %cmp82.i.i = icmp eq i32 %392, -1
  br i1 %cmp82.i.i, label %land.lhs.true81.i.i.if.then94.i.i_crit_edge, label %land.lhs.true81.i.i.lor.lhs.false84.i.i_crit_edge

land.lhs.true81.i.i.lor.lhs.false84.i.i_crit_edge: ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false84.i.i

land.lhs.true81.i.i.if.then94.i.i_crit_edge:      ; preds = %land.lhs.true81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94.i.i

lor.lhs.false84.i.i:                              ; preds = %land.lhs.true81.i.i.lor.lhs.false84.i.i_crit_edge, %land.lhs.true74.critedge.i.i.lor.lhs.false84.i.i_crit_edge
  %393 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx3.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %394, i32 %conv78.i.i)
  %cmp89.not.i.i = icmp slt i32 %394, %conv78.i.i
  br i1 %cmp89.not.i.i, label %lor.lhs.false84.i.i.land.lhs.true99.i.i_crit_edge, label %land.lhs.true91.i.i

lor.lhs.false84.i.i.land.lhs.true99.i.i_crit_edge: ; preds = %lor.lhs.false84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true99.i.i

land.lhs.true91.i.i:                              ; preds = %lor.lhs.false84.i.i
  %395 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %396)
  %cmp92.i.i = icmp eq i32 %396, -1
  br i1 %cmp92.i.i, label %land.lhs.true91.i.i.if.then94.i.i_crit_edge, label %land.lhs.true91.i.i.land.lhs.true99.i.i_crit_edge

land.lhs.true91.i.i.land.lhs.true99.i.i_crit_edge: ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true99.i.i

land.lhs.true91.i.i.if.then94.i.i_crit_edge:      ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94.i.i

if.then94.i.i:                                    ; preds = %land.lhs.true91.i.i.if.then94.i.i_crit_edge, %land.lhs.true81.i.i.if.then94.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ip_check_balance, ptr noundef nonnull @.str.21, i32 noundef 1464, ptr noundef nonnull @__func__.ip_check_balance) #11
  unreachable

land.lhs.true99.i.i:                              ; preds = %land.lhs.true91.i.i.land.lhs.true99.i.i_crit_edge, %lor.lhs.false84.i.i.land.lhs.true99.i.i_crit_edge
  %call100.i.i = call fastcc i32 @is_leaf_removable(ptr noundef %tb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i)
  %tobool101.not.i.i = icmp eq i32 %call100.i.i, 0
  br i1 %tobool101.not.i.i, label %if.end103.i.i, label %land.lhs.true99.i.i.ip_check_balance.exit.i_crit_edge

land.lhs.true99.i.i.ip_check_balance.exit.i_crit_edge: ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_check_balance.exit.i

if.end103.i.i:                                    ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %conv.i.i)
  %cmp104.not.i.i = icmp ugt i32 %199, %conv.i.i
  br i1 %cmp104.not.i.i, label %if.end257.i.i, label %if.then.i855.i.i

if.end103.thread.i.i:                             ; preds = %land.lhs.true55.critedge.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %conv.i.i)
  %cmp104.not879.i.i = icmp ugt i32 %199, %conv.i.i
  br i1 %cmp104.not879.i.i, label %if.end257.thread.i.i, label %if.end111.thread.i.i

if.end111.thread.i.i:                             ; preds = %if.end103.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %397 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 0, ptr %arrayidx20.i.i, align 4
  %398 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 0, ptr %arrayidx19.i.i, align 4
  %arrayidx4.i853882.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %399 = ptrtoint ptr %arrayidx4.i853882.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 1, ptr %arrayidx4.i853882.i.i, align 4
  br label %set_parameters.exit870.i.i

if.then.i855.i.i:                                 ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %400 = ptrtoint ptr %vn_nr_item77.i.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %vn_nr_item77.i.i, align 4
  %conv110.i.i = zext i16 %401 to i32
  %402 = ptrtoint ptr %s0num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %conv110.i.i, ptr %s0num.i.i.i, align 8
  %403 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 0, ptr %arrayidx.i81.i.i.i.i, align 4
  %404 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 0, ptr %arrayidx3.i.i.i.i.i, align 4
  %405 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 1, ptr %arrayidx4.i.i.i.i.i, align 4
  %406 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 -1, ptr %lbytes.i.i.i.i.i, align 4
  %407 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 -1, ptr %rbytes.i.i.i.i.i, align 8
  br label %set_parameters.exit870.i.i

set_parameters.exit870.i.i:                       ; preds = %if.then.i855.i.i, %if.end111.thread.i.i
  %408 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i860.i.i = getelementptr inbounds %struct.super_block, ptr %409, i32 0, i32 33
  %410 = ptrtoint ptr %s_fs_info.i.i860.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %s_fs_info.i.i860.i.i, align 16
  %arrayidx33.i865.i.i = getelementptr %struct.reiserfs_sb_info, ptr %411, i32 0, i32 27, i32 24, i32 %h.0575
  %412 = ptrtoint ptr %arrayidx33.i865.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx33.i865.i.i, align 4
  %add34.i866.i.i = add i32 %413, -1
  store i32 %add34.i866.i.i, ptr %arrayidx33.i865.i.i, align 4
  %414 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i867.i.i = getelementptr inbounds %struct.super_block, ptr %414, i32 0, i32 33
  %415 = ptrtoint ptr %s_fs_info.i72.i867.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %s_fs_info.i72.i867.i.i, align 16
  %arrayidx39.i868.i.i = getelementptr %struct.reiserfs_sb_info, ptr %416, i32 0, i32 27, i32 25, i32 %h.0575
  %417 = ptrtoint ptr %arrayidx39.i868.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx39.i868.i.i, align 4
  %add40.i869.i.i = add i32 %418, -1
  store i32 %add40.i869.i.i, ptr %arrayidx39.i868.i.i, align 4
  br label %ip_check_balance.exit.i

if.end257.i.i:                                    ; preds = %if.end103.i.i
  %419 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %vn_mode.i.i, align 4
  %conv118.i.i = sext i16 %420 to i32
  %421 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %arrayidx3.i.i.i.i.i, align 4
  %423 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %arrayidx.i81.i.i.i.i, align 4
  %call123896.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv118.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %snum012.i.i, i32 noundef 0) #8
  %425 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %vn_mode.i.i, align 4
  %conv127.i.i = sext i16 %426 to i32
  %call130.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv127.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef -1, ptr noundef %add.ptr129.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call123896.i.i, i32 %call130.i.i)
  %cmp131.i.i = icmp sgt i32 %call123896.i.i, %call130.i.i
  %427 = call i32 @llvm.smin.i32(i32 %call123896.i.i, i32 %call130.i.i) #8
  %spec.select779.i.i = select i1 %cmp131.i.i, i32 5, i32 0
  %428 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %vn_mode.i.i, align 4
  %conv137906.i.i = sext i16 %429 to i32
  %430 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %431)
  %cmp140.i.i = icmp ne i32 %431, -1
  %cond142.neg923.i.i = sext i1 %cmp140.i.i to i32
  %sub143924.i.i = add i32 %424, %cond142.neg923.i.i
  %call153939.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv137906.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef %sub143924.i.i, i32 noundef -1, i32 noundef 0, i32 noundef -1, ptr noundef %add.ptr152.i.i, i32 noundef 0) #8
  %432 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %vn_mode.i.i, align 4
  %conv157.i.i = sext i16 %433 to i32
  %434 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %435)
  %cmp159.not.i.i = icmp ne i32 %435, -1
  %cond161.neg.i.i = sext i1 %cmp159.not.i.i to i32
  %sub162.i.i = add i32 %424, %cond161.neg.i.i
  %call166.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv157.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef %sub162.i.i, i32 noundef %435, i32 noundef 0, i32 noundef -1, ptr noundef %add.ptr165.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call153939.i.i, i32 %call166.i.i)
  %cmp167.i.i = icmp sgt i32 %call153939.i.i, %call166.i.i
  %436 = call i32 @llvm.smin.i32(i32 %call153939.i.i, i32 %call166.i.i) #8
  %spec.select781.i.i = select i1 %cmp167.i.i, i32 15, i32 10
  %437 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %vn_mode.i.i, align 4
  %conv173955.i.i = sext i16 %438 to i32
  %439 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %440)
  %cmp181.not.i.i = icmp ne i32 %440, -1
  %cond183.neg.i.i = sext i1 %cmp181.not.i.i to i32
  %sub184.i.i = add i32 %422, %cond183.neg.i.i
  %call189979.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv173955.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef %sub184.i.i, i32 noundef -1, ptr noundef %add.ptr188.i.i, i32 noundef 0) #8
  %441 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %441)
  %442 = load i16, ptr %vn_mode.i.i, align 4
  %conv193.i.i = sext i16 %442 to i32
  %443 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %444)
  %cmp195.not.i.i = icmp ne i32 %444, -1
  %cond197.neg.i.i = sext i1 %cmp195.not.i.i to i32
  %sub198.i.i = add i32 %422, %cond197.neg.i.i
  %call202.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv193.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef %sub198.i.i, i32 noundef %444, ptr noundef %add.ptr201.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call189979.i.i, i32 %call202.i.i)
  %cmp203.i.i = icmp sgt i32 %call189979.i.i, %call202.i.i
  %445 = call i32 @llvm.smin.i32(i32 %call189979.i.i, i32 %call202.i.i) #8
  %spec.select783.i.i = select i1 %cmp203.i.i, i32 25, i32 20
  %446 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %vn_mode.i.i, align 4
  %conv2091001.i.i = sext i16 %447 to i32
  %448 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %449)
  %cmp213.i.i = icmp ne i32 %449, -1
  %cond216.neg1030.i.i = sext i1 %cmp213.i.i to i32
  %sub2171031.i.i = add i32 %424, %cond216.neg1030.i.i
  %450 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %451)
  %cmp225.not.i.i = icmp ne i32 %451, -1
  %cond227.neg.i.i = sext i1 %cmp225.not.i.i to i32
  %sub228.i.i = add i32 %422, %cond227.neg.i.i
  %call2331064.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv2091001.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef %sub2171031.i.i, i32 noundef -1, i32 noundef %sub228.i.i, i32 noundef -1, ptr noundef %add.ptr232.i.i, i32 noundef 0) #8
  %452 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %vn_mode.i.i, align 4
  %conv237.i.i = sext i16 %453 to i32
  %454 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %455)
  %cmp239.not.i.i = icmp ne i32 %455, -1
  %cond241.neg.i.i = sext i1 %cmp239.not.i.i to i32
  %sub242.i.i = add i32 %424, %cond241.neg.i.i
  %456 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %457)
  %cmp245.not.i.i = icmp ne i32 %457, -1
  %cond247.neg.i.i = sext i1 %cmp245.not.i.i to i32
  %sub248.i.i = add i32 %422, %cond247.neg.i.i
  %call252.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv237.i.i, ptr noundef %tb, i32 noundef 0, i32 noundef %sub242.i.i, i32 noundef %455, i32 noundef %sub248.i.i, i32 noundef %457, ptr noundef %add.ptr251.i.i, i32 noundef 1) #8
  %458 = call i32 @llvm.smin.i32(i32 %call2331064.i.i, i32 %call252.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %436)
  %cmp258.i.i = icmp slt i32 %458, %436
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %445)
  %cmp261.i.i = icmp slt i32 %458, %445
  %or.cond.i.i = select i1 %cmp258.i.i, i1 %cmp261.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end291.i.i, label %if.end257.i.i.if.end320.i.i_crit_edge

if.end257.i.i.if.end320.i.i_crit_edge:            ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end320.i.i

if.end257.thread.i.i:                             ; preds = %if.end103.thread.i.i
  %459 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %vn_mode.i.i, align 4
  %conv118885.i.i = sext i16 %460 to i32
  %call123.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv118885.i.i, ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef -1, i32 noundef %conv21.i.i, i32 noundef -1, ptr noundef nonnull %snum012.i.i, i32 noundef 0) #8
  %461 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %vn_mode.i.i, align 4
  %conv137.i.i = sext i16 %462 to i32
  %463 = ptrtoint ptr %vn_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %vn_nr_item.i.i, align 4
  %conv147.i.i = zext i16 %464 to i32
  %call153.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv137.i.i, ptr noundef %tb, i32 noundef %h.0575, i32 noundef %350, i32 noundef -1, i32 noundef %conv147.i.i, i32 noundef -1, ptr noundef %add.ptr152.i.i, i32 noundef 0) #8
  %465 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %vn_mode.i.i, align 4
  %conv173.i.i = sext i16 %466 to i32
  %467 = ptrtoint ptr %vn_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %vn_nr_item.i.i, align 4
  %conv177.i.i = zext i16 %468 to i32
  %sub178.i.i = sub i32 %conv177.i.i, %348
  %call189.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv173.i.i, ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef -1, i32 noundef %sub178.i.i, i32 noundef -1, ptr noundef %add.ptr188.i.i, i32 noundef 0) #8
  %469 = ptrtoint ptr %vn_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %vn_mode.i.i, align 4
  %conv209.i.i = sext i16 %470 to i32
  %471 = ptrtoint ptr %vn_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %vn_nr_item.i.i, align 4
  %conv221.i.i = zext i16 %472 to i32
  %sub222.i.i = sub i32 %conv221.i.i, %348
  %call233.i.i = call fastcc i32 @get_num_ver(i32 noundef %conv209.i.i, ptr noundef %tb, i32 noundef %h.0575, i32 noundef %350, i32 noundef -1, i32 noundef %sub222.i.i, i32 noundef -1, ptr noundef %add.ptr232.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call233.i.i, i32 %call153.i.i)
  %cmp2581092.i.i = icmp slt i32 %call233.i.i, %call153.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call233.i.i, i32 %call189.i.i)
  %cmp2611093.i.i = icmp slt i32 %call233.i.i, %call189.i.i
  %or.cond1094.i.i = select i1 %cmp2581092.i.i, i1 %cmp2611093.i.i, i1 false
  br i1 %or.cond1094.i.i, label %land.lhs.true266.i.i, label %if.end257.thread.i.i.if.end320.i.i_crit_edge

if.end257.thread.i.i.if.end320.i.i_crit_edge:     ; preds = %if.end257.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end320.i.i

land.lhs.true266.i.i:                             ; preds = %if.end257.thread.i.i
  %473 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %arrayidx20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %474)
  %cmp269.not.i.i = icmp eq i32 %474, 1
  br i1 %cmp269.not.i.i, label %lor.lhs.false271.i.i, label %land.lhs.true266.i.i.if.then288.i.i_crit_edge

land.lhs.true266.i.i.if.then288.i.i_crit_edge:    ; preds = %land.lhs.true266.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then288.i.i

lor.lhs.false271.i.i:                             ; preds = %land.lhs.true266.i.i
  %475 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %476)
  %cmp274.not.i.i = icmp eq i32 %476, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call233.i.i)
  %cmp277.not.i.i = icmp eq i32 %call233.i.i, 1
  %or.cond786.i.i = select i1 %cmp274.not.i.i, i1 %cmp277.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call189.i.i)
  %cmp280.not.i.i = icmp eq i32 %call189.i.i, 2
  %or.cond787.i.i = select i1 %or.cond786.i.i, i1 %cmp280.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call153.i.i)
  %cmp283.not.i.i = icmp eq i32 %call153.i.i, 2
  %or.cond788.i.i = select i1 %or.cond787.i.i, i1 %cmp283.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %h.0575)
  %cmp286.not.i.i = icmp eq i32 %h.0575, 1
  %or.cond789.i.i = and i1 %cmp286.not.i.i, %or.cond788.i.i
  br i1 %or.cond789.i.i, label %lor.lhs.false271.i.i.if.else.i.i_crit_edge, label %lor.lhs.false271.i.i.if.then288.i.i_crit_edge

lor.lhs.false271.i.i.if.then288.i.i_crit_edge:    ; preds = %lor.lhs.false271.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then288.i.i

lor.lhs.false271.i.i.if.else.i.i_crit_edge:       ; preds = %lor.lhs.false271.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then288.i.i:                                   ; preds = %lor.lhs.false271.i.i.if.then288.i.i_crit_edge, %land.lhs.true266.i.i.if.then288.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ip_check_balance, ptr noundef nonnull @.str.22, i32 noundef 1642, ptr noundef nonnull @__func__.ip_check_balance) #11
  unreachable

do.end291.i.i:                                    ; preds = %if.end257.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2331064.i.i, i32 %call252.i.i)
  %cmp253.i.i = icmp sgt i32 %call2331064.i.i, %call252.i.i
  br i1 %cmp253.i.i, label %if.then294.i.i, label %do.end291.i.i.if.else.i.i_crit_edge

do.end291.i.i.if.else.i.i_crit_edge:              ; preds = %do.end291.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then294.i.i:                                   ; preds = %do.end291.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %477 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %arrayidx.i81.i.i.i.i, align 4
  %479 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %arrayidx3.i.i.i.i.i, align 4
  %481 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  %483 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef %478, i32 noundef %480, i32 noundef %458, ptr noundef %add.ptr251.i.i, i32 noundef %482, i32 noundef %484) #8
  br label %ip_check_balance.exit.i

if.else.i.i:                                      ; preds = %do.end291.i.i.if.else.i.i_crit_edge, %lor.lhs.false271.i.i.if.else.i.i_crit_edge
  %lrnver.1110611171131.i.i = phi i32 [ %458, %do.end291.i.i.if.else.i.i_crit_edge ], [ 1, %lor.lhs.false271.i.i.if.else.i.i_crit_edge ]
  %arrayidx116889897909928942960986100610441069110211191130.i.i = phi ptr [ %arrayidx3.i.i.i.i.i, %do.end291.i.i.if.else.i.i_crit_edge ], [ %arrayidx19.i.i, %lor.lhs.false271.i.i.if.else.i.i_crit_edge ]
  %arrayidx114887899907929940962984100810421071110111211129.i.i = phi ptr [ %arrayidx.i81.i.i.i.i, %do.end291.i.i.if.else.i.i_crit_edge ], [ %arrayidx20.i.i, %lor.lhs.false271.i.i.if.else.i.i_crit_edge ]
  %485 = ptrtoint ptr %arrayidx114887899907929940962984100810421071110111211129.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %arrayidx114887899907929940962984100810421071110111211129.i.i, align 4
  %487 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %488)
  %cmp306.i.i = icmp ne i32 %488, -1
  %cond308.neg.i.i = sext i1 %cmp306.i.i to i32
  %sub309.i.i = add i32 %486, %cond308.neg.i.i
  %489 = ptrtoint ptr %arrayidx116889897909928942960986100610441069110211191130.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx116889897909928942960986100610441069110211191130.i.i, align 4
  %491 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %492)
  %cmp313.i.i = icmp ne i32 %492, -1
  %cond315.neg.i.i = sext i1 %cmp313.i.i to i32
  %sub316.i.i = add i32 %490, %cond315.neg.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %sub309.i.i, i32 noundef %sub316.i.i, i32 noundef %lrnver.1110611171131.i.i, ptr noundef %add.ptr232.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.end320.i.i:                                    ; preds = %if.end257.thread.i.i.if.end320.i.i_crit_edge, %if.end257.i.i.if.end320.i.i_crit_edge
  %lrnver.11105.i.i = phi i32 [ %call233.i.i, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %458, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %nset.19139269469569901002104810651104.i.i = phi i32 [ 0, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %spec.select779.i.i, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %nver.19119279449589881004104610671103.i.i = phi i32 [ %call123.i.i, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %427, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %493 = phi i32 [ %350, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %424, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %lnver.19649821010104010731099.i.i = phi i32 [ %call153.i.i, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %436, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %lset.19669801012103810751098.i.i = phi i32 [ 10, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %spec.select781.i.i, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %rnver.11014103610771096.i.i = phi i32 [ %call189.i.i, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %445, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %rset.11016103410791095.i.i = phi i32 [ 20, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %spec.select783.i.i, %if.end257.i.i.if.end320.i.i_crit_edge ]
  %494 = phi i32 [ %348, %if.end257.thread.i.i.if.end320.i.i_crit_edge ], [ %422, %if.end257.i.i.if.end320.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nver.19119279449589881004104610671103.i.i, i32 %lrnver.11105.i.i)
  %cmp321.i.i = icmp eq i32 %nver.19119279449589881004104610671103.i.i, %lrnver.11105.i.i
  br i1 %cmp321.i.i, label %if.then323.i.i, label %if.end326.i.i

if.then323.i.i:                                   ; preds = %if.end320.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr325.i.i = getelementptr i16, ptr %snum012.i.i, i32 %nset.19139269469569901002104810651104.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef 0, i32 noundef %lrnver.11105.i.i, ptr noundef %add.ptr325.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.end326.i.i:                                    ; preds = %if.end320.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %lnver.19649821010104010731099.i.i, i32 %rnver.11014103610771096.i.i)
  %cmp327.i.i = icmp slt i32 %lnver.19649821010104010731099.i.i, %rnver.11014103610771096.i.i
  br i1 %cmp327.i.i, label %if.then329.i.i, label %if.end366.i.i

if.then329.i.i:                                   ; preds = %if.end326.i.i
  br i1 %tobool10.not.i.i.i, label %if.else350.i.i, label %if.then331.i.i

if.then331.i.i:                                   ; preds = %if.then329.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_size332.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 4
  %495 = ptrtoint ptr %b_size332.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %b_size332.i.i, align 8
  %sub334.i.i = add i32 %496, -32
  %div335.i.i = udiv i32 %sub334.i.i, 24
  %add336.i.i = sub i32 1, %493
  %sub337.i.i = add i32 %div335.i.i, %add336.i.i
  %vn_nr_item338.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %497 = ptrtoint ptr %vn_nr_item338.i.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %vn_nr_item338.i.i, align 4
  %conv339.i.i = zext i16 %498 to i32
  %add340.i.i = add nuw nsw i32 %conv339.i.i, 1
  %add341.i.i = add i32 %add340.i.i, %sub337.i.i
  %div342776.i.i = lshr i32 %add341.i.i, 1
  %sub349.i.i = sub i32 %div342776.i.i, %sub337.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %sub349.i.i, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else350.i.i:                                   ; preds = %if.then329.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %lset.19669801012103810751098.i.i)
  %cmp351.i.i = icmp eq i32 %lset.19669801012103810751098.i.i, 15
  %499 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  br i1 %cmp351.i.i, label %if.then353.i.i, label %if.else357.i.i

if.then353.i.i:                                   ; preds = %if.else350.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef %493, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef %add.ptr165.i.i, i32 noundef %500, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else357.i.i:                                   ; preds = %if.else350.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %500)
  %cmp359.i.i = icmp ne i32 %500, -1
  %conv360.neg.i.i = sext i1 %cmp359.i.i to i32
  %sub361.i.i = add i32 %493, %conv360.neg.i.i
  %add.ptr363.i.i = getelementptr i16, ptr %snum012.i.i, i32 %lset.19669801012103810751098.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef %sub361.i.i, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef %add.ptr363.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.end366.i.i:                                    ; preds = %if.end326.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %lnver.19649821010104010731099.i.i, i32 %rnver.11014103610771096.i.i)
  %cmp367.i.i = icmp sgt i32 %lnver.19649821010104010731099.i.i, %rnver.11014103610771096.i.i
  br i1 %cmp367.i.i, label %if.then369.i.i, label %if.end407.i.i

if.then369.i.i:                                   ; preds = %if.end366.i.i
  br i1 %tobool10.not.i.i.i, label %if.else391.i.i, label %if.then371.i.i

if.then371.i.i:                                   ; preds = %if.then369.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_size373.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 4
  %501 = ptrtoint ptr %b_size373.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %b_size373.i.i, align 8
  %sub375.i.i = add i32 %502, -32
  %div376.i.i = udiv i32 %sub375.i.i, 24
  %add377.i.i = sub i32 1, %494
  %sub378.i.i = add i32 %div376.i.i, %add377.i.i
  %vn_nr_item379.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %503 = ptrtoint ptr %vn_nr_item379.i.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %vn_nr_item379.i.i, align 4
  %conv380.i.i = zext i16 %504 to i32
  %add381.i.i = add nuw nsw i32 %conv380.i.i, 1
  %add382.i.i = add i32 %add381.i.i, %sub378.i.i
  %div383775.i.i = lshr i32 %add382.i.i, 1
  %sub390.i.i = sub i32 %div383775.i.i, %sub378.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef %sub390.i.i, i32 noundef %rnver.11014103610771096.i.i, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else391.i.i:                                   ; preds = %if.then369.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %rset.11016103410791095.i.i)
  %cmp392.i.i = icmp eq i32 %rset.11016103410791095.i.i, 25
  %505 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  br i1 %cmp392.i.i, label %if.then394.i.i, label %if.else398.i.i

if.then394.i.i:                                   ; preds = %if.else391.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef %494, i32 noundef %rnver.11014103610771096.i.i, ptr noundef %add.ptr201.i.i, i32 noundef -1, i32 noundef %506) #8
  br label %ip_check_balance.exit.i

if.else398.i.i:                                   ; preds = %if.else391.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %506)
  %cmp400.i.i = icmp ne i32 %506, -1
  %conv401.neg.i.i = sext i1 %cmp400.i.i to i32
  %sub402.i.i = add i32 %494, %conv401.neg.i.i
  %add.ptr404.i.i = getelementptr i16, ptr %snum012.i.i, i32 %rset.11016103410791095.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef %sub402.i.i, i32 noundef %rnver.11014103610771096.i.i, ptr noundef %add.ptr404.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.end407.i.i:                                    ; preds = %if.end366.i.i
  %call408.i.i = call fastcc i32 @is_left_neighbor_in_cache(ptr noundef %tb, i32 noundef %h.0575) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408.i.i)
  %tobool409.not.i.i = icmp eq i32 %call408.i.i, 0
  br i1 %tobool409.not.i.i, label %if.end448.i.i, label %if.then410.i.i

if.then410.i.i:                                   ; preds = %if.end407.i.i
  br i1 %tobool10.not.i.i.i, label %if.else432.i.i, label %if.then412.i.i

if.then412.i.i:                                   ; preds = %if.then410.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_size414.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 4
  %507 = ptrtoint ptr %b_size414.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %b_size414.i.i, align 8
  %sub416.i.i = add i32 %508, -32
  %div417.i.i = udiv i32 %sub416.i.i, 24
  %add418.i.i = sub i32 1, %493
  %sub419.i.i = add i32 %div417.i.i, %add418.i.i
  %vn_nr_item420.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %509 = ptrtoint ptr %vn_nr_item420.i.i to i32
  call void @__asan_load2_noabort(i32 %509)
  %510 = load i16, ptr %vn_nr_item420.i.i, align 4
  %conv421.i.i = zext i16 %510 to i32
  %add422.i.i = add nuw nsw i32 %conv421.i.i, 1
  %add423.i.i = add i32 %add422.i.i, %sub419.i.i
  %div424774.i.i = lshr i32 %add423.i.i, 1
  %sub431.i.i = sub i32 %div424774.i.i, %sub419.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %sub431.i.i, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else432.i.i:                                   ; preds = %if.then410.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %lset.19669801012103810751098.i.i)
  %cmp433.i.i = icmp eq i32 %lset.19669801012103810751098.i.i, 15
  %511 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  br i1 %cmp433.i.i, label %if.then435.i.i, label %if.else439.i.i

if.then435.i.i:                                   ; preds = %if.else432.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef %493, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef %add.ptr165.i.i, i32 noundef %512, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else439.i.i:                                   ; preds = %if.else432.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %512)
  %cmp441.i.i = icmp ne i32 %512, -1
  %conv442.neg.i.i = sext i1 %cmp441.i.i to i32
  %sub443.i.i = add i32 %493, %conv442.neg.i.i
  %add.ptr445.i.i = getelementptr i16, ptr %snum012.i.i, i32 %lset.19669801012103810751098.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef %sub443.i.i, i32 noundef 0, i32 noundef %lnver.19649821010104010731099.i.i, ptr noundef %add.ptr445.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.end448.i.i:                                    ; preds = %if.end407.i.i
  br i1 %tobool10.not.i.i.i, label %if.else470.i.i, label %if.then450.i.i

if.then450.i.i:                                   ; preds = %if.end448.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_size452.i.i = getelementptr inbounds %struct.buffer_head, ptr %208, i32 0, i32 4
  %513 = ptrtoint ptr %b_size452.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %b_size452.i.i, align 8
  %sub454.i.i = add i32 %514, -32
  %div455.i.i = udiv i32 %sub454.i.i, 24
  %add456.i.i = sub i32 1, %494
  %sub457.i.i = add i32 %div455.i.i, %add456.i.i
  %vn_nr_item458.i.i = getelementptr inbounds %struct.virtual_node, ptr %201, i32 0, i32 1
  %515 = ptrtoint ptr %vn_nr_item458.i.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %vn_nr_item458.i.i, align 4
  %conv459.i.i = zext i16 %516 to i32
  %add460.i.i = add nuw nsw i32 %conv459.i.i, 1
  %add461.i.i = add i32 %add460.i.i, %sub457.i.i
  %div462773.i.i = lshr i32 %add461.i.i, 1
  %sub469.i.i = sub i32 %div462773.i.i, %sub457.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef %sub469.i.i, i32 noundef %rnver.11014103610771096.i.i, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

if.else470.i.i:                                   ; preds = %if.end448.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %rset.11016103410791095.i.i)
  %cmp471.i.i = icmp eq i32 %rset.11016103410791095.i.i, 25
  %517 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  br i1 %cmp471.i.i, label %if.then473.i.i, label %if.else477.i.i

if.then473.i.i:                                   ; preds = %if.else470.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef %494, i32 noundef %rnver.11014103610771096.i.i, ptr noundef %add.ptr201.i.i, i32 noundef -1, i32 noundef %518) #8
  br label %ip_check_balance.exit.i

if.else477.i.i:                                   ; preds = %if.else470.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %518)
  %cmp479.i.i = icmp ne i32 %518, -1
  %conv480.neg.i.i = sext i1 %cmp479.i.i to i32
  %sub481.i.i = add i32 %494, %conv480.neg.i.i
  %add.ptr483.i.i = getelementptr i16, ptr %snum012.i.i, i32 %rset.11016103410791095.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef %sub481.i.i, i32 noundef %rnver.11014103610771096.i.i, ptr noundef %add.ptr483.i.i, i32 noundef -1, i32 noundef -1) #8
  br label %ip_check_balance.exit.i

ip_check_balance.exit.i:                          ; preds = %if.else477.i.i, %if.then473.i.i, %if.then450.i.i, %if.else439.i.i, %if.then435.i.i, %if.then412.i.i, %if.else398.i.i, %if.then394.i.i, %if.then371.i.i, %if.else357.i.i, %if.then353.i.i, %if.then331.i.i, %if.then323.i.i, %if.else.i.i, %if.then294.i.i, %set_parameters.exit870.i.i, %land.lhs.true99.i.i.ip_check_balance.exit.i_crit_edge, %set_parameters.exit850.i.i, %can_node_be_removed.exit.thread.i.i, %if.end6.i.i.ip_check_balance.exit.i_crit_edge, %set_parameters.exit.i.i, %if.end.i.i462.ip_check_balance.exit.i_crit_edge, %if.end.i.i462.ip_check_balance.exit.i_crit_edge806
  %retval.1.i.i467 = phi i32 [ 0, %set_parameters.exit850.i.i ], [ -4, %set_parameters.exit870.i.i ], [ -4, %set_parameters.exit.i.i ], [ %call.i.i461, %if.end.i.i462.ip_check_balance.exit.i_crit_edge ], [ %call.i.i461, %if.end.i.i462.ip_check_balance.exit.i_crit_edge806 ], [ %call7.i.i463, %if.end6.i.i.ip_check_balance.exit.i_crit_edge ], [ 0, %land.lhs.true99.i.i.ip_check_balance.exit.i_crit_edge ], [ 0, %if.then450.i.i ], [ 0, %if.else477.i.i ], [ 0, %if.then473.i.i ], [ 0, %if.then412.i.i ], [ 0, %if.else439.i.i ], [ 0, %if.then435.i.i ], [ 0, %if.then371.i.i ], [ 0, %if.else398.i.i ], [ 0, %if.then394.i.i ], [ 0, %if.then331.i.i ], [ 0, %if.else357.i.i ], [ 0, %if.then353.i.i ], [ 0, %if.then294.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then323.i.i ], [ -4, %can_node_be_removed.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %snum012.i.i) #8
  br label %check_balance.exit

if.end9.i:                                        ; preds = %do.end.i457
  %519 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %tb_path, align 8
  %path_elements.i26.i = getelementptr inbounds %struct.treepath, ptr %520, i32 0, i32 2
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %520, align 4
  %sub.i27.i = sub i32 %522, %h.0575
  %add.ptr.i28.i = getelementptr %struct.path_element, ptr %path_elements.i26.i, i32 %sub.i27.i
  %523 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %add.ptr.i28.i, align 4
  %tobool.not.i29.i = icmp eq ptr %524, null
  br i1 %tobool.not.i29.i, label %if.then.i30.i, label %do.end.i.i

if.then.i30.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dc_check_balance, ptr noundef nonnull @.str.51, i32 noundef 2034, ptr noundef nonnull @__func__.dc_check_balance) #11
  unreachable

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h.0575)
  %tobool2.not.i31.i = icmp eq i32 %h.0575, 0
  %525 = ptrtoint ptr %tb_vn.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %tb_vn.i, align 4
  br i1 %tobool2.not.i31.i, label %if.else.i54.i, label %if.then3.i34.i

if.then3.i34.i:                                   ; preds = %do.end.i.i
  %add.i.i32.i = add nuw nsw i32 %h.0575, 1
  %sub7.i.i.i = sub i32 %522, %add.i.i32.i
  %add.ptr8.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i26.i, i32 %sub7.i.i.i
  %527 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %add.ptr8.i.i.i, align 4
  call fastcc void @create_virtual_node(ptr noundef %tb, i32 noundef %h.0575) #8
  %tobool.not.i.i33.i = icmp eq ptr %528, null
  br i1 %tobool.not.i.i33.i, label %if.then.i.i.i468, label %if.end12.i.i.i

if.then.i.i.i468:                                 ; preds = %if.then3.i34.i
  %vn_nr_item.i.i.i = getelementptr inbounds %struct.virtual_node, ptr %526, i32 0, i32 1
  %529 = ptrtoint ptr %vn_nr_item.i.i.i to i32
  call void @__asan_load2_noabort(i32 %529)
  %530 = load i16, ptr %vn_nr_item.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %530)
  %cmp.not.i.i.i = icmp eq i16 %530, 0
  %arrayidx.i533.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %531 = ptrtoint ptr %arrayidx.i533.i.i.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 0, ptr %arrayidx.i533.i.i.i, align 4
  %arrayidx3.i534.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %532 = ptrtoint ptr %arrayidx3.i534.i.i.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 0, ptr %arrayidx3.i534.i.i.i, align 4
  %arrayidx4.i535.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  br i1 %cmp.not.i.i.i, label %set_parameters.exit551.i.i.i, label %set_parameters.exit.i.i.i

set_parameters.exit.i.i.i:                        ; preds = %if.then.i.i.i468
  call void @__sanitizer_cov_trace_pc() #10
  %533 = ptrtoint ptr %arrayidx4.i535.i.i.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 1, ptr %arrayidx4.i535.i.i.i, align 4
  br label %if.then97.sink.split

set_parameters.exit551.i.i.i:                     ; preds = %if.then.i.i.i468
  call void @__sanitizer_cov_trace_pc() #10
  %534 = ptrtoint ptr %arrayidx4.i535.i.i.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 0, ptr %arrayidx4.i535.i.i.i, align 4
  %535 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i541.i.i.i = getelementptr inbounds %struct.super_block, ptr %536, i32 0, i32 33
  %537 = ptrtoint ptr %s_fs_info.i.i541.i.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %s_fs_info.i.i541.i.i.i, align 16
  %arrayidx33.i546.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %538, i32 0, i32 27, i32 24, i32 %h.0575
  %539 = ptrtoint ptr %arrayidx33.i546.i.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx33.i546.i.i.i, align 4
  %add34.i547.i.i.i = add i32 %540, -1
  store i32 %add34.i547.i.i.i, ptr %arrayidx33.i546.i.i.i, align 4
  %541 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i548.i.i.i = getelementptr inbounds %struct.super_block, ptr %541, i32 0, i32 33
  %542 = ptrtoint ptr %s_fs_info.i72.i548.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %s_fs_info.i72.i548.i.i.i, align 16
  %arrayidx39.i549.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %543, i32 0, i32 27, i32 25, i32 %h.0575
  %544 = ptrtoint ptr %arrayidx39.i549.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx39.i549.i.i.i, align 4
  %add40.i550.i.i.i = add i32 %545, -1
  store i32 %add40.i550.i.i.i, ptr %arrayidx39.i549.i.i.i, align 4
  br label %if.end110

if.end12.i.i.i:                                   ; preds = %if.then3.i34.i
  %call.i.i.i469 = call fastcc i32 @get_parents(ptr noundef %tb, i32 noundef %h.0575) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i469)
  %cmp13.not.i.i.i = icmp eq i32 %call.i.i.i469, 0
  br i1 %cmp13.not.i.i.i, label %if.end16.i.i.i, label %if.end12.i.i.i.check_balance.exit_crit_edge

if.end12.i.i.i.check_balance.exit_crit_edge:      ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_balance.exit

if.end16.i.i.i:                                   ; preds = %if.end12.i.i.i
  %546 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i = getelementptr inbounds %struct.treepath, ptr %547, i32 0, i32 2
  %548 = ptrtoint ptr %547 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %547, align 4
  %add.neg.i.i.i.i = xor i32 %h.0575, -1
  %sub.i.i.i.i470 = add i32 %549, %add.neg.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i, i32 %sub.i.i.i.i470
  %550 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %cmp.i552.i.i.i = icmp eq ptr %551, null
  br i1 %cmp.i552.i.i.i, label %if.end16.i.i.i.get_lfree.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end16.i.i.i.get_lfree.exit.i.i.i_crit_edge:    ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end16.i.i.i
  %arrayidx.i553.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %552 = ptrtoint ptr %arrayidx.i553.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %arrayidx.i553.i.i.i, align 4
  %cmp2.i.i.i.i = icmp eq ptr %553, null
  br i1 %cmp2.i.i.i.i, label %lor.lhs.false.i.i.i.i.lor.lhs.false.i562.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false.i.i.i.i.lor.lhs.false.i562.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i562.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  %cmp3.i.i.i.i = icmp eq ptr %551, %553
  br i1 %cmp3.i.i.i.i, label %if.then4.i.i.i.i, label %if.end.i.i.i.i.if.end14.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end14.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i, i32 %sub.i.i.i.i470, i32 1
  %554 = ptrtoint ptr %pe_position.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %pe_position.i.i.i.i, align 4
  %add13.i.i.i.i = shl i32 %555, 3
  %phi.bo.i.i.i.i = add i32 %add13.i.i.i.i, 8
  br label %if.end14.i.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.then4.i.i.i.i, %if.end.i.i.i.i.if.end14.i.i.i.i_crit_edge
  %f.0.i.i.i.i = phi ptr [ %551, %if.then4.i.i.i.i ], [ %553, %if.end.i.i.i.i.if.end14.i.i.i.i_crit_edge ]
  %order.0.i.i.i.i = phi i32 [ %phi.bo.i.i.i.i, %if.then4.i.i.i.i ], [ 0, %if.end.i.i.i.i.if.end14.i.i.i.i_crit_edge ]
  %b_size.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i.i.i, i32 0, i32 4
  %556 = ptrtoint ptr %b_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %b_size.i.i.i.i, align 8
  %sub15.i.i.i.i = add i32 %557, -24
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i.i.i, i32 0, i32 5
  %558 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr16.i.i.i.i = getelementptr i8, ptr %559, i32 24
  %blk_nr_item.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %blk_nr_item.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %blk_nr_item.i.i.i.i, align 2
  %562 = call i16 @llvm.bswap.i16(i16 %561) #8
  %conv.i.i.i.i = zext i16 %562 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 4
  %add.ptr18.i.i.i.i = getelementptr i8, ptr %add.ptr16.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr20.i.i.i.i = getelementptr i8, ptr %add.ptr18.i.i.i.i, i32 %order.0.i.i.i.i
  %dc_size.i.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr20.i.i.i.i, i32 0, i32 1
  %563 = ptrtoint ptr %dc_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %dc_size.i.i.i.i, align 4
  %565 = call i16 @llvm.bswap.i16(i16 %564) #8
  %conv21.i.i.i.i = zext i16 %565 to i32
  %sub22.i.i.i.i = sub i32 %sub15.i.i.i.i, %conv21.i.i.i.i
  br label %lor.lhs.false.i562.i.i.i

lor.lhs.false.i562.i.i.i:                         ; preds = %if.end14.i.i.i.i, %lor.lhs.false.i.i.i.i.lor.lhs.false.i562.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ 0, %lor.lhs.false.i.i.i.i.lor.lhs.false.i562.i.i.i_crit_edge ], [ %sub22.i.i.i.i, %if.end14.i.i.i.i ]
  %arrayidx.i560.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %566 = ptrtoint ptr %arrayidx.i560.i.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %arrayidx.i560.i.i.i, align 4
  %cmp2.i561.i.i.i = icmp eq ptr %567, null
  br i1 %cmp2.i561.i.i.i, label %lor.lhs.false.i562.i.i.i.get_lfree.exit.i.i.i_crit_edge, label %if.end.i564.i.i.i

lor.lhs.false.i562.i.i.i.get_lfree.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i562.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i.i.i

if.end.i564.i.i.i:                                ; preds = %lor.lhs.false.i562.i.i.i
  %cmp3.i563.i.i.i = icmp eq ptr %551, %567
  br i1 %cmp3.i563.i.i.i, label %if.then4.i566.i.i.i, label %if.else.i.i.i41.i

if.then4.i566.i.i.i:                              ; preds = %if.end.i564.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i565.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i, i32 %sub.i.i.i.i470, i32 1
  %568 = ptrtoint ptr %pe_position.i565.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %pe_position.i565.i.i.i, align 4
  %sub13.i.i.i.i = add i32 %569, -1
  br label %if.end14.i576.i.i.i

if.else.i.i.i41.i:                                ; preds = %if.end.i564.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.i567.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %567, i32 0, i32 5
  %570 = ptrtoint ptr %b_data.i567.i.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %b_data.i567.i.i.i, align 4
  %blk_nr_item.i568.i.i.i = getelementptr inbounds %struct.block_head, ptr %571, i32 0, i32 1
  %572 = ptrtoint ptr %blk_nr_item.i568.i.i.i to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %blk_nr_item.i568.i.i.i, align 2
  %574 = call i16 @llvm.bswap.i16(i16 %573) #8
  %conv.i569.i.i.i = zext i16 %574 to i32
  br label %if.end14.i576.i.i.i

if.end14.i576.i.i.i:                              ; preds = %if.else.i.i.i41.i, %if.then4.i566.i.i.i
  %f.0.i570.i.i.i = phi ptr [ %551, %if.then4.i566.i.i.i ], [ %567, %if.else.i.i.i41.i ]
  %order.0.i571.i.i.i = phi i32 [ %sub13.i.i.i.i, %if.then4.i566.i.i.i ], [ %conv.i569.i.i.i, %if.else.i.i.i41.i ]
  %b_size.i572.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i570.i.i.i, i32 0, i32 4
  %575 = ptrtoint ptr %b_size.i572.i.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %b_size.i572.i.i.i, align 8
  %sub15.i573.i.i.i = add i32 %576, -24
  %b_data16.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i570.i.i.i, i32 0, i32 5
  %577 = ptrtoint ptr %b_data16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %b_data16.i.i.i.i, align 4
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %578, i32 24
  %blk_nr_item19.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %578, i32 0, i32 1
  %579 = ptrtoint ptr %blk_nr_item19.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %blk_nr_item19.i.i.i.i, align 2
  %581 = call i16 @llvm.bswap.i16(i16 %580) #8
  %conv20.i.i.i.i = zext i16 %581 to i32
  %mul.i574.i.i.i = shl nuw nsw i32 %conv20.i.i.i.i, 4
  %add.ptr21.i.i.i.i = getelementptr i8, ptr %add.ptr17.i.i.i.i, i32 %mul.i574.i.i.i
  %mul22.i.i.i.i = shl i32 %order.0.i571.i.i.i, 3
  %add.ptr23.i.i.i.i = getelementptr i8, ptr %add.ptr21.i.i.i.i, i32 %mul22.i.i.i.i
  %dc_size.i575.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr23.i.i.i.i, i32 0, i32 1
  %582 = ptrtoint ptr %dc_size.i575.i.i.i to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %dc_size.i575.i.i.i, align 4
  %584 = call i16 @llvm.bswap.i16(i16 %583) #8
  %conv24.i.i.i.i = zext i16 %584 to i32
  %sub25.i.i.i.i = sub i32 %sub15.i573.i.i.i, %conv24.i.i.i.i
  br label %get_lfree.exit.i.i.i

get_lfree.exit.i.i.i:                             ; preds = %if.end14.i576.i.i.i, %lor.lhs.false.i562.i.i.i.get_lfree.exit.i.i.i_crit_edge, %if.end16.i.i.i.get_lfree.exit.i.i.i_crit_edge
  %retval.0.i683.i.i.i = phi i32 [ %retval.0.i.ph.i.i.i, %if.end14.i576.i.i.i ], [ %retval.0.i.ph.i.i.i, %lor.lhs.false.i562.i.i.i.get_lfree.exit.i.i.i_crit_edge ], [ 0, %if.end16.i.i.i.get_lfree.exit.i.i.i_crit_edge ]
  %retval.0.i577.i.i.i = phi i32 [ %sub25.i.i.i.i, %if.end14.i576.i.i.i ], [ 0, %lor.lhs.false.i562.i.i.i.get_lfree.exit.i.i.i_crit_edge ], [ 0, %if.end16.i.i.i.get_lfree.exit.i.i.i_crit_edge ]
  call fastcc void @check_left(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %retval.0.i577.i.i.i) #8
  call fastcc void @check_right(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %retval.0.i683.i.i.i) #8
  %vn_nr_item19.i.i.i = getelementptr inbounds %struct.virtual_node, ptr %526, i32 0, i32 1
  %585 = ptrtoint ptr %vn_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %vn_nr_item19.i.i.i, align 4
  %conv20.i.i42.i = zext i16 %586 to i32
  %b_size.i.i43.i = getelementptr inbounds %struct.buffer_head, ptr %524, i32 0, i32 4
  %587 = ptrtoint ptr %b_size.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %b_size.i.i43.i, align 8
  %sub22.i.i44.i = add i32 %588, -32
  %div23.i.i.i = udiv i32 %sub22.i.i44.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i.i.i, i32 %conv20.i.i42.i)
  %cmp24.not.i.i.i = icmp ugt i32 %div23.i.i.i, %conv20.i.i42.i
  br i1 %cmp24.not.i.i.i, label %if.end160.i.i.i, label %if.then26.i.i.i

if.then26.i.i.i:                                  ; preds = %get_lfree.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i.i.i, i32 %conv20.i.i42.i)
  %cmp34.i.i.i = icmp eq i32 %div23.i.i.i, %conv20.i.i42.i
  br i1 %cmp34.i.i.i, label %if.then36.i.i.i, label %if.then26.i.i.i.if.end118.i.i.i_crit_edge

if.then26.i.i.i.if.end118.i.i.i_crit_edge:        ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i.i.i

if.then36.i.i.i:                                  ; preds = %if.then26.i.i.i
  %arrayidx.i.i45.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %589 = ptrtoint ptr %arrayidx.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %arrayidx.i.i45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %590, i32 %conv20.i.i42.i)
  %cmp40.not.not.i.i.i = icmp sgt i32 %590, %conv20.i.i42.i
  br i1 %cmp40.not.not.i.i.i, label %if.then42.i.i.i, label %if.end72.i.i.i

if.then42.i.i.i:                                  ; preds = %if.then36.i.i.i
  %591 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %tb_path, align 8
  %path_elements44.i.i.i = getelementptr inbounds %struct.treepath, ptr %592, i32 0, i32 2
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %592, align 4
  %sub49.i.i.i = sub i32 %594, %add.i.i32.i
  %pe_position.i.i46.i = getelementptr %struct.path_element, ptr %path_elements44.i.i.i, i32 %sub49.i.i.i, i32 1
  %595 = ptrtoint ptr %pe_position.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %pe_position.i.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %596)
  %cmp51.i.i.i = icmp eq i32 %596, 0
  br i1 %cmp51.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx53.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %597 = ptrtoint ptr %arrayidx53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %arrayidx53.i.i.i, align 4
  %b_data.i.i47.i = getelementptr inbounds %struct.buffer_head, ptr %598, i32 0, i32 5
  %599 = ptrtoint ptr %b_data.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %b_data.i.i47.i, align 4
  %blk_nr_item.i.i48.i = getelementptr inbounds %struct.block_head, ptr %600, i32 0, i32 1
  %601 = ptrtoint ptr %blk_nr_item.i.i48.i to i32
  call void @__asan_load2_noabort(i32 %601)
  %602 = load i16, ptr %blk_nr_item.i.i48.i, align 2
  %603 = call i16 @llvm.bswap.i16(i16 %602) #8
  %conv54.i.i.i = zext i16 %603 to i32
  br label %set_parameters.exit597.i.i.i

cond.false.i.i.i:                                 ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub55.i.i.i = add i32 %596, -1
  br label %set_parameters.exit597.i.i.i

set_parameters.exit597.i.i.i:                     ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %conv54.i.i.i, %cond.true.i.i.i ], [ %sub55.i.i.i, %cond.false.i.i.i ]
  %arrayidx57.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %604 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %arrayidx57.i.i.i, align 4
  %b_data58.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %605, i32 0, i32 5
  %606 = ptrtoint ptr %b_data58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %b_data58.i.i.i, align 4
  %add.ptr59.i.i.i = getelementptr i8, ptr %607, i32 24
  %blk_nr_item63.i.i.i = getelementptr inbounds %struct.block_head, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %blk_nr_item63.i.i.i to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %blk_nr_item63.i.i.i, align 2
  %610 = call i16 @llvm.bswap.i16(i16 %609) #8
  %conv64.i.i.i = zext i16 %610 to i32
  %mul.i.i49.i = shl nuw nsw i32 %conv64.i.i.i, 4
  %add.ptr65.i.i.i = getelementptr i8, ptr %add.ptr59.i.i.i, i32 %mul.i.i49.i
  %mul66.i.i.i = shl i32 %cond.i.i.i, 3
  %add.ptr67.i.i.i = getelementptr i8, ptr %add.ptr65.i.i.i, i32 %mul66.i.i.i
  %dc_size.i.i50.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr67.i.i.i, i32 0, i32 1
  %611 = ptrtoint ptr %dc_size.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %611)
  %612 = load i16, ptr %dc_size.i.i50.i, align 4
  %613 = call i16 @llvm.bswap.i16(i16 %612) #8
  %614 = udiv i16 %613, 24
  %div69.i.i.i = zext i16 %614 to i32
  %sub71.i.i.i = xor i32 %div69.i.i.i, -1
  %615 = ptrtoint ptr %arrayidx.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %sub71.i.i.i, ptr %arrayidx.i.i45.i, align 4
  %arrayidx3.i579.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %616 = ptrtoint ptr %arrayidx3.i579.i.i.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 0, ptr %arrayidx3.i579.i.i.i, align 4
  %arrayidx4.i580.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %617 = ptrtoint ptr %arrayidx4.i580.i.i.i to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 0, ptr %arrayidx4.i580.i.i.i, align 4
  %618 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i587.i.i.i = getelementptr inbounds %struct.super_block, ptr %619, i32 0, i32 33
  %620 = ptrtoint ptr %s_fs_info.i.i587.i.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %s_fs_info.i.i587.i.i.i, align 16
  %arrayidx22.i588.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %621, i32 0, i32 27, i32 22, i32 %h.0575
  %622 = ptrtoint ptr %arrayidx22.i588.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %arrayidx22.i588.i.i.i, align 4
  %add.i.i.i.i = add i32 %623, %sub71.i.i.i
  store i32 %add.i.i.i.i, ptr %arrayidx22.i588.i.i.i, align 4
  %624 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70.i589.i.i.i = getelementptr inbounds %struct.super_block, ptr %624, i32 0, i32 33
  %625 = ptrtoint ptr %s_fs_info.i70.i589.i.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %s_fs_info.i70.i589.i.i.i, align 16
  %arrayidx33.i592.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %626, i32 0, i32 27, i32 24, i32 %h.0575
  %627 = ptrtoint ptr %arrayidx33.i592.i.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %arrayidx33.i592.i.i.i, align 4
  %add34.i593.i.i.i = add i32 %628, -1
  store i32 %add34.i593.i.i.i, ptr %arrayidx33.i592.i.i.i, align 4
  %629 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i594.i.i.i = getelementptr inbounds %struct.super_block, ptr %629, i32 0, i32 33
  %630 = ptrtoint ptr %s_fs_info.i72.i594.i.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %s_fs_info.i72.i594.i.i.i, align 16
  %arrayidx39.i595.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %631, i32 0, i32 27, i32 25, i32 %h.0575
  %632 = ptrtoint ptr %arrayidx39.i595.i.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %arrayidx39.i595.i.i.i, align 4
  %add40.i596.i.i.i = add i32 %633, -1
  store i32 %add40.i596.i.i.i, ptr %arrayidx39.i595.i.i.i, align 4
  br label %if.end110

if.end72.i.i.i:                                   ; preds = %if.then36.i.i.i
  %arrayidx73.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %634 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %arrayidx73.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %635, i32 %conv20.i.i42.i)
  %cmp77.not.not.i.i.i = icmp sgt i32 %635, %conv20.i.i42.i
  br i1 %cmp77.not.not.i.i.i, label %if.then79.i.i.i, label %if.end72.i.i.i.if.end118.i.i.i_crit_edge

if.end72.i.i.i.if.end118.i.i.i_crit_edge:         ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i.i.i

if.then79.i.i.i:                                  ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %636 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %tb_path, align 8
  %path_elements82.i.i.i = getelementptr inbounds %struct.treepath, ptr %637, i32 0, i32 2
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %637, align 4
  %sub87.i.i.i = sub i32 %639, %add.i.i32.i
  %pe_position89.i.i.i = getelementptr %struct.path_element, ptr %path_elements82.i.i.i, i32 %sub87.i.i.i, i32 1
  %640 = ptrtoint ptr %pe_position89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %pe_position89.i.i.i, align 4
  %b_data90.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %528, i32 0, i32 5
  %642 = ptrtoint ptr %b_data90.i.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %b_data90.i.i.i, align 4
  %blk_nr_item91.i.i.i = getelementptr inbounds %struct.block_head, ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %blk_nr_item91.i.i.i to i32
  call void @__asan_load2_noabort(i32 %644)
  %645 = load i16, ptr %blk_nr_item91.i.i.i, align 2
  %646 = call i16 @llvm.bswap.i16(i16 %645) #8
  %conv92.i.i.i = zext i16 %646 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %641, i32 %conv92.i.i.i)
  %cmp93.i.i.i = icmp eq i32 %641, %conv92.i.i.i
  %add97.i.i.i = shl i32 %641, 3
  %phi.bo532.i.i.i = add i32 %add97.i.i.i, 8
  %cond99.i.i.i = select i1 %cmp93.i.i.i, i32 0, i32 %phi.bo532.i.i.i
  %arrayidx100.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %647 = ptrtoint ptr %arrayidx100.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %arrayidx100.i.i.i, align 4
  %b_data101.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %648, i32 0, i32 5
  %649 = ptrtoint ptr %b_data101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %b_data101.i.i.i, align 4
  %add.ptr102.i.i.i = getelementptr i8, ptr %650, i32 24
  %blk_nr_item106.i.i.i = getelementptr inbounds %struct.block_head, ptr %650, i32 0, i32 1
  %651 = ptrtoint ptr %blk_nr_item106.i.i.i to i32
  call void @__asan_load2_noabort(i32 %651)
  %652 = load i16, ptr %blk_nr_item106.i.i.i, align 2
  %653 = call i16 @llvm.bswap.i16(i16 %652) #8
  %conv107.i.i.i = zext i16 %653 to i32
  %mul108.i.i.i = shl nuw nsw i32 %conv107.i.i.i, 4
  %add.ptr109.i.i.i = getelementptr i8, ptr %add.ptr102.i.i.i, i32 %mul108.i.i.i
  %add.ptr111.i.i.i = getelementptr i8, ptr %add.ptr109.i.i.i, i32 %cond99.i.i.i
  %dc_size112.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr111.i.i.i, i32 0, i32 1
  %654 = ptrtoint ptr %dc_size112.i.i.i to i32
  call void @__asan_load2_noabort(i32 %654)
  %655 = load i16, ptr %dc_size112.i.i.i, align 4
  %656 = call i16 @llvm.bswap.i16(i16 %655) #8
  %657 = udiv i16 %656, 24
  %div114.i.i.i = zext i16 %657 to i32
  %sub116.i.i.i = xor i32 %div114.i.i.i, -1
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef %sub116.i.i.i, i32 noundef 0, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

if.end118.i.i.i:                                  ; preds = %if.end72.i.i.i.if.end118.i.i.i_crit_edge, %if.then26.i.i.i.if.end118.i.i.i_crit_edge
  %arrayidx120.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %658 = ptrtoint ptr %arrayidx120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %arrayidx120.i.i.i, align 4
  %arrayidx122.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %660 = ptrtoint ptr %arrayidx122.i.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %arrayidx122.i.i.i, align 4
  %add123.i.i.i = add i32 %661, %659
  call void @__sanitizer_cov_trace_cmp4(i32 %add123.i.i.i, i32 %conv20.i.i42.i)
  %cmp127.not.not.i.i.i = icmp sgt i32 %add123.i.i.i, %conv20.i.i42.i
  br i1 %cmp127.not.not.i.i.i, label %set_parameters.exit618.i.i.i, label %set_parameters.exit638.i.i.i

set_parameters.exit618.i.i.i:                     ; preds = %if.end118.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add126.i.i.i = add nuw nsw i32 %conv20.i.i42.i, 1
  %div133.i.i.i = udiv i32 %sub22.i.i44.i, 24
  %shl.i.i.i = shl nuw nsw i32 %div133.i.i.i, 1
  %sub140.i.i.i = add nuw nsw i32 %conv20.i.i42.i, 3
  %add143.i.i.i = add nuw nsw i32 %sub140.i.i.i, %shl.i.i.i
  %add144.i.i.i = sub i32 %add143.i.i.i, %add123.i.i.i
  %div145531.i.i.i = lshr i32 %add144.i.i.i, 1
  %add150.neg.i.i.i = xor i32 %div133.i.i.i, -1
  %sub153.neg.i.i.i = add i32 %659, %add150.neg.i.i.i
  %sub154.i.i.i = add i32 %sub153.neg.i.i.i, %div145531.i.i.i
  %sub158.i.i.i = sub i32 %add126.i.i.i, %sub154.i.i.i
  %662 = ptrtoint ptr %arrayidx122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %sub158.i.i.i, ptr %arrayidx122.i.i.i, align 4
  %663 = ptrtoint ptr %arrayidx120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %663)
  store i32 %sub154.i.i.i, ptr %arrayidx120.i.i.i, align 4
  %arrayidx4.i600.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %664 = ptrtoint ptr %arrayidx4.i600.i.i.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 0, ptr %arrayidx4.i600.i.i.i, align 4
  %665 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i607.i.i.i = getelementptr inbounds %struct.super_block, ptr %666, i32 0, i32 33
  %667 = ptrtoint ptr %s_fs_info.i.i607.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %s_fs_info.i.i607.i.i.i, align 16
  %arrayidx22.i608.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %668, i32 0, i32 27, i32 22, i32 %h.0575
  %669 = ptrtoint ptr %arrayidx22.i608.i.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %arrayidx22.i608.i.i.i, align 4
  %add.i609.i.i.i = add i32 %670, %sub158.i.i.i
  store i32 %add.i609.i.i.i, ptr %arrayidx22.i608.i.i.i, align 4
  %671 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70.i610.i.i.i = getelementptr inbounds %struct.super_block, ptr %671, i32 0, i32 33
  %672 = ptrtoint ptr %s_fs_info.i70.i610.i.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %s_fs_info.i70.i610.i.i.i, align 16
  %arrayidx27.i611.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %673, i32 0, i32 27, i32 23, i32 %h.0575
  %674 = ptrtoint ptr %arrayidx27.i611.i.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %arrayidx27.i611.i.i.i, align 4
  %add28.i.i.i.i = add i32 %675, %sub154.i.i.i
  store i32 %add28.i.i.i.i, ptr %arrayidx27.i611.i.i.i, align 4
  %676 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i71.i612.i.i.i = getelementptr inbounds %struct.super_block, ptr %676, i32 0, i32 33
  %677 = ptrtoint ptr %s_fs_info.i71.i612.i.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %s_fs_info.i71.i612.i.i.i, align 16
  %arrayidx33.i613.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %678, i32 0, i32 27, i32 24, i32 %h.0575
  %679 = ptrtoint ptr %arrayidx33.i613.i.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %arrayidx33.i613.i.i.i, align 4
  %add34.i614.i.i.i = add i32 %680, -1
  store i32 %add34.i614.i.i.i, ptr %arrayidx33.i613.i.i.i, align 4
  %681 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i615.i.i.i = getelementptr inbounds %struct.super_block, ptr %681, i32 0, i32 33
  %682 = ptrtoint ptr %s_fs_info.i72.i615.i.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %s_fs_info.i72.i615.i.i.i, align 16
  %arrayidx39.i616.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %683, i32 0, i32 27, i32 25, i32 %h.0575
  %684 = ptrtoint ptr %arrayidx39.i616.i.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %arrayidx39.i616.i.i.i, align 4
  %add40.i617.i.i.i = add i32 %685, -1
  store i32 %add40.i617.i.i.i, ptr %arrayidx39.i616.i.i.i, align 4
  br label %if.end110

set_parameters.exit638.i.i.i:                     ; preds = %if.end118.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %686 = ptrtoint ptr %arrayidx122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 0, ptr %arrayidx122.i.i.i, align 4
  %687 = ptrtoint ptr %arrayidx120.i.i.i to i32
  call void @__asan_store4_noabort(i32 %687)
  store i32 0, ptr %arrayidx120.i.i.i, align 4
  %arrayidx4.i621.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %688 = ptrtoint ptr %arrayidx4.i621.i.i.i to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 1, ptr %arrayidx4.i621.i.i.i, align 4
  br label %if.then97.sink.split

if.end160.i.i.i:                                  ; preds = %get_lfree.exit.i.i.i
  %arrayidx162.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.0575
  %689 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %arrayidx162.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %690, i32 %conv20.i.i42.i)
  %cmp166.not.not.i.i.i = icmp sgt i32 %690, %conv20.i.i42.i
  br i1 %cmp166.not.not.i.i.i, label %if.then168.i.i.i, label %if.end160.i.i.i.if.end225.i.i.i_crit_edge

if.end160.i.i.i.if.end225.i.i.i_crit_edge:        ; preds = %if.end160.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225.i.i.i

if.then168.i.i.i:                                 ; preds = %if.end160.i.i.i
  %call169.i.i.i = call fastcc i32 @is_left_neighbor_in_cache(ptr noundef %tb, i32 noundef %h.0575) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i.i.i)
  %tobool170.not.i.i.i = icmp eq i32 %call169.i.i.i, 0
  br i1 %tobool170.not.i.i.i, label %lor.lhs.false.i.i51.i, label %if.then168.i.i.i.if.then182.i.i.i_crit_edge

if.then168.i.i.i.if.then182.i.i.i_crit_edge:      ; preds = %if.then168.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then182.i.i.i

lor.lhs.false.i.i51.i:                            ; preds = %if.then168.i.i.i
  %arrayidx172.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %691 = ptrtoint ptr %arrayidx172.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %arrayidx172.i.i.i, align 4
  %693 = ptrtoint ptr %vn_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %693)
  %694 = load i16, ptr %vn_nr_item19.i.i.i, align 4
  %conv174.i.i.i = zext i16 %694 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %692, i32 %conv174.i.i.i)
  %cmp176.not.i.i.i = icmp sgt i32 %692, %conv174.i.i.i
  br i1 %cmp176.not.i.i.i, label %lor.lhs.false178.i.i.i, label %lor.lhs.false.i.i51.i.if.then182.i.i.i_crit_edge

lor.lhs.false.i.i51.i.if.then182.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then182.i.i.i

lor.lhs.false178.i.i.i:                           ; preds = %lor.lhs.false.i.i51.i
  %arrayidx180.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %695 = ptrtoint ptr %arrayidx180.i.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %arrayidx180.i.i.i, align 4
  %tobool181.not.i.i.i = icmp eq ptr %696, null
  br i1 %tobool181.not.i.i.i, label %lor.lhs.false178.i.i.i.if.then182.i.i.i_crit_edge, label %lor.lhs.false178.i.i.i.if.end225.i.i.i_crit_edge

lor.lhs.false178.i.i.i.if.end225.i.i.i_crit_edge: ; preds = %lor.lhs.false178.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225.i.i.i

lor.lhs.false178.i.i.i.if.then182.i.i.i_crit_edge: ; preds = %lor.lhs.false178.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then182.i.i.i

if.then182.i.i.i:                                 ; preds = %lor.lhs.false178.i.i.i.if.then182.i.i.i_crit_edge, %lor.lhs.false.i.i51.i.if.then182.i.i.i_crit_edge, %if.then168.i.i.i.if.then182.i.i.i_crit_edge
  %697 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %tb_path, align 8
  %path_elements186.i.i.i = getelementptr inbounds %struct.treepath, ptr %698, i32 0, i32 2
  %699 = ptrtoint ptr %698 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %698, align 4
  %sub191.i.i.i = sub i32 %700, %add.i.i32.i
  %pe_position193.i.i.i = getelementptr %struct.path_element, ptr %path_elements186.i.i.i, i32 %sub191.i.i.i, i32 1
  %701 = ptrtoint ptr %pe_position193.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %pe_position193.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %702)
  %cmp194.i.i.i = icmp eq i32 %702, 0
  br i1 %cmp194.i.i.i, label %cond.true196.i.i.i, label %cond.false202.i.i.i

cond.true196.i.i.i:                               ; preds = %if.then182.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx198.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %703 = ptrtoint ptr %arrayidx198.i.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %arrayidx198.i.i.i, align 4
  %b_data199.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %704, i32 0, i32 5
  %705 = ptrtoint ptr %b_data199.i.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %b_data199.i.i.i, align 4
  %blk_nr_item200.i.i.i = getelementptr inbounds %struct.block_head, ptr %706, i32 0, i32 1
  %707 = ptrtoint ptr %blk_nr_item200.i.i.i to i32
  call void @__asan_load2_noabort(i32 %707)
  %708 = load i16, ptr %blk_nr_item200.i.i.i, align 2
  %709 = call i16 @llvm.bswap.i16(i16 %708) #8
  %conv201.i.i.i = zext i16 %709 to i32
  br label %set_parameters.exit659.i.i.i

cond.false202.i.i.i:                              ; preds = %if.then182.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub203.i.i.i = add i32 %702, -1
  br label %set_parameters.exit659.i.i.i

set_parameters.exit659.i.i.i:                     ; preds = %cond.false202.i.i.i, %cond.true196.i.i.i
  %cond205.i.i.i = phi i32 [ %conv201.i.i.i, %cond.true196.i.i.i ], [ %sub203.i.i.i, %cond.false202.i.i.i ]
  %arrayidx207.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %710 = ptrtoint ptr %arrayidx207.i.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %arrayidx207.i.i.i, align 4
  %b_data208.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %711, i32 0, i32 5
  %712 = ptrtoint ptr %b_data208.i.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %b_data208.i.i.i, align 4
  %add.ptr209.i.i.i = getelementptr i8, ptr %713, i32 24
  %blk_nr_item213.i.i.i = getelementptr inbounds %struct.block_head, ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %blk_nr_item213.i.i.i to i32
  call void @__asan_load2_noabort(i32 %714)
  %715 = load i16, ptr %blk_nr_item213.i.i.i, align 2
  %716 = call i16 @llvm.bswap.i16(i16 %715) #8
  %conv214.i.i.i = zext i16 %716 to i32
  %mul215.i.i.i = shl nuw nsw i32 %conv214.i.i.i, 4
  %add.ptr216.i.i.i = getelementptr i8, ptr %add.ptr209.i.i.i, i32 %mul215.i.i.i
  %mul217.i.i.i = shl i32 %cond205.i.i.i, 3
  %add.ptr218.i.i.i = getelementptr i8, ptr %add.ptr216.i.i.i, i32 %mul217.i.i.i
  %dc_size219.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr218.i.i.i, i32 0, i32 1
  %717 = ptrtoint ptr %dc_size219.i.i.i to i32
  call void @__asan_load2_noabort(i32 %717)
  %718 = load i16, ptr %dc_size219.i.i.i, align 4
  %719 = call i16 @llvm.bswap.i16(i16 %718) #8
  %720 = udiv i16 %719, 24
  %div221.i.i.i = zext i16 %720 to i32
  %sub223.i.i.i = xor i32 %div221.i.i.i, -1
  %721 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 %sub223.i.i.i, ptr %arrayidx162.i.i.i, align 4
  %arrayidx3.i640.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %722 = ptrtoint ptr %arrayidx3.i640.i.i.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store i32 0, ptr %arrayidx3.i640.i.i.i, align 4
  %arrayidx4.i641.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %723 = ptrtoint ptr %arrayidx4.i641.i.i.i to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 0, ptr %arrayidx4.i641.i.i.i, align 4
  %724 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i648.i.i.i = getelementptr inbounds %struct.super_block, ptr %725, i32 0, i32 33
  %726 = ptrtoint ptr %s_fs_info.i.i648.i.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %s_fs_info.i.i648.i.i.i, align 16
  %arrayidx22.i649.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %727, i32 0, i32 27, i32 22, i32 %h.0575
  %728 = ptrtoint ptr %arrayidx22.i649.i.i.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %arrayidx22.i649.i.i.i, align 4
  %add.i650.i.i.i = add i32 %729, %sub223.i.i.i
  store i32 %add.i650.i.i.i, ptr %arrayidx22.i649.i.i.i, align 4
  %730 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70.i651.i.i.i = getelementptr inbounds %struct.super_block, ptr %730, i32 0, i32 33
  %731 = ptrtoint ptr %s_fs_info.i70.i651.i.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %s_fs_info.i70.i651.i.i.i, align 16
  %arrayidx33.i654.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %732, i32 0, i32 27, i32 24, i32 %h.0575
  %733 = ptrtoint ptr %arrayidx33.i654.i.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %arrayidx33.i654.i.i.i, align 4
  %add34.i655.i.i.i = add i32 %734, -1
  store i32 %add34.i655.i.i.i, ptr %arrayidx33.i654.i.i.i, align 4
  %735 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i656.i.i.i = getelementptr inbounds %struct.super_block, ptr %735, i32 0, i32 33
  %736 = ptrtoint ptr %s_fs_info.i72.i656.i.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %s_fs_info.i72.i656.i.i.i, align 16
  %arrayidx39.i657.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %737, i32 0, i32 27, i32 25, i32 %h.0575
  %738 = ptrtoint ptr %arrayidx39.i657.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %arrayidx39.i657.i.i.i, align 4
  %add40.i658.i.i.i = add i32 %739, -1
  store i32 %add40.i658.i.i.i, ptr %arrayidx39.i657.i.i.i, align 4
  br label %if.end110

if.end225.i.i.i:                                  ; preds = %lor.lhs.false178.i.i.i.if.end225.i.i.i_crit_edge, %if.end160.i.i.i.if.end225.i.i.i_crit_edge
  %arrayidx227.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.0575
  %740 = ptrtoint ptr %arrayidx227.i.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %arrayidx227.i.i.i, align 4
  %742 = ptrtoint ptr %vn_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %742)
  %743 = load i16, ptr %vn_nr_item19.i.i.i, align 4
  %conv229.i.i.i = zext i16 %743 to i32
  %add230.i.i.i = add nuw nsw i32 %conv229.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %741, i32 %conv229.i.i.i)
  %cmp231.not.not.i.i.i = icmp sgt i32 %741, %conv229.i.i.i
  br i1 %cmp231.not.not.i.i.i, label %set_parameters.exit680.i.i.i, label %if.end273.i.i.i

set_parameters.exit680.i.i.i:                     ; preds = %if.end225.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %744 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %tb_path, align 8
  %path_elements237.i.i.i = getelementptr inbounds %struct.treepath, ptr %745, i32 0, i32 2
  %746 = ptrtoint ptr %745 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %745, align 4
  %sub242.i.i.i = sub i32 %747, %add.i.i32.i
  %pe_position244.i.i.i = getelementptr %struct.path_element, ptr %path_elements237.i.i.i, i32 %sub242.i.i.i, i32 1
  %748 = ptrtoint ptr %pe_position244.i.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load i32, ptr %pe_position244.i.i.i, align 4
  %b_data245.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %528, i32 0, i32 5
  %750 = ptrtoint ptr %b_data245.i.i.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %b_data245.i.i.i, align 4
  %blk_nr_item246.i.i.i = getelementptr inbounds %struct.block_head, ptr %751, i32 0, i32 1
  %752 = ptrtoint ptr %blk_nr_item246.i.i.i to i32
  call void @__asan_load2_noabort(i32 %752)
  %753 = load i16, ptr %blk_nr_item246.i.i.i, align 2
  %754 = call i16 @llvm.bswap.i16(i16 %753) #8
  %conv247.i.i.i = zext i16 %754 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %749, i32 %conv247.i.i.i)
  %cmp248.i.i.i = icmp eq i32 %749, %conv247.i.i.i
  %add252.i.i.i = shl i32 %749, 3
  %phi.bo.i.i52.i = add i32 %add252.i.i.i, 8
  %cond254.i.i.i = select i1 %cmp248.i.i.i, i32 0, i32 %phi.bo.i.i52.i
  %arrayidx256.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %755 = ptrtoint ptr %arrayidx256.i.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %arrayidx256.i.i.i, align 4
  %b_data257.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %756, i32 0, i32 5
  %757 = ptrtoint ptr %b_data257.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %b_data257.i.i.i, align 4
  %add.ptr258.i.i.i = getelementptr i8, ptr %758, i32 24
  %blk_nr_item262.i.i.i = getelementptr inbounds %struct.block_head, ptr %758, i32 0, i32 1
  %759 = ptrtoint ptr %blk_nr_item262.i.i.i to i32
  call void @__asan_load2_noabort(i32 %759)
  %760 = load i16, ptr %blk_nr_item262.i.i.i, align 2
  %761 = call i16 @llvm.bswap.i16(i16 %760) #8
  %conv263.i.i.i = zext i16 %761 to i32
  %mul264.i.i.i = shl nuw nsw i32 %conv263.i.i.i, 4
  %add.ptr265.i.i.i = getelementptr i8, ptr %add.ptr258.i.i.i, i32 %mul264.i.i.i
  %add.ptr267.i.i.i = getelementptr i8, ptr %add.ptr265.i.i.i, i32 %cond254.i.i.i
  %dc_size268.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr267.i.i.i, i32 0, i32 1
  %762 = ptrtoint ptr %dc_size268.i.i.i to i32
  call void @__asan_load2_noabort(i32 %762)
  %763 = load i16, ptr %dc_size268.i.i.i, align 4
  %764 = call i16 @llvm.bswap.i16(i16 %763) #8
  %765 = udiv i16 %764, 24
  %div270.i.i.i = zext i16 %765 to i32
  %sub272.i.i.i = xor i32 %div270.i.i.i, -1
  %766 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 0, ptr %arrayidx162.i.i.i, align 4
  %767 = ptrtoint ptr %arrayidx227.i.i.i to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 %sub272.i.i.i, ptr %arrayidx227.i.i.i, align 4
  %arrayidx4.i662.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %768 = ptrtoint ptr %arrayidx4.i662.i.i.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 0, ptr %arrayidx4.i662.i.i.i, align 4
  %769 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i669.i.i.i = getelementptr inbounds %struct.super_block, ptr %770, i32 0, i32 33
  %771 = ptrtoint ptr %s_fs_info.i.i669.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %s_fs_info.i.i669.i.i.i, align 16
  %arrayidx27.i672.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %772, i32 0, i32 27, i32 23, i32 %h.0575
  %773 = ptrtoint ptr %arrayidx27.i672.i.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %arrayidx27.i672.i.i.i, align 4
  %add28.i673.i.i.i = add i32 %774, %sub272.i.i.i
  store i32 %add28.i673.i.i.i, ptr %arrayidx27.i672.i.i.i, align 4
  %775 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i71.i674.i.i.i = getelementptr inbounds %struct.super_block, ptr %775, i32 0, i32 33
  %776 = ptrtoint ptr %s_fs_info.i71.i674.i.i.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %s_fs_info.i71.i674.i.i.i, align 16
  %arrayidx33.i675.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %777, i32 0, i32 27, i32 24, i32 %h.0575
  %778 = ptrtoint ptr %arrayidx33.i675.i.i.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %arrayidx33.i675.i.i.i, align 4
  %add34.i676.i.i.i = add i32 %779, -1
  store i32 %add34.i676.i.i.i, ptr %arrayidx33.i675.i.i.i, align 4
  %780 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i677.i.i.i = getelementptr inbounds %struct.super_block, ptr %780, i32 0, i32 33
  %781 = ptrtoint ptr %s_fs_info.i72.i677.i.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %s_fs_info.i72.i677.i.i.i, align 16
  %arrayidx39.i678.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %782, i32 0, i32 27, i32 25, i32 %h.0575
  %783 = ptrtoint ptr %arrayidx39.i678.i.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %arrayidx39.i678.i.i.i, align 4
  %add40.i679.i.i.i = add i32 %784, -1
  store i32 %add40.i679.i.i.i, ptr %arrayidx39.i678.i.i.i, align 4
  br label %if.end110

if.end273.i.i.i:                                  ; preds = %if.end225.i.i.i
  %785 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %arrayidx162.i.i.i, align 4
  %add278.i.i.i = add i32 %786, %741
  call void @__sanitizer_cov_trace_cmp4(i32 %add278.i.i.i, i32 %conv229.i.i.i)
  %cmp282.not.not.i.i.i = icmp sgt i32 %add278.i.i.i, %conv229.i.i.i
  br i1 %cmp282.not.not.i.i.i, label %if.then284.i.i.i, label %do.body.i.i.i

if.then284.i.i.i:                                 ; preds = %if.end273.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %787 = ptrtoint ptr %b_size.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %b_size.i.i43.i, align 8
  %sub288.i.i.i = add i32 %788, -32
  %div289.i.i.i = udiv i32 %sub288.i.i.i, 24
  %sub297.i.i.i = add nuw nsw i32 %conv229.i.i.i, 3
  %add300.i.i.i = sub i32 %sub297.i.i.i, %add278.i.i.i
  %789 = lshr i32 %add300.i.i.i, 1
  %790 = add nuw i32 %div289.i.i.i, %789
  %div302530.i.i.i = and i32 %790, 2147483647
  %add307.neg.i.i.i = xor i32 %div289.i.i.i, -1
  %sub310.neg.i.i.i = add i32 %741, %add307.neg.i.i.i
  %sub311.i.i.i = add i32 %sub310.neg.i.i.i, %div302530.i.i.i
  %sub315.i.i.i = sub i32 %add230.i.i.i, %sub311.i.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %sub315.i.i.i, i32 noundef %sub311.i.i.i, i32 noundef 0, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

do.body.i.i.i:                                    ; preds = %if.end273.i.i.i
  %arrayidx318.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0575
  %791 = ptrtoint ptr %arrayidx318.i.i.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %arrayidx318.i.i.i, align 4
  %tobool319.not.i.i.i = icmp eq ptr %792, null
  br i1 %tobool319.not.i.i.i, label %land.lhs.true.i.i53.i, label %do.body.i.i.i.do.end.i.i.i_crit_edge

do.body.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

land.lhs.true.i.i53.i:                            ; preds = %do.body.i.i.i
  %arrayidx321.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %793 = ptrtoint ptr %arrayidx321.i.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %arrayidx321.i.i.i, align 4
  %tobool322.not.i.i.i = icmp eq ptr %794, null
  br i1 %tobool322.not.i.i.i, label %if.then323.i.i.i, label %land.lhs.true.i.i53.i.do.end.i.i.i_crit_edge

land.lhs.true.i.i53.i.do.end.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

if.then323.i.i.i:                                 ; preds = %land.lhs.true.i.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dc_check_balance_internal, ptr noundef nonnull @.str.52, i32 noundef 1892, ptr noundef nonnull @__func__.dc_check_balance_internal) #11
  unreachable

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i53.i.do.end.i.i.i_crit_edge, %do.body.i.i.i.do.end.i.i.i_crit_edge
  %call325.i.i.i = call fastcc i32 @is_left_neighbor_in_cache(ptr noundef %tb, i32 noundef %h.0575) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325.i.i.i)
  %tobool326.not.i.i.i = icmp eq i32 %call325.i.i.i, 0
  br i1 %tobool326.not.i.i.i, label %lor.lhs.false327.i.i.i, label %do.end.i.i.i.if.then331.i.i.i_crit_edge

do.end.i.i.i.if.then331.i.i.i_crit_edge:          ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then331.i.i.i

lor.lhs.false327.i.i.i:                           ; preds = %do.end.i.i.i
  %arrayidx329.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0575
  %795 = ptrtoint ptr %arrayidx329.i.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %arrayidx329.i.i.i, align 4
  %tobool330.not.i.i.i = icmp eq ptr %796, null
  br i1 %tobool330.not.i.i.i, label %lor.lhs.false327.i.i.i.if.then331.i.i.i_crit_edge, label %if.end350.i.i.i

lor.lhs.false327.i.i.i.if.then331.i.i.i_crit_edge: ; preds = %lor.lhs.false327.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then331.i.i.i

if.then331.i.i.i:                                 ; preds = %lor.lhs.false327.i.i.i.if.then331.i.i.i_crit_edge, %do.end.i.i.i.if.then331.i.i.i_crit_edge
  %797 = ptrtoint ptr %b_size.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %b_size.i.i43.i, align 8
  %sub334.i.i.i = add i32 %798, -32
  %div335.i.i.i = udiv i32 %sub334.i.i.i, 24
  %799 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %arrayidx162.i.i.i, align 4
  %801 = ptrtoint ptr %vn_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %801)
  %802 = load i16, ptr %vn_nr_item19.i.i.i, align 4
  %conv341.i.i.i = zext i16 %802 to i32
  %sub339.i.i.i = sub i32 2, %800
  %add342.i.i.i = add i32 %sub339.i.i.i, %div335.i.i.i
  %add343.i.i.i = add i32 %add342.i.i.i, %conv341.i.i.i
  %div344528.i.i.i = lshr i32 %add343.i.i.i, 1
  %add347.neg.neg.i.i.i = add nuw nsw i32 %conv341.i.i.i, 1
  %sub348.neg.i.i.i = sub nsw i32 %add347.neg.neg.i.i.i, %div344528.i.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef %sub348.neg.i.i.i, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

if.end350.i.i.i:                                  ; preds = %lor.lhs.false327.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %803 = ptrtoint ptr %b_size.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %b_size.i.i43.i, align 8
  %sub353.i.i.i = add i32 %804, -32
  %div354.i.i.i = udiv i32 %sub353.i.i.i, 24
  %805 = ptrtoint ptr %arrayidx227.i.i.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load i32, ptr %arrayidx227.i.i.i, align 4
  %807 = ptrtoint ptr %vn_nr_item19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %807)
  %808 = load i16, ptr %vn_nr_item19.i.i.i, align 4
  %conv360.i.i.i = zext i16 %808 to i32
  %sub358.i.i.i = sub i32 2, %806
  %add361.i.i.i = add i32 %sub358.i.i.i, %div354.i.i.i
  %add362.i.i.i = add i32 %add361.i.i.i, %conv360.i.i.i
  %div363529.i.i.i = lshr i32 %add362.i.i.i, 1
  %add366.neg.neg.i.i.i = add nuw nsw i32 %conv360.i.i.i, 1
  %sub367.neg.i.i.i = sub nsw i32 %add366.neg.neg.i.i.i, %div363529.i.i.i
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef %h.0575, i32 noundef 0, i32 noundef %sub367.neg.i.i.i, i32 noundef 1, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

if.else.i54.i:                                    ; preds = %do.end.i.i
  %sub7.i14.i.i = add i32 %522, -1
  %add.ptr8.i15.i.i = getelementptr %struct.path_element, ptr %path_elements.i26.i, i32 %sub7.i14.i.i
  %809 = ptrtoint ptr %add.ptr8.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %add.ptr8.i15.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %810, null
  br i1 %tobool.not.i16.i.i, label %do.body.i21.i.i, label %if.end15.i.i.i

do.body.i21.i.i:                                  ; preds = %if.else.i54.i
  %add.ptr.i17.i.i = getelementptr %struct.path_element, ptr %path_elements.i26.i, i32 %522
  %811 = ptrtoint ptr %add.ptr.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %add.ptr.i17.i.i, align 4
  %b_size.i18.i.i = getelementptr inbounds %struct.buffer_head, ptr %812, i32 0, i32 4
  %813 = ptrtoint ptr %b_size.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %b_size.i18.i.i, align 8
  %sub10.i.i.i = add i32 %814, -24
  %insert_size.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %815 = ptrtoint ptr %insert_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %insert_size.i.i.i, align 4
  %sub11.i.i.i = sub i32 0, %816
  %b_data.i19.i.i = getelementptr inbounds %struct.buffer_head, ptr %812, i32 0, i32 5
  %817 = ptrtoint ptr %b_data.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %b_data.i19.i.i, align 4
  %blk_free_space.i.i.i = getelementptr inbounds %struct.block_head, ptr %818, i32 0, i32 2
  %819 = ptrtoint ptr %blk_free_space.i.i.i to i32
  call void @__asan_load2_noabort(i32 %819)
  %820 = load i16, ptr %blk_free_space.i.i.i, align 2
  %821 = call i16 @llvm.bswap.i16(i16 %820) #8
  %conv.i.i55.i = zext i16 %821 to i32
  %sub12.i.i.i = sub i32 %sub10.i.i.i, %conv.i.i55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i.i.i, i32 %sub11.i.i.i)
  %cmp.not.i20.i.i = icmp sgt i32 %sub12.i.i.i, %sub11.i.i.i
  br i1 %cmp.not.i20.i.i, label %do.end.i31.i.i, label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dc_check_balance_leaf, ptr noundef nonnull @.str.53, i32 noundef 1957, ptr noundef nonnull @__func__.dc_check_balance_leaf) #11
  unreachable

do.end.i31.i.i:                                   ; preds = %do.body.i21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %822 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 0, ptr %arrayidx.i81.i.i.i.i, align 4
  %823 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 0, ptr %arrayidx3.i.i.i.i.i, align 4
  %824 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %824)
  store i32 1, ptr %arrayidx4.i.i.i.i.i, align 4
  %825 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 -1, ptr %lbytes.i.i.i.i.i, align 4
  %826 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 -1, ptr %rbytes.i.i.i.i.i, align 8
  br label %if.then97.sink.split

if.end15.i.i.i:                                   ; preds = %if.else.i54.i
  %call.i32.i.i = call fastcc i32 @get_parents(ptr noundef %tb, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %call.i32.i.i, 0
  br i1 %cmp16.not.i.i.i, label %if.end19.i.i.i, label %if.end15.i.i.i.check_balance.exit_crit_edge

if.end15.i.i.i.check_balance.exit_crit_edge:      ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_balance.exit

if.end19.i.i.i:                                   ; preds = %if.end15.i.i.i
  %827 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i33.i.i = getelementptr inbounds %struct.treepath, ptr %828, i32 0, i32 2
  %829 = ptrtoint ptr %828 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %828, align 4
  %sub.i.i34.i.i = add i32 %830, -1
  %add.ptr.i.i35.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i33.i.i, i32 %sub.i.i34.i.i
  %831 = ptrtoint ptr %add.ptr.i.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %add.ptr.i.i35.i.i, align 4
  %cmp.i.i36.i.i = icmp eq ptr %832, null
  br i1 %cmp.i.i36.i.i, label %if.end19.i.i.i.get_lfree.exit.i72.i.i_crit_edge, label %lor.lhs.false.i.i38.i.i

if.end19.i.i.i.get_lfree.exit.i72.i.i_crit_edge:  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i72.i.i

lor.lhs.false.i.i38.i.i:                          ; preds = %if.end19.i.i.i
  %833 = ptrtoint ptr %arrayidx.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %arrayidx.i1.i.i.i, align 4
  %cmp2.i.i37.i.i = icmp eq ptr %834, null
  br i1 %cmp2.i.i37.i.i, label %lor.lhs.false.i.i38.i.i.lor.lhs.false.i9.i.i.i_crit_edge, label %if.end.i.i40.i.i

lor.lhs.false.i.i38.i.i.lor.lhs.false.i9.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i9.i.i.i

if.end.i.i40.i.i:                                 ; preds = %lor.lhs.false.i.i38.i.i
  %cmp3.i.i39.i.i = icmp eq ptr %832, %834
  br i1 %cmp3.i.i39.i.i, label %if.then4.i.i44.i.i, label %if.end.i.i40.i.i.if.end14.i.i59.i.i_crit_edge

if.end.i.i40.i.i.if.end14.i.i59.i.i_crit_edge:    ; preds = %if.end.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i59.i.i

if.then4.i.i44.i.i:                               ; preds = %if.end.i.i40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i.i41.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i33.i.i, i32 %sub.i.i34.i.i, i32 1
  %835 = ptrtoint ptr %pe_position.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %pe_position.i.i41.i.i, align 4
  %add13.i.i42.i.i = shl i32 %836, 3
  %phi.bo.i.i43.i.i = add i32 %add13.i.i42.i.i, 8
  br label %if.end14.i.i59.i.i

if.end14.i.i59.i.i:                               ; preds = %if.then4.i.i44.i.i, %if.end.i.i40.i.i.if.end14.i.i59.i.i_crit_edge
  %f.0.i.i45.i.i = phi ptr [ %832, %if.then4.i.i44.i.i ], [ %834, %if.end.i.i40.i.i.if.end14.i.i59.i.i_crit_edge ]
  %order.0.i.i46.i.i = phi i32 [ %phi.bo.i.i43.i.i, %if.then4.i.i44.i.i ], [ 0, %if.end.i.i40.i.i.if.end14.i.i59.i.i_crit_edge ]
  %b_size.i.i47.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i45.i.i, i32 0, i32 4
  %837 = ptrtoint ptr %b_size.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %b_size.i.i47.i.i, align 8
  %sub15.i.i48.i.i = add i32 %838, -24
  %b_data.i.i49.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i.i45.i.i, i32 0, i32 5
  %839 = ptrtoint ptr %b_data.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %b_data.i.i49.i.i, align 4
  %add.ptr16.i.i50.i.i = getelementptr i8, ptr %840, i32 24
  %blk_nr_item.i.i51.i.i = getelementptr inbounds %struct.block_head, ptr %840, i32 0, i32 1
  %841 = ptrtoint ptr %blk_nr_item.i.i51.i.i to i32
  call void @__asan_load2_noabort(i32 %841)
  %842 = load i16, ptr %blk_nr_item.i.i51.i.i, align 2
  %843 = call i16 @llvm.bswap.i16(i16 %842) #8
  %conv.i.i52.i.i = zext i16 %843 to i32
  %mul.i.i53.i.i = shl nuw nsw i32 %conv.i.i52.i.i, 4
  %add.ptr18.i.i54.i.i = getelementptr i8, ptr %add.ptr16.i.i50.i.i, i32 %mul.i.i53.i.i
  %add.ptr20.i.i55.i.i = getelementptr i8, ptr %add.ptr18.i.i54.i.i, i32 %order.0.i.i46.i.i
  %dc_size.i.i56.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr20.i.i55.i.i, i32 0, i32 1
  %844 = ptrtoint ptr %dc_size.i.i56.i.i to i32
  call void @__asan_load2_noabort(i32 %844)
  %845 = load i16, ptr %dc_size.i.i56.i.i, align 4
  %846 = call i16 @llvm.bswap.i16(i16 %845) #8
  %conv21.i.i57.i.i = zext i16 %846 to i32
  %sub22.i.i58.i.i = sub i32 %sub15.i.i48.i.i, %conv21.i.i57.i.i
  br label %lor.lhs.false.i9.i.i.i

lor.lhs.false.i9.i.i.i:                           ; preds = %if.end14.i.i59.i.i, %lor.lhs.false.i.i38.i.i.lor.lhs.false.i9.i.i.i_crit_edge
  %retval.0.i.ph.i60.i.i = phi i32 [ 0, %lor.lhs.false.i.i38.i.i.lor.lhs.false.i9.i.i.i_crit_edge ], [ %sub22.i.i58.i.i, %if.end14.i.i59.i.i ]
  %847 = ptrtoint ptr %arrayidx.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %arrayidx.i7.i.i.i, align 4
  %cmp2.i8.i.i.i = icmp eq ptr %848, null
  br i1 %cmp2.i8.i.i.i, label %lor.lhs.false.i9.i.i.i.get_lfree.exit.i72.i.i_crit_edge, label %if.end.i11.i.i.i

lor.lhs.false.i9.i.i.i.get_lfree.exit.i72.i.i_crit_edge: ; preds = %lor.lhs.false.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_lfree.exit.i72.i.i

if.end.i11.i.i.i:                                 ; preds = %lor.lhs.false.i9.i.i.i
  %cmp3.i10.i.i.i = icmp eq ptr %832, %848
  br i1 %cmp3.i10.i.i.i, label %if.then4.i13.i.i.i, label %if.else.i.i62.i.i

if.then4.i13.i.i.i:                               ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pe_position.i12.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i33.i.i, i32 %sub.i.i34.i.i, i32 1
  %849 = ptrtoint ptr %pe_position.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %pe_position.i12.i.i.i, align 4
  %sub13.i.i61.i.i = add i32 %850, -1
  br label %if.end14.i23.i.i.i

if.else.i.i62.i.i:                                ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.i14.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %848, i32 0, i32 5
  %851 = ptrtoint ptr %b_data.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %b_data.i14.i.i.i, align 4
  %blk_nr_item.i15.i.i.i = getelementptr inbounds %struct.block_head, ptr %852, i32 0, i32 1
  %853 = ptrtoint ptr %blk_nr_item.i15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %853)
  %854 = load i16, ptr %blk_nr_item.i15.i.i.i, align 2
  %855 = call i16 @llvm.bswap.i16(i16 %854) #8
  %conv.i16.i.i.i = zext i16 %855 to i32
  br label %if.end14.i23.i.i.i

if.end14.i23.i.i.i:                               ; preds = %if.else.i.i62.i.i, %if.then4.i13.i.i.i
  %f.0.i17.i.i.i = phi ptr [ %832, %if.then4.i13.i.i.i ], [ %848, %if.else.i.i62.i.i ]
  %order.0.i18.i.i.i = phi i32 [ %sub13.i.i61.i.i, %if.then4.i13.i.i.i ], [ %conv.i16.i.i.i, %if.else.i.i62.i.i ]
  %b_size.i19.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i17.i.i.i, i32 0, i32 4
  %856 = ptrtoint ptr %b_size.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %b_size.i19.i.i.i, align 8
  %sub15.i20.i.i.i = add i32 %857, -24
  %b_data16.i.i63.i.i = getelementptr inbounds %struct.buffer_head, ptr %f.0.i17.i.i.i, i32 0, i32 5
  %858 = ptrtoint ptr %b_data16.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %b_data16.i.i63.i.i, align 4
  %add.ptr17.i.i64.i.i = getelementptr i8, ptr %859, i32 24
  %blk_nr_item19.i.i65.i.i = getelementptr inbounds %struct.block_head, ptr %859, i32 0, i32 1
  %860 = ptrtoint ptr %blk_nr_item19.i.i65.i.i to i32
  call void @__asan_load2_noabort(i32 %860)
  %861 = load i16, ptr %blk_nr_item19.i.i65.i.i, align 2
  %862 = call i16 @llvm.bswap.i16(i16 %861) #8
  %conv20.i.i66.i.i = zext i16 %862 to i32
  %mul.i21.i.i.i = shl nuw nsw i32 %conv20.i.i66.i.i, 4
  %add.ptr21.i.i67.i.i = getelementptr i8, ptr %add.ptr17.i.i64.i.i, i32 %mul.i21.i.i.i
  %mul22.i.i68.i.i = shl i32 %order.0.i18.i.i.i, 3
  %add.ptr23.i.i69.i.i = getelementptr i8, ptr %add.ptr21.i.i67.i.i, i32 %mul22.i.i68.i.i
  %dc_size.i22.i.i.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr23.i.i69.i.i, i32 0, i32 1
  %863 = ptrtoint ptr %dc_size.i22.i.i.i to i32
  call void @__asan_load2_noabort(i32 %863)
  %864 = load i16, ptr %dc_size.i22.i.i.i, align 4
  %865 = call i16 @llvm.bswap.i16(i16 %864) #8
  %conv24.i.i70.i.i = zext i16 %865 to i32
  %sub25.i.i71.i.i = sub i32 %sub15.i20.i.i.i, %conv24.i.i70.i.i
  br label %get_lfree.exit.i72.i.i

get_lfree.exit.i72.i.i:                           ; preds = %if.end14.i23.i.i.i, %lor.lhs.false.i9.i.i.i.get_lfree.exit.i72.i.i_crit_edge, %if.end19.i.i.i.get_lfree.exit.i72.i.i_crit_edge
  %retval.0.i54.i.i.i = phi i32 [ %retval.0.i.ph.i60.i.i, %if.end14.i23.i.i.i ], [ %retval.0.i.ph.i60.i.i, %lor.lhs.false.i9.i.i.i.get_lfree.exit.i72.i.i_crit_edge ], [ 0, %if.end19.i.i.i.get_lfree.exit.i72.i.i_crit_edge ]
  %retval.0.i24.i.i.i = phi i32 [ %sub25.i.i71.i.i, %if.end14.i23.i.i.i ], [ 0, %lor.lhs.false.i9.i.i.i.get_lfree.exit.i72.i.i_crit_edge ], [ 0, %if.end19.i.i.i.get_lfree.exit.i72.i.i_crit_edge ]
  call fastcc void @create_virtual_node(ptr noundef %tb, i32 noundef 0) #8
  %866 = ptrtoint ptr %tb_vn.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %tb_vn.i, align 4
  %868 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %tb_path, align 8
  %path_elements.i26.i.i.i = getelementptr inbounds %struct.treepath, ptr %869, i32 0, i32 2
  %870 = ptrtoint ptr %869 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %869, align 4
  %add.ptr.i27.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i26.i.i.i, i32 %871
  %872 = ptrtoint ptr %add.ptr.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %add.ptr.i27.i.i.i, align 4
  %vn_nr_item.i.i.i.i = getelementptr inbounds %struct.virtual_node, ptr %867, i32 0, i32 1
  %874 = ptrtoint ptr %vn_nr_item.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %874)
  %875 = load i16, ptr %vn_nr_item.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %875)
  %tobool.not.i.i.i.i = icmp eq i16 %875, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i30.i.i.i, label %if.then.i.i73.i.i

if.then.i.i73.i.i:                                ; preds = %get_lfree.exit.i72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vn_vi.i.i.i.i = getelementptr inbounds %struct.virtual_node, ptr %867, i32 0, i32 8
  %876 = ptrtoint ptr %vn_vi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %vn_vi.i.i.i.i, align 4
  %vi_type.i.i.i.i = getelementptr inbounds %struct.virtual_item, ptr %877, i32 0, i32 1
  %878 = ptrtoint ptr %vi_type.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %878)
  %879 = load i16, ptr %vi_type.i.i.i.i, align 4
  %880 = and i16 %879, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %880)
  %tobool2.not.i.i.i.i = icmp eq i16 %880, 0
  %spec.select.i.i.i.i = select i1 %tobool2.not.i.i.i.i, i32 0, i32 24
  %conv6.i.i.i.i = zext i16 %875 to i32
  %sub7.i.i.i.i = add nsw i32 %conv6.i.i.i.i, -1
  %vi_type9.i.i.i.i = getelementptr %struct.virtual_item, ptr %877, i32 %sub7.i.i.i.i, i32 1
  %881 = ptrtoint ptr %vi_type9.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %881)
  %882 = load i16, ptr %vi_type9.i.i.i.i, align 4
  %883 = and i16 %882, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %883)
  %tobool12.not.i.i.i.i = icmp eq i16 %883, 0
  %add14.i.i.i.i = add nuw nsw i32 %spec.select.i.i.i.i, 24
  %spec.select76.i.i.i.i = select i1 %tobool12.not.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %add14.i.i.i.i
  br label %if.end45.i.i.i.i

if.else.i30.i.i.i:                                ; preds = %get_lfree.exit.i72.i.i
  %b_data.i28.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %873, i32 0, i32 5
  %884 = ptrtoint ptr %b_data.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %b_data.i28.i.i.i, align 4
  %blk_nr_item.i29.i.i.i = getelementptr inbounds %struct.block_head, ptr %885, i32 0, i32 1
  %886 = ptrtoint ptr %blk_nr_item.i29.i.i.i to i32
  call void @__asan_load2_noabort(i32 %886)
  %887 = load i16, ptr %blk_nr_item.i29.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %887)
  %cmp.not.i.i.i.i = icmp eq i16 %887, 256
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i, label %if.then18.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %if.else.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %888 = call i16 @llvm.bswap.i16(i16 %887) #8
  %conv16.i.i.i.i = zext i16 %888 to i32
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.are_leaves_removable, ptr noundef nonnull @.str.55, i32 noundef 718, ptr noundef nonnull @__func__.are_leaves_removable, i32 noundef %conv16.i.i.i.i) #11
  unreachable

do.end.i.i.i.i:                                   ; preds = %if.else.i30.i.i.i
  %889 = ptrtoint ptr %CFR.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %CFR.i.i.i.i, align 8
  %tobool24.not.i.i.i.i = icmp eq ptr %890, null
  br i1 %tobool24.not.i.i.i.i, label %do.end.i.i.i.i.if.end45.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.end.i.i.i.i.if.end45.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %885, i32 24
  %891 = ptrtoint ptr %rkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load i32, ptr %rkey.i.i.i.i, align 8
  %b_data.i.i77.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %890, i32 0, i32 5
  %893 = ptrtoint ptr %b_data.i.i77.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %b_data.i.i77.i.i.i.i, align 4
  %add.ptr.i.i78.i.i.i.i = getelementptr i8, ptr %894, i32 24
  %arrayidx.i.i.i.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i78.i.i.i.i, i32 %892
  %call29.i.i.i.i = call i32 @comp_short_le_keys(ptr noundef %add.ptr.i.i.i.i.i.i, ptr noundef %arrayidx.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %call29.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i.i, label %if.then31.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end45.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end45.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i.i.i

if.then31.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  %ih_version.i.i.i.i.i = getelementptr i8, ptr %885, i32 46
  %895 = ptrtoint ptr %ih_version.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %895, i32 2)
  %896 = load i16, ptr %ih_version.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %896)
  %cmp.i.i.i.i.i.i.i = icmp eq i16 %896, 0
  %u.i.i.i.i.i.i.i = getelementptr i8, ptr %885, i32 32
  br i1 %cmp.i.i.i.i.i.i.i, label %is_direntry_le_ih.exit.i.i.i.i, label %is_direntry_le_ih.exit.thread.i.i.i.i

is_direntry_le_ih.exit.i.i.i.i:                   ; preds = %if.then31.i.i.i.i
  %k_uniqueness.i.i.i.i.i.i.i = getelementptr i8, ptr %885, i32 36
  %897 = ptrtoint ptr %k_uniqueness.i.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %897, i32 4)
  %898 = load i32, ptr %k_uniqueness.i.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %898)
  %cond.i.i.not.i.i.i.i = icmp eq i32 %898, -201261056
  br i1 %cond.i.i.not.i.i.i.i, label %cond.true.i.i.i.i.i.i, label %is_direntry_le_ih.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge

is_direntry_le_ih.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i.i.i

is_direntry_le_ih.exit.thread.i.i.i.i:            ; preds = %if.then31.i.i.i.i
  %899 = ptrtoint ptr %u.i.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %899, i32 8)
  %900 = load i64, ptr %u.i.i.i.i.i.i.i, align 1
  %901 = and i64 %900, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %901)
  %phi.cmp1.i.i.not.i.i.i.i = icmp eq i64 %901, 48
  br i1 %phi.cmp1.i.i.not.i.i.i.i, label %cond.false.i.i.i.i.i.i, label %is_direntry_le_ih.exit.thread.i.i.i.i.if.end45.i.i.i.i_crit_edge

is_direntry_le_ih.exit.thread.i.i.i.i.if.end45.i.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i.i.i

cond.true.i.i.i.i.i.i:                            ; preds = %is_direntry_le_ih.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %902 = ptrtoint ptr %u.i.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %902, i32 4)
  %903 = load i32, ptr %u.i.i.i.i.i.i.i, align 1
  %904 = call i32 @llvm.bswap.i32(i32 %903) #8
  %conv.i.i.i.i.i.i = zext i32 %904 to i64
  br label %le_ih_k_offset.exit.i.i.i.i

cond.false.i.i.i.i.i.i:                           ; preds = %is_direntry_le_ih.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %905 = and i64 %900, -241
  %906 = call i64 @llvm.bswap.i64(i64 %905) #8
  br label %le_ih_k_offset.exit.i.i.i.i

le_ih_k_offset.exit.i.i.i.i:                      ; preds = %cond.false.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i
  %cond.i.i80.i.i.i.i = phi i64 [ %conv.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i ], [ %906, %cond.false.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i.i80.i.i.i.i)
  %cmp37.i.i.i.i = icmp eq i64 %cond.i.i80.i.i.i.i, 1
  br i1 %cmp37.i.i.i.i, label %if.then39.i.i.i.i, label %le_ih_k_offset.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge

le_ih_k_offset.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge: ; preds = %le_ih_k_offset.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i.i.i

if.then39.i.i.i.i:                                ; preds = %le_ih_k_offset.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.are_leaves_removable, ptr noundef nonnull @.str.56, i32 noundef 743, ptr noundef nonnull @__func__.are_leaves_removable) #11
  unreachable

if.end45.i.i.i.i:                                 ; preds = %le_ih_k_offset.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge, %is_direntry_le_ih.exit.thread.i.i.i.i.if.end45.i.i.i.i_crit_edge, %is_direntry_le_ih.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end45.i.i.i.i_crit_edge, %do.end.i.i.i.i.if.end45.i.i.i.i_crit_edge, %if.then.i.i73.i.i
  %ih_size.2.i.i.i.i = phi i32 [ 0, %land.lhs.true.i.i.i.i.if.end45.i.i.i.i_crit_edge ], [ 24, %le_ih_k_offset.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge ], [ 0, %is_direntry_le_ih.exit.i.i.i.i.if.end45.i.i.i.i_crit_edge ], [ 0, %do.end.i.i.i.i.if.end45.i.i.i.i_crit_edge ], [ %spec.select76.i.i.i.i, %if.then.i.i73.i.i ], [ 0, %is_direntry_le_ih.exit.thread.i.i.i.i.if.end45.i.i.i.i_crit_edge ]
  %b_size.i31.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %873, i32 0, i32 4
  %907 = ptrtoint ptr %b_size.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %b_size.i31.i.i.i, align 8
  %sub46.i.i.i.i = add i32 %908, -24
  %vn_size.i.i.i.i = getelementptr inbounds %struct.virtual_node, ptr %867, i32 0, i32 2
  %909 = ptrtoint ptr %vn_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %909)
  %910 = load i16, ptr %vn_size.i.i.i.i, align 2
  %conv47.i.i.i.i = sext i16 %910 to i32
  %add48.i.i.i.i = add i32 %sub46.i.i.i.i, %conv47.i.i.i.i
  %add49.i.i.i.i = add i32 %retval.0.i24.i.i.i, %retval.0.i54.i.i.i
  %add50.i.i.i.i = add i32 %add49.i.i.i.i, %ih_size.2.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i.i.i.i, i32 %add50.i.i.i.i)
  %cmp51.not.i.i.i.i = icmp sgt i32 %add48.i.i.i.i, %add50.i.i.i.i
  br i1 %cmp51.not.i.i.i.i, label %if.end25.i.i.i, label %are_leaves_removable.exit.i.i.i

are_leaves_removable.exit.i.i.i:                  ; preds = %if.end45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %911 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %911)
  store i32 -1, ptr %arrayidx.i81.i.i.i.i, align 4
  %912 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %912)
  store i32 -1, ptr %arrayidx3.i.i.i.i.i, align 4
  %913 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 -1, ptr %arrayidx4.i.i.i.i.i, align 4
  %914 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %914)
  store i32 -1, ptr %lbytes.i.i.i.i.i, align 4
  %915 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 -1, ptr %rbytes.i.i.i.i.i, align 8
  %916 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %917, i32 0, i32 33
  %918 = ptrtoint ptr %s_fs_info.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %s_fs_info.i.i.i.i.i.i, align 16
  %arrayidx22.i.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %919, i32 0, i32 27, i32 22, i32 0
  %920 = ptrtoint ptr %arrayidx22.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %arrayidx22.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %921, -1
  store i32 %add.i.i.i.i.i, ptr %arrayidx22.i.i.i.i.i, align 4
  %922 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %922, i32 0, i32 33
  %923 = ptrtoint ptr %s_fs_info.i70.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %s_fs_info.i70.i.i.i.i.i, align 16
  %arrayidx27.i.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %924, i32 0, i32 27, i32 23, i32 0
  %925 = ptrtoint ptr %arrayidx27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %arrayidx27.i.i.i.i.i, align 4
  %add28.i.i.i.i.i = add i32 %926, -1
  store i32 %add28.i.i.i.i.i, ptr %arrayidx27.i.i.i.i.i, align 4
  %927 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i71.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %927, i32 0, i32 33
  %928 = ptrtoint ptr %s_fs_info.i71.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %s_fs_info.i71.i.i.i.i.i, align 16
  %arrayidx33.i.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %929, i32 0, i32 27, i32 24, i32 0
  %930 = ptrtoint ptr %arrayidx33.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load i32, ptr %arrayidx33.i.i.i.i.i, align 4
  %add34.i.i.i.i.i = add i32 %931, -1
  store i32 %add34.i.i.i.i.i, ptr %arrayidx33.i.i.i.i.i, align 4
  %932 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %932, i32 0, i32 33
  %933 = ptrtoint ptr %s_fs_info.i72.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %s_fs_info.i72.i.i.i.i.i, align 16
  %arrayidx39.i.i.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %934, i32 0, i32 27, i32 25, i32 0
  %935 = ptrtoint ptr %arrayidx39.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %arrayidx39.i.i.i.i.i, align 4
  %add40.i.i.i.i.i = add i32 %936, -1
  store i32 %add40.i.i.i.i.i, ptr %arrayidx39.i.i.i.i.i, align 4
  %937 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i32.i.i.i = getelementptr inbounds %struct.super_block, ptr %937, i32 0, i32 33
  %938 = ptrtoint ptr %s_fs_info.i.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %s_fs_info.i.i32.i.i.i, align 16
  %leaves_removable.i.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %939, i32 0, i32 27, i32 14
  %940 = ptrtoint ptr %leaves_removable.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load i32, ptr %leaves_removable.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %941, 1
  store i32 %inc.i.i.i.i, ptr %leaves_removable.i.i.i.i, align 4
  br label %if.end110

if.end25.i.i.i:                                   ; preds = %if.end45.i.i.i.i
  call fastcc void @check_left(ptr noundef %tb, i32 noundef 0, i32 noundef %retval.0.i24.i.i.i) #8
  call fastcc void @check_right(ptr noundef %tb, i32 noundef 0, i32 noundef %retval.0.i54.i.i.i) #8
  %942 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load i32, ptr %arrayidx.i81.i.i.i.i, align 4
  %vn_nr_item.i74.i.i = getelementptr inbounds %struct.virtual_node, ptr %526, i32 0, i32 1
  %944 = ptrtoint ptr %vn_nr_item.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %944)
  %945 = load i16, ptr %vn_nr_item.i74.i.i, align 4
  %conv27.i.i.i = zext i16 %945 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %943, i32 %conv27.i.i.i)
  %cmp28.not.i.i.i = icmp slt i32 %943, %conv27.i.i.i
  br i1 %cmp28.not.i.i.i, label %if.end25.i.i.i.if.end55.i.i.i_crit_edge, label %land.lhs.true.i75.i.i

if.end25.i.i.i.if.end55.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i.i

land.lhs.true.i75.i.i:                            ; preds = %if.end25.i.i.i
  %946 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %lbytes.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %947)
  %cmp30.i.i.i471 = icmp eq i32 %947, -1
  br i1 %cmp30.i.i.i471, label %if.then32.i.i.i, label %land.lhs.true.i75.i.i.if.end55.i.i.i_crit_edge

land.lhs.true.i75.i.i.if.end55.i.i.i_crit_edge:   ; preds = %land.lhs.true.i75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i.i

if.then32.i.i.i:                                  ; preds = %land.lhs.true.i75.i.i
  %call33.i.i.i = call fastcc i32 @is_left_neighbor_in_cache(ptr noundef %tb, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %call33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %lor.lhs.false.i76.i.i, label %if.then32.i.i.i.do.body47.i.i.i_crit_edge

if.then32.i.i.i.do.body47.i.i.i_crit_edge:        ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47.i.i.i

lor.lhs.false.i76.i.i:                            ; preds = %if.then32.i.i.i
  %948 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %arrayidx3.i.i.i.i.i, align 8
  %950 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %951)
  %cmp36.i.i.i = icmp ne i32 %951, -1
  %cond.neg.i.i.i = sext i1 %cmp36.i.i.i to i32
  %sub38.i.i.i = add i32 %949, %cond.neg.i.i.i
  %952 = ptrtoint ptr %vn_nr_item.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %952)
  %953 = load i16, ptr %vn_nr_item.i74.i.i, align 4
  %conv40.i.i.i = zext i16 %953 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i.i.i, i32 %conv40.i.i.i)
  %cmp41.i.i.i = icmp slt i32 %sub38.i.i.i, %conv40.i.i.i
  br i1 %cmp41.i.i.i, label %lor.lhs.false.i76.i.i.do.body47.i.i.i_crit_edge, label %lor.lhs.false43.i.i.i

lor.lhs.false.i76.i.i.do.body47.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47.i.i.i

lor.lhs.false43.i.i.i:                            ; preds = %lor.lhs.false.i76.i.i
  %954 = ptrtoint ptr %arrayidx.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %arrayidx.i1.i.i.i, align 4
  %tobool45.not.i.i.i = icmp eq ptr %955, null
  br i1 %tobool45.not.i.i.i, label %lor.lhs.false43.i.i.i.do.body47.i.i.i_crit_edge, label %lor.lhs.false43.i.i.i.if.end55.i.i.i_crit_edge

lor.lhs.false43.i.i.i.if.end55.i.i.i_crit_edge:   ; preds = %lor.lhs.false43.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i.i

lor.lhs.false43.i.i.i.do.body47.i.i.i_crit_edge:  ; preds = %lor.lhs.false43.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47.i.i.i

do.body47.i.i.i:                                  ; preds = %lor.lhs.false43.i.i.i.do.body47.i.i.i_crit_edge, %lor.lhs.false.i76.i.i.do.body47.i.i.i_crit_edge, %if.then32.i.i.i.do.body47.i.i.i_crit_edge
  %956 = ptrtoint ptr %arrayidx.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %arrayidx.i7.i.i.i, align 4
  %tobool49.not.i.i.i = icmp eq ptr %957, null
  br i1 %tobool49.not.i.i.i, label %if.then50.i.i.i, label %do.end53.i.i.i

if.then50.i.i.i:                                  ; preds = %do.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dc_check_balance_leaf, ptr noundef nonnull @.str.54, i32 noundef 1991, ptr noundef nonnull @__func__.dc_check_balance_leaf) #11
  unreachable

do.end53.i.i.i:                                   ; preds = %do.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

if.end55.i.i.i:                                   ; preds = %lor.lhs.false43.i.i.i.if.end55.i.i.i_crit_edge, %land.lhs.true.i75.i.i.if.end55.i.i.i_crit_edge, %if.end25.i.i.i.if.end55.i.i.i_crit_edge
  %958 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load i32, ptr %arrayidx3.i.i.i.i.i, align 8
  %960 = ptrtoint ptr %vn_nr_item.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %960)
  %961 = load i16, ptr %vn_nr_item.i74.i.i, align 4
  %conv59.i.i.i = zext i16 %961 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %959, i32 %conv59.i.i.i)
  %cmp60.not.i.i.i = icmp slt i32 %959, %conv59.i.i.i
  br i1 %cmp60.not.i.i.i, label %if.end55.i.i.i.if.end67.i.i.i_crit_edge, label %land.lhs.true62.i.i.i

if.end55.i.i.i.if.end67.i.i.i_crit_edge:          ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i.i

land.lhs.true62.i.i.i:                            ; preds = %if.end55.i.i.i
  %962 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load i32, ptr %rbytes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %963)
  %cmp64.i.i.i = icmp eq i32 %963, -1
  br i1 %cmp64.i.i.i, label %if.then66.i.i.i, label %land.lhs.true62.i.i.i.if.end67.i.i.i_crit_edge

land.lhs.true62.i.i.i.if.end67.i.i.i_crit_edge:   ; preds = %land.lhs.true62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i.i

if.then66.i.i.i:                                  ; preds = %land.lhs.true62.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @set_parameters(ptr noundef %tb, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef null, i32 noundef -1, i32 noundef -1) #8
  br label %if.end110

if.end67.i.i.i:                                   ; preds = %land.lhs.true62.i.i.i.if.end67.i.i.i_crit_edge, %if.end55.i.i.i.if.end67.i.i.i_crit_edge
  %call68.i.i.i = call fastcc i32 @is_leaf_removable(ptr noundef %tb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i.i)
  %tobool69.not.i.i.i = icmp eq i32 %call68.i.i.i, 0
  br i1 %tobool69.not.i.i.i, label %if.end71.i.i.i, label %if.end67.i.i.i.if.end110_crit_edge

if.end67.i.i.i.if.end110_crit_edge:               ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end71.i.i.i:                                   ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %964 = ptrtoint ptr %vn_nr_item.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %964)
  %965 = load i16, ptr %vn_nr_item.i74.i.i, align 4
  %conv73.i.i.i = zext i16 %965 to i32
  %966 = ptrtoint ptr %s0num.i.i.i to i32
  call void @__asan_store4_noabort(i32 %966)
  store i32 %conv73.i.i.i, ptr %s0num.i.i.i, align 8
  %967 = ptrtoint ptr %arrayidx.i81.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %967)
  store i32 0, ptr %arrayidx.i81.i.i.i.i, align 4
  %968 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %968)
  store i32 0, ptr %arrayidx3.i.i.i.i.i, align 4
  %969 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %969)
  store i32 1, ptr %arrayidx4.i.i.i.i.i, align 4
  %970 = ptrtoint ptr %lbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %970)
  store i32 -1, ptr %lbytes.i.i.i.i.i, align 4
  %971 = ptrtoint ptr %rbytes.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %971)
  store i32 -1, ptr %rbytes.i.i.i.i.i, align 8
  br label %if.then97.sink.split

check_balance.exit:                               ; preds = %if.end15.i.i.i.check_balance.exit_crit_edge, %if.end12.i.i.i.check_balance.exit_crit_edge, %ip_check_balance.exit.i
  %retval.0.i472 = phi i32 [ %retval.1.i.i467, %ip_check_balance.exit.i ], [ %call.i.i.i469, %if.end12.i.i.i.check_balance.exit_crit_edge ], [ %call.i32.i.i, %if.end15.i.i.i.check_balance.exit_crit_edge ]
  %972 = zext i32 %retval.0.i472 to i64
  call void @__sanitizer_cov_trace_switch(i64 %972, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %retval.0.i472, label %check_balance.exit.if.else210_crit_edge [
    i32 0, label %check_balance.exit.if.end110_crit_edge
    i32 -4, label %check_balance.exit.if.then97_crit_edge
  ]

check_balance.exit.if.then97_crit_edge:           ; preds = %check_balance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

check_balance.exit.if.end110_crit_edge:           ; preds = %check_balance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

check_balance.exit.if.else210_crit_edge:          ; preds = %check_balance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.then97.sink.split:                             ; preds = %if.end71.i.i.i, %do.end.i31.i.i, %set_parameters.exit638.i.i.i, %set_parameters.exit.i.i.i
  %h.0575.lcssa649.sink672 = phi i32 [ %h.0575, %set_parameters.exit638.i.i.i ], [ %h.0575, %set_parameters.exit.i.i.i ], [ 0, %if.end71.i.i.i ], [ 0, %do.end.i31.i.i ]
  %973 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i628.i.i.i = getelementptr inbounds %struct.super_block, ptr %974, i32 0, i32 33
  %975 = ptrtoint ptr %s_fs_info.i.i628.i.i.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %s_fs_info.i.i628.i.i.i, align 16
  %arrayidx33.i633.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %976, i32 0, i32 27, i32 24, i32 %h.0575.lcssa649.sink672
  %977 = ptrtoint ptr %arrayidx33.i633.i.i.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %arrayidx33.i633.i.i.i, align 4
  %add34.i634.i.i.i = add i32 %978, -1
  store i32 %add34.i634.i.i.i, ptr %arrayidx33.i633.i.i.i, align 4
  %979 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72.i635.i.i.i = getelementptr inbounds %struct.super_block, ptr %979, i32 0, i32 33
  %980 = ptrtoint ptr %s_fs_info.i72.i635.i.i.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %s_fs_info.i72.i635.i.i.i, align 16
  %arrayidx39.i636.i.i.i = getelementptr %struct.reiserfs_sb_info, ptr %981, i32 0, i32 27, i32 25, i32 %h.0575.lcssa649.sink672
  %982 = ptrtoint ptr %arrayidx39.i636.i.i.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %arrayidx39.i636.i.i.i, align 4
  %add40.i.i30.i.i = add i32 %983, -1
  store i32 %add40.i.i30.i.i, ptr %arrayidx39.i636.i.i.i, align 4
  br label %if.then97

if.then97:                                        ; preds = %if.then97.sink.split, %check_balance.exit.if.then97_crit_edge
  %call98 = call fastcc i32 @get_neighbors(ptr noundef %tb, i32 noundef %h.0575)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.then97.if.else210_crit_edge

if.then97.if.else210_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end102:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %h.0575)
  %cmp103.not = icmp eq i32 %h.0575, 4
  br i1 %cmp103.not, label %if.end102.do.body.i475.preheader_crit_edge, label %if.then105

if.end102.do.body.i475.preheader_crit_edge:       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i475.preheader

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %h.0575, 1
  %arrayidx107 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %add
  %984 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %984)
  store i32 0, ptr %arrayidx107, align 4
  br label %do.body.i475.preheader

if.end110:                                        ; preds = %check_balance.exit.if.end110_crit_edge, %if.end67.i.i.i.if.end110_crit_edge, %if.then66.i.i.i, %do.end53.i.i.i, %are_leaves_removable.exit.i.i.i, %if.end350.i.i.i, %if.then331.i.i.i, %if.then284.i.i.i, %set_parameters.exit680.i.i.i, %set_parameters.exit659.i.i.i, %set_parameters.exit618.i.i.i, %if.then79.i.i.i, %set_parameters.exit597.i.i.i, %set_parameters.exit551.i.i.i
  %call111 = call fastcc i32 @get_neighbors(ptr noundef %tb, i32 noundef %h.0575)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112.not = icmp eq i32 %call111, 0
  br i1 %cmp112.not, label %if.end115, label %if.end110.if.else210_crit_edge

if.end110.if.else210_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end115:                                        ; preds = %if.end110
  %call116 = call fastcc i32 @get_empty_nodes(ptr noundef %tb, i32 noundef %h.0575)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117.not = icmp eq i32 %call116, 0
  br i1 %cmp117.not, label %if.end120, label %if.end115.if.else210_crit_edge

if.end115.if.else210_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else210

if.end120:                                        ; preds = %if.end115
  %985 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %tb_path, align 8
  %path_elements122 = getelementptr inbounds %struct.treepath, ptr %986, i32 0, i32 2
  %987 = ptrtoint ptr %986 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %986, align 4
  %sub = sub i32 %988, %h.0575
  %add.ptr126 = getelementptr %struct.path_element, ptr %path_elements122, i32 %sub
  %989 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %add.ptr126, align 4
  %tobool128.not = icmp eq ptr %990, null
  br i1 %tobool128.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end120
  %arrayidx130 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %991 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load i32, ptr %arrayidx130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %992)
  %cmp131.not = icmp eq i32 %992, 1
  br i1 %cmp131.not, label %do.end, label %if.then133

if.then133:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 2673, ptr noundef nonnull @.str) #11
  unreachable

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %h.0575)
  %cmp135 = icmp ult i32 %h.0575, 4
  %add139 = add nuw nsw i32 %h.0575, 1
  br i1 %cmp135, label %do.end.for.inc.sink.split_crit_edge, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end.for.inc.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end120
  %add147 = add nuw nsw i32 %h.0575, 1
  %sub148 = sub i32 %988, %add147
  %add.ptr149 = getelementptr %struct.path_element, ptr %path_elements122, i32 %sub148
  %993 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %add.ptr149, align 4
  %tobool151.not = icmp eq ptr %994, null
  %arrayidx154 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h.0575
  %995 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load i32, ptr %arrayidx154, align 4
  br i1 %tobool151.not, label %if.then152, label %if.else181

if.then152:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %996)
  %cmp155 = icmp sgt i32 %996, 1
  br i1 %cmp155, label %do.body158, label %if.else172

do.body158:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %h.0575)
  %cmp159 = icmp eq i32 %h.0575, 4
  br i1 %cmp159, label %if.then161, label %do.end164

if.then161:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef 2687, ptr noundef nonnull @.str) #11
  unreachable

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  %997 = mul i32 %996, 24
  %add168 = add i32 %997, -16
  br label %for.inc.sink.split

if.else172:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %h.0575)
  %cmp173 = icmp ult i32 %h.0575, 4
  br i1 %cmp173, label %if.else172.for.inc.sink.split_crit_edge, label %if.else172.for.inc_crit_edge

if.else172.for.inc_crit_edge:                     ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else172.for.inc.sink.split_crit_edge:          ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else181:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %998 = mul i32 %996, 24
  %mul185 = add i32 %998, -24
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else181, %if.else172.for.inc.sink.split_crit_edge, %do.end164, %do.end.for.inc.sink.split_crit_edge
  %add139.sink = phi i32 [ %add147, %do.end164 ], [ %add147, %if.else181 ], [ %add139, %do.end.for.inc.sink.split_crit_edge ], [ %add147, %if.else172.for.inc.sink.split_crit_edge ]
  %.sink = phi i32 [ %add168, %do.end164 ], [ %mul185, %if.else181 ], [ 0, %do.end.for.inc.sink.split_crit_edge ], [ 0, %if.else172.for.inc.sink.split_crit_edge ]
  %arrayidx140 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %add139.sink
  %999 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %999)
  store i32 %.sink, ptr %arrayidx140, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else172.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc191.pre-phi = phi i32 [ %add147, %if.else172.for.inc_crit_edge ], [ %add139, %do.end.for.inc_crit_edge ], [ %add139.sink, %for.inc.sink.split ]
  %exitcond.not = icmp eq i32 %inc191.pre-phi, 5
  br i1 %exitcond.not, label %for.inc.do.body.i475.preheader_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.do.body.i475.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i475.preheader

do.body.i475.preheader:                           ; preds = %for.inc.do.body.i475.preheader_crit_edge, %if.then105, %if.end102.do.body.i475.preheader_crit_edge, %land.rhs.do.body.i475.preheader_crit_edge
  %arrayidx168.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 0
  %arrayidx168.i.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 1
  %arrayidx168.i.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 2
  %arrayidx168.i.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 3
  %arrayidx168.i.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 4
  %arrayidx168.i.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 5
  br label %do.body.i475

do.body.i475:                                     ; preds = %cleanup.i.do.body.i475_crit_edge, %do.body.i475.preheader
  %repeat_counter.0.i = phi i32 [ %inc186.i, %cleanup.i.do.body.i475_crit_edge ], [ 0, %do.body.i475.preheader ]
  %1000 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %tb_path, align 8
  %1002 = ptrtoint ptr %1001 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %1001, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1003)
  %cmp375.i = icmp sgt i32 %1003, 1
  br i1 %cmp375.i, label %do.body.i475.for.body.i_crit_edge, label %do.body.i475.land.rhs42.i.preheader_crit_edge

do.body.i475.land.rhs42.i.preheader_crit_edge:    ; preds = %do.body.i475
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs42.i.preheader

do.body.i475.for.body.i_crit_edge:                ; preds = %do.body.i475
  br label %for.body.i

land.rhs42.i.preheader:                           ; preds = %for.cond39.preheader.i.land.rhs42.i.preheader_crit_edge, %do.body.i475.land.rhs42.i.preheader_crit_edge
  br label %land.rhs42.i

for.cond39.preheader.i:                           ; preds = %for.inc.i
  br i1 %tobool.not.i482, label %for.cond39.preheader.i.land.rhs42.i.preheader_crit_edge, label %for.cond39.preheader.i.if.then185.i_crit_edge

for.cond39.preheader.i.if.then185.i_crit_edge:    ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

for.cond39.preheader.i.land.rhs42.i.preheader_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs42.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.i475.for.body.i_crit_edge
  %i.0377.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %1003, %do.body.i475.for.body.i_crit_edge ]
  %1004 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %tb_path, align 8
  %path_elements.i476 = getelementptr inbounds %struct.treepath, ptr %1005, i32 0, i32 2
  %add.ptr.i477 = getelementptr %struct.path_element, ptr %path_elements.i476, i32 %i.0377.i
  %1006 = ptrtoint ptr %add.ptr.i477 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %add.ptr.i477, align 4
  %tobool2.not.i = icmp eq ptr %1007, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i478

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i478:                                     ; preds = %for.body.i
  %1008 = ptrtoint ptr %1005 to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load i32, ptr %1005, align 4
  %add.ptr8.i = getelementptr %struct.path_element, ptr %path_elements.i476, i32 %1009
  %1010 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %add.ptr8.i, align 4
  %cmp15.i = icmp eq ptr %1011, %1007
  br i1 %cmp15.i, label %if.then16.i, label %if.then.i478.if.end.i481_crit_edge

if.then.i478.if.end.i481_crit_edge:               ; preds = %if.then.i478
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i481

if.then16.i:                                      ; preds = %if.then.i478
  call void @__sanitizer_cov_trace_pc() #10
  %1012 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %tb_sb, align 8
  %sub.i479 = sub i32 %1009, %i.0377.i
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1013, ptr noundef nonnull %1007, ptr noundef nonnull @.str.66, i32 noundef %sub.i479) #8
  br label %if.end.i481

if.end.i481:                                      ; preds = %if.then16.i, %if.then.i478.if.end.i481_crit_edge
  %1014 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %tb_sb, align 8
  %1016 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %tb_path, align 8
  %path_elements26.i = getelementptr inbounds %struct.treepath, ptr %1017, i32 0, i32 2
  %add.ptr28.i = getelementptr %struct.path_element, ptr %path_elements26.i, i32 %i.0377.i
  %1018 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %add.ptr28.i, align 4
  %call.i.i480 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1015, ptr noundef %1019, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i480)
  %tobool30.not.i = icmp eq i32 %call.i.i480, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end.i481.for.inc.i_crit_edge

if.end.i481.for.inc.i_crit_edge:                  ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then31.i:                                      ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #10
  %1020 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %tb_path, align 8
  %path_elements33.i = getelementptr inbounds %struct.treepath, ptr %1021, i32 0, i32 2
  %add.ptr35.i = getelementptr %struct.path_element, ptr %path_elements33.i, i32 %i.0377.i
  %1022 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %add.ptr35.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %if.end.i481.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %locked.1.i = phi ptr [ null, %if.end.i481.for.inc.i_crit_edge ], [ %1023, %if.then31.i ], [ null, %for.body.i.for.inc.i_crit_edge ]
  %dec.i = add nsw i32 %i.0377.i, -1
  %tobool.not.i482 = icmp eq ptr %locked.1.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0377.i)
  %cmp.i483 = icmp sgt i32 %i.0377.i, 2
  %or.cond.i484 = select i1 %tobool.not.i482, i1 %cmp.i483, i1 false
  br i1 %or.cond.i484, label %for.inc.i.for.body.i_crit_edge, label %for.cond39.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

land.rhs42.i:                                     ; preds = %for.inc160.i.land.rhs42.i_crit_edge, %land.rhs42.i.preheader
  %i.1383.i = phi i32 [ %inc.i, %for.inc160.i.land.rhs42.i_crit_edge ], [ 0, %land.rhs42.i.preheader ]
  %arrayidx.i485 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %i.1383.i
  %1024 = ptrtoint ptr %arrayidx.i485 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load i32, ptr %arrayidx.i485, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1025)
  %tobool43.not.i = icmp eq i32 %1025, 0
  br i1 %tobool43.not.i, label %land.rhs42.i.for.body167.i_crit_edge, label %for.body45.i

land.rhs42.i.for.body167.i_crit_edge:             ; preds = %land.rhs42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body167.i

for.body45.i:                                     ; preds = %land.rhs42.i
  %arrayidx46.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %i.1383.i
  %1026 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load i32, ptr %arrayidx46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1027)
  %tobool47.not.i = icmp eq i32 %1027, 0
  br i1 %tobool47.not.i, label %for.body45.i.land.lhs.true103.i_crit_edge, label %if.then48.i

for.body45.i.land.lhs.true103.i_crit_edge:        ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

if.then48.i:                                      ; preds = %for.body45.i
  %arrayidx49.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %i.1383.i
  %1028 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %arrayidx49.i, align 4
  %tobool50.not.i = icmp eq ptr %1029, null
  br i1 %tobool50.not.i, label %if.then48.i.land.lhs.true66.i_crit_edge, label %if.then51.i

if.then48.i.land.lhs.true66.i_crit_edge:          ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66.i

if.then51.i:                                      ; preds = %if.then48.i
  %1030 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1031, ptr noundef nonnull %1029, ptr noundef nonnull @.str.67, i32 noundef %i.1383.i) #8
  %1032 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %tb_sb, align 8
  %1034 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %arrayidx49.i, align 4
  %call.i342.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1033, ptr noundef %1035, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342.i)
  %tobool59.not.i = icmp eq i32 %call.i342.i, 0
  br i1 %tobool59.not.i, label %if.end64.i, label %if.then51.i.land.lhs.true66.i_crit_edge

if.then51.i.land.lhs.true66.i_crit_edge:          ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66.i

if.end64.i:                                       ; preds = %if.then51.i
  %1036 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %arrayidx49.i, align 4
  %tobool65.not.i = icmp eq ptr %1037, null
  br i1 %tobool65.not.i, label %if.end64.i.land.lhs.true66.i_crit_edge, label %if.end64.i.if.then185.i_crit_edge

if.end64.i.if.then185.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

if.end64.i.land.lhs.true66.i_crit_edge:           ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true66.i

land.lhs.true66.i:                                ; preds = %if.end64.i.land.lhs.true66.i_crit_edge, %if.then51.i.land.lhs.true66.i_crit_edge, %if.then48.i.land.lhs.true66.i_crit_edge
  %arrayidx67.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %i.1383.i
  %1038 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %arrayidx67.i, align 4
  %tobool68.not.i = icmp eq ptr %1039, null
  br i1 %tobool68.not.i, label %land.lhs.true66.i.land.lhs.true84.i_crit_edge, label %if.then69.i

land.lhs.true66.i.land.lhs.true84.i_crit_edge:    ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true84.i

if.then69.i:                                      ; preds = %land.lhs.true66.i
  %1040 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1041, ptr noundef nonnull %1039, ptr noundef nonnull @.str.68, i32 noundef %i.1383.i) #8
  %1042 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %tb_sb, align 8
  %1044 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %arrayidx67.i, align 4
  %call.i343.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1043, ptr noundef %1045, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i343.i)
  %tobool77.not.i = icmp eq i32 %call.i343.i, 0
  br i1 %tobool77.not.i, label %if.end82.i, label %if.then69.i.land.lhs.true84.i_crit_edge

if.then69.i.land.lhs.true84.i_crit_edge:          ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true84.i

if.end82.i:                                       ; preds = %if.then69.i
  %1046 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %arrayidx67.i, align 4
  %tobool83.not.i = icmp eq ptr %1047, null
  br i1 %tobool83.not.i, label %if.end82.i.land.lhs.true84.i_crit_edge, label %if.end82.i.if.then185.i_crit_edge

if.end82.i.if.then185.i_crit_edge:                ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

if.end82.i.land.lhs.true84.i_crit_edge:           ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true84.i

land.lhs.true84.i:                                ; preds = %if.end82.i.land.lhs.true84.i_crit_edge, %if.then69.i.land.lhs.true84.i_crit_edge, %land.lhs.true66.i.land.lhs.true84.i_crit_edge
  %arrayidx85.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %i.1383.i
  %1048 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %arrayidx85.i, align 4
  %tobool86.not.i = icmp eq ptr %1049, null
  br i1 %tobool86.not.i, label %land.lhs.true84.i.land.lhs.true103.i_crit_edge, label %if.then87.i

land.lhs.true84.i.land.lhs.true103.i_crit_edge:   ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

if.then87.i:                                      ; preds = %land.lhs.true84.i
  %1050 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1051, ptr noundef nonnull %1049, ptr noundef nonnull @.str.69, i32 noundef %i.1383.i) #8
  %1052 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %tb_sb, align 8
  %1054 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %arrayidx85.i, align 4
  %call.i344.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1053, ptr noundef %1055, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344.i)
  %tobool95.not.i = icmp eq i32 %call.i344.i, 0
  br i1 %tobool95.not.i, label %if.end101.i, label %if.then87.i.land.lhs.true103.i_crit_edge

if.then87.i.land.lhs.true103.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

if.end101.i:                                      ; preds = %if.then87.i
  %1056 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %arrayidx85.i, align 4
  %tobool102.not.i = icmp eq ptr %1057, null
  br i1 %tobool102.not.i, label %if.end101.i.land.lhs.true103.i_crit_edge, label %if.end101.i.if.then185.i_crit_edge

if.end101.i.if.then185.i_crit_edge:               ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

if.end101.i.land.lhs.true103.i_crit_edge:         ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

land.lhs.true103.i:                               ; preds = %if.end101.i.land.lhs.true103.i_crit_edge, %if.then87.i.land.lhs.true103.i_crit_edge, %land.lhs.true84.i.land.lhs.true103.i_crit_edge, %for.body45.i.land.lhs.true103.i_crit_edge
  %arrayidx104.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %i.1383.i
  %1058 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load i32, ptr %arrayidx104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1059)
  %tobool105.not.i = icmp eq i32 %1059, 0
  br i1 %tobool105.not.i, label %land.lhs.true103.i.for.inc160.i_crit_edge, label %if.then106.i

land.lhs.true103.i.for.inc160.i_crit_edge:        ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc160.i

if.then106.i:                                     ; preds = %land.lhs.true103.i
  %arrayidx107.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %i.1383.i
  %1060 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %arrayidx107.i, align 4
  %tobool108.not.i = icmp eq ptr %1061, null
  br i1 %tobool108.not.i, label %if.then106.i.land.lhs.true124.i_crit_edge, label %if.then109.i

if.then106.i.land.lhs.true124.i_crit_edge:        ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true124.i

if.then109.i:                                     ; preds = %if.then106.i
  %1062 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1063, ptr noundef nonnull %1061, ptr noundef nonnull @.str.70, i32 noundef %i.1383.i) #8
  %1064 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %tb_sb, align 8
  %1066 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %arrayidx107.i, align 4
  %call.i345.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1065, ptr noundef %1067, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345.i)
  %tobool117.not.i = icmp eq i32 %call.i345.i, 0
  br i1 %tobool117.not.i, label %if.end122.i, label %if.then109.i.land.lhs.true124.i_crit_edge

if.then109.i.land.lhs.true124.i_crit_edge:        ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true124.i

if.end122.i:                                      ; preds = %if.then109.i
  %1068 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %arrayidx107.i, align 4
  %tobool123.not.i = icmp eq ptr %1069, null
  br i1 %tobool123.not.i, label %if.end122.i.land.lhs.true124.i_crit_edge, label %if.end122.i.if.then185.i_crit_edge

if.end122.i.if.then185.i_crit_edge:               ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

if.end122.i.land.lhs.true124.i_crit_edge:         ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true124.i

land.lhs.true124.i:                               ; preds = %if.end122.i.land.lhs.true124.i_crit_edge, %if.then109.i.land.lhs.true124.i_crit_edge, %if.then106.i.land.lhs.true124.i_crit_edge
  %arrayidx125.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %i.1383.i
  %1070 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %arrayidx125.i, align 4
  %tobool126.not.i = icmp eq ptr %1071, null
  br i1 %tobool126.not.i, label %land.lhs.true124.i.land.lhs.true142.i_crit_edge, label %if.then127.i

land.lhs.true124.i.land.lhs.true142.i_crit_edge:  ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true142.i

if.then127.i:                                     ; preds = %land.lhs.true124.i
  %1072 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1073, ptr noundef nonnull %1071, ptr noundef nonnull @.str.71, i32 noundef %i.1383.i) #8
  %1074 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %tb_sb, align 8
  %1076 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %arrayidx125.i, align 4
  %call.i346.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1075, ptr noundef %1077, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346.i)
  %tobool135.not.i = icmp eq i32 %call.i346.i, 0
  br i1 %tobool135.not.i, label %if.end140.i, label %if.then127.i.land.lhs.true142.i_crit_edge

if.then127.i.land.lhs.true142.i_crit_edge:        ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true142.i

if.end140.i:                                      ; preds = %if.then127.i
  %1078 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %arrayidx125.i, align 4
  %tobool141.not.i = icmp eq ptr %1079, null
  br i1 %tobool141.not.i, label %if.end140.i.land.lhs.true142.i_crit_edge, label %if.end140.i.if.then185.i_crit_edge

if.end140.i.if.then185.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

if.end140.i.land.lhs.true142.i_crit_edge:         ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true142.i

land.lhs.true142.i:                               ; preds = %if.end140.i.land.lhs.true142.i_crit_edge, %if.then127.i.land.lhs.true142.i_crit_edge, %land.lhs.true124.i.land.lhs.true142.i_crit_edge
  %arrayidx143.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %i.1383.i
  %1080 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %arrayidx143.i, align 4
  %tobool144.not.i = icmp eq ptr %1081, null
  br i1 %tobool144.not.i, label %land.lhs.true142.i.for.inc160.i_crit_edge, label %if.then145.i

land.lhs.true142.i.for.inc160.i_crit_edge:        ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc160.i

if.then145.i:                                     ; preds = %land.lhs.true142.i
  %1082 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %tb_sb, align 8
  call fastcc void @tb_buffer_sanity_check(ptr noundef %1083, ptr noundef nonnull %1081, ptr noundef nonnull @.str.72, i32 noundef %i.1383.i) #8
  %1084 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %tb_sb, align 8
  %1086 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %arrayidx143.i, align 4
  %call.i347.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1085, ptr noundef %1087, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347.i)
  %tobool153.not.i = icmp eq i32 %call.i347.i, 0
  br i1 %tobool153.not.i, label %if.then154.i, label %if.then145.i.for.inc160.i_crit_edge

if.then145.i.for.inc160.i_crit_edge:              ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc160.i

if.then154.i:                                     ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  %1088 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %arrayidx143.i, align 4
  br label %for.inc160.i

for.inc160.i:                                     ; preds = %if.then154.i, %if.then145.i.for.inc160.i_crit_edge, %land.lhs.true142.i.for.inc160.i_crit_edge, %land.lhs.true103.i.for.inc160.i_crit_edge
  %locked.8.i = phi ptr [ null, %if.then145.i.for.inc160.i_crit_edge ], [ %1089, %if.then154.i ], [ null, %land.lhs.true142.i.for.inc160.i_crit_edge ], [ null, %land.lhs.true103.i.for.inc160.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.1383.i, 1
  %tobool40.not.i = icmp eq ptr %locked.8.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1383.i)
  %cmp41.i = icmp ult i32 %i.1383.i, 4
  %or.cond339.i = select i1 %tobool40.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond339.i, label %for.inc160.i.land.rhs42.i_crit_edge, label %for.end161.i

for.inc160.i.land.rhs42.i_crit_edge:              ; preds = %for.inc160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs42.i

for.end161.i:                                     ; preds = %for.inc160.i
  br i1 %tobool40.not.i, label %for.end161.i.for.body167.i_crit_edge, label %for.end161.i.if.then185.i_crit_edge

for.end161.i.if.then185.i_crit_edge:              ; preds = %for.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

for.end161.i.for.body167.i_crit_edge:             ; preds = %for.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body167.i

for.body167.i:                                    ; preds = %for.end161.i.for.body167.i_crit_edge, %land.rhs42.i.for.body167.i_crit_edge
  %1090 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %arrayidx168.i, align 4
  %tobool169.not.i = icmp eq ptr %1091, null
  br i1 %tobool169.not.i, label %for.body167.i.for.inc181.i_crit_edge, label %if.then170.i

for.body167.i.for.inc181.i_crit_edge:             ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i

if.then170.i:                                     ; preds = %for.body167.i
  %1092 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load ptr, ptr %tb_sb, align 8
  %call.i348.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %1093, ptr noundef nonnull %1091, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i)
  %tobool175.not.i = icmp eq i32 %call.i348.i, 0
  br i1 %tobool175.not.i, label %if.then176.i, label %if.then170.i.for.inc181.i_crit_edge

if.then170.i.for.inc181.i_crit_edge:              ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i

if.then176.i:                                     ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #10
  %1094 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %arrayidx168.i, align 4
  br label %for.inc181.i

for.inc181.i:                                     ; preds = %if.then176.i, %if.then170.i.for.inc181.i_crit_edge, %for.body167.i.for.inc181.i_crit_edge
  %locked.10.i = phi ptr [ null, %if.then170.i.for.inc181.i_crit_edge ], [ %1095, %if.then176.i ], [ null, %for.body167.i.for.inc181.i_crit_edge ]
  %tobool163.not.i = icmp eq ptr %locked.10.i, null
  br i1 %tobool163.not.i, label %for.body167.i.1, label %for.inc181.i.for.end183.i_crit_edge

for.inc181.i.for.end183.i_crit_edge:              ; preds = %for.inc181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end183.i

for.body167.i.1:                                  ; preds = %for.inc181.i
  %1096 = ptrtoint ptr %arrayidx168.i.1 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %arrayidx168.i.1, align 4
  %tobool169.not.i.1 = icmp eq ptr %1097, null
  br i1 %tobool169.not.i.1, label %for.body167.i.1.for.inc181.i.1_crit_edge, label %if.then170.i.1

for.body167.i.1.for.inc181.i.1_crit_edge:         ; preds = %for.body167.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.1

if.then170.i.1:                                   ; preds = %for.body167.i.1
  %1098 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %tb_sb, align 8
  %call.i348.i.1 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1099, ptr noundef nonnull %1097, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i.1)
  %tobool175.not.i.1 = icmp eq i32 %call.i348.i.1, 0
  br i1 %tobool175.not.i.1, label %if.then176.i.1, label %if.then170.i.1.for.inc181.i.1_crit_edge

if.then170.i.1.for.inc181.i.1_crit_edge:          ; preds = %if.then170.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.1

if.then176.i.1:                                   ; preds = %if.then170.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %1100 = ptrtoint ptr %arrayidx168.i.1 to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %arrayidx168.i.1, align 4
  br label %for.inc181.i.1

for.inc181.i.1:                                   ; preds = %if.then176.i.1, %if.then170.i.1.for.inc181.i.1_crit_edge, %for.body167.i.1.for.inc181.i.1_crit_edge
  %locked.10.i.1 = phi ptr [ null, %if.then170.i.1.for.inc181.i.1_crit_edge ], [ %1101, %if.then176.i.1 ], [ null, %for.body167.i.1.for.inc181.i.1_crit_edge ]
  %tobool163.not.i.1 = icmp eq ptr %locked.10.i.1, null
  br i1 %tobool163.not.i.1, label %for.body167.i.2, label %for.inc181.i.1.for.end183.i_crit_edge

for.inc181.i.1.for.end183.i_crit_edge:            ; preds = %for.inc181.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end183.i

for.body167.i.2:                                  ; preds = %for.inc181.i.1
  %1102 = ptrtoint ptr %arrayidx168.i.2 to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %arrayidx168.i.2, align 4
  %tobool169.not.i.2 = icmp eq ptr %1103, null
  br i1 %tobool169.not.i.2, label %for.body167.i.2.for.inc181.i.2_crit_edge, label %if.then170.i.2

for.body167.i.2.for.inc181.i.2_crit_edge:         ; preds = %for.body167.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.2

if.then170.i.2:                                   ; preds = %for.body167.i.2
  %1104 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %tb_sb, align 8
  %call.i348.i.2 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1105, ptr noundef nonnull %1103, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i.2)
  %tobool175.not.i.2 = icmp eq i32 %call.i348.i.2, 0
  br i1 %tobool175.not.i.2, label %if.then176.i.2, label %if.then170.i.2.for.inc181.i.2_crit_edge

if.then170.i.2.for.inc181.i.2_crit_edge:          ; preds = %if.then170.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.2

if.then176.i.2:                                   ; preds = %if.then170.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %1106 = ptrtoint ptr %arrayidx168.i.2 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %arrayidx168.i.2, align 4
  br label %for.inc181.i.2

for.inc181.i.2:                                   ; preds = %if.then176.i.2, %if.then170.i.2.for.inc181.i.2_crit_edge, %for.body167.i.2.for.inc181.i.2_crit_edge
  %locked.10.i.2 = phi ptr [ null, %if.then170.i.2.for.inc181.i.2_crit_edge ], [ %1107, %if.then176.i.2 ], [ null, %for.body167.i.2.for.inc181.i.2_crit_edge ]
  %tobool163.not.i.2 = icmp eq ptr %locked.10.i.2, null
  br i1 %tobool163.not.i.2, label %for.body167.i.3, label %for.inc181.i.2.for.end183.i_crit_edge

for.inc181.i.2.for.end183.i_crit_edge:            ; preds = %for.inc181.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end183.i

for.body167.i.3:                                  ; preds = %for.inc181.i.2
  %1108 = ptrtoint ptr %arrayidx168.i.3 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %arrayidx168.i.3, align 4
  %tobool169.not.i.3 = icmp eq ptr %1109, null
  br i1 %tobool169.not.i.3, label %for.body167.i.3.for.inc181.i.3_crit_edge, label %if.then170.i.3

for.body167.i.3.for.inc181.i.3_crit_edge:         ; preds = %for.body167.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.3

if.then170.i.3:                                   ; preds = %for.body167.i.3
  %1110 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %tb_sb, align 8
  %call.i348.i.3 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1111, ptr noundef nonnull %1109, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i.3)
  %tobool175.not.i.3 = icmp eq i32 %call.i348.i.3, 0
  br i1 %tobool175.not.i.3, label %if.then176.i.3, label %if.then170.i.3.for.inc181.i.3_crit_edge

if.then170.i.3.for.inc181.i.3_crit_edge:          ; preds = %if.then170.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.3

if.then176.i.3:                                   ; preds = %if.then170.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %1112 = ptrtoint ptr %arrayidx168.i.3 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %arrayidx168.i.3, align 4
  br label %for.inc181.i.3

for.inc181.i.3:                                   ; preds = %if.then176.i.3, %if.then170.i.3.for.inc181.i.3_crit_edge, %for.body167.i.3.for.inc181.i.3_crit_edge
  %locked.10.i.3 = phi ptr [ null, %if.then170.i.3.for.inc181.i.3_crit_edge ], [ %1113, %if.then176.i.3 ], [ null, %for.body167.i.3.for.inc181.i.3_crit_edge ]
  %tobool163.not.i.3 = icmp eq ptr %locked.10.i.3, null
  br i1 %tobool163.not.i.3, label %for.body167.i.4, label %for.inc181.i.3.for.end183.i_crit_edge

for.inc181.i.3.for.end183.i_crit_edge:            ; preds = %for.inc181.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end183.i

for.body167.i.4:                                  ; preds = %for.inc181.i.3
  %1114 = ptrtoint ptr %arrayidx168.i.4 to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %arrayidx168.i.4, align 4
  %tobool169.not.i.4 = icmp eq ptr %1115, null
  br i1 %tobool169.not.i.4, label %for.body167.i.4.for.inc181.i.4_crit_edge, label %if.then170.i.4

for.body167.i.4.for.inc181.i.4_crit_edge:         ; preds = %for.body167.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.4

if.then170.i.4:                                   ; preds = %for.body167.i.4
  %1116 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %tb_sb, align 8
  %call.i348.i.4 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1117, ptr noundef nonnull %1115, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i.4)
  %tobool175.not.i.4 = icmp eq i32 %call.i348.i.4, 0
  br i1 %tobool175.not.i.4, label %if.then176.i.4, label %if.then170.i.4.for.inc181.i.4_crit_edge

if.then170.i.4.for.inc181.i.4_crit_edge:          ; preds = %if.then170.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.4

if.then176.i.4:                                   ; preds = %if.then170.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %1118 = ptrtoint ptr %arrayidx168.i.4 to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %arrayidx168.i.4, align 4
  br label %for.inc181.i.4

for.inc181.i.4:                                   ; preds = %if.then176.i.4, %if.then170.i.4.for.inc181.i.4_crit_edge, %for.body167.i.4.for.inc181.i.4_crit_edge
  %locked.10.i.4 = phi ptr [ null, %if.then170.i.4.for.inc181.i.4_crit_edge ], [ %1119, %if.then176.i.4 ], [ null, %for.body167.i.4.for.inc181.i.4_crit_edge ]
  %tobool163.not.i.4 = icmp eq ptr %locked.10.i.4, null
  br i1 %tobool163.not.i.4, label %for.body167.i.5, label %for.inc181.i.4.for.end183.i_crit_edge

for.inc181.i.4.for.end183.i_crit_edge:            ; preds = %for.inc181.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end183.i

for.body167.i.5:                                  ; preds = %for.inc181.i.4
  %1120 = ptrtoint ptr %arrayidx168.i.5 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %arrayidx168.i.5, align 4
  %tobool169.not.i.5 = icmp eq ptr %1121, null
  br i1 %tobool169.not.i.5, label %for.body167.i.5.for.inc181.i.5_crit_edge, label %if.then170.i.5

for.body167.i.5.for.inc181.i.5_crit_edge:         ; preds = %for.body167.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.5

if.then170.i.5:                                   ; preds = %for.body167.i.5
  %1122 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %tb_sb, align 8
  %call.i348.i.5 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1123, ptr noundef nonnull %1121, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i348.i.5)
  %tobool175.not.i.5 = icmp eq i32 %call.i348.i.5, 0
  br i1 %tobool175.not.i.5, label %if.then176.i.5, label %if.then170.i.5.for.inc181.i.5_crit_edge

if.then170.i.5.for.inc181.i.5_crit_edge:          ; preds = %if.then170.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc181.i.5

if.then176.i.5:                                   ; preds = %if.then170.i.5
  call void @__sanitizer_cov_trace_pc() #10
  %1124 = ptrtoint ptr %arrayidx168.i.5 to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %arrayidx168.i.5, align 4
  br label %for.inc181.i.5

for.inc181.i.5:                                   ; preds = %if.then176.i.5, %if.then170.i.5.for.inc181.i.5_crit_edge, %for.body167.i.5.for.inc181.i.5_crit_edge
  %locked.10.i.5 = phi ptr [ null, %if.then170.i.5.for.inc181.i.5_crit_edge ], [ %1125, %if.then176.i.5 ], [ null, %for.body167.i.5.for.inc181.i.5_crit_edge ]
  %tobool163.not.i.5 = icmp eq ptr %locked.10.i.5, null
  br label %for.end183.i

for.end183.i:                                     ; preds = %for.inc181.i.5, %for.inc181.i.4.for.end183.i_crit_edge, %for.inc181.i.3.for.end183.i_crit_edge, %for.inc181.i.2.for.end183.i_crit_edge, %for.inc181.i.1.for.end183.i_crit_edge, %for.inc181.i.for.end183.i_crit_edge
  %locked.10.i.lcssa = phi ptr [ %locked.10.i, %for.inc181.i.for.end183.i_crit_edge ], [ %locked.10.i.1, %for.inc181.i.1.for.end183.i_crit_edge ], [ %locked.10.i.2, %for.inc181.i.2.for.end183.i_crit_edge ], [ %locked.10.i.3, %for.inc181.i.3.for.end183.i_crit_edge ], [ %locked.10.i.4, %for.inc181.i.4.for.end183.i_crit_edge ], [ %locked.10.i.5, %for.inc181.i.5 ]
  %tobool163.not.i.lcssa = phi i1 [ %tobool163.not.i, %for.inc181.i.for.end183.i_crit_edge ], [ %tobool163.not.i.1, %for.inc181.i.1.for.end183.i_crit_edge ], [ %tobool163.not.i.2, %for.inc181.i.2.for.end183.i_crit_edge ], [ %tobool163.not.i.3, %for.inc181.i.3.for.end183.i_crit_edge ], [ %tobool163.not.i.4, %for.inc181.i.4.for.end183.i_crit_edge ], [ %tobool163.not.i.5, %for.inc181.i.5 ]
  br i1 %tobool163.not.i.lcssa, label %for.end183.i.if.then195_crit_edge, label %for.end183.i.if.then185.i_crit_edge

for.end183.i.if.then185.i_crit_edge:              ; preds = %for.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185.i

for.end183.i.if.then195_crit_edge:                ; preds = %for.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then195

if.then185.i:                                     ; preds = %for.end183.i.if.then185.i_crit_edge, %for.end161.i.if.then185.i_crit_edge, %if.end140.i.if.then185.i_crit_edge, %if.end122.i.if.then185.i_crit_edge, %if.end101.i.if.then185.i_crit_edge, %if.end82.i.if.then185.i_crit_edge, %if.end64.i.if.then185.i_crit_edge, %for.cond39.preheader.i.if.then185.i_crit_edge
  %locked.9.lcssa409.i = phi ptr [ %locked.10.i.lcssa, %for.end183.i.if.then185.i_crit_edge ], [ %locked.8.i, %for.end161.i.if.then185.i_crit_edge ], [ %locked.1.i, %for.cond39.preheader.i.if.then185.i_crit_edge ], [ %1069, %if.end122.i.if.then185.i_crit_edge ], [ %1037, %if.end64.i.if.then185.i_crit_edge ], [ %1047, %if.end82.i.if.then185.i_crit_edge ], [ %1079, %if.end140.i.if.then185.i_crit_edge ], [ %1057, %if.end101.i.if.then185.i_crit_edge ]
  %inc186.i = add i32 %repeat_counter.0.i, 1
  %rem.i = srem i32 %inc186.i, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp187.i = icmp eq i32 %rem.i, 0
  %1126 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %tb_sb, align 8
  br i1 %cmp187.i, label %wait_tb_buffers_until_unlocked.exit, label %cleanup.i

cleanup.i:                                        ; preds = %if.then185.i
  %call196.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %1127) #8
  call void @__wait_on_buffer(ptr noundef nonnull %locked.9.lcssa409.i) #8
  %1128 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_write_lock_nested(ptr noundef %1129, i32 noundef %call196.i) #8
  %1130 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i349.i = getelementptr inbounds %struct.super_block, ptr %1131, i32 0, i32 33
  %1132 = ptrtoint ptr %s_fs_info.i349.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %s_fs_info.i349.i, align 16
  %s_generation_counter200.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1133, i32 0, i32 14
  %call.i.i341.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter200.i, i32 noundef 4) #8
  %1134 = ptrtoint ptr %s_generation_counter200.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load volatile i32, ptr %s_generation_counter200.i, align 4
  %1136 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load i32, ptr %fs_gen, align 8
  %cmp203.not.i = icmp eq i32 %1135, %1137
  br i1 %cmp203.not.i, label %cleanup.i.do.body.i475_crit_edge, label %cleanup.i.if.then207_crit_edge

cleanup.i.if.then207_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then207

cleanup.i.do.body.i475_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i475

wait_tb_buffers_until_unlocked.exit:              ; preds = %if.then185.i
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1127, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.wait_tb_buffers_until_unlocked, ptr noundef nonnull @.str.74, ptr noundef nonnull %locked.9.lcssa409.i) #8
  %1138 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i486 = getelementptr inbounds %struct.super_block, ptr %1139, i32 0, i32 33
  %1140 = ptrtoint ptr %s_fs_info.i.i486 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %s_fs_info.i.i486, align 16
  %s_generation_counter.i487 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1141, i32 0, i32 14
  %call.i.i.i488 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter.i487, i32 noundef 4) #8
  %1142 = ptrtoint ptr %s_generation_counter.i487 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load volatile i32, ptr %s_generation_counter.i487, align 4
  %1144 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1143, i32 %1145)
  %cmp193.not.i.not = icmp eq i32 %1143, %1145
  br i1 %cmp193.not.i.not, label %wait_tb_buffers_until_unlocked.exit.if.then195_crit_edge, label %wait_tb_buffers_until_unlocked.exit.if.then207_crit_edge

wait_tb_buffers_until_unlocked.exit.if.then207_crit_edge: ; preds = %wait_tb_buffers_until_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then207

wait_tb_buffers_until_unlocked.exit.if.then195_crit_edge: ; preds = %wait_tb_buffers_until_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then195

if.then195:                                       ; preds = %wait_tb_buffers_until_unlocked.exit.if.then195_crit_edge, %for.end183.i.if.then195_crit_edge
  %1146 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i489 = getelementptr inbounds %struct.super_block, ptr %1147, i32 0, i32 33
  %1148 = ptrtoint ptr %s_fs_info.i489 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %s_fs_info.i489, align 16
  %s_generation_counter198 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1149, i32 0, i32 14
  %call.i.i437 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter198, i32 noundef 4) #8
  %1150 = ptrtoint ptr %s_generation_counter198 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load volatile i32, ptr %s_generation_counter198, align 4
  %1152 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1151, i32 %1153)
  %cmp201.not = icmp eq i32 %1151, %1153
  br i1 %cmp201.not, label %if.then195.cleanup277_crit_edge, label %if.then195.if.then207_crit_edge

if.then195.if.then207_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then207

if.then195.cleanup277_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

if.then207:                                       ; preds = %if.then195.if.then207_crit_edge, %wait_tb_buffers_until_unlocked.exit.if.then207_crit_edge, %cleanup.i.if.then207_crit_edge
  %1154 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %tb_sb, align 8
  %1156 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %tb_path, align 8
  call void @pathrelse_and_restore(ptr noundef %1155, ptr noundef %1157) #8
  br label %if.end212

if.else210:                                       ; preds = %if.end115.if.else210_crit_edge, %if.end110.if.else210_crit_edge, %if.then97.if.else210_crit_edge, %check_balance.exit.if.else210_crit_edge, %if.then56.i.if.else210_crit_edge, %if.end35.i.if.else210_crit_edge, %if.end25.i.if.else210_crit_edge, %if.end17.i.if.else210_crit_edge, %do.end.i.if.else210_crit_edge
  %ret.0.ph = phi i32 [ %call98, %if.then97.if.else210_crit_edge ], [ -1, %if.end35.i.if.else210_crit_edge ], [ -1, %if.end25.i.if.else210_crit_edge ], [ -1, %if.end17.i.if.else210_crit_edge ], [ -1, %do.end.i.if.else210_crit_edge ], [ -1, %if.then56.i.if.else210_crit_edge ], [ %call111, %if.end110.if.else210_crit_edge ], [ %call116, %if.end115.if.else210_crit_edge ], [ %retval.0.i472, %check_balance.exit.if.else210_crit_edge ]
  %1158 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %tb_path, align 8
  call void @pathrelse(ptr noundef %1159) #8
  br label %if.end212

if.end212:                                        ; preds = %if.else210, %if.then207
  %tobool206.not530 = phi i1 [ true, %if.else210 ], [ false, %if.then207 ]
  %ret.0528 = phi i32 [ %ret.0.ph, %if.else210 ], [ -1, %if.then207 ]
  br label %for.body216

for.body216:                                      ; preds = %brelse.exit512.for.body216_crit_edge, %if.end212
  %i.0579 = phi i32 [ 0, %if.end212 ], [ %inc257, %brelse.exit512.for.body216_crit_edge ]
  br i1 %tobool206.not530, label %for.body216.if.end231_crit_edge, label %if.then218

for.body216.if.end231_crit_edge:                  ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then218:                                       ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #10
  %1160 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %tb_sb, align 8
  %arrayidx220 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %i.0579
  %1162 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %arrayidx220, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1161, ptr noundef %1163) #8
  %1164 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %tb_sb, align 8
  %arrayidx222 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %i.0579
  %1166 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %arrayidx222, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1165, ptr noundef %1167) #8
  %1168 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %tb_sb, align 8
  %arrayidx224 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %i.0579
  %1170 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %arrayidx224, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1169, ptr noundef %1171) #8
  %1172 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %tb_sb, align 8
  %arrayidx226 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %i.0579
  %1174 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %arrayidx226, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1173, ptr noundef %1175) #8
  %1176 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %tb_sb, align 8
  %arrayidx228 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %i.0579
  %1178 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %arrayidx228, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1177, ptr noundef %1179) #8
  %1180 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %tb_sb, align 8
  %arrayidx230 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %i.0579
  %1182 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %arrayidx230, align 4
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1181, ptr noundef %1183) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then218, %for.body216.if.end231_crit_edge
  %arrayidx233 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %i.0579
  %1184 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %arrayidx233, align 4
  %tobool.not.i490 = icmp eq ptr %1185, null
  br i1 %tobool.not.i490, label %if.end231.brelse.exit_crit_edge, label %if.then.i491

if.end231.brelse.exit_crit_edge:                  ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i491:                                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1185) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i491, %if.end231.brelse.exit_crit_edge
  %arrayidx235 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %i.0579
  %1186 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %arrayidx235, align 4
  %tobool.not.i493 = icmp eq ptr %1187, null
  br i1 %tobool.not.i493, label %brelse.exit.brelse.exit496_crit_edge, label %if.then.i494

brelse.exit.brelse.exit496_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit496

if.then.i494:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1187) #8
  br label %brelse.exit496

brelse.exit496:                                   ; preds = %if.then.i494, %brelse.exit.brelse.exit496_crit_edge
  %arrayidx237 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %i.0579
  %1188 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %arrayidx237, align 4
  %tobool.not.i497 = icmp eq ptr %1189, null
  br i1 %tobool.not.i497, label %brelse.exit496.brelse.exit500_crit_edge, label %if.then.i498

brelse.exit496.brelse.exit500_crit_edge:          ; preds = %brelse.exit496
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit500

if.then.i498:                                     ; preds = %brelse.exit496
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1189) #8
  br label %brelse.exit500

brelse.exit500:                                   ; preds = %if.then.i498, %brelse.exit496.brelse.exit500_crit_edge
  %arrayidx239 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %i.0579
  %1190 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %arrayidx239, align 4
  %tobool.not.i501 = icmp eq ptr %1191, null
  br i1 %tobool.not.i501, label %brelse.exit500.brelse.exit504_crit_edge, label %if.then.i502

brelse.exit500.brelse.exit504_crit_edge:          ; preds = %brelse.exit500
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit504

if.then.i502:                                     ; preds = %brelse.exit500
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1191) #8
  br label %brelse.exit504

brelse.exit504:                                   ; preds = %if.then.i502, %brelse.exit500.brelse.exit504_crit_edge
  %arrayidx241 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %i.0579
  %1192 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %arrayidx241, align 4
  %tobool.not.i505 = icmp eq ptr %1193, null
  br i1 %tobool.not.i505, label %brelse.exit504.brelse.exit508_crit_edge, label %if.then.i506

brelse.exit504.brelse.exit508_crit_edge:          ; preds = %brelse.exit504
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit508

if.then.i506:                                     ; preds = %brelse.exit504
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1193) #8
  br label %brelse.exit508

brelse.exit508:                                   ; preds = %if.then.i506, %brelse.exit504.brelse.exit508_crit_edge
  %arrayidx243 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %i.0579
  %1194 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %arrayidx243, align 4
  %tobool.not.i509 = icmp eq ptr %1195, null
  br i1 %tobool.not.i509, label %brelse.exit508.brelse.exit512_crit_edge, label %if.then.i510

brelse.exit508.brelse.exit512_crit_edge:          ; preds = %brelse.exit508
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit512

if.then.i510:                                     ; preds = %brelse.exit508
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %1195) #8
  br label %brelse.exit512

brelse.exit512:                                   ; preds = %if.then.i510, %brelse.exit508.brelse.exit512_crit_edge
  %1196 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %1196)
  store ptr null, ptr %arrayidx233, align 4
  %1197 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %1197)
  store ptr null, ptr %arrayidx235, align 4
  %1198 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %1198)
  store ptr null, ptr %arrayidx237, align 4
  %1199 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %1199)
  store ptr null, ptr %arrayidx239, align 4
  %1200 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %1200)
  store ptr null, ptr %arrayidx241, align 4
  %1201 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %1201)
  store ptr null, ptr %arrayidx243, align 4
  %inc257 = add nuw nsw i32 %i.0579, 1
  %exitcond623.not = icmp eq i32 %inc257, 5
  br i1 %exitcond623.not, label %for.end258, label %brelse.exit512.for.body216_crit_edge

brelse.exit512.for.body216_crit_edge:             ; preds = %brelse.exit512
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body216

for.end258:                                       ; preds = %brelse.exit512
  br i1 %tobool206.not530, label %for.end258.cleanup277_crit_edge, label %for.body264.preheader

for.end258.cleanup277_crit_edge:                  ; preds = %for.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

for.body264.preheader:                            ; preds = %for.end258
  %arrayidx265 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 0
  %1202 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %arrayidx265, align 4
  %tobool266.not = icmp eq ptr %1203, null
  br i1 %tobool266.not, label %for.body264.preheader.for.inc272_crit_edge, label %if.then267

for.body264.preheader.for.inc272_crit_edge:       ; preds = %for.body264.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc272

if.then267:                                       ; preds = %for.body264.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %1204 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1205, ptr noundef nonnull %1203) #8
  br label %for.inc272

for.inc272:                                       ; preds = %if.then267, %for.body264.preheader.for.inc272_crit_edge
  %arrayidx265.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 1
  %1206 = ptrtoint ptr %arrayidx265.1 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %arrayidx265.1, align 4
  %tobool266.not.1 = icmp eq ptr %1207, null
  br i1 %tobool266.not.1, label %for.inc272.for.inc272.1_crit_edge, label %if.then267.1

for.inc272.for.inc272.1_crit_edge:                ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc272.1

if.then267.1:                                     ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #10
  %1208 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1209, ptr noundef nonnull %1207) #8
  br label %for.inc272.1

for.inc272.1:                                     ; preds = %if.then267.1, %for.inc272.for.inc272.1_crit_edge
  %arrayidx265.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 2
  %1210 = ptrtoint ptr %arrayidx265.2 to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %arrayidx265.2, align 4
  %tobool266.not.2 = icmp eq ptr %1211, null
  br i1 %tobool266.not.2, label %for.inc272.1.for.inc272.2_crit_edge, label %if.then267.2

for.inc272.1.for.inc272.2_crit_edge:              ; preds = %for.inc272.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc272.2

if.then267.2:                                     ; preds = %for.inc272.1
  call void @__sanitizer_cov_trace_pc() #10
  %1212 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1213, ptr noundef nonnull %1211) #8
  br label %for.inc272.2

for.inc272.2:                                     ; preds = %if.then267.2, %for.inc272.1.for.inc272.2_crit_edge
  %arrayidx265.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 3
  %1214 = ptrtoint ptr %arrayidx265.3 to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %arrayidx265.3, align 4
  %tobool266.not.3 = icmp eq ptr %1215, null
  br i1 %tobool266.not.3, label %for.inc272.2.for.inc272.3_crit_edge, label %if.then267.3

for.inc272.2.for.inc272.3_crit_edge:              ; preds = %for.inc272.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc272.3

if.then267.3:                                     ; preds = %for.inc272.2
  call void @__sanitizer_cov_trace_pc() #10
  %1216 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1217, ptr noundef nonnull %1215) #8
  br label %for.inc272.3

for.inc272.3:                                     ; preds = %if.then267.3, %for.inc272.2.for.inc272.3_crit_edge
  %arrayidx265.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 4
  %1218 = ptrtoint ptr %arrayidx265.4 to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %arrayidx265.4, align 4
  %tobool266.not.4 = icmp eq ptr %1219, null
  br i1 %tobool266.not.4, label %for.inc272.3.for.inc272.4_crit_edge, label %if.then267.4

for.inc272.3.for.inc272.4_crit_edge:              ; preds = %for.inc272.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc272.4

if.then267.4:                                     ; preds = %for.inc272.3
  call void @__sanitizer_cov_trace_pc() #10
  %1220 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1221, ptr noundef nonnull %1219) #8
  br label %for.inc272.4

for.inc272.4:                                     ; preds = %if.then267.4, %for.inc272.3.for.inc272.4_crit_edge
  %arrayidx265.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 5
  %1222 = ptrtoint ptr %arrayidx265.5 to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %arrayidx265.5, align 4
  %tobool266.not.5 = icmp eq ptr %1223, null
  br i1 %tobool266.not.5, label %for.inc272.4.cleanup277_crit_edge, label %if.then267.5

for.inc272.4.cleanup277_crit_edge:                ; preds = %for.inc272.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup277

if.then267.5:                                     ; preds = %for.inc272.4
  call void @__sanitizer_cov_trace_pc() #10
  %1224 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %tb_sb, align 8
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1225, ptr noundef nonnull %1223) #8
  br label %cleanup277

cleanup277:                                       ; preds = %if.then267.5, %for.inc272.4.cleanup277_crit_edge, %for.end258.cleanup277_crit_edge, %if.then195.cleanup277_crit_edge, %land.lhs.true.i.cleanup277_crit_edge, %if.end12.i, %if.then27.cleanup277_crit_edge, %entry.cleanup277_crit_edge
  %retval.1 = phi i32 [ -1, %if.then27.cleanup277_crit_edge ], [ -1, %entry.cleanup277_crit_edge ], [ 0, %if.then195.cleanup277_crit_edge ], [ %ret.0528, %for.end258.cleanup277_crit_edge ], [ -1, %if.end12.i ], [ -1, %land.lhs.true.i.cleanup277_crit_edge ], [ %ret.0528, %if.then267.5 ], [ %ret.0528, %for.inc272.4.cleanup277_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cur_tb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @B_IS_IN_TREE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_block(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_neighbors(ptr nocapture noundef %tb, i32 noundef %h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.neg = xor i32 %h, -1
  %sub = add i32 %3, %add.neg
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %7, i32 0, i32 27, i32 26, i32 %h
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end122_crit_edge, label %if.then

entry.if.end122_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx4 = getelementptr %struct.reiserfs_sb_info, ptr %13, i32 0, i32 27, i32 28, i32 %h
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %inc5 = add i32 %15, 1
  store i32 %inc5, ptr %arrayidx4, align 4
  %16 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %17, i32 0, i32 2
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %FL = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 7
  %arrayidx7 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %cmp = icmp eq ptr %19, %21
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub, i32 1
  %22 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  br i1 %tobool12.not, label %if.then13, label %cond.true

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.57, i32 noundef 2169, ptr noundef nonnull @__func__.get_neighbors) #11
  unreachable

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %blk_nr_item, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %conv, %cond.false ]
  %b_data22 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %31 = ptrtoint ptr %b_data22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data22, align 4
  %add.ptr23 = getelementptr i8, ptr %32, i32 24
  %blk_nr_item27 = getelementptr inbounds %struct.block_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %blk_nr_item27 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %blk_nr_item27, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv28 = zext i16 %35 to i32
  %mul = shl nuw nsw i32 %conv28, 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr23, i32 %mul
  %mul30 = shl i32 %cond, 3
  %add.ptr31 = getelementptr i8, ptr %add.ptr29, i32 %mul30
  %36 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr31, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tb_sb, align 8
  %call33 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %40) #8
  %conv34 = zext i32 %38 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %41 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %42, i64 noundef %conv34, i32 noundef %44, i32 noundef 8) #8
  %45 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tb_sb, align 8
  tail call void @reiserfs_write_lock_nested(ptr noundef %46, i32 noundef %call33) #8
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %cond.end.cleanup_crit_edge, label %if.end39

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %cond.end
  %47 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i365 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i365 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i365, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %50, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #8
  %51 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %s_generation_counter, align 4
  %fs_gen = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %53 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp43.not = icmp eq i32 %52, %54
  br i1 %cmp43.not, label %do.body51, label %if.end39.cleanup.sink.split_crit_edge

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body51:                                        ; preds = %if.end39
  %55 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx7, align 4
  %call54 = tail call i32 @B_IS_IN_TREE(ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body51.if.then81_crit_edge, label %lor.lhs.false

do.body51.if.then81_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

lor.lhs.false:                                    ; preds = %do.body51
  %57 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx7, align 4
  %b_data58 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data58, align 4
  %blk_nr_item59 = getelementptr inbounds %struct.block_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %blk_nr_item59 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %blk_nr_item59, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %conv60 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv60)
  %cmp61 = icmp sgt i32 %cond, %conv60
  br i1 %cmp61, label %lor.lhs.false.if.then81_crit_edge, label %lor.lhs.false63

lor.lhs.false.if.then81_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

lor.lhs.false63:                                  ; preds = %lor.lhs.false
  %add.ptr67 = getelementptr i8, ptr %60, i32 24
  %mul73 = shl nuw nsw i32 %conv60, 4
  %add.ptr74 = getelementptr i8, ptr %add.ptr67, i32 %mul73
  %add.ptr76 = getelementptr i8, ptr %add.ptr74, i32 %mul30
  %64 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr76, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %conv78 = zext i32 %66 to i64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %conv78)
  %cmp79.not = icmp eq i64 %68, %conv78
  br i1 %cmp79.not, label %do.body85, label %lor.lhs.false63.if.then81_crit_edge

lor.lhs.false63.if.then81_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false63.if.then81_crit_edge, %lor.lhs.false.if.then81_crit_edge, %do.body51.if.then81_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.58, i32 noundef 2190, ptr noundef nonnull @__func__.get_neighbors) #11
  unreachable

do.body85:                                        ; preds = %lor.lhs.false63
  %call86 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %do.body92

if.then88:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.59, i32 noundef 2191, ptr noundef nonnull @__func__.get_neighbors) #11
  unreachable

do.body92:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool93.not = icmp eq i32 %h, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %do.body92.do.end118_crit_edge

do.body92.do.end118_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118

land.lhs.true94:                                  ; preds = %do.body92
  %b_data95 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %b_data95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data95, align 4
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %blk_free_space, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %conv96 = zext i16 %73 to i32
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %74 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %b_size, align 8
  %sub97 = add i32 %75, -24
  %76 = ptrtoint ptr %FL to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %FL, align 4
  %b_data100 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %b_data100 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data100, align 4
  %add.ptr101 = getelementptr i8, ptr %79, i32 24
  %blk_nr_item105 = getelementptr inbounds %struct.block_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %blk_nr_item105 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %blk_nr_item105, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %conv106 = zext i16 %82 to i32
  %mul107 = shl nuw nsw i32 %conv106, 4
  %add.ptr108 = getelementptr i8, ptr %add.ptr101, i32 %mul107
  %add.ptr110 = getelementptr i8, ptr %add.ptr108, i32 %mul30
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr110, i32 0, i32 1
  %83 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dc_size, align 4
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %conv111 = zext i16 %85 to i32
  %sub112 = sub i32 %sub97, %conv111
  call void @__sanitizer_cov_trace_cmp4(i32 %sub112, i32 %conv96)
  %cmp113.not = icmp eq i32 %sub112, %conv96
  br i1 %cmp113.not, label %land.lhs.true94.do.end118_crit_edge, label %if.then115

land.lhs.true94.do.end118_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118

if.then115:                                       ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.60, i32 noundef 2196, ptr noundef nonnull @__func__.get_neighbors) #11
  unreachable

do.end118:                                        ; preds = %land.lhs.true94.do.end118_crit_edge, %do.body92.do.end118_crit_edge
  %arrayidx119 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h
  %86 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx119, align 4
  %tobool.not.i367 = icmp eq ptr %87, null
  br i1 %tobool.not.i367, label %do.end118.brelse.exit369_crit_edge, label %if.then.i368

do.end118.brelse.exit369_crit_edge:               ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit369

if.then.i368:                                     ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %87) #8
  br label %brelse.exit369

brelse.exit369:                                   ; preds = %if.then.i368, %do.end118.brelse.exit369_crit_edge
  %88 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %arrayidx119, align 4
  br label %if.end122

if.end122:                                        ; preds = %brelse.exit369, %entry.if.end122_crit_edge
  %arrayidx123 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %89 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool124.not = icmp eq i32 %90, 0
  br i1 %tobool124.not, label %if.end122.cleanup_crit_edge, label %if.then125

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then125:                                       ; preds = %if.end122
  %91 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx128 = getelementptr %struct.reiserfs_sb_info, ptr %92, i32 0, i32 27, i32 29, i32 %h
  %93 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx128, align 4
  %inc129 = add i32 %94, 1
  store i32 %inc129, ptr %arrayidx128, align 4
  %95 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tb_path, align 8
  %path_elements131 = getelementptr inbounds %struct.treepath, ptr %96, i32 0, i32 2
  %add.ptr133 = getelementptr %struct.path_element, ptr %path_elements131, i32 %sub
  %97 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr133, align 4
  %FR = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %arrayidx136 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %99 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx136, align 4
  %cmp137 = icmp eq ptr %98, %100
  br i1 %cmp137, label %land.lhs.true139, label %if.then125.cond.end162_crit_edge

if.then125.cond.end162_crit_edge:                 ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end162

land.lhs.true139:                                 ; preds = %if.then125
  %pe_position144 = getelementptr %struct.path_element, ptr %path_elements131, i32 %sub, i32 1
  %101 = ptrtoint ptr %pe_position144 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pe_position144, align 4
  %b_data145 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 5
  %103 = ptrtoint ptr %b_data145 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_data145, align 4
  %blk_nr_item146 = getelementptr inbounds %struct.block_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %blk_nr_item146 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %blk_nr_item146, align 2
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv147 = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv147)
  %cmp148.not = icmp slt i32 %102, %conv147
  br i1 %cmp148.not, label %cond.true158, label %if.then150

if.then150:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.61, i32 noundef 2211, ptr noundef nonnull @__func__.get_neighbors) #11
  unreachable

cond.true158:                                     ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx159 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %108 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx159, align 4
  %add160 = shl i32 %109, 3
  %phi.bo = add i32 %add160, 8
  br label %cond.end162

cond.end162:                                      ; preds = %cond.true158, %if.then125.cond.end162_crit_edge
  %cond163 = phi i32 [ %phi.bo, %cond.true158 ], [ 0, %if.then125.cond.end162_crit_edge ]
  %b_data166 = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 5
  %110 = ptrtoint ptr %b_data166 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %b_data166, align 4
  %add.ptr167 = getelementptr i8, ptr %111, i32 24
  %blk_nr_item171 = getelementptr inbounds %struct.block_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %blk_nr_item171 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %blk_nr_item171, align 2
  %114 = tail call i16 @llvm.bswap.i16(i16 %113)
  %conv172 = zext i16 %114 to i32
  %mul173 = shl nuw nsw i32 %conv172, 4
  %add.ptr174 = getelementptr i8, ptr %add.ptr167, i32 %mul173
  %add.ptr176 = getelementptr i8, ptr %add.ptr174, i32 %cond163
  %115 = ptrtoint ptr %add.ptr176 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr176, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  %118 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tb_sb, align 8
  %call179 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %119) #8
  %conv180 = zext i32 %117 to i64
  %s_bdev.i371 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %120 = ptrtoint ptr %s_bdev.i371 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_bdev.i371, align 4
  %s_blocksize.i372 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %122 = ptrtoint ptr %s_blocksize.i372 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i372, align 16
  %call.i373 = tail call ptr @__bread_gfp(ptr noundef %121, i64 noundef %conv180, i32 noundef %123, i32 noundef 8) #8
  %124 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tb_sb, align 8
  tail call void @reiserfs_write_lock_nested(ptr noundef %125, i32 noundef %call179) #8
  %tobool183.not = icmp eq ptr %call.i373, null
  br i1 %tobool183.not, label %cond.end162.cleanup_crit_edge, label %if.end185

cond.end162.cleanup_crit_edge:                    ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end185:                                        ; preds = %cond.end162
  %126 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i374 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 33
  %128 = ptrtoint ptr %s_fs_info.i374 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i374, align 16
  %s_generation_counter188 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %129, i32 0, i32 14
  %call.i.i363 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter188, i32 noundef 4) #8
  %130 = ptrtoint ptr %s_generation_counter188 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %s_generation_counter188, align 4
  %fs_gen190 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %132 = ptrtoint ptr %fs_gen190 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fs_gen190, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp191.not = icmp eq i32 %131, %133
  br i1 %cmp191.not, label %if.end199, label %if.end185.cleanup.sink.split_crit_edge

if.end185.cleanup.sink.split_crit_edge:           ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end199:                                        ; preds = %if.end185
  %arrayidx200 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %134 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx200, align 4
  %tobool.not.i379 = icmp eq ptr %135, null
  br i1 %tobool.not.i379, label %if.end199.brelse.exit381_crit_edge, label %if.then.i380

if.end199.brelse.exit381_crit_edge:               ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit381

if.then.i380:                                     ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %135) #8
  br label %brelse.exit381

brelse.exit381:                                   ; preds = %if.then.i380, %if.end199.brelse.exit381_crit_edge
  %136 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i373, ptr %arrayidx200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool204.not = icmp eq i32 %h, 0
  br i1 %tobool204.not, label %land.lhs.true205, label %brelse.exit381.cleanup_crit_edge

brelse.exit381.cleanup_crit_edge:                 ; preds = %brelse.exit381
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true205:                                 ; preds = %brelse.exit381
  %b_data206 = getelementptr inbounds %struct.buffer_head, ptr %call.i373, i32 0, i32 5
  %137 = ptrtoint ptr %b_data206 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_data206, align 4
  %blk_free_space207 = getelementptr inbounds %struct.block_head, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %blk_free_space207 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %blk_free_space207, align 2
  %141 = tail call i16 @llvm.bswap.i16(i16 %140)
  %conv208 = zext i16 %141 to i32
  %b_size209 = getelementptr inbounds %struct.buffer_head, ptr %call.i373, i32 0, i32 4
  %142 = ptrtoint ptr %b_size209 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %b_size209, align 8
  %sub210 = add i32 %143, -24
  %144 = ptrtoint ptr %FR to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %FR, align 8
  %b_data213 = getelementptr inbounds %struct.buffer_head, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %b_data213 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %b_data213, align 4
  %add.ptr214 = getelementptr i8, ptr %147, i32 24
  %blk_nr_item218 = getelementptr inbounds %struct.block_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %blk_nr_item218 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %blk_nr_item218, align 2
  %150 = tail call i16 @llvm.bswap.i16(i16 %149)
  %conv219 = zext i16 %150 to i32
  %mul220 = shl nuw nsw i32 %conv219, 4
  %add.ptr221 = getelementptr i8, ptr %add.ptr214, i32 %mul220
  %add.ptr223 = getelementptr i8, ptr %add.ptr221, i32 %cond163
  %dc_size224 = getelementptr inbounds %struct.disk_child, ptr %add.ptr223, i32 0, i32 1
  %151 = ptrtoint ptr %dc_size224 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %dc_size224, align 4
  %153 = tail call i16 @llvm.bswap.i16(i16 %152)
  %conv225 = zext i16 %153 to i32
  %sub226 = sub i32 %sub210, %conv225
  call void @__sanitizer_cov_trace_cmp4(i32 %sub226, i32 %conv208)
  %cmp227.not = icmp eq i32 %sub226, %conv208
  br i1 %cmp227.not, label %land.lhs.true205.cleanup_crit_edge, label %if.then229

land.lhs.true205.cleanup_crit_edge:               ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then229:                                       ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_neighbors, ptr noundef nonnull @.str.62, i32 noundef 2235, ptr noundef nonnull @__func__.get_neighbors, i32 noundef %conv208, i32 noundef %sub210, i32 noundef %conv225) #11
  unreachable

cleanup.sink.split:                               ; preds = %if.end185.cleanup.sink.split_crit_edge, %if.end39.cleanup.sink.split_crit_edge
  %call.i.sink = phi ptr [ %call.i, %if.end39.cleanup.sink.split_crit_edge ], [ %call.i373, %if.end185.cleanup.sink.split_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i.sink) #8
  %154 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx48 = getelementptr %struct.reiserfs_sb_info, ptr %155, i32 0, i32 27, i32 27, i32 %h
  %156 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx48, align 4
  %inc198 = add i32 %157, 1
  store i32 %inc198, ptr %arrayidx48, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true205.cleanup_crit_edge, %brelse.exit381.cleanup_crit_edge, %cond.end162.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %cond.end.cleanup_crit_edge ], [ -2, %cond.end162.cleanup_crit_edge ], [ 0, %brelse.exit381.cleanup_crit_edge ], [ 0, %land.lhs.true205.cleanup_crit_edge ], [ 0, %if.end122.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_empty_nodes(ptr nocapture noundef %tb, i32 noundef %h) unnamed_addr #0 align 64 {
entry:
  %hint.i = alloca %struct.__reiserfs_blocknr_hint, align 8
  %blocknrs = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub = sub i32 %3, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknrs) #8
  %6 = ptrtoint ptr %blocknrs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %blocknrs, align 8
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %7 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb_sb, align 8
  %cur_blknum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 20
  %9 = ptrtoint ptr %cur_blknum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_blknum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp114 = icmp sgt i32 %h, 0
  br i1 %cmp114, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %number_of_freeblk.0116 = phi i32 [ %sub6, %for.body.for.body_crit_edge ], [ %10, %entry.for.body_crit_edge ]
  %counter.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %counter.0115
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %sub5.neg = sub i32 1, %12
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub5.neg
  %sub6 = add i32 %spec.select, %number_of_freeblk.0116
  %inc = add nuw nsw i32 %counter.0115, 1
  %exitcond.not = icmp eq i32 %inc, %h
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %number_of_freeblk.0.lcssa = phi i32 [ %10, %entry.for.end_crit_edge ], [ %sub6, %for.body.for.end_crit_edge ]
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %for.end.cond.end13_crit_edge, label %cond.true8

for.end.cond.end13_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.true8:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %sub11 = add i32 %14, -1
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true8, %for.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %sub11, %cond.true8 ], [ 1, %for.end.cond.end13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond14, i32 %number_of_freeblk.0.lcssa)
  %cmp15 = icmp sgt i32 %cond14, %number_of_freeblk.0.lcssa
  br i1 %cmp15, label %if.then, label %cond.end13.cleanup_crit_edge

cond.end13.cleanup_crit_edge:                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %cond.end13
  %sub16 = sub i32 %cond14, %number_of_freeblk.0.lcssa
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hint.i) #8
  %15 = call ptr @memset(ptr %hint.i, i32 255, i32 72)
  %16 = ptrtoint ptr %hint.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hint.i, align 8
  %block.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 1
  %17 = ptrtoint ptr %block.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %block.i, align 8
  %key.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 2
  %key1.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 35
  %18 = call ptr @memcpy(ptr %key.i, ptr %key1.i, i32 24)
  %path.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 3
  %19 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %path.i, align 8
  %th.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 4
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %20 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transaction_handle.i, align 4
  %22 = ptrtoint ptr %th.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %th.i, align 4
  %beg.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 5
  %formatted_node.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint.i, i32 0, i32 9
  %23 = call ptr @memset(ptr %beg.i, i32 0, i32 16)
  %24 = ptrtoint ptr %formatted_node.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -65, ptr %formatted_node.i, align 8
  %call.i = call i32 @reiserfs_allocate_blocknrs(ptr noundef nonnull %hint.i, ptr noundef nonnull %blocknrs, i32 noundef %sub16, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call.i)
  %cmp18 = icmp eq i32 %call.i, -3
  br i1 %cmp18, label %if.then.cleanup_crit_edge, label %for.cond22.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond22.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp23117 = icmp sgt i32 %sub16, 0
  br i1 %cmp23117, label %do.body.lr.ph, label %for.cond22.preheader.land.lhs.true_crit_edge

for.cond22.preheader.land.lhs.true_crit_edge:     ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.body.lr.ph:                                    ; preds = %for.cond22.preheader
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %set_buffer_journal_new.exit.do.body_crit_edge, %do.body.lr.ph
  %counter.1119 = phi i32 [ 0, %do.body.lr.ph ], [ %inc54, %set_buffer_journal_new.exit.do.body_crit_edge ]
  %blocknr.0118 = phi ptr [ %blocknrs, %do.body.lr.ph ], [ %incdec.ptr, %set_buffer_journal_new.exit.do.body_crit_edge ]
  %25 = ptrtoint ptr %blocknr.0118 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocknr.0118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %if.then26, label %do.end

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_empty_nodes, ptr noundef nonnull @.str.63, i32 noundef 888, ptr noundef nonnull @__func__.get_empty_nodes) #11
  unreachable

do.end:                                           ; preds = %do.body
  %conv = zext i32 %26 to i64
  %27 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i, align 4
  %29 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize.i, align 16
  %call.i112 = call ptr @__getblk_gfp(ptr noundef %28, i64 noundef %conv, i32 noundef %30, i32 noundef 8) #8
  %31 = ptrtoint ptr %call.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %call.i112, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool31.not = icmp eq i32 %33, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %do.end.if.then37_crit_edge

do.end.if.then37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false:                                    ; preds = %do.end
  %34 = ptrtoint ptr %call.i112 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %call.i112, align 4
  %36 = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %call.i112 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call.i112, align 4
  %39 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool36.not = icmp eq i32 %39, 0
  br i1 %tobool36.not, label %do.body41, label %lor.lhs.false34.if.then37_crit_edge

lor.lhs.false34.if.then37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false34.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %do.end.if.then37_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_empty_nodes, ptr noundef nonnull @.str.64, i32 noundef 895, ptr noundef nonnull @__func__.get_empty_nodes, ptr noundef %call.i112) #11
  unreachable

do.body41:                                        ; preds = %lor.lhs.false34
  %40 = ptrtoint ptr %cur_blknum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_blknum, align 4
  %arrayidx43 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 %41
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %43, null
  br i1 %tobool44.not, label %do.end48, label %if.then45

if.then45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_empty_nodes, ptr noundef nonnull @.str.65, i32 noundef 899, ptr noundef nonnull @__func__.get_empty_nodes) #11
  unreachable

do.end48:                                         ; preds = %do.body41
  %44 = ptrtoint ptr %call.i112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call.i112, align 4
  %46 = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end48.set_buffer_journal_new.exit_crit_edge

do.end48.set_buffer_journal_new.exit_crit_edge:   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_journal_new.exit

if.then.i:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef %call.i112) #8
  br label %set_buffer_journal_new.exit

set_buffer_journal_new.exit:                      ; preds = %if.then.i, %do.end48.set_buffer_journal_new.exit_crit_edge
  %47 = ptrtoint ptr %cur_blknum to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_blknum, align 4
  %inc51 = add i32 %48, 1
  store i32 %inc51, ptr %cur_blknum, align 4
  %arrayidx52 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 %48
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i112, ptr %arrayidx52, align 4
  %incdec.ptr = getelementptr i32, ptr %blocknr.0118, i32 1
  %inc54 = add nuw nsw i32 %counter.1119, 1
  %exitcond122.not = icmp eq i32 %inc54, %sub16
  br i1 %exitcond122.not, label %set_buffer_journal_new.exit.land.lhs.true_crit_edge, label %set_buffer_journal_new.exit.do.body_crit_edge

set_buffer_journal_new.exit.do.body_crit_edge:    ; preds = %set_buffer_journal_new.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

set_buffer_journal_new.exit.land.lhs.true_crit_edge: ; preds = %set_buffer_journal_new.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %set_buffer_journal_new.exit.land.lhs.true_crit_edge, %for.cond22.preheader.land.lhs.true_crit_edge
  %50 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %53, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #8
  %54 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %s_generation_counter, align 4
  %fs_gen = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %56 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp61.not = icmp ne i32 %55, %57
  %spec.select107 = sext i1 %cmp61.not to i32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then.cleanup_crit_edge, %cond.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select107, %land.lhs.true ], [ 0, %cond.end13.cleanup_crit_edge ], [ -3, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknrs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse_and_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unfix_nodes(ptr nocapture noundef readonly %tb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_sb, align 8
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %2 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb_path, align 8
  tail call void @pathrelse_and_restore(ptr noundef %1, ptr noundef %3) #8
  br label %for.body

for.cond24.preheader:                             ; preds = %brelse.exit102
  %transaction_handle = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %arrayidx27 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 0
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx27, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond24.preheader.if.end_crit_edge, label %brelse.exit105

for.cond24.preheader.if.end_crit_edge:            ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %brelse.exit102.for.body_crit_edge, %entry
  %i.0109 = phi i32 [ 0, %entry ], [ %inc, %brelse.exit102.for.body_crit_edge ]
  %6 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb_sb, align 8
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %i.0109
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %7, ptr noundef %9) #8
  %10 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb_sb, align 8
  %arrayidx3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %i.0109
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %11, ptr noundef %13) #8
  %14 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb_sb, align 8
  %arrayidx5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %i.0109
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %15, ptr noundef %17) #8
  %18 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb_sb, align 8
  %arrayidx7 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %i.0109
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %19, ptr noundef %21) #8
  %22 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb_sb, align 8
  %arrayidx9 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %i.0109
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %23, ptr noundef %25) #8
  %26 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb_sb, align 8
  %arrayidx11 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %i.0109
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %27, ptr noundef %29) #8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %31) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %32 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i88 = icmp eq ptr %33, null
  br i1 %tobool.not.i88, label %brelse.exit.brelse.exit90_crit_edge, label %if.then.i89

brelse.exit.brelse.exit90_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit90

if.then.i89:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %33) #8
  br label %brelse.exit90

brelse.exit90:                                    ; preds = %if.then.i89, %brelse.exit.brelse.exit90_crit_edge
  %34 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i91 = icmp eq ptr %35, null
  br i1 %tobool.not.i91, label %brelse.exit90.brelse.exit93_crit_edge, label %if.then.i92

brelse.exit90.brelse.exit93_crit_edge:            ; preds = %brelse.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit93

if.then.i92:                                      ; preds = %brelse.exit90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %35) #8
  br label %brelse.exit93

brelse.exit93:                                    ; preds = %if.then.i92, %brelse.exit90.brelse.exit93_crit_edge
  %36 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx7, align 4
  %tobool.not.i94 = icmp eq ptr %37, null
  br i1 %tobool.not.i94, label %brelse.exit93.brelse.exit96_crit_edge, label %if.then.i95

brelse.exit93.brelse.exit96_crit_edge:            ; preds = %brelse.exit93
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit96

if.then.i95:                                      ; preds = %brelse.exit93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %37) #8
  br label %brelse.exit96

brelse.exit96:                                    ; preds = %if.then.i95, %brelse.exit93.brelse.exit96_crit_edge
  %38 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx9, align 4
  %tobool.not.i97 = icmp eq ptr %39, null
  br i1 %tobool.not.i97, label %brelse.exit96.brelse.exit99_crit_edge, label %if.then.i98

brelse.exit96.brelse.exit99_crit_edge:            ; preds = %brelse.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit99

if.then.i98:                                      ; preds = %brelse.exit96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %39) #8
  br label %brelse.exit99

brelse.exit99:                                    ; preds = %if.then.i98, %brelse.exit96.brelse.exit99_crit_edge
  %40 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx11, align 4
  %tobool.not.i100 = icmp eq ptr %41, null
  br i1 %tobool.not.i100, label %brelse.exit99.brelse.exit102_crit_edge, label %if.then.i101

brelse.exit99.brelse.exit102_crit_edge:           ; preds = %brelse.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit102

if.then.i101:                                     ; preds = %brelse.exit99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %41) #8
  br label %brelse.exit102

brelse.exit102:                                   ; preds = %if.then.i101, %brelse.exit99.brelse.exit102_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond24.preheader, label %brelse.exit102.for.body_crit_edge

brelse.exit102.for.body_crit_edge:                ; preds = %brelse.exit102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

brelse.exit105:                                   ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %42 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %43 to i32
  tail call void @__brelse(ptr noundef nonnull %5) #8
  %44 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %45, ptr noundef null, i32 noundef %conv, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %brelse.exit105, %for.cond24.preheader.if.end_crit_edge
  %arrayidx32 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 0
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %47, null
  br i1 %tobool33.not, label %if.end.for.inc38_crit_edge, label %brelse.exit108

if.end.for.inc38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38

brelse.exit108:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %47) #8
  br label %for.inc38

for.inc38:                                        ; preds = %brelse.exit108, %if.end.for.inc38_crit_edge
  %arrayidx27.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx27.1, align 4
  %tobool.not.1 = icmp eq ptr %49, null
  br i1 %tobool.not.1, label %for.inc38.if.end.1_crit_edge, label %brelse.exit105.1

for.inc38.if.end.1_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

brelse.exit105.1:                                 ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.1 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %b_blocknr.1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %b_blocknr.1, align 8
  %conv.1 = trunc i64 %51 to i32
  tail call void @__brelse(ptr noundef nonnull %49) #8
  %52 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %53, ptr noundef null, i32 noundef %conv.1, i32 noundef 0) #8
  br label %if.end.1

if.end.1:                                         ; preds = %brelse.exit105.1, %for.inc38.if.end.1_crit_edge
  %arrayidx32.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx32.1, align 4
  %tobool33.not.1 = icmp eq ptr %55, null
  br i1 %tobool33.not.1, label %if.end.1.for.inc38.1_crit_edge, label %brelse.exit108.1

if.end.1.for.inc38.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.1

brelse.exit108.1:                                 ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %55) #8
  br label %for.inc38.1

for.inc38.1:                                      ; preds = %brelse.exit108.1, %if.end.1.for.inc38.1_crit_edge
  %arrayidx27.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 2
  %56 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx27.2, align 4
  %tobool.not.2 = icmp eq ptr %57, null
  br i1 %tobool.not.2, label %for.inc38.1.if.end.2_crit_edge, label %brelse.exit105.2

for.inc38.1.if.end.2_crit_edge:                   ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

brelse.exit105.2:                                 ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.2 = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %b_blocknr.2 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %b_blocknr.2, align 8
  %conv.2 = trunc i64 %59 to i32
  tail call void @__brelse(ptr noundef nonnull %57) #8
  %60 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %61, ptr noundef null, i32 noundef %conv.2, i32 noundef 0) #8
  br label %if.end.2

if.end.2:                                         ; preds = %brelse.exit105.2, %for.inc38.1.if.end.2_crit_edge
  %arrayidx32.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 2
  %62 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx32.2, align 4
  %tobool33.not.2 = icmp eq ptr %63, null
  br i1 %tobool33.not.2, label %if.end.2.for.inc38.2_crit_edge, label %brelse.exit108.2

if.end.2.for.inc38.2_crit_edge:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.2

brelse.exit108.2:                                 ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %63) #8
  br label %for.inc38.2

for.inc38.2:                                      ; preds = %brelse.exit108.2, %if.end.2.for.inc38.2_crit_edge
  %arrayidx27.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 3
  %64 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx27.3, align 4
  %tobool.not.3 = icmp eq ptr %65, null
  br i1 %tobool.not.3, label %for.inc38.2.if.end.3_crit_edge, label %brelse.exit105.3

for.inc38.2.if.end.3_crit_edge:                   ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

brelse.exit105.3:                                 ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.3 = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %b_blocknr.3 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %b_blocknr.3, align 8
  %conv.3 = trunc i64 %67 to i32
  tail call void @__brelse(ptr noundef nonnull %65) #8
  %68 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %69, ptr noundef null, i32 noundef %conv.3, i32 noundef 0) #8
  br label %if.end.3

if.end.3:                                         ; preds = %brelse.exit105.3, %for.inc38.2.if.end.3_crit_edge
  %arrayidx32.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 3
  %70 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx32.3, align 4
  %tobool33.not.3 = icmp eq ptr %71, null
  br i1 %tobool33.not.3, label %if.end.3.for.inc38.3_crit_edge, label %brelse.exit108.3

if.end.3.for.inc38.3_crit_edge:                   ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.3

brelse.exit108.3:                                 ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %71) #8
  br label %for.inc38.3

for.inc38.3:                                      ; preds = %brelse.exit108.3, %if.end.3.for.inc38.3_crit_edge
  %arrayidx27.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 4
  %72 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx27.4, align 4
  %tobool.not.4 = icmp eq ptr %73, null
  br i1 %tobool.not.4, label %for.inc38.3.if.end.4_crit_edge, label %brelse.exit105.4

for.inc38.3.if.end.4_crit_edge:                   ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

brelse.exit105.4:                                 ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.4 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %b_blocknr.4 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %b_blocknr.4, align 8
  %conv.4 = trunc i64 %75 to i32
  tail call void @__brelse(ptr noundef nonnull %73) #8
  %76 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %77, ptr noundef null, i32 noundef %conv.4, i32 noundef 0) #8
  br label %if.end.4

if.end.4:                                         ; preds = %brelse.exit105.4, %for.inc38.3.if.end.4_crit_edge
  %arrayidx32.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 4
  %78 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx32.4, align 4
  %tobool33.not.4 = icmp eq ptr %79, null
  br i1 %tobool33.not.4, label %if.end.4.for.inc38.4_crit_edge, label %brelse.exit108.4

if.end.4.for.inc38.4_crit_edge:                   ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.4

brelse.exit108.4:                                 ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %79) #8
  br label %for.inc38.4

for.inc38.4:                                      ; preds = %brelse.exit108.4, %if.end.4.for.inc38.4_crit_edge
  %arrayidx27.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 5
  %80 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx27.5, align 4
  %tobool.not.5 = icmp eq ptr %81, null
  br i1 %tobool.not.5, label %for.inc38.4.if.end.5_crit_edge, label %brelse.exit105.5

for.inc38.4.if.end.5_crit_edge:                   ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.5

brelse.exit105.5:                                 ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.5 = getelementptr inbounds %struct.buffer_head, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %b_blocknr.5 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %b_blocknr.5, align 8
  %conv.5 = trunc i64 %83 to i32
  tail call void @__brelse(ptr noundef nonnull %81) #8
  %84 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %transaction_handle, align 4
  tail call void @reiserfs_free_block(ptr noundef %85, ptr noundef null, i32 noundef %conv.5, i32 noundef 0) #8
  br label %if.end.5

if.end.5:                                         ; preds = %brelse.exit105.5, %for.inc38.4.if.end.5_crit_edge
  %arrayidx32.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 5
  %86 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx32.5, align 4
  %tobool33.not.5 = icmp eq ptr %87, null
  br i1 %tobool33.not.5, label %if.end.5.for.inc38.5_crit_edge, label %brelse.exit108.5

if.end.5.for.inc38.5_crit_edge:                   ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc38.5

brelse.exit108.5:                                 ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %87) #8
  br label %for.inc38.5

for.inc38.5:                                      ; preds = %brelse.exit108.5, %if.end.5.for.inc38.5_crit_edge
  %vn_buf = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 31
  %88 = ptrtoint ptr %vn_buf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vn_buf, align 4
  tail call void @kfree(ptr noundef %89) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @set_parameters(ptr nocapture noundef %tb, i32 noundef %h, i32 noundef %lnum, i32 noundef %rnum, i32 noundef %blk_num, ptr noundef readonly %s012, i32 noundef %lb, i32 noundef %rb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lnum, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rnum, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %blk_num, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp = icmp eq i32 %h, 0
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %entry
  %cmp5.not = icmp eq ptr %s012, null
  br i1 %cmp5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr i16, ptr %s012, i32 1
  %3 = ptrtoint ptr %s012 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %s012, align 2
  %conv = sext i16 %4 to i32
  %s0num = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 21
  %5 = ptrtoint ptr %s0num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %s0num, align 8
  %incdec.ptr7 = getelementptr i16, ptr %s012, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %incdec.ptr, align 2
  %conv8 = sext i16 %7 to i32
  %snum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 26
  %8 = ptrtoint ptr %snum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv8, ptr %snum, align 8
  %incdec.ptr10 = getelementptr i16, ptr %s012, i32 3
  %9 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr7, align 2
  %conv11 = sext i16 %10 to i32
  %arrayidx13 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 26, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv11, ptr %arrayidx13, align 4
  %incdec.ptr14 = getelementptr i16, ptr %s012, i32 4
  %12 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %incdec.ptr10, align 2
  %conv15 = sext i16 %13 to i32
  %sbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 27
  %14 = ptrtoint ptr %sbytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %sbytes, align 8
  %15 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %incdec.ptr14, align 2
  %conv17 = sext i16 %16 to i32
  %arrayidx19 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 1
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17, ptr %arrayidx19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %lbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %18 = ptrtoint ptr %lbytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %lb, ptr %lbytes, align 4
  %rbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %19 = ptrtoint ptr %rbytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rb, ptr %rbytes, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %20 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx22 = getelementptr %struct.reiserfs_sb_info, ptr %23, i32 0, i32 27, i32 22, i32 %h
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %25, %lnum
  store i32 %add, ptr %arrayidx22, align 4
  %26 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i70 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i70, align 16
  %arrayidx27 = getelementptr %struct.reiserfs_sb_info, ptr %28, i32 0, i32 27, i32 23, i32 %h
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %30, %rnum
  store i32 %add28, ptr %arrayidx27, align 4
  %31 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i71 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i71, align 16
  %arrayidx33 = getelementptr %struct.reiserfs_sb_info, ptr %33, i32 0, i32 27, i32 24, i32 %h
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %35, %lb
  store i32 %add34, ptr %arrayidx33, align 4
  %36 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i72 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i72, align 16
  %arrayidx39 = getelementptr %struct.reiserfs_sb_info, ptr %38, i32 0, i32 27, i32 25, i32 %h
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %40, %rb
  store i32 %add40, ptr %arrayidx39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_parents(ptr nocapture noundef %tb, i32 noundef %h) unnamed_addr #0 align 64 {
entry:
  %curf = alloca ptr, align 4
  %curcf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub = sub i32 %3, %h
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curf) #8
  %4 = ptrtoint ptr %curf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %curf, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curcf) #8
  %5 = ptrtoint ptr %curcf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %curcf, align 4, !annotation !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp = icmp slt i32 %sub, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.brelse.exit_crit_edge, label %if.then.i

if.then.brelse.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %7) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then.brelse.exit_crit_edge
  %arrayidx2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i164 = icmp eq ptr %9, null
  br i1 %tobool.not.i164, label %brelse.exit.brelse.exit166_crit_edge, label %if.then.i165

brelse.exit.brelse.exit166_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit166

if.then.i165:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %9) #8
  br label %brelse.exit166

brelse.exit166:                                   ; preds = %if.then.i165, %brelse.exit.brelse.exit166_crit_edge
  %arrayidx3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i167 = icmp eq ptr %11, null
  br i1 %tobool.not.i167, label %brelse.exit166.brelse.exit169_crit_edge, label %if.then.i168

brelse.exit166.brelse.exit169_crit_edge:          ; preds = %brelse.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit169

if.then.i168:                                     ; preds = %brelse.exit166
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %11) #8
  br label %brelse.exit169

brelse.exit169:                                   ; preds = %if.then.i168, %brelse.exit166.brelse.exit169_crit_edge
  %arrayidx4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i170 = icmp eq ptr %13, null
  br i1 %tobool.not.i170, label %brelse.exit169.brelse.exit172_crit_edge, label %if.then.i171

brelse.exit169.brelse.exit172_crit_edge:          ; preds = %brelse.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit172

if.then.i171:                                     ; preds = %brelse.exit169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %13) #8
  br label %brelse.exit172

brelse.exit172:                                   ; preds = %if.then.i171, %brelse.exit169.brelse.exit172_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx2, align 4
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx3, align 4
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx4, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %path_elements = getelementptr inbounds %struct.treepath, ptr %1, i32 0, i32 2
  %sub13 = add nsw i32 %sub, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub13
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub13, i32 1
  %18 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %curf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %curf, align 4
  %23 = ptrtoint ptr %curcf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %curcf, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !184
  %call.i.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !184
  %sub24 = add i32 %19, -1
  %arrayidx25 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub24, ptr %arrayidx25, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end
  %add = add i32 %h, 1
  %call = call fastcc i32 @get_far_parent(ptr noundef %tb, i32 noundef %add, ptr noundef nonnull %curf, ptr noundef nonnull %curcf, i8 noundef zeroext 108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26.not = icmp eq i32 %call, 0
  br i1 %cmp26.not, label %if.else.if.end29_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then14
  %arrayidx31 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx31, align 4
  %tobool.not.i175 = icmp eq ptr %28, null
  br i1 %tobool.not.i175, label %if.end29.brelse.exit177_crit_edge, label %if.then.i176

if.end29.brelse.exit177_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit177

if.then.i176:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %28) #8
  br label %brelse.exit177

brelse.exit177:                                   ; preds = %if.then.i176, %if.end29.brelse.exit177_crit_edge
  %29 = ptrtoint ptr %curf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %curf, align 4
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %arrayidx31, align 4
  %arrayidx35 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx35, align 4
  %tobool.not.i178 = icmp eq ptr %33, null
  br i1 %tobool.not.i178, label %brelse.exit177.brelse.exit180_crit_edge, label %if.then.i179

brelse.exit177.brelse.exit180_crit_edge:          ; preds = %brelse.exit177
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit180

if.then.i179:                                     ; preds = %brelse.exit177
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %33) #8
  br label %brelse.exit180

brelse.exit180:                                   ; preds = %if.then.i179, %brelse.exit177.brelse.exit180_crit_edge
  %34 = ptrtoint ptr %curcf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %curcf, align 4
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx35, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %brelse.exit180.lor.lhs.false_crit_edge, label %land.lhs.true

brelse.exit180.lor.lhs.false_crit_edge:           ; preds = %brelse.exit180
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %brelse.exit180
  %call39 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.if.then45_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %brelse.exit180.lor.lhs.false_crit_edge
  %tobool41.not = icmp eq ptr %35, null
  br i1 %tobool41.not, label %lor.lhs.false.do.end_crit_edge, label %land.lhs.true42

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true42:                                  ; preds = %lor.lhs.false
  %call43 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.if.then45_crit_edge, label %land.lhs.true42.do.end_crit_edge

land.lhs.true42.do.end_crit_edge:                 ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_parents, ptr noundef nonnull @.str.23, i32 noundef 1229, ptr noundef nonnull @__func__.get_parents, ptr noundef %30, ptr noundef %35) #11
  unreachable

do.end:                                           ; preds = %land.lhs.true42.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %add50 = add i32 %h, 1
  %sub51 = sub i32 %38, %add50
  %add.ptr52 = getelementptr %struct.path_element, ptr %path_elements, i32 %sub51
  %39 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr52, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %blk_nr_item, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %conv = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp54 = icmp eq i32 %19, %conv
  br i1 %cmp54, label %if.then56, label %if.else63

if.then56:                                        ; preds = %do.end
  %call58 = call fastcc i32 @get_far_parent(ptr noundef %tb, i32 noundef %add50, ptr noundef nonnull %curf, ptr noundef nonnull %curcf, i8 noundef zeroext 114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.then56.if.end75_crit_edge, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56.if.end75_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.else63:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %48 = ptrtoint ptr %curf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %curf, align 4
  %49 = ptrtoint ptr %curcf to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %curcf, align 4
  %b_count.i181 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 11
  %call.i.i.i182 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i181, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i181, i32 1, i32 3, i32 1) #8
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i181, ptr %b_count.i181, i32 1, ptr elementtype(i32) %b_count.i181) #8, !srcloc !184
  %call.i.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i181, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i181, i32 1, i32 3, i32 1) #8
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i181, ptr %b_count.i181, i32 1, ptr elementtype(i32) %b_count.i181) #8, !srcloc !184
  %arrayidx74 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %52 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %19, ptr %arrayidx74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else63, %if.then56.if.end75_crit_edge
  %arrayidx77 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %53 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx77, align 4
  %tobool.not.i185 = icmp eq ptr %54, null
  br i1 %tobool.not.i185, label %if.end75.brelse.exit187_crit_edge, label %if.then.i186

if.end75.brelse.exit187_crit_edge:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit187

if.then.i186:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %54) #8
  br label %brelse.exit187

brelse.exit187:                                   ; preds = %if.then.i186, %if.end75.brelse.exit187_crit_edge
  %55 = ptrtoint ptr %curf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %curf, align 4
  %57 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %arrayidx77, align 4
  %arrayidx81 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  %58 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx81, align 4
  %tobool.not.i188 = icmp eq ptr %59, null
  br i1 %tobool.not.i188, label %brelse.exit187.brelse.exit190_crit_edge, label %if.then.i189

brelse.exit187.brelse.exit190_crit_edge:          ; preds = %brelse.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit190

if.then.i189:                                     ; preds = %brelse.exit187
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %59) #8
  br label %brelse.exit190

brelse.exit190:                                   ; preds = %if.then.i189, %brelse.exit187.brelse.exit190_crit_edge
  %60 = ptrtoint ptr %curcf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %curcf, align 4
  %62 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %arrayidx81, align 4
  %tobool85.not = icmp eq ptr %56, null
  br i1 %tobool85.not, label %brelse.exit190.lor.lhs.false89_crit_edge, label %land.lhs.true86

brelse.exit190.lor.lhs.false89_crit_edge:         ; preds = %brelse.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false89

land.lhs.true86:                                  ; preds = %brelse.exit190
  %call87 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.then94_crit_edge, label %land.lhs.true86.lor.lhs.false89_crit_edge

land.lhs.true86.lor.lhs.false89_crit_edge:        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false89

land.lhs.true86.if.then94_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false89:                                  ; preds = %land.lhs.true86.lor.lhs.false89_crit_edge, %brelse.exit190.lor.lhs.false89_crit_edge
  %tobool90.not = icmp eq ptr %61, null
  br i1 %tobool90.not, label %lor.lhs.false89.cleanup_crit_edge, label %land.lhs.true91

lor.lhs.false89.cleanup_crit_edge:                ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true91:                                  ; preds = %lor.lhs.false89
  %call92 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true91.if.then94_crit_edge, label %land.lhs.true91.cleanup_crit_edge

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true91.if.then94_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

if.then94:                                        ; preds = %land.lhs.true91.if.then94_crit_edge, %land.lhs.true86.if.then94_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_parents, ptr noundef nonnull @.str.24, i32 noundef 1264, ptr noundef nonnull @__func__.get_parents, ptr noundef %56, ptr noundef %61) #11
  unreachable

cleanup:                                          ; preds = %land.lhs.true91.cleanup_crit_edge, %lor.lhs.false89.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.else.cleanup_crit_edge, %brelse.exit172
  %retval.0 = phi i32 [ 0, %brelse.exit172 ], [ %call, %if.else.cleanup_crit_edge ], [ %call58, %if.then56.cleanup_crit_edge ], [ 0, %land.lhs.true91.cleanup_crit_edge ], [ 0, %lor.lhs.false89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curcf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_virtual_node(ptr nocapture noundef readonly %tb, i32 noundef %h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_vn = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %0 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_vn, align 4
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %2 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = sub i32 %5, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %sub2 = add i32 %9, 65512
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blk_free_space, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %insert_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %h
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %sub3 = add i32 %sub2, %16
  %add = sub i32 %sub3, %conv
  %conv4 = trunc i32 %add to i16
  %vn_size = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %vn_size to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv4, ptr %vn_size, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool.not = icmp eq i32 %h, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sext = shl i32 %add, 16
  %conv6 = ashr exact i32 %sext, 16
  %sub7 = add nsw i32 %conv6, -8
  %div = udiv i32 %sub7, 24
  %conv8 = trunc i32 %div to i16
  %vn_nr_item = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv8, ptr %vn_nr_item, align 4
  br label %cleanup243

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %blk_nr_item, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %vn_mode = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %25)
  %cmp = icmp eq i16 %25, 105
  %cond = zext i1 %cmp to i16
  %add13 = add i16 %23, %cond
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %25)
  %cmp16 = icmp eq i16 %25, 100
  %cond18.neg = sext i1 %cmp16 to i16
  %sub19 = add i16 %add13, %cond18.neg
  %vn_nr_item21 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %vn_nr_item21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %sub19, ptr %vn_nr_item21, align 4
  %27 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb_vn, align 4
  %add.ptr23 = getelementptr %struct.virtual_node, ptr %28, i32 1
  %vn_vi = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %vn_vi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr23, ptr %vn_vi, align 4
  %conv26 = zext i16 %sub19 to i32
  %mul = mul nuw nsw i32 %conv26, 24
  %30 = call ptr @memset(ptr %add.ptr23, i32 0, i32 %mul)
  %31 = load i16, ptr %vn_nr_item21, align 4
  %conv28 = zext i16 %31 to i32
  %mul29 = mul nuw nsw i32 %conv28, 24
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr30 = getelementptr i8, ptr %33, i32 %mul29
  store ptr %add.ptr30, ptr %1, align 4
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 24
  %u.i = getelementptr i8, ptr %35, i32 32
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %u.i, align 1
  %38 = trunc i64 %37 to i32
  %39 = lshr i32 %38, 4
  %conv1.i.i = and i32 %39, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %40 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %40)
  %switch9.i = icmp ult i16 %40, -3
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %switch.i = select i1 %not.cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %k_uniqueness.i = getelementptr i8, ptr %35, i32 36
  %41 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %k_uniqueness.i, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %43, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i = select i1 %cmp.i.i, i32 %conv1.i.i, i32 15
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %if.else.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i32 [ %narrow.i, %if.else.i ], [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ %43, %if.then.i.le_key_k_type.exit_crit_edge ]
  %arrayidx34 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i
  %45 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx34, align 4
  %is_left_mergeable = getelementptr inbounds %struct.item_operations, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %is_left_mergeable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %is_left_mergeable, align 4
  %49 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %b_size, align 8
  %call37 = tail call i32 %48(ptr noundef %add.ptr.i.i, i32 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %le_key_k_type.exit.if.end50_crit_edge, label %land.lhs.true

le_key_k_type.exit.if.end50_crit_edge:            ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true:                                    ; preds = %le_key_k_type.exit
  %51 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %52)
  %cmp41.not = icmp eq i16 %52, 100
  br i1 %cmp41.not, label %lor.lhs.false, label %land.lhs.true.if.then45_crit_edge

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false:                                    ; preds = %land.lhs.true
  %vn_affected_item_num = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %vn_affected_item_num to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vn_affected_item_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool44.not = icmp eq i16 %54, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  %55 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vn_vi, align 4
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vi_type, align 4
  %59 = or i16 %58, 1
  store i16 %59, ptr %vi_type, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %lor.lhs.false.if.end50_crit_edge, %le_key_k_type.exit.if.end50_crit_edge
  %60 = ptrtoint ptr %vn_nr_item21 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vn_nr_item21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp53431.not = icmp eq i16 %61, 0
  br i1 %cmp53431.not, label %if.end50.for.end_crit_edge, label %for.body.lr.ph

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %vn_affected_item_num57 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 4
  %vn_buf = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 31
  %vn_buf_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 32
  %vn_data = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %new_num.0432 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %62 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vn_vi, align 4
  %add.ptr56 = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432
  %64 = ptrtoint ptr %vn_affected_item_num57 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vn_affected_item_num57, align 2
  %conv58 = sext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_num.0432, i32 %conv58)
  %cmp59.not = icmp eq i32 %new_num.0432, %conv58
  %cond61 = zext i1 %cmp59.not to i32
  br i1 %cmp59.not, label %land.lhs.true63, label %for.body.if.end69_crit_edge

for.body.if.end69_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true63:                                  ; preds = %for.body
  %66 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %67)
  %cmp66 = icmp eq i16 %67, 105
  br i1 %cmp66, label %land.lhs.true63.cleanup_crit_edge, label %land.lhs.true63.if.end69_crit_edge

land.lhs.true63.if.end69_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %land.lhs.true63.if.end69_crit_edge, %for.body.if.end69_crit_edge
  %68 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vn_mode, align 4
  %conv73 = sext i16 %69 to i32
  %70 = zext i32 %conv73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %conv73, label %lor.lhs.false2.i [
    i32 112, label %if.end69.old_item_num.exit_crit_edge
    i32 99, label %if.end69.old_item_num.exit_crit_edge445
  ]

if.end69.old_item_num.exit_crit_edge445:          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_item_num.exit

if.end69.old_item_num.exit_crit_edge:             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_item_num.exit

lor.lhs.false2.i:                                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp4(i32 %new_num.0432, i32 %conv58)
  %cmp3.i = icmp slt i32 %new_num.0432, %conv58
  br i1 %cmp3.i, label %lor.lhs.false2.i.old_item_num.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.old_item_num.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_item_num.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %71 = zext i32 %conv73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %conv73, label %if.then12.i [
    i32 105, label %do.body.i
    i32 100, label %do.end14.i
  ]

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_num.0432)
  %cmp6.i = icmp eq i32 %new_num.0432, 0
  br i1 %cmp6.i, label %if.then7.i, label %do.end.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.old_item_num, ptr noundef nonnull @.str.34, i32 noundef 39, ptr noundef nonnull @__func__.old_item_num) #11
  unreachable

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %new_num.0432, -1
  br label %old_item_num.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv73.le = sext i16 %69 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.old_item_num, ptr noundef nonnull @.str.35, i32 noundef 46, ptr noundef nonnull @__func__.old_item_num, i32 noundef %conv73.le) #11
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %new_num.0432, 1
  br label %old_item_num.exit

old_item_num.exit:                                ; preds = %do.end14.i, %do.end.i, %lor.lhs.false2.i.old_item_num.exit_crit_edge, %if.end69.old_item_num.exit_crit_edge, %if.end69.old_item_num.exit_crit_edge445
  %retval.0.i356 = phi i32 [ %sub.i, %do.end.i ], [ %add.i, %do.end14.i ], [ %new_num.0432, %if.end69.old_item_num.exit_crit_edge ], [ %new_num.0432, %if.end69.old_item_num.exit_crit_edge445 ], [ %new_num.0432, %lor.lhs.false2.i.old_item_num.exit_crit_edge ]
  %add.ptr75 = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %retval.0.i356
  %ih_item_len = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %retval.0.i356, i32 2
  %72 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %ih_item_len, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %add77 = add i16 %74, 24
  %vi_item_len = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432, i32 2
  %75 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vi_item_len, align 2
  %add79 = add i16 %add77, %76
  store i16 %add79, ptr %vi_item_len, align 2
  %vi_ih = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432, i32 3
  %77 = ptrtoint ptr %vi_ih to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr75, ptr %vi_ih, align 4
  %78 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data, align 4
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %add.ptr75, i32 0, i32 3
  %80 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %ih_item_location.i, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #8
  %conv.i = zext i16 %82 to i32
  %add.ptr.i = getelementptr i8, ptr %79, i32 %conv.i
  %vi_item = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432, i32 4
  %83 = ptrtoint ptr %vi_item to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.i, ptr %vi_item, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %vi_uarea = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432, i32 6
  %86 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %vi_uarea, align 4
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %add.ptr75, i32 0, i32 4
  %87 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp.i.i357 = icmp eq i16 %88, 0
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %add.ptr75, i32 0, i32 2
  br i1 %cmp.i.i357, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %old_item_num.exit
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %k_uniqueness.i.i, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %91, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %old_item_num.exit
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %u.i.i, align 1
  %95 = trunc i64 %94 to i32
  %96 = lshr i32 %95, 4
  %conv1.i.i.i = and i32 %96, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %91, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx88 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %97 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx88, align 4
  %create_vi = getelementptr inbounds %struct.item_operations, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %create_vi to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %create_vi, align 4
  %101 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %insert_size, align 4
  %call91 = tail call i32 %100(ptr noundef %1, ptr noundef %add.ptr56, i32 noundef %cond61, i32 noundef %102) #8
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %add.ptr93 = getelementptr i8, ptr %104, i32 %call91
  store ptr %add.ptr93, ptr %1, align 4
  %105 = ptrtoint ptr %vn_buf to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vn_buf, align 4
  %107 = ptrtoint ptr %vn_buf_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vn_buf_size, align 8
  %add.ptr94 = getelementptr i8, ptr %106, i32 %108
  %cmp96 = icmp ult ptr %add.ptr94, %add.ptr93
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %109 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %110, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.create_virtual_node, ptr noundef nonnull @.str.30) #11
  unreachable

if.end99:                                         ; preds = %le_ih_k_type.exit
  br i1 %cmp59.not, label %if.end102, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end99
  %111 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %vn_mode, align 4
  %113 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %112, label %if.end102.cleanup_crit_edge [
    i16 112, label %if.end102.if.then112_crit_edge
    i16 99, label %if.end102.if.then112_crit_edge446
  ]

if.end102.if.then112_crit_edge446:                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end102.if.then112_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then112:                                       ; preds = %if.end102.if.then112_crit_edge, %if.end102.if.then112_crit_edge446
  %114 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %insert_size, align 4
  %116 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vn_vi, align 4
  %vi_item_len117 = getelementptr %struct.virtual_item, ptr %117, i32 %new_num.0432, i32 2
  %118 = ptrtoint ptr %vi_item_len117 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vi_item_len117, align 2
  %120 = trunc i32 %115 to i16
  %conv120 = add i16 %119, %120
  store i16 %conv120, ptr %vi_item_len117, align 2
  %121 = ptrtoint ptr %vn_data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vn_data, align 4
  %vi_new_data = getelementptr %struct.virtual_item, ptr %63, i32 %new_num.0432, i32 5
  %123 = ptrtoint ptr %vi_new_data to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %vi_new_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end102.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %land.lhs.true63.cleanup_crit_edge
  %inc = add nuw nsw i32 %new_num.0432, 1
  %124 = ptrtoint ptr %vn_nr_item21 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %vn_nr_item21, align 4
  %conv52 = zext i16 %125 to i32
  %cmp53 = icmp ult i32 %inc, %conv52
  br i1 %cmp53, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end50.for.end_crit_edge
  %126 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 105, i16 %127)
  %cmp126 = icmp eq i16 %127, 105
  br i1 %cmp126, label %if.then128, label %for.end.if.end156_crit_edge

for.end.if.end156_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

if.then128:                                       ; preds = %for.end
  %vn_ins_ih = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 6
  %128 = ptrtoint ptr %vn_ins_ih to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vn_ins_ih, align 4
  %cmp134 = icmp eq ptr %129, null
  br i1 %cmp134, label %if.then136, label %do.end

if.then136:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.create_virtual_node, ptr noundef nonnull @.str.31, i32 noundef 136, ptr noundef nonnull @__func__.create_virtual_node) #11
  unreachable

do.end:                                           ; preds = %if.then128
  %130 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vn_vi, align 4
  %vn_affected_item_num131 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 4
  %132 = ptrtoint ptr %vn_affected_item_num131 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vn_affected_item_num131, align 2
  %conv132 = sext i16 %133 to i32
  %add.ptr133 = getelementptr %struct.virtual_item, ptr %131, i32 %conv132
  %134 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %insert_size, align 4
  %conv140 = trunc i32 %135 to i16
  %vi_item_len141 = getelementptr %struct.virtual_item, ptr %131, i32 %conv132, i32 2
  %136 = ptrtoint ptr %vi_item_len141 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv140, ptr %vi_item_len141, align 2
  %137 = ptrtoint ptr %vn_ins_ih to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vn_ins_ih, align 4
  %vi_ih143 = getelementptr %struct.virtual_item, ptr %131, i32 %conv132, i32 3
  %139 = ptrtoint ptr %vi_ih143 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %vi_ih143, align 4
  %vn_data144 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 7
  %140 = ptrtoint ptr %vn_data144 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %vn_data144, align 4
  %vi_item145 = getelementptr %struct.virtual_item, ptr %131, i32 %conv132, i32 4
  %142 = ptrtoint ptr %vi_item145 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %vi_item145, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %vi_uarea147 = getelementptr %struct.virtual_item, ptr %131, i32 %conv132, i32 6
  %145 = ptrtoint ptr %vi_uarea147 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %vi_uarea147, align 4
  %ih_version.i358 = getelementptr inbounds %struct.item_head, ptr %138, i32 0, i32 4
  %146 = ptrtoint ptr %ih_version.i358 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %ih_version.i358, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp.i.i359 = icmp eq i16 %147, 0
  %u.i.i360 = getelementptr inbounds %struct.reiserfs_key, ptr %138, i32 0, i32 2
  br i1 %cmp.i.i359, label %if.then.i.i362, label %if.else.i.i370

if.then.i.i362:                                   ; preds = %do.end
  %k_uniqueness.i.i361 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i360, i32 0, i32 1
  %148 = ptrtoint ptr %k_uniqueness.i.i361 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %k_uniqueness.i.i361, align 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #8
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %150, label %sw.default.i.i.i366 [
    i32 0, label %if.then.i.i362.le_ih_k_type.exit373_crit_edge
    i32 -2, label %sw.bb1.i.i.i363
    i32 -1, label %sw.bb2.i.i.i364
    i32 500, label %sw.bb3.i.i.i365
  ]

if.then.i.i362.le_ih_k_type.exit373_crit_edge:    ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit373

sw.bb1.i.i.i363:                                  ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit373

sw.bb2.i.i.i364:                                  ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit373

sw.bb3.i.i.i365:                                  ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit373

sw.default.i.i.i366:                              ; preds = %if.then.i.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_ih_k_type.exit373

if.else.i.i370:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %u.i.i360 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %u.i.i360, align 1
  %154 = trunc i64 %153 to i32
  %155 = lshr i32 %154, 4
  %conv1.i.i.i367 = and i32 %155, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i367)
  %cmp.i.i.i368 = icmp ult i32 %conv1.i.i.i367, 4
  %narrow.i.i369 = select i1 %cmp.i.i.i368, i32 %conv1.i.i.i367, i32 15
  br label %le_ih_k_type.exit373

le_ih_k_type.exit373:                             ; preds = %if.else.i.i370, %sw.default.i.i.i366, %sw.bb3.i.i.i365, %sw.bb2.i.i.i364, %sw.bb1.i.i.i363, %if.then.i.i362.le_ih_k_type.exit373_crit_edge
  %retval.0.in.i.i371 = phi i32 [ %narrow.i.i369, %if.else.i.i370 ], [ 15, %sw.default.i.i.i366 ], [ 3, %sw.bb3.i.i.i365 ], [ 2, %sw.bb2.i.i.i364 ], [ 1, %sw.bb1.i.i.i363 ], [ %150, %if.then.i.i362.le_ih_k_type.exit373_crit_edge ]
  %arrayidx151 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i371
  %156 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx151, align 4
  %create_vi152 = getelementptr inbounds %struct.item_operations, ptr %157, i32 0, i32 5
  %158 = ptrtoint ptr %create_vi152 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %create_vi152, align 4
  %160 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %insert_size, align 4
  %call155 = tail call i32 %159(ptr noundef %1, ptr noundef %add.ptr133, i32 noundef 0, i32 noundef %161) #8
  br label %if.end156

if.end156:                                        ; preds = %le_ih_k_type.exit373, %for.end.if.end156_crit_edge
  %CFR = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %162 = ptrtoint ptr %CFR to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %CFR, align 8
  %tobool158.not = icmp eq ptr %163, null
  br i1 %tobool158.not, label %if.end156.cleanup243_crit_edge, label %if.then159

if.end156.cleanup243_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

if.then159:                                       ; preds = %if.end156
  %rkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %164 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rkey, align 8
  %b_data.i.i374 = getelementptr inbounds %struct.buffer_head, ptr %163, i32 0, i32 5
  %166 = ptrtoint ptr %b_data.i.i374 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %b_data.i.i374, align 4
  %add.ptr.i.i375 = getelementptr i8, ptr %167, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i375, i32 %165
  %u.i376 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  %168 = ptrtoint ptr %u.i376 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 8)
  %169 = load i64, ptr %u.i376, align 1
  %170 = trunc i64 %169 to i32
  %171 = lshr i32 %170, 4
  %conv1.i.i377 = and i32 %171, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i377)
  %cmp.i.i378 = icmp ult i32 %conv1.i.i377, 4
  %phi.cast.i.i379 = trunc i32 %conv1.i.i377 to i16
  %172 = add nsw i16 %phi.cast.i.i379, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %172)
  %switch9.i381 = icmp ult i16 %172, -3
  %not.cmp.i.i378 = xor i1 %cmp.i.i378, true
  %switch.i382 = select i1 %not.cmp.i.i378, i1 true, i1 %switch9.i381
  br i1 %switch.i382, label %if.then.i387, label %if.else.i395

if.then.i387:                                     ; preds = %if.then159
  %k_uniqueness.i386 = getelementptr inbounds %struct.offset_v1, ptr %u.i376, i32 0, i32 1
  %173 = ptrtoint ptr %k_uniqueness.i386 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %k_uniqueness.i386, align 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #8
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %175, label %sw.default.i.i391 [
    i32 0, label %if.then.i387.le_key_k_type.exit398_crit_edge
    i32 -2, label %sw.bb1.i.i388
    i32 -1, label %sw.bb2.i.i389
    i32 500, label %sw.bb3.i.i390
  ]

if.then.i387.le_key_k_type.exit398_crit_edge:     ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit398

sw.bb1.i.i388:                                    ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit398

sw.bb2.i.i389:                                    ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit398

sw.bb3.i.i390:                                    ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit398

sw.default.i.i391:                                ; preds = %if.then.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit398

if.else.i395:                                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i394 = select i1 %cmp.i.i378, i32 %conv1.i.i377, i32 15
  br label %le_key_k_type.exit398

le_key_k_type.exit398:                            ; preds = %if.else.i395, %sw.default.i.i391, %sw.bb3.i.i390, %sw.bb2.i.i389, %sw.bb1.i.i388, %if.then.i387.le_key_k_type.exit398_crit_edge
  %retval.0.in.i396 = phi i32 [ %narrow.i394, %if.else.i395 ], [ 15, %sw.default.i.i391 ], [ 3, %sw.bb3.i.i390 ], [ 2, %sw.bb2.i.i389 ], [ 1, %sw.bb1.i.i388 ], [ %175, %if.then.i387.le_key_k_type.exit398_crit_edge ]
  %arrayidx167 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i396
  %177 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx167, align 4
  %is_left_mergeable168 = getelementptr inbounds %struct.item_operations, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %is_left_mergeable168 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %is_left_mergeable168, align 4
  %181 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %b_size, align 8
  %call170 = tail call i32 %180(ptr noundef %arrayidx.i, i32 noundef %182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %le_key_k_type.exit398.if.end196_crit_edge, label %land.lhs.true172

le_key_k_type.exit398.if.end196_crit_edge:        ; preds = %le_key_k_type.exit398
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

land.lhs.true172:                                 ; preds = %le_key_k_type.exit398
  %183 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %184)
  %cmp175.not = icmp eq i16 %184, 100
  br i1 %cmp175.not, label %lor.lhs.false177, label %land.lhs.true172.if.then186_crit_edge

land.lhs.true172.if.then186_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false177:                                 ; preds = %land.lhs.true172
  %vn_affected_item_num178 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 4
  %185 = ptrtoint ptr %vn_affected_item_num178 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vn_affected_item_num178, align 2
  %conv179 = sext i16 %186 to i32
  %187 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %b_data, align 4
  %blk_nr_item181 = getelementptr inbounds %struct.block_head, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %blk_nr_item181 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %blk_nr_item181, align 2
  %191 = tail call i16 @llvm.bswap.i16(i16 %190)
  %conv182 = zext i16 %191 to i32
  %sub183 = add nsw i32 %conv182, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub183, i32 %conv179)
  %cmp184.not = icmp eq i32 %sub183, %conv179
  br i1 %cmp184.not, label %lor.lhs.false177.if.end196_crit_edge, label %lor.lhs.false177.if.then186_crit_edge

lor.lhs.false177.if.then186_crit_edge:            ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false177.if.end196_crit_edge:             ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.then186:                                       ; preds = %lor.lhs.false177.if.then186_crit_edge, %land.lhs.true172.if.then186_crit_edge
  %192 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vn_vi, align 4
  %194 = ptrtoint ptr %vn_nr_item21 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %vn_nr_item21, align 4
  %conv189 = zext i16 %195 to i32
  %sub190 = add nsw i32 %conv189, -1
  %vi_type192 = getelementptr %struct.virtual_item, ptr %193, i32 %sub190, i32 1
  %196 = ptrtoint ptr %vi_type192 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vi_type192, align 4
  %198 = or i16 %197, 2
  store i16 %198, ptr %vi_type192, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then186, %lor.lhs.false177.if.end196_crit_edge, %le_key_k_type.exit398.if.end196_crit_edge
  %199 = ptrtoint ptr %u.i376 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %200 = load i64, ptr %u.i376, align 1
  %201 = trunc i64 %200 to i32
  %202 = lshr i32 %201, 4
  %conv1.i.i400 = and i32 %202, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i400)
  %cmp.i.i401 = icmp ult i32 %conv1.i.i400, 4
  %phi.cast.i.i402 = trunc i32 %conv1.i.i400 to i16
  %203 = add nsw i16 %phi.cast.i.i402, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %203)
  %switch9.i404 = icmp ult i16 %203, -3
  %not.cmp.i.i401 = xor i1 %cmp.i.i401, true
  %switch.i405 = select i1 %not.cmp.i.i401, i1 true, i1 %switch9.i404
  br i1 %switch.i405, label %if.then.i410, label %if.else.i418

if.then.i410:                                     ; preds = %if.end196
  %k_uniqueness.i409 = getelementptr inbounds %struct.offset_v1, ptr %u.i376, i32 0, i32 1
  %204 = ptrtoint ptr %k_uniqueness.i409 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %k_uniqueness.i409, align 1
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #8
  %207 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %206, label %sw.default.i.i414 [
    i32 0, label %if.then.i410.le_key_k_type.exit421_crit_edge
    i32 -2, label %sw.bb1.i.i411
    i32 -1, label %sw.bb2.i.i412
    i32 500, label %sw.bb3.i.i413
  ]

if.then.i410.le_key_k_type.exit421_crit_edge:     ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit421

sw.bb1.i.i411:                                    ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit421

sw.bb2.i.i412:                                    ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit421

sw.bb3.i.i413:                                    ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit421

sw.default.i.i414:                                ; preds = %if.then.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_key_k_type.exit421

if.else.i418:                                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i417 = select i1 %cmp.i.i401, i32 %conv1.i.i400, i32 15
  br label %le_key_k_type.exit421

le_key_k_type.exit421:                            ; preds = %if.else.i418, %sw.default.i.i414, %sw.bb3.i.i413, %sw.bb2.i.i412, %sw.bb1.i.i411, %if.then.i410.le_key_k_type.exit421_crit_edge
  %retval.0.in.i419 = phi i32 [ %narrow.i417, %if.else.i418 ], [ 15, %sw.default.i.i414 ], [ 3, %sw.bb3.i.i413 ], [ 2, %sw.bb2.i.i412 ], [ 1, %sw.bb1.i.i411 ], [ %206, %if.then.i410.le_key_k_type.exit421_crit_edge ]
  %arrayidx200 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i419
  %208 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx200, align 4
  %is_left_mergeable201 = getelementptr inbounds %struct.item_operations, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %is_left_mergeable201 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %is_left_mergeable201, align 4
  %212 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %b_size, align 8
  %call203 = tail call i32 %211(ptr noundef %arrayidx.i, i32 noundef %213) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %le_key_k_type.exit421.cleanup243_crit_edge, label %land.lhs.true205

le_key_k_type.exit421.cleanup243_crit_edge:       ; preds = %le_key_k_type.exit421
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

land.lhs.true205:                                 ; preds = %le_key_k_type.exit421
  %214 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %215)
  %cmp208.not = icmp eq i16 %215, 100
  br i1 %cmp208.not, label %lor.lhs.false210, label %land.lhs.true205.cleanup243_crit_edge

land.lhs.true205.cleanup243_crit_edge:            ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

lor.lhs.false210:                                 ; preds = %land.lhs.true205
  %vn_affected_item_num211 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 4
  %216 = ptrtoint ptr %vn_affected_item_num211 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %vn_affected_item_num211, align 2
  %conv212 = sext i16 %217 to i32
  %218 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %b_data, align 4
  %blk_nr_item214 = getelementptr inbounds %struct.block_head, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %blk_nr_item214 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %blk_nr_item214, align 2
  %222 = tail call i16 @llvm.bswap.i16(i16 %221)
  %conv215 = zext i16 %222 to i32
  %sub216 = add nsw i32 %conv215, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub216, i32 %conv212)
  %cmp217.not = icmp eq i32 %sub216, %conv212
  br i1 %cmp217.not, label %if.then219, label %lor.lhs.false210.cleanup243_crit_edge

lor.lhs.false210.cleanup243_crit_edge:            ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

if.then219:                                       ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %221)
  %cmp223 = icmp eq i16 %221, 256
  br i1 %cmp223, label %land.lhs.true225, label %if.then219.if.then234_crit_edge

if.then219.if.then234_crit_edge:                  ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then234

land.lhs.true225:                                 ; preds = %if.then219
  %ih_version.i424 = getelementptr i8, ptr %219, i32 46
  %223 = ptrtoint ptr %ih_version.i424 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 2)
  %224 = load i16, ptr %ih_version.i424, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %cmp.i.i.i425 = icmp eq i16 %224, 0
  br i1 %cmp.i.i.i425, label %is_direntry_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true225
  %u.i.i.i = getelementptr i8, ptr %219, i32 32
  %225 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 8)
  %226 = load i64, ptr %u.i.i.i, align 1
  %227 = and i64 %226, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %227)
  %phi.cmp1.i.i = icmp eq i64 %227, 48
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.land.lhs.true229_crit_edge, label %if.else.i.i.i.if.then234_crit_edge

if.else.i.i.i.if.then234_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then234

if.else.i.i.i.land.lhs.true229_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true229

is_direntry_le_ih.exit:                           ; preds = %land.lhs.true225
  %k_uniqueness.i.i.i = getelementptr i8, ptr %219, i32 36
  %228 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %229)
  %cond.i.i = icmp eq i32 %229, -201261056
  br i1 %cond.i.i, label %is_direntry_le_ih.exit.land.lhs.true229_crit_edge, label %is_direntry_le_ih.exit.if.then234_crit_edge

is_direntry_le_ih.exit.if.then234_crit_edge:      ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then234

is_direntry_le_ih.exit.land.lhs.true229_crit_edge: ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true229

land.lhs.true229:                                 ; preds = %is_direntry_le_ih.exit.land.lhs.true229_crit_edge, %if.else.i.i.i.land.lhs.true229_crit_edge
  %u = getelementptr i8, ptr %219, i32 40
  %230 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %231)
  %cmp232 = icmp eq i16 %231, 256
  br i1 %cmp232, label %land.lhs.true229.cleanup243_crit_edge, label %land.lhs.true229.if.then234_crit_edge

land.lhs.true229.if.then234_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then234

land.lhs.true229.cleanup243_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup243

if.then234:                                       ; preds = %land.lhs.true229.if.then234_crit_edge, %is_direntry_le_ih.exit.if.then234_crit_edge, %if.else.i.i.i.if.then234_crit_edge, %if.then219.if.then234_crit_edge
  tail call void (ptr, ...) @print_block(ptr noundef %7, i32 noundef 0, i32 noundef -1, i32 noundef -1) #8
  %tb_sb235 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %232 = ptrtoint ptr %tb_sb235 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %tb_sb235, align 8
  %234 = ptrtoint ptr %vn_affected_item_num211 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %vn_affected_item_num211, align 2
  %conv237 = sext i16 %235 to i32
  %236 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %vn_mode, align 4
  %conv239 = sext i16 %237 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %233, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.create_virtual_node, ptr noundef nonnull @.str.33, ptr noundef %arrayidx.i, i32 noundef %conv237, i32 noundef %conv239, i32 noundef 100) #11
  unreachable

cleanup243:                                       ; preds = %land.lhs.true229.cleanup243_crit_edge, %lor.lhs.false210.cleanup243_crit_edge, %land.lhs.true205.cleanup243_crit_edge, %le_key_k_type.exit421.cleanup243_crit_edge, %if.end156.cleanup243_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_left(ptr nocapture noundef %tb, i32 noundef %h, i32 noundef %cur_free) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_vn = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %0 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_vn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_free)
  %cmp = icmp slt i32 %cur_free, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_left, ptr noundef nonnull @.str.36, i32 noundef 201, ptr noundef nonnull @__func__.check_left, i32 noundef %cur_free) #11
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp1 = icmp sgt i32 %h, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %cur_free, 24
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %arrayidx, align 4
  br label %cleanup

if.end3:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_free)
  %tobool.not = icmp eq i32 %cur_free, 0
  br i1 %tobool.not, label %if.end3.if.then5_crit_edge, label %lor.lhs.false

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end3
  %vn_nr_item = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vn_nr_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then5_crit_edge, label %do.body9

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  %arrayidx7 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx7, align 4
  %lbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %6 = ptrtoint ptr %lbytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lbytes, align 4
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %7 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %sub = add i32 %10, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then12, label %do.end15

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_left, ptr noundef nonnull @.str.37, i32 noundef 219, ptr noundef nonnull @__func__.check_left) #11
  unreachable

do.end15:                                         ; preds = %do.body9
  %vn_vi = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vn_vi, align 4
  %vn_size = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %vn_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vn_size, align 2
  %conv = sext i16 %16 to i32
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vi_type, align 4
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool17.not = icmp eq i16 %19, 0
  %cond.neg = select i1 %tobool17.not, i32 0, i32 -24
  %sub18 = add nsw i32 %cond.neg, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18, i32 %cur_free)
  %cmp19.not = icmp ugt i32 %sub18, %cur_free
  br i1 %cmp19.not, label %if.end40, label %do.body22

do.body22:                                        ; preds = %do.end15
  %vn_mode = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vn_mode, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %21, label %do.end34 [
    i16 105, label %do.body22.if.then31_crit_edge
    i16 112, label %do.body22.if.then31_crit_edge151
  ]

do.body22.if.then31_crit_edge151:                 ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

do.body22.if.then31_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %do.body22.if.then31_crit_edge, %do.body22.if.then31_crit_edge151
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_left, ptr noundef nonnull @.str.38, i32 noundef 228, ptr noundef nonnull @__func__.check_left) #11
  unreachable

do.end34:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %conv36 = zext i16 %4 to i32
  %lnum37 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %23 = ptrtoint ptr %lnum37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv36, ptr %lnum37, align 4
  %lbytes39 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %24 = ptrtoint ptr %lbytes39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %lbytes39, align 4
  br label %cleanup

if.end40:                                         ; preds = %do.end15
  %lnum47 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %25 = ptrtoint ptr %lnum47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %lnum47, align 4
  %26 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vn_nr_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp51126.not = icmp eq i16 %27, 0
  br i1 %cmp51126.not, label %if.end40.cleanup_crit_edge, label %for.body.preheader

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end40
  %spec.select121 = select i1 %tobool17.not, i32 24, i32 0
  %vi_item_len141 = getelementptr inbounds %struct.virtual_item, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %vi_item_len141 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vi_item_len141, align 2
  %conv53142 = zext i16 %29 to i32
  %add143 = add nsw i32 %cond.neg, %conv53142
  call void @__sanitizer_cov_trace_cmp4(i32 %add143, i32 %cur_free)
  %cmp54.not144 = icmp sgt i32 %add143, %cur_free
  br i1 %cmp54.not144, label %for.body.preheader.if.end60_crit_edge, label %for.body.preheader.if.then56_crit_edge

for.body.preheader.if.then56_crit_edge:           ; preds = %for.body.preheader
  br label %if.then56

for.body.preheader.if.end60_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

for.body:                                         ; preds = %if.then56
  %sub57 = sub i32 %cur_free.addr.0127147, %add148
  %incdec.ptr = getelementptr %struct.virtual_item, ptr %vi.0129145, i32 1
  %vi_item_len = getelementptr %struct.virtual_item, ptr %vi.0129145, i32 1, i32 2
  %30 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vi_item_len, align 2
  %conv53 = zext i16 %31 to i32
  %cmp54.not = icmp slt i32 %sub57, %conv53
  br i1 %cmp54.not, label %for.body.if.end60_crit_edge, label %for.body.if.then56_crit_edge

for.body.if.then56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then56:                                        ; preds = %for.body.if.then56_crit_edge, %for.body.preheader.if.then56_crit_edge
  %add148 = phi i32 [ %conv53, %for.body.if.then56_crit_edge ], [ %add143, %for.body.preheader.if.then56_crit_edge ]
  %cur_free.addr.0127147 = phi i32 [ %sub57, %for.body.if.then56_crit_edge ], [ %cur_free, %for.body.preheader.if.then56_crit_edge ]
  %i.0128146 = phi i32 [ %inc77, %for.body.if.then56_crit_edge ], [ 0, %for.body.preheader.if.then56_crit_edge ]
  %vi.0129145 = phi ptr [ %incdec.ptr, %for.body.if.then56_crit_edge ], [ %14, %for.body.preheader.if.then56_crit_edge ]
  %32 = ptrtoint ptr %lnum47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lnum47, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %lnum47, align 4
  %inc77 = add nuw nsw i32 %i.0128146, 1
  %34 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vn_nr_item, align 4
  %conv50 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc77, i32 %conv50)
  %cmp51 = icmp ult i32 %inc77, %conv50
  br i1 %cmp51, label %for.body, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %for.body.if.end60_crit_edge, %for.body.preheader.if.end60_crit_edge
  %ih_size.1131.lcssa = phi i32 [ %spec.select121, %for.body.preheader.if.end60_crit_edge ], [ 24, %for.body.if.end60_crit_edge ]
  %vi.0129.lcssa = phi ptr [ %14, %for.body.preheader.if.end60_crit_edge ], [ %incdec.ptr, %for.body.if.end60_crit_edge ]
  %cur_free.addr.0127.lcssa = phi i32 [ %cur_free, %for.body.preheader.if.end60_crit_edge ], [ %sub57, %for.body.if.end60_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_free.addr.0127.lcssa, i32 %ih_size.1131.lcssa)
  %cmp61.not = icmp sgt i32 %cur_free.addr.0127.lcssa, %ih_size.1131.lcssa
  br i1 %cmp61.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %lbytes64 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %36 = ptrtoint ptr %lbytes64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %lbytes64, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %sub66 = sub i32 %cur_free.addr.0127.lcssa, %ih_size.1131.lcssa
  %37 = ptrtoint ptr %vi.0129.lcssa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vi.0129.lcssa, align 4
  %arrayidx67 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx67, align 4
  %check_left = getelementptr inbounds %struct.item_operations, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %check_left to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %check_left, align 4
  %call = tail call i32 %42(ptr noundef %vi.0129.lcssa, i32 noundef %sub66, i32 noundef 0, i32 noundef 0) #8
  %lbytes68 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %43 = ptrtoint ptr %lbytes68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call, ptr %lbytes68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp70.not = icmp eq i32 %call, -1
  br i1 %cmp70.not, label %if.end65.cleanup_crit_edge, label %if.then72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %lnum47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lnum47, align 4
  %inc75 = add i32 %45, 1
  store i32 %inc75, ptr %lnum47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end65.cleanup_crit_edge, %if.then63, %if.then56.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end34, %if.then5, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_right(ptr nocapture noundef %tb, i32 noundef %h, i32 noundef %cur_free) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_vn = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %0 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_vn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_free)
  %cmp = icmp slt i32 %cur_free, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_right, ptr noundef nonnull @.str.39, i32 noundef 287, ptr noundef nonnull @__func__.check_right) #11
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp1 = icmp sgt i32 %h, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %cur_free, 24
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %arrayidx, align 4
  br label %cleanup

if.end3:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur_free)
  %tobool.not = icmp eq i32 %cur_free, 0
  br i1 %tobool.not, label %if.end3.if.then5_crit_edge, label %lor.lhs.false

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end3
  %vn_nr_item = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vn_nr_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then5_crit_edge, label %do.body9

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  %arrayidx7 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx7, align 4
  %rbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %6 = ptrtoint ptr %rbytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rbytes, align 8
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %7 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %sub = add i32 %10, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then12, label %do.end15

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_right, ptr noundef nonnull @.str.40, i32 noundef 305, ptr noundef nonnull @__func__.check_right) #11
  unreachable

do.end15:                                         ; preds = %do.body9
  %vn_vi = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vn_vi, align 4
  %conv = zext i16 %4 to i32
  %add.ptr17 = getelementptr %struct.virtual_item, ptr %14, i32 %conv
  %add.ptr18 = getelementptr %struct.virtual_item, ptr %add.ptr17, i32 -1
  %vn_size = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %vn_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vn_size, align 2
  %conv19 = sext i16 %16 to i32
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %add.ptr18, i32 0, i32 1
  %17 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vi_type, align 4
  %19 = and i16 %18, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool21.not = icmp eq i16 %19, 0
  %cond.neg = select i1 %tobool21.not, i32 0, i32 -24
  %sub22 = add nsw i32 %cond.neg, %conv19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %cur_free)
  %cmp23.not = icmp ugt i32 %sub22, %cur_free
  br i1 %cmp23.not, label %if.end44, label %do.body26

do.body26:                                        ; preds = %do.end15
  %vn_mode = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vn_mode, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %21, label %do.end38 [
    i16 105, label %do.body26.if.then35_crit_edge
    i16 112, label %do.body26.if.then35_crit_edge156
  ]

do.body26.if.then35_crit_edge156:                 ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

do.body26.if.then35_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %do.body26.if.then35_crit_edge, %do.body26.if.then35_crit_edge156
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.check_right, ptr noundef nonnull @.str.41, i32 noundef 314, ptr noundef nonnull @__func__.check_right) #11
  unreachable

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %arrayidx42, align 4
  %rbytes43 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %24 = ptrtoint ptr %rbytes43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %rbytes43, align 8
  br label %cleanup

if.end44:                                         ; preds = %do.end15
  %rnum51 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %25 = ptrtoint ptr %rnum51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rnum51, align 8
  %26 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vn_nr_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp56131.not = icmp eq i16 %27, 0
  br i1 %cmp56131.not, label %if.end44.cleanup_crit_edge, label %for.body.preheader

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end44
  %spec.select126 = select i1 %tobool21.not, i32 24, i32 0
  %vi_item_len146 = getelementptr inbounds %struct.virtual_item, ptr %add.ptr18, i32 0, i32 2
  %28 = ptrtoint ptr %vi_item_len146 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vi_item_len146, align 2
  %conv58147 = zext i16 %29 to i32
  %add148 = add nsw i32 %cond.neg, %conv58147
  call void @__sanitizer_cov_trace_cmp4(i32 %add148, i32 %cur_free)
  %cmp59.not149 = icmp sgt i32 %add148, %cur_free
  br i1 %cmp59.not149, label %for.body.preheader.if.end65_crit_edge, label %if.then61.lr.ph

for.body.preheader.if.end65_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then61.lr.ph:                                  ; preds = %for.body.preheader
  %conv54 = zext i16 %27 to i32
  br label %if.then61

for.body:                                         ; preds = %if.then61
  %sub62 = sub i32 %cur_free.addr.0132152, %add153
  %incdec.ptr = getelementptr %struct.virtual_item, ptr %vi.0133151, i32 -1
  %i.0136 = add nsw i32 %i.0136.in150, -1
  %vi_item_len = getelementptr %struct.virtual_item, ptr %vi.0133151, i32 -1, i32 2
  %30 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vi_item_len, align 2
  %conv58 = zext i16 %31 to i32
  %cmp59.not = icmp slt i32 %sub62, %conv58
  br i1 %cmp59.not, label %for.body.if.end65_crit_edge, label %for.body.if.then61_crit_edge

for.body.if.then61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

for.body.if.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then61:                                        ; preds = %for.body.if.then61_crit_edge, %if.then61.lr.ph
  %add153 = phi i32 [ %add148, %if.then61.lr.ph ], [ %conv58, %for.body.if.then61_crit_edge ]
  %cur_free.addr.0132152 = phi i32 [ %cur_free, %if.then61.lr.ph ], [ %sub62, %for.body.if.then61_crit_edge ]
  %vi.0133151 = phi ptr [ %add.ptr18, %if.then61.lr.ph ], [ %incdec.ptr, %for.body.if.then61_crit_edge ]
  %i.0136.in150 = phi i32 [ %conv54, %if.then61.lr.ph ], [ %i.0136, %for.body.if.then61_crit_edge ]
  %32 = ptrtoint ptr %rnum51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rnum51, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %rnum51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0136.in150)
  %cmp56 = icmp sgt i32 %i.0136.in150, 1
  br i1 %cmp56, label %for.body, label %if.then61.cleanup_crit_edge

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %for.body.if.end65_crit_edge, %for.body.preheader.if.end65_crit_edge
  %ih_size.1135.lcssa = phi i32 [ %spec.select126, %for.body.preheader.if.end65_crit_edge ], [ 24, %for.body.if.end65_crit_edge ]
  %vi.0133.lcssa = phi ptr [ %add.ptr18, %for.body.preheader.if.end65_crit_edge ], [ %incdec.ptr, %for.body.if.end65_crit_edge ]
  %cur_free.addr.0132.lcssa = phi i32 [ %cur_free, %for.body.preheader.if.end65_crit_edge ], [ %sub62, %for.body.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_free.addr.0132.lcssa, i32 %ih_size.1135.lcssa)
  %cmp66.not = icmp sgt i32 %cur_free.addr.0132.lcssa, %ih_size.1135.lcssa
  br i1 %cmp66.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %rbytes69 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %34 = ptrtoint ptr %rbytes69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %rbytes69, align 8
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %sub71 = sub i32 %cur_free.addr.0132.lcssa, %ih_size.1135.lcssa
  %35 = ptrtoint ptr %vi.0133.lcssa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vi.0133.lcssa, align 4
  %arrayidx72 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx72, align 4
  %check_right = getelementptr inbounds %struct.item_operations, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %check_right to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %check_right, align 4
  %call = tail call i32 %40(ptr noundef %vi.0133.lcssa, i32 noundef %sub71) #8
  %rbytes73 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %41 = ptrtoint ptr %rbytes73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call, ptr %rbytes73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp75.not = icmp eq i32 %call, -1
  br i1 %cmp75.not, label %if.end70.cleanup_crit_edge, label %if.then77

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %rnum51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rnum51, align 8
  %inc80 = add i32 %43, 1
  store i32 %inc80, ptr %rnum51, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end70.cleanup_crit_edge, %if.then68, %if.then61.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end38, %if.then5, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_leaf_removable(ptr nocapture noundef %tb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_vn = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %0 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_vn, align 4
  %lnum = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum, align 4
  %lbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %4 = ptrtoint ptr %lbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp ne i32 %5, -1
  %cond.neg = sext i1 %cmp.not to i32
  %sub = add i32 %3, %cond.neg
  %rnum = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15
  %6 = ptrtoint ptr %rnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rnum, align 8
  %rbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %8 = ptrtoint ptr %rbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp2.not = icmp ne i32 %9, -1
  %cond3.neg = sext i1 %cmp2.not to i32
  %sub4 = add i32 %7, %cond3.neg
  %vn_nr_item = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vn_nr_item, align 4
  %conv = zext i16 %11 to i32
  %12 = add i32 %sub, %sub4
  %sub5 = sub i32 %conv, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub10 = sub i32 %conv, %sub
  %13 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %lnum, align 4
  %14 = ptrtoint ptr %rnum to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub10, ptr %rnum, align 4
  %arrayidx4.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 0
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx4.i, align 4
  %16 = ptrtoint ptr %lbytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %lbytes, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub5)
  %cmp11.not = icmp ne i32 %sub5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp14 = icmp eq i32 %5, -1
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp18 = icmp eq i32 %9, -1
  %or.cond62 = select i1 %or.cond, i1 true, i1 %cmp18
  br i1 %or.cond62, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %vn_vi = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vn_vi, align 4
  %arrayidx22 = getelementptr %struct.virtual_item, ptr %18, i32 %sub
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx23, align 4
  %unit_num = getelementptr inbounds %struct.item_operations, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %unit_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit_num, align 4
  %call = tail call i32 %24(ptr noundef %arrayidx22) #8
  %25 = ptrtoint ptr %lbytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lbytes, align 4
  %27 = ptrtoint ptr %rbytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rbytes, align 8
  %add28 = add i32 %28, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %call)
  %cmp29.not = icmp slt i32 %add28, %call
  br i1 %cmp29.not, label %if.end21.cleanup_crit_edge, label %if.then31

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add32 = add i32 %sub, 1
  %add33 = add i32 %sub4, 1
  %29 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add32, ptr %lnum, align 4
  %30 = ptrtoint ptr %rnum to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add33, ptr %rnum, align 4
  %arrayidx4.i65 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 0
  %31 = ptrtoint ptr %arrayidx4.i65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx4.i65, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then31, %if.then
  %sub.sink = phi i32 [ %sub, %if.then ], [ %add32, %if.then31 ]
  %sub10.sink = phi i32 [ %sub10, %if.then ], [ %add33, %if.then31 ]
  %.sink82 = phi i32 [ -1, %if.then ], [ %26, %if.then31 ]
  %32 = ptrtoint ptr %rbytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %rbytes, align 8
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %33 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tb_sb.i, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %arrayidx22.i = getelementptr %struct.reiserfs_sb_info, ptr %36, i32 0, i32 27, i32 22, i32 0
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx22.i, align 4
  %add.i = add i32 %38, %sub.sink
  store i32 %add.i, ptr %arrayidx22.i, align 4
  %39 = load ptr, ptr %tb_sb.i, align 8
  %s_fs_info.i70.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i70.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i70.i, align 16
  %arrayidx27.i = getelementptr %struct.reiserfs_sb_info, ptr %41, i32 0, i32 27, i32 23, i32 0
  %42 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27.i, align 4
  %add28.i = add i32 %43, %sub10.sink
  store i32 %add28.i, ptr %arrayidx27.i, align 4
  %44 = load ptr, ptr %tb_sb.i, align 8
  %s_fs_info.i71.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i71.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i71.i, align 16
  %arrayidx33.i = getelementptr %struct.reiserfs_sb_info, ptr %46, i32 0, i32 27, i32 24, i32 0
  %47 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx33.i, align 4
  %add34.i = add i32 %48, %.sink82
  store i32 %add34.i, ptr %arrayidx33.i, align 4
  %49 = load ptr, ptr %tb_sb.i, align 8
  %s_fs_info.i72.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i72.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i72.i, align 16
  %arrayidx39.i = getelementptr %struct.reiserfs_sb_info, ptr %51, i32 0, i32 27, i32 25, i32 0
  %52 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx39.i, align 4
  %add40.i80 = add i32 %53, -1
  store i32 %add40.i80, ptr %arrayidx39.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_num_ver(i32 noundef %mode, ptr nocapture noundef readonly %tb, i32 noundef %h, i32 noundef %from, i32 noundef %from_bytes, i32 noundef %to, i32 noundef %to_bytes, ptr nocapture noundef %snum012, i32 noundef %flow) unnamed_addr #0 align 64 {
entry:
  %split_item_positions = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_vn = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 33
  %0 = ptrtoint ptr %tb_vn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_vn, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %split_item_positions) #8
  %2 = getelementptr inbounds [2 x i32], ptr %split_item_positions, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %h
  %3 = ptrtoint ptr %split_item_positions to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %split_item_positions, align 8
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %mode, label %lor.lhs.false.if.then_crit_edge [
    i32 105, label %lor.lhs.false.do.end_crit_edge
    i32 112, label %lor.lhs.false.do.end_crit_edge366
  ]

lor.lhs.false.do.end_crit_edge366:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_num_ver, ptr noundef nonnull @.str.42, i32 noundef 418, ptr noundef nonnull @__func__.get_num_ver) #11
  unreachable

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge366
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %7 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %sub = sub i32 %10, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_size, align 8
  %sub6 = add i32 %14, -24
  %arrayidx7 = getelementptr i16, ptr %snum012, i32 3
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr i16, ptr %snum012, i32 4
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp9 = icmp sgt i32 %h, 0
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %do.end
  %sub11 = sub i32 %to, %from
  %mul = mul i32 %sub11, 24
  %add = add i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub6)
  %cmp12 = icmp eq i32 %add, %sub6
  br i1 %cmp12, label %if.then10.cleanup227_crit_edge, label %if.end14

if.then10.cleanup227_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup227

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 %add, %sub6
  %add15 = add i32 %div, 1
  br label %cleanup227

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %from_bytes)
  %cmp17.not = icmp eq i32 %from_bytes, -1
  %spec.select = select i1 %cmp17.not, i32 0, i32 %from_bytes
  %vn_nr_item = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %vn_nr_item to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vn_nr_item, align 4
  %conv = zext i16 %18 to i32
  %19 = xor i32 %to, -1
  %sub19 = add i32 %conv, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %to_bytes)
  %cmp20.not = icmp eq i32 %to_bytes, -1
  %cond25 = select i1 %cmp20.not, i32 0, i32 %to_bytes
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %from)
  %cmp26.not352 = icmp slt i32 %sub19, %from
  br i1 %cmp26.not352, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %vn_vi = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %sub72 = add i32 %14, -48
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup99.for.body_crit_edge, %for.body.lr.ph
  %start_bytes.0357 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %start_bytes.1, %cleanup99.for.body_crit_edge ]
  %needed_nodes.0356 = phi i32 [ 1, %for.body.lr.ph ], [ %needed_nodes.2, %cleanup99.for.body_crit_edge ]
  %total_node_size.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %total_node_size.2, %cleanup99.for.body_crit_edge ]
  %i.0354 = phi i32 [ %from, %for.body.lr.ph ], [ %inc103, %cleanup99.for.body_crit_edge ]
  %flow.addr.0353 = phi i32 [ %flow, %for.body.lr.ph ], [ %flow.addr.2, %cleanup99.for.body_crit_edge ]
  %20 = ptrtoint ptr %vn_vi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vn_vi, align 4
  %add.ptr28 = getelementptr %struct.virtual_item, ptr %21, i32 %i.0354
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0354, i32 %sub19)
  %cmp29 = icmp eq i32 %i.0354, %sub19
  %spec.select338 = select i1 %cmp29, i32 %cond25, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %needed_nodes.0356)
  %cmp36 = icmp sgt i32 %needed_nodes.0356, 3
  br i1 %cmp36, label %if.then38, label %do.end41

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_num_ver, ptr noundef nonnull @.str.43, i32 noundef 461, ptr noundef nonnull @__func__.get_num_ver) #11
  unreachable

do.end41:                                         ; preds = %for.body
  %vi_item_len = getelementptr %struct.virtual_item, ptr %21, i32 %i.0354, i32 2
  %22 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vi_item_len, align 2
  %conv42 = zext i16 %23 to i32
  %24 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr28, align 4
  %arrayidx43 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx43, align 4
  %part_size = getelementptr inbounds %struct.item_operations, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %part_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part_size, align 4
  %call = tail call i32 %29(ptr noundef %add.ptr28, i32 noundef 0, i32 noundef %start_bytes.0357) #8
  %30 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr28, align 4
  %arrayidx46 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx46, align 4
  %part_size47 = getelementptr inbounds %struct.item_operations, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %part_size47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %part_size47, align 4
  %call48 = tail call i32 %35(ptr noundef %add.ptr28, i32 noundef 1, i32 noundef %spec.select338) #8
  %36 = add i32 %call, %call48
  %sub49 = sub i32 %conv42, %36
  %add50 = add i32 %sub49, %total_node_size.0355
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %sub6)
  %cmp51.not = icmp sgt i32 %add50, %sub6
  br i1 %cmp51.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  %sub54 = add i32 %needed_nodes.0356, -1
  %arrayidx55 = getelementptr i16, ptr %snum012, i32 %sub54
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx55, align 2
  %inc = add i16 %38, 1
  store i16 %inc, ptr %arrayidx55, align 2
  br label %cleanup99

if.end57:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub49, i32 %sub6)
  %cmp58 = icmp sgt i32 %sub49, %sub6
  br i1 %cmp58, label %do.body61, label %if.end67

do.body61:                                        ; preds = %if.end57
  %vi_ih = getelementptr %struct.virtual_item, ptr %21, i32 %i.0354, i32 3
  %39 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vi_ih, align 4
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.i.i.i = icmp eq i16 %42, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %40, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direct_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %do.body61
  %43 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %u.i.i.i, align 1
  %45 = and i64 %44, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %45)
  %phi.cmp1.i.i = icmp eq i64 %45, 32
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then63_crit_edge, label %if.else.i.i.i.if.end71_crit_edge

if.else.i.i.i.if.end71_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.else.i.i.i.if.then63_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

is_direct_le_ih.exit:                             ; preds = %do.body61
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cond.i.i = icmp eq i32 %47, -1
  br i1 %cond.i.i, label %is_direct_le_ih.exit.if.then63_crit_edge, label %is_direct_le_ih.exit.if.end71_crit_edge

is_direct_le_ih.exit.if.end71_crit_edge:          ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

is_direct_le_ih.exit.if.then63_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

if.then63:                                        ; preds = %is_direct_le_ih.exit.if.then63_crit_edge, %if.else.i.i.i.if.then63_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_num_ver, ptr noundef nonnull @.str.44, i32 noundef 493, ptr noundef nonnull @__func__.get_num_ver, i32 noundef %sub49, i32 noundef %sub6) #11
  unreachable

if.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flow.addr.0353)
  %tobool68.not = icmp eq i32 %flow.addr.0353, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.if.end71_crit_edge

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %inc70 = add nsw i32 %needed_nodes.0356, 1
  %dec = add i32 %i.0354, -1
  br label %cleanup99

if.end71:                                         ; preds = %if.end67.if.end71_crit_edge, %is_direct_le_ih.exit.if.end71_crit_edge, %if.else.i.i.i.if.end71_crit_edge
  %sub73 = sub i32 %sub72, %total_node_size.0355
  %48 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr28, align 4
  %arrayidx75 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx75, align 4
  %check_left = getelementptr inbounds %struct.item_operations, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %check_left to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %check_left, align 4
  %call76 = tail call i32 %53(ptr noundef %add.ptr28, i32 noundef %sub73, i32 noundef %start_bytes.0357, i32 noundef %spec.select338) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call76)
  %cmp77 = icmp eq i32 %call76, -1
  %inc80 = add nsw i32 %needed_nodes.0356, 1
  %dec81 = add i32 %i.0354, -1
  %i.1 = select i1 %cmp77, i32 %dec81, i32 %i.0354
  %needed_nodes.1 = select i1 %cmp77, i32 %inc80, i32 %needed_nodes.0356
  br i1 %cmp77, label %if.end71.cleanup99_crit_edge, label %cleanup.cont

if.end71.cleanup99_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

cleanup.cont:                                     ; preds = %if.end71
  %add83 = add i32 %call76, %start_bytes.0357
  %conv84 = trunc i32 %call76 to i16
  %sub85 = add i32 %needed_nodes.1, -1
  %add86 = add nsw i32 %needed_nodes.1, 2
  %arrayidx87 = getelementptr i16, ptr %snum012, i32 %add86
  %54 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv84, ptr %arrayidx87, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %needed_nodes.1)
  %cmp88 = icmp sgt i32 %needed_nodes.1, 2
  br i1 %cmp88, label %if.then90, label %cleanup.cont.if.end91_crit_edge

cleanup.cont.if.end91_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then90:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %56, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.get_num_ver, ptr noundef nonnull @.str.46) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %cleanup.cont.if.end91_crit_edge
  %arrayidx93 = getelementptr i16, ptr %snum012, i32 %sub85
  %57 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx93, align 2
  %inc94 = add i16 %58, 1
  store i16 %inc94, ptr %arrayidx93, align 2
  %arrayidx96 = getelementptr [2 x i32], ptr %split_item_positions, i32 0, i32 %sub85
  %59 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.1, ptr %arrayidx96, align 4
  %inc97 = add nsw i32 %needed_nodes.1, 1
  %dec98 = add i32 %i.1, -1
  br label %cleanup99

cleanup99:                                        ; preds = %if.end91, %if.end71.cleanup99_crit_edge, %if.then69, %if.then53
  %flow.addr.2 = phi i32 [ %flow.addr.0353, %if.then53 ], [ 1, %if.end91 ], [ 1, %if.end71.cleanup99_crit_edge ], [ 0, %if.then69 ]
  %i.2 = phi i32 [ %i.0354, %if.then53 ], [ %dec98, %if.end91 ], [ %dec81, %if.end71.cleanup99_crit_edge ], [ %dec, %if.then69 ]
  %total_node_size.2 = phi i32 [ %add50, %if.then53 ], [ 0, %if.end91 ], [ 0, %if.end71.cleanup99_crit_edge ], [ 0, %if.then69 ]
  %needed_nodes.2 = phi i32 [ %needed_nodes.0356, %if.then53 ], [ %inc97, %if.end91 ], [ %inc80, %if.end71.cleanup99_crit_edge ], [ %inc70, %if.then69 ]
  %start_bytes.1 = phi i32 [ 0, %if.then53 ], [ %add83, %if.end91 ], [ %start_bytes.0357, %if.end71.cleanup99_crit_edge ], [ %start_bytes.0357, %if.then69 ]
  %inc103 = add i32 %i.2, 1
  %cmp26.not = icmp sgt i32 %inc103, %sub19
  br i1 %cmp26.not, label %cleanup99.for.end_crit_edge, label %cleanup99.for.body_crit_edge

cleanup99.for.body_crit_edge:                     ; preds = %cleanup99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup99.for.end_crit_edge:                      ; preds = %cleanup99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup99.for.end_crit_edge, %if.end16.for.end_crit_edge
  %needed_nodes.0.lcssa = phi i32 [ 1, %if.end16.for.end_crit_edge ], [ %needed_nodes.2, %cleanup99.for.end_crit_edge ]
  %60 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp106 = icmp sgt i16 %61, 0
  br i1 %cmp106, label %if.then108, label %for.end.if.end167_crit_edge

for.end.if.end167_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then108:                                       ; preds = %for.end
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %from)
  %cmp110 = icmp eq i32 %63, %from
  %cond118 = select i1 %cmp110, i32 %spec.select, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %63)
  %cmp119 = icmp eq i32 %sub19, %63
  %cond127 = select i1 %cmp119, i32 %cond25, i32 0
  %64 = ptrtoint ptr %split_item_positions to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %split_item_positions, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %63)
  %cmp130 = icmp eq i32 %65, %63
  br i1 %cmp130, label %cond.true132, label %if.then108.cond.end136_crit_edge

if.then108.cond.end136_crit_edge:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end136

cond.true132:                                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx7, align 2
  %conv134360 = zext i16 %67 to i32
  br label %cond.end136

cond.end136:                                      ; preds = %cond.true132, %if.then108.cond.end136_crit_edge
  %cond137 = phi i32 [ %conv134360, %cond.true132 ], [ 0, %if.then108.cond.end136_crit_edge ]
  %vn_vi138 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %68 = ptrtoint ptr %vn_vi138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vn_vi138, align 4
  %arrayidx139 = getelementptr %struct.virtual_item, ptr %69, i32 %63
  %70 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx139, align 4
  %arrayidx141 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx141, align 4
  %unit_num = getelementptr inbounds %struct.item_operations, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %unit_num to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %unit_num, align 4
  %call144 = tail call i32 %75(ptr noundef %arrayidx139) #8
  %76 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx8, align 2
  %conv146337 = zext i16 %77 to i32
  %78 = add i32 %cond118, %cond127
  %79 = add i32 %78, %cond137
  %80 = add i32 %79, %conv146337
  %sub150 = sub i32 %call144, %80
  %conv151 = trunc i32 %sub150 to i16
  store i16 %conv151, ptr %arrayidx8, align 2
  %81 = ptrtoint ptr %vn_vi138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vn_vi138, align 4
  %arrayidx154 = getelementptr %struct.virtual_item, ptr %82, i32 %63
  %83 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx154, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %84, label %if.then164 [
    i32 3, label %cond.end136.if.end167_crit_edge
    i32 1, label %cond.end136.if.end167_crit_edge367
  ]

cond.end136.if.end167_crit_edge367:               ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

cond.end136.if.end167_crit_edge:                  ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then164:                                       ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #10
  %tb_sb165 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %86 = ptrtoint ptr %tb_sb165 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tb_sb165, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %87, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.get_num_ver, ptr noundef nonnull @.str.48) #8
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %cond.end136.if.end167_crit_edge, %cond.end136.if.end167_crit_edge367, %for.end.if.end167_crit_edge
  %88 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp170 = icmp sgt i16 %89, 0
  br i1 %cmp170, label %if.then172, label %if.end167.cleanup227_crit_edge

if.end167.cleanup227_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup227

if.then172:                                       ; preds = %if.end167
  %90 = ptrtoint ptr %split_item_positions to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %split_item_positions, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %from)
  %cmp177 = icmp eq i32 %91, %from
  %cond185 = select i1 %cmp177, i32 %spec.select, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %91)
  %cmp186 = icmp eq i32 %sub19, %91
  %cond194 = select i1 %cmp186, i32 %cond25, i32 0
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp197 = icmp eq i32 %91, %93
  br i1 %cmp197, label %land.lhs.true199, label %if.then172.cond.end208_crit_edge

if.then172.cond.end208_crit_edge:                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end208

land.lhs.true199:                                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %95)
  %cmp202.not = icmp eq i16 %95, -1
  %narrow = select i1 %cmp202.not, i16 0, i16 %95
  %spec.select341361 = zext i16 %narrow to i32
  br label %cond.end208

cond.end208:                                      ; preds = %land.lhs.true199, %if.then172.cond.end208_crit_edge
  %cond209 = phi i32 [ 0, %if.then172.cond.end208_crit_edge ], [ %spec.select341361, %land.lhs.true199 ]
  %vn_vi210 = getelementptr inbounds %struct.virtual_node, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %vn_vi210 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vn_vi210, align 4
  %arrayidx211 = getelementptr %struct.virtual_item, ptr %97, i32 %91
  %98 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx211, align 4
  %arrayidx213 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx213, align 4
  %unit_num214 = getelementptr inbounds %struct.item_operations, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %unit_num214 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %unit_num214, align 4
  %call217 = tail call i32 %103(ptr noundef %arrayidx211) #8
  %104 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx7, align 2
  %conv219336 = zext i16 %105 to i32
  %106 = add i32 %cond185, %cond194
  %107 = add i32 %106, %cond209
  %108 = add i32 %107, %conv219336
  %sub223 = sub i32 %call217, %108
  %conv224 = trunc i32 %sub223 to i16
  store i16 %conv224, ptr %arrayidx7, align 2
  br label %cleanup227

cleanup227:                                       ; preds = %cond.end208, %if.end167.cleanup227_crit_edge, %if.end14, %if.then10.cleanup227_crit_edge
  %retval.0 = phi i32 [ %add15, %if.end14 ], [ 1, %if.then10.cleanup227_crit_edge ], [ %needed_nodes.0.lcssa, %cond.end208 ], [ %needed_nodes.0.lcssa, %if.end167.cleanup227_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %split_item_positions) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_left_neighbor_in_cache(ptr nocapture noundef readonly %tb, i32 noundef %h) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_sb, align 8
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %4 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.neg = xor i32 %h, -1
  %sub = add i32 %7, %add.neg
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.then17_crit_edge, label %lor.lhs.false

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @B_IS_IN_TREE(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false4.if.then17_crit_edge, label %lor.lhs.false9

lor.lhs.false4.if.then17_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool11.not, label %lor.lhs.false9.if.then17_crit_edge, label %lor.lhs.false12

lor.lhs.false9.if.then17_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i85 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i85)
  %tobool16.not = icmp eq i32 %and1.i.i85, 0
  br i1 %tobool16.not, label %lor.lhs.false12.if.then17_crit_edge, label %do.end

lor.lhs.false12.if.then17_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false12.if.then17_crit_edge, %lor.lhs.false9.if.then17_crit_edge, %lor.lhs.false4.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.is_left_neighbor_in_cache, ptr noundef nonnull @.str.49, i32 noundef 979, ptr noundef nonnull @__func__.is_left_neighbor_in_cache, ptr noundef %9, ptr noundef %19) #11
  unreachable

do.end:                                           ; preds = %lor.lhs.false12
  %cmp = icmp eq ptr %9, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %blk_nr_item, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %conv, %cond.false ]
  %b_data28 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %27 = ptrtoint ptr %b_data28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data28, align 4
  %add.ptr29 = getelementptr i8, ptr %28, i32 24
  %blk_nr_item33 = getelementptr inbounds %struct.block_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %blk_nr_item33 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %blk_nr_item33, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv34 = zext i16 %31 to i32
  %mul = shl nuw nsw i32 %conv34, 4
  %add.ptr35 = getelementptr i8, ptr %add.ptr29, i32 %mul
  %mul36 = shl i32 %cond, 3
  %add.ptr37 = getelementptr i8, ptr %add.ptr35, i32 %mul36
  %32 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr37, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %conv38 = zext i32 %34 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__find_get_block(ptr noundef %36, i64 noundef %conv38, i32 noundef %38) #8
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %cond.end.cleanup_crit_edge, label %do.body42

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body42:                                        ; preds = %cond.end
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %call.i, align 4
  %and1.i.i86 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i86)
  %tobool44.not = icmp eq i32 %and1.i.i86, 0
  br i1 %tobool44.not, label %do.body42.do.end50_crit_edge, label %land.lhs.true

do.body42.do.end50_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

land.lhs.true:                                    ; preds = %do.body42
  %call45 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true.do.end50_crit_edge

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.is_left_neighbor_in_cache, ptr noundef nonnull @.str.50, i32 noundef 995, ptr noundef nonnull @__func__.is_left_neighbor_in_cache, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #11
  unreachable

do.end50:                                         ; preds = %land.lhs.true.do.end50_crit_edge, %do.body42.do.end50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !185
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end50 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_far_parent(ptr nocapture noundef %tb, i32 noundef %h, ptr nocapture noundef writeonly %pfather, ptr nocapture noundef %pcom_father, i8 noundef zeroext %c_lr_par) unnamed_addr #0 align 64 {
entry:
  %s_path_to_neighbor_father = alloca %struct.treepath, align 4
  %s_lr_father_key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %s_path_to_neighbor_father) #8
  %0 = getelementptr inbounds i8, ptr %s_path_to_neighbor_father, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %s_path_to_neighbor_father to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %s_path_to_neighbor_father, align 4
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %3 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb_path, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %s_lr_father_key) #8
  %5 = call ptr @memset(ptr %s_lr_father_key, i32 255, i32 32)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  %sub = sub i32 %7, %h
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp1212.not = icmp eq i32 %sub, 2
  br i1 %cmp1212.not, label %for.cond.preheader.if.then44_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then44_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %path_elements = getelementptr inbounds %struct.treepath, ptr %4, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %c_lr_par)
  %cmp31 = icmp eq i8 %c_lr_par, 114
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_far_parent, ptr noundef nonnull @.str.25, i32 noundef 1045, ptr noundef nonnull @__func__.get_far_parent) #11
  unreachable

for.cond:                                         ; preds = %if.end29
  %cmp1 = icmp ugt i32 %counter.0213, 3
  br i1 %cmp1, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %first_last_position.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %11, %for.cond.for.body_crit_edge ]
  %counter.0213 = phi i32 [ %sub, %for.body.lr.ph ], [ %sub2, %for.cond.for.body_crit_edge ]
  %sub2 = add nsw i32 %counter.0213, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @B_IS_IN_TREE(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup135_crit_edge, label %if.end4

for.body.cleanup135_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end4:                                          ; preds = %for.body
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub2, i32 1
  %10 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pe_position, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %blk_nr_item, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp9 = icmp sgt i32 %11, %conv
  br i1 %cmp9, label %if.end4.cleanup135_crit_edge, label %if.end12

if.end4.cleanup135_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end12:                                         ; preds = %if.end4
  %add.ptr14 = getelementptr i8, ptr %13, i32 24
  %mul = shl nuw nsw i32 %conv, 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr14, i32 %mul
  %mul19 = shl i32 %11, 3
  %add.ptr20 = getelementptr i8, ptr %add.ptr18, i32 %mul19
  %17 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr20, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv21 = zext i32 %19 to i64
  %add.ptr24 = getelementptr %struct.path_element, ptr %path_elements, i32 %counter.0213
  %20 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr24, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv21)
  %cmp26.not = icmp eq i64 %23, %conv21
  br i1 %cmp26.not, label %if.end29, label %if.end12.cleanup135_crit_edge

if.end12.cleanup135_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end29:                                         ; preds = %if.end12
  %spec.select = select i1 %cmp31, i32 %conv, i32 %first_last_position.0214
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select)
  %cmp38.not = icmp eq i32 %11, %spec.select
  br i1 %cmp38.not, label %for.cond, label %for.end.thread

for.end.thread:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %pcom_father to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %9, ptr %pcom_father, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !184
  br label %do.body58

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub2)
  %phi.cmp = icmp eq i32 %sub2, 2
  br i1 %phi.cmp, label %for.end.if.then44_crit_edge, label %for.end.do.body58_crit_edge

for.end.do.body58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

for.end.if.then44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %for.end.if.then44_crit_edge, %for.cond.preheader.if.then44_crit_edge
  %26 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb_path, align 8
  %add.ptr48 = getelementptr %struct.treepath, ptr %27, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr48, align 4
  %b_blocknr50 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %b_blocknr50 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr50, align 8
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %32 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_rs, align 4
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %s_root_block, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %conv52 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv52)
  %cmp53 = icmp eq i64 %31, %conv52
  br i1 %cmp53, label %if.then55, label %if.then44.cleanup135_crit_edge

if.then44.cleanup135_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.then55:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %pcom_father to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pcom_father, align 4
  %42 = ptrtoint ptr %pfather to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pfather, align 4
  br label %cleanup135

do.body58:                                        ; preds = %for.end.do.body58_crit_edge, %for.end.thread
  %43 = ptrtoint ptr %pcom_father to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcom_father, align 4
  %b_data59 = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data59, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp61 = icmp ult i16 %49, 2
  br i1 %cmp61, label %if.then63, label %do.end66

if.then63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_far_parent, ptr noundef nonnull @.str.26, i32 noundef 1103, ptr noundef nonnull @__func__.get_far_parent, ptr noundef %44, ptr noundef %44) #11
  unreachable

do.end66:                                         ; preds = %do.body58
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %44, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool68.not = icmp eq i32 %52, 0
  br i1 %tobool68.not, label %do.end66.if.end80_crit_edge, label %if.then69

do.end66.if.end80_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then69:                                        ; preds = %do.end66
  %tb_sb70 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %53 = ptrtoint ptr %tb_sb70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tb_sb70, align 8
  %call71 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %54) #8
  %55 = ptrtoint ptr %pcom_father to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcom_father, align 4
  tail call void @__wait_on_buffer(ptr noundef %56) #8
  %57 = ptrtoint ptr %tb_sb70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tb_sb70, align 8
  tail call void @reiserfs_write_lock_nested(ptr noundef %58, i32 noundef %call71) #8
  %59 = ptrtoint ptr %tb_sb70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tb_sb70, align 8
  %s_fs_info.i194 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i194 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i194, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %62, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #8
  %63 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %s_generation_counter, align 4
  %fs_gen = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %65 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp76.not = icmp eq i32 %64, %66
  br i1 %cmp76.not, label %if.then69.if.end80_crit_edge, label %if.then78

if.then69.if.end80_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then78:                                        ; preds = %if.then69
  %67 = ptrtoint ptr %pcom_father to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcom_father, align 4
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %if.then78.cleanup135_crit_edge, label %if.then.i

if.then78.cleanup135_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.then.i:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %68) #8
  br label %cleanup135

if.end80:                                         ; preds = %if.then69.if.end80_crit_edge, %do.end66.if.end80_crit_edge
  %69 = ptrtoint ptr %pcom_father to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcom_father, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %c_lr_par)
  %cmp82 = icmp eq i8 %c_lr_par, 108
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %sub84 = add i32 %11, -1
  %sub85 = add i32 %h, -1
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %sub85
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub84, ptr %arrayidx, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %72 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i, i32 %sub84
  call void @le_key2cpu_key(ptr noundef nonnull %s_lr_father_key, ptr noundef %arrayidx.i) #8
  %k_type.i.i = getelementptr inbounds %struct.in_core_key, ptr %s_lr_father_key, i32 0, i32 3
  %74 = ptrtoint ptr %k_type.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %k_type.i.i, align 8
  %idxprom.i = zext i8 %75 to i32
  %arrayidx.i195 = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %idxprom.i
  %76 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i195, align 4
  %decrement_key.i = getelementptr inbounds %struct.item_operations, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %decrement_key.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %decrement_key.i, align 4
  call void %79(ptr noundef nonnull %s_lr_father_key) #8
  br label %if.end93

cond.false:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %sub86 = add i32 %h, -1
  %arrayidx87 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %sub86
  %80 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %11, ptr %arrayidx87, align 4
  %b_data.i.i196 = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %81 = ptrtoint ptr %b_data.i.i196 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data.i.i196, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %82, i32 24
  %arrayidx.i198 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i197, i32 %11
  call void @le_key2cpu_key(ptr noundef nonnull %s_lr_father_key, ptr noundef %arrayidx.i198) #8
  br label %if.end93

if.end93:                                         ; preds = %cond.false, %cond.true
  %tb_sb94 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %83 = ptrtoint ptr %tb_sb94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tb_sb94, align 8
  %add = add i32 %h, 1
  %call95 = call i32 @search_by_key(ptr noundef %84, ptr noundef nonnull %s_lr_father_key, ptr noundef nonnull %s_path_to_neighbor_father, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call95)
  %cmp96 = icmp eq i32 %call95, -2
  br i1 %cmp96, label %if.end93.cleanup135_crit_edge, label %if.end99

if.end93.cleanup135_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.end99:                                         ; preds = %if.end93
  %85 = ptrtoint ptr %tb_sb94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tb_sb94, align 8
  %s_fs_info.i199 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 33
  %87 = ptrtoint ptr %s_fs_info.i199 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i199, align 16
  %s_generation_counter102 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %88, i32 0, i32 14
  %call.i.i193 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter102, i32 noundef 4) #8
  %89 = ptrtoint ptr %s_generation_counter102 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %s_generation_counter102, align 4
  %fs_gen104 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %91 = ptrtoint ptr %fs_gen104 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fs_gen104, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp105.not = icmp eq i32 %90, %92
  br i1 %cmp105.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end99
  call void @pathrelse(ptr noundef nonnull %s_path_to_neighbor_father) #8
  %93 = ptrtoint ptr %pcom_father to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pcom_father, align 4
  %tobool.not.i200 = icmp eq ptr %94, null
  br i1 %tobool.not.i200, label %if.then107.cleanup135_crit_edge, label %if.then.i201

if.then107.cleanup135_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup135

if.then.i201:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %94) #8
  br label %cleanup135

if.end108:                                        ; preds = %if.end99
  %path_elements109 = getelementptr inbounds %struct.treepath, ptr %s_path_to_neighbor_father, i32 0, i32 2
  %95 = ptrtoint ptr %s_path_to_neighbor_father to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_path_to_neighbor_father, align 4
  %add.ptr112 = getelementptr %struct.path_element, ptr %path_elements109, i32 %96
  %97 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr112, align 4
  %99 = ptrtoint ptr %pfather to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %pfather, align 4
  %b_data115 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 5
  %100 = ptrtoint ptr %b_data115 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %b_data115, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %101, align 2
  %104 = call i16 @llvm.bswap.i16(i16 %103)
  %conv117 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv117)
  %cmp119.not = icmp eq i32 %add, %conv117
  br i1 %cmp119.not, label %do.body125, label %if.then121

if.then121:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_far_parent, ptr noundef nonnull @.str.27, i32 noundef 1153, ptr noundef nonnull @__func__.get_far_parent, ptr noundef %98, ptr noundef %98) #11
  unreachable

do.body125:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp127 = icmp slt i32 %96, 2
  br i1 %cmp127, label %if.then129, label %do.end132

if.then129:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.get_far_parent, ptr noundef nonnull @.str.28, i32 noundef 1155, ptr noundef nonnull @__func__.get_far_parent) #11
  unreachable

do.end132:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %dec134 = add nsw i32 %96, -1
  %105 = ptrtoint ptr %s_path_to_neighbor_father to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %dec134, ptr %s_path_to_neighbor_father, align 4
  call void @pathrelse(ptr noundef nonnull %s_path_to_neighbor_father) #8
  br label %cleanup135

cleanup135:                                       ; preds = %do.end132, %if.then.i201, %if.then107.cleanup135_crit_edge, %if.end93.cleanup135_crit_edge, %if.then.i, %if.then78.cleanup135_crit_edge, %if.then55, %if.then44.cleanup135_crit_edge, %if.end12.cleanup135_crit_edge, %if.end4.cleanup135_crit_edge, %for.body.cleanup135_crit_edge
  %retval.1 = phi i32 [ 0, %if.then55 ], [ 0, %do.end132 ], [ -1, %if.then44.cleanup135_crit_edge ], [ -2, %if.end93.cleanup135_crit_edge ], [ -1, %if.then78.cleanup135_crit_edge ], [ -1, %if.then.i ], [ -1, %if.then107.cleanup135_crit_edge ], [ -1, %if.then.i201 ], [ -1, %for.body.cleanup135_crit_edge ], [ -1, %if.end4.cleanup135_crit_edge ], [ -1, %if.end12.cleanup135_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %s_lr_father_key) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %s_path_to_neighbor_father) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @le_key2cpu_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_le_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_allocate_blocknrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_buffer_sanity_check(ptr noundef %sb, ptr noundef %bh, ptr noundef %descr, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #8
  %0 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.76, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.78, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %bh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.80, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end9:                                          ; preds = %if.end5
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %4 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_bdev, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %cmp10.not = icmp eq ptr %5, %7
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.82, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end12:                                         ; preds = %if.end9
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.not = icmp eq i32 %9, %11
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.84, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end15:                                         ; preds = %if.end12
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_blocknr, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_rs, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %17, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %conv = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv)
  %cmp17 = icmp ugt i64 %13, %conv
  br i1 %cmp17, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.tb_buffer_sanity_check, ptr noundef nonnull @.str.86, ptr noundef %descr, i32 noundef %level, ptr noundef nonnull %bh) #11
  unreachable

if.end21:                                         ; preds = %if.end15.if.end21_crit_edge, %entry.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !58, !59, !61, !63, !64, !66, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !117, !119, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/fix_node.c", i32 2587, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/fix_node.c", i32 2588, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/reiserfs/fix_node.c", i32 2593, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/fix_node.c", i32 2602, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/fix_node.c", i32 2612, i32 4}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/fix_node.c", i32 2620, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/fix_node.c", i32 2672, i32 4}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/reiserfs/fix_node.c", i32 2686, i32 5}
!22 = !{ptr @__func__.get_direct_parent, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/fix_node.c", i32 2100, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__func__.check_balance, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/reiserfs/fix_node.c", i32 2078, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/fix_node.c", i32 1379, i32 4}
!30 = !{ptr @__func__.ip_check_balance, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/fix_node.c", i32 1391, i32 4}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/reiserfs/fix_node.c", i32 1458, i32 2}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/reiserfs/fix_node.c", i32 1462, i32 2}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/fix_node.c", i32 1638, i32 4}
!41 = !{ptr @__func__.get_parents, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/reiserfs/fix_node.c", i32 1227, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/fix_node.c", i32 1262, i32 2}
!46 = !{ptr @__func__.get_far_parent, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/fix_node.c", i32 1044, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/reiserfs/fix_node.c", i32 1101, i32 2}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/reiserfs/fix_node.c", i32 1152, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/reiserfs/fix_node.c", i32 1154, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/reiserfs/fix_node.c", i32 117, i32 4}
!57 = !{ptr @__func__.create_virtual_node, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/fix_node.c", i32 135, i32 3}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/reiserfs/fix_node.c", i32 178, i32 5}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__func__.old_item_num, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/reiserfs/fix_node.c", i32 38, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/fix_node.c", i32 44, i32 2}
!69 = !{ptr @__func__.check_left, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/fix_node.c", i32 201, i32 2}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/reiserfs/fix_node.c", i32 218, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/fix_node.c", i32 227, i32 3}
!76 = !{ptr @__func__.check_right, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/reiserfs/fix_node.c", i32 287, i32 2}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/reiserfs/fix_node.c", i32 304, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/reiserfs/fix_node.c", i32 313, i32 3}
!83 = !{ptr @__func__.get_num_ver, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/reiserfs/fix_node.c", i32 417, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/fix_node.c", i32 461, i32 3}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/reiserfs/fix_node.c", i32 490, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/reiserfs/fix_node.c", i32 532, i32 4}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/reiserfs/fix_node.c", i32 571, i32 4}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__func__.is_left_neighbor_in_cache, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/reiserfs/fix_node.c", i32 973, i32 2}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/reiserfs/fix_node.c", i32 993, i32 3}
!101 = !{ptr @__func__.dc_check_balance, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/reiserfs/fix_node.c", i32 2033, i32 2}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__func__.dc_check_balance_internal, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/reiserfs/fix_node.c", i32 1892, i32 2}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__func__.dc_check_balance_leaf, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/reiserfs/fix_node.c", i32 1956, i32 3}
!109 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/reiserfs/fix_node.c", i32 1990, i32 4}
!112 = !{ptr @__func__.are_leaves_removable, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/reiserfs/fix_node.c", i32 716, i32 3}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/reiserfs/fix_node.c", i32 742, i32 5}
!117 = !{ptr @__func__.get_neighbors, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/reiserfs/fix_node.c", i32 2167, i32 3}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/reiserfs/fix_node.c", i32 2187, i32 3}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/reiserfs/fix_node.c", i32 2191, i32 3}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/reiserfs/fix_node.c", i32 2192, i32 3}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/reiserfs/fix_node.c", i32 2207, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/reiserfs/fix_node.c", i32 2229, i32 3}
!130 = !{ptr @__func__.get_empty_nodes, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/reiserfs/fix_node.c", i32 887, i32 3}
!132 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/reiserfs/fix_node.c", i32 891, i32 3}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/reiserfs/fix_node.c", i32 898, i32 3}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/reiserfs/fix_node.c", i32 2389, i32 13}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/reiserfs/fix_node.c", i32 2412, i32 15}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/reiserfs/fix_node.c", i32 2421, i32 15}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/reiserfs/fix_node.c", i32 2430, i32 15}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/reiserfs/fix_node.c", i32 2443, i32 15}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/reiserfs/fix_node.c", i32 2452, i32 15}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/reiserfs/fix_node.c", i32 2461, i32 15}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/reiserfs/fix_node.c", i32 2491, i32 5}
!153 = !{ptr @__func__.wait_tb_buffers_until_unlocked, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/reiserfs/fix_node.c", i32 2320, i32 4}
!157 = !{ptr @__func__.tb_buffer_sanity_check, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/reiserfs/fix_node.c", i32 2325, i32 4}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/reiserfs/fix_node.c", i32 2330, i32 4}
!164 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/reiserfs/fix_node.c", i32 2335, i32 4}
!167 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/reiserfs/fix_node.c", i32 2340, i32 4}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/reiserfs/fix_node.c", i32 2345, i32 4}
!173 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
!184 = !{i64 2148277175, i64 2148277201, i64 2148277230, i64 2148277264, i64 2148277295, i64 2148277318}
!185 = !{i64 2154124240}
!186 = !{i64 2148279640, i64 2148279666, i64 2148279695, i64 2148279729, i64 2148279760, i64 2148279783}
