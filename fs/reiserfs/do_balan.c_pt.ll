; ModuleID = '/llk/IR_all_yes/fs/reiserfs/do_balan.c_pt.bc'
source_filename = "../fs/reiserfs/do_balan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tree_balance = type { i32, i32, ptr, ptr, ptr, [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], [2 x i32], i32, i32, [7 x ptr], ptr, i32, ptr, i32, %struct.in_core_key }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.buffer_info = type { ptr, ptr, ptr, i32 }
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
%struct.disk_child = type { i32, i16, i16 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%union.anon.71 = type { i16 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.72, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.72 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.offset_v1 = type { i32, i32 }
%struct.item_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.make_empty_node = private unnamed_addr constant [16 x i8] c"make_empty_node\00", align 1
@.str.1 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"(!(bi->bi_bh == ((void *)0))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12295: pointer to the buffer is NULL\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-12300\00", [23 x i8] zeroinitializer }, align 32
@__func__.get_FEB = private unnamed_addr constant [8 x i8] c"get_FEB\00", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FEB list is empty\00", [46 x i8] zeroinitializer }, align 32
@__func__.replace_key = private unnamed_addr constant [12 x i8] c"replace_key\00", align 1
@.str.4 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"(!(dest == ((void *)0) || src == ((void *)0))) at fs/reiserfs/do_balan.c:%i:%s: vs-12305: source or destination buffer is 0 (src=%p, dest=%p)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [345 x i8], [71 x i8] } { [345 x i8] c"(!(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_level))))) > 1 && (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_level))))) <= 5))) at fs/reiserfs/do_balan.c:%i:%s: vs-12310: invalid level (%z) for destination buffer. dest must be leaf\0A\00", [71 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"(!(n_dest < 0 || n_src < 0)) at fs/reiserfs/do_balan.c:%i:%s: vs-12315: src(%d) or dest(%d) key number < 0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [344 x i8], [72 x i8] } { [344 x i8] c"(!(n_dest >= (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_nr_item))))) || n_src >= (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((src)->b_data)))->blk_nr_item))))))) at fs/reiserfs/do_balan.c:%i:%s: vs-12320: src(%d(%d)) or dest(%d(%d)) key number is too big\0A\00", [72 x i8] zeroinitializer }, align 32
@__func__.get_left_neighbor_position = private unnamed_addr constant [27 x i8] c"get_left_neighbor_position\00", align 1
@.str.8 = internal constant { [216 x i8], [40 x i8] } { [216 x i8] c"(!((((tb->tb_path)->path_elements + (tb->tb_path->path_length - ((h) + 1)))->pe_buffer) == ((void *)0) || tb->FL[h] == ((void *)0))) at fs/reiserfs/do_balan.c:%i:%s: vs-12325: FL[%d](%p) or F[%d](%p) does not exist\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.get_right_neighbor_position = private unnamed_addr constant [28 x i8] c"get_right_neighbor_position\00", align 1
@.str.9 = internal constant { [216 x i8], [40 x i8] } { [216 x i8] c"(!((((tb->tb_path)->path_elements + (tb->tb_path->path_length - ((h) + 1)))->pe_buffer) == ((void *)0) || tb->FR[h] == ((void *)0))) at fs/reiserfs/do_balan.c:%i:%s: vs-12330: F[%d](%p) or FR[%d](%p) does not exist\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-6000\00", [23 x i8] zeroinitializer }, align 32
@__func__.do_balance = private unnamed_addr constant [11 x i8] c"do_balance\00", align 1
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs generation has changed\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12350\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"insert_size == 0, mode == %c\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-12320\00", [17 x i8] zeroinitializer }, align 32
@__func__.store_thrown = private unnamed_addr constant [13 x i8] c"store_thrown\00", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"called with dirty buffer\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-12321\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too many thrown buffers\00", [40 x i8] zeroinitializer }, align 32
@__func__.do_balance_starts = private unnamed_addr constant [18 x i8] c"do_balance_starts\00", align 1
@.str.18 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"(!(check_before_balancing(tb))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12340: locked buffers in TB\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-12335\00", [23 x i8] zeroinitializer }, align 32
@__func__.check_before_balancing = private unnamed_addr constant [23 x i8] c"check_before_balancing\00", align 1
@.str.20 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"suspect that schedule occurred based on cur_tb not being null at this point in code. do_balance cannot properly handle concurrent tree accesses on a same mount point.\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L[0]\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FL[0]\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CFL[0]\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"R[0]\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FR[0]\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CFR[0]\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S[0]\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-12339\00", [23 x i8] zeroinitializer }, align 32
@__func__.locked_or_not_in_tree = private unnamed_addr constant [22 x i8] c"locked_or_not_in_tree\00", align 1
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s (%b)\00", [24 x i8] zeroinitializer }, align 32
@__func__.balance_leaf = private unnamed_addr constant [13 x i8] c"balance_leaf\00", align 1
@.str.30 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(tb->blknum[0] > 3)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12180: blknum can not be %d. It must be <= 3\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(tb->blknum[0] < 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12185: blknum can not be %d. It must be >= 0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"(!(!tb->lnum[0] || !tb->rnum[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12190: lnum and rnum must not be zero\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-12195\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CFR not initialized\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12290\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12290\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"insert_size is still not 0 (%d)\00", [32 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_when_delete = private unnamed_addr constant [25 x i8] c"balance_leaf_when_delete\00", align 1
@.str.38 = internal constant { [206 x i8], [50 x i8] } { [206 x i8] c"(!(tb->FR[0] && (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->FR[0])->b_data)))->blk_level))))) != 1 + 1)) at fs/reiserfs/do_balan.c:%i:%s: vs- 12000: level: wrong FR %z\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"(!(tb->blknum[0] > 1)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12005: tb->blknum == %d, can not be > 1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [176 x i8], [48 x i8] } { [176 x i8] c"(!(!tb->blknum[0] && !(((tb->tb_path)->path_elements + (tb->tb_path->path_length - ((0) + 1)))->pe_buffer))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12010: tree can not be empty\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(tb->rnum[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12065: bad rnum parameter must be 0 (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_when_delete_del = private unnamed_addr constant [29 x i8] c"balance_leaf_when_delete_del\00", align 1
@.str.42 = internal constant { [221 x i8], [35 x i8] } { [221 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) + (sizeof(struct item_head)) != -tb->insert_size[0])) at fs/reiserfs/do_balan.c:%i:%s: vs-12013: mode Delete, insert size %d, ih to be deleted %h\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"(!(!item_pos && !tb->CFL[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12020: tb->CFL[0]==%p, tb->L[0]==%p\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_when_delete_cut = private unnamed_addr constant [29 x i8] c"balance_leaf_when_delete_cut\00", align 1
@.str.44 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"(!(!item_pos && !pos_in_item && !tb->CFL[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12030: can not change delimiting key. CFL[0]=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"(!(!(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12035: cut must leave non-zero dynamic length of item\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_when_delete_left = private unnamed_addr constant [30 x i8] c"balance_leaf_when_delete_left\00", align 1
@.str.46 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"(!(tb->rnum[0] != 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12045: rnum must be 0 (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [190 x i8], [34 x i8] } { [190 x i8] c"(!((tb->lnum[0] + tb->rnum[0] < n) || (tb->lnum[0] + tb->rnum[0] > n + 1))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12050: rnum(%d) and lnum(%d) and item number(%d) in S[0] are not consistent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [189 x i8], [35 x i8] } { [189 x i8] c"(!((tb->lnum[0] + tb->rnum[0] == n) && (tb->lbytes != -1 || tb->rbytes != -1))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12055: bad rbytes (%d)/lbytes (%d) parameters when items are not split\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [187 x i8], [37 x i8] } { [187 x i8] c"(!((tb->lnum[0] + tb->rnum[0] == n + 1) && (tb->lbytes < 1 || tb->rbytes != -1))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12060: bad rbytes (%d)/lbytes (%d) parameters when items are split\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_insert_left = private unnamed_addr constant [25 x i8] c"balance_leaf_insert_left\00", align 1
@.str.50 = internal constant { [179 x i8], [45 x i8] } { [179 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12080: there is nothing to insert into L[0]: ih_item_len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [179 x i8], [45 x i8] } { [179 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->ih_item_len))) <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12085: there is nothing to insert into S[0]: ih_item_len=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_paste_left_shift = private unnamed_addr constant [30 x i8] c"balance_leaf_paste_left_shift\00", align 1
@.str.52 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"(!(tb->lbytes <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12095: there is nothing to shift to L[0]. lbytes=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [224 x i8], [32 x i8] } { [224 x i8] c"(!(tb->pos_in_item != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((item_head(tbS0, tb->item_pos))->ih_item_len))))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12100: incorrect position to paste: item_len=%d, pos_in_item=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"(!(tb->insert_size[0] <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12105: there is nothing to paste into L[0]. insert_size=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((tbS0_0_ih)->ih_item_len))))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12106: item length must be 0\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [164 x i8], [60 x i8] } { [164 x i8] c"(!(comp_short_le_keys(&tbS0_0_ih->ih_key, leaf_key(tb->L[0], n + tb->item_pos - ret)))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12107: items must be of the same file\0A\00", [60 x i8] zeroinitializer }, align 32
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@.str.57 = internal constant { [546 x i8], [158 x i8] } { [546 x i8] c"(!(comp_short_le_keys(&tbS0_0_ih->ih_key, leaf_key(tb->L[0], (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->L[0])->b_data)))->blk_nr_item))))) - 1)) || !item_ops[le_key_k_type (le_key_version (leaf_key(tbS0, 0)), leaf_key(tbS0, 0))]->is_left_mergeable (leaf_key(tbS0, 0), tbS0->b_size) || !item_ops[le_key_k_type (le_key_version (left_delim_key), left_delim_key)]->is_left_mergeable (left_delim_key, tbS0->b_size))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12120: item must be merge-able with left neighboring item\0A\00", [158 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(tb->pos_in_item <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12125: no place for paste. pos_in_item=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_paste_left_shift_dirent = private unnamed_addr constant [37 x i8] c"balance_leaf_paste_left_shift_dirent\00", align 1
@.str.59 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(tb->zeroes_num)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12090: invalid parameter in case of a directory\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_paste_right_shift = private unnamed_addr constant [31 x i8] c"balance_leaf_paste_right_shift\00", align 1
@.str.60 = internal constant { [225 x i8], [63 x i8] } { [225 x i8] c"(!(tb->pos_in_item != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((item_head(tbS0, tb->item_pos))->ih_item_len))))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12155: invalid position to paste. ih_item_len=%d, pos_in_item=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_paste_right_shift_dirent = private unnamed_addr constant [38 x i8] c"balance_leaf_paste_right_shift_dirent\00", align 1
@.str.61 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(tb->zeroes_num)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12145: invalid parameter in case of a directory\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [168 x i8], [56 x i8] } { [168 x i8] c"(!(tb->rbytes - 1 >= entry_count || !tb->insert_size[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12150: no enough of entries to shift to R[0]: rbytes=%d, entry_count=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_paste_right_whole = private unnamed_addr constant [31 x i8] c"balance_leaf_paste_right_whole\00", align 1
@.str.63 = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"(!(tb->item_pos - n + tb->rnum[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12165: directory item must be first item of node when pasting is in 0th position\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_new_nodes = private unnamed_addr constant [23 x i8] c"balance_leaf_new_nodes\00", align 1
@.str.64 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"(!(!tb->snum[i])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12200: snum[%d] == %d. Must be > 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"(!(!buffer_journaled(tb->S_new[i]) || buffer_journal_dirty(tb->S_new[i]) || buffer_dirty(tb->S_new[i]))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12247: S_new[%d] : (%b)\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_new_nodes_paste_shift = private unnamed_addr constant [35 x i8] c"balance_leaf_new_nodes_paste_shift\00", align 1
@.str.66 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"(!(ih)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12210: ih must be 0\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [229 x i8], [59 x i8] } { [229 x i8] c"(!(tb->pos_in_item != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((item_head(tbS0, tb->item_pos))->ih_item_len))) || tb->insert_size[0] <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12225: item too short or insert_size <= 0\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_new_nodes_paste_dirent = private unnamed_addr constant [36 x i8] c"balance_leaf_new_nodes_paste_dirent\00", align 1
@.str.68 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"(!(!tb->insert_size[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12215: insert_size is already 0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"(!(tb->sbytes[i] - 1 >= entry_count)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12220: there are no so much entries (%d), only %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12235\00", [22 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_new_nodes_paste_whole = private unnamed_addr constant [35 x i8] c"balance_leaf_new_nodes_paste_whole\00", align 1
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pos_in_item must be equal to ih_item_len\00", [55 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"(!(leaf_mi)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12240: unexpected value returned by leaf_move_items (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_finish_node_paste = private unnamed_addr constant [31 x i8] c"balance_leaf_finish_node_paste\00", align 1
@.str.73 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"(!(tb->insert_size[0] <= 0)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12275: insert size must not be %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12285\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12285\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"insert_size must be 0 (%d)\00", [37 x i8] zeroinitializer }, align 32
@__func__.balance_leaf_finish_node_paste_dirent = private unnamed_addr constant [38 x i8] c"balance_leaf_finish_node_paste_dirent\00", align 1
@.str.77 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"(!(!tb->insert_size[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12260: insert_size is 0 already\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"(!(!tb->CFL[0] || !tb->L[0])) at fs/reiserfs/do_balan.c:%i:%s: PAP-12270: CFL[0]/L[0] must  be specified\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12221\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12355\00", [22 x i8] zeroinitializer }, align 32
@__func__.check_after_balance_leaf = private unnamed_addr constant [25 x i8] c"check_after_balance_leaf\00", align 1
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"shift to left was incorrect\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12222\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12360\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"shift to right was incorrect\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12223\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-12363\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"B_FREE_SPACE (PATH_H_PBUFFER(tb->tb_path,0)) = %d; MAX_CHILD_SIZE (%d) - dc_size( %y, %d ) [%d] = %d\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12365\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"S is incorrect\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BAD BUFFER ON PATH\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BAD L\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BAD R\00", [26 x i8] zeroinitializer }, align 32
@__func__.check_internal_node = private unnamed_addr constant [20 x i8] c"check_internal_node\00", align 1
@.str.93 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(!(!bh)) at fs/reiserfs/do_balan.c:%i:%s: PAP-12336: bh == 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"(!(!buffer_dirty(bh) && !(buffer_journaled(bh) || buffer_journal_dirty(bh)))) at fs/reiserfs/do_balan.c:%i:%s: PAP-12337: buffer (%b) must be dirty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAP-12338\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid child pointer %y in %b\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-12322\00", [17 x i8] zeroinitializer }, align 32
@__func__.free_thrown = private unnamed_addr constant [12 x i8] c"free_thrown\00", align 1
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"called with dirty buffer %d\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 105, i64 112]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 105, i64 112]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 105, i64 112]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1472, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1493, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1556, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1559, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1562, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1564, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1583, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1597, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1868, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1873, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1510, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1518, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1800, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1652, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1664, i32 49 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1665, i32 50 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1666, i32 51 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1670, i32 49 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1671, i32 50 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1672, i32 51 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1676, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1641, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1418, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1420, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1430, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1439, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1456, i32 16 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1457, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 245, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 247, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 249, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 281, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 86, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 103, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 130, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 140, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 191, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 206, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 211, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 216, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 307, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 333, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 427, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 430, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 454, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 475, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 477, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 504, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 517, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 358, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 784, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 715, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 723, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 866, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1231, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1252, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1078, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1089, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1025, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1027, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1157, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1165, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1328, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1343, i32 16 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1344, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1286, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1300, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1689, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1690, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1699, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1700, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1714, i32 16 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1715, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1726, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1744, i32 9 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1746, i32 45 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1748, i32 45 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1616, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1621, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1629, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [26 x i8] c"../fs/reiserfs/do_balan.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1530, i32 5 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 345, i32 416, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 206, i32 256, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 221, i32 256, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 189, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 187, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 546, i32 704, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 225, i32 288, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 229, i32 288, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_balance_mark_leaf_dirty(ptr nocapture noundef readonly %tb, ptr noundef %bh, i32 %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %transaction_handle = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %0 = ptrtoint ptr %transaction_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction_handle, align 4
  %call = tail call i32 @journal_mark_dirty(ptr noundef %1, ptr noundef %bh) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @make_empty_node(ptr nocapture noundef readonly %bi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.make_empty_node, ptr noundef nonnull @.str.1, i32 noundef 1472, ptr noundef nonnull @__func__.make_empty_node) #10
  unreachable

do.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %blk_nr_item, align 2
  %5 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_size, align 8
  %9 = trunc i32 %8 to i16
  %conv = add i16 %9, -24
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %blk_free_space, align 2
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %12 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_parent, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end.if.end13_crit_edge, label %if.then3

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %b_data5 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data5, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 24
  %blk_nr_item8 = getelementptr inbounds %struct.block_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %blk_nr_item8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blk_nr_item8, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv9 = zext i16 %18 to i32
  %mul = shl nuw nsw i32 %conv9, 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %mul
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  %19 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_position, align 4
  %mul11 = shl i32 %20, 3
  %add.ptr12 = getelementptr i8, ptr %add.ptr10, i32 %mul11
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr12, i32 0, i32 1
  %21 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %dc_size, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %do.end.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_FEB(ptr noundef %tb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %for.inc, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.not.1 = icmp eq ptr %3, null
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.end4_crit_edge

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.not.2 = icmp eq ptr %5, null
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.end4_crit_edge

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.not.3 = icmp eq ptr %7, null
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.end4_crit_edge

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %cmp1.not.4 = icmp eq ptr %9, null
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.if.end4_crit_edge

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %cmp1.not.5 = icmp eq ptr %11, null
  br i1 %cmp1.not.5, label %if.then3, label %for.inc.4.if.end4_crit_edge

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %12 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.get_FEB, ptr noundef nonnull @.str.3) #10
  unreachable

if.end4:                                          ; preds = %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.042.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ]
  %arrayidx6 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 %i.042.lcssa
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.then.i34, label %make_empty_node.exit

if.then.i34:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.make_empty_node, ptr noundef nonnull @.str.1, i32 noundef 1472, ptr noundef nonnull @__func__.make_empty_node) #10
  unreachable

make_empty_node.exit:                             ; preds = %if.end4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %blk_nr_item.i, align 2
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 4
  %19 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_size.i, align 8
  %21 = trunc i32 %20 to i16
  %conv.i = add i16 %21, -24
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %blk_free_space.i, align 2
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %make_empty_node.exit.set_buffer_uptodate.exit_crit_edge

make_empty_node.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %make_empty_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %make_empty_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %25) #7
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %make_empty_node.exit.set_buffer_uptodate.exit_crit_edge
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx6, align 4
  %arrayidx11 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 12, i32 %i.042.lcssa
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx11, align 4
  store ptr null, ptr %arrayidx6, align 4
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_invalidate_buffer(ptr nocapture noundef %tb, ptr noundef %bh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %blk_nr_item, align 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #7
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %7 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb_sb.i, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.store_thrown, ptr noundef nonnull @.str.15) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.if.then2.i_crit_edge, label %for.cond.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.i:                                       ; preds = %if.end.i
  %arrayidx.1.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool1.not.1.i = icmp eq ptr %12, null
  br i1 %tobool1.not.1.i, label %for.cond.i.if.then2.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then2.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool1.not.2.i = icmp eq ptr %14, null
  br i1 %tobool1.not.2.i, label %for.cond.1.i.if.then2.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then2.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool1.not.3.i = icmp eq ptr %16, null
  br i1 %tobool1.not.3.i, label %for.cond.2.i.if.then2.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then2.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool1.not.4.i = icmp eq ptr %18, null
  br i1 %tobool1.not.4.i, label %for.cond.3.i.if.then2.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.then2.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool1.not.5.i = icmp eq ptr %20, null
  br i1 %tobool1.not.5.i, label %for.cond.4.i.if.then2.i_crit_edge, label %for.cond.5.i

for.cond.4.i.if.then2.i_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %tb_sb6.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %21 = ptrtoint ptr %tb_sb6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tb_sb6.i, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.store_thrown, ptr noundef nonnull @.str.17) #7
  br label %store_thrown.exit

if.then2.i:                                       ; preds = %for.cond.4.i.if.then2.i_crit_edge, %for.cond.3.i.if.then2.i_crit_edge, %for.cond.2.i.if.then2.i_crit_edge, %for.cond.1.i.if.then2.i_crit_edge, %for.cond.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.end.i.if.then2.i_crit_edge ], [ %arrayidx.1.i, %for.cond.i.if.then2.i_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.if.then2.i_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.if.then2.i_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.if.then2.i_crit_edge ], [ %arrayidx.5.i, %for.cond.4.i.if.then2.i_crit_edge ]
  %23 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bh, ptr %arrayidx.lcssa.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #7, !srcloc !219
  br label %store_thrown.exit

store_thrown.exit:                                ; preds = %if.then2.i, %for.cond.5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @replace_key(ptr nocapture noundef readonly %tb, ptr noundef %dest, i32 noundef %n_dest, ptr noundef %src, i32 noundef %n_src) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dest, null
  %cmp1 = icmp eq ptr %src, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_key, ptr noundef nonnull @.str.4, i32 noundef 1558, ptr noundef nonnull @__func__.replace_key, ptr noundef %src, ptr noundef %dest) #10
  unreachable

do.body2:                                         ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %dest, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = add i16 %4, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %6 = icmp ult i16 %5, 4
  br i1 %6, label %do.body13, label %if.then10

if.then10:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_key, ptr noundef nonnull @.str.5, i32 noundef 1561, ptr noundef nonnull @__func__.replace_key, ptr noundef nonnull %dest) #10
  unreachable

do.body13:                                        ; preds = %do.body2
  %7 = or i32 %n_src, %n_dest
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not = icmp sgt i32 %7, -1
  br i1 %.not, label %do.body22, label %if.then19

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_key, ptr noundef nonnull @.str.6, i32 noundef 1563, ptr noundef nonnull @__func__.replace_key, i32 noundef %n_src, i32 noundef %n_dest) #10
  unreachable

do.body22:                                        ; preds = %do.body13
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blk_nr_item, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv24 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %n_dest)
  %cmp25.not = icmp ugt i32 %conv24, %n_dest
  br i1 %cmp25.not, label %lor.lhs.false27, label %do.body22.if.then33_crit_edge

do.body22.if.then33_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

lor.lhs.false27:                                  ; preds = %do.body22
  %b_data28 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %11 = ptrtoint ptr %b_data28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data28, align 4
  %blk_nr_item29 = getelementptr inbounds %struct.block_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %blk_nr_item29 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %blk_nr_item29, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv30 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30, i32 %n_src)
  %cmp31.not = icmp ugt i32 %conv30, %n_src
  br i1 %cmp31.not, label %do.end41, label %lor.lhs.false27.if.then33_crit_edge

lor.lhs.false27.if.then33_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false27.if.then33_crit_edge, %do.body22.if.then33_crit_edge
  %b_data34 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %16 = ptrtoint ptr %b_data34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data34, align 4
  %blk_nr_item35 = getelementptr inbounds %struct.block_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %blk_nr_item35 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %blk_nr_item35, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv36 = zext i16 %20 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_key, ptr noundef nonnull @.str.7, i32 noundef 1566, ptr noundef nonnull @__func__.replace_key, i32 noundef %n_src, i32 noundef %conv36, i32 noundef %n_dest, i32 noundef %conv24) #10
  unreachable

do.end41:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %22)
  %cmp45 = icmp eq i16 %22, 256
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i, i32 %n_dest
  %add.ptr.i.i80 = getelementptr i8, ptr %12, i32 24
  %arrayidx.i87 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i80, i32 %n_src
  %arrayidx.i81 = getelementptr %struct.item_head, ptr %add.ptr.i.i80, i32 %n_src
  %arrayidx.i87.sink = select i1 %cmp45, ptr %arrayidx.i81, ptr %arrayidx.i87
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx.i87.sink, i32 16)
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %24 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transaction_handle.i, align 4
  %call.i = tail call i32 @journal_mark_dirty(ptr noundef %25, ptr noundef nonnull %dest) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_left_neighbor_position(ptr nocapture noundef readonly %tb, i32 noundef %h) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.neg = xor i32 %h, -1
  %sub = add i32 %3, %add.neg
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub, i32 1
  %4 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pe_position, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %lor.lhs.false.if.then_crit_edge, label %do.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx12 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef %h, ptr noundef %11, i32 noundef %h, ptr noundef %7) #10
  unreachable

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22 = icmp eq i32 %5, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub26 = add i32 %5, -1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23
  %retval.0 = phi i32 [ %conv, %if.then23 ], [ %sub26, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_right_neighbor_position(ptr nocapture noundef readonly %tb, i32 noundef %h) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.neg = xor i32 %h, -1
  %sub = add i32 %3, %add.neg
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub, i32 1
  %4 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pe_position, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %lor.lhs.false.if.then_crit_edge, label %do.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx21 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx21, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef %h, ptr noundef %7, i32 noundef %h, ptr noundef %11) #10
  unreachable

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %blk_nr_item, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp31 = icmp eq i32 %5, %conv
  %add34 = add i32 %5, 1
  %retval.0 = select i1 %cmp31, i32 0, i32 %add34
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_balance(ptr noundef %tb, ptr noundef %ih, ptr noundef %body, i32 noundef %flag) local_unnamed_addr #2 align 64 {
entry:
  %insert_key = alloca [2 x %struct.item_head], align 1
  %insert_ptr = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %insert_key) #7
  %0 = call ptr @memset(ptr %insert_key, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %insert_ptr) #7
  %1 = ptrtoint ptr %insert_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %insert_ptr, align 4, !annotation !220
  %2 = getelementptr inbounds [2 x ptr], ptr %insert_ptr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !220
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flag, ptr %tb, align 8
  %need_balance_dirty = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 1
  %5 = ptrtoint ptr %need_balance_dirty to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %need_balance_dirty, align 4
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #7
  %10 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_generation_counter, align 4
  %fs_gen = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 34
  %12 = ptrtoint ptr %fs_gen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_gen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.do_balance, ptr noundef nonnull @.str.11) #10
  unreachable

if.end:                                           ; preds = %entry
  %insert_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %16 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb_sb, align 8
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.do_balance, ptr noundef nonnull @.str.13, i32 noundef %flag) #7
  tail call void @unfix_nodes(ptr noundef %tb) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_fs_info.i45 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i45, align 16
  %s_generation_counter8 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %21, i32 0, i32 14
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_generation_counter8, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %s_generation_counter8, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_generation_counter8, ptr %s_generation_counter8, i32 1, ptr elementtype(i32) %s_generation_counter8) #7, !srcloc !219
  %23 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %cur_tb.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %26, i32 0, i32 40
  %27 = ptrtoint ptr %cur_tb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_tb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %24, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.check_before_balancing, ptr noundef nonnull @.str.20) #10
  unreachable

if.end.i.i:                                       ; preds = %if.end5
  %lnum.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %29 = ptrtoint ptr %lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lnum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %L.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %31 = ptrtoint ptr %L.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %L.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then4.i.i.lor.lhs.false.i.i.i_crit_edge

if.then4.i.i.lor.lhs.false.i.i.i_crit_edge:       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then4.i.i
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge

land.lhs.true.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then4.i.i.lor.lhs.false.i.i.i_crit_edge
  %call3.i.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.locked_or_not_in_tree.exit.i.i_crit_edge

lor.lhs.false.i.i.i.locked_or_not_in_tree.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge
  %39 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %40, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, ptr noundef %32) #7
  br label %locked_or_not_in_tree.exit.i.i

locked_or_not_in_tree.exit.i.i:                   ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.locked_or_not_in_tree.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 1, %if.then.i.i.i ], [ 0, %lor.lhs.false.i.i.i.locked_or_not_in_tree.exit.i.i_crit_edge ]
  %FL.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 7
  %41 = ptrtoint ptr %FL.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %FL.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i70.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i70.i.i, label %land.lhs.true.i72.i.i, label %locked_or_not_in_tree.exit.i.i.lor.lhs.false.i75.i.i_crit_edge

locked_or_not_in_tree.exit.i.i.lor.lhs.false.i75.i.i_crit_edge: ; preds = %locked_or_not_in_tree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i75.i.i

land.lhs.true.i72.i.i:                            ; preds = %locked_or_not_in_tree.exit.i.i
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool2.not.i71.i.i = icmp eq i32 %48, 0
  br i1 %tobool2.not.i71.i.i, label %land.lhs.true.i72.i.i.lor.lhs.false.i75.i.i_crit_edge, label %land.lhs.true.i72.i.i.if.then.i77.i.i_crit_edge

land.lhs.true.i72.i.i.if.then.i77.i.i_crit_edge:  ; preds = %land.lhs.true.i72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i77.i.i

land.lhs.true.i72.i.i.lor.lhs.false.i75.i.i_crit_edge: ; preds = %land.lhs.true.i72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i75.i.i

lor.lhs.false.i75.i.i:                            ; preds = %land.lhs.true.i72.i.i.lor.lhs.false.i75.i.i_crit_edge, %locked_or_not_in_tree.exit.i.i.lor.lhs.false.i75.i.i_crit_edge
  %call3.i73.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i73.i.i)
  %tobool4.not.i74.i.i = icmp eq i32 %call3.i73.i.i, 0
  br i1 %tobool4.not.i74.i.i, label %lor.lhs.false.i75.i.i.if.then.i77.i.i_crit_edge, label %lor.lhs.false.i75.i.i.locked_or_not_in_tree.exit79.i.i_crit_edge

lor.lhs.false.i75.i.i.locked_or_not_in_tree.exit79.i.i_crit_edge: ; preds = %lor.lhs.false.i75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit79.i.i

lor.lhs.false.i75.i.i.if.then.i77.i.i_crit_edge:  ; preds = %lor.lhs.false.i75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i77.i.i

if.then.i77.i.i:                                  ; preds = %lor.lhs.false.i75.i.i.if.then.i77.i.i_crit_edge, %land.lhs.true.i72.i.i.if.then.i77.i.i_crit_edge
  %49 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %50, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef %42) #7
  br label %locked_or_not_in_tree.exit79.i.i

locked_or_not_in_tree.exit79.i.i:                 ; preds = %if.then.i77.i.i, %lor.lhs.false.i75.i.i.locked_or_not_in_tree.exit79.i.i_crit_edge
  %retval.0.i78.i.i = phi i32 [ 1, %if.then.i77.i.i ], [ 0, %lor.lhs.false.i75.i.i.locked_or_not_in_tree.exit79.i.i_crit_edge ]
  %or9.i.i = or i32 %retval.0.i78.i.i, %retval.0.i.i.i
  %CFL.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %51 = ptrtoint ptr %CFL.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %CFL.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %55 = and i32 %54, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i80.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i80.i.i, label %land.lhs.true.i82.i.i, label %locked_or_not_in_tree.exit79.i.i.lor.lhs.false.i85.i.i_crit_edge

locked_or_not_in_tree.exit79.i.i.lor.lhs.false.i85.i.i_crit_edge: ; preds = %locked_or_not_in_tree.exit79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i85.i.i

land.lhs.true.i82.i.i:                            ; preds = %locked_or_not_in_tree.exit79.i.i
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %52, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.not.i81.i.i = icmp eq i32 %58, 0
  br i1 %tobool2.not.i81.i.i, label %land.lhs.true.i82.i.i.lor.lhs.false.i85.i.i_crit_edge, label %land.lhs.true.i82.i.i.if.then.i87.i.i_crit_edge

land.lhs.true.i82.i.i.if.then.i87.i.i_crit_edge:  ; preds = %land.lhs.true.i82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i87.i.i

land.lhs.true.i82.i.i.lor.lhs.false.i85.i.i_crit_edge: ; preds = %land.lhs.true.i82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i85.i.i

lor.lhs.false.i85.i.i:                            ; preds = %land.lhs.true.i82.i.i.lor.lhs.false.i85.i.i_crit_edge, %locked_or_not_in_tree.exit79.i.i.lor.lhs.false.i85.i.i_crit_edge
  %call3.i83.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83.i.i)
  %tobool4.not.i84.i.i = icmp eq i32 %call3.i83.i.i, 0
  br i1 %tobool4.not.i84.i.i, label %lor.lhs.false.i85.i.i.if.then.i87.i.i_crit_edge, label %lor.lhs.false.i85.i.i.locked_or_not_in_tree.exit89.i.i_crit_edge

lor.lhs.false.i85.i.i.locked_or_not_in_tree.exit89.i.i_crit_edge: ; preds = %lor.lhs.false.i85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit89.i.i

lor.lhs.false.i85.i.i.if.then.i87.i.i_crit_edge:  ; preds = %lor.lhs.false.i85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i87.i.i

if.then.i87.i.i:                                  ; preds = %lor.lhs.false.i85.i.i.if.then.i87.i.i_crit_edge, %land.lhs.true.i82.i.i.if.then.i87.i.i_crit_edge
  %59 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %60, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23, ptr noundef %52) #7
  br label %locked_or_not_in_tree.exit89.i.i

locked_or_not_in_tree.exit89.i.i:                 ; preds = %if.then.i87.i.i, %lor.lhs.false.i85.i.i.locked_or_not_in_tree.exit89.i.i_crit_edge
  %retval.0.i88.i.i = phi i32 [ 1, %if.then.i87.i.i ], [ 0, %lor.lhs.false.i85.i.i.locked_or_not_in_tree.exit89.i.i_crit_edge ]
  %or12.i.i = or i32 %or9.i.i, %retval.0.i88.i.i
  %61 = ptrtoint ptr %L.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %L.i.i, align 4
  tail call void @check_leaf(ptr noundef %62) #7
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %locked_or_not_in_tree.exit89.i.i, %if.end.i.i.if.end15.i.i_crit_edge
  %retval1.0.i.i = phi i32 [ %or12.i.i, %locked_or_not_in_tree.exit89.i.i ], [ 0, %if.end.i.i.if.end15.i.i_crit_edge ]
  %rnum.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %63 = ptrtoint ptr %rnum.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rnum.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool17.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end30.i.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %R.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %65 = ptrtoint ptr %R.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %R.i.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %69 = and i32 %68, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i90.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i90.i.i, label %land.lhs.true.i92.i.i, label %if.then18.i.i.lor.lhs.false.i95.i.i_crit_edge

if.then18.i.i.lor.lhs.false.i95.i.i_crit_edge:    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i95.i.i

land.lhs.true.i92.i.i:                            ; preds = %if.then18.i.i
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %66, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool2.not.i91.i.i = icmp eq i32 %72, 0
  br i1 %tobool2.not.i91.i.i, label %land.lhs.true.i92.i.i.lor.lhs.false.i95.i.i_crit_edge, label %land.lhs.true.i92.i.i.if.then.i97.i.i_crit_edge

land.lhs.true.i92.i.i.if.then.i97.i.i_crit_edge:  ; preds = %land.lhs.true.i92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i97.i.i

land.lhs.true.i92.i.i.lor.lhs.false.i95.i.i_crit_edge: ; preds = %land.lhs.true.i92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i95.i.i

lor.lhs.false.i95.i.i:                            ; preds = %land.lhs.true.i92.i.i.lor.lhs.false.i95.i.i_crit_edge, %if.then18.i.i.lor.lhs.false.i95.i.i_crit_edge
  %call3.i93.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i93.i.i)
  %tobool4.not.i94.i.i = icmp eq i32 %call3.i93.i.i, 0
  br i1 %tobool4.not.i94.i.i, label %lor.lhs.false.i95.i.i.if.then.i97.i.i_crit_edge, label %lor.lhs.false.i95.i.i.locked_or_not_in_tree.exit99.i.i_crit_edge

lor.lhs.false.i95.i.i.locked_or_not_in_tree.exit99.i.i_crit_edge: ; preds = %lor.lhs.false.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit99.i.i

lor.lhs.false.i95.i.i.if.then.i97.i.i_crit_edge:  ; preds = %lor.lhs.false.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i97.i.i

if.then.i97.i.i:                                  ; preds = %lor.lhs.false.i95.i.i.if.then.i97.i.i_crit_edge, %land.lhs.true.i92.i.i.if.then.i97.i.i_crit_edge
  %73 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %74, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, ptr noundef %66) #7
  br label %locked_or_not_in_tree.exit99.i.i

locked_or_not_in_tree.exit99.i.i:                 ; preds = %if.then.i97.i.i, %lor.lhs.false.i95.i.i.locked_or_not_in_tree.exit99.i.i_crit_edge
  %retval.0.i98.i.i = phi i32 [ 1, %if.then.i97.i.i ], [ 0, %lor.lhs.false.i95.i.i.locked_or_not_in_tree.exit99.i.i_crit_edge ]
  %or21.i.i = or i32 %retval.0.i98.i.i, %retval1.0.i.i
  %FR.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %75 = ptrtoint ptr %FR.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %FR.i.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %79 = and i32 %78, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i100.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i100.i.i, label %land.lhs.true.i102.i.i, label %locked_or_not_in_tree.exit99.i.i.lor.lhs.false.i105.i.i_crit_edge

locked_or_not_in_tree.exit99.i.i.lor.lhs.false.i105.i.i_crit_edge: ; preds = %locked_or_not_in_tree.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i105.i.i

land.lhs.true.i102.i.i:                           ; preds = %locked_or_not_in_tree.exit99.i.i
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %76, align 4
  %82 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool2.not.i101.i.i = icmp eq i32 %82, 0
  br i1 %tobool2.not.i101.i.i, label %land.lhs.true.i102.i.i.lor.lhs.false.i105.i.i_crit_edge, label %land.lhs.true.i102.i.i.if.then.i107.i.i_crit_edge

land.lhs.true.i102.i.i.if.then.i107.i.i_crit_edge: ; preds = %land.lhs.true.i102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i107.i.i

land.lhs.true.i102.i.i.lor.lhs.false.i105.i.i_crit_edge: ; preds = %land.lhs.true.i102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i105.i.i

lor.lhs.false.i105.i.i:                           ; preds = %land.lhs.true.i102.i.i.lor.lhs.false.i105.i.i_crit_edge, %locked_or_not_in_tree.exit99.i.i.lor.lhs.false.i105.i.i_crit_edge
  %call3.i103.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i103.i.i)
  %tobool4.not.i104.i.i = icmp eq i32 %call3.i103.i.i, 0
  br i1 %tobool4.not.i104.i.i, label %lor.lhs.false.i105.i.i.if.then.i107.i.i_crit_edge, label %lor.lhs.false.i105.i.i.locked_or_not_in_tree.exit109.i.i_crit_edge

lor.lhs.false.i105.i.i.locked_or_not_in_tree.exit109.i.i_crit_edge: ; preds = %lor.lhs.false.i105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit109.i.i

lor.lhs.false.i105.i.i.if.then.i107.i.i_crit_edge: ; preds = %lor.lhs.false.i105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i107.i.i

if.then.i107.i.i:                                 ; preds = %lor.lhs.false.i105.i.i.if.then.i107.i.i_crit_edge, %land.lhs.true.i102.i.i.if.then.i107.i.i_crit_edge
  %83 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %84, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, ptr noundef %76) #7
  br label %locked_or_not_in_tree.exit109.i.i

locked_or_not_in_tree.exit109.i.i:                ; preds = %if.then.i107.i.i, %lor.lhs.false.i105.i.i.locked_or_not_in_tree.exit109.i.i_crit_edge
  %retval.0.i108.i.i = phi i32 [ 1, %if.then.i107.i.i ], [ 0, %lor.lhs.false.i105.i.i.locked_or_not_in_tree.exit109.i.i_crit_edge ]
  %or24.i.i = or i32 %or21.i.i, %retval.0.i108.i.i
  %CFR.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %85 = ptrtoint ptr %CFR.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %CFR.i.i, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %89 = and i32 %88, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i110.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i110.i.i, label %land.lhs.true.i112.i.i, label %locked_or_not_in_tree.exit109.i.i.lor.lhs.false.i115.i.i_crit_edge

locked_or_not_in_tree.exit109.i.i.lor.lhs.false.i115.i.i_crit_edge: ; preds = %locked_or_not_in_tree.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i115.i.i

land.lhs.true.i112.i.i:                           ; preds = %locked_or_not_in_tree.exit109.i.i
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %86, align 4
  %92 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool2.not.i111.i.i = icmp eq i32 %92, 0
  br i1 %tobool2.not.i111.i.i, label %land.lhs.true.i112.i.i.lor.lhs.false.i115.i.i_crit_edge, label %land.lhs.true.i112.i.i.if.then.i117.i.i_crit_edge

land.lhs.true.i112.i.i.if.then.i117.i.i_crit_edge: ; preds = %land.lhs.true.i112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i117.i.i

land.lhs.true.i112.i.i.lor.lhs.false.i115.i.i_crit_edge: ; preds = %land.lhs.true.i112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i115.i.i

lor.lhs.false.i115.i.i:                           ; preds = %land.lhs.true.i112.i.i.lor.lhs.false.i115.i.i_crit_edge, %locked_or_not_in_tree.exit109.i.i.lor.lhs.false.i115.i.i_crit_edge
  %call3.i113.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i113.i.i)
  %tobool4.not.i114.i.i = icmp eq i32 %call3.i113.i.i, 0
  br i1 %tobool4.not.i114.i.i, label %lor.lhs.false.i115.i.i.if.then.i117.i.i_crit_edge, label %lor.lhs.false.i115.i.i.locked_or_not_in_tree.exit119.i.i_crit_edge

lor.lhs.false.i115.i.i.locked_or_not_in_tree.exit119.i.i_crit_edge: ; preds = %lor.lhs.false.i115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %locked_or_not_in_tree.exit119.i.i

lor.lhs.false.i115.i.i.if.then.i117.i.i_crit_edge: ; preds = %lor.lhs.false.i115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i117.i.i

if.then.i117.i.i:                                 ; preds = %lor.lhs.false.i115.i.i.if.then.i117.i.i_crit_edge, %land.lhs.true.i112.i.i.if.then.i117.i.i_crit_edge
  %93 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %94, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, ptr noundef %86) #7
  br label %locked_or_not_in_tree.exit119.i.i

locked_or_not_in_tree.exit119.i.i:                ; preds = %if.then.i117.i.i, %lor.lhs.false.i115.i.i.locked_or_not_in_tree.exit119.i.i_crit_edge
  %retval.0.i118.i.i = phi i32 [ 1, %if.then.i117.i.i ], [ 0, %lor.lhs.false.i115.i.i.locked_or_not_in_tree.exit119.i.i_crit_edge ]
  %or27.i.i = or i32 %or24.i.i, %retval.0.i118.i.i
  %95 = ptrtoint ptr %R.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %R.i.i, align 8
  tail call void @check_leaf(ptr noundef %96) #7
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %locked_or_not_in_tree.exit119.i.i, %if.end15.i.i.if.end30.i.i_crit_edge
  %retval1.1.i.i = phi i32 [ %or27.i.i, %locked_or_not_in_tree.exit119.i.i ], [ %retval1.0.i.i, %if.end15.i.i.if.end30.i.i_crit_edge ]
  %tb_path.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %97 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %100
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  %105 = and i32 %104, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i120.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i120.i.i, label %land.lhs.true.i122.i.i, label %if.end30.i.i.lor.lhs.false.i125.i.i_crit_edge

if.end30.i.i.lor.lhs.false.i125.i.i_crit_edge:    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i125.i.i

land.lhs.true.i122.i.i:                           ; preds = %if.end30.i.i
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %102, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool2.not.i121.i.i = icmp eq i32 %108, 0
  br i1 %tobool2.not.i121.i.i, label %land.lhs.true.i122.i.i.lor.lhs.false.i125.i.i_crit_edge, label %land.lhs.true.i122.i.i.if.then.i127.i.i_crit_edge

land.lhs.true.i122.i.i.if.then.i127.i.i_crit_edge: ; preds = %land.lhs.true.i122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i127.i.i

land.lhs.true.i122.i.i.lor.lhs.false.i125.i.i_crit_edge: ; preds = %land.lhs.true.i122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i125.i.i

lor.lhs.false.i125.i.i:                           ; preds = %land.lhs.true.i122.i.i.lor.lhs.false.i125.i.i_crit_edge, %if.end30.i.i.lor.lhs.false.i125.i.i_crit_edge
  %call3.i123.i.i = tail call i32 @B_IS_IN_TREE(ptr noundef %102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i123.i.i)
  %tobool4.not.i124.i.i = icmp eq i32 %call3.i123.i.i, 0
  br i1 %tobool4.not.i124.i.i, label %lor.lhs.false.i125.i.i.if.then.i127.i.i_crit_edge, label %lor.lhs.false.i125.i.i.check_before_balancing.exit.i_crit_edge

lor.lhs.false.i125.i.i.check_before_balancing.exit.i_crit_edge: ; preds = %lor.lhs.false.i125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_before_balancing.exit.i

lor.lhs.false.i125.i.i.if.then.i127.i.i_crit_edge: ; preds = %lor.lhs.false.i125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i127.i.i

if.then.i127.i.i:                                 ; preds = %lor.lhs.false.i125.i.i.if.then.i127.i.i_crit_edge, %land.lhs.true.i122.i.i.if.then.i127.i.i_crit_edge
  %109 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tb_sb, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %110, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.locked_or_not_in_tree, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %102) #7
  br label %check_before_balancing.exit.i

check_before_balancing.exit.i:                    ; preds = %if.then.i127.i.i, %lor.lhs.false.i125.i.i.check_before_balancing.exit.i_crit_edge
  %retval.0.i128.i.i = phi i32 [ 1, %if.then.i127.i.i ], [ 0, %lor.lhs.false.i125.i.i.check_before_balancing.exit.i_crit_edge ]
  %or33.i.i = or i32 %retval.0.i128.i.i, %retval1.1.i.i
  %111 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements35.i.i = getelementptr inbounds %struct.treepath, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add.ptr39.i.i = getelementptr %struct.path_element, ptr %path_elements35.i.i, i32 %114
  %115 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr39.i.i, align 4
  tail call void @check_leaf(ptr noundef %116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33.i.i)
  %tobool.not.i = icmp eq i32 %or33.i.i, 0
  br i1 %tobool.not.i, label %do_balance_starts.exit, label %if.then.i

if.then.i:                                        ; preds = %check_before_balancing.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_balance_starts, ptr noundef nonnull @.str.18, i32 noundef 1800, ptr noundef nonnull @__func__.do_balance_starts) #10
  unreachable

do_balance_starts.exit:                           ; preds = %check_before_balancing.exit.i
  %117 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 33
  %119 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_fs_info.i.i, align 16
  %cur_tb.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %120, i32 0, i32 40
  %121 = ptrtoint ptr %cur_tb.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %tb, ptr %cur_tb.i, align 4
  %122 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %sub = add i32 %125, -1
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %sub, i32 1
  %126 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pe_position, align 4
  %call12 = call fastcc i32 @balance_leaf(ptr noundef %tb, ptr noundef %ih, ptr noundef %body, i32 noundef %flag, ptr noundef nonnull %insert_key, ptr noundef nonnull %insert_ptr)
  %add = add i32 %call12, %127
  %128 = ptrtoint ptr %lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %lnum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i46 = icmp eq i32 %129, 0
  br i1 %tobool.not.i46, label %do_balance_starts.exit.if.end17.i_crit_edge, label %if.then.i50

do_balance_starts.exit.if.end17.i_crit_edge:      ; preds = %do_balance_starts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then.i50:                                      ; preds = %do_balance_starts.exit
  %FL.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %130 = ptrtoint ptr %FL.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %FL.i, align 4
  %132 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i.i48 = getelementptr inbounds %struct.treepath, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %sub.i.i = add i32 %135, -1
  %add.ptr.i.i49 = getelementptr %struct.path_element, ptr %path_elements.i.i48, i32 %sub.i.i
  %136 = ptrtoint ptr %add.ptr.i.i49 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr.i.i49, align 4
  %cmp.i.i = icmp eq ptr %137, null
  %cmp10.i.i = icmp eq ptr %131, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond, label %if.then.i.i51, label %do.end.i.i

if.then.i.i51:                                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %131, i32 noundef 0, ptr noundef %137) #10
  unreachable

do.end.i.i:                                       ; preds = %if.then.i50
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i48, i32 %sub.i.i, i32 1
  %138 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pe_position.i.i, align 4
  %b_data5.i = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 5
  %140 = ptrtoint ptr %b_data5.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %b_data5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %141, i32 24
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %blk_nr_item.i, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #7
  %conv9.i = zext i16 %144 to i32
  %mul.i = shl nuw nsw i32 %conv9.i, 4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %L.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %145 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %L.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %b_size.i, align 8
  %sub.i = add i32 %148, -24
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %146, i32 0, i32 5
  %149 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %b_data.i, align 4
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %blk_free_space.i, align 2
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #7
  %conv.i = zext i16 %153 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp22.i.i = icmp eq i32 %139, 0
  %sub26.i.i = add i32 %139, 536870911
  %spec.select = select i1 %cmp22.i.i, i32 %conv9.i, i32 %sub26.i.i
  %mul11.i = shl i32 %spec.select, 3
  %add.ptr12.i = getelementptr i8, ptr %add.ptr10.i, i32 %mul11.i
  %dc_size.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr12.i, i32 0, i32 1
  %154 = ptrtoint ptr %dc_size.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %dc_size.i, align 4
  %156 = tail call i16 @llvm.bswap.i16(i16 %155) #7
  %conv13.i = zext i16 %156 to i32
  %sub14.i = sub i32 %sub.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %sub14.i, %conv.i
  br i1 %cmp.not.i, label %do.end.i.i.if.end17.i_crit_edge, label %if.then16.i

do.end.i.i.if.end17.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then16.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_cur_tb(ptr noundef nonnull @.str.79) #7
  %157 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %158, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.check_after_balance_leaf, ptr noundef nonnull @.str.81) #10
  unreachable

if.end17.i:                                       ; preds = %do.end.i.i.if.end17.i_crit_edge, %do_balance_starts.exit.if.end17.i_crit_edge
  %159 = ptrtoint ptr %rnum.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rnum.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool19.not.i = icmp eq i32 %160, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end50.i_crit_edge, label %if.then20.i

if.end17.i.if.end50.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then20.i:                                      ; preds = %if.end17.i
  %FR.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %161 = ptrtoint ptr %FR.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %FR.i, align 8
  %163 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i285.i = getelementptr inbounds %struct.treepath, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %sub.i286.i = add i32 %166, -1
  %add.ptr.i287.i = getelementptr %struct.path_element, ptr %path_elements.i285.i, i32 %sub.i286.i
  %167 = ptrtoint ptr %add.ptr.i287.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i287.i, align 4
  %cmp.i289.i = icmp eq ptr %168, null
  %cmp10.i291.i = icmp eq ptr %162, null
  %or.cond69 = select i1 %cmp.i289.i, i1 true, i1 %cmp10.i291.i
  br i1 %or.cond69, label %if.then.i293.i, label %get_right_neighbor_position.exit.i

if.then.i293.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %168, i32 noundef 0, ptr noundef %162) #10
  unreachable

get_right_neighbor_position.exit.i:               ; preds = %if.then20.i
  %pe_position.i288.i = getelementptr %struct.path_element, ptr %path_elements.i285.i, i32 %sub.i286.i, i32 1
  %169 = ptrtoint ptr %pe_position.i288.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pe_position.i288.i, align 4
  %b_data30.i = getelementptr inbounds %struct.buffer_head, ptr %162, i32 0, i32 5
  %171 = ptrtoint ptr %b_data30.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %b_data30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %172, i32 24
  %blk_nr_item35.i = getelementptr inbounds %struct.block_head, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %blk_nr_item35.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %blk_nr_item35.i, align 2
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #7
  %conv36.i = zext i16 %175 to i32
  %mul37.i = shl nuw nsw i32 %conv36.i, 4
  %add.ptr38.i = getelementptr i8, ptr %add.ptr31.i, i32 %mul37.i
  %R.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %176 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %R.i, align 8
  %b_size27.i = getelementptr inbounds %struct.buffer_head, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %b_size27.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %b_size27.i, align 8
  %sub28.i = add i32 %179, -24
  %b_data22.i = getelementptr inbounds %struct.buffer_head, ptr %177, i32 0, i32 5
  %180 = ptrtoint ptr %b_data22.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %b_data22.i, align 4
  %blk_free_space23.i = getelementptr inbounds %struct.block_head, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %blk_free_space23.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %blk_free_space23.i, align 2
  %184 = tail call i16 @llvm.bswap.i16(i16 %183) #7
  %conv24.i = zext i16 %184 to i32
  %b_data.i294.i = getelementptr inbounds %struct.buffer_head, ptr %168, i32 0, i32 5
  %185 = ptrtoint ptr %b_data.i294.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %b_data.i294.i, align 4
  %blk_nr_item.i295.i = getelementptr inbounds %struct.block_head, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %blk_nr_item.i295.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %blk_nr_item.i295.i, align 2
  %189 = tail call i16 @llvm.bswap.i16(i16 %188) #7
  %conv.i296.i = zext i16 %189 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %conv.i296.i)
  %cmp31.i.i = icmp eq i32 %170, %conv.i296.i
  %add34.i.i = shl i32 %170, 3
  %add34.i.op.i = add i32 %add34.i.i, 8
  %mul40.i = select i1 %cmp31.i.i, i32 0, i32 %add34.i.op.i
  %add.ptr41.i = getelementptr i8, ptr %add.ptr38.i, i32 %mul40.i
  %dc_size42.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr41.i, i32 0, i32 1
  %190 = ptrtoint ptr %dc_size42.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %dc_size42.i, align 4
  %192 = tail call i16 @llvm.bswap.i16(i16 %191) #7
  %conv43.i = zext i16 %192 to i32
  %sub44.i = sub i32 %sub28.i, %conv43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44.i, i32 %conv24.i)
  %cmp45.not.i = icmp eq i32 %sub44.i, %conv24.i
  br i1 %cmp45.not.i, label %get_right_neighbor_position.exit.i.if.end50.i_crit_edge, label %if.then47.i

get_right_neighbor_position.exit.i.if.end50.i_crit_edge: ; preds = %get_right_neighbor_position.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then47.i:                                      ; preds = %get_right_neighbor_position.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_cur_tb(ptr noundef nonnull @.str.82) #7
  %193 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %194, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.check_after_balance_leaf, ptr noundef nonnull @.str.84) #10
  unreachable

if.end50.i:                                       ; preds = %get_right_neighbor_position.exit.i.if.end50.i_crit_edge, %if.end17.i.if.end50.i_crit_edge
  %195 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  %sub52.i = add i32 %198, -1
  %add.ptr53.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub52.i
  %199 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %add.ptr53.i, align 4
  %tobool54.not.i = icmp eq ptr %200, null
  br i1 %tobool54.not.i, label %if.end50.i.check_after_balance_leaf.exit_crit_edge, label %land.lhs.true.i

if.end50.i.check_after_balance_leaf.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_after_balance_leaf.exit

land.lhs.true.i:                                  ; preds = %if.end50.i
  %add.ptr61.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %198
  %201 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr61.i, align 4
  %b_data63.i = getelementptr inbounds %struct.buffer_head, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %b_data63.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %b_data63.i, align 4
  %blk_free_space64.i = getelementptr inbounds %struct.block_head, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %blk_free_space64.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %blk_free_space64.i, align 2
  %207 = tail call i16 @llvm.bswap.i16(i16 %206) #7
  %conv65.i = zext i16 %207 to i32
  %b_size74.i = getelementptr inbounds %struct.buffer_head, ptr %202, i32 0, i32 4
  %208 = ptrtoint ptr %b_size74.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %b_size74.i, align 8
  %sub75.i = add i32 %209, -24
  %b_data84.i = getelementptr inbounds %struct.buffer_head, ptr %200, i32 0, i32 5
  %210 = ptrtoint ptr %b_data84.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %b_data84.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %211, i32 24
  %blk_nr_item95.i = getelementptr inbounds %struct.block_head, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %blk_nr_item95.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %blk_nr_item95.i, align 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %213) #7
  %conv96.i = zext i16 %214 to i32
  %mul97.i = shl nuw nsw i32 %conv96.i, 4
  %add.ptr98.i = getelementptr i8, ptr %add.ptr85.i, i32 %mul97.i
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub52.i, i32 1
  %215 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pe_position.i, align 4
  %mul106.i = shl i32 %216, 3
  %add.ptr107.i = getelementptr i8, ptr %add.ptr98.i, i32 %mul106.i
  %dc_size108.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr107.i, i32 0, i32 1
  %217 = ptrtoint ptr %dc_size108.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %dc_size108.i, align 4
  %219 = tail call i16 @llvm.bswap.i16(i16 %218) #7
  %conv109.i = zext i16 %219 to i32
  %sub110.i = sub i32 %sub75.i, %conv109.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub110.i, i32 %conv65.i)
  %cmp111.not.i = icmp eq i32 %sub110.i, %conv65.i
  br i1 %cmp111.not.i, label %land.lhs.true.i.check_after_balance_leaf.exit_crit_edge, label %if.then113.i

land.lhs.true.i.check_after_balance_leaf.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_after_balance_leaf.exit

if.then113.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_cur_tb(ptr noundef nonnull @.str.85) #7
  %220 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tb_sb, align 8
  %222 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements173.i = getelementptr inbounds %struct.treepath, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %add.ptr178.i = getelementptr %struct.path_element, ptr %path_elements173.i, i32 %225
  %226 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr178.i, align 4
  %b_size180.i = getelementptr inbounds %struct.buffer_head, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %b_size180.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %b_size180.i, align 8
  %sub181.i = add i32 %229, -24
  %sub187.i = add i32 %225, -1
  %add.ptr188.i = getelementptr %struct.path_element, ptr %path_elements173.i, i32 %sub187.i
  %230 = ptrtoint ptr %add.ptr188.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %add.ptr188.i, align 4
  %pe_position197.i = getelementptr %struct.path_element, ptr %path_elements173.i, i32 %sub187.i, i32 1
  %232 = ptrtoint ptr %pe_position197.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pe_position197.i, align 4
  %b_data206.i = getelementptr inbounds %struct.buffer_head, ptr %231, i32 0, i32 5
  %234 = ptrtoint ptr %b_data206.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %b_data206.i, align 4
  %add.ptr207.i = getelementptr i8, ptr %235, i32 24
  %blk_nr_item217.i = getelementptr inbounds %struct.block_head, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %blk_nr_item217.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %blk_nr_item217.i, align 2
  %238 = tail call i16 @llvm.bswap.i16(i16 %237) #7
  %conv218.i = zext i16 %238 to i32
  %mul219.i = shl nuw nsw i32 %conv218.i, 4
  %add.ptr220.i = getelementptr i8, ptr %add.ptr207.i, i32 %mul219.i
  %mul229.i = shl i32 %233, 3
  %add.ptr230.i = getelementptr i8, ptr %add.ptr220.i, i32 %mul229.i
  %dc_size231.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr230.i, i32 0, i32 1
  %239 = ptrtoint ptr %dc_size231.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %dc_size231.i, align 4
  %241 = tail call i16 @llvm.bswap.i16(i16 %240) #7
  %conv232.i = zext i16 %241 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %221, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.check_after_balance_leaf, ptr noundef nonnull @.str.87, i32 noundef %conv65.i, i32 noundef %sub181.i, ptr noundef %231, i32 noundef %233, i32 noundef %conv232.i, i32 noundef %sub110.i) #7
  %242 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %243, ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.check_after_balance_leaf, ptr noundef nonnull @.str.89) #10
  unreachable

check_after_balance_leaf.exit:                    ; preds = %land.lhs.true.i.check_after_balance_leaf.exit_crit_edge, %if.end50.i.check_after_balance_leaf.exit_crit_edge
  %arrayidx15 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 1
  %244 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool16.not = icmp eq i32 %245, 0
  br i1 %tobool16.not, label %check_after_balance_leaf.exit.for.end_crit_edge, label %for.body

check_after_balance_leaf.exit.for.end_crit_edge:  ; preds = %check_after_balance_leaf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %check_after_balance_leaf.exit
  %call19 = call i32 @balance_internal(ptr noundef %tb, i32 noundef 1, i32 noundef %add, ptr noundef nonnull %insert_key, ptr noundef nonnull %insert_ptr) #7
  %arrayidx15.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 2
  %246 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool16.not.1 = icmp eq i32 %247, 0
  br i1 %tobool16.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %call19.1 = call i32 @balance_internal(ptr noundef %tb, i32 noundef 2, i32 noundef %call19, ptr noundef nonnull %insert_key, ptr noundef nonnull %insert_ptr) #7
  %arrayidx15.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 3
  %248 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool16.not.2 = icmp eq i32 %249, 0
  br i1 %tobool16.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %call19.2 = call i32 @balance_internal(ptr noundef %tb, i32 noundef 3, i32 noundef %call19.1, ptr noundef nonnull %insert_key, ptr noundef nonnull %insert_ptr) #7
  %arrayidx15.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 4
  %250 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool16.not.3 = icmp eq i32 %251, 0
  br i1 %tobool16.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %call19.3 = call i32 @balance_internal(ptr noundef %tb, i32 noundef 4, i32 noundef %call19.2, ptr noundef nonnull %insert_key, ptr noundef nonnull %insert_ptr) #7
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %check_after_balance_leaf.exit.for.end_crit_edge
  %L.i.i52 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %252 = ptrtoint ptr %L.i.i52 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %L.i.i52, align 4
  call void @check_leaf(ptr noundef %253) #7
  %R.i.i53 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %254 = ptrtoint ptr %R.i.i53 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %R.i.i53, align 8
  call void @check_leaf(ptr noundef %255) #7
  %256 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i.i55 = getelementptr inbounds %struct.treepath, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  %add.ptr.i.i56 = getelementptr %struct.path_element, ptr %path_elements.i.i55, i32 %259
  %260 = ptrtoint ptr %add.ptr.i.i56 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr.i.i56, align 4
  call void @check_leaf(ptr noundef %261) #7
  %262 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool.not28.i.i = icmp eq i32 %263, 0
  br i1 %tobool.not28.i.i, label %for.end.check_internal_levels.exit.i_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.check_internal_levels.exit.i_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_internal_levels.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %h.029.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %for.end.for.body.i.i_crit_edge ]
  %264 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %tb_sb, align 8
  %266 = ptrtoint ptr %tb_path.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tb_path.i.i, align 8
  %path_elements.i9.i = getelementptr inbounds %struct.treepath, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 4
  %sub.i.i58 = sub i32 %269, %h.029.i.i
  %add.ptr.i10.i = getelementptr %struct.path_element, ptr %path_elements.i9.i, i32 %sub.i.i58
  %270 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %add.ptr.i10.i, align 4
  call fastcc void @check_internal_node(ptr noundef %265, ptr noundef %271, ptr noundef nonnull @.str.90) #7
  %arrayidx2.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h.029.i.i
  %272 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool3.not.i.i59 = icmp eq i32 %273, 0
  br i1 %tobool3.not.i.i59, label %for.body.i.i.if.end.i.i61_crit_edge, label %if.then.i.i60

for.body.i.i.if.end.i.i61_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i61

if.then.i.i60:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %tb_sb, align 8
  %arrayidx5.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h.029.i.i
  %276 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx5.i.i, align 4
  call fastcc void @check_internal_node(ptr noundef %275, ptr noundef %277, ptr noundef nonnull @.str.91) #7
  br label %if.end.i.i61

if.end.i.i61:                                     ; preds = %if.then.i.i60, %for.body.i.i.if.end.i.i61_crit_edge
  %arrayidx6.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h.029.i.i
  %278 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool7.not.i.i = icmp eq i32 %279, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i61.for.inc.i.i_crit_edge, label %if.then8.i.i

if.end.i.i61.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %tb_sb, align 8
  %arrayidx10.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h.029.i.i
  %282 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx10.i.i, align 4
  call fastcc void @check_internal_node(ptr noundef %281, ptr noundef %283, ptr noundef nonnull @.str.92) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %if.end.i.i61.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %h.029.i.i, 1
  %arrayidx.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %inc.i.i
  %284 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i62 = icmp eq i32 %285, 0
  br i1 %tobool.not.i.i62, label %for.inc.i.i.check_internal_levels.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.check_internal_levels.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_internal_levels.exit.i

check_internal_levels.exit.i:                     ; preds = %for.inc.i.i.check_internal_levels.exit.i_crit_edge, %for.end.check_internal_levels.exit.i_crit_edge
  %286 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i64 = getelementptr inbounds %struct.super_block, ptr %287, i32 0, i32 33
  %288 = ptrtoint ptr %s_fs_info.i.i64 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %s_fs_info.i.i64, align 16
  %cur_tb.i65 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %289, i32 0, i32 40
  %290 = ptrtoint ptr %cur_tb.i65 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %cur_tb.i65, align 4
  %291 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i11.i = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 33
  %292 = ptrtoint ptr %s_fs_info.i11.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %s_fs_info.i11.i, align 16
  %s_do_balance.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %293, i32 0, i32 19
  %294 = ptrtoint ptr %s_do_balance.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %s_do_balance.i, align 4
  %inc.i = add i32 %295, 1
  store i32 %inc.i, ptr %s_do_balance.i, align 4
  call void @unfix_nodes(ptr noundef %tb) #7
  %transaction_handle.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %for.inc.i19.i.for.body.i15.i_crit_edge, %check_internal_levels.exit.i
  %i.021.i.i = phi i32 [ 0, %check_internal_levels.exit.i ], [ %inc.i18.i, %for.inc.i19.i.for.body.i15.i_crit_edge ]
  %arrayidx.i13.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 13, i32 %i.021.i.i
  %296 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx.i13.i, align 4
  %tobool.not.i14.i = icmp eq ptr %297, null
  br i1 %tobool.not.i14.i, label %for.body.i15.i.for.inc.i19.i_crit_edge, label %if.then.i16.i

for.body.i15.i.for.inc.i19.i_crit_edge:           ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i19.i

if.then.i16.i:                                    ; preds = %for.body.i15.i
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %297, i32 0, i32 3
  %298 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %b_blocknr.i.i, align 8
  %conv.i.i66 = trunc i64 %299 to i32
  %300 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %297, align 4
  %302 = and i32 %301, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool5.not.i.i = icmp eq i32 %302, 0
  br i1 %tobool5.not.i.i, label %if.then.i16.i.if.end.i17.i_crit_edge, label %if.then6.i.i

if.then.i16.i.if.end.i17.i_crit_edge:             ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i17.i

if.then6.i.i:                                     ; preds = %if.then.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  %303 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %tb_sb, align 8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %304, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.free_thrown, ptr noundef nonnull @.str.98, i32 noundef %conv.i.i66) #7
  br label %if.end.i17.i

if.end.i17.i:                                     ; preds = %if.then6.i.i, %if.then.i16.i.if.end.i17.i_crit_edge
  %305 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx.i13.i, align 4
  %tobool.not.i.i.i67 = icmp eq ptr %306, null
  br i1 %tobool.not.i.i.i67, label %if.end.i17.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i68

if.end.i17.i.brelse.exit.i.i_crit_edge:           ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i.i

if.then.i.i.i68:                                  ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %306) #7
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i68, %if.end.i17.i.brelse.exit.i.i_crit_edge
  %307 = ptrtoint ptr %transaction_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %transaction_handle.i.i, align 4
  call void @reiserfs_free_block(ptr noundef %308, ptr noundef null, i32 noundef %conv.i.i66, i32 noundef 0) #7
  br label %for.inc.i19.i

for.inc.i19.i:                                    ; preds = %brelse.exit.i.i, %for.body.i15.i.for.inc.i19.i_crit_edge
  %inc.i18.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i18.i, 6
  br i1 %exitcond.not.i.i, label %for.inc.i19.i.cleanup_crit_edge, label %for.inc.i19.i.for.body.i15.i_crit_edge

for.inc.i19.i.for.body.i15.i_crit_edge:           ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i15.i

for.inc.i19.i.cleanup_crit_edge:                  ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i19.i.cleanup_crit_edge, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %insert_ptr) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %insert_key) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unfix_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @balance_leaf(ptr noundef %tb, ptr noundef %ih, ptr noundef %body, i32 noundef %flag, ptr nocapture noundef writeonly %insert_key, ptr nocapture noundef writeonly %insert_ptr) unnamed_addr #2 align 64 {
entry:
  %bi.i.i.i423 = alloca %struct.buffer_info, align 4
  %bi.i12.i = alloca %struct.buffer_info, align 4
  %bi.i.i424 = alloca %struct.buffer_info, align 4
  %bi.i1.i.i319 = alloca %struct.buffer_info, align 4
  %bi.i.i.i.i320 = alloca %struct.buffer_info, align 4
  %bi.i.i.i321 = alloca %struct.buffer_info, align 4
  %bi.i.i322 = alloca %struct.buffer_info, align 4
  %bi.i1.i.i190 = alloca %struct.buffer_info, align 4
  %bi.i.i.i.i191 = alloca %struct.buffer_info, align 4
  %bi.i.i.i192 = alloca %struct.buffer_info, align 4
  %bi.i.i193 = alloca %struct.buffer_info, align 4
  %bi.i1.i.i = alloca %struct.buffer_info, align 4
  %bi.i.i.i.i = alloca %struct.buffer_info, align 4
  %bi.i.i.i = alloca %struct.buffer_info, align 4
  %bi.i.i156 = alloca %struct.buffer_info, align 4
  %bi.i108.i = alloca %struct.buffer_info, align 4
  %bi.i.i = alloca %struct.buffer_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %balance_at = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 27, i32 15
  %10 = ptrtoint ptr %balance_at to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %balance_at, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %balance_at, align 4
  %insert_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %12 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  %14 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb_path, align 8
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %17
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %FR.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 8
  %20 = ptrtoint ptr %FR.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %FR.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then.do.body7.i_crit_edge, label %land.lhs.true.i

if.then.do.body7.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

land.lhs.true.i:                                  ; preds = %if.then
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %25)
  %cmp.not.i = icmp eq i16 %25, 512
  br i1 %cmp.not.i, label %land.lhs.true.i.do.body7.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body7.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete, ptr noundef nonnull @.str.38, i32 noundef 246, ptr noundef nonnull @__func__.balance_leaf_when_delete, ptr noundef nonnull %21) #10
  unreachable

do.body7.i:                                       ; preds = %land.lhs.true.i.do.body7.i_crit_edge, %if.then.do.body7.i_crit_edge
  %blknum.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 19
  %26 = ptrtoint ptr %blknum.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blknum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp9.i = icmp sgt i32 %27, 1
  br i1 %cmp9.i, label %if.then11.i, label %do.body17.i

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete, ptr noundef nonnull @.str.39, i32 noundef 248, ptr noundef nonnull @__func__.balance_leaf_when_delete, i32 noundef %27) #10
  unreachable

do.body17.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not.i = icmp eq i32 %27, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %do.body17.i.do.end33.i_crit_edge

do.body17.i.do.end33.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i

land.lhs.true21.i:                                ; preds = %do.body17.i
  %sub.i = add i32 %17, -1
  %add.ptr27.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub.i
  %28 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr27.i, align 4
  %tobool29.not.i = icmp eq ptr %29, null
  br i1 %tobool29.not.i, label %if.then30.i, label %land.lhs.true21.i.do.end33.i_crit_edge

land.lhs.true21.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete, ptr noundef nonnull @.str.40, i32 noundef 250, ptr noundef nonnull @__func__.balance_leaf_when_delete) #10
  unreachable

do.end33.i:                                       ; preds = %land.lhs.true21.i.do.end33.i_crit_edge, %do.body17.i.do.end33.i_crit_edge
  %30 = add i32 %flag, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %30)
  %31 = icmp ult i32 %30, -2
  br i1 %31, label %do.body42.i, label %do.end50.i, !prof !221

do.body42.i:                                      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/do_balan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #7, !srcloc !222
  unreachable

do.end50.i:                                       ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %flag)
  %cmp35.not.i = icmp eq i32 %flag, 100
  %pe_position.i106.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %17, i32 1
  %32 = ptrtoint ptr %pe_position.i106.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pe_position.i106.i, align 4
  br i1 %cmp35.not.i, label %if.then53.i, label %if.else.i

if.then53.i:                                      ; preds = %do.end50.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i) #7
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %34 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %35, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %33
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %ih_item_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %ih_item_len.i.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #7
  %conv.i.i = zext i16 %38 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 24
  %sub.i107.i = sub i32 0, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i107.i)
  %cmp.not.i.i = icmp eq i32 %add.i.i, %sub.i107.i
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_del, ptr noundef nonnull @.str.42, i32 noundef 88, ptr noundef nonnull @__func__.balance_leaf_when_delete_del, i32 noundef %sub.i107.i, ptr noundef %arrayidx.i.i.i) #10
  unreachable

do.end.i.i:                                       ; preds = %if.then53.i
  %39 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i, i32 0, i32 3
  %40 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %bi.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tb, ptr %bi.i.i, align 4
  %43 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %15, align 4
  %add.ptr.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %44
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i.i, align 4
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %41, align 4
  %48 = load i32, ptr %15, align 4
  %sub.i.i.i = add i32 %48, -1
  %add.ptr8.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub.i.i.i
  %49 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr8.i.i.i, align 4
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %40, align 4
  %52 = load i32, ptr %15, align 4
  %sub15.i.i.i = add i32 %52, -1
  %pe_position.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub15.i.i.i, i32 1
  %53 = ptrtoint ptr %pe_position.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pe_position.i.i.i, align 4
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %39, align 4
  call void @leaf_delete_items(ptr noundef nonnull %bi.i.i, i32 noundef 0, i32 noundef %33, i32 noundef 1, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %do.end.i.i.balance_leaf_when_delete_del.exit.i_crit_edge

do.end.i.i.balance_leaf_when_delete_del.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_when_delete_del.exit.i

land.lhs.true.i.i:                                ; preds = %do.end.i.i
  %CFL.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %56 = ptrtoint ptr %CFL.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %CFL.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %57, null
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.if.then51.i.i_crit_edge, label %if.then14.i.i

land.lhs.true.i.i.if.then51.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true.i.i
  %58 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i.i.i.i, align 4
  %blk_nr_item.i.i = getelementptr inbounds %struct.block_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %blk_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %blk_nr_item.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool15.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool15.not.i.i, label %if.else.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkey.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %62 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lkey.i.i, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef nonnull %57, i32 noundef %63, ptr noundef %19, i32 noundef 0) #7
  br label %land.lhs.true47.i.i

if.else.i.i:                                      ; preds = %if.then14.i.i
  %64 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tb_path, align 8
  %path_elements21.i.i = getelementptr inbounds %struct.treepath, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %sub25.i.i = add i32 %67, -1
  %pe_position27.i.i = getelementptr %struct.path_element, ptr %path_elements21.i.i, i32 %sub25.i.i, i32 1
  %68 = ptrtoint ptr %pe_position27.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pe_position27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool28.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool28.not.i.i, label %if.then29.i.i, label %if.else.i.i.land.lhs.true47.i.i_crit_edge

if.else.i.i.land.lhs.true47.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true47.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26.i.i = getelementptr %struct.path_element, ptr %path_elements21.i.i, i32 %sub25.i.i
  %lkey32.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %70 = ptrtoint ptr %lkey32.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lkey32.i.i, align 4
  %72 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr26.i.i, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef nonnull %57, i32 noundef %71, ptr noundef %73, i32 noundef 0) #7
  br label %land.lhs.true47.i.i

land.lhs.true47.i.i:                              ; preds = %if.then29.i.i, %if.else.i.i.land.lhs.true47.i.i_crit_edge, %if.then16.i.i
  %74 = ptrtoint ptr %CFL.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i.i = load ptr, ptr %CFL.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool50.not.i.i, label %land.lhs.true47.i.i.if.then51.i.i_crit_edge, label %land.lhs.true47.i.i.balance_leaf_when_delete_del.exit.i_crit_edge

land.lhs.true47.i.i.balance_leaf_when_delete_del.exit.i_crit_edge: ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_when_delete_del.exit.i

land.lhs.true47.i.i.if.then51.i.i_crit_edge:      ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51.i.i

if.then51.i.i:                                    ; preds = %land.lhs.true47.i.i.if.then51.i.i_crit_edge, %land.lhs.true.i.i.if.then51.i.i_crit_edge
  %L.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %75 = ptrtoint ptr %L.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %L.i.i, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_del, ptr noundef nonnull @.str.43, i32 noundef 105, ptr noundef nonnull @__func__.balance_leaf_when_delete_del, ptr noundef null, ptr noundef %76) #10
  unreachable

balance_leaf_when_delete_del.exit.i:              ; preds = %land.lhs.true47.i.i.balance_leaf_when_delete_del.exit.i_crit_edge, %do.end.i.i.balance_leaf_when_delete_del.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i) #7
  br label %if.end54.i

if.else.i:                                        ; preds = %do.end50.i
  %b_data.i.i.i113.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %77 = ptrtoint ptr %b_data.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data.i.i.i113.i, align 4
  %add.ptr.i.i.i114.i = getelementptr i8, ptr %78, i32 24
  %arrayidx.i.i115.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i114.i, i32 %33
  %pos_in_item9.i.i = getelementptr inbounds %struct.treepath, ptr %15, i32 0, i32 3
  %79 = ptrtoint ptr %pos_in_item9.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pos_in_item9.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i108.i) #7
  %81 = getelementptr inbounds %struct.buffer_info, ptr %bi.i108.i, i32 0, i32 1
  %82 = getelementptr inbounds %struct.buffer_info, ptr %bi.i108.i, i32 0, i32 2
  %83 = getelementptr inbounds %struct.buffer_info, ptr %bi.i108.i, i32 0, i32 3
  %84 = ptrtoint ptr %bi.i108.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %tb, ptr %bi.i108.i, align 4
  %85 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %15, align 4
  %add.ptr.i.i116.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %86
  %87 = ptrtoint ptr %add.ptr.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i.i116.i, align 4
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %81, align 4
  %90 = load i32, ptr %15, align 4
  %sub.i.i117.i = add i32 %90, -1
  %add.ptr8.i.i118.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub.i.i117.i
  %91 = ptrtoint ptr %add.ptr8.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr8.i.i118.i, align 4
  %93 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %82, align 4
  %94 = load i32, ptr %15, align 4
  %sub15.i.i119.i = add i32 %94, -1
  %pe_position.i.i120.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub15.i.i119.i, i32 1
  %95 = ptrtoint ptr %pe_position.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pe_position.i.i120.i, align 4
  %97 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %83, align 4
  %ih_version.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i115.i, i32 0, i32 4
  %98 = ptrtoint ptr %ih_version.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %ih_version.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp.i.i.i.i.i = icmp eq i16 %99, 0
  %u.i.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i115.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i, label %is_direntry_le_ih.exit.i.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %100 = ptrtoint ptr %u.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %u.i.i.i.i.i, align 1
  %102 = and i64 %101, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %102)
  %phi.cmp1.i.i.i.i = icmp eq i64 %102, 48
  br i1 %phi.cmp1.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i123.i_crit_edge, label %if.else.i.i.i.i.i.if.else.i127.i_crit_edge

if.else.i.i.i.i.i.if.else.i127.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i127.i

if.else.i.i.i.i.i.if.then.i123.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i123.i

is_direntry_le_ih.exit.i.i:                       ; preds = %if.else.i
  %k_uniqueness.i.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %k_uniqueness.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %k_uniqueness.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %104)
  %cond.i.i.i.i = icmp eq i32 %104, -201261056
  br i1 %cond.i.i.i.i, label %is_direntry_le_ih.exit.i.i.if.then.i123.i_crit_edge, label %is_direntry_le_ih.exit.i.i.if.else.i127.i_crit_edge

is_direntry_le_ih.exit.i.i.if.else.i127.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i127.i

is_direntry_le_ih.exit.i.i.if.then.i123.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i123.i

if.then.i123.i:                                   ; preds = %is_direntry_le_ih.exit.i.i.if.then.i123.i_crit_edge, %if.else.i.i.i.i.i.if.then.i123.i_crit_edge
  %105 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %insert_size, align 4
  call void @leaf_cut_from_buffer(ptr noundef nonnull %bi.i108.i, i32 noundef %33, i32 noundef %80, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool13.not.i122.i = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool14.not.i.i = icmp eq i32 %80, 0
  %or.cond.i.i = select i1 %tobool13.not.i122.i, i1 %tobool14.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true15.i.i, label %if.then.i123.i.balance_leaf_when_delete_cut.exit.i_crit_edge

if.then.i123.i.balance_leaf_when_delete_cut.exit.i_crit_edge: ; preds = %if.then.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_when_delete_cut.exit.i

land.lhs.true15.i.i:                              ; preds = %if.then.i123.i
  %CFL.i124.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %106 = ptrtoint ptr %CFL.i124.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %CFL.i124.i, align 4
  %tobool17.not.i.i = icmp eq ptr %107, null
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.then28.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_cut, ptr noundef nonnull @.str.44, i32 noundef 132, ptr noundef nonnull @__func__.balance_leaf_when_delete_cut, ptr noundef null) #10
  unreachable

if.then28.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkey.i125.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %108 = ptrtoint ptr %lkey.i125.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lkey.i125.i, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef nonnull %107, i32 noundef %109, ptr noundef %19, i32 noundef 0) #7
  br label %balance_leaf_when_delete_cut.exit.i

if.else.i127.i:                                   ; preds = %is_direntry_le_ih.exit.i.i.if.else.i127.i_crit_edge, %if.else.i.i.i.i.i.if.else.i127.i_crit_edge
  %sub35.i.i = sub i32 0, %13
  call void @leaf_cut_from_buffer(ptr noundef nonnull %bi.i108.i, i32 noundef %33, i32 noundef %80, i32 noundef %sub35.i.i) #7
  %ih_item_len.i126.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i115.i, i32 0, i32 2
  %110 = ptrtoint ptr %ih_item_len.i126.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %ih_item_len.i126.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool37.not.i.i = icmp eq i16 %111, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.else.i127.i.balance_leaf_when_delete_cut.exit.i_crit_edge

if.else.i127.i.balance_leaf_when_delete_cut.exit.i_crit_edge: ; preds = %if.else.i127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_when_delete_cut.exit.i

if.then38.i.i:                                    ; preds = %if.else.i127.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_cut, ptr noundef nonnull @.str.45, i32 noundef 142, ptr noundef nonnull @__func__.balance_leaf_when_delete_cut) #10
  unreachable

balance_leaf_when_delete_cut.exit.i:              ; preds = %if.else.i127.i.balance_leaf_when_delete_cut.exit.i_crit_edge, %if.then28.i.i, %if.then.i123.i.balance_leaf_when_delete_cut.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i108.i) #7
  br label %if.end54.i

if.end54.i:                                       ; preds = %balance_leaf_when_delete_cut.exit.i, %balance_leaf_when_delete_del.exit.i
  %b_data55.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %112 = ptrtoint ptr %b_data55.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_data55.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %blk_nr_item.i, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %115) #7
  %conv56.i = zext i16 %116 to i32
  %lnum.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %117 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %lnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool58.not.i = icmp eq i32 %118, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end54.i
  %119 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tb_path, align 8
  %path_elements.i129.i = getelementptr inbounds %struct.treepath, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add.ptr.i130.i = getelementptr %struct.path_element, ptr %path_elements.i129.i, i32 %122
  %123 = ptrtoint ptr %add.ptr.i130.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i130.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data.i.i, align 4
  %blk_nr_item.i131.i = getelementptr inbounds %struct.block_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %blk_nr_item.i131.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %blk_nr_item.i131.i, align 2
  %129 = call i16 @llvm.bswap.i16(i16 %128) #7
  %conv.i132.i = zext i16 %129 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i.i = icmp eq i32 %118, -1
  %rnum.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %130 = ptrtoint ptr %rnum.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rnum.i.i, align 8
  br i1 %cmp.i.i, label %if.then.i133.i, label %do.body70.i.i

if.then.i133.i:                                   ; preds = %if.then59.i
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i32 %131, label %if.then64.i.i [
    i32 -1, label %if.then6.i.i
    i32 0, label %do.end.i140.i
  ]

if.then6.i.i:                                     ; preds = %if.then.i133.i
  %133 = ptrtoint ptr %FR.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %FR.i, align 8
  %sub.i134.i = add i32 %122, -1
  %add.ptr13.i.i = getelementptr %struct.path_element, ptr %path_elements.i129.i, i32 %sub.i134.i
  %135 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr13.i.i, align 4
  %cmp15.i.i = icmp eq ptr %134, %136
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end46.i.i

if.then17.i.i:                                    ; preds = %if.then6.i.i
  %pe_position.i135.i = getelementptr %struct.path_element, ptr %path_elements.i129.i, i32 %sub.i134.i, i32 1
  %137 = ptrtoint ptr %pe_position.i135.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pe_position.i135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp25.i.i = icmp eq i32 %138, 0
  br i1 %cmp25.i.i, label %land.lhs.true.i136.i, label %if.then17.i.i.if.end.i.i_crit_edge

if.then17.i.i.if.end.i.i_crit_edge:               ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i136.i:                             ; preds = %if.then17.i.i
  %b_data29.i.i = getelementptr inbounds %struct.buffer_head, ptr %134, i32 0, i32 5
  %139 = ptrtoint ptr %b_data29.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %b_data29.i.i, align 4
  %blk_nr_item30.i.i = getelementptr inbounds %struct.block_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %blk_nr_item30.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %blk_nr_item30.i.i, align 2
  %143 = call i16 @llvm.bswap.i16(i16 %142) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %143)
  %cmp32.i.i = icmp ugt i16 %143, 1
  br i1 %cmp32.i.i, label %if.then34.i.i, label %land.lhs.true.i136.i.if.end.i.i_crit_edge

land.lhs.true.i136.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then34.i.i:                                    ; preds = %land.lhs.true.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  %CFL.i137.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %144 = ptrtoint ptr %CFL.i137.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %CFL.i137.i, align 4
  %lkey.i138.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %146 = ptrtoint ptr %lkey.i138.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lkey.i138.i, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef %145, i32 noundef %147, ptr noundef %134, i32 noundef 1) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then34.i.i, %land.lhs.true.i136.i.if.end.i.i_crit_edge, %if.then17.i.i.if.end.i.i_crit_edge
  %call.i.i = call i32 @leaf_move_items(i32 noundef 0, ptr noundef %tb, i32 noundef %conv.i132.i, i32 noundef -1, ptr noundef null) #7
  %R.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %148 = ptrtoint ptr %R.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %R.i.i, align 8
  %b_data40.i.i = getelementptr inbounds %struct.buffer_head, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %b_data40.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %b_data40.i.i, align 4
  %blk_nr_item41.i.i = getelementptr inbounds %struct.block_head, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %blk_nr_item41.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %blk_nr_item41.i.i, align 2
  %154 = call i16 @llvm.bswap.i16(i16 %153) #7
  %conv42.i.i = zext i16 %154 to i32
  %call43.i.i = call i32 @leaf_move_items(i32 noundef 2, ptr noundef %tb, i32 noundef %conv42.i.i, i32 noundef -1, ptr noundef null) #7
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %124) #7
  %155 = ptrtoint ptr %R.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %R.i.i, align 8
  br label %balance_leaf_when_delete_left.exit.i

if.end46.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i.i = call i32 @leaf_move_items(i32 noundef 1, ptr noundef %tb, i32 noundef %conv.i132.i, i32 noundef -1, ptr noundef null) #7
  %L.i139.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %157 = ptrtoint ptr %L.i139.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %L.i139.i, align 4
  %b_data49.i.i = getelementptr inbounds %struct.buffer_head, ptr %158, i32 0, i32 5
  %159 = ptrtoint ptr %b_data49.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %b_data49.i.i, align 4
  %blk_nr_item50.i.i = getelementptr inbounds %struct.block_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %blk_nr_item50.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %blk_nr_item50.i.i, align 2
  %163 = call i16 @llvm.bswap.i16(i16 %162) #7
  %conv51.i.i = zext i16 %163 to i32
  %call52.i.i = call i32 @leaf_move_items(i32 noundef 3, ptr noundef %tb, i32 noundef %conv51.i.i, i32 noundef -1, ptr noundef null) #7
  %CFR.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %164 = ptrtoint ptr %CFR.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %CFR.i.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %166 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rkey.i.i, align 8
  %R55.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %168 = ptrtoint ptr %R55.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %R55.i.i, align 8
  call void @replace_key(ptr noundef %tb, ptr noundef %165, i32 noundef %167, ptr noundef %169, i32 noundef 0) #7
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %124) #7
  %170 = ptrtoint ptr %L.i139.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %L.i139.i, align 4
  br label %balance_leaf_when_delete_left.exit.i

if.then64.i.i:                                    ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, ptr noundef nonnull @.str.46, i32 noundef 192, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, i32 noundef %131) #10
  unreachable

do.end.i140.i:                                    ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #9
  %call68.i.i = call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %conv.i132.i, i32 noundef -1) #7
  br label %balance_leaf_when_delete_left.exit.i

do.body70.i.i:                                    ; preds = %if.then59.i
  %add.i141.i = add i32 %131, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141.i, i32 %conv.i132.i)
  %cmp75.i.i = icmp slt i32 %add.i141.i, %conv.i132.i
  br i1 %cmp75.i.i, label %do.body70.i.i.if.then85.i.i_crit_edge, label %lor.lhs.false.i.i

do.body70.i.i.if.then85.i.i_crit_edge:            ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i.i

lor.lhs.false.i.i:                                ; preds = %do.body70.i.i
  %add82.i.i = add nuw nsw i32 %conv.i132.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141.i, i32 %add82.i.i)
  %cmp83.i.i = icmp sgt i32 %add.i141.i, %add82.i.i
  br i1 %cmp83.i.i, label %lor.lhs.false.i.i.if.then85.i.i_crit_edge, label %do.body93.i.i

lor.lhs.false.i.i.if.then85.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i.i

if.then85.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then85.i.i_crit_edge, %do.body70.i.i.if.then85.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, ptr noundef nonnull @.str.47, i32 noundef 210, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, i32 noundef %131, i32 noundef %118, i32 noundef %conv.i132.i) #10
  unreachable

do.body93.i.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141.i, i32 %conv.i132.i)
  %cmp99.i.i = icmp eq i32 %add.i141.i, %conv.i132.i
  br i1 %cmp99.i.i, label %land.lhs.true101.i.i, label %do.body93.i.i.do.body113.i.i_crit_edge

do.body93.i.i.do.body113.i.i_crit_edge:           ; preds = %do.body93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113.i.i

land.lhs.true101.i.i:                             ; preds = %do.body93.i.i
  %lbytes.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %172 = ptrtoint ptr %lbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %lbytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %173)
  %cmp102.not.i.i = icmp eq i32 %173, -1
  br i1 %cmp102.not.i.i, label %lor.lhs.false104.i.i, label %land.lhs.true101.i.i.if.then107.i.i_crit_edge

land.lhs.true101.i.i.if.then107.i.i_crit_edge:    ; preds = %land.lhs.true101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i.i

lor.lhs.false104.i.i:                             ; preds = %land.lhs.true101.i.i
  %rbytes.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %174 = ptrtoint ptr %rbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rbytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %175)
  %cmp105.not.i.i = icmp eq i32 %175, -1
  br i1 %cmp105.not.i.i, label %lor.lhs.false104.i.i.do.body113.i.i_crit_edge, label %lor.lhs.false104.i.i.if.then107.i.i_crit_edge

lor.lhs.false104.i.i.if.then107.i.i_crit_edge:    ; preds = %lor.lhs.false104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i.i

lor.lhs.false104.i.i.do.body113.i.i_crit_edge:    ; preds = %lor.lhs.false104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113.i.i

if.then107.i.i:                                   ; preds = %lor.lhs.false104.i.i.if.then107.i.i_crit_edge, %land.lhs.true101.i.i.if.then107.i.i_crit_edge
  %rbytes108.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %176 = ptrtoint ptr %rbytes108.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rbytes108.i.i, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, ptr noundef nonnull @.str.48, i32 noundef 215, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, i32 noundef %177, i32 noundef %173) #10
  unreachable

do.body113.i.i:                                   ; preds = %lor.lhs.false104.i.i.do.body113.i.i_crit_edge, %do.body93.i.i.do.body113.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i141.i, i32 %add82.i.i)
  %cmp120.i.i = icmp eq i32 %add.i141.i, %add82.i.i
  br i1 %cmp120.i.i, label %land.lhs.true122.i.i, label %do.body113.i.i.do.end135.i.i_crit_edge

do.body113.i.i.do.end135.i.i_crit_edge:           ; preds = %do.body113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

land.lhs.true122.i.i:                             ; preds = %do.body113.i.i
  %lbytes123.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %178 = ptrtoint ptr %lbytes123.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %lbytes123.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp124.i.i = icmp slt i32 %179, 1
  br i1 %cmp124.i.i, label %land.lhs.true122.i.i.if.then130.i.i_crit_edge, label %lor.lhs.false126.i.i

land.lhs.true122.i.i.if.then130.i.i_crit_edge:    ; preds = %land.lhs.true122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130.i.i

lor.lhs.false126.i.i:                             ; preds = %land.lhs.true122.i.i
  %rbytes127.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %180 = ptrtoint ptr %rbytes127.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rbytes127.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %181)
  %cmp128.not.i.i = icmp eq i32 %181, -1
  br i1 %cmp128.not.i.i, label %lor.lhs.false126.i.i.do.end135.i.i_crit_edge, label %lor.lhs.false126.i.i.if.then130.i.i_crit_edge

lor.lhs.false126.i.i.if.then130.i.i_crit_edge:    ; preds = %lor.lhs.false126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130.i.i

lor.lhs.false126.i.i.do.end135.i.i_crit_edge:     ; preds = %lor.lhs.false126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i

if.then130.i.i:                                   ; preds = %lor.lhs.false126.i.i.if.then130.i.i_crit_edge, %land.lhs.true122.i.i.if.then130.i.i_crit_edge
  %rbytes131.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %182 = ptrtoint ptr %rbytes131.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rbytes131.i.i, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, ptr noundef nonnull @.str.49, i32 noundef 220, ptr noundef nonnull @__func__.balance_leaf_when_delete_left, i32 noundef %183, i32 noundef %179) #10
  unreachable

do.end135.i.i:                                    ; preds = %lor.lhs.false126.i.i.do.end135.i.i_crit_edge, %do.body113.i.i.do.end135.i.i_crit_edge
  %lbytes138.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %184 = ptrtoint ptr %lbytes138.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %lbytes138.i.i, align 4
  %call139.i.i = call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %118, i32 noundef %185) #7
  %186 = ptrtoint ptr %rnum.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rnum.i.i, align 8
  %rbytes142.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %188 = ptrtoint ptr %rbytes142.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rbytes142.i.i, align 8
  %call143.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %187, i32 noundef %189) #7
  br label %balance_leaf_when_delete_left.exit.i

balance_leaf_when_delete_left.exit.i:             ; preds = %do.end135.i.i, %do.end.i140.i, %if.end46.i.i, %if.end.i.i
  %.sink.i.i = phi ptr [ %124, %do.end135.i.i ], [ %124, %do.end.i140.i ], [ %171, %if.end46.i.i ], [ %156, %if.end.i.i ]
  %retval.0.i.i = phi i32 [ 0, %do.end135.i.i ], [ 0, %do.end.i140.i ], [ -1, %if.end46.i.i ], [ 0, %if.end.i.i ]
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %.sink.i.i) #7
  br label %cleanup

if.end60.i:                                       ; preds = %if.end54.i
  %rnum.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %190 = ptrtoint ptr %rnum.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rnum.i, align 8
  %192 = zext i32 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %191, label %if.then71.i [
    i32 -1, label %if.then64.i
    i32 0, label %if.end60.i.cleanup_crit_edge
  ]

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %conv56.i, i32 noundef -1) #7
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %19) #7
  br label %cleanup

if.then71.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_when_delete, ptr noundef nonnull @.str.41, i32 noundef 282, ptr noundef nonnull @__func__.balance_leaf_when_delete, i32 noundef %191) #10
  unreachable

if.end:                                           ; preds = %entry
  %pe_position = getelementptr %struct.path_element, ptr %path_elements.i, i32 %17, i32 1
  %193 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pe_position, align 4
  %item_pos = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 24
  %195 = ptrtoint ptr %item_pos to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %item_pos, align 4
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %15, i32 0, i32 3
  %196 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pos_in_item, align 4
  %pos_in_item11 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 28
  %198 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %pos_in_item11, align 8
  %zeroes_num = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 29
  %199 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %flag)
  %cmp12 = icmp eq i32 %flag, 105
  %tobool.not = icmp eq ptr %body, null
  %or.cond = and i1 %tobool.not, %cmp12
  br i1 %or.cond, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %200 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %ih_item_len, align 1
  %202 = tail call i16 @llvm.bswap.i16(i16 %201)
  %conv = zext i16 %202 to i32
  %203 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv, ptr %zeroes_num, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  br i1 %cmp12, label %if.end15.if.end25_crit_edge, label %land.lhs.true18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.end15
  %b_data.i.i155 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %204 = ptrtoint ptr %b_data.i.i155 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %b_data.i.i155, align 4
  %add.ptr.i.i = getelementptr i8, ptr %205, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %194
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 4
  %206 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %206, i32 2)
  %207 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %cmp.i.i.i = icmp eq i16 %207, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_indirect_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true18
  %208 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 8)
  %209 = load i64, ptr %u.i.i.i, align 1
  %210 = and i64 %209, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %210)
  %phi.cmp1.i.i = icmp eq i64 %210, 16
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then23_crit_edge, label %if.else.i.i.i.if.end25_crit_edge

if.else.i.i.i.if.end25_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else.i.i.i.if.then23_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

is_indirect_le_ih.exit:                           ; preds = %land.lhs.true18
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %212)
  %cond.i.i = icmp eq i32 %212, -16777217
  br i1 %cond.i.i, label %is_indirect_le_ih.exit.if.then23_crit_edge, label %is_indirect_le_ih.exit.if.end25_crit_edge

is_indirect_le_ih.exit.if.end25_crit_edge:        ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

is_indirect_le_ih.exit.if.then23_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %is_indirect_le_ih.exit.if.then23_crit_edge, %if.else.i.i.i.if.then23_crit_edge
  %mul = shl i32 %197, 2
  %213 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %mul, ptr %pos_in_item11, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %is_indirect_le_ih.exit.if.end25_crit_edge, %if.else.i.i.i.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %lnum.i157 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %214 = ptrtoint ptr %lnum.i157 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %lnum.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %215)
  %cmp.i = icmp slt i32 %215, 1
  br i1 %cmp.i, label %if.end25.balance_leaf_left.exit_crit_edge, label %if.end.i

if.end25.balance_leaf_left.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_left.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %215)
  %cmp3.i = icmp slt i32 %194, %215
  br i1 %cmp3.i, label %do.body.i, label %if.else17.i

do.body.i:                                        ; preds = %if.end.i
  %216 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %flag, label %do.body9.i [
    i32 105, label %if.then15.i
    i32 112, label %if.else.i181
  ]

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/do_balan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 608, 0\0A.popsection", ""() #7, !srcloc !223
  unreachable

if.then15.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i156) #7
  %217 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i156, i32 0, i32 1
  %218 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i156, i32 0, i32 2
  %219 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i156, i32 0, i32 3
  %L.i.i158 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %220 = call ptr @memset(ptr %bi.i.i156, i32 255, i32 16)
  %221 = ptrtoint ptr %L.i.i158 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %L.i.i158, align 4
  %b_data.i.i159 = getelementptr inbounds %struct.buffer_head, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %b_data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %b_data.i.i159, align 4
  %blk_nr_item.i.i160 = getelementptr inbounds %struct.block_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %blk_nr_item.i.i160 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %blk_nr_item.i.i160, align 2
  %227 = tail call i16 @llvm.bswap.i16(i16 %226) #7
  %conv.i.i161 = zext i16 %227 to i32
  %sub.i.i = add nsw i32 %215, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %sub.i.i)
  %cmp.i.i162 = icmp eq i32 %194, %sub.i.i
  br i1 %cmp.i.i162, label %land.lhs.true.i.i164, label %if.then15.i.if.else68.i.i_crit_edge

if.then15.i.if.else68.i.i_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68.i.i

land.lhs.true.i.i164:                             ; preds = %if.then15.i
  %lbytes.i.i163 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %228 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %lbytes.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %229)
  %cmp3.not.i.i = icmp eq i32 %229, -1
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i164.if.else68.i.i_crit_edge, label %if.then.i.i167

land.lhs.true.i.i164.if.else68.i.i_crit_edge:     ; preds = %land.lhs.true.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68.i.i

if.then.i.i167:                                   ; preds = %land.lhs.true.i.i164
  %call.i.i165 = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %194, i32 noundef -1) #7
  %ih_item_len.i.i166 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %230 = ptrtoint ptr %ih_item_len.i.i166 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %ih_item_len.i.i166, align 1
  %232 = tail call i16 @llvm.bswap.i16(i16 %231) #7
  %233 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %lbytes.i.i163, align 4
  %conv14.i.i = trunc i32 %234 to i16
  %235 = tail call i16 @llvm.bswap.i16(i16 %conv14.i.i) #7
  %236 = ptrtoint ptr %ih_item_len.i.i166 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 %235, ptr %ih_item_len.i.i166, align 1
  %conv18.i.i = and i32 %234, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i.i)
  %cmp19.i.i = icmp eq i32 %conv18.i.i, 0
  br i1 %cmp19.i.i, label %if.then21.i.i, label %do.end25.i.i

if.then21.i.i:                                    ; preds = %if.then.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_insert_left, ptr noundef nonnull @.str.50, i32 noundef 309, ptr noundef nonnull @__func__.balance_leaf_insert_left, i32 noundef 0) #10
  unreachable

do.end25.i.i:                                     ; preds = %if.then.i.i167
  %237 = ptrtoint ptr %bi.i.i156 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %tb, ptr %bi.i.i156, align 4
  %238 = ptrtoint ptr %L.i.i158 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %L.i.i158, align 4
  %240 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %239, ptr %217, align 4
  %FL.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %241 = ptrtoint ptr %FL.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %FL.i.i.i, align 4
  %243 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %242, ptr %218, align 4
  %244 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i = getelementptr inbounds %struct.treepath, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  %sub.i.i.i.i = add i32 %247, -1
  %add.ptr.i.i.i.i168 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i, i32 %sub.i.i.i.i
  %pe_position.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i, i32 %sub.i.i.i.i, i32 1
  %248 = ptrtoint ptr %pe_position.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pe_position.i.i.i.i, align 4
  %250 = ptrtoint ptr %add.ptr.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %add.ptr.i.i.i.i168, align 4
  %cmp.i.i.i.i = icmp eq ptr %251, null
  %cmp10.i.i.i.i = icmp eq ptr %242, null
  %or.cond.i.i169 = select i1 %cmp.i.i.i.i, i1 true, i1 %cmp10.i.i.i.i
  br i1 %or.cond.i.i169, label %if.then.i.i.i.i, label %do.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %242, i32 noundef 0, ptr noundef %251) #10
  unreachable

do.end.i.i.i.i:                                   ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp22.i.i.i.i = icmp eq i32 %249, 0
  br i1 %cmp22.i.i.i.i, label %if.then23.i.i.i.i, label %if.else.i.i.i.i

if.then23.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_data.i.i.i.i170 = getelementptr inbounds %struct.buffer_head, ptr %242, i32 0, i32 5
  %252 = ptrtoint ptr %b_data.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %b_data.i.i.i.i170, align 4
  %blk_nr_item.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %blk_nr_item.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %blk_nr_item.i.i.i.i, align 2
  %256 = tail call i16 @llvm.bswap.i16(i16 %255) #7
  %conv.i.i.i.i = zext i16 %256 to i32
  br label %buffer_info_init_left.exit.i.i

if.else.i.i.i.i:                                  ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i.i.i = add i32 %249, -1
  br label %buffer_info_init_left.exit.i.i

buffer_info_init_left.exit.i.i:                   ; preds = %if.else.i.i.i.i, %if.then23.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.then23.i.i.i.i ], [ %sub26.i.i.i.i, %if.else.i.i.i.i ]
  %257 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %retval.0.i.i.i.i, ptr %219, align 4
  %258 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %item_pos, align 4
  %add.i.i171 = sub i32 %conv.i.i161, %call.i.i165
  %sub27.i.i = add i32 %add.i.i171, %259
  %260 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %zeroes_num, align 4
  %262 = tail call i32 @llvm.smin.i32(i32 %261, i32 %conv18.i.i) #7
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i156, i32 noundef %sub27.i.i, ptr noundef %ih, ptr noundef %body, i32 noundef %262) #7
  %ih_version.i.i.i172 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %263 = ptrtoint ptr %ih_version.i.i.i172 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 2)
  %264 = load i16, ptr %ih_version.i.i.i172, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %cmp.i.i.i.i.i173 = icmp eq i16 %264, 0
  %u.i.i.i.i.i174 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i173, label %is_indirect_le_ih.exit.i.i, label %if.else.i.i.i.i.i176

if.else.i.i.i.i.i176:                             ; preds = %buffer_info_init_left.exit.i.i
  %265 = ptrtoint ptr %u.i.i.i.i.i174 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 8)
  %266 = load i64, ptr %u.i.i.i.i.i174, align 1
  %267 = and i64 %266, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %267)
  %phi.cmp1.i.i.i.i175 = icmp eq i64 %267, 16
  br i1 %phi.cmp1.i.i.i.i175, label %if.end36.i.i, label %if.end36.thread161.i.i

if.end36.thread161.i.i:                           ; preds = %if.else.i.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  %268 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %lbytes.i.i163, align 4
  br label %if.else.i.i.i132.i.i

is_indirect_le_ih.exit.i.i:                       ; preds = %buffer_info_init_left.exit.i.i
  %k_uniqueness.i.i.i.i.i177 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i174, i32 0, i32 1
  %270 = ptrtoint ptr %k_uniqueness.i.i.i.i.i177 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %k_uniqueness.i.i.i.i.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %271)
  %cond.i.i.i.i178 = icmp eq i32 %271, -16777217
  br i1 %cond.i.i.i.i178, label %if.end36.thread165.i.i, label %if.end36.thread.i.i

if.end36.thread165.i.i:                           ; preds = %is_indirect_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %272 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits167.i.i = getelementptr inbounds %struct.super_block, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %s_blocksize_bits167.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %s_blocksize_bits167.i.i, align 4
  %conv34168.i.i = zext i8 %275 to i32
  %sub35169.i.i = add nsw i32 %conv34168.i.i, -2
  %276 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %lbytes.i.i163, align 4
  %shl170.i.i = shl i32 %277, %sub35169.i.i
  br label %if.then.i.i.i131.i.i

if.end36.thread.i.i:                              ; preds = %is_indirect_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %278 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %lbytes.i.i163, align 4
  br label %if.then.i.i.i131.i.i

if.end36.i.i:                                     ; preds = %if.else.i.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv34.i.i = zext i8 %283 to i32
  %sub35.i.i179 = add nsw i32 %conv34.i.i, -2
  %284 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %lbytes.i.i163, align 4
  %shl.i.i = shl i32 %285, %sub35.i.i179
  br label %if.else.i.i.i132.i.i

if.then.i.i.i131.i.i:                             ; preds = %if.end36.thread.i.i, %if.end36.thread165.i.i
  %shl160.i.i = phi i32 [ %279, %if.end36.thread.i.i ], [ %shl170.i.i, %if.end36.thread165.i.i ]
  %286 = ptrtoint ptr %u.i.i.i.i.i174 to i32
  call void @__asan_loadN_noabort(i32 %286, i32 4)
  %287 = load i32, ptr %u.i.i.i.i.i174, align 1
  %288 = call i32 @llvm.bswap.i32(i32 %287) #7
  %conv.i4.i.i.i.i = add i32 %288, %shl160.i.i
  %289 = call i32 @llvm.bswap.i32(i32 %conv.i4.i.i.i.i) #7
  %290 = ptrtoint ptr %u.i.i.i.i.i174 to i32
  call void @__asan_storeN_noabort(i32 %290, i32 4)
  store i32 %289, ptr %u.i.i.i.i.i174, align 1
  br label %add_le_ih_k_offset.exit.i.i

if.else.i.i.i132.i.i:                             ; preds = %if.end36.i.i, %if.end36.thread161.i.i
  %shl164.i.i = phi i32 [ %269, %if.end36.thread161.i.i ], [ %shl.i.i, %if.end36.i.i ]
  %conv38.i.i = sext i32 %shl164.i.i to i64
  %291 = and i64 %266, -241
  %292 = call i64 @llvm.bswap.i64(i64 %291) #7
  %add.i.i.i.i = add nsw i64 %292, %conv38.i.i
  %and.i.i.i.i.i.i = and i64 %add.i.i.i.i, 1152921504606846975
  %293 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i.i) #7
  %or.i.i.i.i.i.i = or i64 %293, %267
  %294 = ptrtoint ptr %u.i.i.i.i.i174 to i32
  call void @__asan_storeN_noabort(i32 %294, i32 8)
  store i64 %or.i.i.i.i.i.i, ptr %u.i.i.i.i.i174, align 1
  br label %add_le_ih_k_offset.exit.i.i

add_le_ih_k_offset.exit.i.i:                      ; preds = %if.else.i.i.i132.i.i, %if.then.i.i.i131.i.i
  %conv40.i.i = sub i16 %232, %conv14.i.i
  %295 = call i16 @llvm.bswap.i16(i16 %conv40.i.i) #7
  %296 = ptrtoint ptr %ih_item_len.i.i166 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 2)
  store i16 %295, ptr %ih_item_len.i.i166, align 1
  %297 = ptrtoint ptr %lbytes.i.i163 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %lbytes.i.i163, align 4
  %299 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %300)
  %cmp46.i.i = icmp sgt i32 %298, %300
  %sub55.i.i = sub i32 %300, %298
  %sub51.i.i = sub i32 %298, %300
  %storemerge.i.i = select i1 %cmp46.i.i, i32 0, i32 %sub55.i.i
  %body_shift_bytes.0.i.i = select i1 %cmp46.i.i, i32 %sub51.i.i, i32 0
  %301 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %storemerge.i.i, ptr %zeroes_num, align 4
  %302 = ptrtoint ptr %ih_item_len.i.i166 to i32
  call void @__asan_loadN_noabort(i32 %302, i32 2)
  %303 = load i16, ptr %ih_item_len.i.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %303)
  %cmp60.i.i = icmp eq i16 %303, 0
  br i1 %cmp60.i.i, label %if.then62.i.i, label %add_le_ih_k_offset.exit.i.i.balance_leaf_insert_left.exit.i_crit_edge

add_le_ih_k_offset.exit.i.i.balance_leaf_insert_left.exit.i_crit_edge: ; preds = %add_le_ih_k_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_insert_left.exit.i

if.then62.i.i:                                    ; preds = %add_le_ih_k_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_insert_left, ptr noundef nonnull @.str.51, i32 noundef 335, ptr noundef nonnull @__func__.balance_leaf_insert_left, i32 noundef 0) #10
  unreachable

if.else68.i.i:                                    ; preds = %land.lhs.true.i.i164.if.else68.i.i_crit_edge, %if.then15.i.if.else68.i.i_crit_edge
  %lbytes72.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %304 = ptrtoint ptr %lbytes72.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %lbytes72.i.i, align 4
  %call73.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %sub.i.i, i32 noundef %305) #7
  %306 = ptrtoint ptr %bi.i.i156 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %tb, ptr %bi.i.i156, align 4
  %307 = ptrtoint ptr %L.i.i158 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %L.i.i158, align 4
  %309 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %217, align 4
  %FL.i135.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %310 = ptrtoint ptr %FL.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %FL.i135.i.i, align 4
  %312 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %311, ptr %218, align 4
  %313 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i138.i.i = getelementptr inbounds %struct.treepath, ptr %314, i32 0, i32 2
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %314, align 4
  %sub.i.i139.i.i = add i32 %316, -1
  %add.ptr.i.i140.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i138.i.i, i32 %sub.i.i139.i.i
  %pe_position.i.i141.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i138.i.i, i32 %sub.i.i139.i.i, i32 1
  %317 = ptrtoint ptr %pe_position.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %pe_position.i.i141.i.i, align 4
  %319 = ptrtoint ptr %add.ptr.i.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %add.ptr.i.i140.i.i, align 4
  %cmp.i.i142.i.i = icmp eq ptr %320, null
  %cmp10.i.i143.i.i = icmp eq ptr %311, null
  %or.cond157.i.i = select i1 %cmp.i.i142.i.i, i1 true, i1 %cmp10.i.i143.i.i
  br i1 %or.cond157.i.i, label %if.then.i.i145.i.i, label %do.end.i.i147.i.i

if.then.i.i145.i.i:                               ; preds = %if.else68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %311, i32 noundef 0, ptr noundef %320) #10
  unreachable

do.end.i.i147.i.i:                                ; preds = %if.else68.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp22.i.i146.i.i = icmp eq i32 %318, 0
  br i1 %cmp22.i.i146.i.i, label %if.then23.i.i151.i.i, label %if.else.i.i153.i.i

if.then23.i.i151.i.i:                             ; preds = %do.end.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_data.i.i148.i.i = getelementptr inbounds %struct.buffer_head, ptr %311, i32 0, i32 5
  %321 = ptrtoint ptr %b_data.i.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %b_data.i.i148.i.i, align 4
  %blk_nr_item.i.i149.i.i = getelementptr inbounds %struct.block_head, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %blk_nr_item.i.i149.i.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %blk_nr_item.i.i149.i.i, align 2
  %325 = tail call i16 @llvm.bswap.i16(i16 %324) #7
  %conv.i.i150.i.i = zext i16 %325 to i32
  br label %buffer_info_init_left.exit156.i.i

if.else.i.i153.i.i:                               ; preds = %do.end.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i152.i.i = add i32 %318, -1
  br label %buffer_info_init_left.exit156.i.i

buffer_info_init_left.exit156.i.i:                ; preds = %if.else.i.i153.i.i, %if.then23.i.i151.i.i
  %retval.0.i.i154.i.i = phi i32 [ %conv.i.i150.i.i, %if.then23.i.i151.i.i ], [ %sub26.i.i152.i.i, %if.else.i.i153.i.i ]
  %326 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %retval.0.i.i154.i.i, ptr %219, align 4
  %327 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %item_pos, align 4
  %add75.i.i = sub i32 %conv.i.i161, %call73.i.i
  %sub76.i.i = add i32 %add75.i.i, %328
  %329 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %zeroes_num, align 4
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i156, i32 noundef %sub76.i.i, ptr noundef %ih, ptr noundef %body, i32 noundef %330) #7
  %331 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %insert_size, align 4
  %332 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %zeroes_num, align 4
  br label %balance_leaf_insert_left.exit.i

balance_leaf_insert_left.exit.i:                  ; preds = %buffer_info_init_left.exit156.i.i, %add_le_ih_k_offset.exit.i.i.balance_leaf_insert_left.exit.i_crit_edge
  %body_shift_bytes.1.i.i = phi i32 [ 0, %buffer_info_init_left.exit156.i.i ], [ %body_shift_bytes.0.i.i, %add_le_ih_k_offset.exit.i.i.balance_leaf_insert_left.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i156) #7
  br label %balance_leaf_left.exit

if.else.i181:                                     ; preds = %do.body.i
  %sub.i35.i = add nsw i32 %215, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %sub.i35.i)
  %cmp.i36.i = icmp eq i32 %194, %sub.i35.i
  br i1 %cmp.i36.i, label %land.lhs.true.i38.i, label %if.else.i181.if.else.i.i186_crit_edge

if.else.i181.if.else.i.i186_crit_edge:            ; preds = %if.else.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i186

land.lhs.true.i38.i:                              ; preds = %if.else.i181
  %lbytes.i37.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %333 = ptrtoint ptr %lbytes.i37.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %lbytes.i37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %334)
  %cmp1.not.i.i = icmp eq i32 %334, -1
  br i1 %cmp1.not.i.i, label %land.lhs.true.i38.i.if.else.i.i186_crit_edge, label %if.then.i39.i

land.lhs.true.i38.i.if.else.i.i186_crit_edge:     ; preds = %land.lhs.true.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i186

if.then.i39.i:                                    ; preds = %land.lhs.true.i38.i
  %335 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %15, align 4
  %add.ptr.i.i.i182 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %336
  %337 = ptrtoint ptr %add.ptr.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %add.ptr.i.i.i182, align 4
  %L.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %339 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %L.i.i.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %340, i32 0, i32 5
  %341 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %b_data.i.i.i, align 4
  %blk_nr_item.i.i.i = getelementptr inbounds %struct.block_head, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %blk_nr_item.i.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %blk_nr_item.i.i.i, align 2
  %345 = tail call i16 @llvm.bswap.i16(i16 %344) #7
  %conv.i.i.i = zext i16 %345 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i) #7
  %346 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i, i32 0, i32 1
  %347 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i, i32 0, i32 2
  %348 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i, i32 0, i32 3
  %349 = call ptr @memset(ptr %bi.i.i.i, i32 255, i32 16)
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %338, i32 0, i32 5
  %350 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %351, i32 24
  %arrayidx.i.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i, i32 %194
  %ih_version.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 4
  %352 = ptrtoint ptr %ih_version.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %352, i32 2)
  %353 = load i16, ptr %ih_version.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %353)
  %cmp.i.i.i.i.i.i = icmp eq i16 %353, 0
  %u.i.i.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i.i, label %is_direntry_le_ih.exit.i.i.i, label %if.else.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i39.i
  %354 = ptrtoint ptr %u.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %354, i32 8)
  %355 = load i64, ptr %u.i.i.i.i.i.i, align 1
  %356 = and i64 %355, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %356)
  %phi.cmp1.i.i.i.i.i = icmp eq i64 %356, 48
  br i1 %phi.cmp1.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.then.i.i.i183_crit_edge, label %if.else.i.i.i.i.i.i.do.body.i.i.i_crit_edge

if.else.i.i.i.i.i.i.do.body.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

if.else.i.i.i.i.i.i.if.then.i.i.i183_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i183

is_direntry_le_ih.exit.i.i.i:                     ; preds = %if.then.i39.i
  %k_uniqueness.i.i.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i.i, i32 0, i32 1
  %357 = ptrtoint ptr %k_uniqueness.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %357, i32 4)
  %358 = load i32, ptr %k_uniqueness.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %358)
  %cond.i.i.i.i.i = icmp eq i32 %358, -201261056
  br i1 %cond.i.i.i.i.i, label %is_direntry_le_ih.exit.i.i.i.if.then.i.i.i183_crit_edge, label %is_direntry_le_ih.exit.i.i.i.do.body.i.i.i_crit_edge

is_direntry_le_ih.exit.i.i.i.do.body.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

is_direntry_le_ih.exit.i.i.i.if.then.i.i.i183_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i183

if.then.i.i.i183:                                 ; preds = %is_direntry_le_ih.exit.i.i.i.if.then.i.i.i183_crit_edge, %if.else.i.i.i.i.i.i.if.then.i.i.i183_crit_edge
  %359 = ptrtoint ptr %blk_nr_item.i.i.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %blk_nr_item.i.i.i, align 2
  %361 = tail call i16 @llvm.bswap.i16(i16 %360) #7
  %conv.i.i.i40.i = zext i16 %361 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i.i) #7
  %362 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i, i32 0, i32 1
  %363 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i, i32 0, i32 2
  %364 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i, i32 0, i32 3
  %365 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool.not.i.i.i.i = icmp eq i32 %366, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i43.i, label %if.then.i.i.i41.i

if.then.i.i.i41.i:                                ; preds = %if.then.i.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift_dirent, ptr noundef nonnull @.str.59, i32 noundef 359, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift_dirent) #10
  unreachable

do.end.i.i.i43.i:                                 ; preds = %if.then.i.i.i183
  %367 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %368)
  %cmp.i.i.i42.i = icmp sgt i32 %334, %368
  br i1 %cmp.i.i.i42.i, label %if.then2.i.i.i.i, label %if.else.i.i.i47.i

if.then2.i.i.i.i:                                 ; preds = %do.end.i.i.i43.i
  %sub.i.i.i44.i = add nsw i32 %334, -1
  %call.i.i.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %215, i32 noundef %sub.i.i.i44.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %if.then2.i.i.i.i.if.end22.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then2.i.i.i.i.if.end22.i.i.i.i_crit_edge:      ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then2.i.i.i.i
  %369 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool7.not.i.i.i.i = icmp eq i32 %370, 0
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end22.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end22.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %371 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %L.i.i.i, align 4
  %b_data13.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %372, i32 0, i32 5
  %373 = ptrtoint ptr %b_data13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %b_data13.i.i.i.i, align 4
  %blk_nr_item14.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %blk_nr_item14.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %blk_nr_item14.i.i.i.i, align 2
  %377 = tail call i16 @llvm.bswap.i16(i16 %376) #7
  %conv15.i.i.i.i = zext i16 %377 to i32
  %sub16.i.i.i.i = add nsw i32 %conv15.i.i.i.i, -1
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %374, i32 24
  %arrayidx.i.i.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i.i, i32 %sub16.i.i.i.i
  %u.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i.i, i32 0, i32 1
  %378 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %378, i32 2)
  %379 = load i16, ptr %u.i.i.i.i, align 1
  %380 = tail call i16 @llvm.bswap.i16(i16 %379) #7
  %conv18.i.i.i.i = zext i16 %380 to i32
  %381 = ptrtoint ptr %lbytes.i37.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %lbytes.i37.i, align 4
  %sub20.neg.i.i.i.i = add nsw i32 %368, 1
  %sub21.i.i.i.i = sub i32 %sub20.neg.i.i.i.i, %382
  %add.i.i.i45.i = add i32 %sub21.i.i.i.i, %conv18.i.i.i.i
  br label %if.end22.i.i.i.i

if.end22.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i, %land.lhs.true.i.i.i.i.if.end22.i.i.i.i_crit_edge, %if.then2.i.i.i.i.if.end22.i.i.i.i_crit_edge
  %l_pos_in_item.0.i.i.i.i = phi i32 [ %368, %land.lhs.true.i.i.i.i.if.end22.i.i.i.i_crit_edge ], [ %add.i.i.i45.i, %if.then8.i.i.i.i ], [ %368, %if.then2.i.i.i.i.if.end22.i.i.i.i_crit_edge ]
  %383 = ptrtoint ptr %bi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %tb, ptr %bi.i.i.i.i, align 4
  %384 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %L.i.i.i, align 4
  %386 = ptrtoint ptr %362 to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %385, ptr %362, align 4
  %FL.i.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %387 = ptrtoint ptr %FL.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %FL.i.i.i.i.i, align 4
  %389 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %388, ptr %363, align 4
  %390 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i.i.i = getelementptr inbounds %struct.treepath, ptr %391, i32 0, i32 2
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %391, align 4
  %sub.i.i.i.i.i.i = add i32 %393, -1
  %add.ptr.i.i1.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i.i, i32 %sub.i.i.i.i.i.i
  %pe_position.i.i.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i.i, i32 %sub.i.i.i.i.i.i, i32 1
  %394 = ptrtoint ptr %pe_position.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %pe_position.i.i.i.i.i.i, align 4
  %396 = ptrtoint ptr %add.ptr.i.i1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %add.ptr.i.i1.i.i.i.i, align 4
  %cmp.i.i.i1.i.i.i = icmp eq ptr %397, null
  %cmp10.i.i.i.i.i.i = icmp eq ptr %388, null
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i1.i.i.i, i1 true, i1 %cmp10.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then.i.i.i2.i.i.i, label %do.end.i.i.i.i.i.i

if.then.i.i.i2.i.i.i:                             ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %388, i32 noundef 0, ptr noundef %397) #10
  unreachable

do.end.i.i.i.i.i.i:                               ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %cmp22.i.i.i.i.i.i = icmp eq i32 %395, 0
  br i1 %cmp22.i.i.i.i.i.i, label %if.then23.i.i.i.i.i.i, label %if.else.i.i.i3.i.i.i

if.then23.i.i.i.i.i.i:                            ; preds = %do.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_data.i.i2.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %388, i32 0, i32 5
  %398 = ptrtoint ptr %b_data.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %b_data.i.i2.i.i.i.i, align 4
  %blk_nr_item.i.i.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %399, i32 0, i32 1
  %400 = ptrtoint ptr %blk_nr_item.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %blk_nr_item.i.i.i.i.i.i, align 2
  %402 = tail call i16 @llvm.bswap.i16(i16 %401) #7
  %conv.i.i.i.i.i.i = zext i16 %402 to i32
  br label %buffer_info_init_left.exit.i.i.i.i

if.else.i.i.i3.i.i.i:                             ; preds = %do.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i.i.i.i.i = add i32 %395, -1
  br label %buffer_info_init_left.exit.i.i.i.i

buffer_info_init_left.exit.i.i.i.i:               ; preds = %if.else.i.i.i3.i.i.i, %if.then23.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i.i, %if.then23.i.i.i.i.i.i ], [ %sub26.i.i.i.i.i.i, %if.else.i.i.i3.i.i.i ]
  %403 = ptrtoint ptr %364 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %retval.0.i.i.i.i.i.i, ptr %364, align 4
  %404 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %item_pos, align 4
  %add24.i.i.i.i = sub i32 %conv.i.i.i40.i, %call.i.i.i.i
  %sub25.i.i.i.i = add i32 %405, %add24.i.i.i.i
  %406 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %insert_size, align 4
  %408 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i.i, i32 noundef %sub25.i.i.i.i, i32 noundef %l_pos_in_item.0.i.i.i.i, i32 noundef %407, ptr noundef %body, i32 noundef %409) #7
  %410 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %item_pos, align 4
  %sub30.i.i.i.i = add i32 %411, %add24.i.i.i.i
  %add.ptr.i.i.i46.i = getelementptr i8, ptr %body, i32 16
  %412 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i.i.i.i, i32 noundef %sub30.i.i.i.i, i32 noundef %l_pos_in_item.0.i.i.i.i, i32 noundef 1, ptr noundef %body, ptr noundef %add.ptr.i.i.i46.i, i32 noundef %413) #7
  %414 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %insert_size, align 4
  br label %balance_leaf_paste_left_shift_dirent.exit.i.i.i

if.else.i.i.i47.i:                                ; preds = %do.end.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i.i.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %215, i32 noundef %334) #7
  br label %balance_leaf_paste_left_shift_dirent.exit.i.i.i

balance_leaf_paste_left_shift_dirent.exit.i.i.i:  ; preds = %if.else.i.i.i47.i, %buffer_info_init_left.exit.i.i.i.i
  %415 = ptrtoint ptr %lbytes.i37.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %lbytes.i37.i, align 4
  %417 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %pos_in_item11, align 8
  %sub42.i.i.i.i = sub i32 %418, %416
  store i32 %sub42.i.i.i.i, ptr %pos_in_item11, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i.i) #7
  br label %balance_leaf_paste_left_shift.exit.i.i

do.body.i.i.i:                                    ; preds = %is_direntry_le_ih.exit.i.i.i.do.body.i.i.i_crit_edge, %if.else.i.i.i.i.i.i.do.body.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %334)
  %cmp.i.i.i184 = icmp slt i32 %334, 1
  br i1 %cmp.i.i.i184, label %if.then4.i.i.i, label %do.body7.i.i.i

if.then4.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.52, i32 noundef 429, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, i32 noundef %334) #10
  unreachable

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  %419 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %pos_in_item11, align 8
  %ih_item_len.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  %421 = ptrtoint ptr %ih_item_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %421, i32 2)
  %422 = load i16, ptr %ih_item_len.i.i.i, align 1
  %423 = tail call i16 @llvm.bswap.i16(i16 %422) #7
  %conv10.i.i.i = zext i16 %423 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %420, i32 %conv10.i.i.i)
  %cmp11.not.i.i.i = icmp eq i32 %420, %conv10.i.i.i
  br i1 %cmp11.not.i.i.i, label %do.end21.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.53, i32 noundef 433, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, i32 noundef %conv10.i.i.i, i32 noundef %420) #10
  unreachable

do.end21.i.i.i:                                   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %420, i32 %334)
  %cmp24.not.i.i.i = icmp sgt i32 %420, %334
  br i1 %cmp24.not.i.i.i, label %if.else139.i.i.i, label %if.then26.i.i.i

if.then26.i.i.i:                                  ; preds = %do.end21.i.i.i
  %sub.i.i.i185 = sub i32 %334, %420
  %sub33.i.i.i = sub i32 %13, %sub.i.i.i185
  %424 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %sub33.i.i.i, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub33.i.i.i)
  %cmp37.i.i.i = icmp slt i32 %sub33.i.i.i, 1
  br i1 %cmp37.i.i.i, label %if.then39.i.i.i, label %do.end44.i.i.i

if.then39.i.i.i:                                  ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.54, i32 noundef 456, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, i32 noundef %sub33.i.i.i) #10
  unreachable

do.end44.i.i.i:                                   ; preds = %if.then26.i.i.i
  %425 = ptrtoint ptr %ih_item_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %425, i32 2)
  %426 = load i16, ptr %ih_item_len.i.i.i, align 1
  %427 = tail call i16 @llvm.bswap.i16(i16 %426) #7
  %conv47.i.i.i = zext i16 %427 to i32
  %call48.i.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %215, i32 noundef %conv47.i.i.i) #7
  %428 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %L.i.i.i, align 4
  %430 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %item_pos, align 4
  %add.i.i.i = sub i32 %conv.i.i.i, %call48.i.i.i
  %sub52.i.i.i = add i32 %431, %add.i.i.i
  %b_data.i.i15.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %429, i32 0, i32 5
  %432 = ptrtoint ptr %b_data.i.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %b_data.i.i15.i.i.i, align 4
  %add.ptr.i.i16.i.i.i = getelementptr i8, ptr %433, i32 24
  %arrayidx.i17.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i16.i.i.i, i32 %sub52.i.i.i
  %434 = ptrtoint ptr %bi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %tb, ptr %bi.i.i.i, align 4
  %435 = ptrtoint ptr %346 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %429, ptr %346, align 4
  %FL.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %436 = ptrtoint ptr %FL.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %FL.i.i.i.i, align 4
  %438 = ptrtoint ptr %347 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %437, ptr %347, align 4
  %439 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i.i = getelementptr inbounds %struct.treepath, ptr %440, i32 0, i32 2
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %440, align 4
  %sub.i.i.i.i.i = add i32 %442, -1
  %add.ptr.i.i19.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i, i32 %sub.i.i.i.i.i
  %pe_position.i.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i, i32 %sub.i.i.i.i.i, i32 1
  %443 = ptrtoint ptr %pe_position.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %pe_position.i.i.i.i.i, align 4
  %445 = ptrtoint ptr %add.ptr.i.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %add.ptr.i.i19.i.i.i, align 4
  %cmp.i.i.i.i48.i = icmp eq ptr %446, null
  %cmp10.i.i.i.i.i = icmp eq ptr %437, null
  %or.cond.i.i.i = select i1 %cmp.i.i.i.i48.i, i1 true, i1 %cmp10.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.i.i, label %do.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %437, i32 noundef 0, ptr noundef %446) #10
  unreachable

do.end.i.i.i.i.i:                                 ; preds = %do.end44.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %cmp22.i.i.i.i.i = icmp eq i32 %444, 0
  br i1 %cmp22.i.i.i.i.i, label %if.then23.i.i.i.i.i, label %if.else.i.i.i.i49.i

if.then23.i.i.i.i.i:                              ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_data.i.i20.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %437, i32 0, i32 5
  %447 = ptrtoint ptr %b_data.i.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %b_data.i.i20.i.i.i, align 4
  %blk_nr_item.i.i.i.i.i = getelementptr inbounds %struct.block_head, ptr %448, i32 0, i32 1
  %449 = ptrtoint ptr %blk_nr_item.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %blk_nr_item.i.i.i.i.i, align 2
  %451 = tail call i16 @llvm.bswap.i16(i16 %450) #7
  %conv.i.i.i.i.i = zext i16 %451 to i32
  br label %buffer_info_init_left.exit.i.i.i

if.else.i.i.i.i49.i:                              ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i.i.i.i = add i32 %444, -1
  br label %buffer_info_init_left.exit.i.i.i

buffer_info_init_left.exit.i.i.i:                 ; preds = %if.else.i.i.i.i49.i, %if.then23.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i, %if.then23.i.i.i.i.i ], [ %sub26.i.i.i.i.i, %if.else.i.i.i.i49.i ]
  %452 = ptrtoint ptr %348 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %retval.0.i.i.i.i.i, ptr %348, align 4
  %ih_item_len57.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i17.i.i.i, i32 0, i32 2
  %453 = ptrtoint ptr %ih_item_len57.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %453, i32 2)
  %454 = load i16, ptr %ih_item_len57.i.i.i, align 1
  %455 = tail call i16 @llvm.bswap.i16(i16 %454) #7
  %conv58.i.i.i = zext i16 %455 to i32
  %456 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %zeroes_num, align 4
  %458 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i185, i32 %457) #7
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i, i32 noundef %sub52.i.i.i, i32 noundef %conv58.i.i.i, i32 noundef %sub.i.i.i185, ptr noundef %body, i32 noundef %458) #7
  %ih_item_len62.i.i.i = getelementptr i8, ptr %351, i32 42
  %459 = ptrtoint ptr %ih_item_len62.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %459, i32 2)
  %460 = load i16, ptr %ih_item_len62.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %460)
  %tobool63.not.i.i.i = icmp eq i16 %460, 0
  br i1 %tobool63.not.i.i.i, label %do.body68.i.i.i, label %if.then64.i.i.i

if.then64.i.i.i:                                  ; preds = %buffer_info_init_left.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.55, i32 noundef 476, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift) #10
  unreachable

do.body68.i.i.i:                                  ; preds = %buffer_info_init_left.exit.i.i.i
  %461 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %L.i.i.i, align 4
  %463 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %item_pos, align 4
  %sub73.i.i.i = add i32 %464, %add.i.i.i
  %b_data.i.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %462, i32 0, i32 5
  %465 = ptrtoint ptr %b_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %b_data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i21.i.i.i = getelementptr i8, ptr %466, i32 24
  %arrayidx.i.i22.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i21.i.i.i, i32 %sub73.i.i.i
  %call75.i.i.i = call i32 @comp_short_le_keys(ptr noundef %add.ptr.i.i.i.i.i, ptr noundef %arrayidx.i.i22.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i.i)
  %tobool76.not.i.i.i = icmp eq i32 %call75.i.i.i, 0
  br i1 %tobool76.not.i.i.i, label %do.end80.i.i.i, label %if.then77.i.i.i

if.then77.i.i.i:                                  ; preds = %do.body68.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.56, i32 noundef 479, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift) #10
  unreachable

do.end80.i.i.i:                                   ; preds = %do.body68.i.i.i
  %ih_version.i23.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i17.i.i.i, i32 0, i32 4
  %467 = ptrtoint ptr %ih_version.i23.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 2)
  %468 = load i16, ptr %ih_version.i23.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp.i.i.i24.i.i.i = icmp eq i16 %468, 0
  %u.i.i.i25.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i17.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i24.i.i.i, label %is_indirect_le_ih.exit.i.i.i, label %if.else.i.i.i30.i.i.i

if.else.i.i.i30.i.i.i:                            ; preds = %do.end80.i.i.i
  %469 = ptrtoint ptr %u.i.i.i25.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %469, i32 8)
  %470 = load i64, ptr %u.i.i.i25.i.i.i, align 1
  %471 = and i64 %470, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %471)
  %phi.cmp1.i.i29.i.i.i = icmp eq i64 %471, 16
  br i1 %phi.cmp1.i.i29.i.i.i, label %if.else.i.i.i30.i.i.i.if.then83.i.i.i_crit_edge, label %if.else.i.i.i30.i.i.i.if.end86.i.i.i_crit_edge

if.else.i.i.i30.i.i.i.if.end86.i.i.i_crit_edge:   ; preds = %if.else.i.i.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i.i.i

if.else.i.i.i30.i.i.i.if.then83.i.i.i_crit_edge:  ; preds = %if.else.i.i.i30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i.i.i

is_indirect_le_ih.exit.i.i.i:                     ; preds = %do.end80.i.i.i
  %k_uniqueness.i.i.i26.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i25.i.i.i, i32 0, i32 1
  %472 = ptrtoint ptr %k_uniqueness.i.i.i26.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %472, i32 4)
  %473 = load i32, ptr %k_uniqueness.i.i.i26.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %473)
  %cond.i.i27.i.i.i = icmp eq i32 %473, -16777217
  br i1 %cond.i.i27.i.i.i, label %is_indirect_le_ih.exit.i.i.i.if.then83.i.i.i_crit_edge, label %is_indirect_le_ih.exit.i.i.i.if.end86.i.i.i_crit_edge

is_indirect_le_ih.exit.i.i.i.if.end86.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i.i.i

is_indirect_le_ih.exit.i.i.i.if.then83.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i.i.i

if.then83.i.i.i:                                  ; preds = %is_indirect_le_ih.exit.i.i.i.if.then83.i.i.i_crit_edge, %if.else.i.i.i30.i.i.i.if.then83.i.i.i_crit_edge
  %474 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i.i = getelementptr inbounds %struct.super_block, ptr %475, i32 0, i32 2
  %476 = ptrtoint ptr %s_blocksize_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %s_blocksize_bits.i.i.i, align 4
  %conv84.i.i.i = zext i8 %477 to i32
  %sub85.i.i.i = add nsw i32 %conv84.i.i.i, -2
  %shl.i.i.i = shl i32 %sub.i.i.i185, %sub85.i.i.i
  br label %if.end86.i.i.i

if.end86.i.i.i:                                   ; preds = %if.then83.i.i.i, %is_indirect_le_ih.exit.i.i.i.if.end86.i.i.i_crit_edge, %if.else.i.i.i30.i.i.i.if.end86.i.i.i_crit_edge
  %temp_l.0.i.i.i = phi i32 [ %shl.i.i.i, %if.then83.i.i.i ], [ %sub.i.i.i185, %is_indirect_le_ih.exit.i.i.i.if.end86.i.i.i_crit_edge ], [ %sub.i.i.i185, %if.else.i.i.i30.i.i.i.if.end86.i.i.i_crit_edge ]
  %ih_version.i.i50.i = getelementptr i8, ptr %351, i32 46
  %478 = ptrtoint ptr %ih_version.i.i50.i to i32
  call void @__asan_loadN_noabort(i32 %478, i32 2)
  %479 = load i16, ptr %ih_version.i.i50.i, align 1
  %conv89.i.i.i = sext i32 %temp_l.0.i.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %479)
  %cmp.i.i33.i.i.i = icmp eq i16 %479, 0
  %u.i.i.i.i51.i = getelementptr i8, ptr %351, i32 32
  br i1 %cmp.i.i33.i.i.i, label %if.then.i.i34.i.i.i, label %if.else.i.i36.i.i.i

if.then.i.i34.i.i.i:                              ; preds = %if.end86.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %480 = ptrtoint ptr %u.i.i.i.i51.i to i32
  call void @__asan_loadN_noabort(i32 %480, i32 4)
  %481 = load i32, ptr %u.i.i.i.i51.i, align 1
  %482 = call i32 @llvm.bswap.i32(i32 %481) #7
  %conv.i4.i.i.i52.i = add i32 %482, %temp_l.0.i.i.i
  %483 = call i32 @llvm.bswap.i32(i32 %conv.i4.i.i.i52.i) #7
  %484 = ptrtoint ptr %u.i.i.i.i51.i to i32
  call void @__asan_storeN_noabort(i32 %484, i32 4)
  store i32 %483, ptr %u.i.i.i.i51.i, align 1
  br label %add_le_key_k_offset.exit.i.i.i

if.else.i.i36.i.i.i:                              ; preds = %if.end86.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %485 = ptrtoint ptr %u.i.i.i.i51.i to i32
  call void @__asan_loadN_noabort(i32 %485, i32 8)
  %486 = load i64, ptr %u.i.i.i.i51.i, align 1
  %487 = and i64 %486, -241
  %488 = call i64 @llvm.bswap.i64(i64 %487) #7
  %add.i35.i.i.i = add nsw i64 %488, %conv89.i.i.i
  %and.i.i.i.i.i53.i = and i64 %add.i35.i.i.i, 1152921504606846975
  %and1.i.i.i.i.i54.i = and i64 %486, 240
  %489 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i53.i) #7
  %or.i.i.i.i.i55.i = or i64 %489, %and1.i.i.i.i.i54.i
  %490 = ptrtoint ptr %u.i.i.i.i51.i to i32
  call void @__asan_storeN_noabort(i32 %490, i32 8)
  store i64 %or.i.i.i.i.i55.i, ptr %u.i.i.i.i51.i, align 1
  br label %add_le_key_k_offset.exit.i.i.i

add_le_key_k_offset.exit.i.i.i:                   ; preds = %if.else.i.i36.i.i.i, %if.then.i.i34.i.i.i
  %CFL.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %491 = ptrtoint ptr %CFL.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %CFL.i.i.i, align 4
  %lkey.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %493 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %lkey.i.i.i, align 4
  %b_data.i.i37.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %492, i32 0, i32 5
  %495 = ptrtoint ptr %b_data.i.i37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %b_data.i.i37.i.i.i, align 4
  %add.ptr.i.i38.i.i.i = getelementptr i8, ptr %496, i32 24
  %arrayidx.i39.i.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i38.i.i.i, i32 %494
  %u.i.i41.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i39.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i33.i.i.i, label %if.then.i.i43.i.i.i, label %if.else.i.i48.i.i.i

if.then.i.i43.i.i.i:                              ; preds = %add_le_key_k_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %497 = ptrtoint ptr %u.i.i41.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %497, i32 4)
  %498 = load i32, ptr %u.i.i41.i.i.i, align 1
  %499 = call i32 @llvm.bswap.i32(i32 %498) #7
  %conv.i4.i42.i.i.i = add i32 %499, %temp_l.0.i.i.i
  %500 = call i32 @llvm.bswap.i32(i32 %conv.i4.i42.i.i.i) #7
  %501 = ptrtoint ptr %u.i.i41.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %501, i32 4)
  store i32 %500, ptr %u.i.i41.i.i.i, align 1
  br label %add_le_key_k_offset.exit49.i.i.i

if.else.i.i48.i.i.i:                              ; preds = %add_le_key_k_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %502 = ptrtoint ptr %u.i.i41.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %502, i32 8)
  %503 = load i64, ptr %u.i.i41.i.i.i, align 1
  %504 = and i64 %503, -241
  %505 = call i64 @llvm.bswap.i64(i64 %504) #7
  %add.i44.i.i.i = add nsw i64 %505, %conv89.i.i.i
  %and.i.i.i45.i.i.i = and i64 %add.i44.i.i.i, 1152921504606846975
  %and1.i.i.i46.i.i.i = and i64 %503, 240
  %506 = call i64 @llvm.bswap.i64(i64 %and.i.i.i45.i.i.i) #7
  %or.i.i.i47.i.i.i = or i64 %506, %and1.i.i.i46.i.i.i
  %507 = ptrtoint ptr %u.i.i41.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %507, i32 8)
  store i64 %or.i.i.i47.i.i.i, ptr %u.i.i41.i.i.i, align 1
  br label %add_le_key_k_offset.exit49.i.i.i

add_le_key_k_offset.exit49.i.i.i:                 ; preds = %if.else.i.i48.i.i.i, %if.then.i.i43.i.i.i
  %508 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i185, i32 %509)
  %cmp95.i.i.i = icmp sgt i32 %sub.i.i.i185, %509
  %sub102.i.i.i = sub i32 %509, %sub.i.i.i185
  %sub99.i.i.i = sub i32 %sub.i.i.i185, %509
  %storemerge.i.i.i = select i1 %cmp95.i.i.i, i32 0, i32 %sub102.i.i.i
  %body_shift_bytes.0.i.i.i = select i1 %cmp95.i.i.i, i32 %sub99.i.i.i, i32 0
  %510 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %storemerge.i.i.i, ptr %zeroes_num, align 4
  %511 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 0, ptr %pos_in_item11, align 8
  %512 = ptrtoint ptr %L.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %L.i.i.i, align 4
  %b_data111.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %513, i32 0, i32 5
  %514 = ptrtoint ptr %b_data111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %b_data111.i.i.i, align 4
  %blk_nr_item112.i.i.i = getelementptr inbounds %struct.block_head, ptr %515, i32 0, i32 1
  %516 = ptrtoint ptr %blk_nr_item112.i.i.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %blk_nr_item112.i.i.i, align 2
  %518 = call i16 @llvm.bswap.i16(i16 %517) #7
  %conv113.i.i.i = zext i16 %518 to i32
  %sub114.i.i.i = add nsw i32 %conv113.i.i.i, -1
  %add.ptr.i.i.i51.i.i.i = getelementptr i8, ptr %515, i32 24
  %arrayidx.i.i52.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i51.i.i.i, i32 %sub114.i.i.i
  %call116.i.i.i = call i32 @comp_short_le_keys(ptr noundef %add.ptr.i.i.i.i.i, ptr noundef %arrayidx.i.i52.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i.i.i)
  %tobool117.not.i.i.i = icmp eq i32 %call116.i.i.i, 0
  br i1 %tobool117.not.i.i.i, label %lor.lhs.false.i.i.i, label %add_le_key_k_offset.exit49.i.i.i.if.then135.i.i.i_crit_edge

add_le_key_k_offset.exit49.i.i.i.if.then135.i.i.i_crit_edge: ; preds = %add_le_key_k_offset.exit49.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %add_le_key_k_offset.exit49.i.i.i
  %519 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %add.ptr.i.i.i54.i.i.i = getelementptr i8, ptr %520, i32 24
  %u.i55.i.i.i = getelementptr i8, ptr %520, i32 32
  %521 = ptrtoint ptr %u.i55.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %521, i32 8)
  %522 = load i64, ptr %u.i55.i.i.i, align 1
  %523 = trunc i64 %522 to i32
  %524 = lshr i32 %523, 4
  %conv1.i.i.i.i.i = and i32 %524, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i.i.i)
  %cmp.i.i56.i.i.i = icmp ult i32 %conv1.i.i.i.i.i, 4
  %phi.cast.i.i.i.i.i = trunc i32 %conv1.i.i.i.i.i to i16
  %525 = add nsw i16 %phi.cast.i.i.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %525)
  %switch9.i.i.i.i = icmp ult i16 %525, -3
  %not.cmp.i.i56.i.i.i = xor i1 %cmp.i.i56.i.i.i, true
  %switch.i.i.i.i = select i1 %not.cmp.i.i56.i.i.i, i1 true, i1 %switch9.i.i.i.i
  br i1 %switch.i.i.i.i, label %if.then.i61.i.i.i, label %if.else.i64.i.i.i

if.then.i61.i.i.i:                                ; preds = %lor.lhs.false.i.i.i
  %k_uniqueness.i.i.i.i = getelementptr i8, ptr %520, i32 36
  %526 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %526, i32 4)
  %527 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  %528 = call i32 @llvm.bswap.i32(i32 %527) #7
  %529 = zext i32 %528 to i64
  call void @__sanitizer_cov_trace_switch(i64 %529, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %528, label %sw.default.i.i.i.i.i [
    i32 0, label %if.then.i61.i.i.i.le_key_k_type.exit.i.i.i_crit_edge
    i32 -2, label %sw.bb1.i.i.i.i.i
    i32 -1, label %sw.bb2.i.i.i.i.i
    i32 500, label %sw.bb3.i.i.i.i.i
  ]

if.then.i61.i.i.i.le_key_k_type.exit.i.i.i_crit_edge: ; preds = %if.then.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i.i.i

sw.bb1.i.i.i.i.i:                                 ; preds = %if.then.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i.i.i

sw.bb2.i.i.i.i.i:                                 ; preds = %if.then.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i.i.i

sw.bb3.i.i.i.i.i:                                 ; preds = %if.then.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i.i.i

sw.default.i.i.i.i.i:                             ; preds = %if.then.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i.i.i

if.else.i64.i.i.i:                                ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i.i.i.i = select i1 %cmp.i.i56.i.i.i, i32 %conv1.i.i.i.i.i, i32 15
  br label %le_key_k_type.exit.i.i.i

le_key_k_type.exit.i.i.i:                         ; preds = %if.else.i64.i.i.i, %sw.default.i.i.i.i.i, %sw.bb3.i.i.i.i.i, %sw.bb2.i.i.i.i.i, %sw.bb1.i.i.i.i.i, %if.then.i61.i.i.i.le_key_k_type.exit.i.i.i_crit_edge
  %retval.0.in.i.i.i.i = phi i32 [ %narrow.i.i.i.i, %if.else.i64.i.i.i ], [ 15, %sw.default.i.i.i.i.i ], [ 3, %sw.bb3.i.i.i.i.i ], [ 2, %sw.bb2.i.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i.i ], [ %528, %if.then.i61.i.i.i.le_key_k_type.exit.i.i.i_crit_edge ]
  %arrayidx122.i.i.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i.i.i
  %530 = ptrtoint ptr %arrayidx122.i.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx122.i.i.i, align 4
  %is_left_mergeable.i.i.i = getelementptr inbounds %struct.item_operations, ptr %531, i32 0, i32 2
  %532 = ptrtoint ptr %is_left_mergeable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %is_left_mergeable.i.i.i, align 4
  %b_size.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %338, i32 0, i32 4
  %534 = ptrtoint ptr %b_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %b_size.i.i.i, align 8
  %call124.i.i.i = call i32 %533(ptr noundef %add.ptr.i.i.i54.i.i.i, i32 noundef %535) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i.i.i)
  %tobool125.not.i.i.i = icmp eq i32 %call124.i.i.i, 0
  br i1 %tobool125.not.i.i.i, label %le_key_k_type.exit.i.i.i.if.then135.i.i.i_crit_edge, label %lor.lhs.false126.i.i.i

le_key_k_type.exit.i.i.i.if.then135.i.i.i_crit_edge: ; preds = %le_key_k_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135.i.i.i

lor.lhs.false126.i.i.i:                           ; preds = %le_key_k_type.exit.i.i.i
  %536 = ptrtoint ptr %u.i.i41.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %536, i32 8)
  %537 = load i64, ptr %u.i.i41.i.i.i, align 1
  %538 = trunc i64 %537 to i32
  %539 = lshr i32 %538, 4
  %conv1.i.i68.i.i.i = and i32 %539, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i68.i.i.i)
  %cmp.i.i69.i.i.i = icmp ult i32 %conv1.i.i68.i.i.i, 4
  %phi.cast.i.i70.i.i.i = trunc i32 %conv1.i.i68.i.i.i to i16
  %540 = add nsw i16 %phi.cast.i.i70.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %540)
  %switch9.i72.i.i.i = icmp ult i16 %540, -3
  %not.cmp.i.i69.i.i.i = xor i1 %cmp.i.i69.i.i.i, true
  %switch.i73.i.i.i = select i1 %not.cmp.i.i69.i.i.i, i1 true, i1 %switch9.i72.i.i.i
  br i1 %switch.i73.i.i.i, label %if.then.i78.i.i.i, label %if.else.i86.i.i.i

if.then.i78.i.i.i:                                ; preds = %lor.lhs.false126.i.i.i
  %k_uniqueness.i77.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i41.i.i.i, i32 0, i32 1
  %541 = ptrtoint ptr %k_uniqueness.i77.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %541, i32 4)
  %542 = load i32, ptr %k_uniqueness.i77.i.i.i, align 1
  %543 = call i32 @llvm.bswap.i32(i32 %542) #7
  %544 = zext i32 %543 to i64
  call void @__sanitizer_cov_trace_switch(i64 %544, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %543, label %sw.default.i.i82.i.i.i [
    i32 0, label %if.then.i78.i.i.i.le_key_k_type.exit89.i.i.i_crit_edge
    i32 -2, label %sw.bb1.i.i79.i.i.i
    i32 -1, label %sw.bb2.i.i80.i.i.i
    i32 500, label %sw.bb3.i.i81.i.i.i
  ]

if.then.i78.i.i.i.le_key_k_type.exit89.i.i.i_crit_edge: ; preds = %if.then.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit89.i.i.i

sw.bb1.i.i79.i.i.i:                               ; preds = %if.then.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit89.i.i.i

sw.bb2.i.i80.i.i.i:                               ; preds = %if.then.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit89.i.i.i

sw.bb3.i.i81.i.i.i:                               ; preds = %if.then.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit89.i.i.i

sw.default.i.i82.i.i.i:                           ; preds = %if.then.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit89.i.i.i

if.else.i86.i.i.i:                                ; preds = %lor.lhs.false126.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i85.i.i.i = select i1 %cmp.i.i69.i.i.i, i32 %conv1.i.i68.i.i.i, i32 15
  br label %le_key_k_type.exit89.i.i.i

le_key_k_type.exit89.i.i.i:                       ; preds = %if.else.i86.i.i.i, %sw.default.i.i82.i.i.i, %sw.bb3.i.i81.i.i.i, %sw.bb2.i.i80.i.i.i, %sw.bb1.i.i79.i.i.i, %if.then.i78.i.i.i.le_key_k_type.exit89.i.i.i_crit_edge
  %retval.0.in.i87.i.i.i = phi i32 [ %narrow.i85.i.i.i, %if.else.i86.i.i.i ], [ 15, %sw.default.i.i82.i.i.i ], [ 3, %sw.bb3.i.i81.i.i.i ], [ 2, %sw.bb2.i.i80.i.i.i ], [ 1, %sw.bb1.i.i79.i.i.i ], [ %543, %if.then.i78.i.i.i.le_key_k_type.exit89.i.i.i_crit_edge ]
  %arrayidx130.i.i.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i87.i.i.i
  %545 = ptrtoint ptr %arrayidx130.i.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %arrayidx130.i.i.i, align 4
  %is_left_mergeable131.i.i.i = getelementptr inbounds %struct.item_operations, ptr %546, i32 0, i32 2
  %547 = ptrtoint ptr %is_left_mergeable131.i.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %is_left_mergeable131.i.i.i, align 4
  %549 = ptrtoint ptr %b_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %b_size.i.i.i, align 8
  %call133.i.i.i = call i32 %548(ptr noundef %arrayidx.i39.i.i.i, i32 noundef %550) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i.i.i)
  %tobool134.not.i.i.i = icmp eq i32 %call133.i.i.i, 0
  br i1 %tobool134.not.i.i.i, label %le_key_k_type.exit89.i.i.i.if.then135.i.i.i_crit_edge, label %le_key_k_type.exit89.i.i.i.balance_leaf_paste_left_shift.exit.i.i_crit_edge

le_key_k_type.exit89.i.i.i.balance_leaf_paste_left_shift.exit.i.i_crit_edge: ; preds = %le_key_k_type.exit89.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_left_shift.exit.i.i

le_key_k_type.exit89.i.i.i.if.then135.i.i.i_crit_edge: ; preds = %le_key_k_type.exit89.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135.i.i.i

if.then135.i.i.i:                                 ; preds = %le_key_k_type.exit89.i.i.i.if.then135.i.i.i_crit_edge, %le_key_k_type.exit.i.i.i.if.then135.i.i.i_crit_edge, %add_le_key_k_offset.exit49.i.i.i.if.then135.i.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.57, i32 noundef 510, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift) #10
  unreachable

if.else139.i.i.i:                                 ; preds = %do.end21.i.i.i
  %sub142.i.i.i = sub i32 %420, %334
  %551 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %sub142.i.i.i, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub142.i.i.i)
  %cmp145.i.i.i = icmp slt i32 %sub142.i.i.i, 1
  br i1 %cmp145.i.i.i, label %if.then147.i.i.i, label %do.end151.i.i.i

if.then147.i.i.i:                                 ; preds = %if.else139.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, ptr noundef nonnull @.str.58, i32 noundef 519, ptr noundef nonnull @__func__.balance_leaf_paste_left_shift, i32 noundef %sub142.i.i.i) #10
  unreachable

do.end151.i.i.i:                                  ; preds = %if.else139.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call155.i.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %215, i32 noundef %334) #7
  br label %balance_leaf_paste_left_shift.exit.i.i

balance_leaf_paste_left_shift.exit.i.i:           ; preds = %do.end151.i.i.i, %le_key_k_type.exit89.i.i.i.balance_leaf_paste_left_shift.exit.i.i_crit_edge, %balance_leaf_paste_left_shift_dirent.exit.i.i.i
  %retval.0.i.i.i = phi i32 [ 0, %balance_leaf_paste_left_shift_dirent.exit.i.i.i ], [ 0, %do.end151.i.i.i ], [ %body_shift_bytes.0.i.i.i, %le_key_k_type.exit89.i.i.i.balance_leaf_paste_left_shift.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i) #7
  br label %balance_leaf_left.exit

if.else.i.i186:                                   ; preds = %land.lhs.true.i38.i.if.else.i.i186_crit_edge, %if.else.i181.if.else.i.i186_crit_edge
  %552 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %15, align 4
  %add.ptr.i4.i.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %553
  %554 = ptrtoint ptr %add.ptr.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %add.ptr.i4.i.i, align 4
  %L.i5.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %556 = ptrtoint ptr %L.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %L.i5.i.i, align 4
  %b_data.i6.i.i = getelementptr inbounds %struct.buffer_head, ptr %557, i32 0, i32 5
  %558 = ptrtoint ptr %b_data.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %b_data.i6.i.i, align 4
  %blk_nr_item.i7.i.i = getelementptr inbounds %struct.block_head, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %blk_nr_item.i7.i.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %blk_nr_item.i7.i.i, align 2
  %562 = tail call i16 @llvm.bswap.i16(i16 %561) #7
  %conv.i8.i.i = zext i16 %562 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i1.i.i) #7
  %563 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i, i32 0, i32 1
  %564 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i, i32 0, i32 2
  %565 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i.i.i = icmp eq i32 %194, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.else.i.i186.if.end19.i.i.i_crit_edge

if.else.i.i186.if.end19.i.i.i_crit_edge:          ; preds = %if.else.i.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i186
  %b_data.i.i.i.i10.i.i = getelementptr inbounds %struct.buffer_head, ptr %555, i32 0, i32 5
  %566 = ptrtoint ptr %b_data.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %b_data.i.i.i.i10.i.i, align 4
  %add.ptr.i.i.i.i11.i.i = getelementptr i8, ptr %567, i32 24
  %u.i.i12.i.i = getelementptr i8, ptr %567, i32 32
  %568 = ptrtoint ptr %u.i.i12.i.i to i32
  call void @__asan_loadN_noabort(i32 %568, i32 8)
  %569 = load i64, ptr %u.i.i12.i.i, align 1
  %570 = trunc i64 %569 to i32
  %571 = lshr i32 %570, 4
  %conv1.i.i.i13.i.i = and i32 %571, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i13.i.i)
  %cmp.i.i.i14.i.i = icmp ult i32 %conv1.i.i.i13.i.i, 4
  %phi.cast.i.i.i15.i.i = trunc i32 %conv1.i.i.i13.i.i to i16
  %572 = add nsw i16 %phi.cast.i.i.i15.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %572)
  %switch9.i.i16.i.i = icmp ult i16 %572, -3
  %not.cmp.i.i.i.i.i = xor i1 %cmp.i.i.i14.i.i, true
  %switch.i.i17.i.i = select i1 %not.cmp.i.i.i.i.i, i1 true, i1 %switch9.i.i16.i.i
  br i1 %switch.i.i17.i.i, label %if.then.i.i19.i.i, label %if.else.i.i25.i.i

if.then.i.i19.i.i:                                ; preds = %land.lhs.true.i.i.i
  %k_uniqueness.i.i18.i.i = getelementptr i8, ptr %567, i32 36
  %573 = ptrtoint ptr %k_uniqueness.i.i18.i.i to i32
  call void @__asan_loadN_noabort(i32 %573, i32 4)
  %574 = load i32, ptr %k_uniqueness.i.i18.i.i, align 1
  %575 = tail call i32 @llvm.bswap.i32(i32 %574) #7
  %576 = zext i32 %575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %576, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %575, label %sw.default.i.i.i23.i.i [
    i32 0, label %if.then.i.i19.i.i.le_key_k_type.exit.i29.i.i_crit_edge
    i32 -2, label %sw.bb1.i.i.i20.i.i
    i32 -1, label %sw.bb2.i.i.i21.i.i
    i32 500, label %sw.bb3.i.i.i22.i.i
  ]

if.then.i.i19.i.i.le_key_k_type.exit.i29.i.i_crit_edge: ; preds = %if.then.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i29.i.i

sw.bb1.i.i.i20.i.i:                               ; preds = %if.then.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i29.i.i

sw.bb2.i.i.i21.i.i:                               ; preds = %if.then.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i29.i.i

sw.bb3.i.i.i22.i.i:                               ; preds = %if.then.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i29.i.i

sw.default.i.i.i23.i.i:                           ; preds = %if.then.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %le_key_k_type.exit.i29.i.i

if.else.i.i25.i.i:                                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i.i24.i.i = select i1 %cmp.i.i.i14.i.i, i32 %conv1.i.i.i13.i.i, i32 15
  br label %le_key_k_type.exit.i29.i.i

le_key_k_type.exit.i29.i.i:                       ; preds = %if.else.i.i25.i.i, %sw.default.i.i.i23.i.i, %sw.bb3.i.i.i22.i.i, %sw.bb2.i.i.i21.i.i, %sw.bb1.i.i.i20.i.i, %if.then.i.i19.i.i.le_key_k_type.exit.i29.i.i_crit_edge
  %retval.0.in.i.i26.i.i = phi i32 [ %narrow.i.i24.i.i, %if.else.i.i25.i.i ], [ 15, %sw.default.i.i.i23.i.i ], [ 3, %sw.bb3.i.i.i22.i.i ], [ 2, %sw.bb2.i.i.i21.i.i ], [ 1, %sw.bb1.i.i.i20.i.i ], [ %575, %if.then.i.i19.i.i.le_key_k_type.exit.i29.i.i_crit_edge ]
  %arrayidx5.i.i.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i26.i.i
  %577 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %arrayidx5.i.i.i, align 4
  %is_left_mergeable.i27.i.i = getelementptr inbounds %struct.item_operations, ptr %578, i32 0, i32 2
  %579 = ptrtoint ptr %is_left_mergeable.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %is_left_mergeable.i27.i.i, align 4
  %b_size.i28.i.i = getelementptr inbounds %struct.buffer_head, ptr %555, i32 0, i32 4
  %581 = ptrtoint ptr %b_size.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %b_size.i28.i.i, align 8
  %call7.i.i.i = tail call i32 %580(ptr noundef %add.ptr.i.i.i.i11.i.i, i32 noundef %582) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %le_key_k_type.exit.i29.i.i.if.end19.i.i.i_crit_edge, label %if.then.i37.i.i

le_key_k_type.exit.i29.i.i.if.end19.i.i.i_crit_edge: ; preds = %le_key_k_type.exit.i29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i

if.then.i37.i.i:                                  ; preds = %le_key_k_type.exit.i29.i.i
  %583 = ptrtoint ptr %L.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %L.i5.i.i, align 4
  %sub.i30.i.i = add nsw i32 %conv.i8.i.i, -1
  %b_data.i.i.i31.i.i = getelementptr inbounds %struct.buffer_head, ptr %584, i32 0, i32 5
  %585 = ptrtoint ptr %b_data.i.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %b_data.i.i.i31.i.i, align 4
  %add.ptr.i.i.i32.i.i = getelementptr i8, ptr %586, i32 24
  %arrayidx.i.i33.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i32.i.i, i32 %sub.i30.i.i
  %ih_version.i.i34.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i33.i.i, i32 0, i32 4
  %587 = ptrtoint ptr %ih_version.i.i34.i.i to i32
  call void @__asan_loadN_noabort(i32 %587, i32 2)
  %588 = load i16, ptr %ih_version.i.i34.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %588)
  %cmp.i.i.i.i35.i.i = icmp eq i16 %588, 0
  %u.i.i.i.i36.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i33.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i35.i.i, label %is_direntry_le_ih.exit.i42.i.i, label %if.else.i.i.i.i39.i.i

if.else.i.i.i.i39.i.i:                            ; preds = %if.then.i37.i.i
  %589 = ptrtoint ptr %u.i.i.i.i36.i.i to i32
  call void @__asan_loadN_noabort(i32 %589, i32 8)
  %590 = load i64, ptr %u.i.i.i.i36.i.i, align 1
  %591 = and i64 %590, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %591)
  %phi.cmp1.i.i.i38.i.i = icmp eq i64 %591, 48
  br i1 %phi.cmp1.i.i.i38.i.i, label %if.else.i.i.i.i39.i.i.if.then14.i.i.i_crit_edge, label %if.else.i.i.i.i39.i.i.if.else.i.i.i188_crit_edge

if.else.i.i.i.i39.i.i.if.else.i.i.i188_crit_edge: ; preds = %if.else.i.i.i.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i188

if.else.i.i.i.i39.i.i.if.then14.i.i.i_crit_edge:  ; preds = %if.else.i.i.i.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i.i.i

is_direntry_le_ih.exit.i42.i.i:                   ; preds = %if.then.i37.i.i
  %k_uniqueness.i.i.i.i40.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i36.i.i, i32 0, i32 1
  %592 = ptrtoint ptr %k_uniqueness.i.i.i.i40.i.i to i32
  call void @__asan_loadN_noabort(i32 %592, i32 4)
  %593 = load i32, ptr %k_uniqueness.i.i.i.i40.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %593)
  %cond.i.i.i41.i.i = icmp eq i32 %593, -201261056
  br i1 %cond.i.i.i41.i.i, label %is_direntry_le_ih.exit.i42.i.i.if.then14.i.i.i_crit_edge, label %is_direntry_le_ih.exit.i42.i.i.if.else.i.i.i188_crit_edge

is_direntry_le_ih.exit.i42.i.i.if.else.i.i.i188_crit_edge: ; preds = %is_direntry_le_ih.exit.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i188

is_direntry_le_ih.exit.i42.i.i.if.then14.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %is_direntry_le_ih.exit.i42.i.i.if.then14.i.i.i_crit_edge, %if.else.i.i.i.i39.i.i.if.then14.i.i.i_crit_edge
  %u.i.i.i187 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i33.i.i, i32 0, i32 1
  br label %if.end19.sink.split.i.i.i

if.else.i.i.i188:                                 ; preds = %is_direntry_le_ih.exit.i42.i.i.if.else.i.i.i188_crit_edge, %if.else.i.i.i.i39.i.i.if.else.i.i.i188_crit_edge
  %ih_item_len.i43.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i33.i.i, i32 0, i32 2
  br label %if.end19.sink.split.i.i.i

if.end19.sink.split.i.i.i:                        ; preds = %if.else.i.i.i188, %if.then14.i.i.i
  %ih_item_len.sink.i.i.i = phi ptr [ %ih_item_len.i43.i.i, %if.else.i.i.i188 ], [ %u.i.i.i187, %if.then14.i.i.i ]
  %594 = ptrtoint ptr %ih_item_len.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %594, i32 2)
  %595 = load i16, ptr %ih_item_len.sink.i.i.i, align 1
  %596 = tail call i16 @llvm.bswap.i16(i16 %595) #7
  %conv16.i.i.i = zext i16 %596 to i32
  %597 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %pos_in_item11, align 8
  %add.i44.i.i = add i32 %598, %conv16.i.i.i
  store i32 %add.i44.i.i, ptr %pos_in_item11, align 8
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end19.sink.split.i.i.i, %le_key_k_type.exit.i29.i.i.if.end19.i.i.i_crit_edge, %if.else.i.i186.if.end19.i.i.i_crit_edge
  %599 = ptrtoint ptr %lnum.i157 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %lnum.i157, align 4
  %lbytes.i46.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %601 = ptrtoint ptr %lbytes.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %lbytes.i46.i.i, align 4
  %call21.i.i.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %600, i32 noundef %602) #7
  %603 = ptrtoint ptr %bi.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %tb, ptr %bi.i1.i.i, align 4
  %604 = ptrtoint ptr %L.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %L.i5.i.i, align 4
  %606 = ptrtoint ptr %563 to i32
  call void @__asan_store4_noabort(i32 %606)
  store ptr %605, ptr %563, align 4
  %FL.i.i47.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7
  %607 = ptrtoint ptr %FL.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %FL.i.i47.i.i, align 4
  %609 = ptrtoint ptr %564 to i32
  call void @__asan_store4_noabort(i32 %609)
  store ptr %608, ptr %564, align 4
  %610 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i48.i.i = getelementptr inbounds %struct.treepath, ptr %611, i32 0, i32 2
  %612 = ptrtoint ptr %611 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %611, align 4
  %sub.i.i.i49.i.i = add i32 %613, -1
  %add.ptr.i.i8.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i48.i.i, i32 %sub.i.i.i49.i.i
  %pe_position.i.i.i50.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i48.i.i, i32 %sub.i.i.i49.i.i, i32 1
  %614 = ptrtoint ptr %pe_position.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %pe_position.i.i.i50.i.i, align 4
  %616 = ptrtoint ptr %add.ptr.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %add.ptr.i.i8.i.i.i, align 4
  %cmp.i.i9.i.i.i = icmp eq ptr %617, null
  %cmp10.i.i.i51.i.i = icmp eq ptr %608, null
  %or.cond.i52.i.i = select i1 %cmp.i.i9.i.i.i, i1 true, i1 %cmp10.i.i.i51.i.i
  br i1 %or.cond.i52.i.i, label %if.then.i.i.i53.i.i, label %do.end.i.i.i55.i.i

if.then.i.i.i53.i.i:                              ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_left_neighbor_position, ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @__func__.get_left_neighbor_position, i32 noundef 0, ptr noundef %608, i32 noundef 0, ptr noundef %617) #10
  unreachable

do.end.i.i.i55.i.i:                               ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %615)
  %cmp22.i.i.i54.i.i = icmp eq i32 %615, 0
  br i1 %cmp22.i.i.i54.i.i, label %if.then23.i.i.i58.i.i, label %if.else.i.i.i60.i.i

if.then23.i.i.i58.i.i:                            ; preds = %do.end.i.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %b_data.i.i10.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %608, i32 0, i32 5
  %618 = ptrtoint ptr %b_data.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %b_data.i.i10.i.i.i, align 4
  %blk_nr_item.i.i.i56.i.i = getelementptr inbounds %struct.block_head, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %blk_nr_item.i.i.i56.i.i to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %blk_nr_item.i.i.i56.i.i, align 2
  %622 = tail call i16 @llvm.bswap.i16(i16 %621) #7
  %conv.i.i.i57.i.i = zext i16 %622 to i32
  br label %buffer_info_init_left.exit.i64.i.i

if.else.i.i.i60.i.i:                              ; preds = %do.end.i.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i.i59.i.i = add i32 %615, -1
  br label %buffer_info_init_left.exit.i64.i.i

buffer_info_init_left.exit.i64.i.i:               ; preds = %if.else.i.i.i60.i.i, %if.then23.i.i.i58.i.i
  %retval.0.i.i.i61.i.i = phi i32 [ %conv.i.i.i57.i.i, %if.then23.i.i.i58.i.i ], [ %sub26.i.i.i59.i.i, %if.else.i.i.i60.i.i ]
  %623 = ptrtoint ptr %565 to i32
  call void @__asan_store4_noabort(i32 %623)
  store i32 %retval.0.i.i.i61.i.i, ptr %565, align 4
  %624 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %item_pos, align 4
  %add23.i.i.i = sub i32 %conv.i8.i.i, %call21.i.i.i
  %sub24.i.i.i = add i32 %625, %add23.i.i.i
  %626 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %pos_in_item11, align 8
  %628 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %insert_size, align 4
  %630 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i1.i.i, i32 noundef %sub24.i.i.i, i32 noundef %627, i32 noundef %629, ptr noundef %body, i32 noundef %631) #7
  %632 = ptrtoint ptr %L.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %L.i5.i.i, align 4
  %634 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %item_pos, align 4
  %sub31.i.i.i = add i32 %635, %add23.i.i.i
  %b_data.i.i11.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %633, i32 0, i32 5
  %636 = ptrtoint ptr %b_data.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %b_data.i.i11.i.i.i, align 4
  %add.ptr.i.i12.i.i.i = getelementptr i8, ptr %637, i32 24
  %arrayidx.i13.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i12.i.i.i, i32 %sub31.i.i.i
  %ih_version.i14.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i13.i.i.i, i32 0, i32 4
  %638 = ptrtoint ptr %ih_version.i14.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %638, i32 2)
  %639 = load i16, ptr %ih_version.i14.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %639)
  %cmp.i.i.i15.i.i.i = icmp eq i16 %639, 0
  %u.i.i.i16.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i13.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i15.i.i.i, label %is_direntry_le_ih.exit24.i.i.i, label %if.else.i.i.i21.i.i.i

if.else.i.i.i21.i.i.i:                            ; preds = %buffer_info_init_left.exit.i64.i.i
  %640 = ptrtoint ptr %u.i.i.i16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %640, i32 8)
  %641 = load i64, ptr %u.i.i.i16.i.i.i, align 1
  %642 = and i64 %641, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %642)
  %phi.cmp1.i.i20.i.i.i = icmp eq i64 %642, 48
  br i1 %phi.cmp1.i.i20.i.i.i, label %if.else.i.i.i21.i.i.i.if.then35.i.i.i_crit_edge, label %if.else.i.i.i21.i.i.i.if.end43.i.i.i_crit_edge

if.else.i.i.i21.i.i.i.if.end43.i.i.i_crit_edge:   ; preds = %if.else.i.i.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i.i

if.else.i.i.i21.i.i.i.if.then35.i.i.i_crit_edge:  ; preds = %if.else.i.i.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i.i.i

is_direntry_le_ih.exit24.i.i.i:                   ; preds = %buffer_info_init_left.exit.i64.i.i
  %k_uniqueness.i.i.i17.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i16.i.i.i, i32 0, i32 1
  %643 = ptrtoint ptr %k_uniqueness.i.i.i17.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %643, i32 4)
  %644 = load i32, ptr %k_uniqueness.i.i.i17.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %644)
  %cond.i.i18.i.i.i = icmp eq i32 %644, -201261056
  br i1 %cond.i.i18.i.i.i, label %is_direntry_le_ih.exit24.i.i.i.if.then35.i.i.i_crit_edge, label %is_direntry_le_ih.exit24.i.i.i.if.end43.i.i.i_crit_edge

is_direntry_le_ih.exit24.i.i.i.if.end43.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i.i

is_direntry_le_ih.exit24.i.i.i.if.then35.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i.i.i

if.then35.i.i.i:                                  ; preds = %is_direntry_le_ih.exit24.i.i.i.if.then35.i.i.i_crit_edge, %if.else.i.i.i21.i.i.i.if.then35.i.i.i_crit_edge
  %645 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %pos_in_item11, align 8
  %add.ptr40.i.i.i = getelementptr i8, ptr %body, i32 16
  %647 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i1.i.i, i32 noundef %sub31.i.i.i, i32 noundef %646, i32 noundef 1, ptr noundef %body, ptr noundef %add.ptr40.i.i.i, i32 noundef %648) #7
  br label %if.end43.i.i.i

if.end43.i.i.i:                                   ; preds = %if.then35.i.i.i, %is_direntry_le_ih.exit24.i.i.i.if.end43.i.i.i_crit_edge, %if.else.i.i.i21.i.i.i.if.end43.i.i.i_crit_edge
  %649 = ptrtoint ptr %ih_version.i14.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %649, i32 2)
  %650 = load i16, ptr %ih_version.i14.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %650)
  %cmp.i.i.i26.i.i.i = icmp eq i16 %650, 0
  br i1 %cmp.i.i.i26.i.i.i, label %is_indirect_le_ih.exit.i65.i.i, label %if.else.i.i.i32.i.i.i

if.else.i.i.i32.i.i.i:                            ; preds = %if.end43.i.i.i
  %651 = ptrtoint ptr %u.i.i.i16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %651, i32 8)
  %652 = load i64, ptr %u.i.i.i16.i.i.i, align 1
  %653 = and i64 %652, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %653)
  %phi.cmp1.i.i31.i.i.i = icmp eq i64 %653, 16
  br i1 %phi.cmp1.i.i31.i.i.i, label %if.else.i.i.i32.i.i.i.do.body.i66.i.i_crit_edge, label %if.else.i.i.i32.i.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge

if.else.i.i.i32.i.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge: ; preds = %if.else.i.i.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_left_whole.exit.i.i

if.else.i.i.i32.i.i.i.do.body.i66.i.i_crit_edge:  ; preds = %if.else.i.i.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i66.i.i

is_indirect_le_ih.exit.i65.i.i:                   ; preds = %if.end43.i.i.i
  %k_uniqueness.i.i.i28.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i16.i.i.i, i32 0, i32 1
  %654 = ptrtoint ptr %k_uniqueness.i.i.i28.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %654, i32 4)
  %655 = load i32, ptr %k_uniqueness.i.i.i28.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %655)
  %cond.i.i29.i.i.i = icmp eq i32 %655, -16777217
  br i1 %cond.i.i29.i.i.i, label %is_indirect_le_ih.exit.i65.i.i.do.body.i66.i.i_crit_edge, label %is_indirect_le_ih.exit.i65.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge

is_indirect_le_ih.exit.i65.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_left_whole.exit.i.i

is_indirect_le_ih.exit.i65.i.i.do.body.i66.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i66.i.i

do.body.i66.i.i:                                  ; preds = %is_indirect_le_ih.exit.i65.i.i.do.body.i66.i.i_crit_edge, %if.else.i.i.i32.i.i.i.do.body.i66.i.i_crit_edge
  %u50.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i13.i.i.i, i32 0, i32 1
  %656 = ptrtoint ptr %u50.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %656, i32 2)
  store i16 0, ptr %u50.i.i.i, align 1
  br label %balance_leaf_paste_left_whole.exit.i.i

balance_leaf_paste_left_whole.exit.i.i:           ; preds = %do.body.i66.i.i, %is_indirect_le_ih.exit.i65.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge, %if.else.i.i.i32.i.i.i.balance_leaf_paste_left_whole.exit.i.i_crit_edge
  %657 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %657)
  store i32 0, ptr %insert_size, align 4
  %658 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 0, ptr %zeroes_num, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i1.i.i) #7
  br label %balance_leaf_left.exit

if.else17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %lbytes.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %659 = ptrtoint ptr %lbytes.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %lbytes.i, align 4
  %call20.i = tail call i32 @leaf_shift_left(ptr noundef %tb, i32 noundef %215, i32 noundef %660) #7
  br label %balance_leaf_left.exit

balance_leaf_left.exit:                           ; preds = %if.else17.i, %balance_leaf_paste_left_whole.exit.i.i, %balance_leaf_paste_left_shift.exit.i.i, %balance_leaf_insert_left.exit.i, %if.end25.balance_leaf_left.exit_crit_edge
  %retval.0.i189 = phi i32 [ %body_shift_bytes.1.i.i, %balance_leaf_insert_left.exit.i ], [ 0, %if.else17.i ], [ 0, %if.end25.balance_leaf_left.exit_crit_edge ], [ %retval.0.i.i.i, %balance_leaf_paste_left_shift.exit.i.i ], [ 0, %balance_leaf_paste_left_whole.exit.i.i ]
  %add.ptr27 = getelementptr i8, ptr %body, i32 %retval.0.i189
  %661 = ptrtoint ptr %lnum.i157 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %lnum.i157, align 4
  %lbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %663 = ptrtoint ptr %lbytes to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %lbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %664)
  %cmp29.not = icmp ne i32 %664, -1
  %cond.neg.neg498 = zext i1 %cmp29.not to i32
  %665 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %item_pos, align 4
  %sub.neg = sub i32 %666, %662
  %sub32 = add i32 %sub.neg, %cond.neg.neg498
  store i32 %sub32, ptr %item_pos, align 4
  %rnum.i194 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %667 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %rnum.i194, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %668)
  %cmp.i195 = icmp slt i32 %668, 1
  br i1 %cmp.i195, label %balance_leaf_left.exit.balance_leaf_right.exit_crit_edge, label %do.body.i196

balance_leaf_left.exit.balance_leaf_right.exit_crit_edge: ; preds = %balance_leaf_left.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_right.exit

do.body.i196:                                     ; preds = %balance_leaf_left.exit
  %669 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %669, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %flag, label %do.body5.i [
    i32 105, label %if.then11.i203
    i32 112, label %if.else.i241
  ]

do.body5.i:                                       ; preds = %do.body.i196
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/do_balan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 911, 0\0A.popsection", ""() #7, !srcloc !224
  unreachable

if.then11.i203:                                   ; preds = %do.body.i196
  %670 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %671, i32 0, i32 2
  %672 = ptrtoint ptr %671 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %671, align 4
  %add.ptr.i.i197 = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %673
  %674 = ptrtoint ptr %add.ptr.i.i197 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %add.ptr.i.i197, align 4
  %b_data.i.i198 = getelementptr inbounds %struct.buffer_head, ptr %675, i32 0, i32 5
  %676 = ptrtoint ptr %b_data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %b_data.i.i198, align 4
  %blk_nr_item.i.i199 = getelementptr inbounds %struct.block_head, ptr %677, i32 0, i32 1
  %678 = ptrtoint ptr %blk_nr_item.i.i199 to i32
  call void @__asan_load2_noabort(i32 %678)
  %679 = load i16, ptr %blk_nr_item.i.i199, align 2
  %680 = call i16 @llvm.bswap.i16(i16 %679) #7
  %conv.i.i200 = zext i16 %680 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i193) #7
  %681 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i193, i32 0, i32 1
  %682 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i193, i32 0, i32 2
  %683 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i193, i32 0, i32 3
  %684 = call ptr @memset(ptr %bi.i.i193, i32 255, i32 16)
  %sub.i.i201 = sub nsw i32 %conv.i.i200, %668
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i201, i32 %sub32)
  %cmp.not.i.i202 = icmp slt i32 %sub.i.i201, %sub32
  br i1 %cmp.not.i.i202, label %if.end.i.i208, label %if.then.i.i206

if.then.i.i206:                                   ; preds = %if.then11.i203
  call void @__sanitizer_cov_trace_pc() #9
  %rbytes.i.i204 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %685 = ptrtoint ptr %rbytes.i.i204 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %rbytes.i.i204, align 8
  %call.i.i205 = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %686) #7
  br label %balance_leaf_insert_right.exit.i

if.end.i.i208:                                    ; preds = %if.then11.i203
  %add.i.i207 = add nsw i32 %sub.i.i201, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %add.i.i207)
  %cmp9.i.i = icmp eq i32 %sub32, %add.i.i207
  br i1 %cmp9.i.i, label %land.lhs.true.i.i209, label %if.end.i.i208.if.else73.i.i_crit_edge

if.end.i.i208.if.else73.i.i_crit_edge:            ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else73.i.i

land.lhs.true.i.i209:                             ; preds = %if.end.i.i208
  %rbytes11.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %687 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %rbytes11.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %688)
  %cmp12.not.i.i = icmp eq i32 %688, -1
  br i1 %cmp12.not.i.i, label %land.lhs.true.i.i209.if.else73.i.i_crit_edge, label %if.then14.i.i213

land.lhs.true.i.i209.if.else73.i.i_crit_edge:     ; preds = %land.lhs.true.i.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else73.i.i

if.then14.i.i213:                                 ; preds = %land.lhs.true.i.i209
  %sub17.i.i = add nsw i32 %668, -1
  %call18.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %sub17.i.i, i32 noundef -1) #7
  %ih_version.i.i.i210 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %689 = ptrtoint ptr %ih_version.i.i.i210 to i32
  call void @__asan_loadN_noabort(i32 %689, i32 2)
  %690 = load i16, ptr %ih_version.i.i.i210, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %690)
  %cmp.i.i.i.i211 = icmp eq i16 %690, 0
  %u.i.i.i.i212 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  br i1 %cmp.i.i.i.i211, label %is_indirect_le_ih.exit.i.i219, label %if.else.i.i.i.i.i216

if.else.i.i.i.i.i216:                             ; preds = %if.then14.i.i213
  %691 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_loadN_noabort(i32 %691, i32 8)
  %692 = load i64, ptr %u.i.i.i.i212, align 1
  %693 = and i64 %692, -241
  %694 = call i64 @llvm.bswap.i64(i64 %693) #7
  %ih_item_len.i.i214 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %695 = ptrtoint ptr %ih_item_len.i.i214 to i32
  call void @__asan_loadN_noabort(i32 %695, i32 2)
  %696 = load i16, ptr %ih_item_len.i.i214, align 1
  %697 = call i16 @llvm.bswap.i16(i16 %696) #7
  %698 = and i64 %692, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %698)
  %phi.cmp1.i.i.i.i215 = icmp eq i64 %698, 16
  %conv20227238.i.i = zext i16 %697 to i64
  br i1 %phi.cmp1.i.i.i.i215, label %if.end25.i.i, label %if.else.i.i.i.i.i216.if.else.i.i.i.i224_crit_edge

if.else.i.i.i.i.i216.if.else.i.i.i.i224_crit_edge: ; preds = %if.else.i.i.i.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i224

is_indirect_le_ih.exit.i.i219:                    ; preds = %if.then14.i.i213
  %699 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_loadN_noabort(i32 %699, i32 4)
  %700 = load i32, ptr %u.i.i.i.i212, align 1
  %701 = call i32 @llvm.bswap.i32(i32 %700) #7
  %conv.i.i.i.i217 = zext i32 %701 to i64
  %ih_item_len221.i.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %702 = ptrtoint ptr %ih_item_len221.i.i to i32
  call void @__asan_loadN_noabort(i32 %702, i32 2)
  %703 = load i16, ptr %ih_item_len221.i.i, align 1
  %704 = call i16 @llvm.bswap.i16(i16 %703) #7
  %k_uniqueness.i.i.i.i.i218 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i212, i32 0, i32 1
  %705 = ptrtoint ptr %k_uniqueness.i.i.i.i.i218 to i32
  call void @__asan_loadN_noabort(i32 %705, i32 4)
  %706 = load i32, ptr %k_uniqueness.i.i.i.i.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %706)
  %cond.i.i172.i.i = icmp eq i32 %706, -16777217
  %conv20227.i.i = zext i16 %704 to i64
  br i1 %cond.i.i172.i.i, label %if.end25.thread265.i.i, label %is_indirect_le_ih.exit.i.i219.if.then.i.i.i.i222_crit_edge

is_indirect_le_ih.exit.i.i219.if.then.i.i.i.i222_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i222

if.end25.thread265.i.i:                           ; preds = %is_indirect_le_ih.exit.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  %707 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits270.i.i = getelementptr inbounds %struct.super_block, ptr %708, i32 0, i32 2
  %709 = ptrtoint ptr %s_blocksize_bits270.i.i to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %s_blocksize_bits270.i.i, align 4
  %conv23271.i.i = zext i8 %710 to i32
  %sub24272.i.i = add nsw i32 %conv23271.i.i, -2
  br label %if.then.i.i.i.i222

if.end25.i.i:                                     ; preds = %if.else.i.i.i.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  %711 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i221 = getelementptr inbounds %struct.super_block, ptr %712, i32 0, i32 2
  %713 = ptrtoint ptr %s_blocksize_bits.i.i221 to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %s_blocksize_bits.i.i221, align 4
  %conv23.i.i = zext i8 %714 to i32
  %sub24.i.i = add nsw i32 %conv23.i.i, -2
  br label %if.else.i.i.i.i224

if.then.i.i.i.i222:                               ; preds = %if.end25.thread265.i.i, %is_indirect_le_ih.exit.i.i219.if.then.i.i.i.i222_crit_edge
  %shift.0255.i.i = phi i32 [ %sub24272.i.i, %if.end25.thread265.i.i ], [ 0, %is_indirect_le_ih.exit.i.i219.if.then.i.i.i.i222_crit_edge ]
  %715 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %rbytes11.i.i, align 8
  %conv28230237.i.i = zext i32 %716 to i64
  %sub29231.i.i = sub nsw i64 %conv20227.i.i, %conv28230237.i.i
  %sh_prom232.i.i = zext i32 %shift.0255.i.i to i64
  %shl233.i.i = shl i64 %sub29231.i.i, %sh_prom232.i.i
  %717 = trunc i64 %shl233.i.i to i32
  %conv.i.i183.i.i = add i32 %701, %717
  %718 = call i32 @llvm.bswap.i32(i32 %conv.i.i183.i.i) #7
  %719 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %719, i32 4)
  store i32 %718, ptr %u.i.i.i.i212, align 1
  br label %set_le_ih_k_offset.exit.i.i

if.else.i.i.i.i224:                               ; preds = %if.end25.i.i, %if.else.i.i.i.i.i216.if.else.i.i.i.i224_crit_edge
  %shift.0264.i.i = phi i32 [ %sub24.i.i, %if.end25.i.i ], [ 0, %if.else.i.i.i.i.i216.if.else.i.i.i.i224_crit_edge ]
  %720 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %rbytes11.i.i, align 8
  %conv28.i.i = sext i32 %721 to i64
  %sub29.i.i = sub nsw i64 %conv20227238.i.i, %conv28.i.i
  %sh_prom.i.i = zext i32 %shift.0264.i.i to i64
  %shl.i.i223 = shl i64 %sub29.i.i, %sh_prom.i.i
  %add30.i.i = add i64 %shl.i.i223, %694
  %and.i.i.i.i.i = and i64 %add30.i.i, 1152921504606846975
  %722 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i) #7
  %or.i.i.i.i.i = or i64 %722, %698
  %723 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %723, i32 8)
  store i64 %or.i.i.i.i.i, ptr %u.i.i.i.i212, align 1
  br label %set_le_ih_k_offset.exit.i.i

set_le_ih_k_offset.exit.i.i:                      ; preds = %if.else.i.i.i.i224, %if.then.i.i.i.i222
  %724 = phi i16 [ %704, %if.then.i.i.i.i222 ], [ %697, %if.else.i.i.i.i224 ]
  %ih_item_len225239253.i.i = phi ptr [ %ih_item_len221.i.i, %if.then.i.i.i.i222 ], [ %ih_item_len.i.i214, %if.else.i.i.i.i224 ]
  %cond.i.i223241251.i.i = phi i64 [ %conv.i.i.i.i217, %if.then.i.i.i.i222 ], [ %694, %if.else.i.i.i.i224 ]
  %conv20227245.i.i = phi i64 [ %conv20227.i.i, %if.then.i.i.i.i222 ], [ %conv20227238.i.i, %if.else.i.i.i.i224 ]
  %725 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load i32, ptr %rbytes11.i.i, align 8
  %conv32.i.i = trunc i32 %726 to i16
  %727 = call i16 @llvm.bswap.i16(i16 %conv32.i.i) #7
  %728 = ptrtoint ptr %ih_item_len225239253.i.i to i32
  call void @__asan_storeN_noabort(i32 %728, i32 2)
  store i16 %727, ptr %ih_item_len225239253.i.i, align 1
  %729 = ptrtoint ptr %bi.i.i193 to i32
  call void @__asan_store4_noabort(i32 %729)
  store ptr %tb, ptr %bi.i.i193, align 4
  %R.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %730 = ptrtoint ptr %R.i.i.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %R.i.i.i, align 8
  %732 = ptrtoint ptr %681 to i32
  call void @__asan_store4_noabort(i32 %732)
  store ptr %731, ptr %681, align 4
  %FR.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %733 = ptrtoint ptr %FR.i.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %FR.i.i.i, align 8
  %735 = ptrtoint ptr %682 to i32
  call void @__asan_store4_noabort(i32 %735)
  store ptr %734, ptr %682, align 4
  %736 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i225 = getelementptr inbounds %struct.treepath, ptr %737, i32 0, i32 2
  %738 = ptrtoint ptr %737 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %737, align 4
  %sub.i.i.i.i226 = add i32 %739, -1
  %add.ptr.i.i.i.i227 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i225, i32 %sub.i.i.i.i226
  %740 = ptrtoint ptr %add.ptr.i.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %add.ptr.i.i.i.i227, align 4
  %cmp.i.i185.i.i = icmp eq ptr %741, null
  %cmp10.i.i.i.i228 = icmp eq ptr %734, null
  %or.cond.i.i229 = select i1 %cmp.i.i185.i.i, i1 true, i1 %cmp10.i.i.i.i228
  br i1 %or.cond.i.i229, label %if.then.i.i186.i.i, label %buffer_info_init_right.exit.i.i

if.then.i.i186.i.i:                               ; preds = %set_le_ih_k_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %741, i32 noundef 0, ptr noundef %734) #10
  unreachable

buffer_info_init_right.exit.i.i:                  ; preds = %set_le_ih_k_offset.exit.i.i
  %pe_position.i.i.i.i230 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i225, i32 %sub.i.i.i.i226, i32 1
  %742 = ptrtoint ptr %pe_position.i.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %pe_position.i.i.i.i230, align 4
  %b_data.i.i.i.i231 = getelementptr inbounds %struct.buffer_head, ptr %741, i32 0, i32 5
  %744 = ptrtoint ptr %b_data.i.i.i.i231 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %b_data.i.i.i.i231, align 4
  %blk_nr_item.i.i.i.i232 = getelementptr inbounds %struct.block_head, ptr %745, i32 0, i32 1
  %746 = ptrtoint ptr %blk_nr_item.i.i.i.i232 to i32
  call void @__asan_load2_noabort(i32 %746)
  %747 = load i16, ptr %blk_nr_item.i.i.i.i232, align 2
  %748 = call i16 @llvm.bswap.i16(i16 %747) #7
  %conv.i.i187.i.i = zext i16 %748 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %743, i32 %conv.i.i187.i.i)
  %cmp31.i.i.i.i = icmp eq i32 %743, %conv.i.i187.i.i
  %add34.i.i.i.i = add i32 %743, 1
  %retval.0.i.i.i.i233 = select i1 %cmp31.i.i.i.i, i32 0, i32 %add34.i.i.i.i
  %749 = ptrtoint ptr %683 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %retval.0.i.i.i.i233, ptr %683, align 4
  %750 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %rbytes11.i.i, align 8
  %conv35.i.i = sext i32 %751 to i64
  %sub36.i.i = sub nsw i64 %conv20227245.i.i, %conv35.i.i
  %752 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %zeroes_num, align 4
  %conv37.i.i = sext i32 %753 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub36.i.i, i64 %conv37.i.i)
  %cmp38.i.i = icmp sgt i64 %sub36.i.i, %conv37.i.i
  %idx.ext.i.i = trunc i64 %sub36.i.i to i32
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.else.i.i235

if.then40.i.i:                                    ; preds = %buffer_info_init_right.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr44.i.i = getelementptr i8, ptr %add.ptr27, i32 %idx.ext.i.i
  %idx.neg.i.i = sub i32 0, %753
  %add.ptr46.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 %idx.neg.i.i
  br label %if.end57.i.i

if.else.i.i235:                                   ; preds = %buffer_info_init_right.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %754 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 %idx.ext.i.i, ptr %zeroes_num, align 4
  %extract.t.i.i = sub i32 %753, %idx.ext.i.i
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.else.i.i235, %if.then40.i.i
  %r_zeroes_number.0.off0.i.i = phi i32 [ 0, %if.then40.i.i ], [ %extract.t.i.i, %if.else.i.i235 ]
  %r_body.0.i.i = phi ptr [ %add.ptr46.i.i, %if.then40.i.i ], [ %add.ptr27, %if.else.i.i235 ]
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i193, i32 noundef 0, ptr noundef %ih, ptr noundef %r_body.0.i.i, i32 noundef %r_zeroes_number.0.off0.i.i) #7
  %CFR.i.i236 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %755 = ptrtoint ptr %CFR.i.i236 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %CFR.i.i236, align 8
  %rkey.i.i237 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %757 = ptrtoint ptr %rkey.i.i237 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %rkey.i.i237, align 8
  %759 = ptrtoint ptr %R.i.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %R.i.i.i, align 8
  call void @replace_key(ptr noundef %tb, ptr noundef %756, i32 noundef %758, ptr noundef %760, i32 noundef 0) #7
  %761 = ptrtoint ptr %ih_version.i.i.i210 to i32
  call void @__asan_loadN_noabort(i32 %761, i32 2)
  %762 = load i16, ptr %ih_version.i.i.i210, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %762)
  %cmp.i.i189.i.i = icmp eq i16 %762, 0
  br i1 %cmp.i.i189.i.i, label %if.then.i.i192.i.i, label %if.else.i.i197.i.i

if.then.i.i192.i.i:                               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i190.i.i = trunc i64 %cond.i.i223241251.i.i to i32
  %763 = call i32 @llvm.bswap.i32(i32 %conv.i.i190.i.i) #7
  %764 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %764, i32 4)
  store i32 %763, ptr %u.i.i.i.i212, align 1
  br label %set_le_ih_k_offset.exit198.i.i

if.else.i.i197.i.i:                               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i194.i.i = and i64 %cond.i.i223241251.i.i, 1152921504606846975
  %765 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_loadN_noabort(i32 %765, i32 8)
  %766 = load i64, ptr %u.i.i.i.i212, align 1
  %and1.i.i.i195.i.i = and i64 %766, 240
  %767 = call i64 @llvm.bswap.i64(i64 %and.i.i.i194.i.i) #7
  %or.i.i.i196.i.i = or i64 %and1.i.i.i195.i.i, %767
  %768 = ptrtoint ptr %u.i.i.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %768, i32 8)
  store i64 %or.i.i.i196.i.i, ptr %u.i.i.i.i212, align 1
  br label %set_le_ih_k_offset.exit198.i.i

set_le_ih_k_offset.exit198.i.i:                   ; preds = %if.else.i.i197.i.i, %if.then.i.i192.i.i
  %769 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %rbytes11.i.i, align 8
  %conv64.i.i = trunc i32 %770 to i16
  %sub65.i.i = sub i16 %724, %conv64.i.i
  %771 = call i16 @llvm.bswap.i16(i16 %sub65.i.i) #7
  %772 = ptrtoint ptr %ih_item_len225239253.i.i to i32
  call void @__asan_storeN_noabort(i32 %772, i32 2)
  store i16 %771, ptr %ih_item_len225239253.i.i, align 1
  %773 = ptrtoint ptr %rbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %rbytes11.i.i, align 8
  %775 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %insert_size, align 4
  %sub72.i.i = sub i32 %776, %774
  store i32 %sub72.i.i, ptr %insert_size, align 4
  br label %balance_leaf_insert_right.exit.i

if.else73.i.i:                                    ; preds = %land.lhs.true.i.i209.if.else73.i.i_crit_edge, %if.end.i.i208.if.else73.i.i_crit_edge
  %sub76.i.i239 = add nsw i32 %668, -1
  %rbytes77.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %777 = ptrtoint ptr %rbytes77.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %rbytes77.i.i, align 8
  %call78.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %sub76.i.i239, i32 noundef %778) #7
  %779 = ptrtoint ptr %bi.i.i193 to i32
  call void @__asan_store4_noabort(i32 %779)
  store ptr %tb, ptr %bi.i.i193, align 4
  %R.i199.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %780 = ptrtoint ptr %R.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %R.i199.i.i, align 8
  %782 = ptrtoint ptr %681 to i32
  call void @__asan_store4_noabort(i32 %782)
  store ptr %781, ptr %681, align 4
  %FR.i201.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %783 = ptrtoint ptr %FR.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %FR.i201.i.i, align 8
  %785 = ptrtoint ptr %682 to i32
  call void @__asan_store4_noabort(i32 %785)
  store ptr %784, ptr %682, align 4
  %786 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i204.i.i = getelementptr inbounds %struct.treepath, ptr %787, i32 0, i32 2
  %788 = ptrtoint ptr %787 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %787, align 4
  %sub.i.i205.i.i = add i32 %789, -1
  %add.ptr.i.i206.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i204.i.i, i32 %sub.i.i205.i.i
  %790 = ptrtoint ptr %add.ptr.i.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %add.ptr.i.i206.i.i, align 4
  %cmp.i.i208.i.i = icmp eq ptr %791, null
  %cmp10.i.i209.i.i = icmp eq ptr %784, null
  %or.cond236.i.i = select i1 %cmp.i.i208.i.i, i1 true, i1 %cmp10.i.i209.i.i
  br i1 %or.cond236.i.i, label %if.then.i.i211.i.i, label %buffer_info_init_right.exit219.i.i

if.then.i.i211.i.i:                               ; preds = %if.else73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %791, i32 noundef 0, ptr noundef %784) #10
  unreachable

buffer_info_init_right.exit219.i.i:               ; preds = %if.else73.i.i
  %pe_position.i.i207.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i204.i.i, i32 %sub.i.i205.i.i, i32 1
  %792 = ptrtoint ptr %pe_position.i.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %pe_position.i.i207.i.i, align 4
  %b_data.i.i212.i.i = getelementptr inbounds %struct.buffer_head, ptr %791, i32 0, i32 5
  %794 = ptrtoint ptr %b_data.i.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %b_data.i.i212.i.i, align 4
  %blk_nr_item.i.i213.i.i = getelementptr inbounds %struct.block_head, ptr %795, i32 0, i32 1
  %796 = ptrtoint ptr %blk_nr_item.i.i213.i.i to i32
  call void @__asan_load2_noabort(i32 %796)
  %797 = load i16, ptr %blk_nr_item.i.i213.i.i, align 2
  %798 = call i16 @llvm.bswap.i16(i16 %797) #7
  %conv.i.i214.i.i = zext i16 %798 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %793, i32 %conv.i.i214.i.i)
  %cmp31.i.i215.i.i = icmp eq i32 %793, %conv.i.i214.i.i
  %add34.i.i216.i.i = add i32 %793, 1
  %retval.0.i.i217.i.i = select i1 %cmp31.i.i215.i.i, i32 0, i32 %add34.i.i216.i.i
  %799 = ptrtoint ptr %683 to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %retval.0.i.i217.i.i, ptr %683, align 4
  %800 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %item_pos, align 4
  %802 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %rnum.i194, align 8
  %sub80.i.i = xor i32 %conv.i.i200, -1
  %add83.i.i = add i32 %801, %sub80.i.i
  %sub84.i.i = add i32 %add83.i.i, %803
  %804 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %zeroes_num, align 4
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i193, i32 noundef %sub84.i.i, ptr noundef %ih, ptr noundef %add.ptr27, i32 noundef %805) #7
  %806 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %item_pos, align 4
  %sub87.i.i = sub i32 %807, %conv.i.i200
  %808 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load i32, ptr %rnum.i194, align 8
  %add90.i.i = add i32 %sub87.i.i, %809
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add90.i.i)
  %cmp92.i.i = icmp eq i32 %add90.i.i, 1
  br i1 %cmp92.i.i, label %if.then94.i.i, label %buffer_info_init_right.exit219.i.i.if.end101.i.i_crit_edge

buffer_info_init_right.exit219.i.i.if.end101.i.i_crit_edge: ; preds = %buffer_info_init_right.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i.i

if.then94.i.i:                                    ; preds = %buffer_info_init_right.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %CFR95.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %810 = ptrtoint ptr %CFR95.i.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %CFR95.i.i, align 8
  %rkey97.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %812 = ptrtoint ptr %rkey97.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %rkey97.i.i, align 8
  %814 = ptrtoint ptr %R.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %R.i199.i.i, align 8
  call void @replace_key(ptr noundef %tb, ptr noundef %811, i32 noundef %813, ptr noundef %815, i32 noundef 0) #7
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then94.i.i, %buffer_info_init_right.exit219.i.i.if.end101.i.i_crit_edge
  %816 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 0, ptr %insert_size, align 4
  %817 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 0, ptr %zeroes_num, align 4
  br label %balance_leaf_insert_right.exit.i

balance_leaf_insert_right.exit.i:                 ; preds = %if.end101.i.i, %set_le_ih_k_offset.exit198.i.i, %if.then.i.i206
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i193) #7
  br label %balance_leaf_right.exit

if.else.i241:                                     ; preds = %do.body.i196
  %818 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %tb_path, align 8
  %path_elements.i20.i = getelementptr inbounds %struct.treepath, ptr %819, i32 0, i32 2
  %820 = ptrtoint ptr %819 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load i32, ptr %819, align 4
  %add.ptr.i21.i = getelementptr %struct.path_element, ptr %path_elements.i20.i, i32 %821
  %822 = ptrtoint ptr %add.ptr.i21.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %add.ptr.i21.i, align 4
  %b_data.i22.i = getelementptr inbounds %struct.buffer_head, ptr %823, i32 0, i32 5
  %824 = ptrtoint ptr %b_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %b_data.i22.i, align 4
  %blk_nr_item.i23.i = getelementptr inbounds %struct.block_head, ptr %825, i32 0, i32 1
  %826 = ptrtoint ptr %blk_nr_item.i23.i to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %blk_nr_item.i23.i, align 2
  %828 = call i16 @llvm.bswap.i16(i16 %827) #7
  %conv.i24.i = zext i16 %828 to i32
  %sub.i26.i = sub nsw i32 %conv.i24.i, %668
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i26.i, i32 %sub32)
  %cmp.i.i240 = icmp sgt i32 %sub.i26.i, %sub32
  br i1 %cmp.i.i240, label %if.then.i30.i, label %if.end.i32.i

if.then.i30.i:                                    ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #9
  %rbytes.i28.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %829 = ptrtoint ptr %rbytes.i28.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %rbytes.i28.i, align 8
  %call.i29.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %830) #7
  br label %balance_leaf_right.exit

if.end.i32.i:                                     ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %sub.i26.i)
  %cmp9.i31.i = icmp eq i32 %sub32, %sub.i26.i
  br i1 %cmp9.i31.i, label %land.lhs.true.i35.i, label %if.end.i32.i.if.else.i49.i_crit_edge

if.end.i32.i.if.else.i49.i_crit_edge:             ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i49.i

land.lhs.true.i35.i:                              ; preds = %if.end.i32.i
  %rbytes11.i33.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %831 = ptrtoint ptr %rbytes11.i33.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %rbytes11.i33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %832)
  %cmp12.not.i34.i = icmp eq i32 %832, -1
  br i1 %cmp12.not.i34.i, label %land.lhs.true.i35.i.if.else.i49.i_crit_edge, label %if.then14.i36.i

land.lhs.true.i35.i.if.else.i49.i_crit_edge:      ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i49.i

if.then14.i36.i:                                  ; preds = %land.lhs.true.i35.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i192) #7
  %833 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i192, i32 0, i32 1
  %834 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i192, i32 0, i32 2
  %835 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i192, i32 0, i32 3
  %add.ptr.i.i.i.i.i242 = getelementptr i8, ptr %825, i32 24
  %arrayidx.i.i.i.i243 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i242, i32 %sub32
  %ih_version.i.i.i.i244 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i243, i32 0, i32 4
  %836 = ptrtoint ptr %ih_version.i.i.i.i244 to i32
  call void @__asan_loadN_noabort(i32 %836, i32 2)
  %837 = load i16, ptr %ih_version.i.i.i.i244, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %837)
  %cmp.i.i.i.i.i.i245 = icmp eq i16 %837, 0
  %u.i.i.i.i.i.i246 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i.i243, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i.i245, label %is_direntry_le_ih.exit.i.i.i251, label %if.else.i.i.i.i.i.i248

if.else.i.i.i.i.i.i248:                           ; preds = %if.then14.i36.i
  %838 = ptrtoint ptr %u.i.i.i.i.i.i246 to i32
  call void @__asan_loadN_noabort(i32 %838, i32 8)
  %839 = load i64, ptr %u.i.i.i.i.i.i246, align 1
  %840 = and i64 %839, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %840)
  %phi.cmp1.i.i.i.i.i247 = icmp eq i64 %840, 48
  br i1 %phi.cmp1.i.i.i.i.i247, label %if.else.i.i.i.i.i.i248.if.then.i.i.i254_crit_edge, label %if.else.i.i.i.i.i.i248.if.end.i.i.i_crit_edge

if.else.i.i.i.i.i.i248.if.end.i.i.i_crit_edge:    ; preds = %if.else.i.i.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.else.i.i.i.i.i.i248.if.then.i.i.i254_crit_edge: ; preds = %if.else.i.i.i.i.i.i248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i254

is_direntry_le_ih.exit.i.i.i251:                  ; preds = %if.then14.i36.i
  %k_uniqueness.i.i.i.i.i.i249 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i.i246, i32 0, i32 1
  %841 = ptrtoint ptr %k_uniqueness.i.i.i.i.i.i249 to i32
  call void @__asan_loadN_noabort(i32 %841, i32 4)
  %842 = load i32, ptr %k_uniqueness.i.i.i.i.i.i249, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %842)
  %cond.i.i.i.i.i250 = icmp eq i32 %842, -201261056
  br i1 %cond.i.i.i.i.i250, label %is_direntry_le_ih.exit.i.i.i251.if.then.i.i.i254_crit_edge, label %is_direntry_le_ih.exit.i.i.i251.if.end.i.i.i_crit_edge

is_direntry_le_ih.exit.i.i.i251.if.end.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

is_direntry_le_ih.exit.i.i.i251.if.then.i.i.i254_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i254

if.then.i.i.i254:                                 ; preds = %is_direntry_le_ih.exit.i.i.i251.if.then.i.i.i254_crit_edge, %if.else.i.i.i.i.i.i248.if.then.i.i.i254_crit_edge
  %843 = ptrtoint ptr %819 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %819, align 4
  %add.ptr.i.i.i37.i = getelementptr %struct.path_element, ptr %path_elements.i20.i, i32 %844
  %845 = ptrtoint ptr %add.ptr.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %add.ptr.i.i.i37.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i.i191) #7
  %847 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i191, i32 0, i32 1
  %848 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i191, i32 0, i32 2
  %849 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i191, i32 0, i32 3
  %850 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %851)
  %tobool.not.i.i.i.i253 = icmp eq i32 %851, 0
  br i1 %tobool.not.i.i.i.i253, label %do.end.i.i.i.i261, label %if.then.i.i.i38.i

if.then.i.i.i38.i:                                ; preds = %if.then.i.i.i254
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift_dirent, ptr noundef nonnull @.str.61, i32 noundef 716, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift_dirent) #10
  unreachable

do.end.i.i.i.i261:                                ; preds = %if.then.i.i.i254
  %b_data.i.i.i.i.i.i255 = getelementptr inbounds %struct.buffer_head, ptr %846, i32 0, i32 5
  %852 = ptrtoint ptr %b_data.i.i.i.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %b_data.i.i.i.i.i.i255, align 4
  %add.ptr.i.i.i.i.i.i256 = getelementptr i8, ptr %853, i32 24
  %arrayidx.i.i.i.i.i257 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i.i256, i32 %sub32
  %u.i.i.i39.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i.i257, i32 0, i32 1
  %854 = ptrtoint ptr %u.i.i.i39.i to i32
  call void @__asan_loadN_noabort(i32 %854, i32 2)
  %855 = load i16, ptr %u.i.i.i39.i, align 1
  %856 = call i16 @llvm.bswap.i16(i16 %855) #7
  %conv.i.i.i40.i258 = zext i16 %856 to i32
  %sub.i.i.i41.i = sub i32 %conv.i.i.i40.i258, %832
  %857 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i41.i, i32 %858)
  %cmp.i.i.i42.i260 = icmp slt i32 %sub.i.i.i41.i, %858
  br i1 %cmp.i.i.i42.i260, label %if.then3.i.i.i.i, label %if.else.i.i.i43.i

if.then3.i.i.i.i:                                 ; preds = %do.end.i.i.i.i261
  %sub6.i.i.i.i = add i32 %832, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i.i.i.i, i32 %conv.i.i.i40.i258)
  %cmp7.not.i.i.i.i = icmp slt i32 %sub6.i.i.i.i, %conv.i.i.i40.i258
  br i1 %cmp7.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.then3.i.i.i.i.if.then10.i.i.i.i_crit_edge

if.then3.i.i.i.i.if.then10.i.i.i.i_crit_edge:     ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.then3.i.i.i.i
  %859 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %860)
  %tobool9.not.i.i.i.i = icmp eq i32 %860, 0
  br i1 %tobool9.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then10.i.i.i.i_crit_edge, label %do.end14.i.i.i.i

lor.lhs.false.i.i.i.i.if.then10.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.if.then10.i.i.i.i_crit_edge, %if.then3.i.i.i.i.if.then10.i.i.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift_dirent, ptr noundef nonnull @.str.62, i32 noundef 725, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift_dirent, i32 noundef %832, i32 noundef %conv.i.i.i40.i258) #10
  unreachable

do.end14.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %call18.i.i.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %sub6.i.i.i.i) #7
  %861 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %pos_in_item11, align 8
  %863 = ptrtoint ptr %rbytes11.i33.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %rbytes11.i33.i, align 8
  %865 = ptrtoint ptr %bi.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %865)
  store ptr %tb, ptr %bi.i.i.i.i191, align 4
  %R.i.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %866 = ptrtoint ptr %R.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %R.i.i.i.i.i, align 8
  %868 = ptrtoint ptr %847 to i32
  call void @__asan_store4_noabort(i32 %868)
  store ptr %867, ptr %847, align 4
  %FR.i.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %869 = ptrtoint ptr %FR.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %FR.i.i.i.i.i, align 8
  %871 = ptrtoint ptr %848 to i32
  call void @__asan_store4_noabort(i32 %871)
  store ptr %870, ptr %848, align 4
  %872 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i.i.i263 = getelementptr inbounds %struct.treepath, ptr %873, i32 0, i32 2
  %874 = ptrtoint ptr %873 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %873, align 4
  %sub.i.i.i.i.i.i264 = add i32 %875, -1
  %add.ptr.i.i1.i.i.i.i265 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i.i263, i32 %sub.i.i.i.i.i.i264
  %876 = ptrtoint ptr %add.ptr.i.i1.i.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %add.ptr.i.i1.i.i.i.i265, align 4
  %cmp.i.i.i1.i.i.i266 = icmp eq ptr %877, null
  %cmp10.i.i.i.i.i.i267 = icmp eq ptr %870, null
  %or.cond.i.i.i.i268 = select i1 %cmp.i.i.i1.i.i.i266, i1 true, i1 %cmp10.i.i.i.i.i.i267
  br i1 %or.cond.i.i.i.i268, label %if.then.i.i.i2.i.i.i269, label %buffer_info_init_right.exit.i.i.i.i

if.then.i.i.i2.i.i.i269:                          ; preds = %do.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %877, i32 noundef 0, ptr noundef %870) #10
  unreachable

buffer_info_init_right.exit.i.i.i.i:              ; preds = %do.end14.i.i.i.i
  %pe_position.i.i.i.i.i.i270 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i.i263, i32 %sub.i.i.i.i.i.i264, i32 1
  %878 = ptrtoint ptr %pe_position.i.i.i.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %pe_position.i.i.i.i.i.i270, align 4
  %sub20.i.i.i.i = xor i32 %conv.i.i.i40.i258, -1
  %add.i.i.i.i271 = add i32 %862, %sub20.i.i.i.i
  %sub22.i.i.i.i = add i32 %add.i.i.i.i271, %864
  %b_data.i.i2.i.i.i.i272 = getelementptr inbounds %struct.buffer_head, ptr %877, i32 0, i32 5
  %880 = ptrtoint ptr %b_data.i.i2.i.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %b_data.i.i2.i.i.i.i272, align 4
  %blk_nr_item.i.i.i.i.i.i273 = getelementptr inbounds %struct.block_head, ptr %881, i32 0, i32 1
  %882 = ptrtoint ptr %blk_nr_item.i.i.i.i.i.i273 to i32
  call void @__asan_load2_noabort(i32 %882)
  %883 = load i16, ptr %blk_nr_item.i.i.i.i.i.i273, align 2
  %884 = call i16 @llvm.bswap.i16(i16 %883) #7
  %conv.i.i.i.i.i.i274 = zext i16 %884 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %879, i32 %conv.i.i.i.i.i.i274)
  %cmp31.i.i.i.i.i.i = icmp eq i32 %879, %conv.i.i.i.i.i.i274
  %add34.i.i.i.i.i.i = add i32 %879, 1
  %retval.0.i.i.i.i.i.i275 = select i1 %cmp31.i.i.i.i.i.i, i32 0, i32 %add34.i.i.i.i.i.i
  %885 = ptrtoint ptr %849 to i32
  call void @__asan_store4_noabort(i32 %885)
  store i32 %retval.0.i.i.i.i.i.i275, ptr %849, align 4
  %886 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %insert_size, align 4
  %888 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i.i191, i32 noundef 0, i32 noundef %sub22.i.i.i.i, i32 noundef %887, ptr noundef %add.ptr27, i32 noundef %889) #7
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %add.ptr27, i32 16
  %890 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i.i.i.i191, i32 noundef 0, i32 noundef %sub22.i.i.i.i, i32 noundef 1, ptr noundef %add.ptr27, ptr noundef %add.ptr26.i.i.i.i, i32 noundef %891) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22.i.i.i.i)
  %cmp29.i.i.i.i = icmp eq i32 %sub22.i.i.i.i, 0
  br i1 %cmp29.i.i.i.i, label %if.then31.i.i.i.i, label %buffer_info_init_right.exit.i.i.i.i.if.end35.i.i.i.i_crit_edge

buffer_info_init_right.exit.i.i.i.i.if.end35.i.i.i.i_crit_edge: ; preds = %buffer_info_init_right.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i.i.i.i

if.then31.i.i.i.i:                                ; preds = %buffer_info_init_right.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %CFR.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %892 = ptrtoint ptr %CFR.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %CFR.i.i.i.i, align 8
  %rkey.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %894 = ptrtoint ptr %rkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load i32, ptr %rkey.i.i.i.i, align 8
  %896 = ptrtoint ptr %R.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %R.i.i.i.i.i, align 8
  call void @replace_key(ptr noundef %tb, ptr noundef %893, i32 noundef %895, ptr noundef %897, i32 noundef 0) #7
  br label %if.end35.i.i.i.i

if.end35.i.i.i.i:                                 ; preds = %if.then31.i.i.i.i, %buffer_info_init_right.exit.i.i.i.i.if.end35.i.i.i.i_crit_edge
  %898 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 0, ptr %insert_size, align 4
  %899 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load i32, ptr %pos_in_item11, align 8
  %inc.i.i.i.i = add i32 %900, 1
  store i32 %inc.i.i.i.i, ptr %pos_in_item11, align 8
  br label %balance_leaf_paste_right_shift_dirent.exit.i.i.i

if.else.i.i.i43.i:                                ; preds = %do.end.i.i.i.i261
  call void @__sanitizer_cov_trace_pc() #9
  %call42.i.i.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %832) #7
  br label %balance_leaf_paste_right_shift_dirent.exit.i.i.i

balance_leaf_paste_right_shift_dirent.exit.i.i.i: ; preds = %if.else.i.i.i43.i, %if.end35.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i.i191) #7
  br label %balance_leaf_paste_right_shift.exit.i.i

if.end.i.i.i:                                     ; preds = %is_direntry_le_ih.exit.i.i.i251.if.end.i.i.i_crit_edge, %if.else.i.i.i.i.i.i248.if.end.i.i.i_crit_edge
  %901 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %insert_size, align 4
  %sub.i.i.i277 = sub i32 %832, %902
  %903 = call i32 @llvm.smax.i32(i32 %sub.i.i.i277, i32 0) #7
  %904 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %pos_in_item11, align 8
  %ih_item_len.i.i.i279 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i243, i32 0, i32 2
  %906 = ptrtoint ptr %ih_item_len.i.i.i279 to i32
  call void @__asan_loadN_noabort(i32 %906, i32 2)
  %907 = load i16, ptr %ih_item_len.i.i.i279, align 1
  %908 = call i16 @llvm.bswap.i16(i16 %907) #7
  %conv.i.i.i280 = zext i16 %908 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %905, i32 %conv.i.i.i280)
  %cmp7.not.i.i.i = icmp eq i32 %905, %conv.i.i.i280
  br i1 %cmp7.not.i.i.i, label %do.end.i.i.i, label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift, ptr noundef nonnull @.str.60, i32 noundef 787, ptr noundef nonnull @__func__.balance_leaf_paste_right_shift, i32 noundef %905, i32 noundef %conv.i.i.i280) #10
  unreachable

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  %call17.i.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %903) #7
  %909 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %insert_size, align 4
  %911 = ptrtoint ptr %rbytes11.i33.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %rbytes11.i33.i, align 8
  %sub21.i.i.i = sub i32 %910, %912
  %913 = call i32 @llvm.smax.i32(i32 %sub21.i.i.i, i32 0) #7
  %R.i.i44.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %914 = ptrtoint ptr %R.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %R.i.i44.i, align 8
  %b_data.i.i9.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %915, i32 0, i32 5
  %916 = ptrtoint ptr %b_data.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %b_data.i.i9.i.i.i, align 4
  %ih_version.i.i45.i = getelementptr i8, ptr %917, i32 46
  %918 = ptrtoint ptr %ih_version.i.i45.i to i32
  call void @__asan_loadN_noabort(i32 %918, i32 2)
  %919 = load i16, ptr %ih_version.i.i45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %919)
  %cmp.i.i.i.i.i281 = icmp eq i16 %919, 0
  %u.i.i.i.i.i282 = getelementptr i8, ptr %917, i32 32
  br i1 %cmp.i.i.i.i.i281, label %is_indirect_le_key.exit.i.i.i, label %if.else.i.i.i.i47.i

if.else.i.i.i.i47.i:                              ; preds = %do.end.i.i.i
  %920 = ptrtoint ptr %u.i.i.i.i.i282 to i32
  call void @__asan_loadN_noabort(i32 %920, i32 8)
  %921 = load i64, ptr %u.i.i.i.i.i282, align 1
  %922 = and i64 %921, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %922)
  %phi.cmp1.i.i.i46.i = icmp eq i64 %922, 16
  br i1 %phi.cmp1.i.i.i46.i, label %if.end37.i.i.i, label %if.else.i.i.i.i47.i.if.else.i.i19.i.i.i_crit_edge

if.else.i.i.i.i47.i.if.else.i.i19.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i19.i.i.i

is_indirect_le_key.exit.i.i.i:                    ; preds = %do.end.i.i.i
  %k_uniqueness.i.i.i.i48.i = getelementptr i8, ptr %917, i32 36
  %923 = ptrtoint ptr %k_uniqueness.i.i.i.i48.i to i32
  call void @__asan_loadN_noabort(i32 %923, i32 4)
  %924 = load i32, ptr %k_uniqueness.i.i.i.i48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %924)
  %cond.i.i.i.i283 = icmp eq i32 %924, -16777217
  br i1 %cond.i.i.i.i283, label %if.end37.thread64.i.i.i, label %is_indirect_le_key.exit.i.i.i.if.then.i.i17.i.i.i_crit_edge

is_indirect_le_key.exit.i.i.i.if.then.i.i17.i.i.i_crit_edge: ; preds = %is_indirect_le_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i17.i.i.i

if.end37.thread64.i.i.i:                          ; preds = %is_indirect_le_key.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %925 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits66.i.i.i = getelementptr inbounds %struct.super_block, ptr %926, i32 0, i32 2
  %927 = ptrtoint ptr %s_blocksize_bits66.i.i.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %s_blocksize_bits66.i.i.i, align 4
  %conv3567.i.i.i = zext i8 %928 to i32
  %sub3668.i.i.i = add nsw i32 %conv3567.i.i.i, -2
  %shl69.i.i.i = shl i32 %913, %sub3668.i.i.i
  br label %if.then.i.i17.i.i.i

if.end37.i.i.i:                                   ; preds = %if.else.i.i.i.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  %929 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i.i285 = getelementptr inbounds %struct.super_block, ptr %930, i32 0, i32 2
  %931 = ptrtoint ptr %s_blocksize_bits.i.i.i285 to i32
  call void @__asan_load1_noabort(i32 %931)
  %932 = load i8, ptr %s_blocksize_bits.i.i.i285, align 4
  %conv35.i.i.i = zext i8 %932 to i32
  %sub36.i.i.i = add nsw i32 %conv35.i.i.i, -2
  %shl.i.i.i286 = shl i32 %913, %sub36.i.i.i
  br label %if.else.i.i19.i.i.i

if.then.i.i17.i.i.i:                              ; preds = %if.end37.thread64.i.i.i, %is_indirect_le_key.exit.i.i.i.if.then.i.i17.i.i.i_crit_edge
  %shl69.sink.i.i.i = phi i32 [ %shl69.i.i.i, %if.end37.thread64.i.i.i ], [ %913, %is_indirect_le_key.exit.i.i.i.if.then.i.i17.i.i.i_crit_edge ]
  %conv4170.i.i.i = zext i32 %shl69.sink.i.i.i to i64
  %933 = ptrtoint ptr %u.i.i.i.i.i282 to i32
  call void @__asan_loadN_noabort(i32 %933, i32 4)
  %934 = load i32, ptr %u.i.i.i.i.i282, align 1
  %935 = call i32 @llvm.bswap.i32(i32 %934) #7
  %conv.i4.i.i.i.i287 = add i32 %935, %shl69.sink.i.i.i
  %936 = call i32 @llvm.bswap.i32(i32 %conv.i4.i.i.i.i287) #7
  %937 = ptrtoint ptr %u.i.i.i.i.i282 to i32
  call void @__asan_storeN_noabort(i32 %937, i32 4)
  store i32 %936, ptr %u.i.i.i.i.i282, align 1
  br label %add_le_key_k_offset.exit.i.i.i291

if.else.i.i19.i.i.i:                              ; preds = %if.end37.i.i.i, %if.else.i.i.i.i47.i.if.else.i.i19.i.i.i_crit_edge
  %shl.sink.i.i.i = phi i32 [ %shl.i.i.i286, %if.end37.i.i.i ], [ %913, %if.else.i.i.i.i47.i.if.else.i.i19.i.i.i_crit_edge ]
  %conv41.i.i.i = zext i32 %shl.sink.i.i.i to i64
  %938 = and i64 %921, -241
  %939 = call i64 @llvm.bswap.i64(i64 %938) #7
  %add.i18.i.i.i = add nuw nsw i64 %939, %conv41.i.i.i
  %and.i.i.i.i.i.i288 = and i64 %add.i18.i.i.i, 1152921504606846975
  %940 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i.i288) #7
  %or.i.i.i.i.i.i289 = or i64 %940, %922
  %941 = ptrtoint ptr %u.i.i.i.i.i282 to i32
  call void @__asan_storeN_noabort(i32 %941, i32 8)
  store i64 %or.i.i.i.i.i.i289, ptr %u.i.i.i.i.i282, align 1
  br label %add_le_key_k_offset.exit.i.i.i291

add_le_key_k_offset.exit.i.i.i291:                ; preds = %if.else.i.i19.i.i.i, %if.then.i.i17.i.i.i
  %conv4157.i.i.i = phi i64 [ %conv4170.i.i.i, %if.then.i.i17.i.i.i ], [ %conv41.i.i.i, %if.else.i.i19.i.i.i ]
  %temp_rem.056.i.i.i = phi i32 [ %shl69.sink.i.i.i, %if.then.i.i17.i.i.i ], [ %shl.sink.i.i.i, %if.else.i.i19.i.i.i ]
  %CFR.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %942 = ptrtoint ptr %CFR.i.i.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %CFR.i.i.i, align 8
  %rkey.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %944 = ptrtoint ptr %rkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %rkey.i.i.i, align 8
  %b_data.i.i20.i.i.i290 = getelementptr inbounds %struct.buffer_head, ptr %943, i32 0, i32 5
  %946 = ptrtoint ptr %b_data.i.i20.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %b_data.i.i20.i.i.i290, align 4
  %add.ptr.i.i21.i.i.i = getelementptr i8, ptr %947, i32 24
  %arrayidx.i22.i.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i21.i.i.i, i32 %945
  %u.i.i24.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i22.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i281, label %if.then.i.i26.i.i.i, label %if.else.i.i31.i.i.i

if.then.i.i26.i.i.i:                              ; preds = %add_le_key_k_offset.exit.i.i.i291
  call void @__sanitizer_cov_trace_pc() #9
  %948 = ptrtoint ptr %u.i.i24.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %948, i32 4)
  %949 = load i32, ptr %u.i.i24.i.i.i, align 1
  %950 = call i32 @llvm.bswap.i32(i32 %949) #7
  %conv.i4.i25.i.i.i = add i32 %950, %temp_rem.056.i.i.i
  %951 = call i32 @llvm.bswap.i32(i32 %conv.i4.i25.i.i.i) #7
  %952 = ptrtoint ptr %u.i.i24.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %952, i32 4)
  store i32 %951, ptr %u.i.i24.i.i.i, align 1
  br label %add_le_key_k_offset.exit32.i.i.i

if.else.i.i31.i.i.i:                              ; preds = %add_le_key_k_offset.exit.i.i.i291
  call void @__sanitizer_cov_trace_pc() #9
  %953 = ptrtoint ptr %u.i.i24.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %953, i32 8)
  %954 = load i64, ptr %u.i.i24.i.i.i, align 1
  %955 = and i64 %954, -241
  %956 = call i64 @llvm.bswap.i64(i64 %955) #7
  %add.i27.i.i.i = add nuw nsw i64 %956, %conv4157.i.i.i
  %and.i.i.i28.i.i.i = and i64 %add.i27.i.i.i, 1152921504606846975
  %and1.i.i.i29.i.i.i = and i64 %954, 240
  %957 = call i64 @llvm.bswap.i64(i64 %and.i.i.i28.i.i.i) #7
  %or.i.i.i30.i.i.i = or i64 %957, %and1.i.i.i29.i.i.i
  %958 = ptrtoint ptr %u.i.i24.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %958, i32 8)
  store i64 %or.i.i.i30.i.i.i, ptr %u.i.i24.i.i.i, align 1
  br label %add_le_key_k_offset.exit32.i.i.i

add_le_key_k_offset.exit32.i.i.i:                 ; preds = %if.else.i.i31.i.i.i, %if.then.i.i26.i.i.i
  %959 = ptrtoint ptr %CFR.i.i.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %CFR.i.i.i, align 8
  %transaction_handle.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %961 = ptrtoint ptr %transaction_handle.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %transaction_handle.i.i.i.i, align 4
  %call.i.i.i.i292 = call i32 @journal_mark_dirty(ptr noundef %962, ptr noundef %960) #7
  %963 = ptrtoint ptr %bi.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %963)
  store ptr %tb, ptr %bi.i.i.i192, align 4
  %964 = ptrtoint ptr %R.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %R.i.i44.i, align 8
  %966 = ptrtoint ptr %833 to i32
  call void @__asan_store4_noabort(i32 %966)
  store ptr %965, ptr %833, align 4
  %FR.i.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %967 = ptrtoint ptr %FR.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %FR.i.i.i.i, align 8
  %969 = ptrtoint ptr %834 to i32
  call void @__asan_store4_noabort(i32 %969)
  store ptr %968, ptr %834, align 4
  %970 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i.i.i.i293 = getelementptr inbounds %struct.treepath, ptr %971, i32 0, i32 2
  %972 = ptrtoint ptr %971 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load i32, ptr %971, align 4
  %sub.i.i.i.i.i294 = add i32 %973, -1
  %add.ptr.i.i33.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i293, i32 %sub.i.i.i.i.i294
  %974 = ptrtoint ptr %add.ptr.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %add.ptr.i.i33.i.i.i, align 4
  %cmp.i.i34.i.i.i = icmp eq ptr %975, null
  %cmp10.i.i.i.i.i295 = icmp eq ptr %968, null
  %or.cond.i.i.i296 = select i1 %cmp.i.i34.i.i.i, i1 true, i1 %cmp10.i.i.i.i.i295
  br i1 %or.cond.i.i.i296, label %if.then.i.i35.i.i.i, label %buffer_info_init_right.exit.i.i.i

if.then.i.i35.i.i.i:                              ; preds = %add_le_key_k_offset.exit32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %975, i32 noundef 0, ptr noundef %968) #10
  unreachable

buffer_info_init_right.exit.i.i.i:                ; preds = %add_le_key_k_offset.exit32.i.i.i
  %pe_position.i.i.i.i.i297 = getelementptr %struct.path_element, ptr %path_elements.i.i.i.i.i293, i32 %sub.i.i.i.i.i294, i32 1
  %976 = ptrtoint ptr %pe_position.i.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %pe_position.i.i.i.i.i297, align 4
  %b_data.i.i36.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %975, i32 0, i32 5
  %978 = ptrtoint ptr %b_data.i.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %b_data.i.i36.i.i.i, align 4
  %blk_nr_item.i.i.i.i.i298 = getelementptr inbounds %struct.block_head, ptr %979, i32 0, i32 1
  %980 = ptrtoint ptr %blk_nr_item.i.i.i.i.i298 to i32
  call void @__asan_load2_noabort(i32 %980)
  %981 = load i16, ptr %blk_nr_item.i.i.i.i.i298, align 2
  %982 = call i16 @llvm.bswap.i16(i16 %981) #7
  %conv.i.i.i.i.i299 = zext i16 %982 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %977, i32 %conv.i.i.i.i.i299)
  %cmp31.i.i.i.i.i = icmp eq i32 %977, %conv.i.i.i.i.i299
  %add34.i.i.i.i.i = add i32 %977, 1
  %retval.0.i.i.i.i.i300 = select i1 %cmp31.i.i.i.i.i, i32 0, i32 %add34.i.i.i.i.i
  %983 = ptrtoint ptr %835 to i32
  call void @__asan_store4_noabort(i32 %983)
  store i32 %retval.0.i.i.i.i.i300, ptr %835, align 4
  %984 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %985, i32 %913)
  %cmp48.i.i.i = icmp slt i32 %985, %913
  br i1 %cmp48.i.i.i, label %if.then50.i.i.i, label %if.else.i.i.i302

if.then50.i.i.i:                                  ; preds = %buffer_info_init_right.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr51.i.i.i = getelementptr i8, ptr %add.ptr27, i32 %913
  %idx.neg.i.i.i = sub i32 0, %985
  %add.ptr53.i.i.i = getelementptr i8, ptr %add.ptr51.i.i.i, i32 %idx.neg.i.i.i
  br label %if.end58.i.i.i

if.else.i.i.i302:                                 ; preds = %buffer_info_init_right.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub55.i.i.i = sub i32 %985, %913
  %986 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %986)
  store i32 %913, ptr %zeroes_num, align 4
  br label %if.end58.i.i.i

if.end58.i.i.i:                                   ; preds = %if.else.i.i.i302, %if.then50.i.i.i
  %r_zeroes_number.0.i.i.i = phi i32 [ 0, %if.then50.i.i.i ], [ %sub55.i.i.i, %if.else.i.i.i302 ]
  %r_body.0.i.i.i = phi ptr [ %add.ptr53.i.i.i, %if.then50.i.i.i ], [ %add.ptr27, %if.else.i.i.i302 ]
  %987 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %insert_size, align 4
  %sub61.i.i.i = sub i32 %988, %913
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i192, i32 noundef 0, i32 noundef %903, i32 noundef %sub61.i.i.i, ptr noundef %r_body.0.i.i.i, i32 noundef %r_zeroes_number.0.i.i.i) #7
  %989 = ptrtoint ptr %R.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %R.i.i44.i, align 8
  %b_data.i.i37.i.i.i303 = getelementptr inbounds %struct.buffer_head, ptr %990, i32 0, i32 5
  %991 = ptrtoint ptr %b_data.i.i37.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %b_data.i.i37.i.i.i303, align 4
  %ih_version.i39.i.i.i = getelementptr i8, ptr %992, i32 46
  %993 = ptrtoint ptr %ih_version.i39.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %993, i32 2)
  %994 = load i16, ptr %ih_version.i39.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %994)
  %cmp.i.i.i40.i.i.i = icmp eq i16 %994, 0
  br i1 %cmp.i.i.i40.i.i.i, label %is_indirect_le_ih.exit.i.i.i304, label %if.else.i.i.i46.i.i.i

if.else.i.i.i46.i.i.i:                            ; preds = %if.end58.i.i.i
  %u.i.i.i41.i.i.i = getelementptr i8, ptr %992, i32 32
  %995 = ptrtoint ptr %u.i.i.i41.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %995, i32 8)
  %996 = load i64, ptr %u.i.i.i41.i.i.i, align 1
  %997 = and i64 %996, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %997)
  %phi.cmp1.i.i45.i.i.i = icmp eq i64 %997, 16
  br i1 %phi.cmp1.i.i45.i.i.i, label %if.else.i.i.i46.i.i.i.do.body68.i.i.i306_crit_edge, label %if.else.i.i.i46.i.i.i.if.end82.i.i.i_crit_edge

if.else.i.i.i46.i.i.i.if.end82.i.i.i_crit_edge:   ; preds = %if.else.i.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i.i.i

if.else.i.i.i46.i.i.i.do.body68.i.i.i306_crit_edge: ; preds = %if.else.i.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68.i.i.i306

is_indirect_le_ih.exit.i.i.i304:                  ; preds = %if.end58.i.i.i
  %k_uniqueness.i.i.i42.i.i.i = getelementptr i8, ptr %992, i32 36
  %998 = ptrtoint ptr %k_uniqueness.i.i.i42.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %998, i32 4)
  %999 = load i32, ptr %k_uniqueness.i.i.i42.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %999)
  %cond.i.i43.i.i.i = icmp eq i32 %999, -16777217
  br i1 %cond.i.i43.i.i.i, label %is_indirect_le_ih.exit.i.i.i304.do.body68.i.i.i306_crit_edge, label %is_indirect_le_ih.exit.i.i.i304.if.end82.i.i.i_crit_edge

is_indirect_le_ih.exit.i.i.i304.if.end82.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i.i.i

is_indirect_le_ih.exit.i.i.i304.do.body68.i.i.i306_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68.i.i.i306

do.body68.i.i.i306:                               ; preds = %is_indirect_le_ih.exit.i.i.i304.do.body68.i.i.i306_crit_edge, %if.else.i.i.i46.i.i.i.do.body68.i.i.i306_crit_edge
  %u.i.i.i305 = getelementptr i8, ptr %992, i32 40
  %1000 = ptrtoint ptr %u.i.i.i305 to i32
  call void @__asan_storeN_noabort(i32 %1000, i32 2)
  store i16 0, ptr %u.i.i.i305, align 1
  br label %if.end82.i.i.i

if.end82.i.i.i:                                   ; preds = %do.body68.i.i.i306, %is_indirect_le_ih.exit.i.i.i304.if.end82.i.i.i_crit_edge, %if.else.i.i.i46.i.i.i.if.end82.i.i.i_crit_edge
  %1001 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1001)
  store i32 %913, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub21.i.i.i)
  %tobool85.not.i.i.i = icmp slt i32 %sub21.i.i.i, 1
  br i1 %tobool85.not.i.i.i, label %if.then86.i.i.i, label %if.end82.i.i.i.balance_leaf_paste_right_shift.exit.i.i_crit_edge

if.end82.i.i.i.balance_leaf_paste_right_shift.exit.i.i_crit_edge: ; preds = %if.end82.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_right_shift.exit.i.i

if.then86.i.i.i:                                  ; preds = %if.end82.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1002 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %pos_in_item11, align 8
  %inc.i.i.i = add i32 %1003, 1
  store i32 %inc.i.i.i, ptr %pos_in_item11, align 8
  br label %balance_leaf_paste_right_shift.exit.i.i

balance_leaf_paste_right_shift.exit.i.i:          ; preds = %if.then86.i.i.i, %if.end82.i.i.i.balance_leaf_paste_right_shift.exit.i.i_crit_edge, %balance_leaf_paste_right_shift_dirent.exit.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i192) #7
  br label %balance_leaf_right.exit

if.else.i49.i:                                    ; preds = %land.lhs.true.i35.i.if.else.i49.i_crit_edge, %if.end.i32.i.if.else.i49.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i1.i.i190) #7
  %1004 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i190, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i190, i32 0, i32 2
  %1006 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i190, i32 0, i32 3
  %1007 = ptrtoint ptr %bi.i1.i.i190 to i32
  call void @__asan_store4_noabort(i32 %1007)
  store ptr %tb, ptr %bi.i1.i.i190, align 4
  %R.i.i.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 6
  %1008 = ptrtoint ptr %R.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %R.i.i.i.i, align 8
  %1010 = ptrtoint ptr %1004 to i32
  call void @__asan_store4_noabort(i32 %1010)
  store ptr %1009, ptr %1004, align 4
  %FR.i.i6.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8
  %1011 = ptrtoint ptr %FR.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %FR.i.i6.i.i, align 8
  %1013 = ptrtoint ptr %1005 to i32
  call void @__asan_store4_noabort(i32 %1013)
  store ptr %1012, ptr %1005, align 4
  %1014 = ptrtoint ptr %819 to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load i32, ptr %819, align 4
  %sub.i.i.i7.i.i = add i32 %1015, -1
  %add.ptr.i.i.i8.i.i = getelementptr %struct.path_element, ptr %path_elements.i20.i, i32 %sub.i.i.i7.i.i
  %1016 = ptrtoint ptr %add.ptr.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %add.ptr.i.i.i8.i.i, align 4
  %cmp.i.i.i9.i.i = icmp eq ptr %1017, null
  %cmp10.i.i.i10.i.i = icmp eq ptr %1012, null
  %or.cond.i11.i.i = select i1 %cmp.i.i.i9.i.i, i1 true, i1 %cmp10.i.i.i10.i.i
  br i1 %or.cond.i11.i.i, label %if.then.i.i.i.i.i307, label %buffer_info_init_right.exit.i22.i.i

if.then.i.i.i.i.i307:                             ; preds = %if.else.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %1017, i32 noundef 0, ptr noundef %1012) #10
  unreachable

buffer_info_init_right.exit.i22.i.i:              ; preds = %if.else.i49.i
  %pe_position.i.i.i12.i.i = getelementptr %struct.path_element, ptr %path_elements.i20.i, i32 %sub.i.i.i7.i.i, i32 1
  %1018 = ptrtoint ptr %pe_position.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load i32, ptr %pe_position.i.i.i12.i.i, align 4
  %b_data.i.i.i13.i.i = getelementptr inbounds %struct.buffer_head, ptr %1017, i32 0, i32 5
  %1020 = ptrtoint ptr %b_data.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %b_data.i.i.i13.i.i, align 4
  %blk_nr_item.i.i.i14.i.i = getelementptr inbounds %struct.block_head, ptr %1021, i32 0, i32 1
  %1022 = ptrtoint ptr %blk_nr_item.i.i.i14.i.i to i32
  call void @__asan_load2_noabort(i32 %1022)
  %1023 = load i16, ptr %blk_nr_item.i.i.i14.i.i, align 2
  %1024 = call i16 @llvm.bswap.i16(i16 %1023) #7
  %conv.i.i.i15.i.i = zext i16 %1024 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1019, i32 %conv.i.i.i15.i.i)
  %cmp31.i.i.i16.i.i = icmp eq i32 %1019, %conv.i.i.i15.i.i
  %add34.i.i.i17.i.i = add i32 %1019, 1
  %retval.0.i.i.i18.i.i = select i1 %cmp31.i.i.i16.i.i, i32 0, i32 %add34.i.i.i17.i.i
  %1025 = ptrtoint ptr %1006 to i32
  call void @__asan_store4_noabort(i32 %1025)
  store i32 %retval.0.i.i.i18.i.i, ptr %1006, align 4
  %rbytes.i20.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %1026 = ptrtoint ptr %rbytes.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load i32, ptr %rbytes.i20.i.i, align 8
  %call.i.i.i = call i32 @leaf_shift_right(ptr noundef %tb, i32 noundef %668, i32 noundef %1027) #7
  %1028 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1029)
  %cmp.i.i.i308 = icmp sgt i32 %1029, -1
  br i1 %cmp.i.i.i308, label %if.then.i23.i.i, label %buffer_info_init_right.exit.i22.i.i.if.end.i32.i.i_crit_edge

buffer_info_init_right.exit.i22.i.i.if.end.i32.i.i_crit_edge: ; preds = %buffer_info_init_right.exit.i22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32.i.i

if.then.i23.i.i:                                  ; preds = %buffer_info_init_right.exit.i22.i.i
  %1030 = ptrtoint ptr %bi.i1.i.i190 to i32
  call void @__asan_store4_noabort(i32 %1030)
  store ptr %tb, ptr %bi.i1.i.i190, align 4
  %1031 = ptrtoint ptr %R.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %R.i.i.i.i, align 8
  %1033 = ptrtoint ptr %1004 to i32
  call void @__asan_store4_noabort(i32 %1033)
  store ptr %1032, ptr %1004, align 4
  %1034 = ptrtoint ptr %FR.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %FR.i.i6.i.i, align 8
  %1036 = ptrtoint ptr %1005 to i32
  call void @__asan_store4_noabort(i32 %1036)
  store ptr %1035, ptr %1005, align 4
  %1037 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i6.i.i.i = getelementptr inbounds %struct.treepath, ptr %1038, i32 0, i32 2
  %1039 = ptrtoint ptr %1038 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %1038, align 4
  %sub.i.i7.i.i.i = add i32 %1040, -1
  %add.ptr.i.i8.i.i.i309 = getelementptr %struct.path_element, ptr %path_elements.i.i6.i.i.i, i32 %sub.i.i7.i.i.i
  %1041 = ptrtoint ptr %add.ptr.i.i8.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %add.ptr.i.i8.i.i.i309, align 4
  %cmp.i.i10.i.i.i = icmp eq ptr %1042, null
  %cmp10.i.i11.i.i.i = icmp eq ptr %1035, null
  %or.cond34.i.i.i = select i1 %cmp.i.i10.i.i.i, i1 true, i1 %cmp10.i.i11.i.i.i
  br i1 %or.cond34.i.i.i, label %if.then.i.i13.i.i.i, label %buffer_info_init_right.exit21.i.i.i

if.then.i.i13.i.i.i:                              ; preds = %if.then.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_right_neighbor_position, ptr noundef nonnull @.str.9, i32 noundef 1599, ptr noundef nonnull @__func__.get_right_neighbor_position, i32 noundef 0, ptr noundef %1042, i32 noundef 0, ptr noundef %1035) #10
  unreachable

buffer_info_init_right.exit21.i.i.i:              ; preds = %if.then.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pe_position.i.i9.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i6.i.i.i, i32 %sub.i.i7.i.i.i, i32 1
  %1043 = ptrtoint ptr %pe_position.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load i32, ptr %pe_position.i.i9.i.i.i, align 4
  %b_data.i.i14.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %1042, i32 0, i32 5
  %1045 = ptrtoint ptr %b_data.i.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %b_data.i.i14.i.i.i, align 4
  %blk_nr_item.i.i15.i.i.i = getelementptr inbounds %struct.block_head, ptr %1046, i32 0, i32 1
  %1047 = ptrtoint ptr %blk_nr_item.i.i15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1047)
  %1048 = load i16, ptr %blk_nr_item.i.i15.i.i.i, align 2
  %1049 = call i16 @llvm.bswap.i16(i16 %1048) #7
  %conv.i.i16.i.i.i = zext i16 %1049 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1044, i32 %conv.i.i16.i.i.i)
  %cmp31.i.i17.i.i.i = icmp eq i32 %1044, %conv.i.i16.i.i.i
  %add34.i.i18.i.i.i = add i32 %1044, 1
  %retval.0.i.i19.i.i.i = select i1 %cmp31.i.i17.i.i.i, i32 0, i32 %add34.i.i18.i.i.i
  %1050 = ptrtoint ptr %1006 to i32
  call void @__asan_store4_noabort(i32 %1050)
  store i32 %retval.0.i.i19.i.i.i, ptr %1006, align 4
  %1051 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load i32, ptr %item_pos, align 4
  %sub.i25.i.i = sub i32 %1052, %conv.i24.i
  %1053 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load i32, ptr %rnum.i194, align 8
  %add.i.i.i310 = add i32 %sub.i25.i.i, %1054
  %1055 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load i32, ptr %insert_size, align 4
  %1057 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i1.i.i190, i32 noundef %add.i.i.i310, i32 noundef %1029, i32 noundef %1056, ptr noundef %add.ptr27, i32 noundef %1058) #7
  br label %if.end.i32.i.i

if.end.i32.i.i:                                   ; preds = %buffer_info_init_right.exit21.i.i.i, %buffer_info_init_right.exit.i22.i.i.if.end.i32.i.i_crit_edge
  %1059 = ptrtoint ptr %R.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %R.i.i.i.i, align 8
  %1061 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %item_pos, align 4
  %sub9.i.i.i = sub i32 %1062, %conv.i24.i
  %1063 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %rnum.i194, align 8
  %add12.i.i.i = add i32 %sub9.i.i.i, %1064
  %b_data.i.i22.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %1060, i32 0, i32 5
  %1065 = ptrtoint ptr %b_data.i.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %b_data.i.i22.i.i.i, align 4
  %add.ptr.i.i23.i.i.i = getelementptr i8, ptr %1066, i32 24
  %arrayidx.i.i28.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i23.i.i.i, i32 %add12.i.i.i
  %ih_version.i.i29.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i28.i.i, i32 0, i32 4
  %1067 = ptrtoint ptr %ih_version.i.i29.i.i to i32
  call void @__asan_loadN_noabort(i32 %1067, i32 2)
  %1068 = load i16, ptr %ih_version.i.i29.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1068)
  %cmp.i.i.i.i30.i.i = icmp eq i16 %1068, 0
  %u.i.i.i.i31.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i28.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i30.i.i, label %is_direntry_le_ih.exit.i37.i.i, label %if.else.i.i.i.i34.i.i

if.else.i.i.i.i34.i.i:                            ; preds = %if.end.i32.i.i
  %1069 = ptrtoint ptr %u.i.i.i.i31.i.i to i32
  call void @__asan_loadN_noabort(i32 %1069, i32 8)
  %1070 = load i64, ptr %u.i.i.i.i31.i.i, align 1
  %1071 = and i64 %1070, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1071)
  %phi.cmp1.i.i.i33.i.i = icmp eq i64 %1071, 48
  br i1 %phi.cmp1.i.i.i33.i.i, label %if.else.i.i.i.i34.i.i.land.lhs.true.i.i.i311_crit_edge, label %if.else.i.i.i.i34.i.i.if.end44.i.i.i_crit_edge

if.else.i.i.i.i34.i.i.if.end44.i.i.i_crit_edge:   ; preds = %if.else.i.i.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i.i

if.else.i.i.i.i34.i.i.land.lhs.true.i.i.i311_crit_edge: ; preds = %if.else.i.i.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i311

is_direntry_le_ih.exit.i37.i.i:                   ; preds = %if.end.i32.i.i
  %k_uniqueness.i.i.i.i35.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i31.i.i, i32 0, i32 1
  %1072 = ptrtoint ptr %k_uniqueness.i.i.i.i35.i.i to i32
  call void @__asan_loadN_noabort(i32 %1072, i32 4)
  %1073 = load i32, ptr %k_uniqueness.i.i.i.i35.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %1073)
  %cond.i.i.i36.i.i = icmp eq i32 %1073, -201261056
  br i1 %cond.i.i.i36.i.i, label %is_direntry_le_ih.exit.i37.i.i.land.lhs.true.i.i.i311_crit_edge, label %is_direntry_le_ih.exit.i37.i.i.if.end44.i.i.i_crit_edge

is_direntry_le_ih.exit.i37.i.i.if.end44.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i.i

is_direntry_le_ih.exit.i37.i.i.land.lhs.true.i.i.i311_crit_edge: ; preds = %is_direntry_le_ih.exit.i37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i311

land.lhs.true.i.i.i311:                           ; preds = %is_direntry_le_ih.exit.i37.i.i.land.lhs.true.i.i.i311_crit_edge, %if.else.i.i.i.i34.i.i.land.lhs.true.i.i.i311_crit_edge
  %1074 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1075)
  %cmp16.i.i.i = icmp sgt i32 %1075, -1
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %land.lhs.true.i.i.i311.if.end44.i.i.i_crit_edge

land.lhs.true.i.i.i311.if.end44.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true.i.i.i311
  %add.ptr25.i.i.i = getelementptr i8, ptr %add.ptr27, i32 16
  %1076 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i1.i.i190, i32 noundef %add12.i.i.i, i32 noundef %1075, i32 noundef 1, ptr noundef %add.ptr27, ptr noundef %add.ptr25.i.i.i, i32 noundef %1077) #7
  %1078 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1079)
  %tobool29.not.i.i.i = icmp eq i32 %1079, 0
  br i1 %tobool29.not.i.i.i, label %do.body.i.i.i312, label %if.then18.i.i.i.if.end44.i.i.i_crit_edge

if.then18.i.i.i.if.end44.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i.i

do.body.i.i.i312:                                 ; preds = %if.then18.i.i.i
  %1080 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load i32, ptr %item_pos, align 4
  %sub32.i.i.i = sub i32 %1081, %conv.i24.i
  %1082 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %rnum.i194, align 8
  %add35.i.i.i = sub i32 0, %1083
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32.i.i.i, i32 %add35.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %sub32.i.i.i, %add35.i.i.i
  br i1 %tobool36.not.i.i.i, label %do.end.i40.i.i, label %if.then37.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body.i.i.i312
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_paste_right_whole, ptr noundef nonnull @.str.63, i32 noundef 868, ptr noundef nonnull @__func__.balance_leaf_paste_right_whole) #10
  unreachable

do.end.i40.i.i:                                   ; preds = %do.body.i.i.i312
  call void @__sanitizer_cov_trace_pc() #9
  %CFR.i38.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %1084 = ptrtoint ptr %CFR.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %CFR.i38.i.i, align 8
  %rkey.i39.i.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %1086 = ptrtoint ptr %rkey.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load i32, ptr %rkey.i39.i.i, align 8
  %1088 = ptrtoint ptr %R.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %R.i.i.i.i, align 8
  call void @replace_key(ptr noundef %tb, ptr noundef %1085, i32 noundef %1087, ptr noundef %1089, i32 noundef 0) #7
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %do.end.i40.i.i, %if.then18.i.i.i.if.end44.i.i.i_crit_edge, %land.lhs.true.i.i.i311.if.end44.i.i.i_crit_edge, %is_direntry_le_ih.exit.i37.i.i.if.end44.i.i.i_crit_edge, %if.else.i.i.i.i34.i.i.if.end44.i.i.i_crit_edge
  %1090 = ptrtoint ptr %ih_version.i.i29.i.i to i32
  call void @__asan_loadN_noabort(i32 %1090, i32 2)
  %1091 = load i16, ptr %ih_version.i.i29.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1091)
  %cmp.i.i.i25.i.i.i = icmp eq i16 %1091, 0
  br i1 %cmp.i.i.i25.i.i.i, label %is_indirect_le_ih.exit.i41.i.i, label %if.else.i.i.i31.i.i.i

if.else.i.i.i31.i.i.i:                            ; preds = %if.end44.i.i.i
  %1092 = ptrtoint ptr %u.i.i.i.i31.i.i to i32
  call void @__asan_loadN_noabort(i32 %1092, i32 8)
  %1093 = load i64, ptr %u.i.i.i.i31.i.i, align 1
  %1094 = and i64 %1093, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %1094)
  %phi.cmp1.i.i30.i.i.i = icmp eq i64 %1094, 16
  br i1 %phi.cmp1.i.i30.i.i.i, label %if.else.i.i.i31.i.i.i.do.body48.i.i.i_crit_edge, label %if.else.i.i.i31.i.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge

if.else.i.i.i31.i.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge: ; preds = %if.else.i.i.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_right_whole.exit.i.i

if.else.i.i.i31.i.i.i.do.body48.i.i.i_crit_edge:  ; preds = %if.else.i.i.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48.i.i.i

is_indirect_le_ih.exit.i41.i.i:                   ; preds = %if.end44.i.i.i
  %k_uniqueness.i.i.i27.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i31.i.i, i32 0, i32 1
  %1095 = ptrtoint ptr %k_uniqueness.i.i.i27.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1095, i32 4)
  %1096 = load i32, ptr %k_uniqueness.i.i.i27.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1096)
  %cond.i.i28.i.i.i = icmp eq i32 %1096, -16777217
  br i1 %cond.i.i28.i.i.i, label %is_indirect_le_ih.exit.i41.i.i.do.body48.i.i.i_crit_edge, label %is_indirect_le_ih.exit.i41.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge

is_indirect_le_ih.exit.i41.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_paste_right_whole.exit.i.i

is_indirect_le_ih.exit.i41.i.i.do.body48.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48.i.i.i

do.body48.i.i.i:                                  ; preds = %is_indirect_le_ih.exit.i41.i.i.do.body48.i.i.i_crit_edge, %if.else.i.i.i31.i.i.i.do.body48.i.i.i_crit_edge
  %u.i42.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i28.i.i, i32 0, i32 1
  %1097 = ptrtoint ptr %u.i42.i.i to i32
  call void @__asan_storeN_noabort(i32 %1097, i32 2)
  store i16 0, ptr %u.i42.i.i, align 1
  br label %balance_leaf_paste_right_whole.exit.i.i

balance_leaf_paste_right_whole.exit.i.i:          ; preds = %do.body48.i.i.i, %is_indirect_le_ih.exit.i41.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge, %if.else.i.i.i31.i.i.i.balance_leaf_paste_right_whole.exit.i.i_crit_edge
  %1098 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1098)
  store i32 0, ptr %insert_size, align 4
  %1099 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %1099)
  store i32 0, ptr %zeroes_num, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i1.i.i190) #7
  br label %balance_leaf_right.exit

balance_leaf_right.exit:                          ; preds = %balance_leaf_paste_right_whole.exit.i.i, %balance_leaf_paste_right_shift.exit.i.i, %if.then.i30.i, %balance_leaf_insert_right.exit.i, %balance_leaf_left.exit.balance_leaf_right.exit_crit_edge
  %blknum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 19
  %1100 = ptrtoint ptr %blknum to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load i32, ptr %blknum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1101)
  %cmp34 = icmp sgt i32 %1101, 3
  br i1 %cmp34, label %if.then36, label %do.body40

if.then36:                                        ; preds = %balance_leaf_right.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf, ptr noundef nonnull @.str.30, i32 noundef 1419, ptr noundef nonnull @__func__.balance_leaf, i32 noundef %1101) #10
  unreachable

do.body40:                                        ; preds = %balance_leaf_right.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1101)
  %cmp43 = icmp slt i32 %1101, 0
  br i1 %cmp43, label %if.then45, label %do.end50

if.then45:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf, ptr noundef nonnull @.str.31, i32 noundef 1421, ptr noundef nonnull @__func__.balance_leaf, i32 noundef %1101) #10
  unreachable

do.end50:                                         ; preds = %do.body40
  %1102 = zext i32 %1101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1102, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %1101, label %do.body.lr.ph.i [
    i32 0, label %do.body56
    i32 1, label %do.end50.balance_leaf_new_nodes.exit_crit_edge
  ]

do.end50.balance_leaf_new_nodes.exit_crit_edge:   ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_new_nodes.exit

do.body56:                                        ; preds = %do.end50
  %1103 = ptrtoint ptr %lnum.i157 to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %lnum.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1104)
  %tobool59.not = icmp eq i32 %1104, 0
  br i1 %tobool59.not, label %do.body56.if.then62_crit_edge, label %lor.lhs.false

do.body56.if.then62_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

lor.lhs.false:                                    ; preds = %do.body56
  %1105 = ptrtoint ptr %rnum.i194 to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load i32, ptr %rnum.i194, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1106)
  %tobool61.not = icmp eq i32 %1106, 0
  br i1 %tobool61.not, label %lor.lhs.false.if.then62_crit_edge, label %do.end65

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %do.body56.if.then62_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf, ptr noundef nonnull @.str.32, i32 noundef 1431, ptr noundef nonnull @__func__.balance_leaf) #10
  unreachable

do.end65:                                         ; preds = %lor.lhs.false
  %CFL = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %1107 = ptrtoint ptr %CFL to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %CFL, align 4
  %tobool67.not = icmp eq ptr %1108, null
  br i1 %tobool67.not, label %do.end65.if.end84_crit_edge, label %if.then68

do.end65.if.end84_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then68:                                        ; preds = %do.end65
  %CFR = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 10
  %1109 = ptrtoint ptr %CFR to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %CFR, align 8
  %tobool70.not = icmp eq ptr %1110, null
  br i1 %tobool70.not, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %1111 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1112, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.balance_leaf, ptr noundef nonnull @.str.34) #10
  unreachable

if.end73:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %lkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %1113 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load i32, ptr %lkey, align 4
  %b_data.i.i313 = getelementptr inbounds %struct.buffer_head, ptr %1108, i32 0, i32 5
  %1115 = ptrtoint ptr %b_data.i.i313 to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %b_data.i.i313, align 4
  %add.ptr.i.i314 = getelementptr i8, ptr %1116, i32 24
  %arrayidx.i315 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i314, i32 %1114
  %rkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %1117 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load i32, ptr %rkey, align 8
  %b_data.i.i316 = getelementptr inbounds %struct.buffer_head, ptr %1110, i32 0, i32 5
  %1119 = ptrtoint ptr %b_data.i.i316 to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load ptr, ptr %b_data.i.i316, align 4
  %add.ptr.i.i317 = getelementptr i8, ptr %1120, i32 24
  %arrayidx.i318 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i317, i32 %1118
  %1121 = call ptr @memcpy(ptr %arrayidx.i315, ptr %arrayidx.i318, i32 16)
  %1122 = ptrtoint ptr %CFL to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %CFL, align 4
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %1124 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %transaction_handle.i, align 4
  %call.i = call i32 @journal_mark_dirty(ptr noundef %1125, ptr noundef %1123) #7
  br label %if.end84

if.end84:                                         ; preds = %if.end73, %do.end65.if.end84_crit_edge
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %5)
  br label %cleanup

do.body.lr.ph.i:                                  ; preds = %do.end50
  %1126 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i322, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i322, i32 0, i32 2
  %1128 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i322, i32 0, i32 3
  %ih_version.i.i.i327 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %u.i.i.i.i328 = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  %ih_item_len.i.i329 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %k_uniqueness.i.i.i.i.i331 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i328, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i321, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i321, i32 0, i32 2
  %1131 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i321, i32 0, i32 3
  %tobool.not.i.i.i334 = icmp eq ptr %ih, null
  %1132 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i320, i32 0, i32 1
  %1133 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i320, i32 0, i32 2
  %1134 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i.i320, i32 0, i32 3
  %add.ptr42.i.i.i.i = getelementptr i8, ptr %add.ptr27, i32 16
  %1135 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i319, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i319, i32 0, i32 2
  %1137 = getelementptr inbounds %struct.buffer_info, ptr %bi.i1.i.i319, i32 0, i32 3
  %1138 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %1138, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %flag, label %do.body4.i [
    i32 112, label %do.body.lr.ph.i.do.body.i336.preheader_crit_edge
    i32 105, label %do.body.lr.ph.i.do.body.i336.preheader_crit_edge549
  ]

do.body.lr.ph.i.do.body.i336.preheader_crit_edge549: ; preds = %do.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i336.preheader

do.body.lr.ph.i.do.body.i336.preheader_crit_edge: ; preds = %do.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i336.preheader

do.body.i336.preheader:                           ; preds = %do.body.lr.ph.i.do.body.i336.preheader_crit_edge, %do.body.lr.ph.i.do.body.i336.preheader_crit_edge549
  %sub.i324 = add nsw i32 %1101, -2
  br label %do.body.i336

do.body.i336:                                     ; preds = %for.inc.i.do.body.i336_crit_edge, %do.body.i336.preheader
  %i.0129.i = phi i32 [ %dec.i, %for.inc.i.do.body.i336_crit_edge ], [ %sub.i324, %do.body.i336.preheader ]
  %arrayidx11.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 26, i32 %i.0129.i
  %1139 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1140)
  %tobool12.not.i = icmp eq i32 %1140, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %do.end18.i

do.body4.i:                                       ; preds = %do.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/do_balan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1229, 0\0A.popsection", ""() #7, !srcloc !225
  unreachable

if.then13.i:                                      ; preds = %do.body.i336
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes, ptr noundef nonnull @.str.64, i32 noundef 1233, ptr noundef nonnull @__func__.balance_leaf_new_nodes, i32 noundef %i.0129.i, i32 noundef 0) #10
  unreachable

do.end18.i:                                       ; preds = %do.body.i336
  %call.i337 = call ptr @get_FEB(ptr noundef %tb) #7
  %arrayidx19.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 25, i32 %i.0129.i
  %1141 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %1141)
  store ptr %call.i337, ptr %arrayidx19.i, align 4
  %b_data.i338 = getelementptr inbounds %struct.buffer_head, ptr %call.i337, i32 0, i32 5
  %1142 = ptrtoint ptr %b_data.i338 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %b_data.i338, align 4
  %1144 = ptrtoint ptr %1143 to i32
  call void @__asan_store2_noabort(i32 %1144)
  store i16 256, ptr %1143, align 2
  %1145 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i339 = getelementptr inbounds %struct.treepath, ptr %1146, i32 0, i32 2
  %1147 = ptrtoint ptr %1146 to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load i32, ptr %1146, align 4
  %add.ptr.i.i340 = getelementptr %struct.path_element, ptr %path_elements.i.i339, i32 %1148
  %1149 = ptrtoint ptr %add.ptr.i.i340 to i32
  call void @__asan_load4_noabort(i32 %1149)
  %1150 = load ptr, ptr %add.ptr.i.i340, align 4
  %b_data.i.i341 = getelementptr inbounds %struct.buffer_head, ptr %1150, i32 0, i32 5
  %1151 = ptrtoint ptr %b_data.i.i341 to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load ptr, ptr %b_data.i.i341, align 4
  %blk_nr_item.i.i342 = getelementptr inbounds %struct.block_head, ptr %1152, i32 0, i32 1
  %1153 = ptrtoint ptr %blk_nr_item.i.i342 to i32
  call void @__asan_load2_noabort(i32 %1153)
  %1154 = load i16, ptr %blk_nr_item.i.i342, align 2
  %1155 = call i16 @llvm.bswap.i16(i16 %1154) #7
  %conv.i.i343 = zext i16 %1155 to i32
  br i1 %cmp12, label %if.then23.i, label %if.else.i374

if.then23.i:                                      ; preds = %do.end18.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i322) #7
  %1156 = call ptr @memset(ptr %bi.i.i322, i32 255, i32 16)
  %1157 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load i32, ptr %arrayidx11.i, align 4
  %sub.i.i344 = sub i32 %conv.i.i343, %1158
  %1159 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i344, i32 %1160)
  %cmp.not.i.i345 = icmp slt i32 %sub.i.i344, %1160
  br i1 %cmp.not.i.i345, label %if.end.i.i349, label %if.then.i.i347

if.then.i.i347:                                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1161 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load i32, ptr %arrayidx5.i.i, align 4
  %1163 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %arrayidx19.i, align 4
  %call.i.i346 = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1158, i32 noundef %1162, ptr noundef %1164) #7
  br label %balance_leaf_new_nodes_insert.exit.i

if.end.i.i349:                                    ; preds = %if.then23.i
  %add.i.i348 = add nsw i32 %sub.i.i344, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1160, i32 %add.i.i348)
  %cmp11.i.i = icmp eq i32 %1160, %add.i.i348
  br i1 %cmp11.i.i, label %land.lhs.true.i.i350, label %if.end.i.i349.if.else77.i.i_crit_edge

if.end.i.i349.if.else77.i.i_crit_edge:            ; preds = %if.end.i.i349
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else77.i.i

land.lhs.true.i.i350:                             ; preds = %if.end.i.i349
  %arrayidx14.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1165 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load i32, ptr %arrayidx14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1166)
  %cmp15.not.i.i = icmp eq i32 %1166, -1
  br i1 %cmp15.not.i.i, label %land.lhs.true.i.i350.if.else77.i.i_crit_edge, label %if.then17.i.i352

land.lhs.true.i.i350.if.else77.i.i_crit_edge:     ; preds = %land.lhs.true.i.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else77.i.i

if.then17.i.i352:                                 ; preds = %land.lhs.true.i.i350
  %sub20.i.i = add i32 %1158, -1
  %1167 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %arrayidx19.i, align 4
  %call23.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %sub20.i.i, i32 noundef -1, ptr noundef %1168) #7
  %1169 = ptrtoint ptr %ih_version.i.i.i327 to i32
  call void @__asan_loadN_noabort(i32 %1169, i32 2)
  %1170 = load i16, ptr %ih_version.i.i.i327, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1170)
  %cmp.i.i.i.i351 = icmp eq i16 %1170, 0
  br i1 %cmp.i.i.i.i351, label %is_indirect_le_ih.exit.i.i356, label %if.else.i.i.i.i.i354

if.else.i.i.i.i.i354:                             ; preds = %if.then17.i.i352
  %1171 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_loadN_noabort(i32 %1171, i32 8)
  %1172 = load i64, ptr %u.i.i.i.i328, align 1
  %1173 = and i64 %1172, -241
  %1174 = call i64 @llvm.bswap.i64(i64 %1173) #7
  %1175 = ptrtoint ptr %ih_item_len.i.i329 to i32
  call void @__asan_loadN_noabort(i32 %1175, i32 2)
  %1176 = load i16, ptr %ih_item_len.i.i329, align 1
  %1177 = call i16 @llvm.bswap.i16(i16 %1176) #7
  %1178 = and i64 %1172, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %1178)
  %phi.cmp1.i.i.i.i353 = icmp eq i64 %1178, 16
  %conv263644.i.i = zext i16 %1177 to i32
  br i1 %phi.cmp1.i.i.i.i353, label %if.end31.i.i, label %if.else.i.i.i.i.i354.if.else.i.i.i.i363_crit_edge

if.else.i.i.i.i.i354.if.else.i.i.i.i363_crit_edge: ; preds = %if.else.i.i.i.i.i354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i363

is_indirect_le_ih.exit.i.i356:                    ; preds = %if.then17.i.i352
  %1179 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_loadN_noabort(i32 %1179, i32 4)
  %1180 = load i32, ptr %u.i.i.i.i328, align 1
  %1181 = call i32 @llvm.bswap.i32(i32 %1180) #7
  %conv.i.i.i.i355 = zext i32 %1181 to i64
  %1182 = ptrtoint ptr %ih_item_len.i.i329 to i32
  call void @__asan_loadN_noabort(i32 %1182, i32 2)
  %1183 = load i16, ptr %ih_item_len.i.i329, align 1
  %1184 = call i16 @llvm.bswap.i16(i16 %1183) #7
  %1185 = ptrtoint ptr %k_uniqueness.i.i.i.i.i331 to i32
  call void @__asan_loadN_noabort(i32 %1185, i32 4)
  %1186 = load i32, ptr %k_uniqueness.i.i.i.i.i331, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1186)
  %cond.i.i2.i.i = icmp eq i32 %1186, -16777217
  %conv2636.i.i = zext i16 %1184 to i32
  br i1 %cond.i.i2.i.i, label %if.end31.thread71.i.i, label %is_indirect_le_ih.exit.i.i356.if.then.i.i.i.i358_crit_edge

is_indirect_le_ih.exit.i.i356.if.then.i.i.i.i358_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i358

if.end31.thread71.i.i:                            ; preds = %is_indirect_le_ih.exit.i.i356
  call void @__sanitizer_cov_trace_pc() #9
  %1187 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1187)
  %1188 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits76.i.i = getelementptr inbounds %struct.super_block, ptr %1188, i32 0, i32 2
  %1189 = ptrtoint ptr %s_blocksize_bits76.i.i to i32
  call void @__asan_load1_noabort(i32 %1189)
  %1190 = load i8, ptr %s_blocksize_bits76.i.i, align 4
  %conv2977.i.i = zext i8 %1190 to i32
  %sub3078.i.i = add nsw i32 %conv2977.i.i, -2
  br label %if.then.i.i.i.i358

if.end31.i.i:                                     ; preds = %if.else.i.i.i.i.i354
  call void @__sanitizer_cov_trace_pc() #9
  %1191 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i357 = getelementptr inbounds %struct.super_block, ptr %1192, i32 0, i32 2
  %1193 = ptrtoint ptr %s_blocksize_bits.i.i357 to i32
  call void @__asan_load1_noabort(i32 %1193)
  %1194 = load i8, ptr %s_blocksize_bits.i.i357, align 4
  %conv29.i.i = zext i8 %1194 to i32
  %sub30.i.i = add nsw i32 %conv29.i.i, -2
  br label %if.else.i.i.i.i363

if.then.i.i.i.i358:                               ; preds = %if.end31.thread71.i.i, %is_indirect_le_ih.exit.i.i356.if.then.i.i.i.i358_crit_edge
  %shift.061.i.i = phi i32 [ %sub3078.i.i, %if.end31.thread71.i.i ], [ 0, %is_indirect_le_ih.exit.i.i356.if.then.i.i.i.i358_crit_edge ]
  %1195 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load i32, ptr %arrayidx14.i.i, align 4
  %sub3539.i.i = sub i32 %conv2636.i.i, %1196
  %shl40.i.i = shl i32 %sub3539.i.i, %shift.061.i.i
  %add3742.i.i = add i32 %shl40.i.i, %1181
  %1197 = call i32 @llvm.bswap.i32(i32 %add3742.i.i) #7
  %1198 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_storeN_noabort(i32 %1198, i32 4)
  store i32 %1197, ptr %u.i.i.i.i328, align 1
  br label %set_le_ih_k_offset.exit.i.i365

if.else.i.i.i.i363:                               ; preds = %if.end31.i.i, %if.else.i.i.i.i.i354.if.else.i.i.i.i363_crit_edge
  %shift.070.i.i = phi i32 [ %sub30.i.i, %if.end31.i.i ], [ 0, %if.else.i.i.i.i.i354.if.else.i.i.i.i363_crit_edge ]
  %1199 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load i32, ptr %arrayidx14.i.i, align 4
  %sub35.i.i359 = sub i32 %conv263644.i.i, %1200
  %shl.i.i360 = shl i32 %sub35.i.i359, %shift.070.i.i
  %conv36.i.i = sext i32 %shl.i.i360 to i64
  %add37.i.i = add nsw i64 %1174, %conv36.i.i
  %and.i.i.i.i.i361 = and i64 %add37.i.i, 1152921504606846975
  %1201 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i361) #7
  %or.i.i.i.i.i362 = or i64 %1201, %1178
  %1202 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_storeN_noabort(i32 %1202, i32 8)
  store i64 %or.i.i.i.i.i362, ptr %u.i.i.i.i328, align 1
  br label %set_le_ih_k_offset.exit.i.i365

set_le_ih_k_offset.exit.i.i365:                   ; preds = %if.else.i.i.i.i363, %if.then.i.i.i.i358
  %1203 = phi i16 [ %1184, %if.then.i.i.i.i358 ], [ %1177, %if.else.i.i.i.i363 ]
  %cond.i.i324757.i.i = phi i64 [ %conv.i.i.i.i355, %if.then.i.i.i.i358 ], [ %1174, %if.else.i.i.i.i363 ]
  %conv263651.i.i = phi i32 [ %conv2636.i.i, %if.then.i.i.i.i358 ], [ %conv263644.i.i, %if.else.i.i.i.i363 ]
  %1204 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load i32, ptr %arrayidx14.i.i, align 4
  %conv40.i.i364 = trunc i32 %1205 to i16
  %1206 = call i16 @llvm.bswap.i16(i16 %conv40.i.i364) #7
  %1207 = ptrtoint ptr %ih_item_len.i.i329 to i32
  call void @__asan_storeN_noabort(i32 %1207, i32 2)
  store i16 %1206, ptr %ih_item_len.i.i329, align 1
  %1208 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %arrayidx19.i, align 4
  %1210 = ptrtoint ptr %bi.i.i322 to i32
  call void @__asan_store4_noabort(i32 %1210)
  store ptr %tb, ptr %bi.i.i322, align 4
  %1211 = ptrtoint ptr %1126 to i32
  call void @__asan_store4_noabort(i32 %1211)
  store ptr %1209, ptr %1126, align 4
  %1212 = ptrtoint ptr %1127 to i32
  call void @__asan_store4_noabort(i32 %1212)
  store ptr null, ptr %1127, align 4
  %1213 = ptrtoint ptr %1128 to i32
  call void @__asan_store4_noabort(i32 %1213)
  store i32 0, ptr %1128, align 4
  %1214 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load i32, ptr %arrayidx14.i.i, align 4
  %sub46.i.i = sub i32 %conv263651.i.i, %1215
  %1216 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1217, i32 %sub46.i.i)
  %cmp47.i.i = icmp slt i32 %1217, %sub46.i.i
  br i1 %cmp47.i.i, label %if.then49.i.i, label %if.else.i.i367

if.then49.i.i:                                    ; preds = %set_le_ih_k_offset.exit.i.i365
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr53.i.i = getelementptr i8, ptr %add.ptr27, i32 %sub46.i.i
  %idx.neg.i.i366 = sub i32 0, %1217
  %add.ptr55.i.i = getelementptr i8, ptr %add.ptr53.i.i, i32 %idx.neg.i.i366
  br label %if.end63.i.i

if.else.i.i367:                                   ; preds = %set_le_ih_k_offset.exit.i.i365
  call void @__sanitizer_cov_trace_pc() #9
  %sub60.i.i = sub i32 %1217, %sub46.i.i
  %1218 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %1218)
  store i32 %sub46.i.i, ptr %zeroes_num, align 4
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.else.i.i367, %if.then49.i.i
  %r_zeroes_number.0.i.i = phi i32 [ 0, %if.then49.i.i ], [ %sub60.i.i, %if.else.i.i367 ]
  %r_body.0.i.i368 = phi ptr [ %add.ptr55.i.i, %if.then49.i.i ], [ %add.ptr27, %if.else.i.i367 ]
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i322, i32 noundef 0, ptr noundef %ih, ptr noundef %r_body.0.i.i368, i32 noundef %r_zeroes_number.0.i.i) #7
  %1219 = ptrtoint ptr %ih_version.i.i.i327 to i32
  call void @__asan_loadN_noabort(i32 %1219, i32 2)
  %1220 = load i16, ptr %ih_version.i.i.i327, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1220)
  %cmp.i.i16.i.i = icmp eq i16 %1220, 0
  br i1 %cmp.i.i16.i.i, label %if.then.i.i19.i.i369, label %if.else.i.i24.i.i

if.then.i.i19.i.i369:                             ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i17.i.i = trunc i64 %cond.i.i324757.i.i to i32
  %1221 = call i32 @llvm.bswap.i32(i32 %conv.i.i17.i.i) #7
  %1222 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_storeN_noabort(i32 %1222, i32 4)
  store i32 %1221, ptr %u.i.i.i.i328, align 1
  br label %set_le_ih_k_offset.exit25.i.i

if.else.i.i24.i.i:                                ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1223 = shl i64 %cond.i.i324757.i.i, 32
  %conv64.i.i370 = ashr exact i64 %1223, 32
  %and.i.i.i21.i.i = and i64 %conv64.i.i370, 1152921504606846975
  %1224 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_loadN_noabort(i32 %1224, i32 8)
  %1225 = load i64, ptr %u.i.i.i.i328, align 1
  %and1.i.i.i22.i.i = and i64 %1225, 240
  %1226 = call i64 @llvm.bswap.i64(i64 %and.i.i.i21.i.i) #7
  %or.i.i.i23.i.i = or i64 %and1.i.i.i22.i.i, %1226
  %1227 = ptrtoint ptr %u.i.i.i.i328 to i32
  call void @__asan_storeN_noabort(i32 %1227, i32 8)
  store i64 %or.i.i.i23.i.i, ptr %u.i.i.i.i328, align 1
  br label %set_le_ih_k_offset.exit25.i.i

set_le_ih_k_offset.exit25.i.i:                    ; preds = %if.else.i.i24.i.i, %if.then.i.i19.i.i369
  %1228 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load i32, ptr %arrayidx14.i.i, align 4
  %1230 = trunc i32 %1229 to i16
  %conv69.i.i = sub i16 %1203, %1230
  %1231 = call i16 @llvm.bswap.i16(i16 %conv69.i.i) #7
  %1232 = ptrtoint ptr %ih_item_len.i.i329 to i32
  call void @__asan_storeN_noabort(i32 %1232, i32 2)
  store i16 %1231, ptr %ih_item_len.i.i329, align 1
  %1233 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load i32, ptr %arrayidx14.i.i, align 4
  %1235 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load i32, ptr %insert_size, align 4
  %sub76.i.i371 = sub i32 %1236, %1234
  store i32 %sub76.i.i371, ptr %insert_size, align 4
  br label %balance_leaf_new_nodes_insert.exit.i

if.else77.i.i:                                    ; preds = %land.lhs.true.i.i350.if.else77.i.i_crit_edge, %if.end.i.i349.if.else77.i.i_crit_edge
  %sub80.i.i372 = add i32 %1158, -1
  %arrayidx82.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1237 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load i32, ptr %arrayidx82.i.i, align 4
  %1239 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %arrayidx19.i, align 4
  %call85.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %sub80.i.i372, i32 noundef %1238, ptr noundef %1240) #7
  %1241 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %arrayidx19.i, align 4
  %1243 = ptrtoint ptr %bi.i.i322 to i32
  call void @__asan_store4_noabort(i32 %1243)
  store ptr %tb, ptr %bi.i.i322, align 4
  %1244 = ptrtoint ptr %1126 to i32
  call void @__asan_store4_noabort(i32 %1244)
  store ptr %1242, ptr %1126, align 4
  %1245 = ptrtoint ptr %1127 to i32
  call void @__asan_store4_noabort(i32 %1245)
  store ptr null, ptr %1127, align 4
  %1246 = ptrtoint ptr %1128 to i32
  call void @__asan_store4_noabort(i32 %1246)
  store i32 0, ptr %1128, align 4
  %1247 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load i32, ptr %item_pos, align 4
  %1249 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %arrayidx11.i, align 4
  %sub89.i.i = xor i32 %conv.i.i343, -1
  %add92.i.i = add i32 %1248, %sub89.i.i
  %sub93.i.i = add i32 %add92.i.i, %1250
  %1251 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load i32, ptr %zeroes_num, align 4
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i322, i32 noundef %sub93.i.i, ptr noundef %ih, ptr noundef %add.ptr27, i32 noundef %1252) #7
  %1253 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1253)
  store i32 0, ptr %insert_size, align 4
  %1254 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %1254)
  store i32 0, ptr %zeroes_num, align 4
  br label %balance_leaf_new_nodes_insert.exit.i

balance_leaf_new_nodes_insert.exit.i:             ; preds = %if.else77.i.i, %set_le_ih_k_offset.exit25.i.i, %if.then.i.i347
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i322) #7
  br label %if.end24.i

if.else.i374:                                     ; preds = %do.end18.i
  %1255 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load i32, ptr %arrayidx11.i, align 4
  %sub.i100.i = sub i32 %conv.i.i343, %1256
  %1257 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i100.i, i32 %1258)
  %cmp.i.i373 = icmp sgt i32 %sub.i100.i, %1258
  br i1 %cmp.i.i373, label %if.then.i105.i, label %if.end.i107.i

if.then.i105.i:                                   ; preds = %if.else.i374
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i102.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1259 = ptrtoint ptr %arrayidx5.i102.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load i32, ptr %arrayidx5.i102.i, align 4
  %1261 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %arrayidx19.i, align 4
  %call.i104.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1256, i32 noundef %1260, ptr noundef %1262) #7
  br label %if.end24.i

if.end.i107.i:                                    ; preds = %if.else.i374
  call void @__sanitizer_cov_trace_cmp4(i32 %1258, i32 %sub.i100.i)
  %cmp11.i106.i = icmp eq i32 %1258, %sub.i100.i
  br i1 %cmp11.i106.i, label %land.lhs.true.i110.i, label %if.end.i107.i.if.else.i116.i_crit_edge

if.end.i107.i.if.else.i116.i_crit_edge:           ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i116.i

land.lhs.true.i110.i:                             ; preds = %if.end.i107.i
  %arrayidx14.i108.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1263 = ptrtoint ptr %arrayidx14.i108.i to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load i32, ptr %arrayidx14.i108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1264)
  %cmp15.not.i109.i = icmp eq i32 %1264, -1
  br i1 %cmp15.not.i109.i, label %land.lhs.true.i110.i.if.else.i116.i_crit_edge, label %if.then17.i111.i

land.lhs.true.i110.i.if.else.i116.i_crit_edge:    ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i116.i

if.then17.i111.i:                                 ; preds = %land.lhs.true.i110.i
  %add.ptr.i.i.i.i.i375 = getelementptr i8, ptr %1152, i32 24
  %arrayidx.i.i.i.i376 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i375, i32 %sub.i100.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i321) #7
  br i1 %tobool.not.i.i.i334, label %do.end.i.i.i381, label %if.then.i.i.i377

if.then.i.i.i377:                                 ; preds = %if.then17.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_shift, ptr noundef nonnull @.str.66, i32 noundef 1078, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_shift) #10
  unreachable

do.end.i.i.i381:                                  ; preds = %if.then17.i111.i
  %ih_version.i.i.i.i378 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i376, i32 0, i32 4
  %1265 = ptrtoint ptr %ih_version.i.i.i.i378 to i32
  call void @__asan_loadN_noabort(i32 %1265, i32 2)
  %1266 = load i16, ptr %ih_version.i.i.i.i378, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1266)
  %cmp.i.i.i.i.i.i379 = icmp eq i16 %1266, 0
  %u.i.i.i.i.i.i380 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i.i376, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i.i379, label %is_direntry_le_ih.exit.i.i.i386, label %if.else.i.i.i.i.i.i383

if.else.i.i.i.i.i.i383:                           ; preds = %do.end.i.i.i381
  %1267 = ptrtoint ptr %u.i.i.i.i.i.i380 to i32
  call void @__asan_loadN_noabort(i32 %1267, i32 8)
  %1268 = load i64, ptr %u.i.i.i.i.i.i380, align 1
  %1269 = and i64 %1268, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1269)
  %phi.cmp1.i.i.i.i.i382 = icmp eq i64 %1269, 48
  br i1 %phi.cmp1.i.i.i.i.i382, label %if.else.i.i.i.i.i.i383.if.then4.i.i.i393_crit_edge, label %if.else.i.i.i.i.i.i383.do.body6.i.i.i_crit_edge

if.else.i.i.i.i.i.i383.do.body6.i.i.i_crit_edge:  ; preds = %if.else.i.i.i.i.i.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i.i.i

if.else.i.i.i.i.i.i383.if.then4.i.i.i393_crit_edge: ; preds = %if.else.i.i.i.i.i.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i.i393

is_direntry_le_ih.exit.i.i.i386:                  ; preds = %do.end.i.i.i381
  %k_uniqueness.i.i.i.i.i.i384 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i.i380, i32 0, i32 1
  %1270 = ptrtoint ptr %k_uniqueness.i.i.i.i.i.i384 to i32
  call void @__asan_loadN_noabort(i32 %1270, i32 4)
  %1271 = load i32, ptr %k_uniqueness.i.i.i.i.i.i384, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %1271)
  %cond.i.i.i.i.i385 = icmp eq i32 %1271, -201261056
  br i1 %cond.i.i.i.i.i385, label %is_direntry_le_ih.exit.i.i.i386.if.then4.i.i.i393_crit_edge, label %is_direntry_le_ih.exit.i.i.i386.do.body6.i.i.i_crit_edge

is_direntry_le_ih.exit.i.i.i386.do.body6.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i386
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i.i.i

is_direntry_le_ih.exit.i.i.i386.if.then4.i.i.i393_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i.i386
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i.i393

if.then4.i.i.i393:                                ; preds = %is_direntry_le_ih.exit.i.i.i386.if.then4.i.i.i393_crit_edge, %if.else.i.i.i.i.i.i383.if.then4.i.i.i393_crit_edge
  %1272 = ptrtoint ptr %1146 to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load i32, ptr %1146, align 4
  %add.ptr.i.i.i.i387 = getelementptr %struct.path_element, ptr %path_elements.i.i339, i32 %1273
  %1274 = ptrtoint ptr %add.ptr.i.i.i.i387 to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load ptr, ptr %add.ptr.i.i.i.i387, align 4
  %b_data.i.i.i.i.i.i388 = getelementptr inbounds %struct.buffer_head, ptr %1275, i32 0, i32 5
  %1276 = ptrtoint ptr %b_data.i.i.i.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %b_data.i.i.i.i.i.i388, align 4
  %add.ptr.i.i.i.i.i.i389 = getelementptr i8, ptr %1277, i32 24
  %arrayidx.i.i.i.i.i390 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i.i389, i32 %sub.i100.i
  %u.i.i.i112.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i.i390, i32 0, i32 1
  %1278 = ptrtoint ptr %u.i.i.i112.i to i32
  call void @__asan_loadN_noabort(i32 %1278, i32 2)
  %1279 = load i16, ptr %u.i.i.i112.i, align 1
  %1280 = call i16 @llvm.bswap.i16(i16 %1279) #7
  %conv.i.i.i113.i = zext i16 %1280 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i.i320) #7
  %sub.i.i.i.i391 = sub i32 %conv.i.i.i113.i, %1264
  %1281 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i391, i32 %1282)
  %cmp.i.i.i114.i = icmp sge i32 %sub.i.i.i.i391, %1282
  call void @__sanitizer_cov_trace_cmp4(i32 %1282, i32 %conv.i.i.i113.i)
  %cmp4.not.i.i.i.i = icmp sgt i32 %1282, %conv.i.i.i113.i
  %or.cond.i.i.i.i392 = or i1 %cmp4.not.i.i.i.i, %cmp.i.i.i114.i
  br i1 %or.cond.i.i.i.i392, label %if.else.i.i.i115.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then4.i.i.i393
  %1283 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1284)
  %tobool.not.i.i.i.i394 = icmp eq i32 %1284, 0
  br i1 %tobool.not.i.i.i.i394, label %if.then7.i.i.i.i, label %do.body8.i.i.i.i

if.then7.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_dirent, ptr noundef nonnull @.str.68, i32 noundef 1026, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_dirent) #10
  unreachable

do.body8.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %sub11.i.i.i.i = add i32 %1264, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11.i.i.i.i, i32 %conv.i.i.i113.i)
  %cmp12.not.i.i.i.i = icmp slt i32 %sub11.i.i.i.i, %conv.i.i.i113.i
  br i1 %cmp12.not.i.i.i.i, label %do.end20.i.i.i.i, label %if.then14.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %do.body8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_dirent, ptr noundef nonnull @.str.69, i32 noundef 1029, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_dirent, i32 noundef %sub11.i.i.i.i, i32 noundef %conv.i.i.i113.i) #10
  unreachable

do.end20.i.i.i.i:                                 ; preds = %do.body8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1285 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load ptr, ptr %arrayidx19.i, align 4
  %call26.i.i.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1256, i32 noundef %sub11.i.i.i.i, ptr noundef %1286) #7
  %1287 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %arrayidx19.i, align 4
  %1289 = ptrtoint ptr %bi.i.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %1289)
  store ptr %tb, ptr %bi.i.i.i.i320, align 4
  %1290 = ptrtoint ptr %1132 to i32
  call void @__asan_store4_noabort(i32 %1290)
  store ptr %1288, ptr %1132, align 4
  %1291 = ptrtoint ptr %1133 to i32
  call void @__asan_store4_noabort(i32 %1291)
  store ptr null, ptr %1133, align 4
  %1292 = ptrtoint ptr %1134 to i32
  call void @__asan_store4_noabort(i32 %1292)
  store i32 0, ptr %1134, align 4
  %1293 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load i32, ptr %pos_in_item11, align 8
  %1295 = ptrtoint ptr %arrayidx14.i108.i to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load i32, ptr %arrayidx14.i108.i, align 4
  %sub30.i.i.i.i395 = xor i32 %conv.i.i.i113.i, -1
  %add.i.i.i.i396 = add i32 %1294, %sub30.i.i.i.i395
  %sub33.i.i.i.i = add i32 %add.i.i.i.i396, %1296
  %1297 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1297)
  %1298 = load i32, ptr %insert_size, align 4
  %1299 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1299)
  %1300 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i.i320, i32 noundef 0, i32 noundef %sub33.i.i.i.i, i32 noundef %1298, ptr noundef %add.ptr27, i32 noundef %1300) #7
  %1301 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load i32, ptr %pos_in_item11, align 8
  %1303 = ptrtoint ptr %arrayidx14.i108.i to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load i32, ptr %arrayidx14.i108.i, align 4
  %add40.i.i.i.i = add i32 %1302, %sub30.i.i.i.i395
  %sub41.i.i.i.i = add i32 %add40.i.i.i.i, %1304
  %1305 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i.i.i.i320, i32 noundef 0, i32 noundef %sub41.i.i.i.i, i32 noundef 1, ptr noundef %add.ptr27, ptr noundef %add.ptr42.i.i.i.i, i32 noundef %1306) #7
  %1307 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1307)
  store i32 0, ptr %insert_size, align 4
  %1308 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load i32, ptr %pos_in_item11, align 8
  %inc.i.i.i.i397 = add i32 %1309, 1
  store i32 %inc.i.i.i.i397, ptr %pos_in_item11, align 8
  br label %balance_leaf_new_nodes_paste_dirent.exit.i.i.i

if.else.i.i.i115.i:                               ; preds = %if.then4.i.i.i393
  call void @__sanitizer_cov_trace_pc() #9
  %1310 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %arrayidx19.i, align 4
  %call54.i.i.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1256, i32 noundef %1264, ptr noundef %1311) #7
  br label %balance_leaf_new_nodes_paste_dirent.exit.i.i.i

balance_leaf_new_nodes_paste_dirent.exit.i.i.i:   ; preds = %if.else.i.i.i115.i, %do.end20.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i.i320) #7
  br label %balance_leaf_new_nodes_paste_shift.exit.i.i

do.body6.i.i.i:                                   ; preds = %is_direntry_le_ih.exit.i.i.i386.do.body6.i.i.i_crit_edge, %if.else.i.i.i.i.i.i383.do.body6.i.i.i_crit_edge
  %1312 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load i32, ptr %pos_in_item11, align 8
  %ih_item_len.i.i.i398 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i376, i32 0, i32 2
  %1314 = ptrtoint ptr %ih_item_len.i.i.i398 to i32
  call void @__asan_loadN_noabort(i32 %1314, i32 2)
  %1315 = load i16, ptr %ih_item_len.i.i.i398, align 1
  %1316 = call i16 @llvm.bswap.i16(i16 %1315) #7
  %conv.i.i.i399 = zext i16 %1316 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1313, i32 %conv.i.i.i399)
  %cmp.not.i.i.i = icmp eq i32 %1313, %conv.i.i.i399
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i400, label %do.body6.i.i.i.if.then12.i.i.i_crit_edge

do.body6.i.i.i.if.then12.i.i.i_crit_edge:         ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i.i.i

lor.lhs.false.i.i.i400:                           ; preds = %do.body6.i.i.i
  %1317 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1318)
  %cmp10.i.i.i = icmp slt i32 %1318, 1
  br i1 %cmp10.i.i.i, label %lor.lhs.false.i.i.i400.if.then12.i.i.i_crit_edge, label %do.end15.i.i.i

lor.lhs.false.i.i.i400.if.then12.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i400
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i400.if.then12.i.i.i_crit_edge, %do.body6.i.i.i.if.then12.i.i.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_shift, ptr noundef nonnull @.str.67, i32 noundef 1091, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_shift) #10
  unreachable

do.end15.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i400
  %sub.i.i.i401 = sub i32 %1264, %1318
  %1319 = call i32 @llvm.smax.i32(i32 %sub.i.i.i401, i32 0) #7
  %1320 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1320)
  %1321 = load ptr, ptr %arrayidx19.i, align 4
  %call25.i.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1256, i32 noundef %1319, ptr noundef %1321) #7
  %1322 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load i32, ptr %insert_size, align 4
  %1324 = ptrtoint ptr %arrayidx14.i108.i to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load i32, ptr %arrayidx14.i108.i, align 4
  %sub30.i.i.i = sub i32 %1323, %1325
  %1326 = call i32 @llvm.smax.i32(i32 %sub30.i.i.i, i32 0) #7
  %1327 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %arrayidx19.i, align 4
  %1329 = ptrtoint ptr %bi.i.i.i321 to i32
  call void @__asan_store4_noabort(i32 %1329)
  store ptr %tb, ptr %bi.i.i.i321, align 4
  %1330 = ptrtoint ptr %1129 to i32
  call void @__asan_store4_noabort(i32 %1330)
  store ptr %1328, ptr %1129, align 4
  %1331 = ptrtoint ptr %1130 to i32
  call void @__asan_store4_noabort(i32 %1331)
  store ptr null, ptr %1130, align 4
  %1332 = ptrtoint ptr %1131 to i32
  call void @__asan_store4_noabort(i32 %1332)
  store i32 0, ptr %1131, align 4
  %1333 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1333)
  %1334 = load i32, ptr %zeroes_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1334, i32 %1326)
  %cmp37.i.i.i402 = icmp slt i32 %1334, %1326
  br i1 %cmp37.i.i.i402, label %if.then39.i.i.i405, label %if.else.i.i.i406

if.then39.i.i.i405:                               ; preds = %do.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr40.i.i.i403 = getelementptr i8, ptr %add.ptr27, i32 %1326
  %idx.neg.i.i.i404 = sub i32 0, %1334
  %add.ptr42.i.i.i = getelementptr i8, ptr %add.ptr40.i.i.i403, i32 %idx.neg.i.i.i404
  br label %if.end47.i.i.i

if.else.i.i.i406:                                 ; preds = %do.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub44.i.i.i = sub i32 %1334, %1326
  %1335 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %1335)
  store i32 %1326, ptr %zeroes_num, align 4
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %if.else.i.i.i406, %if.then39.i.i.i405
  %r_zeroes_number.0.i.i.i407 = phi i32 [ 0, %if.then39.i.i.i405 ], [ %sub44.i.i.i, %if.else.i.i.i406 ]
  %r_body.0.i.i.i408 = phi ptr [ %add.ptr42.i.i.i, %if.then39.i.i.i405 ], [ %add.ptr27, %if.else.i.i.i406 ]
  %sub50.i.i.i = sub i32 %1323, %1326
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i321, i32 noundef 0, i32 noundef %1319, i32 noundef %sub50.i.i.i, ptr noundef %r_body.0.i.i.i408, i32 noundef %r_zeroes_number.0.i.i.i407) #7
  %1336 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load ptr, ptr %arrayidx19.i, align 4
  %b_data.i.i5.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %1337, i32 0, i32 5
  %1338 = ptrtoint ptr %b_data.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %b_data.i.i5.i.i.i, align 4
  %ih_version.i7.i.i.i = getelementptr i8, ptr %1339, i32 46
  %1340 = ptrtoint ptr %ih_version.i7.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1340, i32 2)
  %1341 = load i16, ptr %ih_version.i7.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1341)
  %cmp.i.i.i8.i.i.i = icmp eq i16 %1341, 0
  %u.i.i.i9.i.i.i = getelementptr i8, ptr %1339, i32 32
  br i1 %cmp.i.i.i8.i.i.i, label %is_indirect_le_ih.exit.i.i.i409, label %if.else.i.i.i14.i.i.i

if.else.i.i.i14.i.i.i:                            ; preds = %if.end47.i.i.i
  %1342 = ptrtoint ptr %u.i.i.i9.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1342, i32 8)
  %1343 = load i64, ptr %u.i.i.i9.i.i.i, align 1
  %1344 = and i64 %1343, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %1344)
  %phi.cmp1.i.i13.i.i.i = icmp eq i64 %1344, 16
  br i1 %phi.cmp1.i.i13.i.i.i, label %if.else.i.i.i14.i.i.i.do.body57.i.i.i_crit_edge, label %if.else.i.i.i14.i.i.i.if.end66.i.i.i_crit_edge

if.else.i.i.i14.i.i.i.if.end66.i.i.i_crit_edge:   ; preds = %if.else.i.i.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i.i

if.else.i.i.i14.i.i.i.do.body57.i.i.i_crit_edge:  ; preds = %if.else.i.i.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i.i.i

is_indirect_le_ih.exit.i.i.i409:                  ; preds = %if.end47.i.i.i
  %k_uniqueness.i.i.i10.i.i.i = getelementptr i8, ptr %1339, i32 36
  %1345 = ptrtoint ptr %k_uniqueness.i.i.i10.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1345, i32 4)
  %1346 = load i32, ptr %k_uniqueness.i.i.i10.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1346)
  %cond.i.i11.i.i.i = icmp eq i32 %1346, -16777217
  br i1 %cond.i.i11.i.i.i, label %is_indirect_le_ih.exit.i.i.i409.do.body57.i.i.i_crit_edge, label %is_indirect_le_ih.exit.i.i.i409.if.end66.i.i.i_crit_edge

is_indirect_le_ih.exit.i.i.i409.if.end66.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i409
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i.i

is_indirect_le_ih.exit.i.i.i409.do.body57.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i.i409
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57.i.i.i

do.body57.i.i.i:                                  ; preds = %is_indirect_le_ih.exit.i.i.i409.do.body57.i.i.i_crit_edge, %if.else.i.i.i14.i.i.i.do.body57.i.i.i_crit_edge
  %u.i.i.i410 = getelementptr i8, ptr %1339, i32 40
  %1347 = ptrtoint ptr %u.i.i.i410 to i32
  call void @__asan_storeN_noabort(i32 %1347, i32 2)
  store i16 0, ptr %u.i.i.i410, align 1
  %1348 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %tb_sb, align 8
  %s_blocksize_bits.i.i.i411 = getelementptr inbounds %struct.super_block, ptr %1349, i32 0, i32 2
  %1350 = ptrtoint ptr %s_blocksize_bits.i.i.i411 to i32
  call void @__asan_load1_noabort(i32 %1350)
  %1351 = load i8, ptr %s_blocksize_bits.i.i.i411, align 4
  %conv64.i.i.i = zext i8 %1351 to i32
  %sub65.i.i.i = add nsw i32 %conv64.i.i.i, -2
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %do.body57.i.i.i, %is_indirect_le_ih.exit.i.i.i409.if.end66.i.i.i_crit_edge, %if.else.i.i.i14.i.i.i.if.end66.i.i.i_crit_edge
  %shift.0.i.i.i = phi i32 [ %sub65.i.i.i, %do.body57.i.i.i ], [ 0, %is_indirect_le_ih.exit.i.i.i409.if.end66.i.i.i_crit_edge ], [ 0, %if.else.i.i.i14.i.i.i.if.end66.i.i.i_crit_edge ]
  %shl.i.i.i412 = shl i32 %1326, %shift.0.i.i.i
  %1352 = ptrtoint ptr %ih_version.i7.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1352, i32 2)
  %1353 = load i16, ptr %ih_version.i7.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1353)
  %cmp.i.i.i18.i.i.i = icmp eq i16 %1353, 0
  br i1 %cmp.i.i.i18.i.i.i, label %if.then.i.i.i20.i.i.i, label %if.else.i.i.i21.i.i.i413

if.then.i.i.i20.i.i.i:                            ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1354 = ptrtoint ptr %u.i.i.i9.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1354, i32 4)
  %1355 = load i32, ptr %u.i.i.i9.i.i.i, align 1
  %1356 = call i32 @llvm.bswap.i32(i32 %1355) #7
  %conv.i4.i.i.i.i.i = add i32 %1356, %shl.i.i.i412
  %1357 = call i32 @llvm.bswap.i32(i32 %conv.i4.i.i.i.i.i) #7
  %1358 = ptrtoint ptr %u.i.i.i9.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %1358, i32 4)
  store i32 %1357, ptr %u.i.i.i9.i.i.i, align 1
  br label %add_le_ih_k_offset.exit.i.i.i

if.else.i.i.i21.i.i.i413:                         ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv67.i.i.i = sext i32 %shl.i.i.i412 to i64
  %1359 = ptrtoint ptr %u.i.i.i9.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1359, i32 8)
  %1360 = load i64, ptr %u.i.i.i9.i.i.i, align 1
  %1361 = and i64 %1360, -241
  %1362 = call i64 @llvm.bswap.i64(i64 %1361) #7
  %add.i.i.i.i.i = add nsw i64 %1362, %conv67.i.i.i
  %and.i.i.i.i.i.i.i = and i64 %add.i.i.i.i.i, 1152921504606846975
  %and1.i.i.i.i.i.i.i = and i64 %1360, 240
  %1363 = call i64 @llvm.bswap.i64(i64 %and.i.i.i.i.i.i.i) #7
  %or.i.i.i.i.i.i.i = or i64 %1363, %and1.i.i.i.i.i.i.i
  %1364 = ptrtoint ptr %u.i.i.i9.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %1364, i32 8)
  store i64 %or.i.i.i.i.i.i.i, ptr %u.i.i.i9.i.i.i, align 1
  br label %add_le_ih_k_offset.exit.i.i.i

add_le_ih_k_offset.exit.i.i.i:                    ; preds = %if.else.i.i.i21.i.i.i413, %if.then.i.i.i20.i.i.i
  %1365 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1365)
  store i32 %1326, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub30.i.i.i)
  %tobool70.not.i.i.i = icmp slt i32 %sub30.i.i.i, 1
  br i1 %tobool70.not.i.i.i, label %if.then71.i.i.i, label %add_le_ih_k_offset.exit.i.i.i.balance_leaf_new_nodes_paste_shift.exit.i.i_crit_edge

add_le_ih_k_offset.exit.i.i.i.balance_leaf_new_nodes_paste_shift.exit.i.i_crit_edge: ; preds = %add_le_ih_k_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_new_nodes_paste_shift.exit.i.i

if.then71.i.i.i:                                  ; preds = %add_le_ih_k_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1366 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load i32, ptr %pos_in_item11, align 8
  %inc.i.i.i414 = add i32 %1367, 1
  store i32 %inc.i.i.i414, ptr %pos_in_item11, align 8
  br label %balance_leaf_new_nodes_paste_shift.exit.i.i

balance_leaf_new_nodes_paste_shift.exit.i.i:      ; preds = %if.then71.i.i.i, %add_le_ih_k_offset.exit.i.i.i.balance_leaf_new_nodes_paste_shift.exit.i.i_crit_edge, %balance_leaf_new_nodes_paste_dirent.exit.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i321) #7
  br label %if.end24.i

if.else.i116.i:                                   ; preds = %land.lhs.true.i110.i.if.else.i116.i_crit_edge, %if.end.i107.i.if.else.i116.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i1.i.i319) #7
  %add.ptr.i.i.i7.i.i = getelementptr i8, ptr %1152, i32 24
  %arrayidx.i.i8.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i7.i.i, i32 %1258
  %ih_version.i.i9.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i8.i.i, i32 0, i32 4
  %1368 = ptrtoint ptr %ih_version.i.i9.i.i to i32
  call void @__asan_loadN_noabort(i32 %1368, i32 2)
  %1369 = load i16, ptr %ih_version.i.i9.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1369)
  %cmp.i.i.i.i10.i.i = icmp eq i16 %1369, 0
  %u.i.i.i.i11.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i8.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i10.i.i, label %is_direntry_le_ih.exit.i16.i.i, label %if.else.i.i.i.i13.i.i

if.else.i.i.i.i13.i.i:                            ; preds = %if.else.i116.i
  %1370 = ptrtoint ptr %u.i.i.i.i11.i.i to i32
  call void @__asan_loadN_noabort(i32 %1370, i32 8)
  %1371 = load i64, ptr %u.i.i.i.i11.i.i, align 1
  %1372 = and i64 %1371, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1372)
  %phi.cmp1.i.i.i12.i.i = icmp eq i64 %1372, 48
  br i1 %phi.cmp1.i.i.i12.i.i, label %if.else.i.i.i.i13.i.i.if.end.i.i.i417_crit_edge, label %if.else.i.i.i.i13.i.i.land.lhs.true.i.i.i415_crit_edge

if.else.i.i.i.i13.i.i.land.lhs.true.i.i.i415_crit_edge: ; preds = %if.else.i.i.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i415

if.else.i.i.i.i13.i.i.if.end.i.i.i417_crit_edge:  ; preds = %if.else.i.i.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i417

is_direntry_le_ih.exit.i16.i.i:                   ; preds = %if.else.i116.i
  %k_uniqueness.i.i.i.i14.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i11.i.i, i32 0, i32 1
  %1373 = ptrtoint ptr %k_uniqueness.i.i.i.i14.i.i to i32
  call void @__asan_loadN_noabort(i32 %1373, i32 4)
  %1374 = load i32, ptr %k_uniqueness.i.i.i.i14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %1374)
  %cond.i.i.i15.i.i = icmp eq i32 %1374, -201261056
  br i1 %cond.i.i.i15.i.i, label %is_direntry_le_ih.exit.i16.i.i.if.end.i.i.i417_crit_edge, label %is_direntry_le_ih.exit.i16.i.i.land.lhs.true.i.i.i415_crit_edge

is_direntry_le_ih.exit.i16.i.i.land.lhs.true.i.i.i415_crit_edge: ; preds = %is_direntry_le_ih.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i.i415

is_direntry_le_ih.exit.i16.i.i.if.end.i.i.i417_crit_edge: ; preds = %is_direntry_le_ih.exit.i16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i417

land.lhs.true.i.i.i415:                           ; preds = %is_direntry_le_ih.exit.i16.i.i.land.lhs.true.i.i.i415_crit_edge, %if.else.i.i.i.i13.i.i.land.lhs.true.i.i.i415_crit_edge
  %1375 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1375)
  %1376 = load i32, ptr %pos_in_item11, align 8
  %ih_item_len.i18.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i8.i.i, i32 0, i32 2
  %1377 = ptrtoint ptr %ih_item_len.i18.i.i to i32
  call void @__asan_loadN_noabort(i32 %1377, i32 2)
  %1378 = load i16, ptr %ih_item_len.i18.i.i, align 1
  %1379 = call i16 @llvm.bswap.i16(i16 %1378) #7
  %conv3.i.i.i = zext i16 %1379 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1376, i32 %conv3.i.i.i)
  %cmp.not.i19.i.i = icmp eq i32 %1376, %conv3.i.i.i
  br i1 %cmp.not.i19.i.i, label %lor.lhs.false.i21.i.i, label %land.lhs.true.i.i.i415.if.then.i23.i.i416_crit_edge

land.lhs.true.i.i.i415.if.then.i23.i.i416_crit_edge: ; preds = %land.lhs.true.i.i.i415
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i23.i.i416

lor.lhs.false.i21.i.i:                            ; preds = %land.lhs.true.i.i.i415
  %1380 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1380)
  %1381 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1381)
  %cmp5.i.i.i = icmp slt i32 %1381, 1
  br i1 %cmp5.i.i.i, label %lor.lhs.false.i21.i.i.if.then.i23.i.i416_crit_edge, label %lor.lhs.false.i21.i.i.if.end.i.i.i417_crit_edge

lor.lhs.false.i21.i.i.if.end.i.i.i417_crit_edge:  ; preds = %lor.lhs.false.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i417

lor.lhs.false.i21.i.i.if.then.i23.i.i416_crit_edge: ; preds = %lor.lhs.false.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i23.i.i416

if.then.i23.i.i416:                               ; preds = %lor.lhs.false.i21.i.i.if.then.i23.i.i416_crit_edge, %land.lhs.true.i.i.i415.if.then.i23.i.i416_crit_edge
  %1382 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1383, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_whole, ptr noundef nonnull @.str.71) #10
  unreachable

if.end.i.i.i417:                                  ; preds = %lor.lhs.false.i21.i.i.if.end.i.i.i417_crit_edge, %is_direntry_le_ih.exit.i16.i.i.if.end.i.i.i417_crit_edge, %if.else.i.i.i.i13.i.i.if.end.i.i.i417_crit_edge
  %arrayidx8.i.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 %i.0129.i
  %1384 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load i32, ptr %arrayidx8.i.i.i, align 4
  %1386 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1386)
  %1387 = load ptr, ptr %arrayidx19.i, align 4
  %call10.i.i.i = call i32 @leaf_move_items(i32 noundef 4, ptr noundef %tb, i32 noundef %1256, i32 noundef %1385, ptr noundef %1387) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %do.end.i27.i.i, label %if.then12.i24.i.i

if.then12.i24.i.i:                                ; preds = %if.end.i.i.i417
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_whole, ptr noundef nonnull @.str.72, i32 noundef 1167, ptr noundef nonnull @__func__.balance_leaf_new_nodes_paste_whole, i32 noundef %call10.i.i.i) #10
  unreachable

do.end.i27.i.i:                                   ; preds = %if.end.i.i.i417
  %1388 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1388)
  %1389 = load ptr, ptr %arrayidx19.i, align 4
  %1390 = ptrtoint ptr %bi.i1.i.i319 to i32
  call void @__asan_store4_noabort(i32 %1390)
  store ptr %tb, ptr %bi.i1.i.i319, align 4
  %1391 = ptrtoint ptr %1135 to i32
  call void @__asan_store4_noabort(i32 %1391)
  store ptr %1389, ptr %1135, align 4
  %1392 = ptrtoint ptr %1136 to i32
  call void @__asan_store4_noabort(i32 %1392)
  store ptr null, ptr %1136, align 4
  %1393 = ptrtoint ptr %1137 to i32
  call void @__asan_store4_noabort(i32 %1393)
  store i32 0, ptr %1137, align 4
  %1394 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1394)
  %1395 = load i32, ptr %item_pos, align 4
  %sub.i25.i.i418 = sub i32 %1395, %conv.i.i343
  %1396 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1396)
  %1397 = load i32, ptr %arrayidx11.i, align 4
  %add.i.i.i419 = add i32 %sub.i25.i.i418, %1397
  %1398 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1398)
  %1399 = load i32, ptr %pos_in_item11, align 8
  %1400 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1400)
  %1401 = load i32, ptr %insert_size, align 4
  %1402 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i1.i.i319, i32 noundef %add.i.i.i419, i32 noundef %1399, i32 noundef %1401, ptr noundef %add.ptr27, i32 noundef %1403) #7
  %1404 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1404)
  %1405 = load ptr, ptr %arrayidx19.i, align 4
  %1406 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load i32, ptr %item_pos, align 4
  %sub25.i.i.i = sub i32 %1407, %conv.i.i343
  %1408 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load i32, ptr %arrayidx11.i, align 4
  %add28.i.i.i = add i32 %sub25.i.i.i, %1409
  %b_data.i.i1.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %1405, i32 0, i32 5
  %1410 = ptrtoint ptr %b_data.i.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load ptr, ptr %b_data.i.i1.i.i.i, align 4
  %add.ptr.i.i2.i.i.i = getelementptr i8, ptr %1411, i32 24
  %arrayidx.i3.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i2.i.i.i, i32 %add28.i.i.i
  %ih_version.i4.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i3.i.i.i, i32 0, i32 4
  %1412 = ptrtoint ptr %ih_version.i4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1412, i32 2)
  %1413 = load i16, ptr %ih_version.i4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1413)
  %cmp.i.i.i5.i.i.i = icmp eq i16 %1413, 0
  %u.i.i.i6.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i3.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i5.i.i.i, label %is_direntry_le_ih.exit14.i.i.i, label %if.else.i.i.i11.i.i.i

if.else.i.i.i11.i.i.i:                            ; preds = %do.end.i27.i.i
  %1414 = ptrtoint ptr %u.i.i.i6.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1414, i32 8)
  %1415 = load i64, ptr %u.i.i.i6.i.i.i, align 1
  %1416 = and i64 %1415, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1416)
  %phi.cmp1.i.i10.i.i.i = icmp eq i64 %1416, 48
  br i1 %phi.cmp1.i.i10.i.i.i, label %if.else.i.i.i11.i.i.i.if.then32.i.i.i_crit_edge, label %if.else.i.i.i11.i.i.i.if.end42.i.i.i_crit_edge

if.else.i.i.i11.i.i.i.if.end42.i.i.i_crit_edge:   ; preds = %if.else.i.i.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i.i

if.else.i.i.i11.i.i.i.if.then32.i.i.i_crit_edge:  ; preds = %if.else.i.i.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i.i.i

is_direntry_le_ih.exit14.i.i.i:                   ; preds = %do.end.i27.i.i
  %k_uniqueness.i.i.i7.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i6.i.i.i, i32 0, i32 1
  %1417 = ptrtoint ptr %k_uniqueness.i.i.i7.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1417, i32 4)
  %1418 = load i32, ptr %k_uniqueness.i.i.i7.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %1418)
  %cond.i.i8.i.i.i = icmp eq i32 %1418, -201261056
  br i1 %cond.i.i8.i.i.i, label %is_direntry_le_ih.exit14.i.i.i.if.then32.i.i.i_crit_edge, label %is_direntry_le_ih.exit14.i.i.i.if.end42.i.i.i_crit_edge

is_direntry_le_ih.exit14.i.i.i.if.end42.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i.i

is_direntry_le_ih.exit14.i.i.i.if.then32.i.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i.i.i

if.then32.i.i.i:                                  ; preds = %is_direntry_le_ih.exit14.i.i.i.if.then32.i.i.i_crit_edge, %if.else.i.i.i11.i.i.i.if.then32.i.i.i_crit_edge
  %1419 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1419)
  %1420 = load i32, ptr %pos_in_item11, align 8
  %1421 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1421)
  %1422 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i1.i.i319, i32 noundef %add28.i.i.i, i32 noundef %1420, i32 noundef 1, ptr noundef %add.ptr27, ptr noundef %add.ptr42.i.i.i.i, i32 noundef %1422) #7
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then32.i.i.i, %is_direntry_le_ih.exit14.i.i.i.if.end42.i.i.i_crit_edge, %if.else.i.i.i11.i.i.i.if.end42.i.i.i_crit_edge
  %1423 = ptrtoint ptr %ih_version.i4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1423, i32 2)
  %1424 = load i16, ptr %ih_version.i4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1424)
  %cmp.i.i.i16.i.i.i = icmp eq i16 %1424, 0
  br i1 %cmp.i.i.i16.i.i.i, label %is_indirect_le_ih.exit.i28.i.i, label %if.else.i.i.i22.i.i.i

if.else.i.i.i22.i.i.i:                            ; preds = %if.end42.i.i.i
  %1425 = ptrtoint ptr %u.i.i.i6.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1425, i32 8)
  %1426 = load i64, ptr %u.i.i.i6.i.i.i, align 1
  %1427 = and i64 %1426, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %1427)
  %phi.cmp1.i.i21.i.i.i = icmp eq i64 %1427, 16
  br i1 %phi.cmp1.i.i21.i.i.i, label %if.else.i.i.i22.i.i.i.do.body46.i.i.i_crit_edge, label %if.else.i.i.i22.i.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge

if.else.i.i.i22.i.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge: ; preds = %if.else.i.i.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_new_nodes_paste_whole.exit.i.i

if.else.i.i.i22.i.i.i.do.body46.i.i.i_crit_edge:  ; preds = %if.else.i.i.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46.i.i.i

is_indirect_le_ih.exit.i28.i.i:                   ; preds = %if.end42.i.i.i
  %k_uniqueness.i.i.i18.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i6.i.i.i, i32 0, i32 1
  %1428 = ptrtoint ptr %k_uniqueness.i.i.i18.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %1428, i32 4)
  %1429 = load i32, ptr %k_uniqueness.i.i.i18.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1429)
  %cond.i.i19.i.i.i = icmp eq i32 %1429, -16777217
  br i1 %cond.i.i19.i.i.i, label %is_indirect_le_ih.exit.i28.i.i.do.body46.i.i.i_crit_edge, label %is_indirect_le_ih.exit.i28.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge

is_indirect_le_ih.exit.i28.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_new_nodes_paste_whole.exit.i.i

is_indirect_le_ih.exit.i28.i.i.do.body46.i.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46.i.i.i

do.body46.i.i.i:                                  ; preds = %is_indirect_le_ih.exit.i28.i.i.do.body46.i.i.i_crit_edge, %if.else.i.i.i22.i.i.i.do.body46.i.i.i_crit_edge
  %u.i29.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i3.i.i.i, i32 0, i32 1
  %1430 = ptrtoint ptr %u.i29.i.i to i32
  call void @__asan_storeN_noabort(i32 %1430, i32 2)
  store i16 0, ptr %u.i29.i.i, align 1
  br label %balance_leaf_new_nodes_paste_whole.exit.i.i

balance_leaf_new_nodes_paste_whole.exit.i.i:      ; preds = %do.body46.i.i.i, %is_indirect_le_ih.exit.i28.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge, %if.else.i.i.i22.i.i.i.balance_leaf_new_nodes_paste_whole.exit.i.i_crit_edge
  %1431 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1431)
  store i32 0, ptr %insert_size, align 4
  %1432 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_store4_noabort(i32 %1432)
  store i32 0, ptr %zeroes_num, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i1.i.i319) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %balance_leaf_new_nodes_paste_whole.exit.i.i, %balance_leaf_new_nodes_paste_shift.exit.i.i, %if.then.i105.i, %balance_leaf_new_nodes_insert.exit.i
  %add.ptr.i420 = getelementptr %struct.item_head, ptr %insert_key, i32 %i.0129.i
  %1433 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %1433)
  %1434 = load ptr, ptr %arrayidx19.i, align 4
  %b_data.i.i.i.i421 = getelementptr inbounds %struct.buffer_head, ptr %1434, i32 0, i32 5
  %1435 = ptrtoint ptr %b_data.i.i.i.i421 to i32
  call void @__asan_load4_noabort(i32 %1435)
  %1436 = load ptr, ptr %b_data.i.i.i.i421, align 4
  %add.ptr.i.i.i117.i = getelementptr i8, ptr %1436, i32 24
  %1437 = call ptr @memcpy(ptr %add.ptr.i420, ptr %add.ptr.i.i.i117.i, i32 16)
  %1438 = load ptr, ptr %arrayidx19.i, align 4
  %arrayidx30.i = getelementptr ptr, ptr %insert_ptr, i32 %i.0129.i
  %1439 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %1439)
  store ptr %1438, ptr %arrayidx30.i, align 4
  %1440 = load ptr, ptr %arrayidx19.i, align 4
  %1441 = ptrtoint ptr %1440 to i32
  call void @__asan_load4_noabort(i32 %1441)
  %1442 = load volatile i32, ptr %1440, align 4
  %1443 = and i32 %1442, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1443)
  %tobool35.not.i = icmp eq i32 %1443, 0
  br i1 %tobool35.not.i, label %if.end24.i.if.then45.i_crit_edge, label %lor.lhs.false.i

if.end24.i.if.then45.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %1444 = ptrtoint ptr %1440 to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load volatile i32, ptr %1440, align 4
  %1446 = and i32 %1445, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1446)
  %tobool39.not.i = icmp eq i32 %1446, 0
  br i1 %tobool39.not.i, label %lor.lhs.false40.i, label %lor.lhs.false.i.if.then45.i_crit_edge

lor.lhs.false.i.if.then45.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

lor.lhs.false40.i:                                ; preds = %lor.lhs.false.i
  %1447 = ptrtoint ptr %1440 to i32
  call void @__asan_load4_noabort(i32 %1447)
  %1448 = load volatile i32, ptr %1440, align 4
  %1449 = and i32 %1448, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1449)
  %tobool44.not.i = icmp eq i32 %1449, 0
  br i1 %tobool44.not.i, label %for.inc.i, label %lor.lhs.false40.i.if.then45.i_crit_edge

lor.lhs.false40.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

if.then45.i:                                      ; preds = %lor.lhs.false40.i.if.then45.i_crit_edge, %lor.lhs.false.i.if.then45.i_crit_edge, %if.end24.i.if.then45.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_new_nodes, ptr noundef nonnull @.str.65, i32 noundef 1256, ptr noundef nonnull @__func__.balance_leaf_new_nodes, i32 noundef %i.0129.i, ptr noundef %1440) #10
  unreachable

for.inc.i:                                        ; preds = %lor.lhs.false40.i
  %dec.i = add nsw i32 %i.0129.i, -1
  %cmp.i422 = icmp sgt i32 %i.0129.i, 0
  br i1 %cmp.i422, label %for.inc.i.do.body.i336_crit_edge, label %for.inc.i.balance_leaf_new_nodes.exit_crit_edge

for.inc.i.balance_leaf_new_nodes.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_new_nodes.exit

for.inc.i.do.body.i336_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i336

balance_leaf_new_nodes.exit:                      ; preds = %for.inc.i.balance_leaf_new_nodes.exit_crit_edge, %do.end50.balance_leaf_new_nodes.exit_crit_edge
  %1450 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1451)
  %cmp.i426 = icmp sgt i32 %1451, -1
  br i1 %cmp.i426, label %land.lhs.true.i427, label %balance_leaf_new_nodes.exit.balance_leaf_finish_node.exit_crit_edge

balance_leaf_new_nodes.exit.balance_leaf_finish_node.exit_crit_edge: ; preds = %balance_leaf_new_nodes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node.exit

land.lhs.true.i427:                               ; preds = %balance_leaf_new_nodes.exit
  %s0num.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 21
  %1452 = ptrtoint ptr %s0num.i to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load i32, ptr %s0num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1451, i32 %1453)
  %cmp2.i = icmp slt i32 %1451, %1453
  br i1 %cmp2.i, label %if.then.i432, label %land.lhs.true.i427.balance_leaf_finish_node.exit_crit_edge

land.lhs.true.i427.balance_leaf_finish_node.exit_crit_edge: ; preds = %land.lhs.true.i427
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node.exit

if.then.i432:                                     ; preds = %land.lhs.true.i427
  %1454 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i430 = getelementptr inbounds %struct.treepath, ptr %1455, i32 0, i32 2
  %1456 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load i32, ptr %1455, align 4
  %add.ptr.i.i431 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %1457
  %1458 = ptrtoint ptr %add.ptr.i.i431 to i32
  call void @__asan_load4_noabort(i32 %1458)
  %1459 = load ptr, ptr %add.ptr.i.i431, align 4
  br i1 %cmp12, label %if.then4.i, label %if.else.i450

if.then4.i:                                       ; preds = %if.then.i432
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i424) #7
  %1460 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i424, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i424, i32 0, i32 2
  %1462 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i424, i32 0, i32 3
  %1463 = ptrtoint ptr %bi.i.i424 to i32
  call void @__asan_store4_noabort(i32 %1463)
  store ptr %tb, ptr %bi.i.i424, align 4
  %1464 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load i32, ptr %1455, align 4
  %add.ptr.i.i.i433 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %1465
  %1466 = ptrtoint ptr %add.ptr.i.i.i433 to i32
  call void @__asan_load4_noabort(i32 %1466)
  %1467 = load ptr, ptr %add.ptr.i.i.i433, align 4
  %1468 = ptrtoint ptr %1460 to i32
  call void @__asan_store4_noabort(i32 %1468)
  store ptr %1467, ptr %1460, align 4
  %1469 = load i32, ptr %1455, align 4
  %sub.i.i.i434 = add i32 %1469, -1
  %add.ptr8.i.i.i435 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub.i.i.i434
  %1470 = ptrtoint ptr %add.ptr8.i.i.i435 to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %add.ptr8.i.i.i435, align 4
  %1472 = ptrtoint ptr %1461 to i32
  call void @__asan_store4_noabort(i32 %1472)
  store ptr %1471, ptr %1461, align 4
  %1473 = load i32, ptr %1455, align 4
  %sub15.i.i.i436 = add i32 %1473, -1
  %pe_position.i.i.i437 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub15.i.i.i436, i32 1
  %1474 = ptrtoint ptr %pe_position.i.i.i437 to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load i32, ptr %pe_position.i.i.i437, align 4
  %1476 = ptrtoint ptr %1462 to i32
  call void @__asan_store4_noabort(i32 %1476)
  store i32 %1475, ptr %1462, align 4
  %1477 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1477)
  %1478 = load i32, ptr %zeroes_num, align 4
  call void @leaf_insert_into_buf(ptr noundef nonnull %bi.i.i424, i32 noundef %1451, ptr noundef %ih, ptr noundef %add.ptr27, i32 noundef %1478) #7
  %1479 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1479)
  %1480 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1480)
  %cmp.i.i439 = icmp eq i32 %1480, 0
  br i1 %cmp.i.i439, label %if.then.i.i442, label %if.then4.i.balance_leaf_finish_node.exit.thread_crit_edge

if.then4.i.balance_leaf_finish_node.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node.exit.thread

if.then.i.i442:                                   ; preds = %if.then4.i
  %CFL.i.i440 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %1481 = ptrtoint ptr %CFL.i.i440 to i32
  call void @__asan_load4_noabort(i32 %1481)
  %1482 = load ptr, ptr %CFL.i.i440, align 4
  %tobool.not.i.i441 = icmp eq ptr %1482, null
  br i1 %tobool.not.i.i441, label %if.then.i.i442.balance_leaf_finish_node.exit.thread_crit_edge, label %if.then3.i.i

if.then.i.i442.balance_leaf_finish_node.exit.thread_crit_edge: ; preds = %if.then.i.i442
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node.exit.thread

if.then3.i.i:                                     ; preds = %if.then.i.i442
  call void @__sanitizer_cov_trace_pc() #9
  %lkey.i.i443 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %1483 = ptrtoint ptr %lkey.i.i443 to i32
  call void @__asan_load4_noabort(i32 %1483)
  %1484 = load i32, ptr %lkey.i.i443, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef nonnull %1482, i32 noundef %1484, ptr noundef %1459, i32 noundef 0) #7
  br label %balance_leaf_finish_node.exit.thread

balance_leaf_finish_node.exit.thread:             ; preds = %if.then3.i.i, %if.then.i.i442.balance_leaf_finish_node.exit.thread_crit_edge, %if.then4.i.balance_leaf_finish_node.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i424) #7
  br label %cleanup

if.else.i450:                                     ; preds = %if.then.i432
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i12.i) #7
  %1485 = getelementptr inbounds %struct.buffer_info, ptr %bi.i12.i, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.buffer_info, ptr %bi.i12.i, i32 0, i32 2
  %1487 = getelementptr inbounds %struct.buffer_info, ptr %bi.i12.i, i32 0, i32 3
  %b_data.i.i.i.i444 = getelementptr inbounds %struct.buffer_head, ptr %1459, i32 0, i32 5
  %1488 = ptrtoint ptr %b_data.i.i.i.i444 to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %b_data.i.i.i.i444, align 4
  %add.ptr.i.i.i.i445 = getelementptr i8, ptr %1489, i32 24
  %arrayidx.i.i.i446 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i445, i32 %1451
  %ih_version.i.i.i447 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i446, i32 0, i32 4
  %1490 = ptrtoint ptr %ih_version.i.i.i447 to i32
  call void @__asan_loadN_noabort(i32 %1490, i32 2)
  %1491 = load i16, ptr %ih_version.i.i.i447, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1491)
  %cmp.i.i.i.i.i448 = icmp eq i16 %1491, 0
  %u.i.i.i.i.i449 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i446, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i448, label %is_direntry_le_ih.exit.i.i455, label %if.else.i.i.i.i.i452

if.else.i.i.i.i.i452:                             ; preds = %if.else.i450
  %1492 = ptrtoint ptr %u.i.i.i.i.i449 to i32
  call void @__asan_loadN_noabort(i32 %1492, i32 8)
  %1493 = load i64, ptr %u.i.i.i.i.i449, align 1
  %1494 = and i64 %1493, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %1494)
  %phi.cmp1.i.i.i.i451 = icmp eq i64 %1494, 48
  br i1 %phi.cmp1.i.i.i.i451, label %if.else.i.i.i.i.i452.if.then.i18.i_crit_edge, label %if.else.i.i.i.i.i452.if.end.i.i479_crit_edge

if.else.i.i.i.i.i452.if.end.i.i479_crit_edge:     ; preds = %if.else.i.i.i.i.i452
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i479

if.else.i.i.i.i.i452.if.then.i18.i_crit_edge:     ; preds = %if.else.i.i.i.i.i452
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18.i

is_direntry_le_ih.exit.i.i455:                    ; preds = %if.else.i450
  %k_uniqueness.i.i.i.i.i453 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i449, i32 0, i32 1
  %1495 = ptrtoint ptr %k_uniqueness.i.i.i.i.i453 to i32
  call void @__asan_loadN_noabort(i32 %1495, i32 4)
  %1496 = load i32, ptr %k_uniqueness.i.i.i.i.i453, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %1496)
  %cond.i.i.i.i454 = icmp eq i32 %1496, -201261056
  br i1 %cond.i.i.i.i454, label %is_direntry_le_ih.exit.i.i455.if.then.i18.i_crit_edge, label %is_direntry_le_ih.exit.i.i455.if.end.i.i479_crit_edge

is_direntry_le_ih.exit.i.i455.if.end.i.i479_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i455
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i479

is_direntry_le_ih.exit.i.i455.if.then.i18.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i455
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i18.i

if.then.i18.i:                                    ; preds = %is_direntry_le_ih.exit.i.i455.if.then.i18.i_crit_edge, %if.else.i.i.i.i.i452.if.then.i18.i_crit_edge
  %1497 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1497)
  %1498 = load i32, ptr %1455, align 4
  %add.ptr.i.i17.i = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %1498
  %1499 = ptrtoint ptr %add.ptr.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %1499)
  %1500 = load ptr, ptr %add.ptr.i.i17.i, align 4
  %b_data.i.i.i.i.i456 = getelementptr inbounds %struct.buffer_head, ptr %1500, i32 0, i32 5
  %1501 = ptrtoint ptr %b_data.i.i.i.i.i456 to i32
  call void @__asan_load4_noabort(i32 %1501)
  %1502 = load ptr, ptr %b_data.i.i.i.i.i456, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i.i.i423) #7
  %1503 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i423, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i423, i32 0, i32 2
  %1505 = getelementptr inbounds %struct.buffer_info, ptr %bi.i.i.i423, i32 0, i32 3
  %1506 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1507)
  %cmp.i.i.i458 = icmp sgt i32 %1507, -1
  br i1 %cmp.i.i.i458, label %land.lhs.true.i.i.i463, label %if.then.i18.i.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge

if.then.i18.i.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge: ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node_paste_dirent.exit.i.i

land.lhs.true.i.i.i463:                           ; preds = %if.then.i18.i
  %add.ptr.i.i.i.i.i459 = getelementptr i8, ptr %1502, i32 24
  %arrayidx.i.i.i.i460 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i459, i32 %1451
  %u.i.i.i461 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i460, i32 0, i32 1
  %1508 = ptrtoint ptr %u.i.i.i461 to i32
  call void @__asan_loadN_noabort(i32 %1508, i32 2)
  %1509 = load i16, ptr %u.i.i.i461, align 1
  %1510 = call i16 @llvm.bswap.i16(i16 %1509) #7
  %conv.i.i.i462 = zext i16 %1510 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1507, i32 %conv.i.i.i462)
  %cmp3.not.i.i.i = icmp ugt i32 %1507, %conv.i.i.i462
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i463.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge, label %do.body.i.i.i466

land.lhs.true.i.i.i463.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i463
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node_paste_dirent.exit.i.i

do.body.i.i.i466:                                 ; preds = %land.lhs.true.i.i.i463
  %1511 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1511)
  %1512 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1512)
  %tobool.not.i.i.i465 = icmp eq i32 %1512, 0
  br i1 %tobool.not.i.i.i465, label %if.then5.i.i.i, label %do.end.i.i.i470

if.then5.i.i.i:                                   ; preds = %do.body.i.i.i466
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste_dirent, ptr noundef nonnull @.str.77, i32 noundef 1287, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste_dirent) #10
  unreachable

do.end.i.i.i470:                                  ; preds = %do.body.i.i.i466
  %1513 = ptrtoint ptr %bi.i.i.i423 to i32
  call void @__asan_store4_noabort(i32 %1513)
  store ptr %tb, ptr %bi.i.i.i423, align 4
  %1514 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load i32, ptr %1455, align 4
  %add.ptr.i.i1.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %1515
  %1516 = ptrtoint ptr %add.ptr.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load ptr, ptr %add.ptr.i.i1.i.i, align 4
  %1518 = ptrtoint ptr %1503 to i32
  call void @__asan_store4_noabort(i32 %1518)
  store ptr %1517, ptr %1503, align 4
  %1519 = load i32, ptr %1455, align 4
  %sub.i.i.i.i467 = add i32 %1519, -1
  %add.ptr8.i.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub.i.i.i.i467
  %1520 = ptrtoint ptr %add.ptr8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load ptr, ptr %add.ptr8.i.i.i.i, align 4
  %1522 = ptrtoint ptr %1504 to i32
  call void @__asan_store4_noabort(i32 %1522)
  store ptr %1521, ptr %1504, align 4
  %1523 = load i32, ptr %1455, align 4
  %sub15.i.i.i.i = add i32 %1523, -1
  %pe_position.i.i.i.i468 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub15.i.i.i.i, i32 1
  %1524 = ptrtoint ptr %pe_position.i.i.i.i468 to i32
  call void @__asan_load4_noabort(i32 %1524)
  %1525 = load i32, ptr %pe_position.i.i.i.i468, align 4
  %1526 = ptrtoint ptr %1505 to i32
  call void @__asan_store4_noabort(i32 %1526)
  store i32 %1525, ptr %1505, align 4
  %1527 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1527)
  %1528 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i.i.i423, i32 noundef %1451, i32 noundef %1507, i32 noundef %1512, ptr noundef %add.ptr27, i32 noundef %1528) #7
  %1529 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1529)
  %1530 = load i32, ptr %item_pos, align 4
  %1531 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1531)
  %1532 = load i32, ptr %pos_in_item11, align 8
  %add.ptr12.i.i.i = getelementptr i8, ptr %add.ptr27, i32 16
  %1533 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1533)
  %1534 = load i32, ptr %insert_size, align 4
  call void @leaf_paste_entries(ptr noundef nonnull %bi.i.i.i423, i32 noundef %1530, i32 noundef %1532, i32 noundef 1, ptr noundef %add.ptr27, ptr noundef %add.ptr12.i.i.i, i32 noundef %1534) #7
  %1535 = ptrtoint ptr %item_pos to i32
  call void @__asan_load4_noabort(i32 %1535)
  %1536 = load i32, ptr %item_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1536)
  %tobool16.not.i.i.i = icmp eq i32 %1536, 0
  br i1 %tobool16.not.i.i.i, label %land.lhs.true17.i.i.i, label %do.end.i.i.i470.if.end38.i.i.i_crit_edge

do.end.i.i.i470.if.end38.i.i.i_crit_edge:         ; preds = %do.end.i.i.i470
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i.i

land.lhs.true17.i.i.i:                            ; preds = %do.end.i.i.i470
  %1537 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1537)
  %1538 = load i32, ptr %pos_in_item11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1538)
  %tobool19.not.i.i.i = icmp eq i32 %1538, 0
  br i1 %tobool19.not.i.i.i, label %do.body21.i.i.i, label %land.lhs.true17.i.i.i.if.end38.i.i.i_crit_edge

land.lhs.true17.i.i.i.if.end38.i.i.i_crit_edge:   ; preds = %land.lhs.true17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i.i

do.body21.i.i.i:                                  ; preds = %land.lhs.true17.i.i.i
  %CFL.i.i.i471 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 9
  %1539 = ptrtoint ptr %CFL.i.i.i471 to i32
  call void @__asan_load4_noabort(i32 %1539)
  %1540 = load ptr, ptr %CFL.i.i.i471, align 4
  %tobool23.not.i.i.i = icmp eq ptr %1540, null
  br i1 %tobool23.not.i.i.i, label %do.body21.i.i.i.if.then26.i.i.i474_crit_edge, label %lor.lhs.false.i.i.i473

do.body21.i.i.i.if.then26.i.i.i474_crit_edge:     ; preds = %do.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i.i.i474

lor.lhs.false.i.i.i473:                           ; preds = %do.body21.i.i.i
  %L.i.i.i472 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 5
  %1541 = ptrtoint ptr %L.i.i.i472 to i32
  call void @__asan_load4_noabort(i32 %1541)
  %1542 = load ptr, ptr %L.i.i.i472, align 4
  %tobool25.not.i.i.i = icmp eq ptr %1542, null
  br i1 %tobool25.not.i.i.i, label %lor.lhs.false.i.i.i473.if.then26.i.i.i474_crit_edge, label %if.then33.i.i.i

lor.lhs.false.i.i.i473.if.then26.i.i.i474_crit_edge: ; preds = %lor.lhs.false.i.i.i473
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i.i.i474

if.then26.i.i.i474:                               ; preds = %lor.lhs.false.i.i.i473.if.then26.i.i.i474_crit_edge, %do.body21.i.i.i.if.then26.i.i.i474_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste_dirent, ptr noundef nonnull @.str.78, i32 noundef 1301, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste_dirent) #10
  unreachable

if.then33.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i473
  call void @__sanitizer_cov_trace_pc() #9
  %lkey.i.i.i475 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %1543 = ptrtoint ptr %lkey.i.i.i475 to i32
  call void @__asan_load4_noabort(i32 %1543)
  %1544 = load i32, ptr %lkey.i.i.i475, align 4
  call void @replace_key(ptr noundef %tb, ptr noundef nonnull %1540, i32 noundef %1544, ptr noundef %1500, i32 noundef 0) #7
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.then33.i.i.i, %land.lhs.true17.i.i.i.if.end38.i.i.i_crit_edge, %do.end.i.i.i470.if.end38.i.i.i_crit_edge
  %1545 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1545)
  store i32 0, ptr %insert_size, align 4
  br label %balance_leaf_finish_node_paste_dirent.exit.i.i

balance_leaf_finish_node_paste_dirent.exit.i.i:   ; preds = %if.end38.i.i.i, %land.lhs.true.i.i.i463.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge, %if.then.i18.i.balance_leaf_finish_node_paste_dirent.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i.i.i423) #7
  br label %balance_leaf_finish_node_paste.exit.i

if.end.i.i479:                                    ; preds = %is_direntry_le_ih.exit.i.i455.if.end.i.i479_crit_edge, %if.else.i.i.i.i.i452.if.end.i.i479_crit_edge
  %1546 = ptrtoint ptr %pos_in_item11 to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load i32, ptr %pos_in_item11, align 8
  %ih_item_len.i.i476 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i446, i32 0, i32 2
  %1548 = ptrtoint ptr %ih_item_len.i.i476 to i32
  call void @__asan_loadN_noabort(i32 %1548, i32 2)
  %1549 = load i16, ptr %ih_item_len.i.i476, align 1
  %1550 = call i16 @llvm.bswap.i16(i16 %1549) #7
  %conv.i.i477 = zext i16 %1550 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1547, i32 %conv.i.i477)
  %cmp.i19.i = icmp eq i32 %1547, %conv.i.i477
  %1551 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1551)
  %1552 = load i32, ptr %insert_size, align 4
  br i1 %cmp.i19.i, label %do.body.i.i, label %if.else.i.i484

do.body.i.i:                                      ; preds = %if.end.i.i479
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1552)
  %cmp5.i.i = icmp slt i32 %1552, 1
  br i1 %cmp5.i.i, label %if.then7.i.i, label %do.end.i.i481

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste, ptr noundef nonnull @.str.73, i32 noundef 1330, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste, i32 noundef %1552) #10
  unreachable

do.end.i.i481:                                    ; preds = %do.body.i.i
  %1553 = ptrtoint ptr %bi.i12.i to i32
  call void @__asan_store4_noabort(i32 %1553)
  store ptr %tb, ptr %bi.i12.i, align 4
  %1554 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load i32, ptr %1455, align 4
  %add.ptr.i4.i.i480 = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %1555
  %1556 = ptrtoint ptr %add.ptr.i4.i.i480 to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %add.ptr.i4.i.i480, align 4
  %1558 = ptrtoint ptr %1485 to i32
  call void @__asan_store4_noabort(i32 %1558)
  store ptr %1557, ptr %1485, align 4
  %1559 = load i32, ptr %1455, align 4
  %sub.i.i20.i = add i32 %1559, -1
  %add.ptr8.i.i21.i = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub.i.i20.i
  %1560 = ptrtoint ptr %add.ptr8.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load ptr, ptr %add.ptr8.i.i21.i, align 4
  %1562 = ptrtoint ptr %1486 to i32
  call void @__asan_store4_noabort(i32 %1562)
  store ptr %1561, ptr %1486, align 4
  %1563 = load i32, ptr %1455, align 4
  %sub15.i.i22.i = add i32 %1563, -1
  %pe_position.i.i23.i = getelementptr %struct.path_element, ptr %path_elements.i.i430, i32 %sub15.i.i22.i, i32 1
  %1564 = ptrtoint ptr %pe_position.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %1564)
  %1565 = load i32, ptr %pe_position.i.i23.i, align 4
  %1566 = ptrtoint ptr %1487 to i32
  call void @__asan_store4_noabort(i32 %1566)
  store i32 %1565, ptr %1487, align 4
  %1567 = ptrtoint ptr %zeroes_num to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load i32, ptr %zeroes_num, align 4
  call void @leaf_paste_in_buffer(ptr noundef nonnull %bi.i12.i, i32 noundef %1451, i32 noundef %1547, i32 noundef %1552, ptr noundef %add.ptr27, i32 noundef %1568) #7
  %1569 = ptrtoint ptr %ih_version.i.i.i447 to i32
  call void @__asan_loadN_noabort(i32 %1569, i32 2)
  %1570 = load i16, ptr %ih_version.i.i.i447, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1570)
  %cmp.i.i.i6.i.i = icmp eq i16 %1570, 0
  br i1 %cmp.i.i.i6.i.i, label %is_indirect_le_ih.exit.i.i482, label %if.else.i.i.i12.i.i

if.else.i.i.i12.i.i:                              ; preds = %do.end.i.i481
  %1571 = ptrtoint ptr %u.i.i.i.i.i449 to i32
  call void @__asan_loadN_noabort(i32 %1571, i32 8)
  %1572 = load i64, ptr %u.i.i.i.i.i449, align 1
  %1573 = and i64 %1572, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %1573)
  %phi.cmp1.i.i11.i.i = icmp eq i64 %1573, 16
  br i1 %phi.cmp1.i.i11.i.i, label %if.else.i.i.i12.i.i.do.body18.i.i_crit_edge, label %if.else.i.i.i12.i.i.if.end25.i.i483_crit_edge

if.else.i.i.i12.i.i.if.end25.i.i483_crit_edge:    ; preds = %if.else.i.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i483

if.else.i.i.i12.i.i.do.body18.i.i_crit_edge:      ; preds = %if.else.i.i.i12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18.i.i

is_indirect_le_ih.exit.i.i482:                    ; preds = %do.end.i.i481
  %k_uniqueness.i.i.i8.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i449, i32 0, i32 1
  %1574 = ptrtoint ptr %k_uniqueness.i.i.i8.i.i to i32
  call void @__asan_loadN_noabort(i32 %1574, i32 4)
  %1575 = load i32, ptr %k_uniqueness.i.i.i8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1575)
  %cond.i.i9.i.i = icmp eq i32 %1575, -16777217
  br i1 %cond.i.i9.i.i, label %is_indirect_le_ih.exit.i.i482.do.body18.i.i_crit_edge, label %is_indirect_le_ih.exit.i.i482.if.end25.i.i483_crit_edge

is_indirect_le_ih.exit.i.i482.if.end25.i.i483_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i483

is_indirect_le_ih.exit.i.i482.do.body18.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i482
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18.i.i

do.body18.i.i:                                    ; preds = %is_indirect_le_ih.exit.i.i482.do.body18.i.i_crit_edge, %if.else.i.i.i12.i.i.do.body18.i.i_crit_edge
  %u.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i446, i32 0, i32 1
  %1576 = ptrtoint ptr %u.i.i to i32
  call void @__asan_storeN_noabort(i32 %1576, i32 2)
  store i16 0, ptr %u.i.i, align 1
  br label %if.end25.i.i483

if.end25.i.i483:                                  ; preds = %do.body18.i.i, %is_indirect_le_ih.exit.i.i482.if.end25.i.i483_crit_edge, %if.else.i.i.i12.i.i.if.end25.i.i483_crit_edge
  %1577 = ptrtoint ptr %insert_size to i32
  call void @__asan_store4_noabort(i32 %1577)
  store i32 0, ptr %insert_size, align 4
  br label %balance_leaf_finish_node_paste.exit.i

if.else.i.i484:                                   ; preds = %if.end.i.i479
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1552)
  %tobool30.not.i.i = icmp eq i32 %1552, 0
  br i1 %tobool30.not.i.i, label %if.else.i.i484.balance_leaf_finish_node_paste.exit.i_crit_edge, label %if.then31.i.i

if.else.i.i484.balance_leaf_finish_node_paste.exit.i_crit_edge: ; preds = %if.else.i.i484
  call void @__sanitizer_cov_trace_pc() #9
  br label %balance_leaf_finish_node_paste.exit.i

if.then31.i.i:                                    ; preds = %if.else.i.i484
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_cur_tb(ptr noundef nonnull @.str.74) #7
  %1578 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1578)
  %1579 = load ptr, ptr %tb_sb, align 8
  %1580 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1580)
  %1581 = load i32, ptr %insert_size, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1579, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.balance_leaf_finish_node_paste, ptr noundef nonnull @.str.76, i32 noundef %1581) #10
  unreachable

balance_leaf_finish_node_paste.exit.i:            ; preds = %if.else.i.i484.balance_leaf_finish_node_paste.exit.i_crit_edge, %if.end25.i.i483, %balance_leaf_finish_node_paste_dirent.exit.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i12.i) #7
  br label %balance_leaf_finish_node.exit

balance_leaf_finish_node.exit:                    ; preds = %balance_leaf_finish_node_paste.exit.i, %land.lhs.true.i427.balance_leaf_finish_node.exit_crit_edge, %balance_leaf_new_nodes.exit.balance_leaf_finish_node.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %flag)
  %cmp86 = icmp eq i32 %flag, 112
  br i1 %cmp86, label %land.lhs.true88, label %balance_leaf_finish_node.exit.cleanup_crit_edge

balance_leaf_finish_node.exit.cleanup_crit_edge:  ; preds = %balance_leaf_finish_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true88:                                  ; preds = %balance_leaf_finish_node.exit
  %1582 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1582)
  %1583 = load i32, ptr %insert_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1583)
  %tobool91.not = icmp eq i32 %1583, 0
  br i1 %tobool91.not, label %land.lhs.true88.cleanup_crit_edge, label %if.then92

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_cur_tb(ptr noundef nonnull @.str.35) #7
  %1584 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %tb_sb, align 8
  %1586 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %1586)
  %1587 = load i32, ptr %insert_size, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1585, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.balance_leaf, ptr noundef nonnull @.str.37, i32 noundef %1587) #10
  unreachable

cleanup:                                          ; preds = %land.lhs.true88.cleanup_crit_edge, %balance_leaf_finish_node.exit.cleanup_crit_edge, %balance_leaf_finish_node.exit.thread, %if.end84, %if.then64.i, %if.end60.i.cleanup_crit_edge, %balance_leaf_when_delete_left.exit.i
  %retval.0 = phi i32 [ 0, %if.end84 ], [ 0, %land.lhs.true88.cleanup_crit_edge ], [ 0, %balance_leaf_finish_node.exit.cleanup_crit_edge ], [ %retval.0.i.i, %balance_leaf_when_delete_left.exit.i ], [ 0, %if.then64.i ], [ %191, %if.end60.i.cleanup_crit_edge ], [ 0, %balance_leaf_finish_node.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @balance_internal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_leaf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @B_IS_IN_TREE(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cur_tb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @leaf_shift_right(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @leaf_delete_items(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @leaf_cut_from_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @leaf_move_items(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @leaf_shift_left(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @leaf_insert_into_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @leaf_paste_in_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_le_keys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @leaf_paste_entries(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_internal_node(ptr noundef %s, ptr noundef %bh, ptr noundef %mes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.check_internal_node, ptr noundef nonnull @.str.93, i32 noundef 1616, ptr noundef nonnull @__func__.check_internal_node) #10
  unreachable

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @B_IS_IN_TREE(ptr noundef nonnull %bh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.body5.do.end16_crit_edge

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

land.lhs.true:                                    ; preds = %do.body5
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bh, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %land.lhs.true.do.end16_crit_edge

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.then13, label %lor.lhs.false10.do.end16_crit_edge

lor.lhs.false10.do.end16_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.then13:                                        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.check_internal_node, ptr noundef nonnull @.str.94, i32 noundef 1623, ptr noundef nonnull @__func__.check_internal_node, ptr noundef nonnull %bh) #10
  unreachable

do.end16:                                         ; preds = %lor.lhs.false10.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %do.body5.do.end16_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 24
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %blk_nr_item, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end16
  %i.051 = phi i32 [ 0, %do.end16 ], [ %inc, %for.inc.for.body_crit_edge ]
  %dc.050 = phi ptr [ %add.ptr18, %do.end16 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %dc.050 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dc.050, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call24 = tail call i32 @is_reusable(ptr noundef %s, i32 noundef %16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_cur_tb(ptr noundef %mes) #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.check_internal_node, ptr noundef nonnull @.str.96, ptr noundef %dc.050, ptr noundef nonnull %bh) #10
  unreachable

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.051, 1
  %incdec.ptr = getelementptr %struct.disk_child, ptr %dc.050, i32 1
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %blk_nr_item21 = getelementptr inbounds %struct.block_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %blk_nr_item21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %blk_nr_item21, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv22 = zext i16 %21 to i32
  %cmp.not.not = icmp ult i32 %i.051, %conv22
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_reusable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !67, !69, !71, !72, !74, !76, !77, !79, !80, !82, !84, !86, !88, !89, !91, !93, !94, !96, !98, !99, !101, !103, !105, !107, !108, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !131, !133, !134, !136, !138, !139, !141, !142, !144, !146, !147, !149, !151, !152, !154, !156, !157, !158, !160, !162, !163, !165, !167, !168, !170, !171, !173, !175, !177, !178, !179, !181, !183, !184, !186, !188, !189, !191, !192, !194, !196, !198, !200, !201, !203, !205, !206, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/do_balan.c", i32 1472, i32 2}
!2 = !{ptr @__func__.make_empty_node, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/do_balan.c", i32 1493, i32 3}
!6 = !{ptr @__func__.get_FEB, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.replace_key, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/do_balan.c", i32 1556, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/do_balan.c", i32 1559, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/reiserfs/do_balan.c", i32 1562, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/do_balan.c", i32 1564, i32 2}
!17 = !{ptr @__func__.get_left_neighbor_position, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/do_balan.c", i32 1583, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.get_right_neighbor_position, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/reiserfs/do_balan.c", i32 1597, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/reiserfs/do_balan.c", i32 1868, i32 3}
!25 = !{ptr @__func__.do_balance, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/reiserfs/do_balan.c", i32 1873, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/do_balan.c", i32 1510, i32 3}
!32 = !{ptr @__func__.store_thrown, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/do_balan.c", i32 1518, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__func__.do_balance_starts, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/reiserfs/do_balan.c", i32 1800, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/reiserfs/do_balan.c", i32 1652, i32 3}
!42 = !{ptr @__func__.check_before_balancing, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/do_balan.c", i32 1664, i32 49}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/do_balan.c", i32 1665, i32 50}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/do_balan.c", i32 1666, i32 51}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/do_balan.c", i32 1670, i32 49}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/reiserfs/do_balan.c", i32 1671, i32 50}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/reiserfs/do_balan.c", i32 1672, i32 51}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/reiserfs/do_balan.c", i32 1676, i32 6}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/reiserfs/do_balan.c", i32 1641, i32 3}
!60 = !{ptr @__func__.locked_or_not_in_tree, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__func__.balance_leaf, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/reiserfs/do_balan.c", i32 1418, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/reiserfs/do_balan.c", i32 1420, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/do_balan.c", i32 1430, i32 3}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/do_balan.c", i32 1439, i32 5}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/reiserfs/do_balan.c", i32 1456, i32 16}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/do_balan.c", i32 1457, i32 3}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__func__.balance_leaf_when_delete, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/reiserfs/do_balan.c", i32 245, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/reiserfs/do_balan.c", i32 247, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/do_balan.c", i32 249, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/reiserfs/do_balan.c", i32 281, i32 2}
!86 = !{ptr @__func__.balance_leaf_when_delete_del, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/do_balan.c", i32 86, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/reiserfs/do_balan.c", i32 103, i32 2}
!91 = !{ptr @__func__.balance_leaf_when_delete_cut, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/reiserfs/do_balan.c", i32 130, i32 3}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/reiserfs/do_balan.c", i32 140, i32 3}
!96 = !{ptr @__func__.balance_leaf_when_delete_left, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/reiserfs/do_balan.c", i32 191, i32 3}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/reiserfs/do_balan.c", i32 206, i32 2}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/reiserfs/do_balan.c", i32 211, i32 2}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/reiserfs/do_balan.c", i32 216, i32 2}
!105 = !{ptr @__func__.balance_leaf_insert_left, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/reiserfs/do_balan.c", i32 307, i32 3}
!107 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/reiserfs/do_balan.c", i32 333, i32 3}
!110 = !{ptr @__func__.balance_leaf_paste_left_shift, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/reiserfs/do_balan.c", i32 427, i32 2}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/reiserfs/do_balan.c", i32 430, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/reiserfs/do_balan.c", i32 454, i32 3}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/reiserfs/do_balan.c", i32 475, i32 3}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/reiserfs/do_balan.c", i32 477, i32 3}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/reiserfs/do_balan.c", i32 504, i32 3}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/reiserfs/do_balan.c", i32 517, i32 3}
!125 = !{ptr @__func__.balance_leaf_paste_left_shift_dirent, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/reiserfs/do_balan.c", i32 358, i32 2}
!127 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__func__.balance_leaf_paste_right_shift, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/reiserfs/do_balan.c", i32 784, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__func__.balance_leaf_paste_right_shift_dirent, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/reiserfs/do_balan.c", i32 715, i32 2}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/reiserfs/do_balan.c", i32 723, i32 3}
!136 = !{ptr @__func__.balance_leaf_paste_right_whole, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/reiserfs/do_balan.c", i32 866, i32 4}
!138 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__func__.balance_leaf_new_nodes, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/reiserfs/do_balan.c", i32 1231, i32 3}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/reiserfs/do_balan.c", i32 1252, i32 3}
!144 = !{ptr @__func__.balance_leaf_new_nodes_paste_shift, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/reiserfs/do_balan.c", i32 1078, i32 2}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/reiserfs/do_balan.c", i32 1089, i32 2}
!149 = !{ptr @__func__.balance_leaf_new_nodes_paste_dirent, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/reiserfs/do_balan.c", i32 1025, i32 3}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/reiserfs/do_balan.c", i32 1027, i32 3}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/reiserfs/do_balan.c", i32 1157, i32 3}
!156 = !{ptr @__func__.balance_leaf_new_nodes_paste_whole, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/reiserfs/do_balan.c", i32 1165, i32 2}
!160 = !{ptr @__func__.balance_leaf_finish_node_paste, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/reiserfs/do_balan.c", i32 1328, i32 3}
!162 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/reiserfs/do_balan.c", i32 1343, i32 16}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/reiserfs/do_balan.c", i32 1344, i32 3}
!167 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__func__.balance_leaf_finish_node_paste_dirent, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/reiserfs/do_balan.c", i32 1286, i32 3}
!170 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/reiserfs/do_balan.c", i32 1300, i32 4}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/reiserfs/do_balan.c", i32 1689, i32 17}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/reiserfs/do_balan.c", i32 1690, i32 4}
!177 = !{ptr @__func__.check_after_balance_leaf, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/reiserfs/do_balan.c", i32 1699, i32 17}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/reiserfs/do_balan.c", i32 1700, i32 4}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/reiserfs/do_balan.c", i32 1714, i32 16}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/reiserfs/do_balan.c", i32 1715, i32 3}
!188 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/reiserfs/do_balan.c", i32 1726, i32 3}
!191 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/reiserfs/do_balan.c", i32 1744, i32 9}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/reiserfs/do_balan.c", i32 1746, i32 45}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/reiserfs/do_balan.c", i32 1748, i32 45}
!198 = !{ptr @__func__.check_internal_node, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/reiserfs/do_balan.c", i32 1616, i32 2}
!200 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/reiserfs/do_balan.c", i32 1621, i32 2}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/reiserfs/do_balan.c", i32 1629, i32 4}
!205 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/reiserfs/do_balan.c", i32 1530, i32 5}
!208 = !{ptr @__func__.free_thrown, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 2148496612, i64 2148496638, i64 2148496667, i64 2148496701, i64 2148496732, i64 2148496755}
!220 = !{!"auto-init"}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{i64 2154162057, i64 2154162544, i64 2154162094, i64 2154162150, i64 2154162184, i64 2154162208, i64 2154162249, i64 2154162270, i64 2154162298, i64 2154162332}
!223 = !{i64 2154188772, i64 2154189259, i64 2154188809, i64 2154188865, i64 2154188899, i64 2154188923, i64 2154188964, i64 2154188985, i64 2154189013, i64 2154189047}
!224 = !{i64 2154200373, i64 2154200860, i64 2154200410, i64 2154200466, i64 2154200500, i64 2154200524, i64 2154200565, i64 2154200586, i64 2154200614, i64 2154200648}
!225 = !{i64 2154215689, i64 2154216177, i64 2154215726, i64 2154215782, i64 2154215816, i64 2154215840, i64 2154215881, i64 2154215902, i64 2154215930, i64 2154215964}
