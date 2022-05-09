; ModuleID = '/llk/IR_all_yes/fs/quota/quota_tree.c_pt.bc'
source_filename = "../fs/quota/quota_tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qtree_entry_unused\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_entry_unused\09\09\09\09"
module asm "\09.long\09__crc_qtree_entry_unused\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_entry_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_entry_unused\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_entry_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qtree_write_dquot\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_write_dquot\09\09\09\09"
module asm "\09.long\09__crc_qtree_write_dquot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_write_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_write_dquot\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_write_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qtree_delete_dquot\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_delete_dquot\09\09\09\09"
module asm "\09.long\09__crc_qtree_delete_dquot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_delete_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_delete_dquot\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_delete_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qtree_read_dquot\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_read_dquot\09\09\09\09"
module asm "\09.long\09__crc_qtree_read_dquot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_read_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_read_dquot\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_read_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qtree_release_dquot\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_release_dquot\09\09\09\09"
module asm "\09.long\09__crc_qtree_release_dquot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_release_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_release_dquot\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_release_dquot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qtree_get_next_id\22, \22a\22\09"
module asm "\09.weak\09__crc_qtree_get_next_id\09\09\09\09"
module asm "\09.long\09__crc_qtree_get_next_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtree_get_next_id:\09\09\09\09\09"
module asm "\09.asciz \09\22qtree_get_next_id\22\09\09\09\09\09"
module asm "__kstrtabns_qtree_get_next_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.dqstats = type { [8 x i32], [8 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.kqid = type { %union.anon.67, i32 }
%union.anon.67 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
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
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qt_disk_dqdbheader = type { i32, i32, i16, i16, i32 }
%struct.qtree_fmt_operations = type { ptr, ptr, ptr }

@__UNIQUE_ID_author213 = internal constant [27 x i8] c"quota_tree.author=Jan Kara\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [42 x i8] c"quota_tree.description=Quota trie support\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [36 x i8] c"quota_tree.file=fs/quota/quota_tree\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [23 x i8] c"quota_tree.license=GPL\00", section ".modinfo", align 1
@__kstrtab_qtree_entry_unused = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_entry_unused = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_entry_unused = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_entry_unused to i32), ptr @__kstrtab_qtree_entry_unused, ptr @__kstrtabns_qtree_entry_unused }, section "___ksymtab+qtree_entry_unused", align 4
@__func__.qtree_write_dquot = private unnamed_addr constant [18 x i8] c"qtree_write_dquot\00", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error %zd occurred while creating quota\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dquota write failed\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_qtree_write_dquot = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_write_dquot = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_write_dquot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_write_dquot to i32), ptr @__kstrtab_qtree_write_dquot, ptr @__kstrtabns_qtree_write_dquot }, section "___ksymtab+qtree_write_dquot", align 4
@__kstrtab_qtree_delete_dquot = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_delete_dquot = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_delete_dquot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_delete_dquot to i32), ptr @__kstrtab_qtree_delete_dquot, ptr @__kstrtabns_qtree_delete_dquot }, section "___ksymtab+qtree_delete_dquot", align 4
@__func__.qtree_read_dquot = private unnamed_addr constant [17 x i8] c"qtree_read_dquot\00", align 1
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Quota invalidated while reading!\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't read quota structure for id %u\00", [59 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error while reading quota structure for id %u\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_qtree_read_dquot = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_read_dquot = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_read_dquot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_read_dquot to i32), ptr @__kstrtab_qtree_read_dquot, ptr @__kstrtabns_qtree_read_dquot }, section "___ksymtab+qtree_read_dquot", align 4
@__kstrtab_qtree_release_dquot = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_release_dquot = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_release_dquot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_release_dquot to i32), ptr @__kstrtab_qtree_release_dquot, ptr @__kstrtabns_qtree_release_dquot }, section "___ksymtab+qtree_release_dquot", align 4
@__kstrtab_qtree_get_next_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtree_get_next_id = external dso_local constant [0 x i8], align 1
@__ksymtab_qtree_get_next_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtree_get_next_id to i32), ptr @__kstrtab_qtree_get_next_id, ptr @__kstrtabns_qtree_get_next_id }, section "___ksymtab+qtree_get_next_id", align 4
@__func__.dq_insert_tree = private unnamed_addr constant [15 x i8] c"dq_insert_tree\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Quota tree root isn't allocated!\00", [63 x i8] zeroinitializer }, align 32
@__func__.do_insert_tree = private unnamed_addr constant [15 x i8] c"do_insert_tree\00", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't read tree quota block %u\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Inserting already present quota entry (block %u)\00", [47 x i8] zeroinitializer }, align 32
@__func__.find_free_dqentry = private unnamed_addr constant [18 x i8] c"find_free_dqentry\00", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't remove block (%u) from entry free list\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Data block full but it shouldn't\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't write quota data block %u\00", [32 x i8] zeroinitializer }, align 32
@__func__.remove_free_dqentry = private unnamed_addr constant [20 x i8] c"remove_free_dqentry\00", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't write block (%u) with free entries\00", [55 x i8] zeroinitializer }, align 32
@__func__.write_blk = private unnamed_addr constant [10 x i8] c"write_blk\00", align 1
@dqstats = external dso_local global %struct.dqstats, align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.remove_tree = private unnamed_addr constant [12 x i8] c"remove_tree\00", align 1
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't read quota data block %u\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Getting block too big (%u >= %u)\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't write quota tree block %u\00", [32 x i8] zeroinitializer }, align 32
@__func__.free_dqentry = private unnamed_addr constant [13 x i8] c"free_dqentry\00", align 1
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Quota structure has offset to other block (%u) than it should (%u)\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can't move quota data block (%u) to free list\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't insert quota data block (%u) to free entry list\00", [42 x i8] zeroinitializer }, align 32
@__func__.find_tree_dqentry = private unnamed_addr constant [18 x i8] c"find_tree_dqentry\00", align 1
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't read quota tree block %u\00", [33 x i8] zeroinitializer }, align 32
@__func__.find_block_dqentry = private unnamed_addr constant [19 x i8] c"find_block_dqentry\00", align 1
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Quota for id %u referenced but not present\00", [53 x i8] zeroinitializer }, align 32
@__func__.find_next_id = private unnamed_addr constant [13 x i8] c"find_next_id\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 378, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 390, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 623, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 632, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 652, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 353, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 309, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 321, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 252, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 267, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 274, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 161, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 478, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 484, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 510, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 414, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 433, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 446, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 581, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [25 x i8] c"../fs/quota/quota_tree.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 555, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__ksymtab_qtree_delete_dquot, ptr @__ksymtab_qtree_entry_unused, ptr @__ksymtab_qtree_get_next_id, ptr @__ksymtab_qtree_read_dquot, ptr @__ksymtab_qtree_release_dquot, ptr @__ksymtab_qtree_write_dquot, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_entry_unused(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %disk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_entry_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %disk, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_write_dquot(ptr noundef %info, ptr noundef %dquot) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqi_entry_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %6 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tmp.i, align 4
  %dqi_blocks.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %dqi_blocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i45 = icmp ult i32 %10, 2
  br i1 %cmp.i45, label %dq_insert_tree.exit.thread, label %dq_insert_tree.exit

dq_insert_tree.exit.thread:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dq_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %12, ptr noundef nonnull @__func__.dq_insert_tree, ptr noundef nonnull @.str.5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %if.then5

dq_insert_tree.exit:                              ; preds = %if.then3
  %call.i = call fastcc i32 @do_insert_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dq_insert_tree.exit.if.then5_crit_edge, label %dq_insert_tree.exit.if.end7_crit_edge

dq_insert_tree.exit.if.end7_crit_edge:            ; preds = %dq_insert_tree.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

dq_insert_tree.exit.if.then5_crit_edge:           ; preds = %dq_insert_tree.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %dq_insert_tree.exit.if.then5_crit_edge, %dq_insert_tree.exit.thread
  %retval.0.i54 = phi i32 [ -5, %dq_insert_tree.exit.thread ], [ %call.i, %dq_insert_tree.exit.if.then5_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.qtree_write_dquot, ptr noundef nonnull @.str, i32 noundef %retval.0.i54) #6
  br label %cleanup.sink.split

if.end7:                                          ; preds = %dq_insert_tree.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #6
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 9
  %13 = ptrtoint ptr %dqi_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dqi_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef nonnull %call9.i, ptr noundef %dquot) #6
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #6
  %s_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %quota_write, align 4
  %21 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_entry_size, align 4
  %23 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dq_off, align 8
  %call11 = tail call i32 %20(ptr noundef %3, i32 noundef %1, ptr noundef nonnull %call9.i, i32 noundef %22, i64 noundef %24) #6
  %25 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dqi_entry_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %26)
  %cmp13.not = icmp eq i32 %call11, %26
  br i1 %cmp13.not, label %if.end7.if.end18_crit_edge, label %if.then14

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.qtree_write_dquot, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp15 = icmp sgt i32 %call11, -1
  %spec.store.select = select i1 %cmp15, i32 -28, i32 %call11
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end7.if.end18_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then14 ], [ 0, %if.end7.if.end18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %27 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 3), i64 noundef 1, i32 noundef %27) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18, %if.then5
  %retval.0.ph = phi i32 [ %retval.0.i54, %if.then5 ], [ %ret.0, %if.end18 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__quota_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_delete_dquot(ptr noundef %info, ptr nocapture noundef %dquot) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %tmp, align 4
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %1 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call fastcc i32 @remove_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef nonnull %tmp, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_tree(ptr noundef %info, ptr nocapture noundef %dquot, ptr nocapture noundef %blk, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  %newblk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newblk) #6
  %2 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %newblk, align 4, !annotation !83
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blk, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %7 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dqi_usable_bs, align 4
  %9 = call ptr @memset(ptr %call9.i, i32 0, i32 %8)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dqi_type.i, align 4
  %16 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %4 to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %18 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %13(ptr noundef %6, i32 noundef %15, ptr noundef nonnull %call9.i, i32 noundef %16, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %19 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dq_sb, align 4
  %21 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blk, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %20, ptr noundef nonnull @__func__.remove_tree, ptr noundef nonnull @.str.12, i32 noundef %22) #6
  br label %out_buf

if.end3:                                          ; preds = %if.end
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %23 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %dq_id, align 8
  %24 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt85 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %.elt85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack86 = load i32, ptr %.elt85, align 4
  %26 = insertvalue [2 x i32] %24, i32 %.unpack86, 1
  %call.i90 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %26) #6
  %27 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i = lshr i32 %28, 2
  %dqi_qtree_depth.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 8
  %29 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %31 = xor i32 %depth, -1
  %sub1.i.i = add i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %tobool.not6.i.i = icmp eq i32 %sub1.i.i, 0
  br i1 %tobool.not6.i.i, label %if.end3.get_index.exit_crit_edge, label %if.end3.while.body.i.i_crit_edge

if.end3.while.body.i.i_crit_edge:                 ; preds = %if.end3
  br label %while.body.i.i

if.end3.get_index.exit_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end3.while.body.i.i_crit_edge
  %depth.addr.08.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub1.i.i, %if.end3.while.body.i.i_crit_edge ]
  %id.addr.07.i.i = phi i32 [ %div.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i90, %if.end3.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %depth.addr.08.i.i, -1
  %div.i.i = udiv i32 %id.addr.07.i.i, %shr.i.i
  %tobool.not.i.i91 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i91, label %while.body.i.i.get_index.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.get_index.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

get_index.exit:                                   ; preds = %while.body.i.i.get_index.exit_crit_edge, %if.end3.get_index.exit_crit_edge
  %id.addr.0.lcssa.i.i = phi i32 [ %call.i90, %if.end3.get_index.exit_crit_edge ], [ %div.i.i, %while.body.i.i.get_index.exit_crit_edge ]
  %rem.i.i = urem i32 %id.addr.0.lcssa.i.i, %shr.i.i
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %rem.i.i
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %newblk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp5 = icmp eq i32 %33, 0
  br i1 %cmp5, label %get_index.exit.if.then7_crit_edge, label %lor.lhs.false

get_index.exit.if.then7_crit_edge:                ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false:                                    ; preds = %get_index.exit
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dqi_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %37)
  %cmp6.not = icmp ult i32 %34, %37
  br i1 %cmp6.not, label %if.end10, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %get_index.exit.if.then7_crit_edge
  %dq_sb8 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %38 = ptrtoint ptr %dq_sb8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dq_sb8, align 4
  %dqi_blocks9 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 2
  %40 = ptrtoint ptr %dqi_blocks9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dqi_blocks9, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %39, ptr noundef nonnull @__func__.remove_tree, ptr noundef nonnull @.str.13, i32 noundef %34, i32 noundef %41) #6
  br label %out_buf

if.end10:                                         ; preds = %lor.lhs.false
  %sub = add i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %depth)
  %cmp11 = icmp eq i32 %sub, %depth
  br i1 %cmp11, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.free_dqentry.exit_crit_edge, label %if.end.i99

if.end8.i.i.free_dqentry.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_dqentry.exit

if.end.i99:                                       ; preds = %if.end8.i.i
  %dq_off.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %42 = ptrtoint ptr %dq_off.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dq_off.i, align 8
  %44 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i97 = zext i32 %45 to i64
  %shr.i = ashr i64 %43, %sh_prom.i97
  %conv.i98 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i98)
  %cmp.not.i = icmp eq i64 %shr.i, %conv.i98
  br i1 %cmp.not.i, label %if.end8.i100, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %46 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dq_sb.i, align 4
  %conv7.i = trunc i64 %shr.i to i32
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %47, ptr noundef nonnull @__func__.free_dqentry, ptr noundef nonnull @.str.15, i32 noundef %34, i32 noundef %conv7.i) #6
  br label %out_buf.i

if.end8.i100:                                     ; preds = %if.end.i99
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %50 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dqi_usable_bs, align 4
  %52 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %51)
  %s_op.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 6
  %53 = ptrtoint ptr %s_op.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_op.i.i, align 4
  %quota_read.i.i = getelementptr inbounds %struct.super_operations, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %quota_read.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %quota_read.i.i, align 4
  %57 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dqi_type.i, align 4
  %59 = load i32, ptr %dqi_usable_bs, align 4
  %60 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i.i = zext i32 %61 to i64
  %shl.i.i = shl i64 %shr.i, %sh_prom.i.i
  %call.i.i = tail call i32 %56(ptr noundef %49, i32 noundef %58, ptr noundef nonnull %call9.i.i, i32 noundef %59, i64 noundef %shl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i100
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb13.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %62 = ptrtoint ptr %dq_sb13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dq_sb13.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %63, ptr noundef nonnull @__func__.free_dqentry, ptr noundef nonnull @.str.12, i32 noundef %34) #6
  br label %out_buf.i

if.end14.i:                                       ; preds = %if.end8.i100
  %dqdh_entries.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dqdh_entries.i, align 8
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #6
  %add.i.i = add i16 %66, -1
  %67 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #6
  %68 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %dqdh_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i)
  %tobool16.not.i = icmp eq i16 %add.i.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end14.i
  %call18.i = tail call fastcc i32 @remove_free_dqentry(ptr noundef %info, ptr noundef nonnull %call9.i.i, i32 noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %cmp19.i = icmp sgt i32 %call18.i, -1
  br i1 %cmp19.i, label %if.then21.i, label %if.then17.i.if.then26.i_crit_edge

if.then17.i.if.then26.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then21.i:                                      ; preds = %if.then17.i
  %dqi_free_blk.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 3
  %69 = ptrtoint ptr %dqi_free_blk.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dqi_free_blk.i.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %72 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %call9.i.i, align 128
  %dqdh_prev_free.i.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %dqdh_prev_free.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %dqdh_prev_free.i.i, align 4
  %74 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %dqdh_entries.i, align 8
  %75 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info, align 4
  %s_op.i.i.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %s_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_op.i.i.i, align 4
  %quota_write.i.i.i = getelementptr inbounds %struct.super_operations, ptr %78, i32 0, i32 21
  %79 = ptrtoint ptr %quota_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %quota_write.i.i.i, align 4
  %81 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dqi_type.i, align 4
  %83 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dqi_usable_bs, align 4
  %85 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i.i.i = zext i32 %86 to i64
  %shl.i.i.i = shl i64 %shr.i, %sh_prom.i.i.i
  %call.i.i.i = tail call i32 %80(ptr noundef %76, i32 noundef %82, ptr noundef nonnull %call9.i.i, i32 noundef %84, i64 noundef %shl.i.i.i) #6
  %87 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %88)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, %88
  br i1 %cmp.not.i.i.i, label %write_blk.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %76, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.select.i = select i1 %cmp3.i.i.i, i32 -5, i32 %call.i.i.i
  br label %if.then26.i

write_blk.exit.i.i:                               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i101.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i101.i, label %write_blk.exit.i.i.if.then26.i_crit_edge, label %write_blk.exit.i.i.if.end53.sink.split.i_crit_edge

write_blk.exit.i.i.if.end53.sink.split.i_crit_edge: ; preds = %write_blk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.sink.split.i

write_blk.exit.i.i.if.then26.i_crit_edge:         ; preds = %write_blk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then26.i:                                      ; preds = %write_blk.exit.i.i.if.then26.i_crit_edge, %if.then.i.i.i, %if.then17.i.if.then26.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call.i.i.i, %write_blk.exit.i.i.if.then26.i_crit_edge ], [ %call18.i, %if.then17.i.if.then26.i_crit_edge ], [ %spec.select.i, %if.then.i.i.i ]
  %dq_sb27.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %89 = ptrtoint ptr %dq_sb27.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dq_sb27.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %90, ptr noundef nonnull @__func__.free_dqentry, ptr noundef nonnull @.str.16, i32 noundef %34) #6
  br label %out_buf.i

if.else.i:                                        ; preds = %if.end14.i
  %91 = ptrtoint ptr %dq_off.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %dq_off.i, align 8
  %93 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %notmask.i = shl nsw i32 -1, %94
  %sub.i = xor i32 %notmask.i, -1
  %95 = trunc i64 %92 to i32
  %idx.ext.i = and i32 %sub.i, %95
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %idx.ext.i
  %dqi_entry_size.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %96 = ptrtoint ptr %dqi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dqi_entry_size.i, align 4
  %98 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %97)
  %99 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dqdh_entries.i, align 8
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #6
  %conv33.i = zext i16 %101 to i32
  %102 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i.i = add i32 %103, -16
  %104 = ptrtoint ptr %dqi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dqi_entry_size.i, align 4
  %div.i.i101 = udiv i32 %sub.i.i, %105
  %sub35.i = add i32 %div.i.i101, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i, i32 %conv33.i)
  %cmp36.i = icmp eq i32 %sub35.i, %conv33.i
  br i1 %cmp36.i, label %if.end8.i.i.i, label %if.else45.i

if.end8.i.i.i:                                    ; preds = %if.else.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %103, i32 noundef 3136) #9
  %tobool.not.i.i102 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i102, label %if.end8.i.i.i.if.then42.i_crit_edge, label %if.end.i119.i

if.end8.i.i.i.if.then42.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42.i

if.end.i119.i:                                    ; preds = %if.end8.i.i.i
  %dqi_free_entry.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 4
  %106 = ptrtoint ptr %dqi_free_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dqi_free_entry.i.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #6
  %109 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %call9.i.i, align 128
  %dqdh_prev_free.i109.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %dqdh_prev_free.i109.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dqdh_prev_free.i109.i, align 4
  %111 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info, align 4
  %s_op.i.i110.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %s_op.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_op.i.i110.i, align 4
  %quota_write.i.i111.i = getelementptr inbounds %struct.super_operations, ptr %114, i32 0, i32 21
  %115 = ptrtoint ptr %quota_write.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %quota_write.i.i111.i, align 4
  %117 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dqi_type.i, align 4
  %119 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dqi_usable_bs, align 4
  %121 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i.i115.i = zext i32 %122 to i64
  %shl.i.i116.i = shl i64 %shr.i, %sh_prom.i.i115.i
  %call.i.i117.i = tail call i32 %116(ptr noundef %112, i32 noundef %118, ptr noundef nonnull %call9.i.i, i32 noundef %120, i64 noundef %shl.i.i116.i) #6
  %123 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i117.i, i32 %124)
  %cmp.not.i.i118.i = icmp eq i32 %call.i.i117.i, %124
  br i1 %cmp.not.i.i118.i, label %write_blk.exit.i121.i, label %if.end.i119.i.out_buf.sink.split.i.i_crit_edge

if.end.i119.i.out_buf.sink.split.i.i_crit_edge:   ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.sink.split.i.i

write_blk.exit.i121.i:                            ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117.i)
  %cmp.i120.i = icmp slt i32 %call.i.i117.i, 0
  br i1 %cmp.i120.i, label %write_blk.exit.i121.i.out_buf.i.i_crit_edge, label %if.end3.i.i

write_blk.exit.i121.i.out_buf.i.i_crit_edge:      ; preds = %write_blk.exit.i121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.i.i

if.end3.i.i:                                      ; preds = %write_blk.exit.i121.i
  %125 = ptrtoint ptr %dqi_free_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dqi_free_entry.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool5.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.insert_free_dqentry.exit.i_crit_edge, label %if.then6.i.i

if.end3.i.i.insert_free_dqentry.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %insert_free_dqentry.exit.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  %127 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %info, align 4
  %129 = call ptr @memset(ptr %call9.i.i.i, i32 0, i32 %call.i.i117.i)
  %s_op.i46.i.i = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 6
  %130 = ptrtoint ptr %s_op.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_op.i46.i.i, align 4
  %quota_read.i.i.i = getelementptr inbounds %struct.super_operations, ptr %131, i32 0, i32 20
  %132 = ptrtoint ptr %quota_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %quota_read.i.i.i, align 4
  %134 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dqi_type.i, align 4
  %136 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i48.i.i = zext i32 %126 to i64
  %138 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i50.i.i = zext i32 %139 to i64
  %shl.i51.i.i = shl i64 %conv.i48.i.i, %sh_prom.i50.i.i
  %call.i52.i.i = tail call i32 %133(ptr noundef %128, i32 noundef %135, ptr noundef nonnull %call9.i.i.i, i32 noundef %137, i64 noundef %shl.i51.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i.i)
  %cmp9.i.i = icmp slt i32 %call.i52.i.i, 0
  br i1 %cmp9.i.i, label %if.then6.i.i.out_buf.i.i_crit_edge, label %if.end11.i.i

if.then6.i.i.out_buf.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.i.i

if.end11.i.i:                                     ; preds = %if.then6.i.i
  %dqdh_prev_free12.i.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %dqdh_prev_free12.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %33, ptr %dqdh_prev_free12.i.i, align 4
  %141 = ptrtoint ptr %dqi_free_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dqi_free_entry.i.i, align 4
  %143 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %info, align 4
  %s_op.i53.i.i = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 6
  %145 = ptrtoint ptr %s_op.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_op.i53.i.i, align 4
  %quota_write.i54.i.i = getelementptr inbounds %struct.super_operations, ptr %146, i32 0, i32 21
  %147 = ptrtoint ptr %quota_write.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %quota_write.i54.i.i, align 4
  %149 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dqi_type.i, align 4
  %151 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i57.i.i = zext i32 %142 to i64
  %153 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i59.i.i = zext i32 %154 to i64
  %shl.i60.i.i = shl i64 %conv.i57.i.i, %sh_prom.i59.i.i
  %call.i61.i.i = tail call i32 %148(ptr noundef %144, i32 noundef %150, ptr noundef nonnull %call9.i.i.i, i32 noundef %152, i64 noundef %shl.i60.i.i) #6
  %155 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i61.i.i, i32 %156)
  %cmp.not.i62.i.i = icmp eq i32 %call.i61.i.i, %156
  br i1 %cmp.not.i62.i.i, label %write_blk.exit67.i.i, label %if.end11.i.i.out_buf.sink.split.i.i_crit_edge

if.end11.i.i.out_buf.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.sink.split.i.i

write_blk.exit67.i.i:                             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i.i)
  %cmp15.i.i = icmp slt i32 %call.i61.i.i, 0
  br i1 %cmp15.i.i, label %write_blk.exit67.i.i.out_buf.i.i_crit_edge, label %write_blk.exit67.i.i.insert_free_dqentry.exit.i_crit_edge

write_blk.exit67.i.i.insert_free_dqentry.exit.i_crit_edge: ; preds = %write_blk.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %insert_free_dqentry.exit.i

write_blk.exit67.i.i.out_buf.i.i_crit_edge:       ; preds = %write_blk.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.i.i

out_buf.sink.split.i.i:                           ; preds = %if.end11.i.i.out_buf.sink.split.i.i_crit_edge, %if.end.i119.i.out_buf.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %112, %if.end.i119.i.out_buf.sink.split.i.i_crit_edge ], [ %144, %if.end11.i.i.out_buf.sink.split.i.i_crit_edge ]
  %call.i61.sink78.i.i = phi i32 [ %call.i.i117.i, %if.end.i119.i.out_buf.sink.split.i.i_crit_edge ], [ %call.i61.i.i, %if.end11.i.i.out_buf.sink.split.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %.sink.i.i, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61.sink78.i.i)
  %cmp3.i63.i.i = icmp sgt i32 %call.i61.sink78.i.i, -1
  %spec.select77.i.i = select i1 %cmp3.i63.i.i, i32 -5, i32 %call.i61.sink78.i.i
  br label %out_buf.i.i

out_buf.i.i:                                      ; preds = %out_buf.sink.split.i.i, %write_blk.exit67.i.i.out_buf.i.i_crit_edge, %if.then6.i.i.out_buf.i.i_crit_edge, %write_blk.exit.i121.i.out_buf.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i117.i, %write_blk.exit.i121.i.out_buf.i.i_crit_edge ], [ %call.i52.i.i, %if.then6.i.i.out_buf.i.i_crit_edge ], [ %call.i61.i.i, %write_blk.exit67.i.i.out_buf.i.i_crit_edge ], [ %spec.select77.i.i, %out_buf.sink.split.i.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %if.then42.i

insert_free_dqentry.exit.i:                       ; preds = %write_blk.exit67.i.i.insert_free_dqentry.exit.i_crit_edge, %if.end3.i.i.insert_free_dqentry.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %if.end53.sink.split.i

if.then42.i:                                      ; preds = %out_buf.i.i, %if.end8.i.i.i.if.then42.i_crit_edge
  %retval.0.i122.ph.i = phi i32 [ -12, %if.end8.i.i.i.if.then42.i_crit_edge ], [ %err.0.i.i, %out_buf.i.i ]
  %dq_sb43.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %157 = ptrtoint ptr %dq_sb43.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dq_sb43.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %158, ptr noundef nonnull @__func__.free_dqentry, ptr noundef nonnull @.str.17, i32 noundef %34) #6
  br label %out_buf.i

if.else45.i:                                      ; preds = %if.else.i
  %159 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %info, align 4
  %s_op.i123.i = getelementptr inbounds %struct.super_block, ptr %160, i32 0, i32 6
  %161 = ptrtoint ptr %s_op.i123.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %s_op.i123.i, align 4
  %quota_write.i.i = getelementptr inbounds %struct.super_operations, ptr %162, i32 0, i32 21
  %163 = ptrtoint ptr %quota_write.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %quota_write.i.i, align 4
  %165 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dqi_type.i, align 4
  %167 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i128.i = zext i32 %168 to i64
  %shl.i129.i = shl i64 %shr.i, %sh_prom.i128.i
  %call.i130.i = tail call i32 %164(ptr noundef %160, i32 noundef %166, ptr noundef nonnull %call9.i.i, i32 noundef %103, i64 noundef %shl.i129.i) #6
  %169 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i130.i, i32 %170)
  %cmp.not.i.i = icmp eq i32 %call.i130.i, %170
  br i1 %cmp.not.i.i, label %write_blk.exit.i, label %if.then.i131.i

if.then.i131.i:                                   ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %160, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i130.i)
  %cmp3.i.i = icmp sgt i32 %call.i130.i, -1
  %spec.select147.i = select i1 %cmp3.i.i, i32 -5, i32 %call.i130.i
  br label %if.then49.i

write_blk.exit.i:                                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %cmp47.i = icmp slt i32 %call.i130.i, 0
  br i1 %cmp47.i, label %write_blk.exit.i.if.then49.i_crit_edge, label %write_blk.exit.i.if.end53.i_crit_edge

write_blk.exit.i.if.end53.i_crit_edge:            ; preds = %write_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

write_blk.exit.i.if.then49.i_crit_edge:           ; preds = %write_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49.i

if.then49.i:                                      ; preds = %write_blk.exit.i.if.then49.i_crit_edge, %if.then.i131.i
  %ret.0.i146.i = phi i32 [ %call.i130.i, %write_blk.exit.i.if.then49.i_crit_edge ], [ %spec.select147.i, %if.then.i131.i ]
  %dq_sb50.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %171 = ptrtoint ptr %dq_sb50.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dq_sb50.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %172, ptr noundef nonnull @__func__.free_dqentry, ptr noundef nonnull @.str.10, i32 noundef %34) #6
  br label %out_buf.i

if.end53.sink.split.i:                            ; preds = %insert_free_dqentry.exit.i, %write_blk.exit.i.i.if.end53.sink.split.i_crit_edge
  %dqi_free_entry.i.sink.i = phi ptr [ %dqi_free_entry.i.i, %insert_free_dqentry.exit.i ], [ %dqi_free_blk.i.i, %write_blk.exit.i.i.if.end53.sink.split.i_crit_edge ]
  %173 = ptrtoint ptr %dqi_free_entry.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %34, ptr %dqi_free_entry.i.sink.i, align 4
  %174 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %info, align 4
  %176 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dqi_type.i, align 4
  tail call void @mark_info_dirty(ptr noundef %175, i32 noundef %177) #6
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.sink.split.i, %write_blk.exit.i.if.end53.i_crit_edge
  %ret.1.i = phi i32 [ %call.i130.i, %write_blk.exit.i.if.end53.i_crit_edge ], [ 0, %if.end53.sink.split.i ]
  %178 = ptrtoint ptr %dq_off.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 0, ptr %dq_off.i, align 8
  br label %out_buf.i

out_buf.i:                                        ; preds = %if.end53.i, %if.then49.i, %if.then42.i, %if.then26.i, %if.then12.i, %if.then2.i
  %ret.2.i = phi i32 [ -5, %if.then2.i ], [ %call.i.i, %if.then12.i ], [ %retval.0.i122.ph.i, %if.then42.i ], [ %ret.1.i, %if.end53.i ], [ %ret.0.i146.i, %if.then49.i ], [ %ret.0.ph.i, %if.then26.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %free_dqentry.exit

free_dqentry.exit:                                ; preds = %out_buf.i, %if.end8.i.i.free_dqentry.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.2.i, %out_buf.i ], [ -12, %if.end8.i.i.free_dqentry.exit_crit_edge ]
  %179 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %newblk, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %depth, 1
  %call14 = call fastcc i32 @remove_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef nonnull %newblk, i32 noundef %add)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %free_dqentry.exit
  %ret.0 = phi i32 [ %retval.0.i, %free_dqentry.exit ], [ %call14, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp16 = icmp sgt i32 %ret.0, -1
  br i1 %cmp16, label %land.lhs.true, label %if.end15.out_buf_crit_edge

if.end15.out_buf_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

land.lhs.true:                                    ; preds = %if.end15
  %180 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %newblk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool17.not = icmp eq i32 %181, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.out_buf_crit_edge

land.lhs.true.out_buf_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.then18:                                        ; preds = %land.lhs.true
  %182 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %182)
  %.unpack87 = load i32, ptr %dq_id, align 8
  %183 = insertvalue [2 x i32] undef, i32 %.unpack87, 0
  %184 = ptrtoint ptr %.elt85 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.unpack89 = load i32, ptr %.elt85, align 4
  %185 = insertvalue [2 x i32] %183, i32 %.unpack89, 1
  %call.i103 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %185) #6
  %186 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i105 = lshr i32 %187, 2
  %188 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %sub1.i.i107 = add i32 %189, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i107)
  %tobool.not6.i.i108 = icmp eq i32 %sub1.i.i107, 0
  br i1 %tobool.not6.i.i108, label %if.then18.get_index.exit117_crit_edge, label %if.then18.while.body.i.i114_crit_edge

if.then18.while.body.i.i114_crit_edge:            ; preds = %if.then18
  br label %while.body.i.i114

if.then18.get_index.exit117_crit_edge:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit117

while.body.i.i114:                                ; preds = %while.body.i.i114.while.body.i.i114_crit_edge, %if.then18.while.body.i.i114_crit_edge
  %depth.addr.08.i.i109 = phi i32 [ %dec.i.i111, %while.body.i.i114.while.body.i.i114_crit_edge ], [ %sub1.i.i107, %if.then18.while.body.i.i114_crit_edge ]
  %id.addr.07.i.i110 = phi i32 [ %div.i.i112, %while.body.i.i114.while.body.i.i114_crit_edge ], [ %call.i103, %if.then18.while.body.i.i114_crit_edge ]
  %dec.i.i111 = add i32 %depth.addr.08.i.i109, -1
  %div.i.i112 = udiv i32 %id.addr.07.i.i110, %shr.i.i105
  %tobool.not.i.i113 = icmp eq i32 %dec.i.i111, 0
  br i1 %tobool.not.i.i113, label %while.body.i.i114.get_index.exit117_crit_edge, label %while.body.i.i114.while.body.i.i114_crit_edge

while.body.i.i114.while.body.i.i114_crit_edge:    ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i114

while.body.i.i114.get_index.exit117_crit_edge:    ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit117

get_index.exit117:                                ; preds = %while.body.i.i114.get_index.exit117_crit_edge, %if.then18.get_index.exit117_crit_edge
  %id.addr.0.lcssa.i.i115 = phi i32 [ %call.i103, %if.then18.get_index.exit117_crit_edge ], [ %div.i.i112, %while.body.i.i114.get_index.exit117_crit_edge ]
  %rem.i.i116 = urem i32 %id.addr.0.lcssa.i.i115, %shr.i.i105
  %arrayidx21 = getelementptr i32, ptr %call9.i, i32 %rem.i.i116
  %190 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %arrayidx21, align 4
  %191 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %dqi_usable_bs, align 4
  %shr = lshr i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp23137.not = icmp ult i32 %192, 4
  br i1 %cmp23137.not, label %get_index.exit117.for.end_crit_edge, label %land.rhs.preheader

get_index.exit117.for.end_crit_edge:              ; preds = %get_index.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.preheader:                               ; preds = %get_index.exit117
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %i.0138 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %arrayidx24 = getelementptr i32, ptr %call9.i, i32 %i.0138
  %193 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool25.not = icmp eq i32 %194, 0
  br i1 %tobool25.not, label %for.inc, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %get_index.exit117.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %get_index.exit117.for.end_crit_edge ], [ %umax, %for.inc.for.end_crit_edge ], [ %i.0138, %land.rhs.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %shr)
  %cmp28 = icmp eq i32 %i.0.lcssa, %shr
  br i1 %cmp28, label %land.lhs.true29, label %for.end.if.else33_crit_edge

for.end.if.else33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33

land.lhs.true29:                                  ; preds = %for.end
  %195 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %blk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp30.not = icmp eq i32 %196, 1
  br i1 %cmp30.not, label %land.lhs.true29.if.else33_crit_edge, label %if.then31

land.lhs.true29.if.else33_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call fastcc i32 @put_free_dqblk(ptr noundef %info, ptr noundef nonnull %call9.i, i32 noundef %196)
  %197 = ptrtoint ptr %blk to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %blk, align 4
  br label %out_buf

if.else33:                                        ; preds = %land.lhs.true29.if.else33_crit_edge, %for.end.if.else33_crit_edge
  %198 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %blk, align 4
  %200 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %info, align 4
  %s_op.i118 = getelementptr inbounds %struct.super_block, ptr %201, i32 0, i32 6
  %202 = ptrtoint ptr %s_op.i118 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %s_op.i118, align 4
  %quota_write.i = getelementptr inbounds %struct.super_operations, ptr %203, i32 0, i32 21
  %204 = ptrtoint ptr %quota_write.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %quota_write.i, align 4
  %206 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dqi_type.i, align 4
  %conv.i121 = zext i32 %199 to i64
  %208 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i123 = zext i32 %209 to i64
  %shl.i124 = shl i64 %conv.i121, %sh_prom.i123
  %call.i125 = tail call i32 %205(ptr noundef %201, i32 noundef %207, ptr noundef nonnull %call9.i, i32 noundef %192, i64 noundef %shl.i124) #6
  %210 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i125, i32 %211)
  %cmp.not.i126 = icmp eq i32 %call.i125, %211
  br i1 %cmp.not.i126, label %write_blk.exit, label %if.then.i127

if.then.i127:                                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %201, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i125)
  %cmp3.i = icmp sgt i32 %call.i125, -1
  %spec.select = select i1 %cmp3.i, i32 -5, i32 %call.i125
  br label %if.then36

write_blk.exit:                                   ; preds = %if.else33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp35 = icmp slt i32 %call.i125, 0
  br i1 %cmp35, label %write_blk.exit.if.then36_crit_edge, label %write_blk.exit.out_buf_crit_edge

write_blk.exit.out_buf_crit_edge:                 ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

write_blk.exit.if.then36_crit_edge:               ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.then36:                                        ; preds = %write_blk.exit.if.then36_crit_edge, %if.then.i127
  %ret.0.i136 = phi i32 [ %call.i125, %write_blk.exit.if.then36_crit_edge ], [ %spec.select, %if.then.i127 ]
  %dq_sb37 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %212 = ptrtoint ptr %dq_sb37 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dq_sb37, align 4
  %214 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %blk, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %213, ptr noundef nonnull @__func__.remove_tree, ptr noundef nonnull @.str.14, i32 noundef %215) #6
  br label %out_buf

out_buf:                                          ; preds = %if.then36, %write_blk.exit.out_buf_crit_edge, %if.then31, %land.lhs.true.out_buf_crit_edge, %if.end15.out_buf_crit_edge, %if.then7, %if.then2
  %ret.2 = phi i32 [ %call.i, %if.then2 ], [ -117, %if.then7 ], [ %ret.0, %land.lhs.true.out_buf_crit_edge ], [ %ret.0, %if.end15.out_buf_crit_edge ], [ %ret.0, %if.then31 ], [ %ret.0.i136, %if.then36 ], [ %call.i125, %write_blk.exit.out_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_buf ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_read_dquot(ptr nocapture noundef readonly %info, ptr noundef %dquot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %3, i32 0, i32 31, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.qtree_read_dquot, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %6 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool3.not = icmp eq i64 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %call.i = tail call fastcc i64 @find_tree_dqentry(ptr noundef %info, ptr noundef %dquot, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i)
  %cmp = icmp slt i64 %call.i, 1
  br i1 %cmp, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp7 = icmp slt i64 %call.i, 0
  br i1 %cmp7, label %if.then8, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack95 = load i32, ptr %dq_id, align 8
  %9 = insertvalue [2 x i32] undef, i32 %.unpack95, 0
  %10 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack97 = load i32, ptr %type1, align 4
  %11 = insertvalue [2 x i32] %9, i32 %.unpack97, 1
  %call10 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %11) #6
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.qtree_read_dquot, ptr noundef nonnull @.str.3, i32 noundef %call10) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge
  %12 = ptrtoint ptr %dq_off to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dq_off, align 8
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dq_flags) #6
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %13 = call ptr @memset(ptr %dq_dqb, i32 0, i32 72)
  %conv = trunc i64 %call.i to i32
  br label %out

if.end13:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dq_off to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i, ptr %dq_off, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end.if.end15_crit_edge
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %15 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dqi_entry_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3136) #9
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %s_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_op, align 4
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %quota_read, align 4
  %21 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_entry_size, align 4
  %23 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dq_off, align 8
  %call22 = tail call i32 %20(ptr noundef %3, i32 noundef %1, ptr noundef nonnull %call9.i, i32 noundef %22, i64 noundef %24) #6
  %25 = ptrtoint ptr %dqi_entry_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dqi_entry_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %26)
  %cmp24.not = icmp eq i32 %call22, %26
  br i1 %cmp24.not, label %if.end35, label %if.then26

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp27 = icmp sgt i32 %call22, -1
  %spec.store.select = select i1 %cmp27, i32 -5, i32 %call22
  %27 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %dq_id, align 8
  %28 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %29 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack94 = load i32, ptr %type1, align 4
  %30 = insertvalue [2 x i32] %28, i32 %.unpack94, 1
  %call32 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %30) #6
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.qtree_read_dquot, ptr noundef nonnull @.str.4, i32 noundef %call32) #6
  %dq_flags33 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dq_flags33) #6
  %dq_dqb34 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %31 = call ptr @memset(ptr %dq_dqb34, i32 0, i32 72)
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %out

if.end35:                                         ; preds = %if.end19
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #6
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 9
  %32 = ptrtoint ptr %dqi_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dqi_ops, align 4
  %disk2mem_dqblk = getelementptr inbounds %struct.qtree_fmt_operations, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %disk2mem_dqblk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disk2mem_dqblk, align 4
  tail call void %35(ptr noundef %dquot, ptr noundef nonnull %call9.i) #6
  %dq_dqb36 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %36 = ptrtoint ptr %dq_dqb36 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dq_dqb36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool37.not = icmp eq i64 %37, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.end35.if.end48_crit_edge

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end35
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dqb_bsoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool39.not = icmp eq i64 %39, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true40:                                  ; preds = %land.lhs.true
  %dqb_ihardlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %40 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dqb_ihardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool42.not = icmp eq i64 %41, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %land.lhs.true40.if.end48_crit_edge

land.lhs.true40.if.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %42 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dqb_isoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool45.not = icmp eq i64 %43, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true43.if.end48_crit_edge

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  %dq_flags47 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dq_flags47) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %land.lhs.true43.if.end48_crit_edge, %land.lhs.true40.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end35.if.end48_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #6
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %out

out:                                              ; preds = %if.end48, %if.then26, %if.end11
  %ret.0 = phi i32 [ %spec.store.select, %if.then26 ], [ %call22, %if.end48 ], [ %conv, %if.end11 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %44 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 2), i64 noundef 1, i32 noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -5, %if.then ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_release_dquot(ptr noundef %info, ptr noundef %dquot) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %0 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dq_flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %3 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dqb_curinodes, align 8
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dqb_curspace, align 8
  %or = or i64 %6, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool2.not = icmp eq i64 %or, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %tmp.i, align 4
  %dq_off.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %8 = ptrtoint ptr %dq_off.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dq_off.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %if.then.qtree_delete_dquot.exit_crit_edge, label %if.end.i

if.then.qtree_delete_dquot.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %qtree_delete_dquot.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call fastcc i32 @remove_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  br label %qtree_delete_dquot.exit

qtree_delete_dquot.exit:                          ; preds = %if.end.i, %if.then.qtree_delete_dquot.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.then.qtree_delete_dquot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %return

return:                                           ; preds = %qtree_delete_dquot.exit, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qtree_delete_dquot.exit ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtree_get_next_id(ptr nocapture noundef readonly %info, ptr nocapture noundef %qid) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %qid, align 4
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt6 = getelementptr inbounds [2 x i32], ptr %qid, i32 0, i32 1
  %2 = ptrtoint ptr %.elt6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack7 = load i32, ptr %.elt6, align 4
  %3 = insertvalue [2 x i32] %1, i32 %.unpack7, 1
  %call = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %3) #6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %id, align 4
  %call1 = call fastcc i32 @find_next_id(ptr noundef %info, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %.elt6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %.elt6, align 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %8) #6, !noalias !84
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %8) #6, !noalias !84
  br label %make_kqid.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %8) #6, !noalias !84
  br label %make_kqid.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !noalias !84, !srcloc !87
  unreachable

make_kqid.exit:                                   ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %call8.sink.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call4.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %tmp.sroa.4.0.insert.ext = zext i32 %6 to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %call8.sink.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  %10 = ptrtoint ptr %qid to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %qid, align 4
  br label %cleanup

cleanup:                                          ; preds = %make_kqid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %make_kqid.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_next_id(ptr nocapture noundef readonly %info, ptr nocapture noundef %id, i32 noundef %blk, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dqi_usable_bs, align 4
  %shr83 = lshr i32 %3, 2
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 8
  %4 = ptrtoint ptr %dqi_qtree_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqi_qtree_depth, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %depth)
  %cmp65 = icmp ugt i32 %sub, %depth
  br i1 %cmp65, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %depth, %for.cond.preheader.for.body_crit_edge ]
  %level_inc.066 = phi i32 [ %mul, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %mul = mul i32 %level_inc.066, %shr83
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %level_inc.0.lcssa = phi i32 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %mul, %for.body.for.end_crit_edge ]
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = call ptr @memset(ptr %call9.i, i32 0, i32 %3)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqi_type.i, align 4
  %15 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %blk to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %18 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %12(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %call9.i, i32 noundef %16, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %20, ptr noundef nonnull @__func__.find_next_id, ptr noundef nonnull @.str.18, i32 noundef %blk) #6
  br label %out_buf

if.end5:                                          ; preds = %for.end
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %23 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i = lshr i32 %24, 2
  %25 = ptrtoint ptr %dqi_qtree_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dqi_qtree_depth, align 4
  %27 = xor i32 %depth, -1
  %sub1.i = add i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %tobool.not6.i = icmp eq i32 %sub1.i, 0
  br i1 %tobool.not6.i, label %if.end5.__get_index.exit_crit_edge, label %if.end5.while.body.i_crit_edge

if.end5.while.body.i_crit_edge:                   ; preds = %if.end5
  br label %while.body.i

if.end5.__get_index.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_index.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end5.while.body.i_crit_edge
  %depth.addr.08.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %sub1.i, %if.end5.while.body.i_crit_edge ]
  %id.addr.07.i = phi i32 [ %div.i, %while.body.i.while.body.i_crit_edge ], [ %22, %if.end5.while.body.i_crit_edge ]
  %dec.i = add i32 %depth.addr.08.i, -1
  %div.i = udiv i32 %id.addr.07.i, %shr.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.__get_index.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.__get_index.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_index.exit

__get_index.exit:                                 ; preds = %while.body.i.__get_index.exit_crit_edge, %if.end5.__get_index.exit_crit_edge
  %id.addr.0.lcssa.i = phi i32 [ %22, %if.end5.__get_index.exit_crit_edge ], [ %div.i, %while.body.i.__get_index.exit_crit_edge ]
  %rem.i = urem i32 %id.addr.0.lcssa.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %shr83)
  %cmp868 = icmp ult i32 %rem.i, %shr83
  br i1 %cmp868, label %for.body9.lr.ph, label %__get_index.exit.for.end26_crit_edge

__get_index.exit.for.end26_crit_edge:             ; preds = %__get_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.body9.lr.ph:                                  ; preds = %__get_index.exit
  %add19 = add i32 %depth, 1
  br label %for.body9

for.body9:                                        ; preds = %for.inc24.for.body9_crit_edge, %for.body9.lr.ph
  %i.170 = phi i32 [ %rem.i, %for.body9.lr.ph ], [ %inc25, %for.inc24.for.body9_crit_edge ]
  %ret.069 = phi i32 [ %call.i, %for.body9.lr.ph ], [ %ret.1, %for.inc24.for.body9_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %i.170
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10 = icmp eq i32 %29, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %add = add i32 %31, %level_inc.0.lcssa
  store i32 %add, ptr %id, align 4
  br label %for.inc24

if.end12:                                         ; preds = %for.body9
  %32 = ptrtoint ptr %dqi_qtree_depth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dqi_qtree_depth, align 4
  %sub14 = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %depth)
  %cmp15 = icmp eq i32 %sub14, %depth
  br i1 %cmp15, label %if.end12.out_buf_crit_edge, label %if.end17

if.end12.out_buf_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end17:                                         ; preds = %if.end12
  %34 = tail call i32 @llvm.bswap.i32(i32 %29)
  %call20 = tail call fastcc i32 @find_next_id(ptr noundef %info, ptr noundef %id, i32 noundef %34, i32 noundef %add19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, -2
  br i1 %cmp21.not, label %if.end17.for.inc24_crit_edge, label %if.end17.for.end26_crit_edge

if.end17.for.end26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

if.end17.for.inc24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24

for.inc24:                                        ; preds = %if.end17.for.inc24_crit_edge, %if.then11
  %ret.1 = phi i32 [ %ret.069, %if.then11 ], [ -2, %if.end17.for.inc24_crit_edge ]
  %inc25 = add nuw nsw i32 %i.170, 1
  %cmp8 = icmp ult i32 %inc25, %shr83
  br i1 %cmp8, label %for.inc24.for.body9_crit_edge, label %for.inc24.for.end26_crit_edge

for.inc24.for.end26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.inc24.for.body9_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.end26:                                        ; preds = %for.inc24.for.end26_crit_edge, %if.end17.for.end26_crit_edge, %__get_index.exit.for.end26_crit_edge
  %i.1.lcssa = phi i32 [ %rem.i, %__get_index.exit.for.end26_crit_edge ], [ %i.170, %if.end17.for.end26_crit_edge ], [ %inc25, %for.inc24.for.end26_crit_edge ]
  %ret.2 = phi i32 [ %call.i, %__get_index.exit.for.end26_crit_edge ], [ %call20, %if.end17.for.end26_crit_edge ], [ %ret.1, %for.inc24.for.end26_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %shr83)
  %cmp27 = icmp eq i32 %i.1.lcssa, %shr83
  %spec.select = select i1 %cmp27, i32 -2, i32 %ret.2
  br label %out_buf

out_buf:                                          ; preds = %for.end26, %if.end12.out_buf_crit_edge, %if.then4
  %ret.3 = phi i32 [ %call.i, %if.then4 ], [ %spec.select, %for.end26 ], [ 0, %if.end12.out_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_buf ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_insert_tree(ptr noundef %info, ptr nocapture noundef %dquot, ptr nocapture noundef %treeblk, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  %newblk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newblk) #6
  %2 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %newblk, align 4, !annotation !83
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %treeblk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %treeblk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @get_free_dqblk(ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then2.out_buf_crit_edge, label %if.end5

if.then2.out_buf_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %treeblk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %treeblk, align 4
  %6 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqi_usable_bs, align 4
  %8 = call ptr @memset(ptr %call9.i, i32 0, i32 %7)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %11 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dqi_usable_bs, align 4
  %13 = call ptr @memset(ptr %call9.i, i32 0, i32 %12)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 6
  %14 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dqi_type.i, align 4
  %20 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %4 to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %22 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %17(ptr noundef %10, i32 noundef %19, ptr noundef nonnull %call9.i, i32 noundef %20, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %23 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dq_sb, align 4
  %25 = ptrtoint ptr %treeblk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %treeblk, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %24, ptr noundef nonnull @__func__.do_insert_tree, ptr noundef nonnull @.str.6, i32 noundef %26) #6
  br label %out_buf

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end5
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %27 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %dq_id, align 8
  %28 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt83 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack84 = load i32, ptr %.elt83, align 4
  %30 = insertvalue [2 x i32] %28, i32 %.unpack84, 1
  %call.i91 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %30) #6
  %31 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i = lshr i32 %32, 2
  %dqi_qtree_depth.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 8
  %33 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %35 = xor i32 %depth, -1
  %sub1.i.i = add i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %tobool.not6.i.i = icmp eq i32 %sub1.i.i, 0
  br i1 %tobool.not6.i.i, label %if.end11.get_index.exit_crit_edge, label %if.end11.while.body.i.i_crit_edge

if.end11.while.body.i.i_crit_edge:                ; preds = %if.end11
  br label %while.body.i.i

if.end11.get_index.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end11.while.body.i.i_crit_edge
  %depth.addr.08.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub1.i.i, %if.end11.while.body.i.i_crit_edge ]
  %id.addr.07.i.i = phi i32 [ %div.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i91, %if.end11.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %depth.addr.08.i.i, -1
  %div.i.i = udiv i32 %id.addr.07.i.i, %shr.i.i
  %tobool.not.i.i92 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i92, label %while.body.i.i.get_index.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.get_index.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

get_index.exit:                                   ; preds = %while.body.i.i.get_index.exit_crit_edge, %if.end11.get_index.exit_crit_edge
  %id.addr.0.lcssa.i.i = phi i32 [ %call.i91, %if.end11.get_index.exit_crit_edge ], [ %div.i.i, %while.body.i.i.get_index.exit_crit_edge ]
  %rem.i.i = urem i32 %id.addr.0.lcssa.i.i, %shr.i.i
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %rem.i.i
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %newblk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool13.not = icmp eq i32 %37, 0
  %sub = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %depth)
  %cmp16 = icmp eq i32 %sub, %depth
  br i1 %cmp16, label %if.then17, label %if.else26

if.then17:                                        ; preds = %get_index.exit
  br i1 %tobool13.not, label %if.end8.i.i, label %if.then19

if.then19:                                        ; preds = %if.then17
  %dq_sb20 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %40 = ptrtoint ptr %dq_sb20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dq_sb20, align 4
  %42 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack88 = load i32, ptr %dq_id, align 8
  %43 = insertvalue [2 x i32] undef, i32 %.unpack88, 0
  %44 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack90 = load i32, ptr %.elt83, align 4
  %45 = insertvalue [2 x i32] %43, i32 %.unpack90, 1
  %call.i93 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %45) #6
  %46 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i95 = lshr i32 %47, 2
  %48 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %sub1.i.i97 = add i32 %49, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i97)
  %tobool.not6.i.i98 = icmp eq i32 %sub1.i.i97, 0
  br i1 %tobool.not6.i.i98, label %if.then19.get_index.exit107_crit_edge, label %if.then19.while.body.i.i104_crit_edge

if.then19.while.body.i.i104_crit_edge:            ; preds = %if.then19
  br label %while.body.i.i104

if.then19.get_index.exit107_crit_edge:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit107

while.body.i.i104:                                ; preds = %while.body.i.i104.while.body.i.i104_crit_edge, %if.then19.while.body.i.i104_crit_edge
  %depth.addr.08.i.i99 = phi i32 [ %dec.i.i101, %while.body.i.i104.while.body.i.i104_crit_edge ], [ %sub1.i.i97, %if.then19.while.body.i.i104_crit_edge ]
  %id.addr.07.i.i100 = phi i32 [ %div.i.i102, %while.body.i.i104.while.body.i.i104_crit_edge ], [ %call.i93, %if.then19.while.body.i.i104_crit_edge ]
  %dec.i.i101 = add i32 %depth.addr.08.i.i99, -1
  %div.i.i102 = udiv i32 %id.addr.07.i.i100, %shr.i.i95
  %tobool.not.i.i103 = icmp eq i32 %dec.i.i101, 0
  br i1 %tobool.not.i.i103, label %while.body.i.i104.get_index.exit107_crit_edge, label %while.body.i.i104.while.body.i.i104_crit_edge

while.body.i.i104.while.body.i.i104_crit_edge:    ; preds = %while.body.i.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i104

while.body.i.i104.get_index.exit107_crit_edge:    ; preds = %while.body.i.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit107

get_index.exit107:                                ; preds = %while.body.i.i104.get_index.exit107_crit_edge, %if.then19.get_index.exit107_crit_edge
  %id.addr.0.lcssa.i.i105 = phi i32 [ %call.i93, %if.then19.get_index.exit107_crit_edge ], [ %div.i.i102, %while.body.i.i104.get_index.exit107_crit_edge ]
  %rem.i.i106 = urem i32 %id.addr.0.lcssa.i.i105, %shr.i.i95
  %arrayidx23 = getelementptr i32, ptr %call9.i, i32 %rem.i.i106
  %50 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx23, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %41, ptr noundef nonnull @__func__.do_insert_tree, ptr noundef nonnull @.str.7, i32 noundef %52) #6
  br label %out_buf

if.end8.i.i:                                      ; preds = %if.then17
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.find_free_dqentry.exit_crit_edge, label %if.end.i113

if.end8.i.i.find_free_dqentry.exit_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_free_dqentry.exit

if.end.i113:                                      ; preds = %if.end8.i.i
  %dqi_free_entry.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 4
  %53 = ptrtoint ptr %dqi_free_entry.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dqi_free_entry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.not.i = icmp eq i32 %54, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i113
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info, align 4
  %57 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dqi_usable_bs, align 4
  %59 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %58)
  %s_op.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 6
  %60 = ptrtoint ptr %s_op.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_op.i.i, align 4
  %quota_read.i.i = getelementptr inbounds %struct.super_operations, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %quota_read.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %quota_read.i.i, align 4
  %dqi_type.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %64 = ptrtoint ptr %dqi_type.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dqi_type.i.i, align 4
  %66 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i.i = zext i32 %54 to i64
  %dqi_blocksize_bits.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %67 = ptrtoint ptr %dqi_blocksize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dqi_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i32 %68 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %call.i.i = tail call i32 %63(ptr noundef %56, i32 noundef %65, ptr noundef nonnull %call9.i.i, i32 noundef %66, i64 noundef %shl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i114 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i114, label %if.then2.i.find_free_dqentry.exit.sink.split_crit_edge, label %if.then2.i.if.end13.i_crit_edge

if.then2.i.if.end13.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then2.i.find_free_dqentry.exit.sink.split_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_free_dqentry.exit.sink.split

if.else.i:                                        ; preds = %if.end.i113
  %call7.i115 = tail call fastcc i32 @get_free_dqblk(ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i115)
  %cmp8.i = icmp slt i32 %call7.i115, 0
  br i1 %cmp8.i, label %if.else.i.find_free_dqentry.exit.sink.split_crit_edge, label %if.end10.i

if.else.i.find_free_dqentry.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_free_dqentry.exit.sink.split

if.end10.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dqi_usable_bs, align 4
  %71 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %70)
  %72 = ptrtoint ptr %dqi_free_entry.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call7.i115, ptr %dqi_free_entry.i, align 4
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %73 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dq_sb.i, align 4
  %75 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %.elt83, align 4
  tail call void @mark_info_dirty(ptr noundef %74, i32 noundef %76) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end10.i, %if.then2.i.if.end13.i_crit_edge
  %blk.0.i = phi i32 [ %54, %if.then2.i.if.end13.i_crit_edge ], [ %call7.i115, %if.end10.i ]
  %dqdh_entries.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %dqdh_entries.i, align 8
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #6
  %conv.i116 = zext i16 %79 to i32
  %add.i = add nuw nsw i32 %conv.i116, 1
  %80 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i.i = add i32 %81, -16
  %dqi_entry_size.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %82 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dqi_entry_size.i.i, align 4
  %div.i.i117 = udiv i32 %sub.i.i, %83
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i.i117)
  %cmp15.not.i = icmp slt i32 %add.i, %div.i.i117
  br i1 %cmp15.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then17.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  %call18.i = tail call fastcc i32 @remove_free_dqentry(ptr noundef %info, ptr noundef nonnull %call9.i.i, i32 noundef %blk.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.then17.i.if.end24.i_crit_edge

if.then17.i.if.end24.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb22.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %84 = ptrtoint ptr %dq_sb22.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dq_sb22.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %85, ptr noundef nonnull @__func__.find_free_dqentry, ptr noundef nonnull @.str.8, i32 noundef %blk.0.i) #6
  br label %find_free_dqentry.exit.sink.split

if.end24.i:                                       ; preds = %if.then17.i.if.end24.i_crit_edge, %if.end13.i.if.end24.i_crit_edge
  %86 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %dqdh_entries.i, align 8
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #6
  %add.i.i = add i16 %88, 1
  %89 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #6
  %90 = ptrtoint ptr %dqdh_entries.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %dqdh_entries.i, align 8
  %91 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i109.i = add i32 %92, -16
  %93 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dqi_entry_size.i.i, align 4
  %div.i111.i = udiv i32 %sub.i109.i, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp3.not.i.i = icmp eq i32 %94, 0
  %95 = add i32 %94, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %sub.i109.i)
  %.not.i = icmp ult i32 %95, %sub.i109.i
  br i1 %.not.i, label %for.body.i.preheader.preheader.i, label %if.end24.i.for.end.i_crit_edge

if.end24.i.for.end.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.preheader.preheader.i:                 ; preds = %if.end24.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 16
  br label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %if.end32.i.for.body.i.preheader.i_crit_edge, %for.body.i.preheader.preheader.i
  %ddquot.0144.i = phi ptr [ %add.ptr33.i, %if.end32.i.for.body.i.preheader.i_crit_edge ], [ %add.ptr.i, %for.body.i.preheader.preheader.i ]
  %i.0143.i = phi i32 [ %inc.i, %if.end32.i.for.body.i.preheader.i_crit_edge ], [ 0, %for.body.i.preheader.preheader.i ]
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %94
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.for.end.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.04.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr i8, ptr %ddquot.0144.i, i32 %i.04.i.i
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i118 = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i118, label %for.cond.i.i, label %if.end32.i

if.end32.i:                                       ; preds = %for.body.i.i
  %add.ptr33.i = getelementptr i8, ptr %ddquot.0144.i, i32 %94
  %inc.i = add nuw i32 %i.0143.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %div.i111.i)
  %cmp27.i = icmp uge i32 %inc.i, %div.i111.i
  %or.cond.i = or i1 %cmp3.not.i.i, %cmp27.i
  br i1 %or.cond.i, label %if.end32.i.for.end.i_crit_edge, label %if.end32.i.for.body.i.preheader.i_crit_edge

if.end32.i.for.body.i.preheader.i_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader.i

if.end32.i.for.end.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end32.i.for.end.i_crit_edge, %for.cond.i.i.for.end.i_crit_edge, %if.end24.i.for.end.i_crit_edge
  %i.0140.i = phi i32 [ 0, %if.end24.i.for.end.i_crit_edge ], [ %i.0143.i, %for.cond.i.i.for.end.i_crit_edge ], [ %inc.i, %if.end32.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0140.i, i32 %div.i111.i)
  %cmp35.i = icmp eq i32 %i.0140.i, %div.i111.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb38.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %98 = ptrtoint ptr %dq_sb38.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dq_sb38.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %99, ptr noundef nonnull @__func__.find_free_dqentry, ptr noundef nonnull @.str.9) #6
  br label %find_free_dqentry.exit.sink.split

if.end39.i:                                       ; preds = %for.end.i
  %100 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %info, align 4
  %s_op.i117.i = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %s_op.i117.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_op.i117.i, align 4
  %quota_write.i.i = getelementptr inbounds %struct.super_operations, ptr %103, i32 0, i32 21
  %104 = ptrtoint ptr %quota_write.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %quota_write.i.i, align 4
  %dqi_type.i118.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %106 = ptrtoint ptr %dqi_type.i118.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dqi_type.i118.i, align 4
  %conv.i120.i = zext i32 %blk.0.i to i64
  %dqi_blocksize_bits.i121.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %108 = ptrtoint ptr %dqi_blocksize_bits.i121.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dqi_blocksize_bits.i121.i, align 4
  %sh_prom.i122.i = zext i32 %109 to i64
  %shl.i123.i = shl i64 %conv.i120.i, %sh_prom.i122.i
  %call.i124.i = tail call i32 %105(ptr noundef %101, i32 noundef %107, ptr noundef nonnull %call9.i.i, i32 noundef %92, i64 noundef %shl.i123.i) #6
  %110 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i124.i, i32 %111)
  %cmp.not.i.i = icmp eq i32 %call.i124.i, %111
  br i1 %cmp.not.i.i, label %write_blk.exit.i, label %if.then.i125.i

if.then.i125.i:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %101, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i124.i)
  %cmp3.i.i = icmp sgt i32 %call.i124.i, -1
  %spec.select.i = select i1 %cmp3.i.i, i32 -5, i32 %call.i124.i
  br label %if.then43.i

write_blk.exit.i:                                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %cmp41.i = icmp slt i32 %call.i124.i, 0
  br i1 %cmp41.i, label %write_blk.exit.i.if.then43.i_crit_edge, label %if.end45.i

write_blk.exit.i.if.then43.i_crit_edge:           ; preds = %write_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.then43.i:                                      ; preds = %write_blk.exit.i.if.then43.i_crit_edge, %if.then.i125.i
  %ret.0 = phi i32 [ %call.i124.i, %write_blk.exit.i.if.then43.i_crit_edge ], [ %spec.select.i, %if.then.i125.i ]
  %dq_sb44.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %112 = ptrtoint ptr %dq_sb44.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dq_sb44.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %113, ptr noundef nonnull @__func__.find_free_dqentry, ptr noundef nonnull @.str.10, i32 noundef %blk.0.i) #6
  br label %find_free_dqentry.exit.sink.split

if.end45.i:                                       ; preds = %write_blk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %dqi_blocksize_bits.i121.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dqi_blocksize_bits.i121.i, align 4
  %sh_prom.i119 = zext i32 %115 to i64
  %shl.i120 = shl i64 %conv.i120.i, %sh_prom.i119
  %add47.i = add i64 %shl.i120, 16
  %116 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dqi_entry_size.i.i, align 4
  %mul.i = mul i32 %117, %i.0140.i
  %conv49.i = zext i32 %mul.i to i64
  %add50.i = add i64 %add47.i, %conv49.i
  %dq_off.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %118 = ptrtoint ptr %dq_off.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add50.i, ptr %dq_off.i, align 8
  br label %find_free_dqentry.exit.sink.split

find_free_dqentry.exit.sink.split:                ; preds = %if.end45.i, %if.then43.i, %if.then37.i, %if.then21.i, %if.else.i.find_free_dqentry.exit.sink.split_crit_edge, %if.then2.i.find_free_dqentry.exit.sink.split_crit_edge
  %ret.2.ph = phi i32 [ %call.i124.i, %if.end45.i ], [ %call7.i115, %if.else.i.find_free_dqentry.exit.sink.split_crit_edge ], [ -5, %if.then37.i ], [ %ret.0, %if.then43.i ], [ %call18.i, %if.then21.i ], [ %call.i.i, %if.then2.i.find_free_dqentry.exit.sink.split_crit_edge ]
  %retval.0.i.ph = phi i32 [ %blk.0.i, %if.end45.i ], [ 0, %if.else.i.find_free_dqentry.exit.sink.split_crit_edge ], [ 0, %if.then37.i ], [ 0, %if.then43.i ], [ 0, %if.then21.i ], [ 0, %if.then2.i.find_free_dqentry.exit.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %find_free_dqentry.exit

find_free_dqentry.exit:                           ; preds = %find_free_dqentry.exit.sink.split, %if.end8.i.i.find_free_dqentry.exit_crit_edge
  %ret.2 = phi i32 [ -12, %if.end8.i.i.find_free_dqentry.exit_crit_edge ], [ %ret.2.ph, %find_free_dqentry.exit.sink.split ]
  %retval.0.i = phi i32 [ 0, %if.end8.i.i.find_free_dqentry.exit_crit_edge ], [ %retval.0.i.ph, %find_free_dqentry.exit.sink.split ]
  %119 = ptrtoint ptr %newblk to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i, ptr %newblk, align 4
  br label %if.end28

if.else26:                                        ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %depth, 1
  %call27 = call fastcc i32 @do_insert_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef nonnull %newblk, i32 noundef %add)
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %find_free_dqentry.exit
  %ret.3 = phi i32 [ %ret.2, %find_free_dqentry.exit ], [ %call27, %if.else26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.3)
  %cmp30 = icmp sgt i32 %ret.3, -1
  %or.cond = select i1 %tobool13.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.end28
  %120 = ptrtoint ptr %newblk to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %newblk, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %123 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack85 = load i32, ptr %dq_id, align 8
  %124 = insertvalue [2 x i32] undef, i32 %.unpack85, 0
  %125 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack87 = load i32, ptr %.elt83, align 4
  %126 = insertvalue [2 x i32] %124, i32 %.unpack87, 1
  %call.i121 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %126) #6
  %127 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i123 = lshr i32 %128, 2
  %129 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %sub1.i.i125 = add i32 %130, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i125)
  %tobool.not6.i.i126 = icmp eq i32 %sub1.i.i125, 0
  br i1 %tobool.not6.i.i126, label %if.then31.get_index.exit135_crit_edge, label %if.then31.while.body.i.i132_crit_edge

if.then31.while.body.i.i132_crit_edge:            ; preds = %if.then31
  br label %while.body.i.i132

if.then31.get_index.exit135_crit_edge:            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit135

while.body.i.i132:                                ; preds = %while.body.i.i132.while.body.i.i132_crit_edge, %if.then31.while.body.i.i132_crit_edge
  %depth.addr.08.i.i127 = phi i32 [ %dec.i.i129, %while.body.i.i132.while.body.i.i132_crit_edge ], [ %sub1.i.i125, %if.then31.while.body.i.i132_crit_edge ]
  %id.addr.07.i.i128 = phi i32 [ %div.i.i130, %while.body.i.i132.while.body.i.i132_crit_edge ], [ %call.i121, %if.then31.while.body.i.i132_crit_edge ]
  %dec.i.i129 = add i32 %depth.addr.08.i.i127, -1
  %div.i.i130 = udiv i32 %id.addr.07.i.i128, %shr.i.i123
  %tobool.not.i.i131 = icmp eq i32 %dec.i.i129, 0
  br i1 %tobool.not.i.i131, label %while.body.i.i132.get_index.exit135_crit_edge, label %while.body.i.i132.while.body.i.i132_crit_edge

while.body.i.i132.while.body.i.i132_crit_edge:    ; preds = %while.body.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i132

while.body.i.i132.get_index.exit135_crit_edge:    ; preds = %while.body.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit135

get_index.exit135:                                ; preds = %while.body.i.i132.get_index.exit135_crit_edge, %if.then31.get_index.exit135_crit_edge
  %id.addr.0.lcssa.i.i133 = phi i32 [ %call.i121, %if.then31.get_index.exit135_crit_edge ], [ %div.i.i130, %while.body.i.i132.get_index.exit135_crit_edge ]
  %rem.i.i134 = urem i32 %id.addr.0.lcssa.i.i133, %shr.i.i123
  %arrayidx34 = getelementptr i32, ptr %call9.i, i32 %rem.i.i134
  %131 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %122, ptr %arrayidx34, align 4
  %132 = ptrtoint ptr %treeblk to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %treeblk, align 4
  %134 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %info, align 4
  %s_op.i136 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %s_op.i136 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_op.i136, align 4
  %quota_write.i = getelementptr inbounds %struct.super_operations, ptr %137, i32 0, i32 21
  %138 = ptrtoint ptr %quota_write.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %quota_write.i, align 4
  %dqi_type.i137 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %140 = ptrtoint ptr %dqi_type.i137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dqi_type.i137, align 4
  %142 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i139 = zext i32 %133 to i64
  %dqi_blocksize_bits.i140 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %144 = ptrtoint ptr %dqi_blocksize_bits.i140 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dqi_blocksize_bits.i140, align 4
  %sh_prom.i141 = zext i32 %145 to i64
  %shl.i142 = shl i64 %conv.i139, %sh_prom.i141
  %call.i143 = tail call i32 %139(ptr noundef %135, i32 noundef %141, ptr noundef nonnull %call9.i, i32 noundef %143, i64 noundef %shl.i142) #6
  %146 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i143, i32 %147)
  %cmp.not.i = icmp eq i32 %call.i143, %147
  br i1 %cmp.not.i, label %get_index.exit135.out_buf_crit_edge, label %if.then.i144

get_index.exit135.out_buf_crit_edge:              ; preds = %get_index.exit135
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.then.i144:                                     ; preds = %get_index.exit135
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %135, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i143)
  %cmp3.i = icmp sgt i32 %call.i143, -1
  %spec.store.select.i = select i1 %cmp3.i, i32 -5, i32 %call.i143
  br label %out_buf

if.else36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp39 = icmp slt i32 %ret.3, 0
  %or.cond171 = select i1 %tobool1.not, i1 %cmp39, i1 false
  br i1 %or.cond171, label %if.then40, label %if.else36.out_buf_crit_edge

if.else36.out_buf_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.then40:                                        ; preds = %if.else36
  %148 = ptrtoint ptr %treeblk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %treeblk, align 4
  %dqi_free_blk.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 3
  %150 = ptrtoint ptr %dqi_free_blk.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dqi_free_blk.i, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #6
  %153 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %call9.i, align 128
  %dqdh_prev_free.i = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i, i32 0, i32 1
  %154 = ptrtoint ptr %dqdh_prev_free.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %dqdh_prev_free.i, align 4
  %dqdh_entries.i145 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i, i32 0, i32 2
  %155 = ptrtoint ptr %dqdh_entries.i145 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %dqdh_entries.i145, align 8
  %156 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %info, align 4
  %s_op.i.i146 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %s_op.i.i146 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_op.i.i146, align 4
  %quota_write.i.i147 = getelementptr inbounds %struct.super_operations, ptr %159, i32 0, i32 21
  %160 = ptrtoint ptr %quota_write.i.i147 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %quota_write.i.i147, align 4
  %dqi_type.i.i148 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %162 = ptrtoint ptr %dqi_type.i.i148 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dqi_type.i.i148, align 4
  %164 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i.i150 = zext i32 %149 to i64
  %dqi_blocksize_bits.i.i151 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %166 = ptrtoint ptr %dqi_blocksize_bits.i.i151 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dqi_blocksize_bits.i.i151, align 4
  %sh_prom.i.i152 = zext i32 %167 to i64
  %shl.i.i153 = shl i64 %conv.i.i150, %sh_prom.i.i152
  %call.i.i154 = tail call i32 %161(ptr noundef %157, i32 noundef %163, ptr noundef nonnull %call9.i, i32 noundef %165, i64 noundef %shl.i.i153) #6
  %168 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i154, i32 %169)
  %cmp.not.i.i155 = icmp eq i32 %call.i.i154, %169
  br i1 %cmp.not.i.i155, label %write_blk.exit.i160, label %if.then.i.i158

if.then.i.i158:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %157, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  br label %out_buf

write_blk.exit.i160:                              ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp.i159 = icmp slt i32 %call.i.i154, 0
  br i1 %cmp.i159, label %write_blk.exit.i160.out_buf_crit_edge, label %if.end.i161

write_blk.exit.i160.out_buf_crit_edge:            ; preds = %write_blk.exit.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end.i161:                                      ; preds = %write_blk.exit.i160
  call void @__sanitizer_cov_trace_pc() #8
  %170 = ptrtoint ptr %dqi_free_blk.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %149, ptr %dqi_free_blk.i, align 4
  %171 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %info, align 4
  %173 = ptrtoint ptr %dqi_type.i.i148 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dqi_type.i.i148, align 4
  tail call void @mark_info_dirty(ptr noundef %172, i32 noundef %174) #6
  br label %out_buf

out_buf:                                          ; preds = %if.end.i161, %write_blk.exit.i160.out_buf_crit_edge, %if.then.i.i158, %if.else36.out_buf_crit_edge, %if.then.i144, %get_index.exit135.out_buf_crit_edge, %get_index.exit107, %if.then9, %if.then2.out_buf_crit_edge
  %ret.4 = phi i32 [ %call3, %if.then2.out_buf_crit_edge ], [ %ret.3, %if.else36.out_buf_crit_edge ], [ -5, %get_index.exit107 ], [ %call.i, %if.then9 ], [ %spec.store.select.i, %if.then.i144 ], [ %call.i143, %get_index.exit135.out_buf_crit_edge ], [ %ret.3, %if.then.i.i158 ], [ %ret.3, %write_blk.exit.i160.out_buf_crit_edge ], [ %ret.3, %if.end.i161 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out_buf ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newblk) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_free_dqblk(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dqi_free_blk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %6 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dqi_usable_bs, align 4
  %8 = call ptr @memset(ptr %call9.i, i32 0, i32 %7)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqi_type.i, align 4
  %15 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %3 to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %17 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %12(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %call9.i, i32 noundef %15, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2.out_buf_crit_edge, label %if.end6

if.then2.out_buf_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call9.i, align 128
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dqi_free_blk, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  %22 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dqi_usable_bs, align 4
  %24 = call ptr @memset(ptr %call9.i, i32 0, i32 %23)
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dqi_blocks, align 4
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %s_op.i36 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %s_op.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_op.i36, align 4
  %quota_write.i = getelementptr inbounds %struct.super_operations, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %quota_write.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %quota_write.i, align 4
  %dqi_type.i37 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %dqi_type.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dqi_type.i37, align 4
  %35 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i39 = zext i32 %26 to i64
  %dqi_blocksize_bits.i40 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %36 = ptrtoint ptr %dqi_blocksize_bits.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dqi_blocksize_bits.i40, align 4
  %sh_prom.i41 = zext i32 %37 to i64
  %shl.i42 = shl i64 %conv.i39, %sh_prom.i41
  %call.i43 = tail call i32 %32(ptr noundef %28, i32 noundef %34, ptr noundef nonnull %call9.i, i32 noundef %35, i64 noundef %shl.i42) #6
  %38 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i43, i32 %39)
  %cmp.not.i = icmp eq i32 %call.i43, %39
  br i1 %cmp.not.i, label %write_blk.exit, label %if.then.i44

if.then.i44:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %28, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i43)
  %cmp3.i = icmp sgt i32 %call.i43, -1
  %spec.select = select i1 %cmp3.i, i32 -5, i32 %call.i43
  br label %out_buf

write_blk.exit:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp10 = icmp slt i32 %call.i43, 0
  br i1 %cmp10, label %write_blk.exit.out_buf_crit_edge, label %if.end12

write_blk.exit.out_buf_crit_edge:                 ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end12:                                         ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dqi_blocks, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %dqi_blocks, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end6
  %blk.0 = phi i32 [ %3, %if.end6 ], [ %41, %if.end12 ]
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 4
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %44 = ptrtoint ptr %dqi_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dqi_type, align 4
  tail call void @mark_info_dirty(ptr noundef %43, i32 noundef %45) #6
  br label %out_buf

out_buf:                                          ; preds = %if.end14, %write_blk.exit.out_buf_crit_edge, %if.then.i44, %if.then2.out_buf_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then2.out_buf_crit_edge ], [ %blk.0, %if.end14 ], [ %call.i43, %write_blk.exit.out_buf_crit_edge ], [ %spec.select, %if.then.i44 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_buf ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @put_free_dqblk(ptr nocapture noundef %info, ptr noundef %buf, i32 noundef %blk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_free_blk, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %buf, align 4
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %dqdh_prev_free to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dqdh_prev_free, align 4
  %dqdh_entries = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %dqdh_entries to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %dqdh_entries, align 4
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_op.i, align 4
  %quota_write.i = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %quota_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quota_write.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dqi_type.i, align 4
  %dqi_usable_bs.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %14 = ptrtoint ptr %dqi_usable_bs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dqi_usable_bs.i, align 4
  %conv.i = zext i32 %blk to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %17 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %11(ptr noundef %7, i32 noundef %13, ptr noundef %buf, i32 noundef %15, i64 noundef %shl.i) #6
  %18 = ptrtoint ptr %dqi_usable_bs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dqi_usable_bs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %19)
  %cmp.not.i = icmp eq i32 %call.i, %19
  br i1 %cmp.not.i, label %write_blk.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %7, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3.i = icmp sgt i32 %call.i, -1
  %spec.select = select i1 %cmp3.i, i32 -5, i32 %call.i
  br label %cleanup

write_blk.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %write_blk.exit.cleanup_crit_edge, label %if.end

write_blk.exit.cleanup_crit_edge:                 ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dqi_free_blk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %blk, ptr %dqi_free_blk, align 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %23 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dqi_type.i, align 4
  tail call void @mark_info_dirty(ptr noundef %22, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %write_blk.exit.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %write_blk.exit.cleanup_crit_edge ], [ %spec.select, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_info_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_free_dqentry(ptr noundef %info, ptr noundef %buf, i32 noundef %blk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %dqdh_prev_free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dqdh_prev_free, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %10 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dqi_usable_bs, align 4
  %12 = call ptr @memset(ptr %call9.i, i32 0, i32 %11)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6
  %13 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %17 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_type.i, align 4
  %19 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %4 to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %21 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %16(ptr noundef %9, i32 noundef %18, ptr noundef nonnull %call9.i, i32 noundef %19, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2.out_buf_crit_edge, label %if.end5

if.then2.out_buf_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end5:                                          ; preds = %if.then2
  %22 = ptrtoint ptr %dqdh_prev_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dqdh_prev_free, align 4
  %dqdh_prev_free7 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %call9.i, i32 0, i32 1
  %24 = ptrtoint ptr %dqdh_prev_free7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dqdh_prev_free7, align 4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %s_op.i71 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %s_op.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_op.i71, align 4
  %quota_write.i = getelementptr inbounds %struct.super_operations, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %quota_write.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %quota_write.i, align 4
  %31 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dqi_type.i, align 4
  %33 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dqi_usable_bs, align 4
  %35 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i76 = zext i32 %36 to i64
  %shl.i77 = shl i64 %conv.i, %sh_prom.i76
  %call.i78 = tail call i32 %30(ptr noundef %26, i32 noundef %32, ptr noundef nonnull %call9.i, i32 noundef %34, i64 noundef %shl.i77) #6
  %37 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i78, i32 %38)
  %cmp.not.i = icmp eq i32 %call.i78, %38
  br i1 %cmp.not.i, label %write_blk.exit, label %if.end5.out_buf.sink.split_crit_edge

if.end5.out_buf.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.sink.split

write_blk.exit:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp9 = icmp slt i32 %call.i78, 0
  br i1 %cmp9, label %write_blk.exit.out_buf_crit_edge, label %write_blk.exit.if.end12_crit_edge

write_blk.exit.if.end12_crit_edge:                ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

write_blk.exit.out_buf_crit_edge:                 ; preds = %write_blk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end12:                                         ; preds = %write_blk.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %41 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dqi_usable_bs, align 4
  %43 = call ptr @memset(ptr %call9.i, i32 0, i32 %42)
  %s_op.i81 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 6
  %44 = ptrtoint ptr %s_op.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_op.i81, align 4
  %quota_read.i82 = getelementptr inbounds %struct.super_operations, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %quota_read.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %quota_read.i82, align 4
  %dqi_type.i83 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %48 = ptrtoint ptr %dqi_type.i83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dqi_type.i83, align 4
  %50 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i84 = zext i32 %7 to i64
  %dqi_blocksize_bits.i85 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %51 = ptrtoint ptr %dqi_blocksize_bits.i85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dqi_blocksize_bits.i85, align 4
  %sh_prom.i86 = zext i32 %52 to i64
  %shl.i87 = shl i64 %conv.i84, %sh_prom.i86
  %call.i88 = tail call i32 %47(ptr noundef %40, i32 noundef %49, ptr noundef nonnull %call9.i, i32 noundef %50, i64 noundef %shl.i87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp16 = icmp slt i32 %call.i88, 0
  br i1 %cmp16, label %if.then14.out_buf_crit_edge, label %if.end18

if.then14.out_buf_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end18:                                         ; preds = %if.then14
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf, align 4
  %55 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %call9.i, align 128
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info, align 4
  %s_op.i89 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %s_op.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_op.i89, align 4
  %quota_write.i90 = getelementptr inbounds %struct.super_operations, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %quota_write.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %quota_write.i90, align 4
  %62 = ptrtoint ptr %dqi_type.i83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dqi_type.i83, align 4
  %64 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dqi_usable_bs, align 4
  %66 = ptrtoint ptr %dqi_blocksize_bits.i85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dqi_blocksize_bits.i85, align 4
  %sh_prom.i95 = zext i32 %67 to i64
  %shl.i96 = shl i64 %conv.i84, %sh_prom.i95
  %call.i97 = tail call i32 %61(ptr noundef %57, i32 noundef %63, ptr noundef nonnull %call9.i, i32 noundef %65, i64 noundef %shl.i96) #6
  %68 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i97, i32 %69)
  %cmp.not.i98 = icmp eq i32 %call.i97, %69
  br i1 %cmp.not.i98, label %write_blk.exit103, label %if.end18.out_buf.sink.split_crit_edge

if.end18.out_buf.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf.sink.split

write_blk.exit103:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp22 = icmp slt i32 %call.i97, 0
  br i1 %cmp22, label %write_blk.exit103.out_buf_crit_edge, label %write_blk.exit103.if.end25_crit_edge

write_blk.exit103.if.end25_crit_edge:             ; preds = %write_blk.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

write_blk.exit103.out_buf_crit_edge:              ; preds = %write_blk.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 4
  %70 = ptrtoint ptr %dqi_free_entry to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %4, ptr %dqi_free_entry, align 4
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 4
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %73 = ptrtoint ptr %dqi_type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dqi_type, align 4
  tail call void @mark_info_dirty(ptr noundef %72, i32 noundef %74) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else, %write_blk.exit103.if.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  %75 = ptrtoint ptr %dqdh_prev_free to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %dqdh_prev_free, align 4
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %buf, align 4
  %77 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %info, align 4
  %s_op.i104 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %s_op.i104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_op.i104, align 4
  %quota_write.i105 = getelementptr inbounds %struct.super_operations, ptr %80, i32 0, i32 21
  %81 = ptrtoint ptr %quota_write.i105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %quota_write.i105, align 4
  %dqi_type.i106 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %83 = ptrtoint ptr %dqi_type.i106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dqi_type.i106, align 4
  %85 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i108 = zext i32 %blk to i64
  %dqi_blocksize_bits.i109 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %87 = ptrtoint ptr %dqi_blocksize_bits.i109 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dqi_blocksize_bits.i109, align 4
  %sh_prom.i110 = zext i32 %88 to i64
  %shl.i111 = shl i64 %conv.i108, %sh_prom.i110
  %call.i112 = tail call i32 %82(ptr noundef %78, i32 noundef %84, ptr noundef %buf, i32 noundef %86, i64 noundef %shl.i111) #6
  %89 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dqi_usable_bs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i112, i32 %90)
  %cmp.not.i113 = icmp eq i32 %call.i112, %90
  br i1 %cmp.not.i113, label %write_blk.exit118, label %if.then.i116

if.then.i116:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %78, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  br label %if.then30

write_blk.exit118:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp29 = icmp slt i32 %call.i112, 0
  br i1 %cmp29, label %write_blk.exit118.if.then30_crit_edge, label %write_blk.exit118.cleanup_crit_edge

write_blk.exit118.cleanup_crit_edge:              ; preds = %write_blk.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

write_blk.exit118.if.then30_crit_edge:            ; preds = %write_blk.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %write_blk.exit118.if.then30_crit_edge, %if.then.i116
  %91 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %92, ptr noundef nonnull @__func__.remove_free_dqentry, ptr noundef nonnull @.str.11, i32 noundef %blk) #6
  br label %cleanup

out_buf.sink.split:                               ; preds = %if.end18.out_buf.sink.split_crit_edge, %if.end5.out_buf.sink.split_crit_edge
  %.sink = phi ptr [ %26, %if.end5.out_buf.sink.split_crit_edge ], [ %57, %if.end18.out_buf.sink.split_crit_edge ]
  %call.i97.sink128 = phi i32 [ %call.i78, %if.end5.out_buf.sink.split_crit_edge ], [ %call.i97, %if.end18.out_buf.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %.sink, ptr noundef nonnull @__func__.write_blk, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i97.sink128)
  %cmp3.i99 = icmp sgt i32 %call.i97.sink128, -1
  %spec.select127 = select i1 %cmp3.i99, i32 -5, i32 %call.i97.sink128
  br label %out_buf

out_buf:                                          ; preds = %out_buf.sink.split, %write_blk.exit103.out_buf_crit_edge, %if.then14.out_buf_crit_edge, %write_blk.exit.out_buf_crit_edge, %if.then2.out_buf_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then2.out_buf_crit_edge ], [ %call.i78, %write_blk.exit.out_buf_crit_edge ], [ %call.i88, %if.then14.out_buf_crit_edge ], [ %call.i97, %write_blk.exit103.out_buf_crit_edge ], [ %spec.select127, %out_buf.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %if.then30, %write_blk.exit118.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_buf ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %write_blk.exit118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @find_tree_dqentry(ptr nocapture noundef readonly %info, ptr noundef %dquot, i32 noundef %blk, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_usable_bs, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3136) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqi_usable_bs, align 4
  %6 = call ptr @memset(ptr %call9.i, i32 0, i32 %5)
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_op.i, align 4
  %quota_read.i = getelementptr inbounds %struct.super_operations, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %quota_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %quota_read.i, align 4
  %dqi_type.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dqi_type.i, align 4
  %13 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i = zext i32 %blk to i64
  %dqi_blocksize_bits.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i = zext i32 %15 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call.i = tail call i32 %10(ptr noundef %3, i32 noundef %12, ptr noundef nonnull %call9.i, i32 noundef %13, i64 noundef %shl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i32 %call.i to i64
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %16 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dq_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %17, ptr noundef nonnull @__func__.find_tree_dqentry, ptr noundef nonnull @.str.18, i32 noundef %blk) #6
  br label %out_buf

if.end4:                                          ; preds = %if.end
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %18 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %dq_id, align 8
  %19 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt49 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %.elt49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack50 = load i32, ptr %.elt49, align 4
  %21 = insertvalue [2 x i32] %19, i32 %.unpack50, 1
  %call.i51 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %21) #6
  %22 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dqi_usable_bs, align 4
  %shr.i.i = lshr i32 %23, 2
  %dqi_qtree_depth.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 8
  %24 = ptrtoint ptr %dqi_qtree_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dqi_qtree_depth.i.i, align 4
  %26 = xor i32 %depth, -1
  %sub1.i.i = add i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %tobool.not6.i.i = icmp eq i32 %sub1.i.i, 0
  br i1 %tobool.not6.i.i, label %if.end4.get_index.exit_crit_edge, label %if.end4.while.body.i.i_crit_edge

if.end4.while.body.i.i_crit_edge:                 ; preds = %if.end4
  br label %while.body.i.i

if.end4.get_index.exit_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end4.while.body.i.i_crit_edge
  %depth.addr.08.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub1.i.i, %if.end4.while.body.i.i_crit_edge ]
  %id.addr.07.i.i = phi i32 [ %div.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i51, %if.end4.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %depth.addr.08.i.i, -1
  %div.i.i = udiv i32 %id.addr.07.i.i, %shr.i.i
  %tobool.not.i.i52 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i52, label %while.body.i.i.get_index.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.get_index.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_index.exit

get_index.exit:                                   ; preds = %while.body.i.i.get_index.exit_crit_edge, %if.end4.get_index.exit_crit_edge
  %id.addr.0.lcssa.i.i = phi i32 [ %call.i51, %if.end4.get_index.exit_crit_edge ], [ %div.i.i, %while.body.i.i.get_index.exit_crit_edge ]
  %rem.i.i = urem i32 %id.addr.0.lcssa.i.i, %shr.i.i
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %rem.i.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not = icmp eq i32 %28, 0
  br i1 %tobool6.not, label %get_index.exit.out_buf_crit_edge, label %lor.lhs.false

get_index.exit.out_buf_crit_edge:                 ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

lor.lhs.false:                                    ; preds = %get_index.exit
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 2
  %30 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dqi_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp11.not = icmp ult i32 %29, %31
  br i1 %cmp11.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb14 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %32 = ptrtoint ptr %dq_sb14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dq_sb14, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %33, ptr noundef nonnull @__func__.find_tree_dqentry, ptr noundef nonnull @.str.13, i32 noundef %29, i32 noundef %31) #6
  br label %out_buf

if.end16:                                         ; preds = %lor.lhs.false
  %sub = add i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %depth)
  %cmp17 = icmp ugt i32 %sub, %depth
  br i1 %cmp17, label %if.then19, label %if.end8.i.i

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw i32 %depth, 1
  %call20 = tail call fastcc i64 @find_tree_dqentry(ptr noundef %info, ptr noundef %dquot, i32 noundef %29, i32 noundef %add)
  br label %out_buf

if.end8.i.i:                                      ; preds = %if.end16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.out_buf_crit_edge, label %if.end.i58

if.end8.i.i.out_buf_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end.i58:                                       ; preds = %if.end8.i.i
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %36 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dqi_usable_bs, align 4
  %38 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %37)
  %s_op.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 6
  %39 = ptrtoint ptr %s_op.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_op.i.i, align 4
  %quota_read.i.i = getelementptr inbounds %struct.super_operations, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %quota_read.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %quota_read.i.i, align 4
  %43 = ptrtoint ptr %dqi_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dqi_type.i, align 4
  %45 = load i32, ptr %dqi_usable_bs, align 4
  %conv.i.i = zext i32 %29 to i64
  %46 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i.i = zext i32 %47 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %call.i.i = tail call i32 %42(ptr noundef %35, i32 noundef %44, ptr noundef nonnull %call9.i.i, i32 noundef %45, i64 noundef %shl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i57 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i57, label %if.then3.i, label %if.end4.i60

if.then3.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i59 = sext i32 %call.i.i to i64
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %48 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dq_sb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %49, ptr noundef nonnull @__func__.find_block_dqentry, ptr noundef nonnull @.str.18, i32 noundef %29) #6
  br label %out_buf.i

if.end4.i60:                                      ; preds = %if.end.i58
  %dqi_ops.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 9
  %dqi_entry_size.i.i = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %info, i32 0, i32 6
  %50 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i58.i = add i32 %51, -16
  %52 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dqi_entry_size.i.i, align 4
  %div.i59.i = udiv i32 %sub.i58.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i59.i)
  %cmp660.i = icmp sgt i32 %div.i59.i, 0
  br i1 %cmp660.i, label %for.body.preheader.i, label %if.end4.i60.for.end.i_crit_edge

if.end4.i60.for.end.i_crit_edge:                  ; preds = %if.end4.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end4.i60
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %for.body.preheader.i
  %ddquot.062.i = phi ptr [ %add.ptr12.i, %if.end11.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %i.061.i = phi i32 [ %inc.i, %if.end11.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %54 = ptrtoint ptr %dqi_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dqi_ops.i, align 4
  %is_id.i = getelementptr inbounds %struct.qtree_fmt_operations, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %is_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %is_id.i, align 4
  %call8.i = tail call i32 %57(ptr noundef %ddquot.062.i, ptr noundef %dquot) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end11.i:                                       ; preds = %for.body.i
  %58 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dqi_entry_size.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %ddquot.062.i, i32 %59
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %60 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i.i = add i32 %61, -16
  %div.i.i61 = udiv i32 %sub.i.i, %59
  %cmp6.i = icmp slt i32 %inc.i, %div.i.i61
  br i1 %cmp6.i, label %if.end11.i.for.body.i_crit_edge, label %if.end11.i.for.end.i_crit_edge

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end11.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end4.i60.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end4.i60.for.end.i_crit_edge ], [ %inc.i, %if.end11.i.for.end.i_crit_edge ], [ %i.061.i, %for.body.i.for.end.i_crit_edge ]
  %62 = ptrtoint ptr %dqi_usable_bs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dqi_usable_bs, align 4
  %sub.i51.i = add i32 %63, -16
  %64 = ptrtoint ptr %dqi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dqi_entry_size.i.i, align 4
  %div.i53.i = udiv i32 %sub.i51.i, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %div.i53.i)
  %cmp14.i = icmp eq i32 %i.0.lcssa.i, %div.i53.i
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dq_sb17.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %66 = ptrtoint ptr %dq_sb17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dq_sb17.i, align 4
  %68 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i = load i32, ptr %dq_id, align 8
  %69 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %70 = ptrtoint ptr %.elt49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack48.i = load i32, ptr %.elt49, align 4
  %71 = insertvalue [2 x i32] %69, i32 %.unpack48.i, 1
  %call18.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %71) #6
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %67, ptr noundef nonnull @__func__.find_block_dqentry, ptr noundef nonnull @.str.19, i32 noundef %call18.i) #6
  br label %out_buf.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %dqi_blocksize_bits.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dqi_blocksize_bits.i, align 4
  %sh_prom.i62 = zext i32 %73 to i64
  %shl.i63 = shl i64 %conv.i.i, %sh_prom.i62
  %mul.i = mul i32 %65, %i.0.lcssa.i
  %conv21.i = zext i32 %mul.i to i64
  %add.i = add nuw nsw i64 %conv21.i, 16
  %add22.i = add i64 %add.i, %shl.i63
  br label %out_buf.i

out_buf.i:                                        ; preds = %if.else.i, %if.then16.i, %if.then3.i
  %ret.0.i = phi i64 [ %conv.i59, %if.then3.i ], [ -5, %if.then16.i ], [ %add22.i, %if.else.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out_buf

out_buf:                                          ; preds = %out_buf.i, %if.end8.i.i.out_buf_crit_edge, %if.then19, %if.then13, %get_index.exit.out_buf_crit_edge, %if.then3
  %ret.0 = phi i64 [ %conv, %if.then3 ], [ -117, %if.then13 ], [ %call20, %if.then19 ], [ 0, %get_index.exit.out_buf_crit_edge ], [ %ret.0.i, %out_buf.i ], [ -12, %if.end8.i.i.out_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %ret.0, %out_buf ], [ -12, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !41, !42, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !61, !63, !65, !67, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_author213, !1, !"__UNIQUE_ID_author213", i1 false, i1 false}
!1 = !{!"../fs/quota/quota_tree.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description214, !3, !"__UNIQUE_ID_description214", i1 false, i1 false}
!3 = !{!"../fs/quota/quota_tree.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file215, !5, !"__UNIQUE_ID_file215", i1 false, i1 false}
!5 = !{!"../fs/quota/quota_tree.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license216, !5, !"__UNIQUE_ID_license216", i1 false, i1 false}
!7 = !{ptr @__ksymtab_qtree_entry_unused, !8, !"__ksymtab_qtree_entry_unused", i1 false, i1 false}
!8 = !{!"../fs/quota/quota_tree.c", i32 213, i32 1}
!9 = !{ptr @__func__.qtree_write_dquot, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/quota/quota_tree.c", i32 378, i32 4}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/quota/quota_tree.c", i32 390, i32 3}
!14 = !{ptr @__ksymtab_qtree_write_dquot, !15, !"__ksymtab_qtree_write_dquot", i1 false, i1 false}
!15 = !{!"../fs/quota/quota_tree.c", i32 401, i32 1}
!16 = !{ptr @__ksymtab_qtree_delete_dquot, !17, !"__ksymtab_qtree_delete_dquot", i1 false, i1 false}
!17 = !{!"../fs/quota/quota_tree.c", i32 529, i32 1}
!18 = !{ptr @__func__.qtree_read_dquot, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/quota/quota_tree.c", i32 623, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/quota/quota_tree.c", i32 632, i32 5}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/quota/quota_tree.c", i32 652, i32 3}
!25 = !{ptr @__ksymtab_qtree_read_dquot, !26, !"__ksymtab_qtree_read_dquot", i1 false, i1 false}
!26 = !{!"../fs/quota/quota_tree.c", i32 672, i32 1}
!27 = !{ptr @__ksymtab_qtree_release_dquot, !28, !"__ksymtab_qtree_release_dquot", i1 false, i1 false}
!28 = !{!"../fs/quota/quota_tree.c", i32 683, i32 1}
!29 = !{ptr @__ksymtab_qtree_get_next_id, !30, !"__ksymtab_qtree_get_next_id", i1 false, i1 false}
!30 = !{!"../fs/quota/quota_tree.c", i32 740, i32 1}
!31 = !{ptr @__func__.dq_insert_tree, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/quota/quota_tree.c", i32 353, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__func__.do_insert_tree, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/quota/quota_tree.c", i32 309, i32 4}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/quota/quota_tree.c", i32 321, i32 4}
!39 = !{ptr @__func__.find_free_dqentry, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/quota/quota_tree.c", i32 252, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/quota/quota_tree.c", i32 267, i32 3}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/quota/quota_tree.c", i32 274, i32 3}
!46 = !{ptr @__func__.remove_free_dqentry, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/quota/quota_tree.c", i32 161, i32 3}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__func__.write_blk, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/quota/quota_tree.c", i32 67, i32 3}
!51 = !{ptr @__func__.remove_tree, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/quota/quota_tree.c", i32 478, i32 3}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/quota/quota_tree.c", i32 484, i32 3}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/quota/quota_tree.c", i32 510, i32 5}
!58 = !{ptr @__func__.free_dqentry, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/quota/quota_tree.c", i32 414, i32 3}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/quota/quota_tree.c", i32 433, i32 4}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/quota/quota_tree.c", i32 446, i32 5}
!65 = !{ptr @__func__.find_tree_dqentry, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/quota/quota_tree.c", i32 581, i32 3}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__func__.find_block_dqentry, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/quota/quota_tree.c", i32 544, i32 3}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/quota/quota_tree.c", i32 555, i32 3}
!72 = !{ptr @__func__.find_next_id, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/quota/quota_tree.c", i32 703, i32 3}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"make_kqid: %agg.result"}
!86 = distinct !{!86, !"make_kqid"}
!87 = !{i64 2152490935, i64 2152491421, i64 2152490972, i64 2152491028, i64 2152491062, i64 2152491086, i64 2152491127, i64 2152491148, i64 2152491176, i64 2152491210}
