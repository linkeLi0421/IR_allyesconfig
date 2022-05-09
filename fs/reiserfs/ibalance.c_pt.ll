; ModuleID = '/llk/IR_all_yes/fs/reiserfs/ibalance.c_pt.bc'
source_filename = "../fs/reiserfs/ibalance.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.buffer_info = type { ptr, ptr, ptr, i32 }
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
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%union.anon.71 = type { i16 }
%struct.disk_child = type { i32, i16, i16 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.balance_internal = private unnamed_addr constant [17 x i8] c"balance_internal\00", align 1
@.str.1 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"(!(h < 1)) at fs/reiserfs/ibalance.c:%i:%s: h (%d) can not be < 1 on internal level\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"(!(insert_num < -2 || insert_num > 2)) at fs/reiserfs/ibalance.c:%i:%s: incorrect number of items inserted to the internal node (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"(!(h > 1 && (insert_num > 1 || insert_num < -1))) at fs/reiserfs/ibalance.c:%i:%s: incorrect number of items (%d) inserted to the internal node on a level (h=%d) higher than last internal level\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"(!(tb->blknum[h] > 2)) at fs/reiserfs/ibalance.c:%i:%s: blknum can not be > 2 for internal level\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"(!(tb->blknum[h] < 0)) at fs/reiserfs/ibalance.c:%i:%s: blknum can not be < 0\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(!(!tbSh)) at fs/reiserfs/ibalance.c:%i:%s: S[h] is equal NULL\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ibalance-3\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"One new node required for creating the new root\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"(!(!buffer_journaled(S_new) || buffer_journal_dirty(S_new) || buffer_dirty(S_new))) at fs/reiserfs/ibalance.c:%i:%s: cm-00001: bad S_new (%b)\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.balance_internal_when_delete = private unnamed_addr constant [29 x i8] c"balance_internal_when_delete\00", align 1
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"(!(tb->blknum[h] > 1)) at fs/reiserfs/ibalance.c:%i:%s: tb->blknum[%d]=%d when insert_size < 0\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [282 x i8], [70 x i8] } { [282 x i8] c"(!(n || (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tbSh)->b_data)))->blk_free_space))))) != ((int)( (tbSh)->b_size - (sizeof(struct block_head)) )) - (sizeof(struct disk_child)))) at fs/reiserfs/ibalance.c:%i:%s: buffer must have only 0 keys (%d)\0A\00", [70 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"(!(bi.bi_parent)) at fs/reiserfs/ibalance.c:%i:%s: root has parent (%p)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"(!(tb->rnum[h] != 0)) at fs/reiserfs/ibalance.c:%i:%s: invalid tb->rnum[%d]==%d when joining S[h] with L[h]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"(!(tb->lnum[h] != 0)) at fs/reiserfs/ibalance.c:%i:%s: invalid tb->lnum[%d]==%d when joining S[h] with R[h]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"(!(tb->rnum[h] != 0)) at fs/reiserfs/ibalance.c:%i:%s: wrong tb->rnum[%d]==%d when borrow from L[h]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"(!(tb->lnum[h] != 0)) at fs/reiserfs/ibalance.c:%i:%s: invalid tb->lnum[%d]==%d when borrow from R[h]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [190 x i8], [34 x i8] } { [190 x i8] c"(!(tb->rnum[h] == 0 || tb->lnum[h] + tb->rnum[h] != n + 1)) at fs/reiserfs/ibalance.c:%i:%s: invalid tb->lnum[%d]==%d or tb->rnum[%d]==%d when S[h](item number == %d) is split between them\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ibalance-2\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unexpected tb->lnum[%d]==%d or tb->rnum[%d]==%d\00", [48 x i8] zeroinitializer }, align 32
@__func__.internal_delete_pointers_items = private unnamed_addr constant [31 x i8] c"internal_delete_pointers_items\00", align 1
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"(!(cur == ((void *)0))) at fs/reiserfs/ibalance.c:%i:%s: buffer is 0\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"(!(del_num < 0)) at fs/reiserfs/ibalance.c:%i:%s: negative number of items (%d) can not be deleted\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [298 x i8], [86 x i8] } { [298 x i8] c"(!(first_p < 0 || first_p + del_num > (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((cur)->b_data)))->blk_nr_item))))) + 1 || first_i < 0)) at fs/reiserfs/ibalance.c:%i:%s: first pointer order (%d) < 0 or no so many pointers (%d), only (%d) or first key order %d < 0\0A\00", [86 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"(!(first_i != 0)) at fs/reiserfs/ibalance.c:%i:%s: 1st deleted key must have order 0, not %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [238 x i8], [50 x i8] } { [238 x i8] c"(!(first_i + del_num > (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((cur)->b_data)))->blk_nr_item))))))) at fs/reiserfs/ibalance.c:%i:%s: first_i = %d del_num = %d no so many keys (%d) in the node (%b)(%z)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ibalance-1\00", [21 x i8] zeroinitializer }, align 32
@__func__.internal_define_dest_src_infos = private unnamed_addr constant [31 x i8] c"internal_define_dest_src_infos\00", align 1
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shift type is unknown (%d)\00", [37 x i8] zeroinitializer }, align 32
@__func__.internal_insert_key = private unnamed_addr constant [20 x i8] c"internal_insert_key\00", align 1
@.str.27 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"(!(dest == ((void *)0) || src == ((void *)0))) at fs/reiserfs/ibalance.c:%i:%s: source(%p) or dest(%p) buffer is 0\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"(!(dest_position_before < 0 || src_position < 0)) at fs/reiserfs/ibalance.c:%i:%s: source(%d) or dest(%d) key number less than 0\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [381 x i8], [67 x i8] } { [381 x i8] c"(!(dest_position_before > (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_nr_item))))) || src_position >= (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((src)->b_data)))->blk_nr_item))))))) at fs/reiserfs/ibalance.c:%i:%s: invalid position in dest (%d (key number %d)) or in src (%d (key number %d))\0A\00", [67 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [227 x i8], [61 x i8] } { [227 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_free_space))))) < (sizeof(struct reiserfs_key)))) at fs/reiserfs/ibalance.c:%i:%s: no enough free space (%d) in dest buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.internal_insert_childs = private unnamed_addr constant [23 x i8] c"internal_insert_childs\00", align 1
@.str.31 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"(!(count > 2)) at fs/reiserfs/ibalance.c:%i:%s: too many children (%d) are to be inserted\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [268 x i8], [84 x i8] } { [268 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((cur)->b_data)))->blk_free_space))))) < count * ((sizeof(struct reiserfs_key)) + (sizeof(struct disk_child))))) at fs/reiserfs/ibalance.c:%i:%s: no enough free space (%d), needed %d bytes\0A\00", [84 x i8] zeroinitializer }, align 32
@__func__.replace_lkey = private unnamed_addr constant [13 x i8] c"replace_lkey\00", align 1
@.str.33 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"(!(tb->L[h] == ((void *)0) || tb->CFL[h] == ((void *)0))) at fs/reiserfs/ibalance.c:%i:%s: L[h](%p) and CFL[h](%p) must exist in replace_lkey\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.internal_shift_right = private unnamed_addr constant [21 x i8] c"internal_shift_right\00", align 1
@.str.34 = internal constant { [215 x i8], [41 x i8] } { [215 x i8] c"(!(src_bi.bi_bh != (((tb->tb_path)->path_elements + (tb->tb_path->path_length - (h)))->pe_buffer) || dest_bi.bi_bh != tb->R[h])) at fs/reiserfs/ibalance.c:%i:%s: src (%p) must be == tb->S[h](%p) when it disappears\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.replace_rkey = private unnamed_addr constant [13 x i8] c"replace_rkey\00", align 1
@.str.35 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"(!(tb->R[h] == ((void *)0) || tb->CFR[h] == ((void *)0))) at fs/reiserfs/ibalance.c:%i:%s: R[h](%p) and CFR[h](%p) must exist in replace_rkey\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [212 x i8], [44 x i8] } { [212 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((tb->R[h])->b_data)))->blk_nr_item))))) == 0)) at fs/reiserfs/ibalance.c:%i:%s: R[h] can not be empty if it exists (item number=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.internal_copy_pointers_items = private unnamed_addr constant [29 x i8] c"internal_copy_pointers_items\00", align 1
@.str.37 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"(!(dest == ((void *)0) || src == ((void *)0))) at fs/reiserfs/ibalance.c:%i:%s: src (%p) or dest (%p) buffer is 0\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"(!(nr_src < cpy_num - 1)) at fs/reiserfs/ibalance.c:%i:%s: no so many items (%d) in src (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"(!(cpy_num < 0)) at fs/reiserfs/ibalance.c:%i:%s: cpy_num less than 0 (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [390 x i8], [122 x i8] } { [390 x i8] c"(!(cpy_num - 1 + (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((dest)->b_data)))->blk_nr_item))))) > (int)( (((int)( (dest)->b_size - (sizeof(struct block_head)) ))-(sizeof(struct disk_child)))/((sizeof(struct reiserfs_key))+(sizeof(struct disk_child))) ))) at fs/reiserfs/ibalance.c:%i:%s: cpy_num (%d) + item number in dest (%d) can not be > MAX_NR_KEY(%d)\0A\00", [122 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 825, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 840, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 843, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 990, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 991, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 994, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1008, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1136, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 650, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 660, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 664, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 699, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 711, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 723, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 733, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 742, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 754, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 215, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 216, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 218, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 231, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 237, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 115, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 439, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 441, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 444, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 449, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 145, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 146, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 762, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 585, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 777, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 780, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 316, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 320, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 322, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [26 x i8] c"../fs/reiserfs/ibalance.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 323, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 282, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 298, i32 384, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 238, i32 288, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 381, i32 448, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 227, i32 288, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 215, i32 256, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 390, i32 512, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @balance_internal(ptr noundef %tb, i32 noundef %h, i32 noundef %child_pos, ptr nocapture noundef %insert_key, ptr nocapture noundef %insert_ptr) local_unnamed_addr #0 align 64 {
entry:
  %dest_bi.i838 = alloca %struct.buffer_info, align 4
  %src_bi.i839 = alloca %struct.buffer_info, align 4
  %dest_bi.i = alloca %struct.buffer_info, align 4
  %src_bi.i = alloca %struct.buffer_info, align 4
  %bi.i = alloca %struct.buffer_info, align 4
  %bi = alloca %struct.buffer_info, align 4
  %dest_bi = alloca %struct.buffer_info, align 4
  %src_bi = alloca %struct.buffer_info, align 4
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
  %sub = sub i32 %3, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi) #5
  %6 = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 1
  %7 = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 2
  %8 = getelementptr inbounds %struct.buffer_info, ptr %bi, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %h)
  %cmp = icmp slt i32 %h, 1
  %9 = call ptr @memset(ptr %bi, i32 255, i32 16)
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.1, i32 noundef 825, ptr noundef nonnull @__func__.balance_internal, i32 noundef %h) #8
  unreachable

do.end:                                           ; preds = %entry
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %10 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %13, i32 0, i32 27, i32 15, i32 %h
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb_path, align 8
  %path_elements3 = getelementptr inbounds %struct.treepath, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add.neg = xor i32 %h, -1
  %sub7 = add i32 %19, %add.neg
  %pe_position = getelementptr %struct.path_element, ptr %path_elements3, i32 %sub7, i32 1
  %20 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pe_position, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %21, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %arrayidx9 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %h
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9, align 4
  %div = sdiv i32 %23, 24
  %24 = add i32 %23, -72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -143, i32 %24)
  %25 = icmp ult i32 %24, -143
  br i1 %25, label %if.then13, label %do.body17

if.then13:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.2, i32 noundef 842, ptr noundef nonnull @__func__.balance_internal, i32 noundef %div) #8
  unreachable

do.body17:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %h)
  %cmp18 = icmp ugt i32 %h, 1
  %26 = add nsw i32 %23, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %26)
  %27 = icmp ult i32 %26, -95
  %or.cond = select i1 %cmp18, i1 %27, i1 false
  br i1 %or.cond, label %if.then22, label %do.end25

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.3, i32 noundef 845, ptr noundef nonnull @__func__.balance_internal, i32 noundef %div, i32 noundef %h) #8
  unreachable

do.end25:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -23, i32 %23)
  %cmp26 = icmp slt i32 %23, -23
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.end25
  %28 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tb_path, align 8
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %sub.i = sub i32 %31, %h
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bi.i) #5
  %34 = getelementptr inbounds %struct.buffer_info, ptr %bi.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.buffer_info, ptr %bi.i, i32 0, i32 2
  %36 = getelementptr inbounds %struct.buffer_info, ptr %bi.i, i32 0, i32 3
  %37 = trunc i32 %23 to i8
  %div.neg.i864.lhs.trunc = sub nsw i8 0, %37
  %div.neg.i864865 = udiv i8 %div.neg.i864.lhs.trunc, 24
  %div.neg.i864.zext = zext i8 %div.neg.i864865 to i32
  %38 = ptrtoint ptr %bi.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tb, ptr %bi.i, align 4
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %34, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %29, align 4
  %add.i = add nuw i32 %h, 1
  %sub8.i = sub i32 %41, %add.i
  %add.ptr9.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub8.i
  %42 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr9.i, align 4
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %35, align 4
  %45 = load i32, ptr %29, align 4
  %sub17.i = sub i32 %45, %add.i
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %sub17.i, i32 1
  %46 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pe_position.i, align 4
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %child_pos)
  %cmp.i.i = icmp eq i32 %child_pos, 0
  %sub.i.i = add i32 %child_pos, -1
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %sub.i.i
  call fastcc void @internal_delete_pointers_items(ptr noundef nonnull %bi.i, i32 noundef %child_pos, i32 noundef %cond.i.i, i32 noundef %div.neg.i864.zext) #5
  %arrayidx20.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i = icmp sgt i32 %50, 1
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.10, i32 noundef 651, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %50) #8
  unreachable

do.end.i:                                         ; preds = %if.then27
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %51 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %blk_nr_item.i, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54) #5
  %conv.i = zext i16 %55 to i32
  %arrayidx23.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %56 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp24.i = icmp eq i32 %57, 0
  br i1 %cmp24.i, label %land.lhs.true.i, label %do.end.i.if.end97.i_crit_edge

do.end.i.if.end97.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %arrayidx26.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %58 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp27.i = icmp eq i32 %59, 0
  br i1 %cmp27.i, label %if.then29.i, label %land.lhs.true.i.if.end97.i_crit_edge

land.lhs.true.i.if.end97.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp32.i = icmp eq i32 %50, 0
  br i1 %cmp32.i, label %if.then34.i, label %if.then29.i.balance_internal_when_delete.exit_crit_edge

if.then29.i.balance_internal_when_delete.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %balance_internal_when_delete.exit

if.then34.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then34.i.if.then42.i_crit_edge

if.then34.i.if.then42.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

lor.lhs.false.i:                                  ; preds = %if.then34.i
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %52, i32 0, i32 2
  %60 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %blk_free_space.i, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61) #5
  %conv37.i = zext i16 %62 to i32
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 4
  %63 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %b_size.i, align 8
  %sub39.i = add i32 %64, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39.i, i32 %conv37.i)
  %cmp40.not.i = icmp eq i32 %sub39.i, %conv37.i
  br i1 %cmp40.not.i, label %do.body46.i, label %lor.lhs.false.i.if.then42.i_crit_edge

lor.lhs.false.i.if.then42.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false.i.if.then42.i_crit_edge, %if.then34.i.if.then42.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.11, i32 noundef 663, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %conv.i) #8
  unreachable

do.body46.i:                                      ; preds = %lor.lhs.false.i
  %65 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %35, align 4
  %tobool48.not.i = icmp eq ptr %66, null
  br i1 %tobool48.not.i, label %do.end53.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.12, i32 noundef 665, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull %66) #8
  unreachable

do.end53.i:                                       ; preds = %do.body46.i
  %sub54.i = add nsw i32 %h, -1
  %arrayidx55.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %sub54.i
  %67 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx55.i, align 4
  %tobool56.not.i = icmp eq ptr %68, null
  br i1 %tobool56.not.i, label %do.end53.i.if.then64.i_crit_edge, label %lor.lhs.false57.i

do.end53.i.if.then64.i_crit_edge:                 ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64.i

lor.lhs.false57.i:                                ; preds = %do.end53.i
  %b_data61.i = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %b_data61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data61.i, align 4
  %blk_nr_item62.i = getelementptr inbounds %struct.block_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %blk_nr_item62.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %blk_nr_item62.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool63.not.i = icmp eq i16 %72, 0
  br i1 %tobool63.not.i, label %lor.lhs.false57.i.if.then64.i_crit_edge, label %lor.lhs.false57.i.do.body71.i_crit_edge

lor.lhs.false57.i.do.body71.i_crit_edge:          ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body71.i

lor.lhs.false57.i.if.then64.i_crit_edge:          ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64.i

if.then64.i:                                      ; preds = %lor.lhs.false57.i.if.then64.i_crit_edge, %do.end53.i.if.then64.i_crit_edge
  %arrayidx66.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %sub54.i
  %73 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx66.i, align 4
  br label %do.body71.i

do.body71.i:                                      ; preds = %if.then64.i, %lor.lhs.false57.i.do.body71.i_crit_edge
  %new_root.0.i = phi ptr [ %74, %if.then64.i ], [ %68, %lor.lhs.false57.i.do.body71.i_crit_edge ]
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %new_root.0.i, i32 0, i32 3
  %75 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %b_blocknr.i, align 8
  %conv72.i = trunc i64 %76 to i32
  %77 = call i32 @llvm.bswap.i32(i32 %conv72.i) #5
  %78 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_rs.i, align 4
  %s_root_block.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %s_root_block.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %77, ptr %s_root_block.i, align 1
  %85 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i376.i = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 33
  %86 = ptrtoint ptr %s_fs_info.i376.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i376.i, align 16
  %s_rs78.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %s_rs78.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_rs78.i, align 4
  %s_tree_height.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %s_tree_height.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %s_tree_height.i, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #5
  %sub81.i = add i16 %92, -1
  %93 = call i16 @llvm.bswap.i16(i16 %sub81.i) #5
  %94 = ptrtoint ptr %s_tree_height.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %s_tree_height.i, align 1
  %95 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i378.i = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 33
  %97 = ptrtoint ptr %s_fs_info.i378.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_fs_info.i378.i, align 16
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %100, i32 noundef 1) #5
  br i1 %cmp18, label %if.then94.i, label %do.body71.i.if.end95.i_crit_edge

do.body71.i.if.end95.i_crit_edge:                 ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.then94.i:                                      ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @check_internal(ptr noundef %new_root.0.i) #5
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %do.body71.i.if.end95.i_crit_edge
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %33) #5
  br label %balance_internal_when_delete.exit

if.end97.i:                                       ; preds = %land.lhs.true.i.if.end97.i_crit_edge, %do.end.i.if.end97.i_crit_edge
  %arrayidx99.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h
  %101 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx99.i, align 4
  %tobool100.not.i = icmp eq ptr %102, null
  br i1 %tobool100.not.i, label %if.end97.i.if.end126.i_crit_edge, label %land.lhs.true101.i

if.end97.i.if.end126.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126.i

land.lhs.true101.i:                               ; preds = %if.end97.i
  %b_data106.i = getelementptr inbounds %struct.buffer_head, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %b_data106.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_data106.i, align 4
  %blk_nr_item107.i = getelementptr inbounds %struct.block_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %blk_nr_item107.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %blk_nr_item107.i, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %106) #5
  %conv108.i = zext i16 %107 to i32
  %sub110.i = xor i32 %conv108.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %sub110.i)
  %cmp111.i = icmp eq i32 %57, %sub110.i
  br i1 %cmp111.i, label %do.body114.i, label %land.lhs.true101.i.if.end126.i_crit_edge

land.lhs.true101.i.if.end126.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126.i

do.body114.i:                                     ; preds = %land.lhs.true101.i
  %arrayidx116.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %108 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp117.not.i = icmp eq i32 %109, 0
  br i1 %cmp117.not.i, label %do.end124.i, label %if.then119.i

if.then119.i:                                     ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.13, i32 noundef 701, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %109) #8
  unreachable

do.end124.i:                                      ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #7
  %add125.i = add nuw nsw i32 %conv.i, 1
  call fastcc void @internal_shift_left(i32 noundef 0, ptr noundef %tb, i32 noundef %h, i32 noundef %add125.i) #5
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %33) #5
  br label %balance_internal_when_delete.exit

if.end126.i:                                      ; preds = %land.lhs.true101.i.if.end126.i_crit_edge, %if.end97.i.if.end126.i_crit_edge
  %arrayidx128.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %110 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx128.i, align 4
  %tobool129.not.i = icmp eq ptr %111, null
  br i1 %tobool129.not.i, label %if.end126.i.if.end155.i_crit_edge, label %land.lhs.true130.i

if.end126.i.if.end155.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155.i

land.lhs.true130.i:                               ; preds = %if.end126.i
  %arrayidx132.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %112 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx132.i, align 4
  %b_data135.i = getelementptr inbounds %struct.buffer_head, ptr %111, i32 0, i32 5
  %114 = ptrtoint ptr %b_data135.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %b_data135.i, align 4
  %blk_nr_item136.i = getelementptr inbounds %struct.block_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %blk_nr_item136.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %blk_nr_item136.i, align 2
  %118 = call i16 @llvm.bswap.i16(i16 %117) #5
  %conv137.i = zext i16 %118 to i32
  %sub139.i = xor i32 %conv137.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %sub139.i)
  %cmp140.i = icmp eq i32 %113, %sub139.i
  br i1 %cmp140.i, label %do.body143.i, label %land.lhs.true130.i.if.end155.i_crit_edge

land.lhs.true130.i.if.end155.i_crit_edge:         ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155.i

do.body143.i:                                     ; preds = %land.lhs.true130.i
  br i1 %cmp24.i, label %do.end153.i, label %if.then148.i

if.then148.i:                                     ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.14, i32 noundef 713, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %57) #8
  unreachable

do.end153.i:                                      ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #7
  %add154.i = add nuw nsw i32 %conv.i, 1
  call fastcc void @internal_shift_right(i32 noundef 3, ptr noundef %tb, i32 noundef %h, i32 noundef %add154.i) #5
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %33) #5
  br label %balance_internal_when_delete.exit

if.end155.i:                                      ; preds = %land.lhs.true130.i.if.end155.i_crit_edge, %if.end126.i.if.end155.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp158.i = icmp slt i32 %57, 0
  %arrayidx163.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %119 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx163.i, align 4
  br i1 %cmp158.i, label %do.body161.i, label %if.end175.i

do.body161.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp164.not.i = icmp eq i32 %120, 0
  br i1 %cmp164.not.i, label %do.end171.i, label %if.then166.i

if.then166.i:                                     ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.15, i32 noundef 725, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %120) #8
  unreachable

do.end171.i:                                      ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub174.i = sub i32 0, %57
  call fastcc void @internal_shift_right(i32 noundef 2, ptr noundef %tb, i32 noundef %h, i32 noundef %sub174.i) #5
  br label %balance_internal_when_delete.exit

if.end175.i:                                      ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp178.i = icmp slt i32 %120, 0
  br i1 %cmp178.i, label %do.body181.i, label %if.end195.i

do.body181.i:                                     ; preds = %if.end175.i
  br i1 %cmp24.i, label %do.end191.i, label %if.then186.i

if.then186.i:                                     ; preds = %do.body181.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.16, i32 noundef 735, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %57) #8
  unreachable

do.end191.i:                                      ; preds = %do.body181.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub194.i = sub i32 0, %120
  call fastcc void @internal_shift_left(i32 noundef 1, ptr noundef %tb, i32 noundef %h, i32 noundef %sub194.i) #5
  br label %balance_internal_when_delete.exit

if.end195.i:                                      ; preds = %if.end175.i
  br i1 %cmp24.i, label %if.end227.i, label %do.body201.i

do.body201.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp204.i = icmp eq i32 %120, 0
  br i1 %cmp204.i, label %do.body201.i.if.then215.i_crit_edge, label %lor.lhs.false206.i

do.body201.i.if.then215.i_crit_edge:              ; preds = %do.body201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215.i

lor.lhs.false206.i:                               ; preds = %do.body201.i
  %add211.i = add nuw i32 %120, %57
  %add212.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add211.i, i32 %add212.i)
  %cmp213.not.i = icmp eq i32 %add211.i, %add212.i
  br i1 %cmp213.not.i, label %do.end222.i, label %lor.lhs.false206.i.if.then215.i_crit_edge

lor.lhs.false206.i.if.then215.i_crit_edge:        ; preds = %lor.lhs.false206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215.i

if.then215.i:                                     ; preds = %lor.lhs.false206.i.if.then215.i_crit_edge, %do.body201.i.if.then215.i_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.17, i32 noundef 744, ptr noundef nonnull @__func__.balance_internal_when_delete, i32 noundef %h, i32 noundef %57, i32 noundef %h, i32 noundef %120, i32 noundef %conv.i) #8
  unreachable

do.end222.i:                                      ; preds = %lor.lhs.false206.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @internal_shift_left(i32 noundef 0, ptr noundef %tb, i32 noundef %h, i32 noundef %57) #5
  %121 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx163.i, align 4
  call fastcc void @internal_shift_right(i32 noundef 3, ptr noundef %tb, i32 noundef %h, i32 noundef %122) #5
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef %33) #5
  br label %balance_internal_when_delete.exit

if.end227.i:                                      ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %124, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.balance_internal_when_delete, ptr noundef nonnull @.str.19, i32 noundef %h, i32 noundef 0, i32 noundef %h, i32 noundef %120) #8
  unreachable

balance_internal_when_delete.exit:                ; preds = %do.end222.i, %do.end191.i, %do.end171.i, %do.end153.i, %do.end124.i, %if.end95.i, %if.then29.i.balance_internal_when_delete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi.i) #5
  br label %cleanup

if.end28:                                         ; preds = %do.end25
  %arrayidx29 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %h
  %125 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp30 = icmp sgt i32 %126, 0
  br i1 %cmp30, label %if.then31, label %if.end28.if.end105_crit_edge

if.end28.if.end105_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then31:                                        ; preds = %if.end28
  %arrayidx32 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h
  %127 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx32, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %blk_nr_item, align 2
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  %conv = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %child_pos)
  %cmp35.not = icmp sgt i32 %126, %child_pos
  br i1 %cmp35.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @internal_shift_left(i32 noundef 0, ptr noundef %tb, i32 noundef %h, i32 noundef %126)
  %134 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx29, align 4
  %sub42 = sub i32 %child_pos, %135
  br label %if.end105

if.else:                                          ; preds = %if.then31
  %add45 = add i32 %div, %child_pos
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %add45)
  %cmp46 = icmp sgt i32 %126, %add45
  br i1 %cmp46, label %if.then48, label %if.else59

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub51 = sub i32 %126, %div
  tail call fastcc void @internal_shift_left(i32 noundef 0, ptr noundef %tb, i32 noundef %h, i32 noundef %sub51)
  %136 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %tb, ptr %bi, align 4
  %137 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx32, align 4
  %139 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %6, align 4
  %arrayidx55 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %140 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx55, align 4
  %142 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %7, align 4
  %call56 = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %143 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call56, ptr %8, align 4
  %add57 = add nsw i32 %child_pos, 1
  %add58 = add i32 %add57, %conv
  call fastcc void @internal_insert_childs(ptr noundef nonnull %bi, i32 noundef %add58, i32 noundef %div, ptr noundef %insert_key, ptr noundef %insert_ptr)
  br label %if.end105

if.else59:                                        ; preds = %if.else
  %add60 = add nsw i32 %child_pos, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi.i) #5
  %144 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i, i32 0, i32 1
  %145 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i, i32 0, i32 2
  %146 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi.i) #5
  %147 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i, i32 0, i32 1
  %148 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i, i32 0, i32 2
  %149 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i, i32 0, i32 3
  %150 = ptrtoint ptr %src_bi.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %tb, ptr %src_bi.i, align 4
  %151 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tb_path, align 8
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %sub.i.i820 = sub i32 %154, %h
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %sub.i.i820
  %155 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i.i, align 4
  %157 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %147, align 4
  %158 = load i32, ptr %152, align 4
  %add.i.i = add nuw i32 %h, 1
  %sub8.i.i = sub i32 %158, %add.i.i
  %add.ptr9.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %sub8.i.i
  %159 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr9.i.i, align 4
  %161 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %148, align 4
  %162 = load i32, ptr %152, align 4
  %sub17.i.i = sub i32 %162, %add.i.i
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %sub17.i.i, i32 1
  %163 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pe_position.i.i, align 4
  %165 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %149, align 4
  %166 = ptrtoint ptr %dest_bi.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %tb, ptr %dest_bi.i, align 4
  %167 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %128, ptr %144, align 4
  %arrayidx21.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %168 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx21.i.i, align 4
  %170 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %145, align 4
  %call.i.i = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %171 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call.i.i, ptr %146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %child_pos)
  %cmp.i821 = icmp sgt i32 %child_pos, -1
  br i1 %cmp.i821, label %if.then.i825, label %if.else59.internal_shift1_left.exit_crit_edge

if.else59.internal_shift1_left.exit_crit_edge:    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_shift1_left.exit

if.then.i825:                                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %172 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx25.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %174 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx24.i.i, align 4
  %176 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %b_data, align 4
  %blk_nr_item.i823 = getelementptr inbounds %struct.block_head, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %blk_nr_item.i823 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %blk_nr_item.i823, align 2
  %180 = tail call i16 @llvm.bswap.i16(i16 %179) #5
  %conv.i824 = zext i16 %180 to i32
  call fastcc void @internal_insert_key(ptr noundef nonnull %dest_bi.i, i32 noundef %conv.i824, ptr noundef %173, i32 noundef %175) #5
  br label %internal_shift1_left.exit

internal_shift1_left.exit:                        ; preds = %if.then.i825, %if.else59.internal_shift1_left.exit_crit_edge
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi.i, ptr noundef nonnull %src_bi.i, i32 noundef 0, i32 noundef %add60, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi.i) #5
  %181 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx29, align 4
  %sub63 = sub i32 %182, %child_pos
  %sub64 = add i32 %sub63, -1
  %183 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %tb, ptr %bi, align 4
  %184 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx32, align 4
  %186 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %6, align 4
  %187 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx21.i.i, align 4
  %189 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %188, ptr %7, align 4
  %call72 = call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %190 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call72, ptr %8, align 4
  %add75 = add i32 %add60, %conv
  call fastcc void @internal_insert_childs(ptr noundef nonnull %bi, i32 noundef %add75, i32 noundef %sub64, ptr noundef %insert_key, ptr noundef %insert_ptr)
  %add.ptr76 = getelementptr %struct.item_head, ptr %insert_key, i32 %sub64
  %191 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx32, align 4
  %cmp.i827 = icmp eq ptr %192, null
  br i1 %cmp.i827, label %internal_shift1_left.exit.if.then.i829_crit_edge, label %lor.lhs.false.i828

internal_shift1_left.exit.if.then.i829_crit_edge: ; preds = %internal_shift1_left.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i829

lor.lhs.false.i828:                               ; preds = %internal_shift1_left.exit
  %arrayidx1.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %193 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx1.i, align 4
  %cmp2.i = icmp eq ptr %194, null
  br i1 %cmp2.i, label %lor.lhs.false.i828.if.then.i829_crit_edge, label %do.end.i836

lor.lhs.false.i828.if.then.i829_crit_edge:        ; preds = %lor.lhs.false.i828
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i829

if.then.i829:                                     ; preds = %lor.lhs.false.i828.if.then.i829_crit_edge, %internal_shift1_left.exit.if.then.i829_crit_edge
  %arrayidx6.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %195 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx6.i, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_lkey, ptr noundef nonnull @.str.33, i32 noundef 764, ptr noundef nonnull @__func__.replace_lkey, ptr noundef %192, ptr noundef %196) #8
  unreachable

do.end.i836:                                      ; preds = %lor.lhs.false.i828
  %197 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tb_path, align 8
  %path_elements.i831 = getelementptr inbounds %struct.treepath, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %198, align 4
  %sub.i832 = sub i32 %200, %h
  %add.ptr.i833 = getelementptr %struct.path_element, ptr %path_elements.i831, i32 %sub.i832
  %201 = ptrtoint ptr %add.ptr.i833 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr.i833, align 4
  %b_data.i834 = getelementptr inbounds %struct.buffer_head, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %b_data.i834 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %b_data.i834, align 4
  %blk_nr_item.i835 = getelementptr inbounds %struct.block_head, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %blk_nr_item.i835 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %blk_nr_item.i835, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp8.i = icmp eq i16 %206, 0
  br i1 %cmp8.i, label %do.end.i836.replace_lkey.exit_crit_edge, label %if.end11.i

do.end.i836.replace_lkey.exit_crit_edge:          ; preds = %do.end.i836
  call void @__sanitizer_cov_trace_pc() #7
  br label %replace_lkey.exit

if.end11.i:                                       ; preds = %do.end.i836
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %207 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx14.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %194, i32 0, i32 5
  %209 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %210, i32 24
  %arrayidx.i.i837 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i.i, i32 %208
  %211 = call ptr @memcpy(ptr %arrayidx.i.i837, ptr %add.ptr76, i32 16)
  %212 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx1.i, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %213, i32 noundef 0) #5
  br label %replace_lkey.exit

replace_lkey.exit:                                ; preds = %if.end11.i, %do.end.i836.replace_lkey.exit_crit_edge
  %b_data77 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %214 = ptrtoint ptr %b_data77 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %b_data77, align 4
  %add.ptr78 = getelementptr i8, ptr %215, i32 24
  %blk_nr_item80 = getelementptr inbounds %struct.block_head, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %blk_nr_item80 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %blk_nr_item80, align 2
  %218 = call i16 @llvm.bswap.i16(i16 %217)
  %conv81 = zext i16 %218 to i32
  %mul = shl nuw nsw i32 %conv81, 4
  %add.ptr82 = getelementptr i8, ptr %add.ptr78, i32 %mul
  %arrayidx85 = getelementptr ptr, ptr %insert_ptr, i32 %sub64
  %219 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx85, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %b_size, align 8
  %b_data88 = getelementptr inbounds %struct.buffer_head, ptr %220, i32 0, i32 5
  %223 = ptrtoint ptr %b_data88 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %b_data88, align 4
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %blk_free_space, align 2
  %227 = call i16 @llvm.bswap.i16(i16 %226)
  %228 = trunc i32 %222 to i16
  %229 = add i16 %228, -24
  %conv91 = sub i16 %229, %227
  %230 = call i16 @llvm.bswap.i16(i16 %conv91)
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr82, i32 0, i32 1
  %231 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %230, ptr %dc_size, align 4
  %232 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx85, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %233, i32 0, i32 3
  %234 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %b_blocknr, align 8
  %conv96 = trunc i64 %235 to i32
  %236 = call i32 @llvm.bswap.i32(i32 %conv96)
  %237 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %add.ptr82, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %5, i32 noundef 0) #5
  %add.ptr100 = getelementptr %struct.item_head, ptr %insert_key, i32 %sub63
  %add.ptr101 = getelementptr ptr, ptr %insert_ptr, i32 %sub63
  %sub102 = sub i32 %div, %sub63
  br label %if.end105

if.end105:                                        ; preds = %replace_lkey.exit, %if.then48, %if.then37, %if.end28.if.end105_crit_edge
  %insert_num.0 = phi i32 [ %div, %if.then37 ], [ 0, %if.then48 ], [ %sub102, %replace_lkey.exit ], [ %div, %if.end28.if.end105_crit_edge ]
  %insert_ptr.addr.0 = phi ptr [ %insert_ptr, %if.then37 ], [ %insert_ptr, %if.then48 ], [ %add.ptr101, %replace_lkey.exit ], [ %insert_ptr, %if.end28.if.end105_crit_edge ]
  %insert_key.addr.0 = phi ptr [ %insert_key, %if.then37 ], [ %insert_key, %if.then48 ], [ %add.ptr100, %replace_lkey.exit ], [ %insert_key, %if.end28.if.end105_crit_edge ]
  %child_pos.addr.0 = phi i32 [ %sub42, %if.then37 ], [ %child_pos, %if.then48 ], [ 0, %replace_lkey.exit ], [ %child_pos, %if.end28.if.end105_crit_edge ]
  %arrayidx106 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %h
  %238 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp107 = icmp sgt i32 %239, 0
  br i1 %cmp107, label %if.then109, label %if.end105.do.body213_crit_edge

if.end105.do.body213_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

if.then109:                                       ; preds = %if.end105
  %b_data110 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %240 = ptrtoint ptr %b_data110 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %b_data110, align 4
  %blk_nr_item111 = getelementptr inbounds %struct.block_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %blk_nr_item111 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %blk_nr_item111, align 2
  %244 = call i16 @llvm.bswap.i16(i16 %243)
  %conv112 = zext i16 %244 to i32
  %sub115 = sub nsw i32 %conv112, %239
  call void @__sanitizer_cov_trace_cmp4(i32 %sub115, i32 %child_pos.addr.0)
  %cmp116.not = icmp slt i32 %sub115, %child_pos.addr.0
  br i1 %cmp116.not, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @internal_shift_right(i32 noundef 3, ptr noundef %tb, i32 noundef %h, i32 noundef %239)
  br label %do.body213

if.else121:                                       ; preds = %if.then109
  %add122 = add i32 %insert_num.0, %conv112
  %sub125 = sub i32 %add122, %239
  call void @__sanitizer_cov_trace_cmp4(i32 %sub125, i32 %child_pos.addr.0)
  %cmp126 = icmp slt i32 %sub125, %child_pos.addr.0
  br i1 %cmp126, label %if.then128, label %if.else145

if.then128:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #7
  %sub131 = sub i32 %239, %insert_num.0
  call fastcc void @internal_shift_right(i32 noundef 3, ptr noundef %tb, i32 noundef %h, i32 noundef %sub131)
  %245 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %tb, ptr %bi, align 4
  %arrayidx133 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %246 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx133, align 4
  %248 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %247, ptr %6, align 4
  %arrayidx135 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %249 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx135, align 4
  %251 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %250, ptr %7, align 4
  %call137 = call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %252 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %call137, ptr %8, align 4
  %253 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx106, align 4
  %255 = xor i32 %add122, -1
  %add143 = add i32 %child_pos.addr.0, %255
  %sub144 = add i32 %add143, %254
  call fastcc void @internal_insert_childs(ptr noundef nonnull %bi, i32 noundef %sub144, i32 noundef %insert_num.0, ptr noundef %insert_key.addr.0, ptr noundef %insert_ptr.addr.0)
  br label %do.body213

if.else145:                                       ; preds = %if.else121
  %sub147 = sub i32 %conv112, %child_pos.addr.0
  %add148 = add i32 %sub147, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi.i838) #5
  %256 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i838, i32 0, i32 1
  %257 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i838, i32 0, i32 2
  %258 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi.i838, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi.i839) #5
  %259 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i839, i32 0, i32 1
  %260 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i839, i32 0, i32 2
  %261 = getelementptr inbounds %struct.buffer_info, ptr %src_bi.i839, i32 0, i32 3
  %262 = ptrtoint ptr %src_bi.i839 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %tb, ptr %src_bi.i839, align 4
  %263 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %tb_path, align 8
  %path_elements113.i.i = getelementptr inbounds %struct.treepath, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %264, align 4
  %sub117.i.i = sub i32 %266, %h
  %add.ptr118.i.i = getelementptr %struct.path_element, ptr %path_elements113.i.i, i32 %sub117.i.i
  %267 = ptrtoint ptr %add.ptr118.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %add.ptr118.i.i, align 4
  %269 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %268, ptr %259, align 4
  %270 = load i32, ptr %264, align 4
  %add126.i.i = add nuw i32 %h, 1
  %sub127.i.i = sub i32 %270, %add126.i.i
  %add.ptr128.i.i = getelementptr %struct.path_element, ptr %path_elements113.i.i, i32 %sub127.i.i
  %271 = ptrtoint ptr %add.ptr128.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %add.ptr128.i.i, align 4
  %273 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %272, ptr %260, align 4
  %274 = load i32, ptr %264, align 4
  %sub137.i.i = sub i32 %274, %add126.i.i
  %pe_position139.i.i = getelementptr %struct.path_element, ptr %path_elements113.i.i, i32 %sub137.i.i, i32 1
  %275 = ptrtoint ptr %pe_position139.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pe_position139.i.i, align 4
  %277 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %261, align 4
  %278 = ptrtoint ptr %dest_bi.i838 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %tb, ptr %dest_bi.i838, align 4
  %arrayidx143.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %279 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx143.i.i, align 4
  %281 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %280, ptr %256, align 4
  %arrayidx146.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %282 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx146.i.i, align 4
  %284 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %283, ptr %257, align 4
  %call148.i.i = call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %285 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %call148.i.i, ptr %258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub147)
  %cmp.i840 = icmp ult i32 %sub147, 2147483647
  br i1 %cmp.i840, label %if.then.i841, label %if.else145.internal_shift1_right.exit_crit_edge

if.else145.internal_shift1_right.exit_crit_edge:  ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_shift1_right.exit

if.then.i841:                                     ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx153.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  %286 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx153.i.i, align 4
  %arrayidx151.i.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %288 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx151.i.i, align 4
  call fastcc void @internal_insert_key(ptr noundef nonnull %dest_bi.i838, i32 noundef 0, ptr noundef %287, i32 noundef %289) #5
  br label %internal_shift1_right.exit

internal_shift1_right.exit:                       ; preds = %if.then.i841, %if.else145.internal_shift1_right.exit_crit_edge
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi.i838, ptr noundef nonnull %src_bi.i839, i32 noundef 1, i32 noundef %add148, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi.i839) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi.i838) #5
  %290 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx106, align 4
  %sub151 = sub i32 %291, %conv112
  %add152 = add i32 %sub151, %child_pos.addr.0
  %sub153 = add i32 %add152, -1
  %292 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %tb, ptr %bi, align 4
  %293 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx143.i.i, align 4
  %295 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %294, ptr %6, align 4
  %296 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx146.i.i, align 4
  %298 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %7, align 4
  %call161 = call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %299 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call161, ptr %8, align 4
  %add.ptr163 = getelementptr %struct.item_head, ptr %insert_key.addr.0, i32 1
  %add.ptr164 = getelementptr ptr, ptr %insert_ptr.addr.0, i32 1
  call fastcc void @internal_insert_childs(ptr noundef nonnull %bi, i32 noundef 0, i32 noundef %sub153, ptr noundef %add.ptr163, ptr noundef %add.ptr164)
  %add.ptr165 = getelementptr %struct.item_head, ptr %insert_key.addr.0, i32 %insert_num.0
  %idx.neg = sub i32 1, %add152
  %add.ptr166 = getelementptr %struct.item_head, ptr %add.ptr165, i32 %idx.neg
  %add.ptr167 = getelementptr %struct.item_head, ptr %add.ptr166, i32 -1
  %300 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx143.i.i, align 4
  %cmp.i843 = icmp eq ptr %301, null
  br i1 %cmp.i843, label %internal_shift1_right.exit.if.then.i848_crit_edge, label %lor.lhs.false.i846

internal_shift1_right.exit.if.then.i848_crit_edge: ; preds = %internal_shift1_right.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i848

lor.lhs.false.i846:                               ; preds = %internal_shift1_right.exit
  %arrayidx1.i844 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  %302 = ptrtoint ptr %arrayidx1.i844 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx1.i844, align 4
  %cmp2.i845 = icmp eq ptr %303, null
  br i1 %cmp2.i845, label %lor.lhs.false.i846.if.then.i848_crit_edge, label %do.body7.i

lor.lhs.false.i846.if.then.i848_crit_edge:        ; preds = %lor.lhs.false.i846
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i848

if.then.i848:                                     ; preds = %lor.lhs.false.i846.if.then.i848_crit_edge, %internal_shift1_right.exit.if.then.i848_crit_edge
  %arrayidx6.i847 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  %304 = ptrtoint ptr %arrayidx6.i847 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx6.i847, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_rkey, ptr noundef nonnull @.str.35, i32 noundef 779, ptr noundef nonnull @__func__.replace_rkey, ptr noundef %301, ptr noundef %305) #8
  unreachable

do.body7.i:                                       ; preds = %lor.lhs.false.i846
  %b_data.i849 = getelementptr inbounds %struct.buffer_head, ptr %301, i32 0, i32 5
  %306 = ptrtoint ptr %b_data.i849 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %b_data.i849, align 4
  %blk_nr_item.i850 = getelementptr inbounds %struct.block_head, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %blk_nr_item.i850 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %blk_nr_item.i850, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %cmp10.i = icmp eq i16 %309, 0
  br i1 %cmp10.i, label %if.then12.i, label %replace_rkey.exit

if.then12.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.replace_rkey, ptr noundef nonnull @.str.36, i32 noundef 782, ptr noundef nonnull @__func__.replace_rkey, i32 noundef 0) #8
  unreachable

replace_rkey.exit:                                ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx22.i = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %310 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx22.i, align 4
  %b_data.i.i.i851 = getelementptr inbounds %struct.buffer_head, ptr %303, i32 0, i32 5
  %312 = ptrtoint ptr %b_data.i.i.i851 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %b_data.i.i.i851, align 4
  %add.ptr.i.i.i852 = getelementptr i8, ptr %313, i32 24
  %arrayidx.i.i853 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i.i852, i32 %311
  %314 = call ptr @memcpy(ptr %arrayidx.i.i853, ptr %add.ptr167, i32 16)
  %315 = ptrtoint ptr %arrayidx1.i844 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx1.i844, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %316, i32 noundef 0) #5
  %317 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx143.i.i, align 4
  %b_data170 = getelementptr inbounds %struct.buffer_head, ptr %318, i32 0, i32 5
  %319 = ptrtoint ptr %b_data170 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %b_data170, align 4
  %add.ptr171 = getelementptr i8, ptr %320, i32 24
  %blk_nr_item175 = getelementptr inbounds %struct.block_head, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %blk_nr_item175 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %blk_nr_item175, align 2
  %323 = call i16 @llvm.bswap.i16(i16 %322)
  %conv176 = zext i16 %323 to i32
  %mul177 = shl nuw nsw i32 %conv176, 4
  %add.ptr178 = getelementptr i8, ptr %add.ptr171, i32 %mul177
  %sub182 = sub i32 %insert_num.0, %add152
  %arrayidx183 = getelementptr ptr, ptr %insert_ptr.addr.0, i32 %sub182
  %324 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx183, align 4
  %b_size184 = getelementptr inbounds %struct.buffer_head, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %b_size184 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %b_size184, align 8
  %b_data189 = getelementptr inbounds %struct.buffer_head, ptr %325, i32 0, i32 5
  %328 = ptrtoint ptr %b_data189 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %b_data189, align 4
  %blk_free_space190 = getelementptr inbounds %struct.block_head, ptr %329, i32 0, i32 2
  %330 = ptrtoint ptr %blk_free_space190 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %blk_free_space190, align 2
  %332 = call i16 @llvm.bswap.i16(i16 %331)
  %333 = trunc i32 %327 to i16
  %334 = add i16 %333, -24
  %conv193 = sub i16 %334, %332
  %335 = call i16 @llvm.bswap.i16(i16 %conv193)
  %dc_size194 = getelementptr inbounds %struct.disk_child, ptr %add.ptr178, i32 0, i32 1
  %336 = ptrtoint ptr %dc_size194 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %335, ptr %dc_size194, align 4
  %337 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %arrayidx183, align 4
  %b_blocknr201 = getelementptr inbounds %struct.buffer_head, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %b_blocknr201 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %b_blocknr201, align 8
  %conv202 = trunc i64 %340 to i32
  %341 = call i32 @llvm.bswap.i32(i32 %conv202)
  %342 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %add.ptr178, align 4
  %343 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx143.i.i, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %344, i32 noundef 0) #5
  br label %do.body213

do.body213:                                       ; preds = %replace_rkey.exit, %if.then128, %if.then118, %if.end105.do.body213_crit_edge
  %insert_num.1 = phi i32 [ %insert_num.0, %if.then118 ], [ 0, %if.then128 ], [ %sub182, %replace_rkey.exit ], [ %insert_num.0, %if.end105.do.body213_crit_edge ]
  %arrayidx214 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %h
  %345 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %346)
  %cmp215 = icmp sgt i32 %346, 2
  br i1 %cmp215, label %if.then217, label %do.body221

if.then217:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.4, i32 noundef 990, ptr noundef nonnull @__func__.balance_internal) #8
  unreachable

do.body221:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp224 = icmp slt i32 %346, 0
  br i1 %cmp224, label %if.then226, label %do.end229

if.then226:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.5, i32 noundef 991, ptr noundef nonnull @__func__.balance_internal) #8
  unreachable

do.end229:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool232.not = icmp eq i32 %346, 0
  br i1 %tobool232.not, label %do.body234, label %if.end240

do.body234:                                       ; preds = %do.end229
  br i1 %tobool.not, label %if.then236, label %do.end239

if.then236:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.6, i32 noundef 994, ptr noundef nonnull @__func__.balance_internal) #8
  unreachable

do.end239:                                        ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #7
  call void @reiserfs_invalidate_buffer(ptr noundef %tb, ptr noundef nonnull %5) #5
  br label %cleanup

if.end240:                                        ; preds = %do.end229
  br i1 %tobool.not, label %if.then242, label %if.end240.if.end325_crit_edge

if.end240.if.end325_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end325

if.then242:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %346)
  %cmp255.not = icmp eq i32 %346, 1
  br i1 %cmp255.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.8) #8
  unreachable

if.end258:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #7
  %347 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %tb_path, align 8
  %path_elements245 = getelementptr inbounds %struct.treepath, ptr %348, i32 0, i32 2
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %348, align 4
  %sub249.neg = sub nsw i32 1, %h
  %sub250 = add i32 %sub249.neg, %350
  %add.ptr251 = getelementptr %struct.path_element, ptr %path_elements245, i32 %sub250
  %351 = ptrtoint ptr %add.ptr251 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %add.ptr251, align 4
  %call259 = call ptr @get_FEB(ptr noundef %tb) #5
  %b_data260 = getelementptr inbounds %struct.buffer_head, ptr %call259, i32 0, i32 5
  %353 = ptrtoint ptr %b_data260 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %b_data260, align 4
  %355 = trunc i32 %h to i16
  %conv262 = add i16 %355, 1
  %356 = call i16 @llvm.bswap.i16(i16 %conv262)
  %357 = ptrtoint ptr %354 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %356, ptr %354, align 2
  %358 = ptrtoint ptr %b_data260 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %b_data260, align 4
  %add.ptr264 = getelementptr i8, ptr %359, i32 24
  %blk_nr_item266 = getelementptr inbounds %struct.block_head, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %blk_nr_item266 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %blk_nr_item266, align 2
  %362 = call i16 @llvm.bswap.i16(i16 %361)
  %conv267 = zext i16 %362 to i32
  %mul268 = shl nuw nsw i32 %conv267, 4
  %add.ptr269 = getelementptr i8, ptr %add.ptr264, i32 %mul268
  %b_blocknr272 = getelementptr inbounds %struct.buffer_head, ptr %352, i32 0, i32 3
  %363 = ptrtoint ptr %b_blocknr272 to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %b_blocknr272, align 8
  %conv273 = trunc i64 %364 to i32
  %365 = call i32 @llvm.bswap.i32(i32 %conv273)
  %366 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %add.ptr269, align 4
  %b_size278 = getelementptr inbounds %struct.buffer_head, ptr %352, i32 0, i32 4
  %367 = ptrtoint ptr %b_size278 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %b_size278, align 8
  %b_data280 = getelementptr inbounds %struct.buffer_head, ptr %352, i32 0, i32 5
  %369 = ptrtoint ptr %b_data280 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %b_data280, align 4
  %blk_free_space281 = getelementptr inbounds %struct.block_head, ptr %370, i32 0, i32 2
  %371 = ptrtoint ptr %blk_free_space281 to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %blk_free_space281, align 2
  %373 = call i16 @llvm.bswap.i16(i16 %372)
  %374 = trunc i32 %368 to i16
  %375 = add i16 %374, -24
  %conv284 = sub i16 %375, %373
  %376 = call i16 @llvm.bswap.i16(i16 %conv284)
  %dc_size285 = getelementptr inbounds %struct.disk_child, ptr %add.ptr269, i32 0, i32 1
  %377 = ptrtoint ptr %dc_size285 to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %376, ptr %dc_size285, align 4
  %378 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx9, align 4
  %sub290 = add i32 %379, -8
  store i32 %sub290, ptr %arrayidx9, align 4
  %blk_free_space291 = getelementptr inbounds %struct.block_head, ptr %354, i32 0, i32 2
  %380 = ptrtoint ptr %blk_free_space291 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %blk_free_space291, align 2
  %382 = call i16 @llvm.bswap.i16(i16 %381)
  %sub293 = add i16 %382, -8
  %383 = call i16 @llvm.bswap.i16(i16 %sub293)
  %384 = ptrtoint ptr %blk_free_space291 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %383, ptr %blk_free_space291, align 2
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %call259, i32 noundef 0) #5
  call void @check_internal(ptr noundef %call259) #5
  %385 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %tb_path, align 8
  %add.ptr299 = getelementptr %struct.treepath, ptr %386, i32 0, i32 2, i32 1
  %387 = ptrtoint ptr %add.ptr299 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call259, ptr %add.ptr299, align 4
  %b_blocknr302 = getelementptr inbounds %struct.buffer_head, ptr %call259, i32 0, i32 3
  %388 = ptrtoint ptr %b_blocknr302 to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %b_blocknr302, align 8
  %conv303 = trunc i64 %389 to i32
  %390 = call i32 @llvm.bswap.i32(i32 %conv303)
  %391 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i854 = getelementptr inbounds %struct.super_block, ptr %392, i32 0, i32 33
  %393 = ptrtoint ptr %s_fs_info.i854 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %s_fs_info.i854, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %s_rs, align 4
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %396, i32 0, i32 2
  %397 = ptrtoint ptr %s_root_block to i32
  call void @__asan_storeN_noabort(i32 %397, i32 4)
  store i32 %390, ptr %s_root_block, align 1
  %398 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i855 = getelementptr inbounds %struct.super_block, ptr %398, i32 0, i32 33
  %399 = ptrtoint ptr %s_fs_info.i855 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %s_fs_info.i855, align 16
  %s_rs311 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %400, i32 0, i32 1
  %401 = ptrtoint ptr %s_rs311 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %s_rs311, align 4
  %s_tree_height = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %402, i32 0, i32 11
  %403 = ptrtoint ptr %s_tree_height to i32
  call void @__asan_loadN_noabort(i32 %403, i32 2)
  %404 = load i16, ptr %s_tree_height, align 1
  %405 = call i16 @llvm.bswap.i16(i16 %404)
  %add314 = add i16 %405, 1
  %406 = call i16 @llvm.bswap.i16(i16 %add314)
  %407 = ptrtoint ptr %s_tree_height to i32
  call void @__asan_storeN_noabort(i32 %407, i32 2)
  store i16 %406, ptr %s_tree_height, align 1
  %408 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i857 = getelementptr inbounds %struct.super_block, ptr %409, i32 0, i32 33
  %410 = ptrtoint ptr %s_fs_info.i857 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %s_fs_info.i857, align 16
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %413, i32 noundef 1) #5
  br label %if.end325

if.end325:                                        ; preds = %if.end258, %if.end240.if.end325_crit_edge
  %tbSh.0 = phi ptr [ %5, %if.end240.if.end325_crit_edge ], [ %call259, %if.end258 ]
  %414 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %415)
  %cmp328 = icmp eq i32 %415, 2
  br i1 %cmp328, label %if.then330, label %if.end325.if.end452_crit_edge

if.end325.if.end452_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end452

if.then330:                                       ; preds = %if.end325
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi) #5
  %416 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %417 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %418 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi) #5
  %419 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %420 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %421 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %call331 = call ptr @get_FEB(ptr noundef %tb) #5
  %add332 = add nuw i32 %h, 1
  %conv333 = trunc i32 %add332 to i16
  %422 = call i16 @llvm.bswap.i16(i16 %conv333)
  %b_data334 = getelementptr inbounds %struct.buffer_head, ptr %call331, i32 0, i32 5
  %423 = ptrtoint ptr %b_data334 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %b_data334, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 %422, ptr %424, align 2
  %426 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %tb, ptr %dest_bi, align 4
  %427 = ptrtoint ptr %416 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call331, ptr %416, align 4
  %428 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr null, ptr %417, align 4
  %429 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 0, ptr %418, align 4
  %430 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %tb, ptr %src_bi, align 4
  %431 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %tbSh.0, ptr %419, align 4
  %432 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %tb_path, align 8
  %path_elements343 = getelementptr inbounds %struct.treepath, ptr %433, i32 0, i32 2
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %433, align 4
  %sub348 = sub i32 %435, %add332
  %add.ptr349 = getelementptr %struct.path_element, ptr %path_elements343, i32 %sub348
  %436 = ptrtoint ptr %add.ptr349 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %add.ptr349, align 4
  %438 = ptrtoint ptr %420 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %437, ptr %420, align 4
  %439 = load i32, ptr %433, align 4
  %sub358 = sub i32 %439, %add332
  %pe_position360 = getelementptr %struct.path_element, ptr %path_elements343, i32 %sub358, i32 1
  %440 = ptrtoint ptr %pe_position360 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %pe_position360, align 4
  %442 = ptrtoint ptr %421 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %441, ptr %421, align 4
  %b_data362 = getelementptr inbounds %struct.buffer_head, ptr %tbSh.0, i32 0, i32 5
  %443 = ptrtoint ptr %b_data362 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %b_data362, align 4
  %blk_nr_item363 = getelementptr inbounds %struct.block_head, ptr %444, i32 0, i32 1
  %445 = ptrtoint ptr %blk_nr_item363 to i32
  call void @__asan_load2_noabort(i32 %445)
  %446 = load i16, ptr %blk_nr_item363, align 2
  %447 = call i16 @llvm.bswap.i16(i16 %446)
  %conv364 = zext i16 %447 to i32
  %add365 = add i32 %insert_num.1, %conv364
  %add366 = add i32 %add365, 1
  %div367 = sdiv i32 %add366, 2
  %sub368 = sub nsw i32 %conv364, %div367
  call void @__sanitizer_cov_trace_cmp4(i32 %sub368, i32 %child_pos.addr.0)
  %cmp369.not = icmp slt i32 %sub368, %child_pos.addr.0
  br i1 %cmp369.not, label %if.else374, label %if.then371

if.then371:                                       ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i858 = getelementptr i8, ptr %444, i32 24
  %arrayidx.i859 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i858, i32 %sub368
  %448 = ptrtoint ptr %arrayidx.i859 to i32
  call void @__asan_loadN_noabort(i32 %448, i32 4)
  %new_insert_key.sroa.0.0.copyload = load i32, ptr %arrayidx.i859, align 1
  %new_insert_key.sroa.7.0.call373.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i859, i32 4
  %449 = ptrtoint ptr %new_insert_key.sroa.7.0.call373.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %449, i32 4)
  %new_insert_key.sroa.7.0.copyload = load i32, ptr %new_insert_key.sroa.7.0.call373.sroa_idx, align 1
  %new_insert_key.sroa.8.0.call373.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i859, i32 8
  %450 = ptrtoint ptr %new_insert_key.sroa.8.0.call373.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %450, i32 8)
  %new_insert_key.sroa.8.0.copyload = load i64, ptr %new_insert_key.sroa.8.0.call373.sroa_idx, align 1
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, i32 noundef 1, i32 noundef %div367, i32 noundef 0)
  br label %if.end438

if.else374:                                       ; preds = %if.then330
  %sub376 = sub i32 %add365, %div367
  call void @__sanitizer_cov_trace_cmp4(i32 %sub376, i32 %child_pos.addr.0)
  %cmp377 = icmp slt i32 %sub376, %child_pos.addr.0
  br i1 %cmp377, label %if.then379, label %if.else388

if.then379:                                       ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i861 = getelementptr i8, ptr %444, i32 24
  %arrayidx.i862 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i861, i32 %sub376
  %451 = ptrtoint ptr %arrayidx.i862 to i32
  call void @__asan_loadN_noabort(i32 %451, i32 4)
  %new_insert_key.sroa.0.0.copyload517 = load i32, ptr %arrayidx.i862, align 1
  %new_insert_key.sroa.7.0.call382.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i862, i32 4
  %452 = ptrtoint ptr %new_insert_key.sroa.7.0.call382.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %452, i32 4)
  %new_insert_key.sroa.7.0.copyload520 = load i32, ptr %new_insert_key.sroa.7.0.call382.sroa_idx, align 1
  %new_insert_key.sroa.8.0.call382.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i862, i32 8
  %453 = ptrtoint ptr %new_insert_key.sroa.8.0.call382.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %453, i32 8)
  %new_insert_key.sroa.8.0.copyload523 = load i64, ptr %new_insert_key.sroa.8.0.call382.sroa_idx, align 1
  %sub383 = sub i32 %div367, %insert_num.1
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, i32 noundef 1, i32 noundef %sub383, i32 noundef 0)
  %454 = xor i32 %add365, -1
  %add386 = add i32 %child_pos.addr.0, %454
  %sub387 = add i32 %add386, %div367
  call fastcc void @internal_insert_childs(ptr noundef nonnull %dest_bi, i32 noundef %sub387, i32 noundef %insert_num.1, ptr noundef %insert_key.addr.0, ptr noundef %insert_ptr.addr.0)
  br label %if.end438

if.else388:                                       ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #7
  %sub390 = sub i32 1, %child_pos.addr.0
  %add391 = add i32 %sub390, %conv364
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, i32 noundef 1, i32 noundef %add391, i32 noundef 1)
  %sub392 = sub nsw i32 %div367, %conv364
  %add393 = add i32 %sub392, %child_pos.addr.0
  %sub394 = add i32 %add393, -1
  %add.ptr395 = getelementptr %struct.item_head, ptr %insert_key.addr.0, i32 1
  %add.ptr396 = getelementptr ptr, ptr %insert_ptr.addr.0, i32 1
  call fastcc void @internal_insert_childs(ptr noundef nonnull %dest_bi, i32 noundef 0, i32 noundef %sub394, ptr noundef %add.ptr395, ptr noundef %add.ptr396)
  %add.ptr397 = getelementptr %struct.item_head, ptr %insert_key.addr.0, i32 %insert_num.1
  %idx.neg398 = sub i32 1, %add393
  %add.ptr399 = getelementptr %struct.item_head, ptr %add.ptr397, i32 %idx.neg398
  %add.ptr400 = getelementptr %struct.item_head, ptr %add.ptr399, i32 -1
  %455 = ptrtoint ptr %add.ptr400 to i32
  call void @__asan_loadN_noabort(i32 %455, i32 4)
  %new_insert_key.sroa.0.0.copyload518 = load i32, ptr %add.ptr400, align 1
  %new_insert_key.sroa.7.0.add.ptr400.sroa_idx = getelementptr inbounds i8, ptr %add.ptr400, i32 4
  %456 = ptrtoint ptr %new_insert_key.sroa.7.0.add.ptr400.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %456, i32 4)
  %new_insert_key.sroa.7.0.copyload521 = load i32, ptr %new_insert_key.sroa.7.0.add.ptr400.sroa_idx, align 1
  %new_insert_key.sroa.8.0.add.ptr400.sroa_idx = getelementptr inbounds i8, ptr %add.ptr400, i32 8
  %457 = ptrtoint ptr %new_insert_key.sroa.8.0.add.ptr400.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %457, i32 8)
  %new_insert_key.sroa.8.0.copyload524 = load i64, ptr %new_insert_key.sroa.8.0.add.ptr400.sroa_idx, align 1
  %458 = ptrtoint ptr %b_data334 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %b_data334, align 4
  %add.ptr402 = getelementptr i8, ptr %459, i32 24
  %blk_nr_item404 = getelementptr inbounds %struct.block_head, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %blk_nr_item404 to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %blk_nr_item404, align 2
  %462 = call i16 @llvm.bswap.i16(i16 %461)
  %conv405 = zext i16 %462 to i32
  %mul406 = shl nuw nsw i32 %conv405, 4
  %add.ptr407 = getelementptr i8, ptr %add.ptr402, i32 %mul406
  %sub411 = sub i32 %insert_num.1, %add393
  %arrayidx412 = getelementptr ptr, ptr %insert_ptr.addr.0, i32 %sub411
  %463 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %arrayidx412, align 4
  %b_size413 = getelementptr inbounds %struct.buffer_head, ptr %464, i32 0, i32 4
  %465 = ptrtoint ptr %b_size413 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %b_size413, align 8
  %b_data418 = getelementptr inbounds %struct.buffer_head, ptr %464, i32 0, i32 5
  %467 = ptrtoint ptr %b_data418 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %b_data418, align 4
  %blk_free_space419 = getelementptr inbounds %struct.block_head, ptr %468, i32 0, i32 2
  %469 = ptrtoint ptr %blk_free_space419 to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %blk_free_space419, align 2
  %471 = call i16 @llvm.bswap.i16(i16 %470)
  %472 = trunc i32 %466 to i16
  %473 = add i16 %472, -24
  %conv422 = sub i16 %473, %471
  %474 = call i16 @llvm.bswap.i16(i16 %conv422)
  %dc_size423 = getelementptr inbounds %struct.disk_child, ptr %add.ptr407, i32 0, i32 1
  %475 = ptrtoint ptr %dc_size423 to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 %474, ptr %dc_size423, align 4
  %476 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx412, align 4
  %b_blocknr430 = getelementptr inbounds %struct.buffer_head, ptr %477, i32 0, i32 3
  %478 = ptrtoint ptr %b_blocknr430 to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %b_blocknr430, align 8
  %conv431 = trunc i64 %479 to i32
  %480 = call i32 @llvm.bswap.i32(i32 %conv431)
  %481 = ptrtoint ptr %add.ptr407 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %480, ptr %add.ptr407, align 4
  call void @do_balance_mark_leaf_dirty(ptr noundef %tb, ptr noundef %call331, i32 noundef 0) #5
  br label %if.end438

if.end438:                                        ; preds = %if.else388, %if.then379, %if.then371
  %insert_num.2 = phi i32 [ %insert_num.1, %if.then371 ], [ 0, %if.then379 ], [ %sub411, %if.else388 ]
  %new_insert_key.sroa.8.0 = phi i64 [ %new_insert_key.sroa.8.0.copyload, %if.then371 ], [ %new_insert_key.sroa.8.0.copyload523, %if.then379 ], [ %new_insert_key.sroa.8.0.copyload524, %if.else388 ]
  %new_insert_key.sroa.7.0 = phi i32 [ %new_insert_key.sroa.7.0.copyload, %if.then371 ], [ %new_insert_key.sroa.7.0.copyload520, %if.then379 ], [ %new_insert_key.sroa.7.0.copyload521, %if.else388 ]
  %new_insert_key.sroa.0.0 = phi i32 [ %new_insert_key.sroa.0.0.copyload, %if.then371 ], [ %new_insert_key.sroa.0.0.copyload517, %if.then379 ], [ %new_insert_key.sroa.0.0.copyload518, %if.else388 ]
  %482 = ptrtoint ptr %call331 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load volatile i32, ptr %call331, align 4
  %484 = and i32 %483, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %tobool441.not = icmp eq i32 %484, 0
  br i1 %tobool441.not, label %if.end438.if.then448_crit_edge, label %lor.lhs.false442

if.end438.if.then448_crit_edge:                   ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then448

lor.lhs.false442:                                 ; preds = %if.end438
  %485 = ptrtoint ptr %call331 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load volatile i32, ptr %call331, align 4
  %487 = and i32 %486, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %tobool444.not = icmp eq i32 %487, 0
  br i1 %tobool444.not, label %lor.lhs.false445, label %lor.lhs.false442.if.then448_crit_edge

lor.lhs.false442.if.then448_crit_edge:            ; preds = %lor.lhs.false442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then448

lor.lhs.false445:                                 ; preds = %lor.lhs.false442
  %488 = ptrtoint ptr %call331 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load volatile i32, ptr %call331, align 4
  %490 = and i32 %489, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool447.not = icmp eq i32 %490, 0
  br i1 %tobool447.not, label %do.end451, label %lor.lhs.false445.if.then448_crit_edge

lor.lhs.false445.if.then448_crit_edge:            ; preds = %lor.lhs.false445
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then448

if.then448:                                       ; preds = %lor.lhs.false445.if.then448_crit_edge, %lor.lhs.false442.if.then448_crit_edge, %if.end438.if.then448_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.balance_internal, ptr noundef nonnull @.str.9, i32 noundef 1138, ptr noundef nonnull @__func__.balance_internal, ptr noundef %call331) #8
  unreachable

do.end451:                                        ; preds = %lor.lhs.false445
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi) #5
  br label %if.end452

if.end452:                                        ; preds = %do.end451, %if.end325.if.end452_crit_edge
  %insert_num.3 = phi i32 [ %insert_num.2, %do.end451 ], [ %insert_num.1, %if.end325.if.end452_crit_edge ]
  %new_insert_key.sroa.8.1 = phi i64 [ %new_insert_key.sroa.8.0, %do.end451 ], [ -1, %if.end325.if.end452_crit_edge ]
  %new_insert_key.sroa.7.1 = phi i32 [ %new_insert_key.sroa.7.0, %do.end451 ], [ -1, %if.end325.if.end452_crit_edge ]
  %new_insert_key.sroa.0.1 = phi i32 [ %new_insert_key.sroa.0.0, %do.end451 ], [ -1, %if.end325.if.end452_crit_edge ]
  %new_insert_ptr.0 = phi ptr [ %call331, %do.end451 ], [ null, %if.end325.if.end452_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %child_pos.addr.0)
  %cmp456 = icmp sgt i32 %child_pos.addr.0, -1
  br i1 %cmp456, label %land.lhs.true458, label %if.end452.if.end487_crit_edge

if.end452.if.end487_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end487

land.lhs.true458:                                 ; preds = %if.end452
  %b_data453 = getelementptr inbounds %struct.buffer_head, ptr %tbSh.0, i32 0, i32 5
  %491 = ptrtoint ptr %b_data453 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %b_data453, align 4
  %blk_nr_item454 = getelementptr inbounds %struct.block_head, ptr %492, i32 0, i32 1
  %493 = ptrtoint ptr %blk_nr_item454 to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %blk_nr_item454, align 2
  %495 = call i16 @llvm.bswap.i16(i16 %494)
  %conv455 = zext i16 %495 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %child_pos.addr.0, i32 %conv455)
  %cmp459.not = icmp ule i32 %child_pos.addr.0, %conv455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insert_num.3)
  %cmp462 = icmp sgt i32 %insert_num.3, 0
  %or.cond815 = select i1 %cmp459.not, i1 %cmp462, i1 false
  br i1 %or.cond815, label %if.then464, label %land.lhs.true458.if.end487_crit_edge

land.lhs.true458.if.end487_crit_edge:             ; preds = %land.lhs.true458
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end487

if.then464:                                       ; preds = %land.lhs.true458
  call void @__sanitizer_cov_trace_pc() #7
  %496 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %tb, ptr %bi, align 4
  %497 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %tbSh.0, ptr %6, align 4
  %498 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %tb_path, align 8
  %path_elements468 = getelementptr inbounds %struct.treepath, ptr %499, i32 0, i32 2
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %499, align 4
  %add472.neg = xor i32 %h, -1
  %sub473 = add i32 %501, %add472.neg
  %add.ptr474 = getelementptr %struct.path_element, ptr %path_elements468, i32 %sub473
  %502 = ptrtoint ptr %add.ptr474 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %add.ptr474, align 4
  %504 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr %503, ptr %7, align 4
  %pe_position485 = getelementptr %struct.path_element, ptr %path_elements468, i32 %sub473, i32 1
  %505 = ptrtoint ptr %pe_position485 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %pe_position485, align 4
  %507 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %506, ptr %8, align 4
  call fastcc void @internal_insert_childs(ptr noundef nonnull %bi, i32 noundef %child_pos.addr.0, i32 noundef %insert_num.3, ptr noundef %insert_key.addr.0, ptr noundef %insert_ptr.addr.0)
  br label %if.end487

if.end487:                                        ; preds = %if.then464, %land.lhs.true458.if.end487_crit_edge, %if.end452.if.end487_crit_edge
  %508 = ptrtoint ptr %insert_ptr.addr.0 to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %new_insert_ptr.0, ptr %insert_ptr.addr.0, align 4
  %tobool489.not = icmp eq ptr %new_insert_ptr.0, null
  br i1 %tobool489.not, label %if.end487.cleanup_crit_edge, label %if.then490

if.end487.cleanup_crit_edge:                      ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then490:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #7
  %509 = ptrtoint ptr %insert_key to i32
  call void @__asan_storeN_noabort(i32 %509, i32 4)
  store i32 %new_insert_key.sroa.0.1, ptr %insert_key, align 1
  %new_insert_key.sroa.7.0.new_insert_key_addr.0..sroa_idx = getelementptr inbounds i8, ptr %insert_key, i32 4
  %510 = ptrtoint ptr %new_insert_key.sroa.7.0.new_insert_key_addr.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %510, i32 4)
  store i32 %new_insert_key.sroa.7.1, ptr %new_insert_key.sroa.7.0.new_insert_key_addr.0..sroa_idx, align 1
  %new_insert_key.sroa.8.0.new_insert_key_addr.0..sroa_idx = getelementptr inbounds i8, ptr %insert_key, i32 8
  %511 = ptrtoint ptr %new_insert_key.sroa.8.0.new_insert_key_addr.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %511, i32 8)
  store i64 %new_insert_key.sroa.8.1, ptr %new_insert_key.sroa.8.0.new_insert_key_addr.0..sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then490, %if.end487.cleanup_crit_edge, %do.end239, %balance_internal_when_delete.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bi) #5
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_shift_left(i32 noundef %mode, ptr noundef %tb, i32 noundef %h, i32 noundef %pointer_amount) unnamed_addr #0 align 64 {
entry:
  %dest_bi = alloca %struct.buffer_info, align 4
  %src_bi = alloca %struct.buffer_info, align 4
  %cf = alloca ptr, align 4
  %d_key_position = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi) #5
  %0 = call ptr @memset(ptr %dest_bi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi) #5
  %1 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %2 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %3 = call ptr @memset(ptr %src_bi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #5
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_key_position) #5
  %5 = ptrtoint ptr %d_key_position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %d_key_position, align 4, !annotation !99
  call fastcc void @internal_define_dest_src_infos(i32 noundef %mode, ptr noundef %tb, i32 noundef %h, ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, ptr noundef nonnull %d_key_position, ptr noundef nonnull %cf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pointer_amount)
  %tobool.not = icmp eq i32 %pointer_amount, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %7 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blk_nr_item, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %17 = ptrtoint ptr %d_key_position to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d_key_position, align 4
  call fastcc void @internal_insert_key(ptr noundef nonnull %dest_bi, i32 noundef %conv, ptr noundef %16, i32 noundef %18)
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %b_data2 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data2, align 4
  %blk_nr_item3 = getelementptr inbounds %struct.block_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %blk_nr_item3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %blk_nr_item3, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv4 = zext i16 %25 to i32
  %sub = add i32 %pointer_amount, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv4)
  %cmp = icmp eq i32 %sub, %conv4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7 = icmp eq i32 %27, 0
  br i1 %cmp7, label %if.then9, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @replace_key(ptr noundef %tb, ptr noundef %16, i32 noundef %18, ptr noundef %29, i32 noundef 0) #5
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @replace_key(ptr noundef %tb, ptr noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %sub) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.then6.if.end13_crit_edge, %entry.if.end13_crit_edge
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, i32 noundef 0, i32 noundef %pointer_amount, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_key_position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_left_neighbor_position(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_insert_childs(ptr nocapture noundef readonly %cur_bi, i32 noundef %to, i32 noundef %count, ptr nocapture noundef readonly %inserted, ptr nocapture noundef readonly %bh) unnamed_addr #0 align 64 {
entry:
  %new_dc = alloca [2 x %struct.disk_child], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_dc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp slt i32 %count, 1
  %2 = call ptr @memset(ptr %new_dc, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %blk_nr_item, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp1 = icmp ugt i32 %count, 2
  br i1 %cmp1, label %if.then3, label %do.body5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_childs, ptr noundef nonnull @.str.31, i32 noundef 145, ptr noundef nonnull @__func__.internal_insert_childs, i32 noundef %count) #8
  unreachable

do.body5:                                         ; preds = %if.end
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blk_free_space, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv7 = zext i16 %10 to i32
  %mul = mul nuw nsw i32 %count, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv7)
  %cmp8 = icmp ugt i32 %mul, %conv7
  br i1 %cmp8, label %if.then10, label %do.body32.preheader

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_childs, ptr noundef nonnull @.str.32, i32 noundef 148, ptr noundef nonnull @__func__.internal_insert_childs, i32 noundef %conv7, i32 noundef %mul) #8
  unreachable

do.body32.preheader:                              ; preds = %do.body5
  %add.ptr = getelementptr i8, ptr %4, i32 24
  %mul22 = shl nuw nsw i32 %conv, 4
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul22
  %add = add i32 %to, 1
  %mul24 = shl i32 %add, 3
  %add.ptr25 = getelementptr i8, ptr %add.ptr23, i32 %mul24
  %add.ptr26 = getelementptr %struct.disk_child, ptr %add.ptr25, i32 %count
  %add27 = add nuw nsw i32 %conv, 1
  %sub = sub i32 %add27, %add
  %mul29 = shl i32 %sub, 3
  %11 = call ptr @memmove(ptr %add.ptr26, ptr %add.ptr25, i32 %mul29)
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size, align 8
  %b_data35 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %b_data35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data35, align 4
  %blk_free_space36 = getelementptr inbounds %struct.block_head, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %blk_free_space36 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %blk_free_space36, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = trunc i32 %15 to i16
  %22 = add i16 %21, -24
  %conv39 = sub i16 %22, %20
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv39)
  %dc_size = getelementptr inbounds [2 x %struct.disk_child], ptr %new_dc, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %dc_size, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b_blocknr, align 8
  %conv45 = trunc i64 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv45)
  %28 = ptrtoint ptr %new_dc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %new_dc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %exitcond.not = icmp eq i32 %count, 1
  br i1 %exitcond.not, label %do.body32.preheader.for.end_crit_edge, label %do.body32.1

do.body32.preheader.for.end_crit_edge:            ; preds = %do.body32.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body32.1:                                      ; preds = %do.body32.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr ptr, ptr %bh, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1, align 4
  %b_size.1 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %b_size.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_size.1, align 8
  %b_data35.1 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %b_data35.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data35.1, align 4
  %blk_free_space36.1 = getelementptr inbounds %struct.block_head, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %blk_free_space36.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %blk_free_space36.1, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = trunc i32 %32 to i16
  %39 = add i16 %38, -24
  %conv39.1 = sub i16 %39, %37
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv39.1)
  %arrayidx40.1 = getelementptr inbounds [2 x %struct.disk_child], ptr %new_dc, i32 0, i32 1
  %dc_size.1 = getelementptr inbounds [2 x %struct.disk_child], ptr %new_dc, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %dc_size.1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %dc_size.1, align 4
  %b_blocknr.1 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 3
  %42 = ptrtoint ptr %b_blocknr.1 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %b_blocknr.1, align 8
  %conv45.1 = trunc i64 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv45.1)
  %45 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx40.1, align 4
  br label %for.end

for.end:                                          ; preds = %do.body32.1, %do.body32.preheader.for.end_crit_edge
  %mul49 = shl i32 %count, 3
  %46 = call ptr @memcpy(ptr %add.ptr25, ptr %new_dc, i32 %mul49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %to)
  %cmp50 = icmp eq i32 %to, -1
  %spec.select = select i1 %cmp50, i32 0, i32 %to
  %47 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i, i32 %spec.select
  %add.ptr52 = getelementptr %struct.reiserfs_key, ptr %arrayidx.i, i32 %count
  %sub53 = sub i32 %conv, %to
  %mul54 = shl i32 %sub53, 4
  %add56 = add i32 %add27, %count
  %mul57 = shl i32 %add56, 3
  %add58 = add i32 %mul57, %mul54
  %49 = call ptr @memmove(ptr %add.ptr52, ptr %arrayidx.i, i32 %add58)
  %50 = call ptr @memcpy(ptr %arrayidx.i, ptr %inserted, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp59 = icmp sgt i32 %count, 1
  br i1 %cmp59, label %if.then61, label %for.end.if.end64_crit_edge

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr62 = getelementptr %struct.reiserfs_key, ptr %arrayidx.i, i32 1
  %add.ptr63 = getelementptr %struct.item_head, ptr %inserted, i32 1
  %51 = call ptr @memcpy(ptr %add.ptr62, ptr %add.ptr63, i32 16)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %for.end.if.end64_crit_edge
  %52 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %blk_nr_item, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %55 = trunc i32 %count to i16
  %conv68 = add i16 %54, %55
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv68)
  %57 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %blk_nr_item, align 2
  %58 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %blk_free_space, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %61 = trunc i32 %mul to i16
  %conv74 = sub i16 %60, %61
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv74)
  %63 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %blk_free_space, align 2
  %64 = ptrtoint ptr %cur_bi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %65, ptr noundef %1, i32 noundef 0) #5
  tail call void @check_internal(ptr noundef %1) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 2
  %66 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bi_parent, align 4
  %tobool.not = icmp eq ptr %67, null
  br i1 %tobool.not, label %if.end64.cleanup_crit_edge, label %if.then76

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %b_data78 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_data78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data78, align 4
  %add.ptr79 = getelementptr i8, ptr %69, i32 24
  %blk_nr_item82 = getelementptr inbounds %struct.block_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %blk_nr_item82 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %blk_nr_item82, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %conv83 = zext i16 %72 to i32
  %mul84 = shl nuw nsw i32 %conv83, 4
  %add.ptr85 = getelementptr i8, ptr %add.ptr79, i32 %mul84
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 3
  %73 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bi_position, align 4
  %mul86 = shl i32 %74, 3
  %add.ptr87 = getelementptr i8, ptr %add.ptr85, i32 %mul86
  %dc_size89 = getelementptr inbounds %struct.disk_child, ptr %add.ptr87, i32 0, i32 1
  %75 = ptrtoint ptr %dc_size89 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %dc_size89, align 4
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %conv93 = add i16 %77, %61
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv93)
  %79 = ptrtoint ptr %dc_size89 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %dc_size89, align 4
  %80 = ptrtoint ptr %cur_bi to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur_bi, align 4
  %82 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %81, ptr noundef %83, i32 noundef 0) #5
  %84 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bi_parent, align 4
  tail call void @check_internal(ptr noundef %85) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end64.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_dc) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_balance_mark_leaf_dirty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_shift_right(i32 noundef %mode, ptr noundef %tb, i32 noundef %h, i32 noundef %pointer_amount) unnamed_addr #0 align 64 {
entry:
  %dest_bi = alloca %struct.buffer_info, align 4
  %src_bi = alloca %struct.buffer_info, align 4
  %cf = alloca ptr, align 4
  %d_key_position = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_bi) #5
  %0 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %1 = call ptr @memset(ptr %dest_bi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_bi) #5
  %2 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %3 = call ptr @memset(ptr %src_bi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #5
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d_key_position) #5
  %5 = ptrtoint ptr %d_key_position to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %d_key_position, align 4, !annotation !99
  call fastcc void @internal_define_dest_src_infos(i32 noundef %mode, ptr noundef %tb, i32 noundef %h, ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, ptr noundef nonnull %d_key_position, ptr noundef nonnull %cf)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %blk_nr_item, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pointer_amount)
  %cmp = icmp sgt i32 %pointer_amount, 0
  br i1 %cmp, label %if.then, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %15 = ptrtoint ptr %d_key_position to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_key_position, align 4
  call fastcc void @internal_insert_key(ptr noundef nonnull %dest_bi, i32 noundef 0, ptr noundef %14, i32 noundef %16)
  %sub = add nsw i32 %pointer_amount, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp2 = icmp eq i32 %sub, %conv
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  br i1 %cmp2, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %19 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %sub7 = sub i32 %22, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub7
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %cmp8.not = icmp eq ptr %18, %24
  br i1 %cmp8.not, label %lor.lhs.false, label %do.body.if.then13_crit_edge

do.body.if.then13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.body
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %cmp11.not = icmp eq ptr %26, %28
  br i1 %cmp11.not, label %do.end, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %do.body.if.then13_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_shift_right, ptr noundef nonnull @.str.34, i32 noundef 588, ptr noundef nonnull @__func__.internal_shift_right, ptr noundef %18, ptr noundef %24) #8
  unreachable

do.end:                                           ; preds = %lor.lhs.false
  %arrayidx23 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx23, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %do.end.if.end32_crit_edge, label %if.then24

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx27 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx27, align 4
  tail call void @replace_key(ptr noundef %tb, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %30, i32 noundef %32) #5
  br label %if.end32

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sub30 = sub nsw i32 %conv, %pointer_amount
  tail call void @replace_key(ptr noundef %tb, ptr noundef %14, i32 noundef %16, ptr noundef %18, i32 noundef %sub30) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then24, %do.end.if.end32_crit_edge, %entry.if.end32_crit_edge
  call fastcc void @internal_move_pointers_items(ptr noundef nonnull %dest_bi, ptr noundef nonnull %src_bi, i32 noundef 1, i32 noundef %pointer_amount, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d_key_position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_bi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_bi) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_right_neighbor_position(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_invalidate_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_FEB(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_internal(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_move_pointers_items(ptr nocapture noundef readonly %dest_bi, ptr noundef %src_bi, i32 noundef %last_first, i32 noundef %cpy_num, i32 noundef %del_par) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %bi_bh.i = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %2 = ptrtoint ptr %bi_bh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blk_nr_item.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %conv.i = zext i16 %8 to i32
  %cmp.i = icmp eq ptr %3, null
  %cmp2.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %cmp2.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %do.body4.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_copy_pointers_items, ptr noundef nonnull @.str.37, i32 noundef 317, ptr noundef nonnull @__func__.internal_copy_pointers_items, ptr noundef %1, ptr noundef %3) #8
  unreachable

do.body4.i:                                       ; preds = %entry
  %sub.i = add i32 %cpy_num, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp14.i = icmp sgt i32 %sub.i, %conv.i
  br i1 %cmp14.i, label %if.then16.i, label %do.body20.i

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_copy_pointers_items, ptr noundef nonnull @.str.39, i32 noundef 321, ptr noundef nonnull @__func__.internal_copy_pointers_items, i32 noundef %cpy_num, i32 noundef %conv.i) #8
  unreachable

do.body20.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpy_num)
  %cmp21.i = icmp slt i32 %cpy_num, 0
  br i1 %cmp21.i, label %if.then23.i, label %do.body27.i

if.then23.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_copy_pointers_items, ptr noundef nonnull @.str.40, i32 noundef 322, ptr noundef nonnull @__func__.internal_copy_pointers_items, i32 noundef %cpy_num) #8
  unreachable

do.body27.i:                                      ; preds = %do.body20.i
  %b_data29.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %b_data29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data29.i, align 4
  %blk_nr_item30.i = getelementptr inbounds %struct.block_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %blk_nr_item30.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %blk_nr_item30.i, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  %conv31.i = zext i16 %13 to i32
  %add.i = add i32 %sub.i, %conv31.i
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size.i, align 8
  %sub33.i = add i32 %15, -32
  %div.i = udiv i32 %sub33.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp34.i = icmp sgt i32 %add.i, %div.i
  br i1 %cmp34.i, label %if.then36.i, label %do.end46.i

if.then36.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_copy_pointers_items, ptr noundef nonnull @.str.41, i32 noundef 325, ptr noundef nonnull @__func__.internal_copy_pointers_items, i32 noundef %cpy_num, i32 noundef %conv31.i, i32 noundef %div.i) #8
  unreachable

do.end46.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpy_num)
  %cmp47.i = icmp eq i32 %cpy_num, 0
  br i1 %cmp47.i, label %do.end46.i.internal_copy_pointers_items.exit_crit_edge, label %if.end50.i

do.end46.i.internal_copy_pointers_items.exit_crit_edge: ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_copy_pointers_items.exit

if.end50.i:                                       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %last_first)
  %cmp54.i = icmp eq i32 %last_first, 1
  %sub56.i = sub nsw i32 1, %cpy_num
  %add57.i = add nsw i32 %sub56.i, %conv.i
  %dest_order.0.i = select i1 %cmp54.i, i32 0, i32 %conv31.i
  %src_order.0.i = select i1 %cmp54.i, i32 %add57.i, i32 0
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  %mul.i = shl nuw nsw i32 %conv31.i, 4
  %add.ptr62.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mul63.i = shl nuw nsw i32 %dest_order.0.i, 3
  %add.ptr64.i = getelementptr i8, ptr %add.ptr62.i, i32 %mul63.i
  %add.ptr65.i = getelementptr %struct.disk_child, ptr %add.ptr64.i, i32 %cpy_num
  %sub66.i = sub nsw i32 %conv31.i, %dest_order.0.i
  %mul67.i = shl nsw i32 %sub66.i, 3
  %16 = call ptr @memmove(ptr %add.ptr65.i, ptr %add.ptr64.i, i32 %mul67.i)
  %17 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %18, i32 24
  %blk_nr_item71.i = getelementptr inbounds %struct.block_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %blk_nr_item71.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %blk_nr_item71.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #5
  %conv72.i = zext i16 %21 to i32
  %mul73.i = shl nuw nsw i32 %conv72.i, 4
  %add.ptr74.i = getelementptr i8, ptr %add.ptr69.i, i32 %mul73.i
  %mul75.i = shl i32 %src_order.0.i, 3
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %mul75.i
  %mul77.i = shl i32 %cpy_num, 3
  %22 = call ptr @memcpy(ptr %add.ptr64.i, ptr %add.ptr76.i, i32 %mul77.i)
  %23 = ptrtoint ptr %b_data29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data29.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 24
  %arrayidx.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i.i, i32 %dest_order.0.i
  %add.ptr78.i = getelementptr %struct.reiserfs_key, ptr %arrayidx.i.i, i32 %cpy_num
  %add.ptr79.i = getelementptr %struct.reiserfs_key, ptr %add.ptr78.i, i32 -1
  %mul81.i = shl nsw i32 %sub66.i, 4
  %add82.i = add nuw i32 %conv31.i, %cpy_num
  %mul83.i = shl i32 %add82.i, 3
  %add84.i = add i32 %mul81.i, %mul83.i
  %25 = call ptr @memmove(ptr %add.ptr79.i, ptr %arrayidx.i.i, i32 %add84.i)
  %26 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i.i200.i = getelementptr i8, ptr %27, i32 24
  %arrayidx.i201.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i200.i, i32 %src_order.0.i
  %mul87.i = shl i32 %sub.i, 4
  %28 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %arrayidx.i201.i, i32 %mul87.i)
  %29 = ptrtoint ptr %blk_nr_item30.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %blk_nr_item30.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  %32 = trunc i32 %sub.i to i16
  %conv92.i = add i16 %31, %32
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv92.i) #5
  %34 = ptrtoint ptr %blk_nr_item30.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %blk_nr_item30.i, align 2
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %10, i32 0, i32 2
  %35 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %blk_free_space.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  %add98.i = add i32 %mul87.i, %mul77.i
  %38 = trunc i32 %add98.i to i16
  %conv100.i = sub i16 %37, %38
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv100.i) #5
  %40 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %blk_free_space.i, align 2
  %41 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dest_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %42, ptr noundef nonnull %3, i32 noundef 0) #5
  tail call void @check_internal(ptr noundef nonnull %3) #5
  %bi_parent.i = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %43 = ptrtoint ptr %bi_parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_parent.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end50.i.internal_copy_pointers_items.exit_crit_edge, label %if.then102.i

if.end50.i.internal_copy_pointers_items.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_copy_pointers_items.exit

if.then102.i:                                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  %b_data104.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data104.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data104.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %46, i32 24
  %blk_nr_item108.i = getelementptr inbounds %struct.block_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %blk_nr_item108.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %blk_nr_item108.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #5
  %conv109.i = zext i16 %49 to i32
  %mul110.i = shl nuw nsw i32 %conv109.i, 4
  %add.ptr111.i = getelementptr i8, ptr %add.ptr105.i, i32 %mul110.i
  %bi_position.i = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %50 = ptrtoint ptr %bi_position.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_position.i, align 4
  %mul112.i = shl i32 %51, 3
  %add.ptr113.i = getelementptr i8, ptr %add.ptr111.i, i32 %mul112.i
  %dc_size.i = getelementptr inbounds %struct.disk_child, ptr %add.ptr113.i, i32 0, i32 1
  %52 = ptrtoint ptr %dc_size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dc_size.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #5
  %conv121.i = add i16 %54, %38
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv121.i) #5
  %56 = ptrtoint ptr %dc_size.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %dc_size.i, align 4
  %57 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dest_bi, align 4
  %59 = ptrtoint ptr %bi_parent.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_parent.i, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %58, ptr noundef %60, i32 noundef 0) #5
  %61 = ptrtoint ptr %bi_parent.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bi_parent.i, align 4
  tail call void @check_internal(ptr noundef %62) #5
  br label %internal_copy_pointers_items.exit

internal_copy_pointers_items.exit:                ; preds = %if.then102.i, %if.end50.i.internal_copy_pointers_items.exit_crit_edge, %do.end46.i.internal_copy_pointers_items.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_first)
  %cmp = icmp eq i32 %last_first, 0
  %sub = sub i32 %cpy_num, %del_par
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %internal_copy_pointers_items.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @internal_delete_pointers_items(ptr noundef %src_bi, i32 noundef 0, i32 noundef 0, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %internal_copy_pointers_items.exit
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bi_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %blk_nr_item, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv = zext i16 %69 to i32
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add)
  %cmp3 = icmp eq i32 %sub, %add
  %sub5 = sub i32 %del_par, %cpy_num
  %add6 = add i32 %sub5, %conv
  %cond = select i1 %cmp3, i32 0, i32 %add6
  %add9 = add i32 %sub5, %add
  tail call fastcc void @internal_delete_pointers_items(ptr noundef %src_bi, i32 noundef %add9, i32 noundef %cond, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_delete_pointers_items(ptr noundef %cur_bi, i32 noundef %first_p, i32 noundef %first_i, i32 noundef %del_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_delete_pointers_items, ptr noundef nonnull @.str.20, i32 noundef 215, ptr noundef nonnull @__func__.internal_delete_pointers_items) #8
  unreachable

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_num)
  %cmp2 = icmp slt i32 %del_num, 0
  br i1 %cmp2, label %if.then3, label %do.body7

if.then3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_delete_pointers_items, ptr noundef nonnull @.str.21, i32 noundef 217, ptr noundef nonnull @__func__.internal_delete_pointers_items, i32 noundef %del_num) #8
  unreachable

do.body7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_p)
  %cmp8 = icmp slt i32 %first_p, 0
  %.pre = add i32 %del_num, %first_p
  br i1 %cmp8, label %do.body7.if.then15_crit_edge, label %lor.lhs.false

do.body7.if.then15_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.body7
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
  %add9 = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %.pre)
  %cmp10 = icmp slt i32 %add9, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_i)
  %cmp13 = icmp slt i32 %first_i, 0
  %or.cond = or i1 %cmp13, %cmp10
  br i1 %or.cond, label %lor.lhs.false.if.then15_crit_edge, label %do.end23

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.body7.if.then15_crit_edge
  %b_data17 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %b_data17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data17, align 4
  %blk_nr_item18 = getelementptr inbounds %struct.block_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %blk_nr_item18 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blk_nr_item18, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv19 = zext i16 %11 to i32
  %add20 = add nuw nsw i32 %conv19, 1
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_delete_pointers_items, ptr noundef nonnull @.str.22, i32 noundef 223, ptr noundef nonnull @__func__.internal_delete_pointers_items, i32 noundef %first_p, i32 noundef %.pre, i32 noundef %add20, i32 noundef %first_i) #8
  unreachable

do.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_num)
  %cmp24 = icmp eq i32 %del_num, 0
  br i1 %cmp24, label %do.end23.cleanup_crit_edge, label %if.end27

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_p)
  %cmp31 = icmp eq i32 %first_p, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %del_num)
  %cmp34 = icmp eq i32 %add9, %del_num
  %or.cond175 = select i1 %cmp31, i1 %cmp34, i1 false
  br i1 %or.cond175, label %do.body37, label %do.body45

do.body37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_i)
  %cmp38.not = icmp eq i32 %first_i, 0
  br i1 %cmp38.not, label %do.end43, label %if.then40

if.then40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_delete_pointers_items, ptr noundef nonnull @.str.23, i32 noundef 232, ptr noundef nonnull @__func__.internal_delete_pointers_items, i32 noundef %first_i) #8
  unreachable

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @make_empty_node(ptr noundef %cur_bi) #5
  br label %cleanup

do.body45:                                        ; preds = %if.end27
  %add46 = add nuw i32 %del_num, %first_i
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %conv)
  %cmp50 = icmp sgt i32 %add46, %conv
  br i1 %cmp50, label %if.then52, label %do.end56

if.then52:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_delete_pointers_items, ptr noundef nonnull @.str.24, i32 noundef 240, ptr noundef nonnull @__func__.internal_delete_pointers_items, i32 noundef %first_i, i32 noundef %del_num, i32 noundef %add46, ptr noundef nonnull %1, ptr noundef nonnull %1) #8
  unreachable

do.end56:                                         ; preds = %do.body45
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %mul = shl nuw nsw i32 %conv, 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %mul
  %mul62 = shl i32 %first_p, 3
  %add.ptr63 = getelementptr i8, ptr %add.ptr61, i32 %mul62
  %add.ptr64 = getelementptr %struct.disk_child, ptr %add.ptr63, i32 %del_num
  %sub66 = sub i32 %add9, %.pre
  %mul67 = shl i32 %sub66, 3
  %12 = call ptr @memmove(ptr %add.ptr63, ptr %add.ptr64, i32 %mul67)
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i, i32 %first_i
  %add.ptr68 = getelementptr %struct.reiserfs_key, ptr %arrayidx.i, i32 %del_num
  %sub70 = sub i32 %conv, %add46
  %mul71 = shl i32 %sub70, 4
  %sub73 = sub nsw i32 %add9, %del_num
  %mul74 = shl i32 %sub73, 3
  %add75 = add i32 %mul74, %mul71
  %15 = call ptr @memmove(ptr %arrayidx.i, ptr %add.ptr68, i32 %add75)
  %16 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %blk_nr_item, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = trunc i32 %del_num to i16
  %conv79 = sub i16 %18, %19
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv79)
  %21 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %blk_nr_item, align 2
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %blk_free_space, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = mul i16 %19, 24
  %conv84 = add i16 %24, %25
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv84)
  %27 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %blk_free_space, align 2
  %28 = ptrtoint ptr %cur_bi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %29, ptr noundef nonnull %1, i32 noundef 0) #5
  tail call void @check_internal(ptr noundef nonnull %1) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 2
  %30 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bi_parent, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %do.end56.cleanup_crit_edge, label %if.then86

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then86:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  %b_data88 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %b_data88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data88, align 4
  %add.ptr89 = getelementptr i8, ptr %33, i32 24
  %blk_nr_item92 = getelementptr inbounds %struct.block_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %blk_nr_item92 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %blk_nr_item92, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv93 = zext i16 %36 to i32
  %mul94 = shl nuw nsw i32 %conv93, 4
  %add.ptr95 = getelementptr i8, ptr %add.ptr89, i32 %mul94
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %cur_bi, i32 0, i32 3
  %37 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_position, align 4
  %mul96 = shl i32 %38, 3
  %add.ptr97 = getelementptr i8, ptr %add.ptr95, i32 %mul96
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr97, i32 0, i32 1
  %39 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dc_size, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv102 = sub i16 %41, %25
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv102)
  %43 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %dc_size, align 4
  %44 = ptrtoint ptr %cur_bi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_bi, align 4
  %46 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %45, ptr noundef %47, i32 noundef 0) #5
  %48 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_parent, align 4
  tail call void @check_internal(ptr noundef %49) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.end56.cleanup_crit_edge, %do.end43, %do.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_define_dest_src_infos(i32 noundef %shift_mode, ptr noundef %tb, i32 noundef %h, ptr nocapture noundef writeonly %dest_bi, ptr nocapture noundef writeonly %src_bi, ptr nocapture noundef writeonly %d_key, ptr nocapture noundef writeonly %cf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dest_bi, i32 0, i32 16)
  %1 = call ptr @memset(ptr %src_bi, i32 0, i32 16)
  %2 = zext i32 %shift_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shift_mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb26
    i32 1, label %sw.bb70
    i32 3, label %sw.bb110
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tb, ptr %src_bi, align 4
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %4 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %sub = sub i32 %7, %h
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %sub
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %10 = ptrtoint ptr %bi_bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %bi_bh, align 4
  %11 = load ptr, ptr %tb_path, align 8
  %path_elements4 = getelementptr inbounds %struct.treepath, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %h, 1
  %sub8 = sub i32 %13, %add
  %add.ptr9 = getelementptr %struct.path_element, ptr %path_elements4, i32 %sub8
  %14 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr9, align 4
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %16 = ptrtoint ptr %bi_parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %bi_parent, align 4
  %17 = load ptr, ptr %tb_path, align 8
  %path_elements12 = getelementptr inbounds %struct.treepath, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub17 = sub i32 %19, %add
  %pe_position = getelementptr %struct.path_element, ptr %path_elements12, i32 %sub17, i32 1
  %20 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pe_position, align 4
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %22 = ptrtoint ptr %bi_position to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bi_position, align 4
  %23 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tb, ptr %dest_bi, align 4
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %bi_bh20 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %26 = ptrtoint ptr %bi_bh20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %bi_bh20, align 4
  %arrayidx21 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx21, align 4
  %bi_parent22 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %29 = ptrtoint ptr %bi_parent22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bi_parent22, align 4
  %call = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %bi_position23 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %30 = ptrtoint ptr %bi_position23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call, ptr %bi_position23, align 4
  %arrayidx24 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx24, align 4
  %33 = ptrtoint ptr %d_key to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %d_key, align 4
  %arrayidx25 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tb, ptr %src_bi, align 4
  %arrayidx29 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h
  %35 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx29, align 4
  %bi_bh30 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %37 = ptrtoint ptr %bi_bh30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %bi_bh30, align 4
  %arrayidx32 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h
  %38 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx32, align 4
  %bi_parent33 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %40 = ptrtoint ptr %bi_parent33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bi_parent33, align 4
  %call34 = tail call i32 @get_left_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %bi_position35 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %41 = ptrtoint ptr %bi_position35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call34, ptr %bi_position35, align 4
  %42 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %tb, ptr %dest_bi, align 4
  %tb_path37 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %43 = ptrtoint ptr %tb_path37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb_path37, align 8
  %path_elements38 = getelementptr inbounds %struct.treepath, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %sub42 = sub i32 %46, %h
  %add.ptr43 = getelementptr %struct.path_element, ptr %path_elements38, i32 %sub42
  %47 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr43, align 4
  %bi_bh45 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %49 = ptrtoint ptr %bi_bh45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %bi_bh45, align 4
  %50 = load ptr, ptr %tb_path37, align 8
  %path_elements47 = getelementptr inbounds %struct.treepath, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add51 = add i32 %h, 1
  %sub52 = sub i32 %52, %add51
  %add.ptr53 = getelementptr %struct.path_element, ptr %path_elements47, i32 %sub52
  %53 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr53, align 4
  %bi_parent55 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %55 = ptrtoint ptr %bi_parent55 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %bi_parent55, align 4
  %56 = load ptr, ptr %tb_path37, align 8
  %path_elements57 = getelementptr inbounds %struct.treepath, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %sub62 = sub i32 %58, %add51
  %pe_position64 = getelementptr %struct.path_element, ptr %path_elements57, i32 %sub62, i32 1
  %59 = ptrtoint ptr %pe_position64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pe_position64, align 4
  %bi_position65 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %61 = ptrtoint ptr %bi_position65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %bi_position65, align 4
  %arrayidx67 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 16, i32 %h
  %62 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx67, align 4
  %64 = ptrtoint ptr %d_key to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %d_key, align 4
  %arrayidx69 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %tb, ptr %src_bi, align 4
  %arrayidx72 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %66 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx72, align 4
  %bi_bh73 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %68 = ptrtoint ptr %bi_bh73 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %bi_bh73, align 4
  %arrayidx74 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %69 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx74, align 4
  %bi_parent75 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %71 = ptrtoint ptr %bi_parent75 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %bi_parent75, align 4
  %call76 = tail call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %bi_position77 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %72 = ptrtoint ptr %bi_position77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call76, ptr %bi_position77, align 4
  %73 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %tb, ptr %dest_bi, align 4
  %tb_path79 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %74 = ptrtoint ptr %tb_path79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tb_path79, align 8
  %path_elements80 = getelementptr inbounds %struct.treepath, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %sub84 = sub i32 %77, %h
  %add.ptr85 = getelementptr %struct.path_element, ptr %path_elements80, i32 %sub84
  %78 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr85, align 4
  %bi_bh87 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %80 = ptrtoint ptr %bi_bh87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %bi_bh87, align 4
  %81 = load ptr, ptr %tb_path79, align 8
  %path_elements89 = getelementptr inbounds %struct.treepath, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add93 = add i32 %h, 1
  %sub94 = sub i32 %83, %add93
  %add.ptr95 = getelementptr %struct.path_element, ptr %path_elements89, i32 %sub94
  %84 = ptrtoint ptr %add.ptr95 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr95, align 4
  %bi_parent97 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %86 = ptrtoint ptr %bi_parent97 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %bi_parent97, align 4
  %87 = load ptr, ptr %tb_path79, align 8
  %path_elements99 = getelementptr inbounds %struct.treepath, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %sub104 = sub i32 %89, %add93
  %pe_position106 = getelementptr %struct.path_element, ptr %path_elements99, i32 %sub104, i32 1
  %90 = ptrtoint ptr %pe_position106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pe_position106, align 4
  %bi_position107 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %92 = ptrtoint ptr %bi_position107 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %bi_position107, align 4
  %arrayidx108 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %93 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx108, align 4
  %95 = ptrtoint ptr %d_key to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %d_key, align 4
  %arrayidx109 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  br label %sw.epilog

sw.bb110:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %src_bi to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %tb, ptr %src_bi, align 4
  %tb_path112 = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %97 = ptrtoint ptr %tb_path112 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tb_path112, align 8
  %path_elements113 = getelementptr inbounds %struct.treepath, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %sub117 = sub i32 %100, %h
  %add.ptr118 = getelementptr %struct.path_element, ptr %path_elements113, i32 %sub117
  %101 = ptrtoint ptr %add.ptr118 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr118, align 4
  %bi_bh120 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 1
  %103 = ptrtoint ptr %bi_bh120 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %bi_bh120, align 4
  %104 = load ptr, ptr %tb_path112, align 8
  %path_elements122 = getelementptr inbounds %struct.treepath, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add126 = add i32 %h, 1
  %sub127 = sub i32 %106, %add126
  %add.ptr128 = getelementptr %struct.path_element, ptr %path_elements122, i32 %sub127
  %107 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr128, align 4
  %bi_parent130 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 2
  %109 = ptrtoint ptr %bi_parent130 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %bi_parent130, align 4
  %110 = load ptr, ptr %tb_path112, align 8
  %path_elements132 = getelementptr inbounds %struct.treepath, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %sub137 = sub i32 %112, %add126
  %pe_position139 = getelementptr %struct.path_element, ptr %path_elements132, i32 %sub137, i32 1
  %113 = ptrtoint ptr %pe_position139 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pe_position139, align 4
  %bi_position140 = getelementptr inbounds %struct.buffer_info, ptr %src_bi, i32 0, i32 3
  %115 = ptrtoint ptr %bi_position140 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %bi_position140, align 4
  %116 = ptrtoint ptr %dest_bi to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %tb, ptr %dest_bi, align 4
  %arrayidx143 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h
  %117 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx143, align 4
  %bi_bh144 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %119 = ptrtoint ptr %bi_bh144 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %bi_bh144, align 4
  %arrayidx146 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h
  %120 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx146, align 4
  %bi_parent147 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %122 = ptrtoint ptr %bi_parent147 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %bi_parent147, align 4
  %call148 = tail call i32 @get_right_neighbor_position(ptr noundef %tb, i32 noundef %h) #5
  %bi_position149 = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %123 = ptrtoint ptr %bi_position149 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call148, ptr %bi_position149, align 4
  %arrayidx151 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 17, i32 %h
  %124 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx151, align 4
  %126 = ptrtoint ptr %d_key to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %d_key, align 4
  %arrayidx153 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %127 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tb_sb, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %128, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.internal_define_dest_src_infos, ptr noundef nonnull @.str.26, i32 noundef %shift_mode) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb110, %sw.bb70, %sw.bb26, %sw.bb
  %arrayidx153.sink = phi ptr [ %arrayidx153, %sw.bb110 ], [ %arrayidx109, %sw.bb70 ], [ %arrayidx69, %sw.bb26 ], [ %arrayidx25, %sw.bb ]
  %129 = ptrtoint ptr %arrayidx153.sink to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx153.sink, align 4
  %131 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %cf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_insert_key(ptr nocapture noundef readonly %dest_bi, i32 noundef %dest_position_before, ptr noundef %src, i32 noundef %src_position) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bh = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bh, align 4
  %cmp = icmp eq ptr %1, null
  %cmp1 = icmp eq ptr %src, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_key, ptr noundef nonnull @.str.27, i32 noundef 440, ptr noundef nonnull @__func__.internal_insert_key, ptr noundef %src, ptr noundef %1) #8
  unreachable

lor.lhs.false4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_position)
  %cmp5 = icmp slt i32 %src_position, 0
  br i1 %cmp5, label %if.then6, label %do.body10

if.then6:                                         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_key, ptr noundef nonnull @.str.28, i32 noundef 443, ptr noundef nonnull @__func__.internal_insert_key, i32 noundef %src_position, i32 noundef %dest_position_before) #8
  unreachable

do.body10:                                        ; preds = %lor.lhs.false4
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
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %dest_position_before)
  %cmp11 = icmp slt i32 %conv, %dest_position_before
  br i1 %cmp11, label %do.body10.if.then19_crit_edge, label %lor.lhs.false13

do.body10.if.then19_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

lor.lhs.false13:                                  ; preds = %do.body10
  %b_data14 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %7 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data14, align 4
  %blk_nr_item15 = getelementptr inbounds %struct.block_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %blk_nr_item15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %blk_nr_item15, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv16 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %src_position)
  %cmp17.not = icmp ugt i32 %conv16, %src_position
  br i1 %cmp17.not, label %do.body29, label %lor.lhs.false13.if.then19_crit_edge

lor.lhs.false13.if.then19_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false13.if.then19_crit_edge, %do.body10.if.then19_crit_edge
  %b_data23 = getelementptr inbounds %struct.buffer_head, ptr %src, i32 0, i32 5
  %12 = ptrtoint ptr %b_data23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data23, align 4
  %blk_nr_item24 = getelementptr inbounds %struct.block_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %blk_nr_item24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %blk_nr_item24, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv25 = zext i16 %16 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_key, ptr noundef nonnull @.str.29, i32 noundef 448, ptr noundef nonnull @__func__.internal_insert_key, i32 noundef %dest_position_before, i32 noundef %conv, i32 noundef %src_position, i32 noundef %conv25) #8
  unreachable

do.body29:                                        ; preds = %lor.lhs.false13
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %blk_free_space, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %19)
  %cmp32 = icmp ult i16 %19, 16
  br i1 %cmp32, label %if.then34, label %do.end40

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %conv31 = zext i16 %19 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.internal_insert_key, ptr noundef nonnull @.str.30, i32 noundef 450, ptr noundef nonnull @__func__.internal_insert_key, i32 noundef %conv31) #8
  unreachable

do.end40:                                         ; preds = %do.body29
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i, i32 %dest_position_before
  %add.ptr = getelementptr %struct.reiserfs_key, ptr %arrayidx.i, i32 1
  %sub = sub i32 %conv, %dest_position_before
  %mul = shl i32 %sub, 4
  %add = shl nuw nsw i32 %conv, 3
  %mul44 = add nuw nsw i32 %add, 8
  %add45 = add i32 %mul44, %mul
  %20 = call ptr @memmove(ptr %add.ptr, ptr %arrayidx.i, i32 %add45)
  %21 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data14, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %22, i32 24
  %arrayidx.i118 = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i117, i32 %src_position
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx.i118, i32 16)
  %24 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %blk_nr_item, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %add49 = add i16 %26, 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %add49)
  %28 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %blk_nr_item, align 2
  %29 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %blk_free_space, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %sub54 = add i16 %31, -16
  %32 = tail call i16 @llvm.bswap.i16(i16 %sub54)
  %33 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %blk_free_space, align 2
  %34 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dest_bi, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %35, ptr noundef nonnull %1, i32 noundef 0) #5
  %bi_parent = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 2
  %36 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bi_parent, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %do.end40.if.end78_crit_edge, label %if.then57

do.end40.if.end78_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then57:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %b_data59 = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data59, align 4
  %add.ptr60 = getelementptr i8, ptr %39, i32 24
  %blk_nr_item63 = getelementptr inbounds %struct.block_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %blk_nr_item63 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %blk_nr_item63, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv64 = zext i16 %42 to i32
  %mul65 = shl nuw nsw i32 %conv64, 4
  %add.ptr66 = getelementptr i8, ptr %add.ptr60, i32 %mul65
  %bi_position = getelementptr inbounds %struct.buffer_info, ptr %dest_bi, i32 0, i32 3
  %43 = ptrtoint ptr %bi_position to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bi_position, align 4
  %mul67 = shl i32 %44, 3
  %add.ptr68 = getelementptr i8, ptr %add.ptr66, i32 %mul67
  %dc_size = getelementptr inbounds %struct.disk_child, ptr %add.ptr68, i32 0, i32 1
  %45 = ptrtoint ptr %dc_size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dc_size, align 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %add71 = add i16 %47, 16
  %48 = tail call i16 @llvm.bswap.i16(i16 %add71)
  %49 = ptrtoint ptr %dc_size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %dc_size, align 4
  %50 = ptrtoint ptr %dest_bi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dest_bi, align 4
  %52 = ptrtoint ptr %bi_parent to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bi_parent, align 4
  tail call void @do_balance_mark_leaf_dirty(ptr noundef %51, ptr noundef %53, i32 noundef 0) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then57, %do.end40.if.end78_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @replace_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !59, !61, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !81, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/ibalance.c", i32 825, i32 2}
!2 = !{ptr @__func__.balance_internal, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/ibalance.c", i32 840, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/reiserfs/ibalance.c", i32 843, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/ibalance.c", i32 990, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/ibalance.c", i32 991, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/ibalance.c", i32 994, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/ibalance.c", i32 1008, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/ibalance.c", i32 1136, i32 3}
!19 = !{ptr @__func__.balance_internal_when_delete, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/ibalance.c", i32 650, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/ibalance.c", i32 660, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/reiserfs/ibalance.c", i32 664, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/ibalance.c", i32 699, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/ibalance.c", i32 711, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/ibalance.c", i32 723, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/ibalance.c", i32 733, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/ibalance.c", i32 742, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/ibalance.c", i32 754, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__func__.internal_delete_pointers_items, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/ibalance.c", i32 215, i32 2}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/ibalance.c", i32 216, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/ibalance.c", i32 218, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/ibalance.c", i32 231, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/ibalance.c", i32 237, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/ibalance.c", i32 115, i32 3}
!52 = !{ptr @__func__.internal_define_dest_src_infos, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__func__.internal_insert_key, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/reiserfs/ibalance.c", i32 439, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/ibalance.c", i32 441, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/ibalance.c", i32 444, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/reiserfs/ibalance.c", i32 449, i32 2}
!63 = !{ptr @__func__.internal_insert_childs, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/ibalance.c", i32 145, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/reiserfs/ibalance.c", i32 146, i32 2}
!68 = !{ptr @__func__.replace_lkey, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/reiserfs/ibalance.c", i32 762, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @__func__.internal_shift_right, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/reiserfs/ibalance.c", i32 585, i32 4}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__func__.replace_rkey, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/ibalance.c", i32 777, i32 2}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/reiserfs/ibalance.c", i32 780, i32 2}
!79 = !{ptr @__func__.internal_copy_pointers_items, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/reiserfs/ibalance.c", i32 316, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/ibalance.c", i32 318, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/reiserfs/ibalance.c", i32 320, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/ibalance.c", i32 322, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/reiserfs/ibalance.c", i32 323, i32 2}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
