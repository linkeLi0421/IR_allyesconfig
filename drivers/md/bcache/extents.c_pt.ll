; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/extents.c_pt.bc'
source_filename = "../drivers/md/bcache/extents.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btree_keys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.92 }
%struct.rb_root = type { ptr }
%struct.anon.92 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.93, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.93 = type { [8 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.96 = type { [8 x i64] }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.71, [32 x i8], i64, i64, i64, i64, i64, %union.anon.72, i32, i16, %union.anon.75, [256 x i64] }
%union.anon.71 = type { i64, [8 x i8] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i16, i16, i16, i32 }
%union.anon.75 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.btree_write = type { ptr, i32 }
%struct.btree_iter = type { i32, i32, ptr, [4 x %struct.btree_iter_set] }
%struct.btree_iter_set = type { ptr, ptr }
%union.anon.102 = type { [8 x i64] }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.bset = type { i64, i64, i64, i32, i32, %union.anon.91 }
%union.anon.91 = type { [0 x %struct.bkey] }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llu:%llu len %llu -> [\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check dev\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%llu:%llu gen %llu\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" dirty\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" cs%llu %llx\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spotted btree ptr %s: %s\00", [39 x i8] zeroinitializer }, align 32
@bch_btree_keys_ops = dso_local constant { %struct.btree_keys_ops, [60 x i8] } { %struct.btree_keys_ops { ptr @bch_key_sort_cmp, ptr null, ptr @bch_btree_ptr_insert_fixup, ptr @bch_btree_ptr_invalid, ptr @bch_btree_ptr_bad, ptr null, ptr @bch_extent_to_text, ptr @bch_bkey_dump, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spotted extent %s: %s\00", [42 x i8] zeroinitializer }, align 32
@bch_extent_keys_ops = dso_local constant { %struct.btree_keys_ops, [60 x i8] } { %struct.btree_keys_ops { ptr @bch_extent_sort_cmp, ptr @bch_extent_sort_fixup, ptr @bch_extent_insert_fixup, ptr @bch_extent_invalid, ptr @bch_extent_bad, ptr @bch_extent_merge, ptr @bch_extent_to_text, ptr @bch_bkey_dump, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad, length too big\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad, short offset\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad, offset past end of device\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stale\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad, null key\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad, no pointers\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zeroed key\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"inconsistent btree pointer %s: bucket %zi pin %i prio %i gen %i last_gc %i mark %llu\00", [43 x i8] zeroinitializer }, align 32
@bch_bkey_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bch_bkey_dump\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/md/bcache/extents.c\00", [36 x i8] zeroinitializer }, align 32
@bch_bkey_dump._entry_ptr = internal global ptr @bch_bkey_dump._entry, section ".printk_index", align 4
@bch_bkey_dump._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.20, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c bucket %zu\00", [18 x i8] zeroinitializer }, align 32
@bch_bkey_dump._entry_ptr.23 = internal global ptr @bch_bkey_dump._entry.21, section ".printk_index", align 4
@bch_bkey_dump._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.20, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c prio %i\00", [21 x i8] zeroinitializer }, align 32
@bch_bkey_dump._entry_ptr.26 = internal global ptr @bch_bkey_dump._entry.24, section ".printk_index", align 4
@bch_bkey_dump._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.20, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c %s\0A\00", [25 x i8] zeroinitializer }, align 32
@bch_bkey_dump._entry_ptr.29 = internal global ptr @bch_bkey_dump._entry.27, section ".printk_index", align 4
@bch_extent_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.20, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016bcache: %s() stale dirty pointer, stale %u, key: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bch_extent_bad\00", [17 x i8] zeroinitializer }, align 32
@bch_extent_bad._entry_ptr = internal global ptr @bch_extent_bad._entry, section ".printk_index", align 4
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"key too stale: %i, need_gc %u\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"inconsistent extent pointer %s:\0Abucket %zu pin %i prio %i gen %i last_gc %i mark %llu\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 104, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 108, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 111, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 113, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 117, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 120, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 122, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 162, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"bch_btree_keys_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 240, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 496, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"bch_extent_keys_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 620, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 79, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 81, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 83, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 85, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 89, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 91, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 93, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 94, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 198, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 133, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 138, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 140, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 144, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 556, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 560, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [31 x i8] c"../drivers/md/bcache/extents.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 530, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @bch_bkey_dump._entry, ptr @bch_bkey_dump._entry.21, ptr @bch_bkey_dump._entry.24, ptr @bch_bkey_dump._entry.27, ptr @bch_bkey_dump._entry_ptr, ptr @bch_bkey_dump._entry_ptr.23, ptr @bch_bkey_dump._entry_ptr.26, ptr @bch_bkey_dump._entry_ptr.29, ptr @bch_extent_bad._entry, ptr @bch_extent_bad._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bch_btree_keys_ops, ptr @.str.8, ptr @bch_extent_keys_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_keys_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_extent_keys_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_bkey_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_bkey_dump._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_bkey_dump._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_bkey_dump._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_extent_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_extent_to_text(ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %size
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %and.i = and i64 %1, 1048575
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %2 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %1, 20
  %and.i100 = and i64 %shr.i, 65535
  %sub = sub i64 %3, %and.i100
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str, i64 noundef %and.i, i64 noundef %sub, i64 noundef %and.i100) #7
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %call4
  %4 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %k, align 8
  %6 = and i64 %5, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp123.not = icmp eq i64 %6, 0
  br i1 %cmp123.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %out.0125 = phi ptr [ %out.2, %for.inc.for.body_crit_edge ], [ %add.ptr5, %entry.for.body_crit_edge ]
  %i.0124 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0124)
  %tobool.not = icmp eq i32 %i.0124, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.rhs.cast9 = ptrtoint ptr %out.0125 to i32
  %sub.ptr.sub10 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast9
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %out.0125, i32 noundef %sub.ptr.sub10, ptr noundef nonnull @.str.1) #7
  %add.ptr12 = getelementptr i8, ptr %out.0125, i32 %call11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %out.1 = phi ptr [ %add.ptr12, %if.then ], [ %out.0125, %for.body.if.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.0124
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i, align 8
  %shr.i105 = lshr i64 %8, 51
  %and.i106 = and i64 %shr.i105, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %and.i106)
  %cmp14 = icmp eq i64 %and.i106, 4095
  %sub.ptr.rhs.cast18 = ptrtoint ptr %out.1 to i32
  %sub.ptr.sub19 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast18
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %out.1, i32 noundef %sub.ptr.sub19, ptr noundef nonnull @.str.2) #7
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i111 = lshr i64 %8, 8
  %and.i112 = and i64 %shr.i111, 8796093022207
  %and.i114 = and i64 %8, 255
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %out.1, i32 noundef %sub.ptr.sub19, ptr noundef nonnull @.str.3, i64 noundef %and.i106, i64 noundef %and.i112, i64 noundef %and.i114) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16
  %call20.pn = phi i32 [ %call20, %if.then16 ], [ %call28, %if.else ]
  %out.2 = getelementptr i8, ptr %out.1, i32 %call20.pn
  %inc = add i32 %i.0124, 1
  %conv = zext i32 %inc to i64
  %9 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %k, align 8
  %shr.i103 = lshr i64 %10, 60
  %and.i104 = and i64 %shr.i103, 7
  %cmp = icmp ugt i64 %and.i104, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %out.0.lcssa = phi ptr [ %add.ptr5, %entry.for.end_crit_edge ], [ %out.2, %for.inc.for.end_crit_edge ]
  %sub.ptr.rhs.cast32 = ptrtoint ptr %out.0.lcssa to i32
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %out.0.lcssa, i32 noundef %sub.ptr.sub33, ptr noundef nonnull @.str.4) #7
  %add.ptr35 = getelementptr i8, ptr %out.0.lcssa, i32 %call34
  %11 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %k, align 8
  %13 = and i64 %12, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool37.not = icmp eq i64 %13, 0
  br i1 %tobool37.not, label %for.end.if.end44_crit_edge, label %if.then38

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.rhs.cast40 = ptrtoint ptr %add.ptr35 to i32
  %sub.ptr.sub41 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast40
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub.ptr.sub41, ptr noundef nonnull @.str.5) #7
  %add.ptr43 = getelementptr i8, ptr %add.ptr35, i32 %call42
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %for.end.if.end44_crit_edge
  %out.3 = phi ptr [ %add.ptr43, %if.then38 ], [ %add.ptr35, %for.end.if.end44_crit_edge ]
  %14 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %k, align 8
  %shr.i117 = lshr i64 %15, 56
  %and.i118 = and i64 %shr.i117, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i118)
  %tobool46.not = icmp eq i64 %and.i118, 0
  br i1 %tobool46.not, label %if.end44.if.end54_crit_edge, label %if.then47

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.rhs.cast49 = ptrtoint ptr %out.3 to i32
  %sub.ptr.sub50 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast49
  %arrayidx = getelementptr %struct.bkey, ptr %k, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %out.3, i32 noundef %sub.ptr.sub50, ptr noundef nonnull @.str.6, i64 noundef %and.i118, i64 noundef %17) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.end44.if.end54_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bch_btree_ptr_invalid(ptr noundef %c, ptr nocapture noundef readonly %k) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %2, 60
  %and.i = and i64 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %entry.bad_crit_edge, label %lor.lhs.false

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false:                                    ; preds = %entry
  %shr.i21 = lshr i64 %2, 20
  %and.i22 = and i64 %shr.i21, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22)
  %tobool2.not = icmp ne i64 %and.i22, 0
  %3 = and i64 %2, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool5.not = icmp eq i64 %3, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %for.body.lr.ph.i, label %lor.lhs.false.bad_crit_edge

lor.lhs.false.bad_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %4 = trunc i64 %and.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.049.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i.i.i, align 8
  %7 = and i64 %6, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.i = icmp eq i64 %7, 0
  br i1 %cmp.i.i, label %ptr_available.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

ptr_available.exit.i:                             ; preds = %for.body.i
  %8 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache.i, align 4
  %tobool.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.not.i, label %ptr_available.exit.i.for.inc.i_crit_edge, label %if.then.i

ptr_available.exit.i.for.inc.i_crit_edge:         ; preds = %ptr_available.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %ptr_available.exit.i
  %shr.i.i.i = lshr i64 %6, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %10 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %11 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %bucket_size.i.i = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 11, i32 0, i32 4
  %12 = ptrtoint ptr %bucket_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bucket_size.i.i, align 8
  %sub.i.i = add i32 %13, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %and.i45.i = and i64 %shr.i.i.i, %conv.i.i
  %add.i = add nuw nsw i64 %and.i45.i, %and.i22
  %conv10.i = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv10.i)
  %cmp11.i = icmp ugt i64 %add.i, %conv10.i
  br i1 %cmp11.i, label %if.then.i.bad_crit_edge, label %lor.lhs.false.i

if.then.i.bad_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false.i:                                  ; preds = %if.then.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %first_bucket.i = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 13
  %14 = ptrtoint ptr %first_bucket.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %first_bucket.i, align 4
  %conv14.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i, i32 %conv14.i)
  %cmp15.i = icmp ult i32 %conv1.i.i.i, %conv14.i
  br i1 %cmp15.i, label %lor.lhs.false.i.bad_crit_edge, label %lor.lhs.false17.i

lor.lhs.false.i.bad_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i
  %conv18.i = and i64 %shr.i2.i.i, 4294967295
  %16 = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv18.i)
  %cmp20.not.i = icmp ugt i64 %18, %conv18.i
  br i1 %cmp20.not.i, label %lor.lhs.false17.i.for.inc.i_crit_edge, label %lor.lhs.false17.i.bad_crit_edge

lor.lhs.false17.i.bad_crit_edge:                  ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false17.i.for.inc.i_crit_edge, %ptr_available.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bad:                                              ; preds = %lor.lhs.false17.i.bad_crit_edge, %lor.lhs.false.i.bad_crit_edge, %if.then.i.bad_crit_edge, %lor.lhs.false.bad_crit_edge, %entry.bad_crit_edge
  call void @bch_extent_to_text(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %k)
  %call10 = call fastcc ptr @bch_ptr_status(ptr noundef %c, ptr noundef %k)
  %call11 = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %c, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf, ptr noundef %call10) #7
  br i1 %call11, label %if.then12, label %bad.cleanup_crit_edge

bad.cleanup_crit_edge:                            ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_stack() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %bad.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then12 ], [ true, %bad.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_cache_set_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bch_ptr_status(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %k) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %1, 60
  %and.i = and i64 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp86.not = icmp eq i64 %and.i, 0
  br i1 %cmp86.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %shr.i72 = lshr i64 %1, 20
  %and.i73 = and i64 %shr.i72, 65535
  %2 = trunc i64 %and.i to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.087
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.i.i, align 8
  %5 = and i64 %4, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i = icmp eq i64 %5, 0
  br i1 %cmp.i, label %ptr_available.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

ptr_available.exit:                               ; preds = %for.body
  %6 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %ptr_available.exit.for.inc_crit_edge, label %if.then

ptr_available.exit.for.inc_crit_edge:             ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %ptr_available.exit
  %8 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache.i, align 4
  %shr.i.i = lshr i64 %4, 8
  %and.i.i66 = and i64 %shr.i.i, 8796093022207
  %10 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %11 to i64
  %shr.i2.i = lshr i64 %and.i.i66, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 11, i32 0, i32 4
  %12 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bucket_size.i, align 8
  %sub.i70 = add i32 %13, -1
  %conv.i = zext i32 %sub.i70 to i64
  %and.i71 = and i64 %shr.i.i, %conv.i
  %add = add nuw nsw i64 %and.i71, %and.i73
  %conv10 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv10)
  %cmp11 = icmp ugt i64 %add, %conv10
  br i1 %cmp11, label %if.then.cleanup44_crit_edge, label %if.end

if.then.cleanup44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end:                                           ; preds = %if.then
  %first_bucket = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 13
  %14 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %first_bucket, align 4
  %conv15 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv15)
  %cmp16 = icmp ult i32 %conv1.i.i, %conv15
  br i1 %cmp16, label %if.end.cleanup44_crit_edge, label %if.end19

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end19:                                         ; preds = %if.end
  %conv20 = and i64 %shr.i2.i, 4294967295
  %16 = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv20)
  %cmp22.not = icmp ugt i64 %18, %conv20
  br i1 %cmp22.not, label %cleanup, label %if.end19.cleanup44_crit_edge

if.end19.cleanup44_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

cleanup:                                          ; preds = %if.end19
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %9, i32 0, i32 15
  %19 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buckets.i.i, align 8
  %gen.i = getelementptr %struct.bucket, ptr %20, i32 %conv1.i.i, i32 2
  %21 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %gen.i, align 2
  %conv.i74 = trunc i64 %4 to i8
  %sub.i.i = sub i8 %22, %conv.i74
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %conv.i74)
  %tobool.not83 = icmp eq i8 %22, %conv.i74
  %tobool.not = or i1 %tobool.not83, %cmp.i.i
  br i1 %tobool.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup44_crit_edge

cleanup.cleanup44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %ptr_available.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %cmp = icmp ult i32 %inc, %2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %and.i.i = and i64 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.not.i, label %bkey_cmp.exit, label %if.end35, !prof !76

bkey_cmp.exit:                                    ; preds = %for.end
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %23 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %low.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool33.not = icmp eq i64 %24, 0
  %brmerge = select i1 %tobool33.not, i1 true, i1 %cmp86.not
  %.str.13.mux = select i1 %tobool33.not, ptr @.str.13, ptr @.str.14
  br i1 %brmerge, label %bkey_cmp.exit.cleanup44_crit_edge, label %bkey_cmp.exit.if.end39_crit_edge

bkey_cmp.exit.if.end39_crit_edge:                 ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

bkey_cmp.exit.cleanup44_crit_edge:                ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end35:                                         ; preds = %for.end
  br i1 %cmp86.not, label %if.end35.cleanup44_crit_edge, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end35.cleanup44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

if.end39:                                         ; preds = %if.end35.if.end39_crit_edge, %bkey_cmp.exit.if.end39_crit_edge
  %25 = and i64 %1, 68718428160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool41.not = icmp eq i64 %25, 0
  %.str.15..str.16 = select i1 %tobool41.not, ptr @.str.15, ptr @.str.16
  br label %cleanup44

cleanup44:                                        ; preds = %if.end39, %if.end35.cleanup44_crit_edge, %bkey_cmp.exit.cleanup44_crit_edge, %cleanup.cleanup44_crit_edge, %if.end19.cleanup44_crit_edge, %if.end.cleanup44_crit_edge, %if.then.cleanup44_crit_edge
  %retval.3 = phi ptr [ %.str.13.mux, %bkey_cmp.exit.cleanup44_crit_edge ], [ @.str.14, %if.end35.cleanup44_crit_edge ], [ %.str.15..str.16, %if.end39 ], [ @.str.9, %if.then.cleanup44_crit_edge ], [ @.str.10, %if.end.cleanup44_crit_edge ], [ @.str.11, %if.end19.cleanup44_crit_edge ], [ @.str.12, %cleanup.cleanup44_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bch_key_sort_cmp([2 x i32] %l.coerce, [2 x i32] %r.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %l.coerce.fca.0.extract = extractvalue [2 x i32] %l.coerce, 0
  %0 = inttoptr i32 %l.coerce.fca.0.extract to ptr
  %r.coerce.fca.0.extract = extractvalue [2 x i32] %r.coerce, 0
  %1 = inttoptr i32 %r.coerce.fca.0.extract to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %0, align 8
  %and.i.i = and i64 %3, 1048575
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %and.i12.i = and i64 %5, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !76

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i64 %and.i.i, %and.i12.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low.i.i, align 8
  %low.i15.i = getelementptr inbounds %struct.bkey, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %low.i15.i, align 8
  %sub7.i = sub i64 %7, %9
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool.not = icmp eq i64 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp = icmp sgt i64 %cond.i, 0
  %cmp4 = icmp ult ptr %0, %1
  %cond.in = select i1 %tobool.not, i1 %cmp4, i1 %cmp
  ret i1 %cond.in
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bch_btree_ptr_insert_fixup(ptr noundef %bk, ptr nocapture noundef readonly %insert, ptr nocapture noundef readnone %iter, ptr nocapture noundef readnone %replace_key) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %low.i = getelementptr inbounds %struct.bkey, ptr %insert, i32 0, i32 1
  %0 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %low.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %writes.i = getelementptr i8, ptr %bk, i32 412
  %flags.i.i = getelementptr i8, ptr %bk, i32 -8
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %4 = lshr i32 %3, 2
  %.lobit.i = and i32 %4, 1
  %add.ptr.i = getelementptr %struct.btree_write, ptr %writes.i, i32 %.lobit.i
  %prio_blocked = getelementptr inbounds %struct.btree_write, ptr %add.ptr.i, i32 0, i32 1
  %5 = ptrtoint ptr %prio_blocked to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio_blocked, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %prio_blocked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_btree_ptr_invalid(ptr nocapture noundef readonly %bk, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr i8, ptr %bk, i32 -108
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %call = tail call zeroext i1 @__bch_btree_ptr_invalid(ptr noundef %1, ptr noundef %k)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_btree_ptr_bad(ptr noundef %bk, ptr noundef %k) #0 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %and.i.i = and i64 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.not.i, label %bkey_cmp.exit, label %lor.lhs.false, !prof !76

bkey_cmp.exit:                                    ; preds = %entry
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %2 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %low.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  %4 = and i64 %1, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool2.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %bkey_cmp.exit.cleanup_crit_edge, label %bkey_cmp.exit.lor.lhs.false3_crit_edge

bkey_cmp.exit.lor.lhs.false3_crit_edge:           ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3

bkey_cmp.exit.cleanup_crit_edge:                  ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = and i64 %1, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool2.not.old = icmp eq i64 %5, 0
  br i1 %tobool2.not.old, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.lor.lhs.false3_crit_edge

lor.lhs.false.lor.lhs.false3_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false.lor.lhs.false3_crit_edge, %bkey_cmp.exit.lor.lhs.false3_crit_edge
  %6 = ptrtoint ptr %bk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bk, align 8
  %key_invalid.i = getelementptr inbounds %struct.btree_keys_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %key_invalid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key_invalid.i, align 4
  %call.i = tail call zeroext i1 %9(ptr noundef %bk, ptr noundef %k) #7
  br i1 %call.i, label %lor.lhs.false3.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false3
  %10 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %k, align 8
  %shr.i36 = lshr i64 %11, 60
  %and.i37 = and i64 %shr.i36, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i37)
  %cmp56.not = icmp eq i64 %and.i37, 0
  br i1 %cmp56.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %c = getelementptr i8, ptr %bk, i32 -108
  %12 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c, align 4
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %13, i32 0, i32 9
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %13, i32 0, i32 24
  %14 = trunc i64 %and.i37 to i32
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false8
  %inc = add nuw nsw i32 %i.057, 1
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.057
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i, align 8
  %17 = and i64 %16, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.i = icmp eq i64 %17, 0
  br i1 %cmp.i, label %ptr_available.exit, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit:                               ; preds = %for.body
  %18 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cache.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %ptr_available.exit.cleanup_crit_edge, label %lor.lhs.false8

ptr_available.exit.cleanup_crit_edge:             ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false8:                                   ; preds = %ptr_available.exit
  %20 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buckets.i.i, align 8
  %shr.i.i.i.i = lshr i64 %16, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %24 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %25 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %23, i32 %conv1.i.i.i.i, i32 2
  %26 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %16 to i8
  %sub.i.i = sub i8 %27, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %conv.i)
  %tobool12.not54 = icmp eq i8 %27, %conv.i
  %tobool12.not = or i1 %tobool12.not54, %cmp.i.i
  br i1 %tobool12.not, label %for.cond, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %c15 = getelementptr i8, ptr %bk, i32 -108
  %28 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c15, align 4
  %expensive_debug_checks = getelementptr inbounds %struct.cache_set, ptr %29, i32 0, i32 84
  %30 = ptrtoint ptr %expensive_debug_checks to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %expensive_debug_checks, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool16.not = icmp eq i8 %31, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #7
  %32 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  %33 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c15, align 4
  %bucket_lock.i = getelementptr inbounds %struct.cache_set, ptr %34, i32 0, i32 23
  %call.i38 = tail call i32 @mutex_trylock(ptr noundef %bucket_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i, label %land.lhs.true.btree_ptr_bad_expensive.exit_crit_edge, label %for.cond.preheader.i

land.lhs.true.btree_ptr_bad_expensive.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %btree_ptr_bad_expensive.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true
  %35 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %k, align 8
  %shr.i.i = lshr i64 %36, 60
  %and.i.i39 = and i64 %shr.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i39)
  %cmp73.not.i = icmp eq i64 %and.i.i39, 0
  br i1 %cmp73.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %37 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %c15, align 4
  %cache.i.i40 = getelementptr inbounds %struct.cache_set, ptr %38, i32 0, i32 9
  %bucket_bits.i.i.i.i41 = getelementptr inbounds %struct.cache_set, ptr %38, i32 0, i32 24
  %39 = and i64 %36, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool9.not.i = icmp eq i64 %39, 0
  %gc_mark_valid.i = getelementptr inbounds %struct.cache_set, ptr %38, i32 0, i32 46
  %40 = trunc i64 %and.i.i39 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.074.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i.i, align 8
  %43 = and i64 %42, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp.i.i42 = icmp eq i64 %43, 0
  br i1 %cmp.i.i42, label %ptr_available.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

ptr_available.exit.i:                             ; preds = %for.body.i
  %44 = ptrtoint ptr %cache.i.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cache.i.i40, align 4
  %tobool.i.not.i = icmp eq ptr %45, null
  br i1 %tobool.i.not.i, label %ptr_available.exit.i.for.inc.i_crit_edge, label %if.then5.i

ptr_available.exit.i.for.inc.i_crit_edge:         ; preds = %ptr_available.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then5.i:                                       ; preds = %ptr_available.exit.i
  %buckets.i.i43 = getelementptr inbounds %struct.cache, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %buckets.i.i43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buckets.i.i43, align 8
  %shr.i.i.i.i44 = lshr i64 %42, 8
  %and.i.i.i.i45 = and i64 %shr.i.i.i.i44, 8796093022207
  %48 = ptrtoint ptr %bucket_bits.i.i.i.i41 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bucket_bits.i.i.i.i41, align 8
  %sh_prom.i.i.i.i46 = zext i16 %49 to i64
  %shr.i2.i.i.i47 = lshr i64 %and.i.i.i.i45, %sh_prom.i.i.i.i46
  %conv1.i.i.i.i48 = trunc i64 %shr.i2.i.i.i47 to i32
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %if.then5.i.err.i_crit_edge

if.then5.i.err.i_crit_edge:                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

lor.lhs.false.i:                                  ; preds = %if.then5.i
  %prio.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48, i32 1
  %50 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %prio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp11.not.i = icmp eq i16 %51, -1
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.err.i_crit_edge

lor.lhs.false.i.err.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %gc_mark_valid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gc_mark_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not.i = icmp eq i32 %53, 0
  br i1 %tobool15.not.i, label %lor.lhs.false13.i.for.inc.i_crit_edge, label %land.lhs.true.i

lor.lhs.false13.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false13.i
  %gc_mark.i.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48, i32 4
  %54 = ptrtoint ptr %gc_mark.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %gc_mark.i.i, align 4
  %56 = and i16 %55, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %56)
  %cmp17.not.i = icmp eq i16 %56, 3
  br i1 %cmp17.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.err.i_crit_edge

land.lhs.true.i.err.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false13.i.for.inc.i_crit_edge, %ptr_available.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %57 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %c15, align 4
  %bucket_lock22.i = getelementptr inbounds %struct.cache_set, ptr %58, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock22.i) #7
  br label %btree_ptr_bad_expensive.exit

err.i:                                            ; preds = %land.lhs.true.i.err.i_crit_edge, %lor.lhs.false.i.err.i_crit_edge, %if.then5.i.err.i_crit_edge
  %conv1.i.i.i.i48.le = trunc i64 %shr.i2.i.i.i47 to i32
  %add.ptr.i.le.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48.le
  %bucket_lock25.i = getelementptr inbounds %struct.cache_set, ptr %38, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock25.i) #7
  call void @bch_extent_to_text(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef %k) #7
  %59 = ptrtoint ptr %c15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %c15, align 4
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %62, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %60, i32 0, i32 24
  %63 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %64 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.le.i, i32 noundef 4) #7
  %65 = ptrtoint ptr %add.ptr.i.le.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %add.ptr.i.le.i, align 4
  %prio31.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48.le, i32 1
  %67 = ptrtoint ptr %prio31.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %prio31.i, align 4
  %conv32.i = zext i16 %68 to i32
  %gen.i50 = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48.le, i32 2
  %69 = ptrtoint ptr %gen.i50 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %gen.i50, align 2
  %conv33.i = zext i8 %70 to i32
  %last_gc.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48.le, i32 3
  %71 = ptrtoint ptr %last_gc.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %last_gc.i, align 1
  %conv34.i = zext i8 %72 to i32
  %gc_mark.i68.i = getelementptr %struct.bucket, ptr %47, i32 %conv1.i.i.i.i48.le, i32 4
  %73 = ptrtoint ptr %gc_mark.i68.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %gc_mark.i68.i, align 4
  %75 = and i16 %74, 3
  %and.i69.i = zext i16 %75 to i64
  %call36.i = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %60, ptr noundef nonnull @.str.17, ptr noundef nonnull %buf.i, i32 noundef %conv1.i.i.i, i32 noundef %66, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef %conv34.i, i64 noundef %and.i69.i) #7
  br i1 %call36.i, label %if.then37.i, label %err.i.btree_ptr_bad_expensive.exit.thread_crit_edge

err.i.btree_ptr_bad_expensive.exit.thread_crit_edge: ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btree_ptr_bad_expensive.exit.thread

if.then37.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_stack() #10
  br label %btree_ptr_bad_expensive.exit.thread

btree_ptr_bad_expensive.exit.thread:              ; preds = %if.then37.i, %err.i.btree_ptr_bad_expensive.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #7
  br label %cleanup

btree_ptr_bad_expensive.exit:                     ; preds = %for.end.i, %land.lhs.true.btree_ptr_bad_expensive.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %btree_ptr_bad_expensive.exit, %btree_ptr_bad_expensive.exit.thread, %for.end.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %ptr_available.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bkey_cmp.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false3.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %bkey_cmp.exit.cleanup_crit_edge ], [ true, %btree_ptr_bad_expensive.exit.thread ], [ false, %btree_ptr_bad_expensive.exit ], [ false, %for.end.cleanup_crit_edge ], [ true, %lor.lhs.false8.cleanup_crit_edge ], [ true, %ptr_available.exit.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bch_bkey_dump(ptr nocapture noundef readonly %keys, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  call void @bch_extent_to_text(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %k)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %buf) #10
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %k, align 8
  %3 = and i64 %2, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp51.not = icmp eq i64 %3, 0
  br i1 %cmp51.not, label %entry.do.end31_crit_edge, label %for.body.lr.ph

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

for.body.lr.ph:                                   ; preds = %entry
  %c = getelementptr i8, ptr %keys, i32 -108
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %j.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %j.052
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %7, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %9 to i64
  %shr.i2.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv1.i.i) #10
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 4
  %cache = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 4
  %first_bucket = getelementptr inbounds %struct.cache, ptr %13, i32 0, i32 1, i32 13
  %14 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %first_bucket, align 4
  %conv12 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv12)
  %cmp13.not = icmp ult i32 %conv1.i.i, %conv12
  br i1 %cmp13.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %conv15 = and i64 %shr.i2.i, 4294967295
  %16 = getelementptr inbounds %struct.cache, ptr %13, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv15)
  %cmp19 = icmp ugt i64 %18, %conv15
  br i1 %cmp19, label %do.end23, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end23:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %buckets.i = getelementptr inbounds %struct.cache, ptr %13, i32 0, i32 15
  %19 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buckets.i, align 8
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i.i = lshr i64 %22, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 24
  %23 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %24 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %prio = getelementptr %struct.bucket, ptr %20, i32 %conv1.i.i.i, i32 1
  %25 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %prio, align 4
  %conv27 = zext i16 %26 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv27) #10
  br label %if.end

if.end:                                           ; preds = %do.end23, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add i32 %j.052, 1
  %conv = zext i32 %inc to i64
  %27 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %28, 60
  %and.i = and i64 %shr.i, 7
  %cmp = icmp ugt i64 %and.i, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.end31_crit_edge

if.end.do.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end31:                                         ; preds = %if.end.do.end31_crit_edge, %entry.do.end31_crit_edge
  %c33 = getelementptr i8, ptr %keys, i32 -108
  %29 = ptrtoint ptr %c33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c33, align 4
  %call34 = call fastcc ptr @bch_ptr_status(ptr noundef %30, ptr noundef %k)
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call34) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bch_extent_invalid(ptr noundef %c, ptr nocapture noundef readonly %k) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %2, 20
  %and.i = and i64 %shr.i, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %3 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %low.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %4)
  %cmp = icmp ugt i64 %and.i, %4
  br i1 %cmp, label %if.end.bad_crit_edge, label %if.end4

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

if.end4:                                          ; preds = %if.end
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %shr.i.i = lshr i64 %2, 60
  %and.i.i = and i64 %shr.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp48.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp48.not.i, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end4
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %5 = trunc i64 %and.i.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.049.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i.i, align 8
  %8 = and i64 %7, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.i = icmp eq i64 %8, 0
  br i1 %cmp.i.i, label %ptr_available.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

ptr_available.exit.i:                             ; preds = %for.body.i
  %9 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache.i, align 4
  %tobool.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.i.not.i, label %ptr_available.exit.i.for.inc.i_crit_edge, label %if.then.i

ptr_available.exit.i.for.inc.i_crit_edge:         ; preds = %ptr_available.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %ptr_available.exit.i
  %shr.i.i.i = lshr i64 %7, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %11 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %12 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %bucket_size.i.i = getelementptr inbounds %struct.cache, ptr %10, i32 0, i32 1, i32 11, i32 0, i32 4
  %13 = ptrtoint ptr %bucket_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bucket_size.i.i, align 8
  %sub.i.i = add i32 %14, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %and.i45.i = and i64 %shr.i.i.i, %conv.i.i
  %add.i = add nuw nsw i64 %and.i45.i, %and.i
  %conv10.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv10.i)
  %cmp11.i = icmp ugt i64 %add.i, %conv10.i
  br i1 %cmp11.i, label %if.then.i.bad_crit_edge, label %lor.lhs.false.i

if.then.i.bad_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false.i:                                  ; preds = %if.then.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %first_bucket.i = getelementptr inbounds %struct.cache, ptr %10, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %first_bucket.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %first_bucket.i, align 4
  %conv14.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.i, i32 %conv14.i)
  %cmp15.i = icmp ult i32 %conv1.i.i.i, %conv14.i
  br i1 %cmp15.i, label %lor.lhs.false.i.bad_crit_edge, label %lor.lhs.false17.i

lor.lhs.false.i.bad_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i
  %conv18.i = and i64 %shr.i2.i.i, 4294967295
  %17 = getelementptr inbounds %struct.cache, ptr %10, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv18.i)
  %cmp20.not.i = icmp ugt i64 %19, %conv18.i
  br i1 %cmp20.not.i, label %lor.lhs.false17.i.for.inc.i_crit_edge, label %lor.lhs.false17.i.bad_crit_edge

lor.lhs.false17.i.bad_crit_edge:                  ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bad

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false17.i.for.inc.i_crit_edge, %ptr_available.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

bad:                                              ; preds = %lor.lhs.false17.i.bad_crit_edge, %lor.lhs.false.i.bad_crit_edge, %if.then.i.bad_crit_edge, %if.end.bad_crit_edge
  call void @bch_extent_to_text(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %k)
  %call9 = call fastcc ptr @bch_ptr_status(ptr noundef %c, ptr noundef %k)
  %call10 = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull %buf, ptr noundef %call9) #7
  br i1 %call10, label %if.then11, label %bad.cleanup_crit_edge

bad.cleanup_crit_edge:                            ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_stack() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %bad.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.then11 ], [ true, %bad.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #7
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bch_extent_sort_cmp([2 x i32] %l.coerce, [2 x i32] %r.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %l.coerce.fca.0.extract = extractvalue [2 x i32] %l.coerce, 0
  %0 = inttoptr i32 %l.coerce.fca.0.extract to ptr
  %r.coerce.fca.0.extract = extractvalue [2 x i32] %r.coerce, 0
  %1 = inttoptr i32 %r.coerce.fca.0.extract to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %0, align 8
  %and.i = and i64 %3, 1048575
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %and.i30 = and i64 %5, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and.i30)
  %cmp.not.i = icmp eq i64 %and.i, %and.i30
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !76

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i64 %and.i, %and.i30
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31 = getelementptr inbounds %struct.bkey, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %low.i31 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low.i31, align 8
  %shr.i32 = lshr i64 %5, 20
  %and.i33 = and i64 %shr.i32, 65535
  %low.i = getelementptr inbounds %struct.bkey, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %3, 20
  %and.i29 = and i64 %shr.i, 65535
  %10 = add i64 %and.i29, %7
  %sub15.neg = sub i64 %and.i33, %10
  %sub7.i = add i64 %sub15.neg, %9
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool.not = icmp eq i64 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp = icmp sgt i64 %cond.i, 0
  %cmp19 = icmp ult ptr %0, %1
  %cond.in = select i1 %tobool.not, i1 %cmp19, i1 %cmp
  ret i1 %cond.in
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bch_extent_sort_fixup(ptr noundef %iter, ptr noundef %tmp) #0 align 64 {
entry:
  %.compoundliteral163 = alloca %struct.bkey, align 8
  %.compoundliteral226 = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp701 = icmp ugt i32 %1, 1
  br i1 %cmp701, label %while.body.lr.ph, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 3
  %add.ptr = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 1
  %arrayidx3 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 2
  %low231 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral226, i32 0, i32 1
  %sub.ptr.rhs.cast69 = ptrtoint ptr %data to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %196, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp2.not = icmp eq i32 %2, 2
  br i1 %cmp2.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack395 = load i32, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack398 = load i32, ptr %arrayidx3, align 4
  %5 = inttoptr i32 %.unpack395 to ptr
  %6 = inttoptr i32 %.unpack398 to ptr
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %5, align 8
  %and.i.i437 = and i64 %8, 1048575
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %6, align 8
  %and.i30.i = and i64 %10, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i437, i64 %and.i30.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i437, %and.i30.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !76

cond.true.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub nsw i64 %and.i.i437, %and.i30.i
  br label %bch_extent_sort_cmp.exit

cond.false.i.i:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i = getelementptr inbounds %struct.bkey, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %low.i31.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %low.i31.i, align 8
  %shr.i32.i = lshr i64 %10, 20
  %and.i33.i = and i64 %shr.i32.i, 65535
  %low.i.i438 = getelementptr inbounds %struct.bkey, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %low.i.i438 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %low.i.i438, align 8
  %shr.i.i = lshr i64 %8, 20
  %and.i29.i = and i64 %shr.i.i, 65535
  %15 = add i64 %and.i29.i, %12
  %sub15.neg.i = sub i64 %and.i33.i, %15
  %sub7.i.i = add i64 %sub15.neg.i, %14
  br label %bch_extent_sort_cmp.exit

bch_extent_sort_cmp.exit:                         ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %tobool.not.i = icmp eq i64 %cond.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  %cmp19.i = icmp ult ptr %5, %6
  %cond.in.i = select i1 %tobool.not.i, i1 %cmp19.i, i1 %cmp.i
  %spec.select = select i1 %cond.in.i, ptr %arrayidx3, ptr %add.ptr
  br label %if.end

if.end:                                           ; preds = %bch_extent_sort_cmp.exit, %while.body.if.end_crit_edge
  %i.0 = phi ptr [ %add.ptr, %while.body.if.end_crit_edge ], [ %spec.select, %bch_extent_sort_cmp.exit ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %i.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i.0, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %and.i = and i64 %21, 1048575
  %or = or i64 %and.i, -9223372036854775808
  %low.i = getelementptr inbounds %struct.bkey, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %21, 20
  %and.i439 = and i64 %shr.i, 65535
  %sub = sub i64 %23, %and.i439
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %17, align 8
  %and.i.i = and i64 %25, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !76

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i64 %and.i.i, %and.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %low.i.i, align 8
  %sub7.i = sub i64 %27, %sub
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp11 = icmp slt i64 %cond.i, 1
  br i1 %cmp11, label %bkey_cmp.exit.return_crit_edge, label %if.end13

bkey_cmp.exit.return_crit_edge:                   ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end13:                                         ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i439)
  %tobool.not = icmp eq i64 %and.i439, 0
  br i1 %tobool.not, label %if.then16, label %if.end51

if.then16:                                        ; preds = %if.end13
  %shr.i.i.i.i = lshr i64 %21, 60
  %28 = trunc i64 %shr.i.i.i.i to i32
  %29 = and i32 %28, 7
  %conv.i.i.i = add nuw nsw i32 %29, 2
  %add.ptr.i.i = getelementptr i64, ptr %19, i32 %conv.i.i.i
  %30 = ptrtoint ptr %i.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %i.0, align 4
  %end.i = getelementptr inbounds %struct.btree_iter_set, ptr %i.0, i32 0, i32 1
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp.i442 = icmp eq ptr %add.ptr.i.i, %32
  br i1 %cmp.i442, label %if.then.i, label %if.then16.sort_key_next.exit_crit_edge

if.then16.sort_key_next.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sort_key_next.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %2, -1
  %33 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec.i, ptr %used, align 4
  %arrayidx.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %dec.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %i.0 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %i.0, align 4
  br label %sort_key_next.exit

sort_key_next.exit:                               ; preds = %if.then.i, %if.then16.sort_key_next.exit_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %i.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast69
  %mul695 = ashr exact i32 %sub.ptr.sub, 2
  %add696 = or i32 %mul695, 1
  %37 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add696, i32 %38)
  %cmp18697 = icmp ult i32 %add696, %38
  br i1 %cmp18697, label %for.body.preheader, label %sort_key_next.exit.cleanup_crit_edge

sort_key_next.exit.cleanup_crit_edge:             ; preds = %sort_key_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %sort_key_next.exit
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %for.body

for.body:                                         ; preds = %do.body40.for.body_crit_edge, %for.body.preheader
  %39 = phi i32 [ %72, %do.body40.for.body_crit_edge ], [ %38, %for.body.preheader ]
  %add700 = phi i32 [ %add, %do.body40.for.body_crit_edge ], [ %add696, %for.body.preheader ]
  %mul699 = phi i32 [ %mul, %do.body40.for.body_crit_edge ], [ %mul695, %for.body.preheader ]
  %_j.0698 = phi i32 [ %_r.0, %do.body40.for.body_crit_edge ], [ %sub.ptr.div, %for.body.preheader ]
  %add21 = add i32 %mul699, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %39)
  %cmp23 = icmp ult i32 %add21, %39
  br i1 %cmp23, label %land.lhs.true24, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true24:                                  ; preds = %for.body
  %arrayidx26 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add700
  %arrayidx29 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add21
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack365 = load i32, ptr %arrayidx26, align 4
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack368 = load i32, ptr %arrayidx29, align 4
  %42 = inttoptr i32 %.unpack365 to ptr
  %43 = inttoptr i32 %.unpack368 to ptr
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %42, align 8
  %and.i.i443 = and i64 %45, 1048575
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %43, align 8
  %and.i30.i444 = and i64 %47, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i443, i64 %and.i30.i444)
  %cmp.not.i.i445 = icmp eq i64 %and.i.i443, %and.i30.i444
  br i1 %cmp.not.i.i445, label %cond.false.i.i456, label %cond.true.i.i447, !prof !76

cond.true.i.i447:                                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i446 = sub nsw i64 %and.i.i443, %and.i30.i444
  br label %bch_extent_sort_cmp.exit462

cond.false.i.i456:                                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i448 = getelementptr inbounds %struct.bkey, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %low.i31.i448 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %low.i31.i448, align 8
  %shr.i32.i449 = lshr i64 %47, 20
  %and.i33.i450 = and i64 %shr.i32.i449, 65535
  %low.i.i451 = getelementptr inbounds %struct.bkey, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %low.i.i451 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %low.i.i451, align 8
  %shr.i.i452 = lshr i64 %45, 20
  %and.i29.i453 = and i64 %shr.i.i452, 65535
  %52 = add i64 %and.i29.i453, %49
  %sub15.neg.i454 = sub i64 %and.i33.i450, %52
  %sub7.i.i455 = add i64 %sub15.neg.i454, %51
  br label %bch_extent_sort_cmp.exit462

bch_extent_sort_cmp.exit462:                      ; preds = %cond.false.i.i456, %cond.true.i.i447
  %cond.i.i457 = phi i64 [ %sub.i.i446, %cond.true.i.i447 ], [ %sub7.i.i455, %cond.false.i.i456 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i457)
  %tobool.not.i458 = icmp eq i64 %cond.i.i457, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i457)
  %cmp.i459 = icmp sgt i64 %cond.i.i457, 0
  %cmp19.i460 = icmp ult ptr %42, %43
  %cond.in.i461 = select i1 %tobool.not.i458, i1 %cmp19.i460, i1 %cmp.i459
  %spec.select401 = select i1 %cond.in.i461, i32 %add21, i32 %add700
  br label %if.end32

if.end32:                                         ; preds = %bch_extent_sort_cmp.exit462, %for.body.if.end32_crit_edge
  %_r.0 = phi i32 [ %add700, %for.body.if.end32_crit_edge ], [ %spec.select401, %bch_extent_sort_cmp.exit462 ]
  %arrayidx34 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r.0
  %arrayidx36 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j.0698
  %53 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack = load i32, ptr %arrayidx34, align 4
  %54 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack362 = load i32, ptr %arrayidx36, align 4
  %55 = inttoptr i32 %.unpack to ptr
  %56 = inttoptr i32 %.unpack362 to ptr
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %55, align 8
  %and.i.i463 = and i64 %58, 1048575
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %56, align 8
  %and.i30.i464 = and i64 %60, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i463, i64 %and.i30.i464)
  %cmp.not.i.i465 = icmp eq i64 %and.i.i463, %and.i30.i464
  br i1 %cmp.not.i.i465, label %cond.false.i.i476, label %cond.true.i.i467, !prof !76

cond.true.i.i467:                                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i466 = sub nsw i64 %and.i.i463, %and.i30.i464
  br label %bch_extent_sort_cmp.exit482

cond.false.i.i476:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i468 = getelementptr inbounds %struct.bkey, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %low.i31.i468 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %low.i31.i468, align 8
  %shr.i32.i469 = lshr i64 %60, 20
  %and.i33.i470 = and i64 %shr.i32.i469, 65535
  %low.i.i471 = getelementptr inbounds %struct.bkey, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %low.i.i471 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %low.i.i471, align 8
  %shr.i.i472 = lshr i64 %58, 20
  %and.i29.i473 = and i64 %shr.i.i472, 65535
  %65 = add i64 %and.i29.i473, %62
  %sub15.neg.i474 = sub i64 %and.i33.i470, %65
  %sub7.i.i475 = add i64 %sub15.neg.i474, %64
  br label %bch_extent_sort_cmp.exit482

bch_extent_sort_cmp.exit482:                      ; preds = %cond.false.i.i476, %cond.true.i.i467
  %cond.i.i477 = phi i64 [ %sub.i.i466, %cond.true.i.i467 ], [ %sub7.i.i475, %cond.false.i.i476 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i477)
  %tobool.not.i478 = icmp eq i64 %cond.i.i477, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i477)
  %cmp.i479 = icmp sgt i64 %cond.i.i477, 0
  %cmp19.i480 = icmp ult ptr %55, %56
  %cond.in.i481 = select i1 %tobool.not.i478, i1 %cmp19.i480, i1 %cmp.i479
  br i1 %cond.in.i481, label %bch_extent_sort_cmp.exit482.cleanupthread-pre-split_crit_edge, label %do.body40

bch_extent_sort_cmp.exit482.cleanupthread-pre-split_crit_edge: ; preds = %bch_extent_sort_cmp.exit482
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanupthread-pre-split

do.body40:                                        ; preds = %bch_extent_sort_cmp.exit482
  %66 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %__tmp.sroa.0.0.copyload = load ptr, ptr %arrayidx34, align 4
  %__tmp.sroa.5.0.arrayidx42.sroa_idx = getelementptr inbounds i8, ptr %arrayidx34, i32 4
  %67 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx42.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %__tmp.sroa.5.0.copyload = load ptr, ptr %__tmp.sroa.5.0.arrayidx42.sroa_idx, align 4
  %68 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %arrayidx36, align 4
  store i64 %69, ptr %arrayidx34, align 4
  store ptr %__tmp.sroa.0.0.copyload, ptr %arrayidx36, align 4
  %__tmp.sroa.5.0.arrayidx48.sroa_idx = getelementptr inbounds i8, ptr %arrayidx36, i32 4
  %70 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx48.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.arrayidx48.sroa_idx, align 4
  %mul = shl i32 %_r.0, 1
  %add = or i32 %mul, 1
  %71 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used, align 4
  %cmp18 = icmp ult i32 %add, %72
  br i1 %cmp18, label %do.body40.for.body_crit_edge, label %do.body40.cleanup_crit_edge

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body40.for.body_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end51:                                         ; preds = %if.end13
  %cmp54 = icmp ugt ptr %17, %19
  br i1 %cmp54, label %if.then55, label %do.body117

if.then55:                                        ; preds = %if.end51
  br i1 %cmp.not.i, label %bkey_cmp.exit414, label %bkey_cmp.exit414.thread, !prof !76

bkey_cmp.exit414:                                 ; preds = %if.then55
  %low.i.i409 = getelementptr inbounds %struct.bkey, ptr %17, i32 0, i32 1
  %73 = ptrtoint ptr %low.i.i409 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %low.i.i409, align 8
  %sub7.i411 = sub i64 %74, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i411)
  %cmp59 = icmp sgt i64 %sub7.i411, -1
  br i1 %cmp59, label %bkey_cmp.exit414.if.then60_crit_edge, label %cond.false.i.i497

bkey_cmp.exit414.if.then60_crit_edge:             ; preds = %bkey_cmp.exit414
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

bkey_cmp.exit414.thread:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp59647.not = icmp ult i64 %and.i.i, %and.i
  br i1 %cmp59647.not, label %cond.true.i.i495, label %bkey_cmp.exit414.thread.if.then60_crit_edge

bkey_cmp.exit414.thread.if.then60_crit_edge:      ; preds = %bkey_cmp.exit414.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.then60:                                        ; preds = %bkey_cmp.exit414.thread.if.then60_crit_edge, %bkey_cmp.exit414.if.then60_crit_edge
  %shr.i.i.i.i483 = lshr i64 %21, 60
  %75 = trunc i64 %shr.i.i.i.i483 to i32
  %76 = and i32 %75, 7
  %conv.i.i.i484 = add nuw nsw i32 %76, 2
  %add.ptr.i.i485 = getelementptr i64, ptr %19, i32 %conv.i.i.i484
  %77 = ptrtoint ptr %i.0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i485, ptr %i.0, align 4
  %end.i486 = getelementptr inbounds %struct.btree_iter_set, ptr %i.0, i32 0, i32 1
  %78 = ptrtoint ptr %end.i486 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i486, align 4
  %cmp.i487 = icmp eq ptr %add.ptr.i.i485, %79
  br i1 %cmp.i487, label %if.then.i491, label %if.then60.do.body65_crit_edge

if.then60.do.body65_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.then.i491:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i489 = add i32 %2, -1
  %80 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %dec.i489, ptr %used, align 4
  %arrayidx.i490 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %dec.i489
  %81 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %arrayidx.i490, align 4
  %83 = ptrtoint ptr %i.0 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %i.0, align 4
  br label %do.body65

cond.true.i.i495:                                 ; preds = %bkey_cmp.exit414.thread
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i494 = sub nsw i64 %and.i.i, %and.i
  br label %bkey_cmp.exit.i

cond.false.i.i497:                                ; preds = %bkey_cmp.exit414
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %low.i.i409 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %low.i.i409, align 8
  %sub7.i.i496 = sub i64 %85, %23
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i497, %cond.true.i.i495
  %cond.i.i498 = phi i64 [ %sub.i.i494, %cond.true.i.i495 ], [ %sub7.i.i496, %cond.false.i.i497 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i498)
  %cmp.i499 = icmp sgt i64 %cond.i.i498, 0
  br i1 %cmp.i499, label %do.body2.i, label %bch_cut_front.exit, !prof !78

do.body2.i:                                       ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

bch_cut_front.exit:                               ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call zeroext i1 @__bch_cut_front(ptr noundef nonnull %17, ptr noundef %19) #7
  br label %do.body65

do.body65:                                        ; preds = %bch_cut_front.exit, %if.then.i491, %if.then60.do.body65_crit_edge
  %sub.ptr.lhs.cast68 = ptrtoint ptr %i.0 to i32
  %sub.ptr.sub70 = sub i32 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %mul73689 = ashr exact i32 %sub.ptr.sub70, 2
  %add74690 = or i32 %mul73689, 1
  %86 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add74690, i32 %87)
  %cmp76691 = icmp ult i32 %add74690, %87
  br i1 %cmp76691, label %for.body77.preheader, label %do.body65.cleanup_crit_edge

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body77.preheader:                             ; preds = %do.body65
  %sub.ptr.div71 = ashr exact i32 %sub.ptr.sub70, 3
  br label %for.body77

for.body77:                                       ; preds = %do.body100.for.body77_crit_edge, %for.body77.preheader
  %88 = phi i32 [ %121, %do.body100.for.body77_crit_edge ], [ %87, %for.body77.preheader ]
  %add74694 = phi i32 [ %add74, %do.body100.for.body77_crit_edge ], [ %add74690, %for.body77.preheader ]
  %mul73693 = phi i32 [ %mul73, %do.body100.for.body77_crit_edge ], [ %mul73689, %for.body77.preheader ]
  %_j67.0692 = phi i32 [ %_r66.0, %do.body100.for.body77_crit_edge ], [ %sub.ptr.div71, %for.body77.preheader ]
  %add80 = add i32 %mul73693, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add80, i32 %88)
  %cmp82 = icmp ult i32 %add80, %88
  br i1 %cmp82, label %land.lhs.true83, label %for.body77.if.end92_crit_edge

for.body77.if.end92_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

land.lhs.true83:                                  ; preds = %for.body77
  %arrayidx85 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add74694
  %arrayidx88 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add80
  %89 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack389 = load i32, ptr %arrayidx85, align 4
  %90 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack392 = load i32, ptr %arrayidx88, align 4
  %91 = inttoptr i32 %.unpack389 to ptr
  %92 = inttoptr i32 %.unpack392 to ptr
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %91, align 8
  %and.i.i500 = and i64 %94, 1048575
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %92, align 8
  %and.i30.i501 = and i64 %96, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i500, i64 %and.i30.i501)
  %cmp.not.i.i502 = icmp eq i64 %and.i.i500, %and.i30.i501
  br i1 %cmp.not.i.i502, label %cond.false.i.i513, label %cond.true.i.i504, !prof !76

cond.true.i.i504:                                 ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i503 = sub nsw i64 %and.i.i500, %and.i30.i501
  br label %bch_extent_sort_cmp.exit520

cond.false.i.i513:                                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i505 = getelementptr inbounds %struct.bkey, ptr %92, i32 0, i32 1
  %97 = ptrtoint ptr %low.i31.i505 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %low.i31.i505, align 8
  %shr.i32.i506 = lshr i64 %96, 20
  %and.i33.i507 = and i64 %shr.i32.i506, 65535
  %low.i.i508 = getelementptr inbounds %struct.bkey, ptr %91, i32 0, i32 1
  %99 = ptrtoint ptr %low.i.i508 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %low.i.i508, align 8
  %shr.i.i509 = lshr i64 %94, 20
  %and.i29.i510 = and i64 %shr.i.i509, 65535
  %101 = add i64 %and.i29.i510, %98
  %sub15.neg.i511 = sub i64 %and.i33.i507, %101
  %sub7.i.i512 = add i64 %sub15.neg.i511, %100
  br label %bch_extent_sort_cmp.exit520

bch_extent_sort_cmp.exit520:                      ; preds = %cond.false.i.i513, %cond.true.i.i504
  %cond.i.i514 = phi i64 [ %sub.i.i503, %cond.true.i.i504 ], [ %sub7.i.i512, %cond.false.i.i513 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i514)
  %tobool.not.i515 = icmp eq i64 %cond.i.i514, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i514)
  %cmp.i516 = icmp sgt i64 %cond.i.i514, 0
  %cmp19.i517 = icmp ult ptr %91, %92
  %cond.in.i518 = select i1 %tobool.not.i515, i1 %cmp19.i517, i1 %cmp.i516
  %spec.select402 = select i1 %cond.in.i518, i32 %add80, i32 %add74694
  br label %if.end92

if.end92:                                         ; preds = %bch_extent_sort_cmp.exit520, %for.body77.if.end92_crit_edge
  %_r66.0 = phi i32 [ %add74694, %for.body77.if.end92_crit_edge ], [ %spec.select402, %bch_extent_sort_cmp.exit520 ]
  %arrayidx94 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r66.0
  %arrayidx96 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j67.0692
  %102 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.unpack383 = load i32, ptr %arrayidx94, align 4
  %103 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack386 = load i32, ptr %arrayidx96, align 4
  %104 = inttoptr i32 %.unpack383 to ptr
  %105 = inttoptr i32 %.unpack386 to ptr
  %106 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %104, align 8
  %and.i.i521 = and i64 %107, 1048575
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %105, align 8
  %and.i30.i522 = and i64 %109, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i521, i64 %and.i30.i522)
  %cmp.not.i.i523 = icmp eq i64 %and.i.i521, %and.i30.i522
  br i1 %cmp.not.i.i523, label %cond.false.i.i534, label %cond.true.i.i525, !prof !76

cond.true.i.i525:                                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i524 = sub nsw i64 %and.i.i521, %and.i30.i522
  br label %bch_extent_sort_cmp.exit541

cond.false.i.i534:                                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i526 = getelementptr inbounds %struct.bkey, ptr %105, i32 0, i32 1
  %110 = ptrtoint ptr %low.i31.i526 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %low.i31.i526, align 8
  %shr.i32.i527 = lshr i64 %109, 20
  %and.i33.i528 = and i64 %shr.i32.i527, 65535
  %low.i.i529 = getelementptr inbounds %struct.bkey, ptr %104, i32 0, i32 1
  %112 = ptrtoint ptr %low.i.i529 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %low.i.i529, align 8
  %shr.i.i530 = lshr i64 %107, 20
  %and.i29.i531 = and i64 %shr.i.i530, 65535
  %114 = add i64 %and.i29.i531, %111
  %sub15.neg.i532 = sub i64 %and.i33.i528, %114
  %sub7.i.i533 = add i64 %sub15.neg.i532, %113
  br label %bch_extent_sort_cmp.exit541

bch_extent_sort_cmp.exit541:                      ; preds = %cond.false.i.i534, %cond.true.i.i525
  %cond.i.i535 = phi i64 [ %sub.i.i524, %cond.true.i.i525 ], [ %sub7.i.i533, %cond.false.i.i534 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i535)
  %tobool.not.i536 = icmp eq i64 %cond.i.i535, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i535)
  %cmp.i537 = icmp sgt i64 %cond.i.i535, 0
  %cmp19.i538 = icmp ult ptr %104, %105
  %cond.in.i539 = select i1 %tobool.not.i536, i1 %cmp19.i538, i1 %cmp.i537
  br i1 %cond.in.i539, label %bch_extent_sort_cmp.exit541.cleanupthread-pre-split_crit_edge, label %do.body100

bch_extent_sort_cmp.exit541.cleanupthread-pre-split_crit_edge: ; preds = %bch_extent_sort_cmp.exit541
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanupthread-pre-split

do.body100:                                       ; preds = %bch_extent_sort_cmp.exit541
  %115 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %__tmp101.sroa.0.0.copyload = load ptr, ptr %arrayidx94, align 4
  %__tmp101.sroa.5.0.arrayidx103.sroa_idx = getelementptr inbounds i8, ptr %arrayidx94, i32 4
  %116 = ptrtoint ptr %__tmp101.sroa.5.0.arrayidx103.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %116)
  %__tmp101.sroa.5.0.copyload = load ptr, ptr %__tmp101.sroa.5.0.arrayidx103.sroa_idx, align 4
  %117 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %arrayidx96, align 4
  store i64 %118, ptr %arrayidx94, align 4
  store ptr %__tmp101.sroa.0.0.copyload, ptr %arrayidx96, align 4
  %__tmp101.sroa.5.0.arrayidx109.sroa_idx = getelementptr inbounds i8, ptr %arrayidx96, i32 4
  %119 = ptrtoint ptr %__tmp101.sroa.5.0.arrayidx109.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %__tmp101.sroa.5.0.copyload, ptr %__tmp101.sroa.5.0.arrayidx109.sroa_idx, align 4
  %mul73 = shl i32 %_r66.0, 1
  %add74 = or i32 %mul73, 1
  %120 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %used, align 4
  %cmp76 = icmp ult i32 %add74, %121
  br i1 %cmp76, label %do.body100.for.body77_crit_edge, label %do.body100.cleanup_crit_edge

do.body100.cleanup_crit_edge:                     ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body100.for.body77_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77

do.body117:                                       ; preds = %if.end51
  %low.i543 = getelementptr inbounds %struct.bkey, ptr %17, i32 0, i32 1
  %122 = ptrtoint ptr %low.i543 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %low.i543, align 8
  br i1 %cmp.not.i, label %bkey_cmp.exit425, label %cond.true.i430, !prof !76

bkey_cmp.exit425:                                 ; preds = %do.body117
  %shr.i544 = lshr i64 %25, 20
  %and.i545 = and i64 %shr.i544, 65535
  %124 = add i64 %and.i545, %sub
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %124)
  %tobool141.not = icmp eq i64 %123, %124
  br i1 %tobool141.not, label %do.body146, label %cond.false.i434, !prof !78

do.body146:                                       ; preds = %bkey_cmp.exit425
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #7, !srcloc !80
  unreachable

cond.true.i430:                                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i429 = sub nsw i64 %and.i, %and.i.i
  br label %bkey_cmp.exit436

cond.false.i434:                                  ; preds = %bkey_cmp.exit425
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i433 = sub i64 %23, %123
  br label %bkey_cmp.exit436

bkey_cmp.exit436:                                 ; preds = %cond.false.i434, %cond.true.i430
  %cond.i435 = phi i64 [ %sub.i429, %cond.true.i430 ], [ %sub7.i433, %cond.false.i434 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i435)
  %cmp158 = icmp slt i64 %cond.i435, 0
  br i1 %cmp158, label %if.then159, label %if.else225

if.then159:                                       ; preds = %bkey_cmp.exit436
  %sh.diff.i = lshr i64 %25, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %125 = call ptr @memcpy(ptr %tmp, ptr %17, i32 %mul.i)
  %126 = ptrtoint ptr %i.0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i.0, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %127, align 8
  %and.i550 = and i64 %129, 1048575
  %or167 = or i64 %and.i550, -9223372036854775808
  %130 = ptrtoint ptr %.compoundliteral163 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %or167, ptr %.compoundliteral163, align 8
  %low168 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral163, i32 0, i32 1
  %low.i551 = getelementptr inbounds %struct.bkey, ptr %127, i32 0, i32 1
  %131 = ptrtoint ptr %low.i551 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %low.i551, align 8
  %133 = load i64, ptr %127, align 8
  %shr.i552 = lshr i64 %133, 20
  %and.i553 = and i64 %shr.i552, 65535
  %sub173 = sub i64 %132, %and.i553
  %134 = ptrtoint ptr %low168 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %sub173, ptr %low168, align 8
  %135 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %tmp, align 8
  %and.i.i554 = and i64 %136, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i550, i64 %and.i.i554)
  %cmp.not.i.i556 = icmp eq i64 %and.i550, %and.i.i554
  br i1 %cmp.not.i.i556, label %cond.false.i.i563, label %cond.true.i.i558, !prof !76

cond.true.i.i558:                                 ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i557 = sub nsw i64 %and.i550, %and.i.i554
  br label %bkey_cmp.exit.i566

cond.false.i.i563:                                ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  %low.i.i559 = getelementptr inbounds %struct.bkey, ptr %tmp, i32 0, i32 1
  %137 = ptrtoint ptr %low.i.i559 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %low.i.i559, align 8
  %shr.i.i560 = lshr i64 %136, 20
  %and.i1.i = and i64 %shr.i.i560, 65535
  %sub.neg.i = add i64 %and.i1.i, %sub173
  %sub7.i.i562 = sub i64 %sub.neg.i, %138
  br label %bkey_cmp.exit.i566

bkey_cmp.exit.i566:                               ; preds = %cond.false.i.i563, %cond.true.i.i558
  %cond.i.i564 = phi i64 [ %sub.i.i557, %cond.true.i.i558 ], [ %sub7.i.i562, %cond.false.i.i563 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i564)
  %cmp.i565 = icmp slt i64 %cond.i.i564, 0
  br i1 %cmp.i565, label %do.body5.i, label %bch_cut_back.exit, !prof !78

do.body5.i:                                       ; preds = %bkey_cmp.exit.i566
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

bch_cut_back.exit:                                ; preds = %bkey_cmp.exit.i566
  %call9.i = call zeroext i1 @__bch_cut_back(ptr noundef nonnull %.compoundliteral163, ptr noundef %tmp) #7
  %139 = ptrtoint ptr %i.0 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i.0, align 4
  %141 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %140, align 8
  %and.i.i.i567 = and i64 %144, 1048575
  %145 = ptrtoint ptr %142 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %142, align 8
  %and.i12.i.i568 = and i64 %146, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i567, i64 %and.i12.i.i568)
  %cmp.not.i.i569 = icmp eq i64 %and.i.i.i567, %and.i12.i.i568
  br i1 %cmp.not.i.i569, label %cond.false.i.i575, label %cond.true.i.i571, !prof !76

cond.true.i.i571:                                 ; preds = %bch_cut_back.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i570 = sub nsw i64 %and.i.i.i567, %and.i12.i.i568
  br label %bkey_cmp.exit.i578

cond.false.i.i575:                                ; preds = %bch_cut_back.exit
  call void @__sanitizer_cov_trace_pc() #9
  %low.i.i.i572 = getelementptr inbounds %struct.bkey, ptr %140, i32 0, i32 1
  %147 = ptrtoint ptr %low.i.i.i572 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %low.i.i.i572, align 8
  %low.i15.i.i573 = getelementptr inbounds %struct.bkey, ptr %142, i32 0, i32 1
  %149 = ptrtoint ptr %low.i15.i.i573 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %low.i15.i.i573, align 8
  %sub7.i.i574 = sub i64 %148, %150
  br label %bkey_cmp.exit.i578

bkey_cmp.exit.i578:                               ; preds = %cond.false.i.i575, %cond.true.i.i571
  %cond.i.i576 = phi i64 [ %sub.i.i570, %cond.true.i.i571 ], [ %sub7.i.i574, %cond.false.i.i575 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i576)
  %cmp.i577 = icmp sgt i64 %cond.i.i576, 0
  br i1 %cmp.i577, label %do.body2.i579, label %bch_cut_front.exit581, !prof !78

do.body2.i579:                                    ; preds = %bkey_cmp.exit.i578
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

bch_cut_front.exit581:                            ; preds = %bkey_cmp.exit.i578
  %call6.i580 = call zeroext i1 @__bch_cut_front(ptr noundef %140, ptr noundef %142) #7
  %151 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp185702 = icmp ugt i32 %152, 1
  br i1 %cmp185702, label %bch_cut_front.exit581.for.body186_crit_edge, label %bch_cut_front.exit581.return_crit_edge

bch_cut_front.exit581.return_crit_edge:           ; preds = %bch_cut_front.exit581
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

bch_cut_front.exit581.for.body186_crit_edge:      ; preds = %bch_cut_front.exit581
  br label %for.body186

for.body186:                                      ; preds = %do.body209.for.body186_crit_edge, %bch_cut_front.exit581.for.body186_crit_edge
  %153 = phi i32 [ %186, %do.body209.for.body186_crit_edge ], [ %152, %bch_cut_front.exit581.for.body186_crit_edge ]
  %add183705 = phi i32 [ %add183, %do.body209.for.body186_crit_edge ], [ 1, %bch_cut_front.exit581.for.body186_crit_edge ]
  %mul182704 = phi i32 [ %mul182, %do.body209.for.body186_crit_edge ], [ 0, %bch_cut_front.exit581.for.body186_crit_edge ]
  %_j180.0703 = phi i32 [ %_r179.0, %do.body209.for.body186_crit_edge ], [ 0, %bch_cut_front.exit581.for.body186_crit_edge ]
  %add189 = add i32 %mul182704, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add189, i32 %153)
  %cmp191 = icmp ult i32 %add189, %153
  br i1 %cmp191, label %land.lhs.true192, label %for.body186.if.end201_crit_edge

for.body186.if.end201_crit_edge:                  ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

land.lhs.true192:                                 ; preds = %for.body186
  %arrayidx194 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add183705
  %arrayidx197 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add189
  %154 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %154)
  %.unpack377 = load i32, ptr %arrayidx194, align 4
  %155 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack380 = load i32, ptr %arrayidx197, align 4
  %156 = inttoptr i32 %.unpack377 to ptr
  %157 = inttoptr i32 %.unpack380 to ptr
  %158 = ptrtoint ptr %156 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %156, align 8
  %and.i.i582 = and i64 %159, 1048575
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %157, align 8
  %and.i30.i583 = and i64 %161, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i582, i64 %and.i30.i583)
  %cmp.not.i.i584 = icmp eq i64 %and.i.i582, %and.i30.i583
  br i1 %cmp.not.i.i584, label %cond.false.i.i595, label %cond.true.i.i586, !prof !76

cond.true.i.i586:                                 ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i585 = sub nsw i64 %and.i.i582, %and.i30.i583
  br label %bch_extent_sort_cmp.exit602

cond.false.i.i595:                                ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i587 = getelementptr inbounds %struct.bkey, ptr %157, i32 0, i32 1
  %162 = ptrtoint ptr %low.i31.i587 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %low.i31.i587, align 8
  %shr.i32.i588 = lshr i64 %161, 20
  %and.i33.i589 = and i64 %shr.i32.i588, 65535
  %low.i.i590 = getelementptr inbounds %struct.bkey, ptr %156, i32 0, i32 1
  %164 = ptrtoint ptr %low.i.i590 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %low.i.i590, align 8
  %shr.i.i591 = lshr i64 %159, 20
  %and.i29.i592 = and i64 %shr.i.i591, 65535
  %166 = add i64 %and.i29.i592, %163
  %sub15.neg.i593 = sub i64 %and.i33.i589, %166
  %sub7.i.i594 = add i64 %sub15.neg.i593, %165
  br label %bch_extent_sort_cmp.exit602

bch_extent_sort_cmp.exit602:                      ; preds = %cond.false.i.i595, %cond.true.i.i586
  %cond.i.i596 = phi i64 [ %sub.i.i585, %cond.true.i.i586 ], [ %sub7.i.i594, %cond.false.i.i595 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i596)
  %tobool.not.i597 = icmp eq i64 %cond.i.i596, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i596)
  %cmp.i598 = icmp sgt i64 %cond.i.i596, 0
  %cmp19.i599 = icmp ult ptr %156, %157
  %cond.in.i600 = select i1 %tobool.not.i597, i1 %cmp19.i599, i1 %cmp.i598
  %spec.select403 = select i1 %cond.in.i600, i32 %add189, i32 %add183705
  br label %if.end201

if.end201:                                        ; preds = %bch_extent_sort_cmp.exit602, %for.body186.if.end201_crit_edge
  %_r179.0 = phi i32 [ %add183705, %for.body186.if.end201_crit_edge ], [ %spec.select403, %bch_extent_sort_cmp.exit602 ]
  %arrayidx203 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r179.0
  %arrayidx205 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j180.0703
  %167 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %167)
  %.unpack371 = load i32, ptr %arrayidx203, align 4
  %168 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.unpack374 = load i32, ptr %arrayidx205, align 4
  %169 = inttoptr i32 %.unpack371 to ptr
  %170 = inttoptr i32 %.unpack374 to ptr
  %171 = ptrtoint ptr %169 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %169, align 8
  %and.i.i603 = and i64 %172, 1048575
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %170, align 8
  %and.i30.i604 = and i64 %174, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i603, i64 %and.i30.i604)
  %cmp.not.i.i605 = icmp eq i64 %and.i.i603, %and.i30.i604
  br i1 %cmp.not.i.i605, label %cond.false.i.i616, label %cond.true.i.i607, !prof !76

cond.true.i.i607:                                 ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i606 = sub nsw i64 %and.i.i603, %and.i30.i604
  br label %bch_extent_sort_cmp.exit623

cond.false.i.i616:                                ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  %low.i31.i608 = getelementptr inbounds %struct.bkey, ptr %170, i32 0, i32 1
  %175 = ptrtoint ptr %low.i31.i608 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %low.i31.i608, align 8
  %shr.i32.i609 = lshr i64 %174, 20
  %and.i33.i610 = and i64 %shr.i32.i609, 65535
  %low.i.i611 = getelementptr inbounds %struct.bkey, ptr %169, i32 0, i32 1
  %177 = ptrtoint ptr %low.i.i611 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %low.i.i611, align 8
  %shr.i.i612 = lshr i64 %172, 20
  %and.i29.i613 = and i64 %shr.i.i612, 65535
  %179 = add i64 %and.i29.i613, %176
  %sub15.neg.i614 = sub i64 %and.i33.i610, %179
  %sub7.i.i615 = add i64 %sub15.neg.i614, %178
  br label %bch_extent_sort_cmp.exit623

bch_extent_sort_cmp.exit623:                      ; preds = %cond.false.i.i616, %cond.true.i.i607
  %cond.i.i617 = phi i64 [ %sub.i.i606, %cond.true.i.i607 ], [ %sub7.i.i615, %cond.false.i.i616 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i617)
  %tobool.not.i618 = icmp eq i64 %cond.i.i617, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i617)
  %cmp.i619 = icmp sgt i64 %cond.i.i617, 0
  %cmp19.i620 = icmp ult ptr %169, %170
  %cond.in.i621 = select i1 %tobool.not.i618, i1 %cmp19.i620, i1 %cmp.i619
  br i1 %cond.in.i621, label %bch_extent_sort_cmp.exit623.return_crit_edge, label %do.body209

bch_extent_sort_cmp.exit623.return_crit_edge:     ; preds = %bch_extent_sort_cmp.exit623
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body209:                                       ; preds = %bch_extent_sort_cmp.exit623
  %180 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %180)
  %__tmp210.sroa.0.0.copyload = load ptr, ptr %arrayidx203, align 4
  %__tmp210.sroa.5.0.arrayidx212.sroa_idx = getelementptr inbounds i8, ptr %arrayidx203, i32 4
  %181 = ptrtoint ptr %__tmp210.sroa.5.0.arrayidx212.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %181)
  %__tmp210.sroa.5.0.copyload = load ptr, ptr %__tmp210.sroa.5.0.arrayidx212.sroa_idx, align 4
  %182 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 8)
  %183 = load i64, ptr %arrayidx205, align 4
  store i64 %183, ptr %arrayidx203, align 4
  store ptr %__tmp210.sroa.0.0.copyload, ptr %arrayidx205, align 4
  %__tmp210.sroa.5.0.arrayidx218.sroa_idx = getelementptr inbounds i8, ptr %arrayidx205, i32 4
  %184 = ptrtoint ptr %__tmp210.sroa.5.0.arrayidx218.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %__tmp210.sroa.5.0.copyload, ptr %__tmp210.sroa.5.0.arrayidx218.sroa_idx, align 4
  %mul182 = shl i32 %_r179.0, 1
  %add183 = or i32 %mul182, 1
  %185 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %used, align 4
  %cmp185 = icmp ult i32 %add183, %186
  br i1 %cmp185, label %do.body209.for.body186_crit_edge, label %do.body209.return_crit_edge

do.body209.return_crit_edge:                      ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body209.for.body186_crit_edge:                 ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body186

if.else225:                                       ; preds = %bkey_cmp.exit436
  %187 = ptrtoint ptr %.compoundliteral226 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %or, ptr %.compoundliteral226, align 8
  %188 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %19, align 8
  %shr.i626 = lshr i64 %189, 20
  %and.i627 = and i64 %shr.i626, 65535
  %sub236 = sub i64 %23, %and.i627
  %190 = ptrtoint ptr %low231 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %sub236, ptr %low231, align 8
  %191 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %17, align 8
  %and.i.i628 = and i64 %192, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and.i.i628)
  %cmp.not.i.i630 = icmp eq i64 %and.i, %and.i.i628
  br i1 %cmp.not.i.i630, label %cond.false.i.i639, label %cond.true.i.i632, !prof !76

cond.true.i.i632:                                 ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i631 = sub nsw i64 %and.i, %and.i.i628
  br label %bkey_cmp.exit.i642

cond.false.i.i639:                                ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %low.i543 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %low.i543, align 8
  %shr.i.i634 = lshr i64 %192, 20
  %and.i1.i635 = and i64 %shr.i.i634, 65535
  %sub.neg.i636 = add i64 %and.i1.i635, %sub236
  %sub7.i.i638 = sub i64 %sub.neg.i636, %194
  br label %bkey_cmp.exit.i642

bkey_cmp.exit.i642:                               ; preds = %cond.false.i.i639, %cond.true.i.i632
  %cond.i.i640 = phi i64 [ %sub.i.i631, %cond.true.i.i632 ], [ %sub7.i.i638, %cond.false.i.i639 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i640)
  %cmp.i641 = icmp slt i64 %cond.i.i640, 0
  br i1 %cmp.i641, label %do.body5.i643, label %bch_cut_back.exit645, !prof !78

do.body5.i643:                                    ; preds = %bkey_cmp.exit.i642
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

bch_cut_back.exit645:                             ; preds = %bkey_cmp.exit.i642
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i644 = call zeroext i1 @__bch_cut_back(ptr noundef nonnull %.compoundliteral226, ptr noundef %17) #7
  br label %cleanupthread-pre-split

cleanupthread-pre-split:                          ; preds = %bch_cut_back.exit645, %bch_extent_sort_cmp.exit541.cleanupthread-pre-split_crit_edge, %bch_extent_sort_cmp.exit482.cleanupthread-pre-split_crit_edge
  %195 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr = load i32, ptr %used, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanupthread-pre-split, %do.body100.cleanup_crit_edge, %do.body65.cleanup_crit_edge, %do.body40.cleanup_crit_edge, %sort_key_next.exit.cleanup_crit_edge
  %196 = phi i32 [ %.pr, %cleanupthread-pre-split ], [ %87, %do.body65.cleanup_crit_edge ], [ %38, %sort_key_next.exit.cleanup_crit_edge ], [ %72, %do.body40.cleanup_crit_edge ], [ %121, %do.body100.cleanup_crit_edge ]
  %cmp = icmp ugt i32 %196, 1
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

return:                                           ; preds = %cleanup.return_crit_edge, %do.body209.return_crit_edge, %bch_extent_sort_cmp.exit623.return_crit_edge, %bch_cut_front.exit581.return_crit_edge, %bkey_cmp.exit.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ %tmp, %bch_cut_front.exit581.return_crit_edge ], [ null, %entry.return_crit_edge ], [ %tmp, %do.body209.return_crit_edge ], [ %tmp, %bch_extent_sort_cmp.exit623.return_crit_edge ], [ null, %bkey_cmp.exit.return_crit_edge ], [ null, %cleanup.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_extent_insert_fixup(ptr noundef %b, ptr noundef %insert, ptr noundef %iter, ptr noundef readonly %replace_key) #0 align 64 {
entry:
  %temp = alloca %union.anon.102, align 8
  %.compoundliteral178 = alloca %struct.bkey, align 8
  %.compoundliteral244 = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c1 = getelementptr i8, ptr %b, i32 -108
  %0 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c1, align 4
  %low.i = getelementptr inbounds %struct.bkey, ptr %insert, i32 0, i32 1
  %2 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %low.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !78

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #7, !srcloc !82
  unreachable

do.body11:                                        ; preds = %entry
  %4 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %insert, align 8
  %6 = and i64 %5, 68718428160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool13.not = icmp eq i64 %6, 0
  br i1 %tobool13.not, label %do.body23, label %while.cond.preheader, !prof !78

while.cond.preheader:                             ; preds = %do.body11
  %call32727 = call ptr @bch_btree_iter_next(ptr noundef %iter) #7
  %tobool33.not728 = icmp eq ptr %call32727, null
  br i1 %tobool33.not728, label %while.cond.preheader.check_failed_crit_edge, label %if.end35.lr.ph

while.cond.preheader.check_failed_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

if.end35.lr.ph:                                   ; preds = %while.cond.preheader
  %tobool61.not = icmp eq ptr %replace_key, null
  %low.i503 = getelementptr inbounds %struct.bkey, ptr %replace_key, i32 0, i32 1
  %last_set_unwritten.i595 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %nsets.i598 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %low248 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral244, i32 0, i32 1
  %arrayidx126 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 0
  %arrayidx126.1 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 1
  %arrayidx126.2 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 2
  %arrayidx126.3 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 3
  %arrayidx126.4 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 4
  %arrayidx126.5 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 5
  %arrayidx126.6 = getelementptr %struct.bkey, ptr %replace_key, i32 0, i32 2, i32 6
  br label %if.end35

do.body23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 334, 0\0A.popsection", ""() #7, !srcloc !83
  unreachable

if.end35:                                         ; preds = %cleanup259.if.end35_crit_edge, %if.end35.lr.ph
  %call32731 = phi ptr [ %call32727, %if.end35.lr.ph ], [ %call32, %cleanup259.if.end35_crit_edge ]
  %sectors_found.0729 = phi i32 [ 0, %if.end35.lr.ph ], [ %sectors_found.3, %cleanup259.if.end35_crit_edge ]
  %7 = ptrtoint ptr %call32731 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call32731, align 8
  %and.i483 = and i64 %8, 1048575
  %low.i484 = getelementptr inbounds %struct.bkey, ptr %call32731, i32 0, i32 1
  %9 = ptrtoint ptr %low.i484 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %low.i484, align 8
  %shr.i485 = lshr i64 %8, 20
  %and.i486 = and i64 %shr.i485, 65535
  %sub = sub i64 %10, %and.i486
  %11 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %insert, align 8
  %and.i12.i = and i64 %12, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i12.i, i64 %and.i483)
  %cmp.not.i = icmp eq i64 %and.i12.i, %and.i483
  br i1 %cmp.not.i, label %bkey_cmp.exit, label %bkey_cmp.exit.thread, !prof !76

bkey_cmp.exit:                                    ; preds = %if.end35
  %13 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %low.i, align 8
  %sub7.i = sub i64 %sub, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp = icmp sgt i64 %sub7.i, -1
  br i1 %cmp, label %bkey_cmp.exit.if.then40_crit_edge, label %cond.false.i425

bkey_cmp.exit.if.then40_crit_edge:                ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

bkey_cmp.exit.thread:                             ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i12.i, i64 %and.i483)
  %cmp654.not = icmp ugt i64 %and.i12.i, %and.i483
  br i1 %cmp654.not, label %cond.true.i421, label %bkey_cmp.exit.thread.if.then40_crit_edge

bkey_cmp.exit.thread.if.then40_crit_edge:         ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.then40:                                        ; preds = %bkey_cmp.exit.thread.if.then40_crit_edge, %bkey_cmp.exit.if.then40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i486)
  %tobool42.not = icmp eq i64 %and.i486, 0
  br i1 %tobool42.not, label %if.then40.cleanup259_crit_edge, label %if.then40.check_failed_crit_edge

if.then40.check_failed_crit_edge:                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

if.then40.cleanup259_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

cond.true.i421:                                   ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %low.i, align 8
  %shr.i491656 = lshr i64 %12, 20
  %and.i492657 = and i64 %shr.i491656, 65535
  %sub52658 = sub i64 %16, %and.i492657
  %sub.i420 = sub nsw i64 %and.i483, %and.i12.i
  br label %bkey_cmp.exit427

cond.false.i425:                                  ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %low.i, align 8
  %shr.i491 = lshr i64 %12, 20
  %and.i492 = and i64 %shr.i491, 65535
  %sub52 = sub i64 %18, %and.i492
  %sub7.i424 = sub i64 %10, %sub52
  br label %bkey_cmp.exit427

bkey_cmp.exit427:                                 ; preds = %cond.false.i425, %cond.true.i421
  %sub52663 = phi i64 [ %sub52658, %cond.true.i421 ], [ %sub52, %cond.false.i425 ]
  %and.i492661 = phi i64 [ %and.i492657, %cond.true.i421 ], [ %and.i492, %cond.false.i425 ]
  %19 = phi i64 [ %16, %cond.true.i421 ], [ %18, %cond.false.i425 ]
  %cond.i426 = phi i64 [ %sub.i420, %cond.true.i421 ], [ %sub7.i424, %cond.false.i425 ]
  %or48659 = or i64 %and.i12.i, -9223372036854775808
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i426)
  %cmp54 = icmp slt i64 %cond.i426, 1
  br i1 %cmp54, label %bkey_cmp.exit427.cleanup259_crit_edge, label %if.end56

bkey_cmp.exit427.cleanup259_crit_edge:            ; preds = %bkey_cmp.exit427
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

if.end56:                                         ; preds = %bkey_cmp.exit427
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i486)
  %tobool63.not = icmp eq i64 %and.i486, 0
  %or.cond = select i1 %tobool61.not, i1 true, i1 %tobool63.not
  br i1 %or.cond, label %if.end56.if.end139_crit_edge, label %if.then64

if.end56.if.end139_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then64:                                        ; preds = %if.end56
  %20 = ptrtoint ptr %low.i503 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %low.i503, align 8
  %22 = ptrtoint ptr %replace_key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %replace_key, align 8
  %shr.i504 = lshr i64 %23, 20
  %and.i505 = and i64 %shr.i504, 65535
  %sub70.neg = sub i64 %sub, %21
  %sub71 = add i64 %sub70.neg, %and.i505
  %sub77 = sub i64 %21, %and.i505
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %sub77)
  %cmp78 = icmp ult i64 %sub, %sub77
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %21)
  %cmp82 = icmp ugt i64 %10, %21
  %or.cond692 = or i1 %cmp82, %cmp78
  br i1 %or.cond692, label %if.then64.if.then263_crit_edge, label %if.end85

if.then64.if.then263_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then263

if.end85:                                         ; preds = %if.then64
  %conv92 = zext i32 %sectors_found.0729 to i64
  %add = add i64 %sub52663, %conv92
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %add)
  %cmp93 = icmp ugt i64 %sub, %add
  br i1 %cmp93, label %if.end85.if.then263_crit_edge, label %if.end96

if.end85.if.then263_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then263

if.end96:                                         ; preds = %if.end85
  %shr.i22.i = xor i64 %23, %8
  %24 = and i64 %shr.i22.i, 8286623383081189376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %if.end99, label %if.end96.if.then263_crit_edge

if.end96.if.then263_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then263

if.end99:                                         ; preds = %if.end96
  %shl = shl i64 %sub71, 8
  %shr.i520 = lshr i64 %23, 60
  %and.i521 = and i64 %shr.i520, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i521)
  %tobool102.not = icmp eq i64 %and.i521, 0
  br i1 %tobool102.not, label %do.body112, label %for.body.preheader, !prof !78

for.body.preheader:                               ; preds = %if.end99
  %26 = trunc i64 %and.i521 to i32
  %arrayidx = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx, align 8
  %29 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx126, align 8
  %add127 = add i64 %30, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %add127)
  %cmp128.not = icmp eq i64 %28, %add127
  br i1 %cmp128.not, label %for.cond, label %for.body.preheader.check_failed_crit_edge

for.body.preheader.check_failed_crit_edge:        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

do.body112:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 387, 0\0A.popsection", ""() #7, !srcloc !84
  unreachable

for.cond:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp123 = icmp ugt i32 %26, 1
  br i1 %cmp123, label %for.body.1, label %for.cond.for.cond.cleanup_crit_edge_crit_edge

for.cond.for.cond.cleanup_crit_edge_crit_edge:    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.1, align 8
  %33 = ptrtoint ptr %arrayidx126.1 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx126.1, align 8
  %add127.1 = add i64 %34, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %add127.1)
  %cmp128.not.1 = icmp eq i64 %32, %add127.1
  br i1 %cmp128.not.1, label %for.cond.1, label %for.body.1.check_failed_crit_edge

for.body.1.check_failed_crit_edge:                ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.cond.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp123.1 = icmp ugt i32 %26, 2
  br i1 %cmp123.1, label %for.body.2, label %for.cond.1.for.cond.cleanup_crit_edge_crit_edge

for.cond.1.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.2, align 8
  %37 = ptrtoint ptr %arrayidx126.2 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx126.2, align 8
  %add127.2 = add i64 %38, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %add127.2)
  %cmp128.not.2 = icmp eq i64 %36, %add127.2
  br i1 %cmp128.not.2, label %for.cond.2, label %for.body.2.check_failed_crit_edge

for.body.2.check_failed_crit_edge:                ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.cond.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp123.2 = icmp ugt i32 %26, 3
  br i1 %cmp123.2, label %for.body.3, label %for.cond.2.for.cond.cleanup_crit_edge_crit_edge

for.cond.2.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.3, align 8
  %41 = ptrtoint ptr %arrayidx126.3 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx126.3, align 8
  %add127.3 = add i64 %42, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %add127.3)
  %cmp128.not.3 = icmp eq i64 %40, %add127.3
  br i1 %cmp128.not.3, label %for.cond.3, label %for.body.3.check_failed_crit_edge

for.body.3.check_failed_crit_edge:                ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.cond.3:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp123.3 = icmp ugt i32 %26, 4
  br i1 %cmp123.3, label %for.body.4, label %for.cond.3.for.cond.cleanup_crit_edge_crit_edge

for.cond.3.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.4 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.4, align 8
  %45 = ptrtoint ptr %arrayidx126.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx126.4, align 8
  %add127.4 = add i64 %46, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %add127.4)
  %cmp128.not.4 = icmp eq i64 %44, %add127.4
  br i1 %cmp128.not.4, label %for.cond.4, label %for.body.4.check_failed_crit_edge

for.body.4.check_failed_crit_edge:                ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.cond.4:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp123.4 = icmp ugt i32 %26, 5
  br i1 %cmp123.4, label %for.body.5, label %for.cond.4.for.cond.cleanup_crit_edge_crit_edge

for.cond.4.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.5:                                       ; preds = %for.cond.4
  %arrayidx.5 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.5, align 8
  %49 = ptrtoint ptr %arrayidx126.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx126.5, align 8
  %add127.5 = add i64 %50, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %add127.5)
  %cmp128.not.5 = icmp eq i64 %48, %add127.5
  br i1 %cmp128.not.5, label %for.cond.5, label %for.body.5.check_failed_crit_edge

for.body.5.check_failed_crit_edge:                ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.cond.5:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp123.5 = icmp eq i32 %26, 7
  br i1 %cmp123.5, label %for.body.6, label %for.cond.5.for.cond.cleanup_crit_edge_crit_edge

for.cond.5.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.body.6:                                       ; preds = %for.cond.5
  %arrayidx.6 = getelementptr %struct.bkey, ptr %call32731, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.6, align 8
  %53 = ptrtoint ptr %arrayidx126.6 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx126.6, align 8
  %add127.6 = add i64 %54, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %add127.6)
  %cmp128.not.6 = icmp eq i64 %52, %add127.6
  br i1 %cmp128.not.6, label %for.body.6.for.cond.cleanup_crit_edge_crit_edge, label %for.body.6.check_failed_crit_edge

for.body.6.check_failed_crit_edge:                ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

for.body.6.for.cond.cleanup_crit_edge_crit_edge:  ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.body.6.for.cond.cleanup_crit_edge_crit_edge, %for.cond.5.for.cond.cleanup_crit_edge_crit_edge, %for.cond.4.for.cond.cleanup_crit_edge_crit_edge, %for.cond.3.for.cond.cleanup_crit_edge_crit_edge, %for.cond.2.for.cond.cleanup_crit_edge_crit_edge, %for.cond.1.for.cond.cleanup_crit_edge_crit_edge, %for.cond.for.cond.cleanup_crit_edge_crit_edge
  %sub135.neg = add i64 %and.i492661, %10
  %sub136 = sub i64 %sub135.neg, %19
  %conv137 = trunc i64 %sub136 to i32
  br label %if.end139

if.end139:                                        ; preds = %for.cond.cleanup_crit_edge, %if.end56.if.end139_crit_edge
  %sectors_found.2 = phi i32 [ %conv137, %for.cond.cleanup_crit_edge ], [ %sectors_found.0729, %if.end56.if.end139_crit_edge ]
  br i1 %cmp.not.i, label %bkey_cmp.exit438, label %bkey_cmp.exit460.thread, !prof !76

bkey_cmp.exit438:                                 ; preds = %if.end139
  %sub7.i435 = sub i64 %19, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub7.i435)
  %cmp141 = icmp slt i64 %sub7.i435, 0
  br i1 %cmp141, label %bkey_cmp.exit449, label %bkey_cmp.exit438.cond.false.i469_crit_edge

bkey_cmp.exit438.cond.false.i469_crit_edge:       ; preds = %bkey_cmp.exit438
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i469

bkey_cmp.exit449:                                 ; preds = %bkey_cmp.exit438
  %sub7.i446 = sub i64 %sub52663, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub7.i446)
  %cmp161 = icmp sgt i64 %sub7.i446, 0
  br i1 %cmp161, label %if.then163, label %bkey_cmp.exit460

if.then163:                                       ; preds = %bkey_cmp.exit449
  %55 = and i64 %8, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool.not.i = icmp eq i64 %55, 0
  br i1 %tobool.not.i, label %if.then163.bch_subtract_dirty.exit_crit_edge, label %if.then.i

if.then163.bch_subtract_dirty.exit_crit_edge:     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_subtract_dirty.exit

if.then.i:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  %conv168 = trunc i64 %and.i492661 to i32
  %56 = trunc i64 %8 to i32
  %conv.i = and i32 %56, 1048575
  %sub.i541 = sub nsw i32 0, %conv168
  call void @bcache_dev_sectors_dirty_add(ptr noundef %1, i32 noundef %conv.i, i64 noundef %sub52663, i32 noundef %sub.i541) #7
  br label %bch_subtract_dirty.exit

bch_subtract_dirty.exit:                          ; preds = %if.then.i, %if.then163.bch_subtract_dirty.exit_crit_edge
  %57 = ptrtoint ptr %last_set_unwritten.i595 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i = load i8, ptr %last_set_unwritten.i595, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i542 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i542, label %bch_subtract_dirty.exit.if.then170_crit_edge, label %bkey_written.exit

bch_subtract_dirty.exit.if.then170_crit_edge:     ; preds = %bch_subtract_dirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170

bkey_written.exit:                                ; preds = %bch_subtract_dirty.exit
  %58 = ptrtoint ptr %nsets.i598 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nsets.i598, align 1
  %idxprom.i = zext i8 %59 to i32
  %data.i = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %idxprom.i, i32 5
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 8
  %62 = getelementptr inbounds %struct.bset, ptr %61, i32 0, i32 5
  %cmp.i = icmp ugt ptr %62, %call32731
  br i1 %cmp.i, label %bkey_written.exit.if.then170_crit_edge, label %if.else173

bkey_written.exit.if.then170_crit_edge:           ; preds = %bkey_written.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170

if.then170:                                       ; preds = %bkey_written.exit.if.then170_crit_edge, %bch_subtract_dirty.exit.if.then170_crit_edge
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %63 = ptrtoint ptr %nsets.i598 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nsets.i598, align 1
  %conv.i544 = zext i8 %64 to i32
  %tobool.not.i545 = icmp eq ptr %insert, null
  br i1 %tobool.not.i545, label %cond.false.i548, label %cond.true.i546

cond.true.i546:                                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i544
  %call.i = call ptr @__bch_bset_search(ptr noundef %b, ptr noundef %add.ptr.i, ptr noundef nonnull %insert) #7
  br label %bch_bset_search.exit

cond.false.i548:                                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  %data.i547 = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i544, i32 5
  %65 = ptrtoint ptr %data.i547 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i547, align 8
  %67 = getelementptr inbounds %struct.bset, ptr %66, i32 0, i32 5
  br label %bch_bset_search.exit

bch_bset_search.exit:                             ; preds = %cond.false.i548, %cond.true.i546
  %cond.i549 = phi ptr [ %call.i, %cond.true.i546 ], [ %67, %cond.false.i548 ]
  call void @bch_bset_insert(ptr noundef %b, ptr noundef %cond.i549, ptr noundef %call32731) #7
  br label %if.end176

if.else173:                                       ; preds = %bkey_written.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #7
  %68 = call ptr @memset(ptr %temp, i32 255, i32 64)
  %69 = ptrtoint ptr %call32731 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %call32731, align 8
  %sh.diff.i = lshr i64 %70, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %71 = call ptr @memcpy(ptr %temp, ptr %call32731, i32 %mul.i)
  call void @bch_bset_insert(ptr noundef %b, ptr noundef %call32731, ptr noundef nonnull %temp) #7
  %72 = ptrtoint ptr %call32731 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %call32731, align 8
  %shr.i.i.i = lshr i64 %73, 60
  %74 = trunc i64 %shr.i.i.i to i32
  %75 = and i32 %74, 7
  %conv.i.i550 = add nuw nsw i32 %75, 2
  %add.ptr.i551 = getelementptr i64, ptr %call32731, i32 %conv.i.i550
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #7
  br label %if.end176

if.end176:                                        ; preds = %if.else173, %bch_bset_search.exit
  %top.0 = phi ptr [ %cond.i549, %bch_bset_search.exit ], [ %add.ptr.i551, %if.else173 ]
  %76 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %insert, align 8
  %and.i.i.i = and i64 %77, 1048575
  %78 = ptrtoint ptr %top.0 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %top.0, align 8
  %and.i12.i.i = and i64 %79, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !76

cond.true.i.i:                                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub nsw i64 %and.i.i.i, %and.i12.i.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %low.i, align 8
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %top.0, i32 0, i32 1
  %82 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %81, %83
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i552 = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i552, label %do.body2.i, label %bch_cut_front.exit, !prof !78

do.body2.i:                                       ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

bch_cut_front.exit:                               ; preds = %bkey_cmp.exit.i
  %call6.i = call zeroext i1 @__bch_cut_front(ptr noundef %insert, ptr noundef %top.0) #7
  %84 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %insert, align 8
  %and.i553 = and i64 %85, 1048575
  %or181 = or i64 %and.i553, -9223372036854775808
  %86 = ptrtoint ptr %.compoundliteral178 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or181, ptr %.compoundliteral178, align 8
  %low182 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral178, i32 0, i32 1
  %87 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %low.i, align 8
  %shr.i555 = lshr i64 %85, 20
  %and.i556 = and i64 %shr.i555, 65535
  %sub185 = sub i64 %88, %and.i556
  %89 = ptrtoint ptr %low182 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %sub185, ptr %low182, align 8
  %90 = ptrtoint ptr %call32731 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %call32731, align 8
  %and.i.i557 = and i64 %91, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i553, i64 %and.i.i557)
  %cmp.not.i.i559 = icmp eq i64 %and.i553, %and.i.i557
  br i1 %cmp.not.i.i559, label %cond.false.i.i565, label %cond.true.i.i561, !prof !76

cond.true.i.i561:                                 ; preds = %bch_cut_front.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i560 = sub nsw i64 %and.i553, %and.i.i557
  br label %bkey_cmp.exit.i568

cond.false.i.i565:                                ; preds = %bch_cut_front.exit
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %low.i484 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %low.i484, align 8
  %shr.i.i = lshr i64 %91, 20
  %and.i1.i = and i64 %shr.i.i, 65535
  %sub.neg.i = add i64 %and.i1.i, %sub185
  %sub7.i.i564 = sub i64 %sub.neg.i, %93
  br label %bkey_cmp.exit.i568

bkey_cmp.exit.i568:                               ; preds = %cond.false.i.i565, %cond.true.i.i561
  %cond.i.i566 = phi i64 [ %sub.i.i560, %cond.true.i.i561 ], [ %sub7.i.i564, %cond.false.i.i565 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i566)
  %cmp.i567 = icmp slt i64 %cond.i.i566, 0
  br i1 %cmp.i567, label %do.body5.i, label %cleanup259.thread688, !prof !78

do.body5.i:                                       ; preds = %bkey_cmp.exit.i568
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

cleanup259.thread688:                             ; preds = %bkey_cmp.exit.i568
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call zeroext i1 @__bch_cut_back(ptr noundef nonnull %.compoundliteral178, ptr noundef %call32731) #7
  call void @bch_bset_fix_invalidated_key(ptr noundef %b, ptr noundef %call32731) #7
  br label %out

bkey_cmp.exit460:                                 ; preds = %bkey_cmp.exit449
  %.pre = sub i64 %19, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre)
  %cmp190 = icmp slt i64 %.pre, 0
  br i1 %cmp190, label %bkey_cmp.exit460.bch_cut_front.exit583_crit_edge, label %bkey_cmp.exit460.cond.false.i469_crit_edge

bkey_cmp.exit460.cond.false.i469_crit_edge:       ; preds = %bkey_cmp.exit460
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i469

bkey_cmp.exit460.bch_cut_front.exit583_crit_edge: ; preds = %bkey_cmp.exit460
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_cut_front.exit583

bkey_cmp.exit460.thread:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i12.i, i64 %and.i483)
  %cmp190681 = icmp ult i64 %and.i12.i, %and.i483
  %sub.i.i572 = sub nsw i64 %and.i12.i, %and.i483
  br i1 %cmp190681, label %bkey_cmp.exit.i580, label %bkey_cmp.exit460.thread.bkey_cmp.exit471_crit_edge

bkey_cmp.exit460.thread.bkey_cmp.exit471_crit_edge: ; preds = %bkey_cmp.exit460.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %bkey_cmp.exit471

bkey_cmp.exit.i580:                               ; preds = %bkey_cmp.exit460.thread
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i572)
  %cmp.i579 = icmp sgt i64 %sub.i.i572, 0
  br i1 %cmp.i579, label %do.body2.i581, label %bkey_cmp.exit.i580.bch_cut_front.exit583_crit_edge, !prof !78

bkey_cmp.exit.i580.bch_cut_front.exit583_crit_edge: ; preds = %bkey_cmp.exit.i580
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_cut_front.exit583

do.body2.i581:                                    ; preds = %bkey_cmp.exit.i580
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

bch_cut_front.exit583:                            ; preds = %bkey_cmp.exit.i580.bch_cut_front.exit583_crit_edge, %bkey_cmp.exit460.bch_cut_front.exit583_crit_edge
  %call6.i582 = call zeroext i1 @__bch_cut_front(ptr noundef %insert, ptr noundef %call32731) #7
  br label %if.end254

cond.false.i469:                                  ; preds = %bkey_cmp.exit460.cond.false.i469_crit_edge, %bkey_cmp.exit438.cond.false.i469_crit_edge
  %sub7.i468 = sub i64 %sub52663, %sub
  br label %bkey_cmp.exit471

bkey_cmp.exit471:                                 ; preds = %cond.false.i469, %bkey_cmp.exit460.thread.bkey_cmp.exit471_crit_edge
  %cond.i470 = phi i64 [ %sub7.i468, %cond.false.i469 ], [ %sub.i.i572, %bkey_cmp.exit460.thread.bkey_cmp.exit471_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i470)
  %cmp212 = icmp sgt i64 %cond.i470, 0
  %spec.select = select i1 %cmp212, i64 %sub52663, i64 %sub
  %94 = ptrtoint ptr %last_set_unwritten.i595 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i596 = load i8, ptr %last_set_unwritten.i595, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i596)
  %tobool.not.i597 = icmp sgt i8 %bf.load.i596, -1
  br i1 %tobool.not.i597, label %bkey_cmp.exit471.land.lhs.true221_crit_edge, label %bkey_written.exit603

bkey_cmp.exit471.land.lhs.true221_crit_edge:      ; preds = %bkey_cmp.exit471
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true221

bkey_written.exit603:                             ; preds = %bkey_cmp.exit471
  %95 = ptrtoint ptr %nsets.i598 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nsets.i598, align 1
  %idxprom.i599 = zext i8 %96 to i32
  %data.i600 = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %idxprom.i599, i32 5
  %97 = ptrtoint ptr %data.i600 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i600, align 8
  %99 = getelementptr inbounds %struct.bset, ptr %98, i32 0, i32 5
  %cmp.i601 = icmp ugt ptr %99, %call32731
  br i1 %cmp.i601, label %bkey_written.exit603.land.lhs.true221_crit_edge, label %bkey_written.exit603.if.else243_crit_edge

bkey_written.exit603.if.else243_crit_edge:        ; preds = %bkey_written.exit603
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else243

bkey_written.exit603.land.lhs.true221_crit_edge:  ; preds = %bkey_written.exit603
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true221

land.lhs.true221:                                 ; preds = %bkey_written.exit603.land.lhs.true221_crit_edge, %bkey_cmp.exit471.land.lhs.true221_crit_edge
  br i1 %cmp.not.i, label %cond.false.i480, label %cond.true.i476, !prof !76

cond.true.i476:                                   ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i475 = sub nsw i64 %and.i12.i, %and.i483
  br label %bkey_cmp.exit482

cond.false.i480:                                  ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #9
  %sub7.i479 = sub i64 %sub52663, %sub
  br label %bkey_cmp.exit482

bkey_cmp.exit482:                                 ; preds = %cond.false.i480, %cond.true.i476
  %cond.i481 = phi i64 [ %sub.i475, %cond.true.i476 ], [ %sub7.i479, %cond.false.i480 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i481)
  %cmp239 = icmp slt i64 %cond.i481, 1
  br i1 %cmp239, label %bch_cut_front.exit626, label %bkey_cmp.exit482.if.else243_crit_edge

bkey_cmp.exit482.if.else243_crit_edge:            ; preds = %bkey_cmp.exit482
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else243

bch_cut_front.exit626:                            ; preds = %bkey_cmp.exit482
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i625 = call zeroext i1 @__bch_cut_front(ptr noundef %call32731, ptr noundef %call32731) #7
  br label %if.end254

if.else243:                                       ; preds = %bkey_cmp.exit482.if.else243_crit_edge, %bkey_written.exit603.if.else243_crit_edge
  %100 = ptrtoint ptr %.compoundliteral244 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %or48659, ptr %.compoundliteral244, align 8
  %101 = ptrtoint ptr %low248 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %sub52663, ptr %low248, align 8
  %call252 = call zeroext i1 @__bch_cut_back(ptr noundef nonnull %.compoundliteral244, ptr noundef %call32731) #7
  call void @bch_bset_fix_invalidated_key(ptr noundef %b, ptr noundef %call32731) #7
  br label %if.end254

if.end254:                                        ; preds = %if.else243, %bch_cut_front.exit626, %bch_cut_front.exit583
  %old_offset.1 = phi i64 [ %sub, %bch_cut_front.exit583 ], [ %spec.select, %bch_cut_front.exit626 ], [ %spec.select, %if.else243 ]
  %102 = ptrtoint ptr %call32731 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %call32731, align 8
  %104 = and i64 %103, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %104)
  %tobool.not.i633 = icmp eq i64 %104, 0
  br i1 %tobool.not.i633, label %if.end254.cleanup259_crit_edge, label %if.then.i636

if.end254.cleanup259_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

if.then.i636:                                     ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i631 = lshr i64 %103, 20
  %and.i632 = and i64 %shr.i631, 65535
  %sub257.neg = sub nsw i64 %and.i632, %and.i486
  %conv258.neg = trunc i64 %sub257.neg to i32
  %105 = trunc i64 %103 to i32
  %conv.i634 = and i32 %105, 1048575
  call void @bcache_dev_sectors_dirty_add(ptr noundef %1, i32 noundef %conv.i634, i64 noundef %old_offset.1, i32 noundef %conv258.neg) #7
  br label %cleanup259

cleanup259:                                       ; preds = %if.then.i636, %if.end254.cleanup259_crit_edge, %bkey_cmp.exit427.cleanup259_crit_edge, %if.then40.cleanup259_crit_edge
  %sectors_found.3 = phi i32 [ %sectors_found.0729, %bkey_cmp.exit427.cleanup259_crit_edge ], [ %sectors_found.2, %if.end254.cleanup259_crit_edge ], [ %sectors_found.2, %if.then.i636 ], [ %sectors_found.0729, %if.then40.cleanup259_crit_edge ]
  %call32 = call ptr @bch_btree_iter_next(ptr noundef %iter) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cleanup259.check_failed_crit_edge, label %cleanup259.if.end35_crit_edge

cleanup259.if.end35_crit_edge:                    ; preds = %cleanup259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

cleanup259.check_failed_crit_edge:                ; preds = %cleanup259
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_failed

check_failed:                                     ; preds = %cleanup259.check_failed_crit_edge, %for.body.6.check_failed_crit_edge, %for.body.5.check_failed_crit_edge, %for.body.4.check_failed_crit_edge, %for.body.3.check_failed_crit_edge, %for.body.2.check_failed_crit_edge, %for.body.1.check_failed_crit_edge, %for.body.preheader.check_failed_crit_edge, %if.then40.check_failed_crit_edge, %while.cond.preheader.check_failed_crit_edge
  %sectors_found.0724 = phi i32 [ 0, %while.cond.preheader.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.6.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.5.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.4.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.3.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.2.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.1.check_failed_crit_edge ], [ %sectors_found.0729, %for.body.preheader.check_failed_crit_edge ], [ %sectors_found.0729, %if.then40.check_failed_crit_edge ], [ %sectors_found.3, %cleanup259.check_failed_crit_edge ]
  %tobool262.not = icmp eq ptr %replace_key, null
  br i1 %tobool262.not, label %check_failed.out_crit_edge, label %check_failed.if.then263_crit_edge

check_failed.if.then263_crit_edge:                ; preds = %check_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then263

check_failed.out_crit_edge:                       ; preds = %check_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then263:                                       ; preds = %check_failed.if.then263_crit_edge, %if.end96.if.then263_crit_edge, %if.end85.if.then263_crit_edge, %if.then64.if.then263_crit_edge
  %sectors_found.0723 = phi i32 [ %sectors_found.0724, %check_failed.if.then263_crit_edge ], [ %sectors_found.0729, %if.end96.if.then263_crit_edge ], [ %sectors_found.0729, %if.end85.if.then263_crit_edge ], [ %sectors_found.0729, %if.then64.if.then263_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sectors_found.0723)
  %tobool264.not = icmp eq i32 %sectors_found.0723, 0
  br i1 %tobool264.not, label %if.then263.cleanup292_crit_edge, label %if.else266

if.then263.cleanup292_crit_edge:                  ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup292

if.else266:                                       ; preds = %if.then263
  %conv267 = zext i32 %sectors_found.0723 to i64
  %106 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %insert, align 8
  %shr.i638 = lshr i64 %107, 20
  %and.i639 = and i64 %shr.i638, 65535
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i639, i64 %conv267)
  %cmp269 = icmp ugt i64 %and.i639, %conv267
  br i1 %cmp269, label %if.then271, label %if.else266.out_crit_edge

if.else266.out_crit_edge:                         ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then271:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %low.i, align 8
  %sub275.neg = sub nsw i64 %conv267, %and.i639
  %sub276 = add i64 %sub275.neg, %109
  store i64 %sub276, ptr %low.i, align 8
  %and.i644 = and i64 %107, -68718428161
  %and1.i = shl nuw nsw i64 %conv267, 20
  %shl.i = and i64 %and1.i, 68718428160
  %or.i = or i64 %and.i644, %shl.i
  %110 = ptrtoint ptr %insert to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %or.i, ptr %insert, align 8
  br label %out

out:                                              ; preds = %if.then271, %if.else266.out_crit_edge, %check_failed.out_crit_edge, %cleanup259.thread688
  %111 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %insert, align 8
  %113 = and i64 %112, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool282.not = icmp eq i64 %113, 0
  br i1 %tobool282.not, label %out.cleanup292_crit_edge, label %if.then283

out.cleanup292_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup292

if.then283:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %114 = trunc i64 %112 to i32
  %conv285 = and i32 %114, 1048575
  %115 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %low.i, align 8
  %shr.i649 = lshr i64 %112, 20
  %and.i650 = and i64 %shr.i649, 65535
  %sub288 = sub i64 %116, %and.i650
  %conv290 = trunc i64 %and.i650 to i32
  call void @bcache_dev_sectors_dirty_add(ptr noundef %1, i32 noundef %conv285, i64 noundef %sub288, i32 noundef %conv290) #7
  br label %cleanup292

cleanup292:                                       ; preds = %if.then283, %out.cleanup292_crit_edge, %if.then263.cleanup292_crit_edge
  %retval.0 = phi i1 [ true, %if.then263.cleanup292_crit_edge ], [ false, %if.then283 ], [ false, %out.cleanup292_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_extent_invalid(ptr nocapture noundef readonly %bk, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr i8, ptr %bk, i32 -108
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %call = tail call zeroext i1 @__bch_extent_invalid(ptr noundef %1, ptr noundef %k)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_extent_bad(ptr nocapture noundef readonly %bk, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %k, align 8
  %3 = and i64 %2, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %c.i = getelementptr i8, ptr %bk, i32 -108
  %4 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c.i, align 4
  %call.i = tail call zeroext i1 @__bch_extent_invalid(ptr noundef %5, ptr noundef %k) #7
  br i1 %call.i, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %k, align 8
  %shr.i81 = lshr i64 %7, 60
  %and.i82 = and i64 %shr.i81, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i82)
  %cmp108.not = icmp eq i64 %and.i82, 0
  br i1 %cmp108.not, label %for.cond.preheader.for.cond7.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %8 = trunc i64 %and.i82 to i32
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i.i, align 8
  %11 = and i64 %10, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.i = icmp eq i64 %11, 0
  br i1 %cmp.i, label %ptr_available.exit, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %for.body.1, label %for.cond.for.cond7.preheader_crit_edge

for.cond.for.cond7.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.1:                                       ; preds = %for.cond
  %arrayidx.i.i.1 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.i.1, align 8
  %14 = and i64 %13, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.i.1 = icmp eq i64 %14, 0
  br i1 %cmp.i.1, label %ptr_available.exit.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.1:                             ; preds = %for.body.1
  %15 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c.i, align 4
  %cache.i.1 = getelementptr inbounds %struct.cache_set, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %cache.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache.i.1, align 4
  %tobool.i.not.1 = icmp eq ptr %18, null
  br i1 %tobool.i.not.1, label %ptr_available.exit.1.cleanup_crit_edge, label %for.cond.1

ptr_available.exit.1.cleanup_crit_edge:           ; preds = %ptr_available.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %ptr_available.exit.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.1 = icmp ugt i32 %8, 2
  br i1 %cmp.1, label %for.body.2, label %for.cond.1.for.cond7.preheader_crit_edge

for.cond.1.for.cond7.preheader_crit_edge:         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.i.i.2 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.i.2, align 8
  %21 = and i64 %20, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp.i.2 = icmp eq i64 %21, 0
  br i1 %cmp.i.2, label %ptr_available.exit.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.2:                             ; preds = %for.body.2
  %22 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c.i, align 4
  %cache.i.2 = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %cache.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache.i.2, align 4
  %tobool.i.not.2 = icmp eq ptr %25, null
  br i1 %tobool.i.not.2, label %ptr_available.exit.2.cleanup_crit_edge, label %for.cond.2

ptr_available.exit.2.cleanup_crit_edge:           ; preds = %ptr_available.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %ptr_available.exit.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.2 = icmp ugt i32 %8, 3
  br i1 %cmp.2, label %for.body.3, label %for.cond.2.for.cond7.preheader_crit_edge

for.cond.2.for.cond7.preheader_crit_edge:         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.i.i.3 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i.3, align 8
  %28 = and i64 %27, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp.i.3 = icmp eq i64 %28, 0
  br i1 %cmp.i.3, label %ptr_available.exit.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.3:                             ; preds = %for.body.3
  %29 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c.i, align 4
  %cache.i.3 = getelementptr inbounds %struct.cache_set, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %cache.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cache.i.3, align 4
  %tobool.i.not.3 = icmp eq ptr %32, null
  br i1 %tobool.i.not.3, label %ptr_available.exit.3.cleanup_crit_edge, label %for.cond.3

ptr_available.exit.3.cleanup_crit_edge:           ; preds = %ptr_available.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %ptr_available.exit.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.3 = icmp ugt i32 %8, 4
  br i1 %cmp.3, label %for.body.4, label %for.cond.3.for.cond7.preheader_crit_edge

for.cond.3.for.cond7.preheader_crit_edge:         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.i.i.4 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i.i.4, align 8
  %35 = and i64 %34, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp.i.4 = icmp eq i64 %35, 0
  br i1 %cmp.i.4, label %ptr_available.exit.4, label %for.body.4.cleanup_crit_edge

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.4:                             ; preds = %for.body.4
  %36 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %c.i, align 4
  %cache.i.4 = getelementptr inbounds %struct.cache_set, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %cache.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cache.i.4, align 4
  %tobool.i.not.4 = icmp eq ptr %39, null
  br i1 %tobool.i.not.4, label %ptr_available.exit.4.cleanup_crit_edge, label %for.cond.4

ptr_available.exit.4.cleanup_crit_edge:           ; preds = %ptr_available.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %ptr_available.exit.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.4 = icmp ugt i32 %8, 5
  br i1 %cmp.4, label %for.body.5, label %for.cond.4.for.cond7.preheader_crit_edge

for.cond.4.for.cond7.preheader_crit_edge:         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.5:                                       ; preds = %for.cond.4
  %arrayidx.i.i.5 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i.i.5, align 8
  %42 = and i64 %41, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp.i.5 = icmp eq i64 %42, 0
  br i1 %cmp.i.5, label %ptr_available.exit.5, label %for.body.5.cleanup_crit_edge

for.body.5.cleanup_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.5:                             ; preds = %for.body.5
  %43 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %c.i, align 4
  %cache.i.5 = getelementptr inbounds %struct.cache_set, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %cache.i.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cache.i.5, align 4
  %tobool.i.not.5 = icmp eq ptr %46, null
  br i1 %tobool.i.not.5, label %ptr_available.exit.5.cleanup_crit_edge, label %for.cond.5

ptr_available.exit.5.cleanup_crit_edge:           ; preds = %ptr_available.exit.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %ptr_available.exit.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.5 = icmp eq i32 %8, 7
  br i1 %cmp.5, label %for.body.6, label %for.cond.5.for.cond7.preheader_crit_edge

for.cond.5.for.cond7.preheader_crit_edge:         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

for.body.6:                                       ; preds = %for.cond.5
  %arrayidx.i.i.6 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.i.i.6, align 8
  %49 = and i64 %48, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp.i.6 = icmp eq i64 %49, 0
  br i1 %cmp.i.6, label %ptr_available.exit.6, label %for.body.6.cleanup_crit_edge

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit.6:                             ; preds = %for.body.6
  %50 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %c.i, align 4
  %cache.i.6 = getelementptr inbounds %struct.cache_set, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %cache.i.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cache.i.6, align 4
  %tobool.i.not.6 = icmp eq ptr %53, null
  br i1 %tobool.i.not.6, label %ptr_available.exit.6.cleanup_crit_edge, label %ptr_available.exit.6.for.cond7.preheader_crit_edge

ptr_available.exit.6.for.cond7.preheader_crit_edge: ; preds = %ptr_available.exit.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond7.preheader

ptr_available.exit.6.cleanup_crit_edge:           ; preds = %ptr_available.exit.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond7.preheader:                              ; preds = %ptr_available.exit.6.for.cond7.preheader_crit_edge, %for.cond.5.for.cond7.preheader_crit_edge, %for.cond.4.for.cond7.preheader_crit_edge, %for.cond.3.for.cond7.preheader_crit_edge, %for.cond.2.for.cond7.preheader_crit_edge, %for.cond.1.for.cond7.preheader_crit_edge, %for.cond.for.cond7.preheader_crit_edge, %for.cond.preheader.for.cond7.preheader_crit_edge
  %54 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %k, align 8
  %56 = and i64 %55, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp10114.not = icmp eq i64 %56, 0
  br i1 %cmp10114.not, label %for.cond7.preheader.cleanup_crit_edge, label %for.cond7.preheader.for.body12_crit_edge

for.cond7.preheader.for.body12_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body12

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ptr_available.exit:                               ; preds = %for.body.preheader
  %57 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %c.i, align 4
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cache.i, align 4
  %tobool.i.not = icmp eq ptr %60, null
  br i1 %tobool.i.not, label %ptr_available.exit.cleanup_crit_edge, label %for.cond

ptr_available.exit.cleanup_crit_edge:             ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body12:                                       ; preds = %for.inc51.for.body12_crit_edge, %for.cond7.preheader.for.body12_crit_edge
  %61 = phi i64 [ %126, %for.inc51.for.body12_crit_edge ], [ %55, %for.cond7.preheader.for.body12_crit_edge ]
  %i.1115 = phi i32 [ %inc52, %for.inc51.for.body12_crit_edge ], [ 0, %for.cond7.preheader.for.body12_crit_edge ]
  %62 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %c.i, align 4
  %cache.i.i = getelementptr inbounds %struct.cache_set, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cache.i.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.1115
  %68 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %69, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %63, i32 0, i32 24
  %70 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %71 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %67, i32 %conv1.i.i.i.i, i32 2
  %72 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %69 to i8
  %sub.i.i = sub i8 %73, %conv.i
  %74 = add i8 %sub.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %75 = icmp slt i8 %74, 0
  br i1 %75, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %conv15.le = zext i8 %sub.i.i to i32
  %76 = and i64 %61, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool18.not = icmp eq i64 %76, 0
  br i1 %tobool18.not, label %land.lhs.true.do.body24_crit_edge, label %if.then19

land.lhs.true.do.body24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @bch_extent_to_text(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef %k)
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %conv15.le, ptr noundef nonnull %buf) #10
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %land.lhs.true.do.body24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %sub.i.i)
  %cmp25 = icmp ugt i8 %sub.i.i, 96
  br i1 %cmp25, label %do.body28, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body28:                                        ; preds = %do.body24
  %77 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %c.i, align 4
  %need_gc = getelementptr inbounds %struct.cache_set, ptr %78, i32 0, i32 39
  %79 = ptrtoint ptr %need_gc to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %need_gc, align 2
  %conv31 = zext i8 %80 to i32
  %call32 = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %78, ptr noundef nonnull @.str.32, i32 noundef %conv15.le, i32 noundef %conv31) #7
  br i1 %call32, label %if.then33, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_stack() #10
  br label %cleanup

if.end42:                                         ; preds = %for.body12
  %81 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %c.i, align 4
  %expensive_debug_checks = getelementptr inbounds %struct.cache_set, ptr %82, i32 0, i32 84
  %83 = ptrtoint ptr %expensive_debug_checks to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %expensive_debug_checks, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool44.not = icmp eq i8 %84, 0
  br i1 %tobool44.not, label %if.end42.for.inc51_crit_edge, label %land.lhs.true46

if.end42.for.inc51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc51

land.lhs.true46:                                  ; preds = %if.end42
  %85 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %c.i, align 4
  %cache.i.i88 = getelementptr inbounds %struct.cache_set, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %cache.i.i88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cache.i.i88, align 4
  %buckets.i.i89 = getelementptr inbounds %struct.cache, ptr %88, i32 0, i32 15
  %89 = ptrtoint ptr %buckets.i.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buckets.i.i89, align 8
  %91 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i91 = lshr i64 %92, 8
  %and.i.i.i.i92 = and i64 %shr.i.i.i.i91, 8796093022207
  %bucket_bits.i.i.i.i93 = getelementptr inbounds %struct.cache_set, ptr %86, i32 0, i32 24
  %93 = ptrtoint ptr %bucket_bits.i.i.i.i93 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %bucket_bits.i.i.i.i93, align 8
  %sh_prom.i.i.i.i94 = zext i16 %94 to i64
  %shr.i2.i.i.i95 = lshr i64 %and.i.i.i.i92, %sh_prom.i.i.i.i94
  %conv1.i.i.i.i96 = trunc i64 %shr.i2.i.i.i95 to i32
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #7
  %95 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  %bucket_lock.i = getelementptr inbounds %struct.cache_set, ptr %86, i32 0, i32 23
  %call2.i = tail call i32 @mutex_trylock(ptr noundef %bucket_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true46.bch_extent_bad_expensive.exit_crit_edge, label %if.then.i

land.lhs.true46.bch_extent_bad_expensive.exit_crit_edge: ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_extent_bad_expensive.exit

if.then.i:                                        ; preds = %land.lhs.true46
  %96 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %c.i, align 4
  %gc_mark_valid.i = getelementptr inbounds %struct.cache_set, ptr %97, i32 0, i32 46
  %98 = ptrtoint ptr %gc_mark_valid.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gc_mark_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool4.not.i = icmp eq i32 %99, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %gc_mark.i.i = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96, i32 4
  %100 = ptrtoint ptr %gc_mark.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %gc_mark.i.i, align 4
  %trunc.i = trunc i16 %101 to i2
  %102 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %land.lhs.true11.i [
    i2 0, label %land.lhs.true.i.err.i_crit_edge
    i2 -1, label %land.lhs.true.i.err.i_crit_edge161
    i2 -2, label %land.lhs.true.i.if.end.i_crit_edge
  ]

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.err.i_crit_edge161:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

land.lhs.true.i.err.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %103 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %k, align 8
  %105 = and i64 %104, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %105)
  %tobool13.not.i = icmp eq i64 %105, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.end.i_crit_edge, label %land.lhs.true11.i.err.i_crit_edge

land.lhs.true11.i.err.i_crit_edge:                ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

land.lhs.true11.i.if.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true11.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %prio.i = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96, i32 1
  %106 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %prio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %107)
  %cmp15.i = icmp eq i16 %107, -1
  br i1 %cmp15.i, label %if.end.i.err.i_crit_edge, label %if.end18.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bucket_lock20.i = getelementptr inbounds %struct.cache_set, ptr %97, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock20.i) #7
  br label %bch_extent_bad_expensive.exit

err.i:                                            ; preds = %if.end.i.err.i_crit_edge, %land.lhs.true11.i.err.i_crit_edge, %land.lhs.true.i.err.i_crit_edge, %land.lhs.true.i.err.i_crit_edge161
  %conv1.i.i.i.i96.le = trunc i64 %shr.i2.i.i.i95 to i32
  %add.ptr.i.i.le = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96.le
  %bucket_lock23.i = getelementptr inbounds %struct.cache_set, ptr %97, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %bucket_lock23.i) #7
  call void @bch_extent_to_text(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef %k) #7
  %108 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %c.i, align 4
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i = lshr i64 %111, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %109, i32 0, i32 24
  %112 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %113 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.le, i32 noundef 4) #7
  %114 = ptrtoint ptr %add.ptr.i.i.le to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %add.ptr.i.i.le, align 4
  %prio29.i = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96.le, i32 1
  %116 = ptrtoint ptr %prio29.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %prio29.i, align 4
  %conv30.i = zext i16 %117 to i32
  %gen.i97 = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96.le, i32 2
  %118 = ptrtoint ptr %gen.i97 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %gen.i97, align 2
  %conv31.i = zext i8 %119 to i32
  %last_gc.i = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96.le, i32 3
  %120 = ptrtoint ptr %last_gc.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %last_gc.i, align 1
  %conv32.i = zext i8 %121 to i32
  %gc_mark.i61.i = getelementptr %struct.bucket, ptr %90, i32 %conv1.i.i.i.i96.le, i32 4
  %122 = ptrtoint ptr %gc_mark.i61.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %gc_mark.i61.i, align 4
  %124 = and i16 %123, 3
  %and.i62.i = zext i16 %124 to i64
  %call34.i = call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %109, ptr noundef nonnull @.str.33, ptr noundef nonnull %buf.i, i32 noundef %conv1.i.i.i, i32 noundef %115, i32 noundef %conv30.i, i32 noundef %conv31.i, i32 noundef %conv32.i, i64 noundef %and.i62.i) #7
  br i1 %call34.i, label %if.then35.i, label %err.i.bch_extent_bad_expensive.exit.thread_crit_edge

err.i.bch_extent_bad_expensive.exit.thread_crit_edge: ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_extent_bad_expensive.exit.thread

if.then35.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_stack() #10
  br label %bch_extent_bad_expensive.exit.thread

bch_extent_bad_expensive.exit.thread:             ; preds = %if.then35.i, %err.i.bch_extent_bad_expensive.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #7
  br label %cleanup

bch_extent_bad_expensive.exit:                    ; preds = %if.end18.i, %land.lhs.true46.bch_extent_bad_expensive.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #7
  br label %for.inc51

for.inc51:                                        ; preds = %bch_extent_bad_expensive.exit, %if.end42.for.inc51_crit_edge
  %inc52 = add i32 %i.1115, 1
  %conv8 = zext i32 %inc52 to i64
  %125 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %k, align 8
  %shr.i83 = lshr i64 %126, 60
  %and.i84 = and i64 %shr.i83, 7
  %cmp10 = icmp ugt i64 %and.i84, %conv8
  br i1 %cmp10, label %for.inc51.for.body12_crit_edge, label %for.inc51.cleanup_crit_edge

for.inc51.cleanup_crit_edge:                      ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc51.for.body12_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

cleanup:                                          ; preds = %for.inc51.cleanup_crit_edge, %bch_extent_bad_expensive.exit.thread, %if.then33, %do.body28.cleanup_crit_edge, %do.body24.cleanup_crit_edge, %ptr_available.exit.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %ptr_available.exit.6.cleanup_crit_edge, %for.body.6.cleanup_crit_edge, %ptr_available.exit.5.cleanup_crit_edge, %for.body.5.cleanup_crit_edge, %ptr_available.exit.4.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %ptr_available.exit.3.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %ptr_available.exit.2.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %ptr_available.exit.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ true, %bch_extent_bad_expensive.exit.thread ], [ true, %do.body28.cleanup_crit_edge ], [ true, %if.then33 ], [ true, %do.body24.cleanup_crit_edge ], [ false, %for.cond7.preheader.cleanup_crit_edge ], [ false, %for.inc51.cleanup_crit_edge ], [ true, %ptr_available.exit.6.cleanup_crit_edge ], [ true, %for.body.6.cleanup_crit_edge ], [ true, %ptr_available.exit.5.cleanup_crit_edge ], [ true, %for.body.5.cleanup_crit_edge ], [ true, %ptr_available.exit.4.cleanup_crit_edge ], [ true, %for.body.4.cleanup_crit_edge ], [ true, %ptr_available.exit.3.cleanup_crit_edge ], [ true, %for.body.3.cleanup_crit_edge ], [ true, %ptr_available.exit.2.cleanup_crit_edge ], [ true, %for.body.2.cleanup_crit_edge ], [ true, %ptr_available.exit.1.cleanup_crit_edge ], [ true, %for.body.1.cleanup_crit_edge ], [ true, %ptr_available.exit.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_extent_merge(ptr nocapture noundef readonly %bk, ptr noundef %l, ptr noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr i8, ptr %bk, i32 -108
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %key_merging_disabled = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %key_merging_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %key_merging_disabled, align 1
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %l, align 8
  %shr.i = lshr i64 %5, 60
  %and.i = and i64 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp118.not = icmp eq i64 %and.i, 0
  br i1 %cmp118.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = lshr i64 %5, 12
  %shl = and i64 %6, 16776960
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 24
  %7 = trunc i64 %and.i to i32
  %arrayidx = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %add = add i64 %9, %shl
  %arrayidx5 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp6.not = icmp eq i64 %add, %11
  br i1 %cmp6.not, label %lor.lhs.false, label %for.body.lr.ph.cleanup_crit_edge

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %for.body.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  %add.1 = add i64 %13, %shl
  %arrayidx5.1 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx5.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %15)
  %cmp6.not.1 = icmp eq i64 %add.1, %15
  br i1 %cmp6.not.1, label %lor.lhs.false.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %for.body.1
  %shr.i.i.1 = lshr i64 %13, 8
  %and.i.i.1 = and i64 %shr.i.i.1, 8796093022207
  %16 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.1 = zext i16 %17 to i64
  %shr.i2.i.1 = lshr i64 %and.i.i.1, %sh_prom.i.i.1
  %conv1.i.i.1 = trunc i64 %shr.i2.i.1 to i32
  %shr.i.i81.1 = lshr i64 %add.1, 8
  %and.i.i82.1 = and i64 %shr.i.i81.1, 8796093022207
  %shr.i2.i85.1 = lshr i64 %and.i.i82.1, %sh_prom.i.i.1
  %conv1.i.i86.1 = trunc i64 %shr.i2.i85.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.1, i32 %conv1.i.i86.1)
  %cmp12.not.1 = icmp eq i32 %conv1.i.i.1, %conv1.i.i86.1
  br i1 %cmp12.not.1, label %for.cond.1, label %lor.lhs.false.1.cleanup_crit_edge

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.1 = icmp ugt i32 %7, 2
  br i1 %cmp.1, label %for.body.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.2, align 8
  %add.2 = add i64 %19, %shl
  %arrayidx5.2 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx5.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %21)
  %cmp6.not.2 = icmp eq i64 %add.2, %21
  br i1 %cmp6.not.2, label %lor.lhs.false.2, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %for.body.2
  %shr.i.i.2 = lshr i64 %19, 8
  %and.i.i.2 = and i64 %shr.i.i.2, 8796093022207
  %22 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.2 = zext i16 %23 to i64
  %shr.i2.i.2 = lshr i64 %and.i.i.2, %sh_prom.i.i.2
  %conv1.i.i.2 = trunc i64 %shr.i2.i.2 to i32
  %shr.i.i81.2 = lshr i64 %add.2, 8
  %and.i.i82.2 = and i64 %shr.i.i81.2, 8796093022207
  %shr.i2.i85.2 = lshr i64 %and.i.i82.2, %sh_prom.i.i.2
  %conv1.i.i86.2 = trunc i64 %shr.i2.i85.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.2, i32 %conv1.i.i86.2)
  %cmp12.not.2 = icmp eq i32 %conv1.i.i.2, %conv1.i.i86.2
  br i1 %cmp12.not.2, label %for.cond.2, label %lor.lhs.false.2.cleanup_crit_edge

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.2 = icmp ugt i32 %7, 3
  br i1 %cmp.2, label %for.body.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.3, align 8
  %add.3 = add i64 %25, %shl
  %arrayidx5.3 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx5.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %27)
  %cmp6.not.3 = icmp eq i64 %add.3, %27
  br i1 %cmp6.not.3, label %lor.lhs.false.3, label %for.body.3.cleanup_crit_edge

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.3:                                  ; preds = %for.body.3
  %shr.i.i.3 = lshr i64 %25, 8
  %and.i.i.3 = and i64 %shr.i.i.3, 8796093022207
  %28 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.3 = zext i16 %29 to i64
  %shr.i2.i.3 = lshr i64 %and.i.i.3, %sh_prom.i.i.3
  %conv1.i.i.3 = trunc i64 %shr.i2.i.3 to i32
  %shr.i.i81.3 = lshr i64 %add.3, 8
  %and.i.i82.3 = and i64 %shr.i.i81.3, 8796093022207
  %shr.i2.i85.3 = lshr i64 %and.i.i82.3, %sh_prom.i.i.3
  %conv1.i.i86.3 = trunc i64 %shr.i2.i85.3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.3, i32 %conv1.i.i86.3)
  %cmp12.not.3 = icmp eq i32 %conv1.i.i.3, %conv1.i.i86.3
  br i1 %cmp12.not.3, label %for.cond.3, label %lor.lhs.false.3.cleanup_crit_edge

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.3 = icmp ugt i32 %7, 4
  br i1 %cmp.3, label %for.body.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %arrayidx.4 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.4, align 8
  %add.4 = add i64 %31, %shl
  %arrayidx5.4 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx5.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.4, i64 %33)
  %cmp6.not.4 = icmp eq i64 %add.4, %33
  br i1 %cmp6.not.4, label %lor.lhs.false.4, label %for.body.4.cleanup_crit_edge

for.body.4.cleanup_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.4:                                  ; preds = %for.body.4
  %shr.i.i.4 = lshr i64 %31, 8
  %and.i.i.4 = and i64 %shr.i.i.4, 8796093022207
  %34 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.4 = zext i16 %35 to i64
  %shr.i2.i.4 = lshr i64 %and.i.i.4, %sh_prom.i.i.4
  %conv1.i.i.4 = trunc i64 %shr.i2.i.4 to i32
  %shr.i.i81.4 = lshr i64 %add.4, 8
  %and.i.i82.4 = and i64 %shr.i.i81.4, 8796093022207
  %shr.i2.i85.4 = lshr i64 %and.i.i82.4, %sh_prom.i.i.4
  %conv1.i.i86.4 = trunc i64 %shr.i2.i85.4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.4, i32 %conv1.i.i86.4)
  %cmp12.not.4 = icmp eq i32 %conv1.i.i.4, %conv1.i.i86.4
  br i1 %cmp12.not.4, label %for.cond.4, label %lor.lhs.false.4.cleanup_crit_edge

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.4 = icmp ugt i32 %7, 5
  br i1 %cmp.4, label %for.body.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %arrayidx.5 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.5, align 8
  %add.5 = add i64 %37, %shl
  %arrayidx5.5 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx5.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.5, i64 %39)
  %cmp6.not.5 = icmp eq i64 %add.5, %39
  br i1 %cmp6.not.5, label %lor.lhs.false.5, label %for.body.5.cleanup_crit_edge

for.body.5.cleanup_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.5:                                  ; preds = %for.body.5
  %shr.i.i.5 = lshr i64 %37, 8
  %and.i.i.5 = and i64 %shr.i.i.5, 8796093022207
  %40 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.5 = zext i16 %41 to i64
  %shr.i2.i.5 = lshr i64 %and.i.i.5, %sh_prom.i.i.5
  %conv1.i.i.5 = trunc i64 %shr.i2.i.5 to i32
  %shr.i.i81.5 = lshr i64 %add.5, 8
  %and.i.i82.5 = and i64 %shr.i.i81.5, 8796093022207
  %shr.i2.i85.5 = lshr i64 %and.i.i82.5, %sh_prom.i.i.5
  %conv1.i.i86.5 = trunc i64 %shr.i2.i85.5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.5, i32 %conv1.i.i86.5)
  %cmp12.not.5 = icmp eq i32 %conv1.i.i.5, %conv1.i.i86.5
  br i1 %cmp12.not.5, label %for.cond.5, label %lor.lhs.false.5.cleanup_crit_edge

lor.lhs.false.5.cleanup_crit_edge:                ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp.5 = icmp eq i32 %7, 7
  br i1 %cmp.5, label %for.body.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.6:                                       ; preds = %for.cond.5
  %arrayidx.6 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.6, align 8
  %add.6 = add i64 %43, %shl
  %arrayidx5.6 = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx5.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.6, i64 %45)
  %cmp6.not.6 = icmp eq i64 %add.6, %45
  br i1 %cmp6.not.6, label %lor.lhs.false.6, label %for.body.6.cleanup_crit_edge

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.6:                                  ; preds = %for.body.6
  %shr.i.i.6 = lshr i64 %43, 8
  %and.i.i.6 = and i64 %shr.i.i.6, 8796093022207
  %46 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i.6 = zext i16 %47 to i64
  %shr.i2.i.6 = lshr i64 %and.i.i.6, %sh_prom.i.i.6
  %conv1.i.i.6 = trunc i64 %shr.i2.i.6 to i32
  %shr.i.i81.6 = lshr i64 %add.6, 8
  %and.i.i82.6 = and i64 %shr.i.i81.6, 8796093022207
  %shr.i2.i85.6 = lshr i64 %and.i.i82.6, %sh_prom.i.i.6
  %conv1.i.i86.6 = trunc i64 %shr.i2.i85.6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i.6, i32 %conv1.i.i86.6)
  %cmp12.not.6 = icmp eq i32 %conv1.i.i.6, %conv1.i.i86.6
  br i1 %cmp12.not.6, label %lor.lhs.false.6.for.end_crit_edge, label %lor.lhs.false.6.cleanup_crit_edge

lor.lhs.false.6.cleanup_crit_edge:                ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.6.for.end_crit_edge:                ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body.lr.ph
  %shr.i.i = lshr i64 %9, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %48 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %49 to i64
  %shr.i2.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i2.i to i32
  %shr.i.i81 = lshr i64 %add, 8
  %and.i.i82 = and i64 %shr.i.i81, 8796093022207
  %shr.i2.i85 = lshr i64 %and.i.i82, %sh_prom.i.i
  %conv1.i.i86 = trunc i64 %shr.i2.i85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv1.i.i86)
  %cmp12.not = icmp eq i32 %conv1.i.i, %conv1.i.i86
  br i1 %cmp12.not, label %for.cond, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %lor.lhs.false.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %shr.i87 = lshr i64 %5, 20
  %and.i88 = and i64 %shr.i87, 65535
  %50 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %r, align 8
  %shr.i89 = lshr i64 %51, 20
  %and.i90 = and i64 %shr.i89, 65535
  %add18 = add nuw nsw i64 %and.i90, %and.i88
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %add18)
  %cmp19 = icmp ugt i64 %add18, 65535
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %for.end
  %low.i = getelementptr inbounds %struct.bkey, ptr %l, i32 0, i32 1
  %52 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %low.i, align 8
  %add23 = xor i64 %and.i88, 65535
  %sub = add i64 %add23, %53
  store i64 %sub, ptr %low.i, align 8
  %or.i = or i64 %5, 68718428160
  %54 = ptrtoint ptr %l to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %or.i, ptr %l, align 8
  %and.i.i.i = and i64 %5, 1048575
  %55 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %r, align 8
  %and.i12.i.i = and i64 %56, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !76

cond.true.i.i:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub nsw i64 %and.i.i.i, %and.i12.i.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %r, i32 0, i32 1
  %57 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %sub, %58
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i, label %do.body2.i, label %bch_cut_front.exit, !prof !78

do.body2.i:                                       ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

bch_cut_front.exit:                               ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call zeroext i1 @__bch_cut_front(ptr noundef %l, ptr noundef %r) #7
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %59 = and i64 %5, 216172782113783808
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool28.not = icmp eq i64 %59, 0
  br i1 %tobool28.not, label %if.end26.if.end38_crit_edge, label %if.then29

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then29:                                        ; preds = %if.end26
  %60 = and i64 %51, 216172782113783808
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool31.not = icmp eq i64 %60, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %61 = trunc i64 %shr.i to i32
  %idxprom.i = and i32 %61, 7
  %arrayidx.i = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 %idxprom.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i, align 8
  %shr.i7.i = lshr i64 %51, 60
  %64 = trunc i64 %shr.i7.i to i32
  %idxprom3.i = and i32 %64, 7
  %arrayidx4.i = getelementptr %struct.bkey, ptr %r, i32 0, i32 2, i32 %idxprom3.i
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx4.i, align 8
  %add.i = add i64 %66, %63
  %and.i100 = and i64 %add.i, 9223372036854775807
  %idxprom = trunc i64 %and.i to i32
  %arrayidx36 = getelementptr %struct.bkey, ptr %l, i32 0, i32 2, i32 %idxprom
  %67 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %and.i100, ptr %arrayidx36, align 8
  br label %if.end38

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %and.i103 = and i64 %5, -216172782113783809
  %68 = ptrtoint ptr %l to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %and.i103, ptr %l, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then32, %if.end26.if.end38_crit_edge
  %low.i104 = getelementptr inbounds %struct.bkey, ptr %l, i32 0, i32 1
  %69 = ptrtoint ptr %low.i104 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %low.i104, align 8
  %71 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %r, align 8
  %shr.i105 = lshr i64 %72, 20
  %and.i106 = and i64 %shr.i105, 65535
  %add41 = add i64 %and.i106, %70
  store i64 %add41, ptr %low.i104, align 8
  %73 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %l, align 8
  %and.i109 = and i64 %74, 68718428160
  %75 = load i64, ptr %r, align 8
  %and.i112 = and i64 %74, -68718428161
  %.mask = and i64 %75, 68718428160
  %and1.i = add nuw nsw i64 %.mask, %and.i109
  %shl.i = and i64 %and1.i, 68718428160
  %or.i113 = or i64 %shl.i, %and.i112
  store i64 %or.i113, ptr %l, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %bch_cut_front.exit, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.6.cleanup_crit_edge, %for.body.6.cleanup_crit_edge, %lor.lhs.false.5.cleanup_crit_edge, %for.body.5.cleanup_crit_edge, %lor.lhs.false.4.cleanup_crit_edge, %for.body.4.cleanup_crit_edge, %lor.lhs.false.3.cleanup_crit_edge, %for.body.3.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %bch_cut_front.exit ], [ true, %if.end38 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.6.cleanup_crit_edge ], [ false, %for.body.6.cleanup_crit_edge ], [ false, %lor.lhs.false.5.cleanup_crit_edge ], [ false, %for.body.5.cleanup_crit_edge ], [ false, %lor.lhs.false.4.cleanup_crit_edge ], [ false, %for.body.4.cleanup_crit_edge ], [ false, %lor.lhs.false.3.cleanup_crit_edge ], [ false, %for.body.3.cleanup_crit_edge ], [ false, %lor.lhs.false.2.cleanup_crit_edge ], [ false, %for.body.2.cleanup_crit_edge ], [ false, %lor.lhs.false.1.cleanup_crit_edge ], [ false, %for.body.1.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %for.body.lr.ph.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_cut_front(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_cut_back(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_btree_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bset_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bset_fix_invalidated_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcache_dev_sectors_dirty_add(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bch_bset_search(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/extents.c", i32 104, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/extents.c", i32 108, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/bcache/extents.c", i32 111, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/extents.c", i32 113, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/bcache/extents.c", i32 117, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/bcache/extents.c", i32 120, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/bcache/extents.c", i32 122, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/bcache/extents.c", i32 162, i32 2}
!16 = !{ptr @bch_btree_keys_ops, !17, !"bch_btree_keys_ops", i1 false, i1 false}
!17 = !{!"../drivers/md/bcache/extents.c", i32 240, i32 29}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/bcache/extents.c", i32 496, i32 2}
!20 = !{ptr @bch_extent_keys_ops, !21, !"bch_extent_keys_ops", i1 false, i1 false}
!21 = !{!"../drivers/md/bcache/extents.c", i32 620, i32 29}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/extents.c", i32 79, i32 12}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/bcache/extents.c", i32 81, i32 12}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/extents.c", i32 83, i32 12}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/extents.c", i32 85, i32 12}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/extents.c", i32 89, i32 10}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/bcache/extents.c", i32 91, i32 10}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/bcache/extents.c", i32 93, i32 10}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/bcache/extents.c", i32 94, i32 9}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/bcache/extents.c", i32 198, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/bcache/extents.c", i32 133, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @bch_bkey_dump._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @bch_bkey_dump._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/bcache/extents.c", i32 138, i32 3}
!48 = !{ptr @bch_bkey_dump._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bch_bkey_dump._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/bcache/extents.c", i32 140, i32 4}
!52 = !{ptr @bch_bkey_dump._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bch_bkey_dump._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/bcache/extents.c", i32 144, i32 2}
!56 = !{ptr @bch_bkey_dump._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bch_bkey_dump._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/bcache/extents.c", i32 556, i32 4}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bch_extent_bad._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bch_extent_bad._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/bcache/extents.c", i32 560, i32 3}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/bcache/extents.c", i32 530, i32 2}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i8 0, i8 2}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2154404408, i64 2154404897, i64 2154404445, i64 2154404501, i64 2154404535, i64 2154404559, i64 2154404600, i64 2154404621, i64 2154404649, i64 2154404683}
!80 = !{i64 2154481672, i64 2154482164, i64 2154481709, i64 2154481765, i64 2154481799, i64 2154481823, i64 2154481864, i64 2154481885, i64 2154481913, i64 2154481947}
!81 = !{i64 2154406741, i64 2154407230, i64 2154406778, i64 2154406834, i64 2154406868, i64 2154406892, i64 2154406933, i64 2154406954, i64 2154406982, i64 2154407016}
!82 = !{i64 2154485603, i64 2154486095, i64 2154485640, i64 2154485696, i64 2154485730, i64 2154485754, i64 2154485795, i64 2154485816, i64 2154485844, i64 2154485878}
!83 = !{i64 2154487217, i64 2154487709, i64 2154487254, i64 2154487310, i64 2154487344, i64 2154487368, i64 2154487409, i64 2154487430, i64 2154487458, i64 2154487492}
!84 = !{i64 2154489642, i64 2154490134, i64 2154489679, i64 2154489735, i64 2154489769, i64 2154489793, i64 2154489834, i64 2154489855, i64 2154489883, i64 2154489917}
