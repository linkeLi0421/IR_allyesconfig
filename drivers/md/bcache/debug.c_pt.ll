; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/debug.c_pt.bc'
source_filename = "../drivers/md/bcache/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btree = type { %struct.hlist_node, %union.anon, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon = type { [8 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.closure = type { %union.anon.2, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon.2 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btree_write = type { ptr, i32 }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.91 }
%struct.rb_root = type { ptr }
%struct.anon.91 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.92, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.92 = type { [8 x i64] }
%union.anon.96 = type { [8 x i64] }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.88], %struct.anon.89, i32, ptr, %struct.anon.90, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.72, [32 x i8], i64, i64, i64, i64, i64, %union.anon.73, i32, i16, %union.anon.76, [256 x i64] }
%union.anon.72 = type { i64, [8 x i8] }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i64, i16, i16, i16, i32 }
%union.anon.76 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, i32, i32, ptr }
%struct.anon.90 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.bset = type { i64, i64, i64, i32, i32, %union.anon.93 }
%union.anon.93 = type { [0 x %struct.bkey] }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }
%struct.page = type { i32, %union.anon.5, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dump_iterator = type { [4096 x i8], i32, ptr, %struct.keybuf }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.83 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.85 = type { ptr }

@bch_btree_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013bcache: %s() *** in memory:\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bch_btree_verify\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/md/bcache/debug.c\00", [38 x i8] zeroinitializer }, align 32
@bch_btree_verify._entry_ptr = internal global ptr @bch_btree_verify._entry, section ".printk_index", align 4
@bch_btree_verify._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bcache: %s() *** read back in:\0A\00", [62 x i8] zeroinitializer }, align 32
@bch_btree_verify._entry_ptr.5 = internal global ptr @bch_btree_verify._entry.3, section ".printk_index", align 4
@bch_btree_verify._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bcache: %s() *** on disk block %u:\0A\00", [58 x i8] zeroinitializer }, align 32
@bch_btree_verify._entry_ptr.8 = internal global ptr @bch_btree_verify._entry.6, section ".printk_index", align 4
@bch_btree_verify._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bcache: %s() *** block %zu not written\0A\00", [54 x i8] zeroinitializer }, align 32
@bch_btree_verify._entry_ptr.11 = internal global ptr @bch_btree_verify._entry.9, section ".printk_index", align 4
@bch_btree_verify._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013bcache: %s() b->written %u\0A\00", [34 x i8] zeroinitializer }, align 32
@bch_btree_verify._entry_ptr.14 = internal global ptr @bch_btree_verify._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"verify failed at %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"verify failed at dev %pg sector %llu\00", [59 x i8] zeroinitializer }, align 32
@bcache_debug = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcache-%pU\00", [21 x i8] zeroinitializer }, align 32
@cache_set_debug_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @bch_dump_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bch_dump_open, ptr null, ptr @bch_dump_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.bch_data_verify = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 77, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 80, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 87, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 91, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 98, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 101, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 136, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"bcache_debug\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 20, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 240, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"cache_set_debug_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 228, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 260, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 106, i32 6 }
@___asan_gen_.86 = private constant [29 x i8] c"../drivers/md/bcache/debug.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 198, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 230, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 174, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"switch.table.bch_data_verify\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @bch_btree_verify._entry, ptr @bch_btree_verify._entry.12, ptr @bch_btree_verify._entry.3, ptr @bch_btree_verify._entry.6, ptr @bch_btree_verify._entry.9, ptr @bch_btree_verify._entry_ptr, ptr @bch_btree_verify._entry_ptr.11, ptr @bch_btree_verify._entry_ptr.14, ptr @bch_btree_verify._entry_ptr.5, ptr @bch_btree_verify._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @bcache_debug, ptr @.str.17, ptr @cache_set_debug_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.bch_data_verify], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_verify._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_verify._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_verify._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_btree_verify._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcache_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_set_debug_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bch_data_verify to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_verify(ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %verify_data = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %verify_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %verify_data, align 8
  %verify = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 85
  %4 = ptrtoint ptr %verify to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %verify, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %verify_ondisk = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %verify_ondisk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %verify_ondisk, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %io_mutex = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 12
  tail call void @down(ptr noundef %io_mutex) #11
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c, align 4
  %verify_lock = getelementptr inbounds %struct.cache_set, ptr %8, i32 0, i32 55
  tail call void @mutex_lock_nested(ptr noundef %verify_lock, i32 noundef 0) #11
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c, align 4
  %verify_ondisk6 = getelementptr inbounds %struct.cache_set, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %verify_ondisk6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %verify_ondisk6, align 4
  %verify_data8 = getelementptr inbounds %struct.cache_set, ptr %10, i32 0, i32 53
  %13 = ptrtoint ptr %verify_data8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %verify_data8, align 8
  %data = getelementptr inbounds %struct.btree, ptr %14, i32 0, i32 10, i32 5, i32 0, i32 5
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %keys9 = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 10
  %data12 = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 10, i32 5, i32 0, i32 5
  %17 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data12, align 8
  %19 = getelementptr inbounds %struct.btree, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %sh.diff.i = lshr i64 %22, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %23 = call ptr @memcpy(ptr %19, ptr %20, i32 %mul.i)
  %written = getelementptr inbounds %struct.btree, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %written to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %written, align 4
  %level = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 9
  %25 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %level, align 2
  %level13 = getelementptr inbounds %struct.btree, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %level13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %level13, align 2
  %28 = ptrtoint ptr %keys9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %keys9, align 8
  %keys15 = getelementptr inbounds %struct.btree, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %keys15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %keys15, align 8
  %31 = load ptr, ptr %c, align 4
  %call18 = tail call ptr @bch_bbio_alloc(ptr noundef %31) #11
  %32 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %c, align 4
  %cache = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cache, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call18, i32 0, i32 3
  %38 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %39, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call18, i32 0, i32 1
  %40 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %41, %37
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %39, -2177
  %42 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %43 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call18) #11
  %ptr.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ptr.i, align 8
  %shr.i = lshr i64 %45, 8
  %and.i = and i64 %shr.i, 8796093022207
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call18, i32 0, i32 8
  %46 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %and.i, ptr %bi_iter, align 8
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %19, align 8
  %sh.diff = lshr i64 %48, 11
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %conv = and i32 %tr.sh.diff, 33553920
  %bi_size = getelementptr inbounds %struct.bio, ptr %call18, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %bi_size, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call18, i32 0, i32 2
  %50 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4096, ptr %bi_opf, align 8
  tail call void @bch_bio_map(ptr noundef %call18, ptr noundef %16) #11
  %call23 = tail call i32 @submit_bio_wait(ptr noundef %call18) #11
  %51 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %c, align 4
  tail call void @bch_bbio_free(ptr noundef %call18, ptr noundef %52) #11
  %53 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %19, align 8
  %sh.diff212 = lshr i64 %54, 11
  %tr.sh.diff213 = trunc i64 %sh.diff212 to i32
  %conv27 = and i32 %tr.sh.diff213, 33553920
  %55 = call ptr @memcpy(ptr %12, ptr %16, i32 %conv27)
  tail call void @bch_btree_node_read_done(ptr noundef %3) #11
  %data31 = getelementptr inbounds %struct.btree, ptr %3, i32 0, i32 10, i32 5, i32 0, i32 5
  %56 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data31, align 8
  %keys32 = getelementptr inbounds %struct.bset, ptr %18, i32 0, i32 4
  %58 = ptrtoint ptr %keys32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %keys32, align 4
  %keys33 = getelementptr inbounds %struct.bset, ptr %57, i32 0, i32 4
  %60 = ptrtoint ptr %keys33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %keys33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.not = icmp eq i32 %59, %61
  br i1 %cmp.not, label %lor.lhs.false35, label %bio_set_dev.exit.if.then44_crit_edge

bio_set_dev.exit.if.then44_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false35:                                  ; preds = %bio_set_dev.exit
  %62 = getelementptr inbounds %struct.bset, ptr %18, i32 0, i32 5
  %63 = getelementptr inbounds %struct.bset, ptr %57, i32 0, i32 5
  %add.ptr.i.idx = shl i32 %59, 3
  %bcmp = tail call i32 @bcmp(ptr %62, ptr %63, i32 %add.ptr.i.idx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool43.not = icmp eq i32 %bcmp, 0
  br i1 %tobool43.not, label %if.end130, label %lor.lhs.false35.if.then44_crit_edge

lor.lhs.false35.if.then44_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false35.if.then44_crit_edge, %bio_set_dev.exit.if.then44_crit_edge
  tail call void @console_lock() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  tail call void @bch_dump_bset(ptr noundef %keys9, ptr noundef %18, i32 noundef 0) #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  tail call void @bch_dump_bset(ptr noundef %keys15, ptr noundef %57, i32 noundef 0) #11
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %20, align 8
  %sh.diff214216 = lshr i64 %65, 11
  %tr.sh.diff215217 = trunc i64 %sh.diff214216 to i32
  %idx.ext218 = and i32 %tr.sh.diff215217, 33553920
  %add.ptr219 = getelementptr i8, ptr %12, i32 %idx.ext218
  %cmp55220 = icmp ult ptr %12, %add.ptr219
  br i1 %cmp55220, label %land.rhs.lr.ph, label %if.then44.do.end98_crit_edge

if.then44.do.end98_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = ptrtoint ptr %12 to i32
  br label %do.end98

land.rhs.lr.ph:                                   ; preds = %if.then44
  %seq57 = getelementptr inbounds %struct.bset, ptr %12, i32 0, i32 2
  %sub.ptr.rhs.cast61 = ptrtoint ptr %12 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0221 = phi ptr [ %12, %land.rhs.lr.ph ], [ %add.ptr95, %for.body.land.rhs_crit_edge ]
  %seq = getelementptr inbounds %struct.bset, ptr %i.0221, i32 0, i32 2
  %66 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %seq, align 8
  %68 = ptrtoint ptr %seq57 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %seq57, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %69)
  %cmp58 = icmp eq i64 %67, %69
  br i1 %cmp58, label %for.body, label %land.rhs.do.end98.loopexit_crit_edge

land.rhs.do.end98.loopexit_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98.loopexit

for.body:                                         ; preds = %land.rhs
  %sub.ptr.lhs.cast60 = ptrtoint ptr %i.0221 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %70 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %c, align 4
  %cache64 = getelementptr inbounds %struct.cache_set, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %cache64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cache64, align 4
  %block_size = getelementptr inbounds %struct.cache, ptr %73, i32 0, i32 1, i32 11, i32 0, i32 1
  %74 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %block_size, align 8
  %conv65 = zext i16 %75 to i32
  %shl66 = shl nuw nsw i32 %conv65, 9
  %div = sdiv i32 %sub.ptr.sub62, %shl66
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %div) #15
  tail call void @bch_dump_bset(ptr noundef %keys9, ptr noundef %i.0221, i32 noundef %div) #11
  %keys73 = getelementptr inbounds %struct.bset, ptr %i.0221, i32 0, i32 4
  %76 = ptrtoint ptr %keys73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %keys73, align 4
  %mul = shl i32 %77, 3
  %78 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %c, align 4
  %cache75 = getelementptr inbounds %struct.cache_set, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %cache75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cache75, align 4
  %block_size77 = getelementptr inbounds %struct.cache, ptr %81, i32 0, i32 1, i32 11, i32 0, i32 1
  %82 = ptrtoint ptr %block_size77 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %block_size77, align 8
  %conv78 = zext i16 %83 to i32
  %shl79 = shl nuw nsw i32 %conv78, 9
  %add80 = add i32 %mul, 31
  %sub = add i32 %add80, %shl79
  %84 = urem i32 %sub, %shl79
  %mul94 = sub i32 %sub, %84
  %add.ptr95 = getelementptr i8, ptr %i.0221, i32 %mul94
  %85 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %20, align 8
  %sh.diff214 = lshr i64 %86, 11
  %tr.sh.diff215 = trunc i64 %sh.diff214 to i32
  %idx.ext = and i32 %tr.sh.diff215, 33553920
  %add.ptr = getelementptr i8, ptr %12, i32 %idx.ext
  %cmp55 = icmp ult ptr %add.ptr95, %add.ptr
  br i1 %cmp55, label %for.body.land.rhs_crit_edge, label %for.body.do.end98.loopexit_crit_edge

for.body.do.end98.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98.loopexit

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.end98.loopexit:                                ; preds = %for.body.do.end98.loopexit_crit_edge, %land.rhs.do.end98.loopexit_crit_edge
  %i.0.lcssa.ph = phi ptr [ %add.ptr95, %for.body.do.end98.loopexit_crit_edge ], [ %i.0221, %land.rhs.do.end98.loopexit_crit_edge ]
  %.pre227 = ptrtoint ptr %i.0.lcssa.ph to i32
  br label %do.end98

do.end98:                                         ; preds = %do.end98.loopexit, %if.then44.do.end98_crit_edge
  %sub.ptr.lhs.cast100.pre-phi = phi i32 [ %.pre, %if.then44.do.end98_crit_edge ], [ %.pre227, %do.end98.loopexit ]
  %sub.ptr.rhs.cast101.pre-phi = phi i32 [ %.pre, %if.then44.do.end98_crit_edge ], [ %sub.ptr.rhs.cast61, %do.end98.loopexit ]
  %sub.ptr.sub102 = sub i32 %sub.ptr.lhs.cast100.pre-phi, %sub.ptr.rhs.cast101.pre-phi
  %87 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %c, align 4
  %cache104 = getelementptr inbounds %struct.cache_set, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %cache104 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cache104, align 4
  %block_size106 = getelementptr inbounds %struct.cache, ptr %90, i32 0, i32 1, i32 11, i32 0, i32 1
  %91 = ptrtoint ptr %block_size106 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %block_size106, align 8
  %conv107 = zext i16 %92 to i32
  %shl108 = shl nuw nsw i32 %conv107, 9
  %div109 = sdiv i32 %sub.ptr.sub102, %shl108
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %div109) #15
  %93 = getelementptr inbounds %struct.bset, ptr %18, i32 0, i32 5
  %94 = ptrtoint ptr %keys32 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %keys32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp113223.not = icmp eq i32 %95, 0
  br i1 %cmp113223.not, label %do.end98.do.end125_crit_edge, label %for.body115.lr.ph

do.end98.do.end125_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

for.body115.lr.ph:                                ; preds = %do.end98
  %96 = getelementptr inbounds %struct.bset, ptr %57, i32 0, i32 5
  br label %for.body115

for.body115:                                      ; preds = %for.inc121.for.body115_crit_edge, %for.body115.lr.ph
  %j.0224 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc, %for.inc121.for.body115_crit_edge ]
  %arrayidx = getelementptr [0 x i64], ptr %93, i32 0, i32 %j.0224
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx, align 8
  %arrayidx116 = getelementptr [0 x i64], ptr %96, i32 0, i32 %j.0224
  %99 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx116, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %100)
  %cmp117.not = icmp eq i64 %98, %100
  br i1 %cmp117.not, label %for.inc121, label %for.body115.do.end125_crit_edge

for.body115.do.end125_crit_edge:                  ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

for.inc121:                                       ; preds = %for.body115
  %inc = add nuw i32 %j.0224, 1
  %exitcond.not = icmp eq i32 %inc, %95
  br i1 %exitcond.not, label %for.inc121.do.end125_crit_edge, label %for.inc121.for.body115_crit_edge

for.inc121.for.body115_crit_edge:                 ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body115

for.inc121.do.end125_crit_edge:                   ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

do.end125:                                        ; preds = %for.inc121.do.end125_crit_edge, %for.body115.do.end125_crit_edge, %do.end98.do.end125_crit_edge
  %j.0.lcssa = phi i32 [ 0, %do.end98.do.end125_crit_edge ], [ %95, %for.inc121.do.end125_crit_edge ], [ %j.0224, %for.body115.do.end125_crit_edge ]
  %written127 = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 8
  %101 = ptrtoint ptr %written127 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %written127, align 4
  %conv128 = zext i16 %102 to i32
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %conv128) #15
  tail call void @console_unlock() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15, i32 noundef %j.0.lcssa) #16
  unreachable

if.end130:                                        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %c, align 4
  %verify_lock132 = getelementptr inbounds %struct.cache_set, ptr %104, i32 0, i32 55
  tail call void @mutex_unlock(ptr noundef %verify_lock132) #11
  tail call void @up(ptr noundef %io_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_bbio_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bbio_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_btree_node_read_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_dump_bset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_data_verify(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %1 to i8
  %switch.tableidx = add i8 %trunc.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 7
  br i1 %2, label %switch.hole_check, label %entry.sw.epilog.i_crit_edge

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not54.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not54.i, label %sw.epilog.i.bio_segments.exit_crit_edge, label %land.rhs.lr.ph.i

sw.epilog.i.bio_segments.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_segments.exit

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %6 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_io_vec.i, align 8
  %and.i.i.i = and i32 %1, 255
  %8 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %8, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %segs.058.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.057.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.056.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.055.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.10.056.i, i32 1
  %9 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bv_len10.i, align 4
  %sub.i = sub i32 %10, %iter.sroa.15.055.i
  %11 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i, i32 %sub.i) #11
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.10.056.i, i32 2
  %12 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset15.i, align 4
  %add17.i = add i32 %13, %iter.sroa.15.055.i
  %rem.i = and i32 %add17.i, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub18.i) #11
  %inc.i = add i32 %segs.058.i, 1
  br i1 %switch.selectcmp.i.i.i, label %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

land.rhs.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %14, %iter.sroa.15.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %10)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %10
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select53.i = add i32 %iter.sroa.10.056.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.15.1.i = phi i32 [ %iter.sroa.15.055.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.056.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select53.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.057.i, %14
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %bio_segments.exit.loopexit, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

bio_segments.exit.loopexit:                       ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = trunc i32 %inc.i to i16
  br label %bio_segments.exit

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 85, %switch.tableidx
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.bch_data_verify, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %17)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bio_segments.exit

bio_segments.exit:                                ; preds = %switch.lookup, %bio_segments.exit.loopexit, %sw.epilog.i.bio_segments.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %sw.epilog.i.bio_segments.exit_crit_edge ], [ %phi.cast, %bio_segments.exit.loopexit ], [ %switch.load, %switch.lookup ]
  %call1 = tail call ptr @bio_kmalloc(i32 noundef 3072, i16 noundef zeroext %retval.0.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %bio_segments.exit.cleanup_crit_edge, label %if.end

bio_segments.exit.cleanup_crit_edge:              ; preds = %bio_segments.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %bio_segments.exit
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %18 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 3
  %20 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %21, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 1
  %22 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %23, %19
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %21, -2177
  %24 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %25 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call1) #11
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bi_opf, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %27 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bi_iter, align 8
  %bi_iter2 = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 8
  %29 = ptrtoint ptr %bi_iter2 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %bi_iter2, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_size, align 8
  %bi_size6 = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %bi_size6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bi_size6, align 8
  tail call void @bch_bio_map(ptr noundef nonnull %call1, ptr noundef null) #11
  %call7 = tail call i32 @bch_bio_alloc_pages(ptr noundef nonnull %call1, i32 noundef 3072) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %bio_set_dev.exit.out_put_crit_edge

bio_set_dev.exit.out_put_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end10:                                         ; preds = %bio_set_dev.exit
  %call11 = tail call i32 @submit_bio_wait(ptr noundef nonnull %call1) #11
  %33 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %iter.sroa.6.0.copyload = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool15.not217 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool15.not217, label %if.end10.for.end_crit_edge, label %land.rhs.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end10
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %34 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_io_vec52 = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 20
  %c = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 1, i32 2
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %citer.sroa.17.0223 = phi i32 [ 0, %land.rhs.lr.ph ], [ %citer.sroa.17.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %citer.sroa.12.0222 = phi i32 [ 0, %land.rhs.lr.ph ], [ %citer.sroa.12.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %citer.sroa.5.0221 = phi i32 [ -1, %land.rhs.lr.ph ], [ %citer.sroa.5.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0220 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i193, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0219 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0218 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %36 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0219
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0219, i32 2
  %40 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_offset, align 4
  %add = add i32 %41, %iter.sroa.16.0218
  %div167 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %39, i32 %div167
  %bv_len24 = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0219, i32 1
  %42 = ptrtoint ptr %bv_len24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_len24, align 4
  %sub = sub i32 %43, %iter.sroa.16.0218
  %44 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0220, i32 %sub)
  %rem = and i32 %add, 4095
  %sub33 = sub nuw nsw i32 4096, %rem
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %sub33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %46, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #11
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %rem
  %47 = ptrtoint ptr %bi_io_vec52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bi_io_vec52, align 8
  %arrayidx54 = getelementptr %struct.bio_vec, ptr %48, i32 %citer.sroa.12.0222
  %49 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx54, align 4
  %bv_offset59 = getelementptr %struct.bio_vec, ptr %48, i32 %citer.sroa.12.0222, i32 2
  %51 = ptrtoint ptr %bv_offset59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bv_offset59, align 4
  %add61 = add i32 %52, %citer.sroa.17.0223
  %div62168 = lshr i32 %add61, 12
  %add.ptr63 = getelementptr %struct.page, ptr %50, i32 %div62168
  %rem85 = and i32 %add61, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %53 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i169 = or i32 %53, 512
  %call.i.i170 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr63, i32 noundef %or.i.i169) #11
  %add.ptr.i172 = getelementptr i8, ptr %call.i.i170, i32 %rem85
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i, ptr %add.ptr.i172, i32 %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool105.not = icmp eq i32 %bcmp, 0
  br i1 %tobool105.not, label %land.rhs.do.end114_crit_edge, label %if.then106

land.rhs.do.end114_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end114

if.then106:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %c, align 8
  %56 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev, align 4
  %58 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bi_iter, align 8
  %call109 = tail call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef %57, i64 noundef %59) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then106, %land.rhs.do.end114_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr.i172) #11
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr.i) #11
  %60 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bi_opf, align 8
  %and.i.i = and i32 %61, 255
  %62 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %62, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.then.i174, label %if.else.i

if.then.i174:                                     ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i173 = sub i32 %citer.sroa.5.0221, %45
  br label %bio_advance_iter.exit

if.else.i:                                        ; preds = %do.end114
  %63 = ptrtoint ptr %bi_io_vec52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bi_io_vec52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %citer.sroa.5.0221, i32 %45)
  %cmp.i.i = icmp ult i32 %citer.sroa.5.0221, %45
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end38.i.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b1.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.bio_advance_iter.exit_crit_edge, label %if.then.i.i, !prof !56

land.rhs.i.i.bio_advance_iter.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %bio_advance_iter.exit

if.end38.i.i:                                     ; preds = %if.else.i
  %sub.i.i = sub i32 %citer.sroa.5.0221, %45
  %add.i.i = add i32 %45, %citer.sroa.17.0223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool40.not3.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool40.not3.i.i, label %if.end38.i.i.bio_advance_iter.exit_crit_edge, label %if.end38.i.i.land.rhs41.i.i_crit_edge

if.end38.i.i.land.rhs41.i.i_crit_edge:            ; preds = %if.end38.i.i
  br label %land.rhs41.i.i

if.end38.i.i.bio_advance_iter.exit_crit_edge:     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter.exit

land.rhs41.i.i:                                   ; preds = %while.body.i.i.land.rhs41.i.i_crit_edge, %if.end38.i.i.land.rhs41.i.i_crit_edge
  %bytes.addr.05.i.i = phi i32 [ %sub46.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %add.i.i, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %idx.04.i.i = phi i32 [ %inc.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %citer.sroa.12.0222, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %64, i32 %idx.04.i.i, i32 1
  %65 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i, i32 %66)
  %cmp42.not.i.i = icmp ult i32 %bytes.addr.05.i.i, %66
  br i1 %cmp42.not.i.i, label %land.rhs41.i.i.bio_advance_iter.exit_crit_edge, label %while.body.i.i

land.rhs41.i.i.bio_advance_iter.exit_crit_edge:   ; preds = %land.rhs41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter.exit

while.body.i.i:                                   ; preds = %land.rhs41.i.i
  %sub46.i.i = sub i32 %bytes.addr.05.i.i, %66
  %inc.i.i = add i32 %idx.04.i.i, 1
  %tobool40.not.i.i = icmp eq i32 %sub46.i.i, 0
  br i1 %tobool40.not.i.i, label %while.body.i.i.bio_advance_iter.exit_crit_edge, label %while.body.i.i.land.rhs41.i.i_crit_edge

while.body.i.i.land.rhs41.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs41.i.i

while.body.i.i.bio_advance_iter.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter.exit

bio_advance_iter.exit:                            ; preds = %while.body.i.i.bio_advance_iter.exit_crit_edge, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge, %if.end38.i.i.bio_advance_iter.exit_crit_edge, %if.then.i.i, %land.rhs.i.i.bio_advance_iter.exit_crit_edge, %if.then.i174
  %citer.sroa.5.1 = phi i32 [ %sub.i173, %if.then.i174 ], [ 0, %if.then.i.i ], [ 0, %land.rhs.i.i.bio_advance_iter.exit_crit_edge ], [ %sub.i.i, %if.end38.i.i.bio_advance_iter.exit_crit_edge ], [ %sub.i.i, %while.body.i.i.bio_advance_iter.exit_crit_edge ], [ %sub.i.i, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge ]
  %citer.sroa.12.1 = phi i32 [ %citer.sroa.12.0222, %if.then.i174 ], [ %citer.sroa.12.0222, %if.then.i.i ], [ %citer.sroa.12.0222, %land.rhs.i.i.bio_advance_iter.exit_crit_edge ], [ %citer.sroa.12.0222, %if.end38.i.i.bio_advance_iter.exit_crit_edge ], [ %idx.04.i.i, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge ], [ %inc.i.i, %while.body.i.i.bio_advance_iter.exit_crit_edge ]
  %citer.sroa.17.1 = phi i32 [ %citer.sroa.17.0223, %if.then.i174 ], [ %citer.sroa.17.0223, %if.then.i.i ], [ %citer.sroa.17.0223, %land.rhs.i.i.bio_advance_iter.exit_crit_edge ], [ 0, %if.end38.i.i.bio_advance_iter.exit_crit_edge ], [ %bytes.addr.05.i.i, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge ], [ 0, %while.body.i.i.bio_advance_iter.exit_crit_edge ]
  %67 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_opf.i, align 8
  %and.i.i180 = and i32 %68, 255
  %69 = add nsw i32 %and.i.i180, -3
  %switch.and.i.i181 = and i32 %69, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i181)
  %switch.selectcmp.i.i182 = icmp eq i32 %switch.and.i.i181, 0
  br i1 %switch.selectcmp.i.i182, label %bio_advance_iter.exit.bio_advance_iter_single.exit_crit_edge, label %if.else.i189

bio_advance_iter.exit.bio_advance_iter_single.exit_crit_edge: ; preds = %bio_advance_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit

if.else.i189:                                     ; preds = %bio_advance_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i185 = add i32 %45, %iter.sroa.16.0218
  %bv_len.i.i187 = getelementptr %struct.bio_vec, ptr %71, i32 %iter.sroa.10.0219, i32 1
  %72 = ptrtoint ptr %bv_len.i.i187 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len.i.i187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i185, i32 %73)
  %cmp.i.i188 = icmp eq i32 %add.i.i185, %73
  %spec.select = select i1 %cmp.i.i188, i32 0, i32 %add.i.i185
  %inc.i.i190 = zext i1 %cmp.i.i188 to i32
  %spec.select216 = add i32 %iter.sroa.10.0219, %inc.i.i190
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i189, %bio_advance_iter.exit.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0218, %bio_advance_iter.exit.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i189 ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0219, %bio_advance_iter.exit.bio_advance_iter_single.exit_crit_edge ], [ %spec.select216, %if.else.i189 ]
  %sub.i.i193 = sub i32 %iter.sroa.6.0220, %45
  %tobool15.not = icmp eq i32 %sub.i.i193, 0
  br i1 %tobool15.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %if.end10.for.end_crit_edge
  tail call void @bio_free_pages(ptr noundef nonnull %call1) #11
  br label %out_put

out_put:                                          ; preds = %for.end, %bio_set_dev.exit.out_put_crit_edge
  tail call void @bio_put(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put, %bio_segments.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bio_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_cache_set_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_debug_init_cache_set(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bcache_debug, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %name) #11
  %1 = call ptr @memset(ptr %name, i32 255, i32 50)
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 50, ptr noundef nonnull @.str.17, ptr noundef %set_uuid)
  %2 = load ptr, ptr @bcache_debug, align 4
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 256, ptr noundef %2, ptr noundef %c, ptr noundef nonnull @cache_set_debug_ops) #11
  %debug = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 4
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %debug, align 8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %name) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_debug_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bcache_debug, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_debug_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.18, ptr noundef null) #11
  store ptr %call, ptr @bcache_debug, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_dump_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %kbuf = alloca [80 x i8], align 1
  %.compoundliteral = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %kbuf) #11
  %2 = call ptr @memset(ptr %kbuf, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not70 = icmp eq i32 %size, 0
  br i1 %tobool.not70, label %entry.cleanup28_crit_edge, label %while.body.lr.ph

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

while.body.lr.ph:                                 ; preds = %entry
  %bytes1 = getelementptr inbounds %struct.dump_iterator, ptr %1, i32 0, i32 1
  %c = getelementptr inbounds %struct.dump_iterator, ptr %1, i32 0, i32 2
  %keys = getelementptr inbounds %struct.dump_iterator, ptr %1, i32 0, i32 3
  %low = getelementptr inbounds %struct.bkey, ptr %.compoundliteral, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ret.074 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.072 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.071 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %3 = ptrtoint ptr %bytes1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes1, align 8
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 %size.addr.071)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.body
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup28_crit_edge, label %if.then27.i.i, !prof !56

land.rhs16.i.i.cleanup28_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup28

if.then.i.i.i:                                    ; preds = %while.body
  call void @__check_object_size(ptr noundef %1, i32 noundef %5, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.072, i32 %5, i32 -1226833920) #17, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef %5) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.072, ptr noundef %1, i32 noundef %5) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool3.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool3.not, label %if.end, label %copy_to_user.exit.cleanup28_crit_edge

copy_to_user.exit.cleanup28_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

if.end:                                           ; preds = %copy_to_user.exit
  %add = add i32 %5, %ret.074
  %add.ptr = getelementptr i8, ptr %buf.addr.072, i32 %5
  %sub = sub i32 %size.addr.071, %5
  %7 = ptrtoint ptr %bytes1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes1, align 8
  %sub5 = sub i32 %8, %5
  store i32 %sub5, ptr %bytes1, align 8
  %add.ptr10 = getelementptr i8, ptr %1, i32 %5
  %9 = call ptr @memmove(ptr %1, ptr %add.ptr10, i32 %sub5)
  %10 = load i32, ptr %bytes1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

if.end15:                                         ; preds = %if.end
  %11 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c, align 4
  %13 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -9223372036853727233, ptr %.compoundliteral, align 8
  %14 = ptrtoint ptr %low to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 9223372036854775807, ptr %low, align 8
  %call16 = call ptr @bch_keybuf_next_rescan(ptr noundef %12, ptr noundef %keys, ptr noundef nonnull %.compoundliteral, ptr noundef nonnull @dump_pred) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup28_crit_edge, label %cleanup

if.end15.cleanup28_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

cleanup:                                          ; preds = %if.end15
  %15 = getelementptr inbounds %struct.keybuf_key, ptr %call16, i32 0, i32 1
  call void @bch_extent_to_text(ptr noundef nonnull %kbuf, i32 noundef 80, ptr noundef %15) #11
  %call24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.21, ptr noundef nonnull %kbuf)
  %16 = ptrtoint ptr %bytes1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call24, ptr %bytes1, align 8
  call void @bch_keybuf_del(ptr noundef %keys, ptr noundef nonnull %call16) #11
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.cleanup28_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup.cleanup28_crit_edge, %if.end15.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %copy_to_user.exit.cleanup28_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.2 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup28_crit_edge ], [ 0, %entry.cleanup28_crit_edge ], [ %add, %cleanup.cleanup28_crit_edge ], [ -14, %copy_to_user.exit.cleanup28_crit_edge ], [ %add, %if.end.cleanup28_crit_edge ], [ %add, %if.end15.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %kbuf) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_dump_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 48216, i32 noundef 3520, i32 noundef 4) #18
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %private_data, align 4
  %c1 = getelementptr inbounds %struct.dump_iterator, ptr %call1.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %c1, align 4
  %keys = getelementptr inbounds %struct.dump_iterator, ptr %call1.i.i.i, i32 0, i32 3
  tail call void @bch_keybuf_init(ptr noundef %keys) #11
  %4 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -9223372036854775808, ptr %keys, align 8
  %.compoundliteral.sroa.2.0.last_scanned.sroa_idx = getelementptr inbounds %struct.dump_iterator, ptr %call1.i.i.i, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0.last_scanned.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %.compoundliteral.sroa.2.0.last_scanned.sroa_idx, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_dump_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_keybuf_next_rescan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dump_pred(ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %k) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_extent_to_text(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/debug.c", i32 77, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bch_btree_verify._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bch_btree_verify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/debug.c", i32 80, i32 3}
!8 = !{ptr @bch_btree_verify._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bch_btree_verify._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/bcache/debug.c", i32 87, i32 4}
!12 = !{ptr @bch_btree_verify._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bch_btree_verify._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/bcache/debug.c", i32 91, i32 3}
!16 = !{ptr @bch_btree_verify._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bch_btree_verify._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/bcache/debug.c", i32 98, i32 3}
!20 = !{ptr @bch_btree_verify._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @bch_btree_verify._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/debug.c", i32 101, i32 9}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/bcache/debug.c", i32 136, i32 3}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/debug.c", i32 240, i32 22}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/debug.c", i32 260, i32 36}
!30 = !{ptr @bcache_debug, !31, !"bcache_debug", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/debug.c", i32 20, i32 16}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cache_set_debug_ops, !37, !"cache_set_debug_ops", i1 false, i1 false}
!37 = !{!"../drivers/md/bcache/debug.c", i32 228, i32 37}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/bcache/debug.c", i32 198, i32 42}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2152261087, i64 2152261112}
