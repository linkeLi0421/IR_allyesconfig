; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/stats.c_pt.bc'
source_filename = "../drivers/md/bcache/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.llist_node = type { ptr }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
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
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.97, %union.anon.98, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.97 = type { i32, i32, i32, i32, ptr }
%union.anon.98 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.77, [32 x i8], i64, i64, i64, i64, i64, %union.anon.78, i32, i16, %union.anon.81, [256 x i64] }
%union.anon.77 = type { i64, [8 x i8] }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i16, i16, i16, i32 }
%union.anon.81 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stats_total\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stats_five_minute\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stats_hour\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stats_day\00", [22 x i8] zeroinitializer }, align 32
@bch_stats_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @bch_stats_release, ptr @.compoundliteral, ptr @bch_stats_files, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bch_cache_accounting_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&acc->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.compoundliteral = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @bch_stats_show, ptr @bch_stats_store }, [24 x i8] zeroinitializer }, align 32
@bch_stats_files = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sysfs_cache_hits, ptr @sysfs_cache_misses, ptr @sysfs_cache_bypass_hits, ptr @sysfs_cache_bypass_misses, ptr @sysfs_cache_hit_ratio, ptr @sysfs_cache_miss_collisions, ptr @sysfs_bypassed, ptr null], [32 x i8] zeroinitializer }, align 32
@sysfs_cache_hits = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@sysfs_cache_misses = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_bypass_hits = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_bypass_misses = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_hit_ratio = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_cache_miss_collisions = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sysfs_bypassed = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_hits\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cache_misses\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cache_bypass_hits\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cache_bypass_misses\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_hit_ratio\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cache_miss_collisions\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bypassed\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 97, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 99, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 101, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 103, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"bch_stats_ktype\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 91, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"bch_stats_files\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 81, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"sysfs_cache_hits\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 57, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"sysfs_cache_misses\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"sysfs_cache_bypass_hits\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"sysfs_cache_bypass_misses\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"sysfs_cache_hit_ratio\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"sysfs_cache_miss_collisions\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"sysfs_bypassed\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 44, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 46, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 47, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 48, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 49, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [29 x i8] c"../drivers/md/bcache/stats.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 50, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bch_stats_ktype, ptr @bch_cache_accounting_init.__key, ptr @.str.4, ptr @.compoundliteral, ptr @bch_stats_files, ptr @sysfs_cache_hits, ptr @.str.5, ptr @sysfs_cache_misses, ptr @sysfs_cache_bypass_hits, ptr @sysfs_cache_bypass_misses, ptr @sysfs_cache_hit_ratio, ptr @sysfs_cache_miss_collisions, ptr @sysfs_bypassed, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_stats_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_cache_accounting_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_stats_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_hits to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_misses to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_bypass_hits to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_bypass_misses to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_hit_ratio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_cache_miss_collisions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_bypassed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_cache_accounting_add_kobjs(ptr noundef %acc, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4
  %call = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %total, ptr noundef %parent, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end, label %entry.cond.end15_crit_edge

entry.cond.end15_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.end:                                         ; preds = %entry
  %five_minute = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 5
  %call2 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %five_minute, ptr noundef %parent, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.end8, label %cond.end.cond.end15_crit_edge

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.end8:                                        ; preds = %cond.end
  %hour = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 6
  %call7 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %hour, ptr noundef %parent, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool10.not = icmp eq i32 %call7, 0
  br i1 %tobool10.not, label %cond.false12, label %cond.end8.cond.end15_crit_edge

cond.end8.cond.end15_crit_edge:                   ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.false12:                                     ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #9
  %day = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 7
  %call14 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %day, ptr noundef %parent, ptr noundef nonnull @.str.3) #7
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %cond.end8.cond.end15_crit_edge, %cond.end.cond.end15_crit_edge, %entry.cond.end15_crit_edge
  %cond16 = phi i32 [ %call14, %cond.false12 ], [ %call7, %cond.end8.cond.end15_crit_edge ], [ %call2, %cond.end.cond.end15_crit_edge ], [ %call, %entry.cond.end15_crit_edge ]
  ret i32 %cond16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bch_cache_accounting_clear(ptr nocapture noundef writeonly %acc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_hits = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4, i32 1
  %cache_miss_collisions = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %cache_miss_collisions to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cache_miss_collisions, align 4
  %sectors_bypassed = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %sectors_bypassed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sectors_bypassed, align 4
  %2 = call ptr @memset(ptr %cache_hits, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_accounting_destroy(ptr noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4
  tail call void @kobject_put(ptr noundef %total) #7
  %five_minute = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 5
  tail call void @kobject_put(ptr noundef %five_minute) #7
  %hour = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 6
  tail call void @kobject_put(ptr noundef %hour) #7
  %day = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 7
  tail call void @kobject_put(ptr noundef %day) #7
  %closing = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %closing, i32 noundef 4) #7
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %closing, align 4
  %timer = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @closure_set_ip(ptr noundef %acc) #7
  %fn1.i = getelementptr inbounds %struct.anon, ptr %acc, i32 0, i32 3
  %1 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fn1.i, align 4
  %2 = ptrtoint ptr %acc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %acc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @closure_sub(ptr noundef %acc, i32 noundef 1073741825) #7
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_mark_cache_accounting(ptr noundef %c, ptr noundef %d, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %collector = getelementptr i8, ptr %d, i32 52596
  tail call fastcc void @mark_cache_stats(ptr noundef %collector, i1 noundef zeroext %hit, i1 noundef zeroext %bypass)
  %collector4 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 5, i32 3
  tail call fastcc void @mark_cache_stats(ptr noundef %collector4, i1 noundef zeroext %hit, i1 noundef zeroext %bypass)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_cache_stats(ptr noundef %stats, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bypass, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  br i1 %hit, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 1, ptr elementtype(i32) %stats) #7, !srcloc !50
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cache_misses = getelementptr inbounds %struct.cache_stat_collector, ptr %stats, i32 0, i32 1
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_misses, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cache_misses, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_misses, ptr %cache_misses, i32 1, ptr elementtype(i32) %cache_misses) #7, !srcloc !50
  br label %if.end9

if.else4:                                         ; preds = %entry
  br i1 %hit, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  %cache_bypass_hits = getelementptr inbounds %struct.cache_stat_collector, ptr %stats, i32 0, i32 2
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_bypass_hits, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cache_bypass_hits, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_bypass_hits, ptr %cache_bypass_hits, i32 1, ptr elementtype(i32) %cache_bypass_hits) #7, !srcloc !50
  br label %if.end9

if.else7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  %cache_bypass_misses = getelementptr inbounds %struct.cache_stat_collector, ptr %stats, i32 0, i32 3
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_bypass_misses, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cache_bypass_misses, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_bypass_misses, ptr %cache_bypass_misses, i32 1, ptr elementtype(i32) %cache_bypass_misses) #7, !srcloc !50
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6, %if.else, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_mark_cache_miss_collision(ptr noundef %c, ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_miss_collisions = getelementptr i8, ptr %d, i32 52612
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_miss_collisions, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cache_miss_collisions, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_miss_collisions, ptr %cache_miss_collisions, i32 1, ptr elementtype(i32) %cache_miss_collisions) #7, !srcloc !50
  %cache_miss_collisions3 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 5, i32 3, i32 4
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_miss_collisions3, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cache_miss_collisions3, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_miss_collisions3, ptr %cache_miss_collisions3, i32 1, ptr elementtype(i32) %cache_miss_collisions3) #7, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_mark_sectors_bypassed(ptr noundef %c, ptr noundef %dc, i32 noundef %sectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sectors_bypassed = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 28, i32 3, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_bypassed, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %sectors_bypassed, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sectors_bypassed, ptr %sectors_bypassed, i32 %sectors, ptr elementtype(i32) %sectors_bypassed) #7, !srcloc !50
  %sectors_bypassed3 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 5, i32 3, i32 5
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_bypassed3, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %sectors_bypassed3, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sectors_bypassed3, ptr %sectors_bypassed3, i32 %sectors, ptr elementtype(i32) %sectors_bypassed3) #7, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_cache_accounting_init(ptr noundef %acc, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 4
  tail call void @kobject_init(ptr noundef %total, ptr noundef nonnull @bch_stats_ktype) #7
  %five_minute = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 5
  tail call void @kobject_init(ptr noundef %five_minute, ptr noundef nonnull @bch_stats_ktype) #7
  %hour = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 6
  tail call void @kobject_init(ptr noundef %hour, ptr noundef nonnull @bch_stats_ktype) #7
  %day = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 7
  tail call void @kobject_init(ptr noundef %day, ptr noundef nonnull @bch_stats_ktype) #7
  %0 = call ptr @memset(ptr %acc, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.closure, ptr %acc, i32 0, i32 1
  %1 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %entry.closure_init.exit_crit_edge, label %if.then.i

entry.closure_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %closure_init.exit

if.then.i:                                        ; preds = %entry
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %parent, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #7, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.then.i.closure_init.exit_crit_edge, !prof !54

if.then.i.closure_init.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %closure_init.exit

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !55
  unreachable

closure_init.exit:                                ; preds = %if.then.i.closure_init.exit_crit_edge, %entry.closure_init.exit_crit_edge
  %remaining.i = getelementptr inbounds %struct.closure, ptr %acc, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %acc) #7
  tail call fastcc void @closure_set_ip(ptr noundef %acc) #7
  %timer = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @scale_accounting, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @bch_cache_accounting_init.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1363
  %expires = getelementptr inbounds %struct.cache_accounting, ptr %acc, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scale_accounting(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %collector = getelementptr i8, ptr %t, i32 52
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %collector, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %collector, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %collector) #7, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl = shl i32 %asmresult.i.i, 16
  %cache_hits2 = getelementptr i8, ptr %t, i32 380
  %1 = ptrtoint ptr %cache_hits2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_hits2, align 4
  %add = add i32 %2, %shl
  store i32 %add, ptr %cache_hits2, align 4
  %cache_hits3 = getelementptr i8, ptr %t, i32 548
  %3 = ptrtoint ptr %cache_hits3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_hits3, align 4
  %add4 = add i32 %4, %shl
  store i32 %add4, ptr %cache_hits3, align 4
  %cache_hits5 = getelementptr i8, ptr %t, i32 716
  %5 = ptrtoint ptr %cache_hits5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cache_hits5, align 4
  %add6 = add i32 %6, %shl
  store i32 %add6, ptr %cache_hits5, align 4
  %cache_hits7 = getelementptr i8, ptr %t, i32 212
  %7 = ptrtoint ptr %cache_hits7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cache_hits7, align 4
  %add8 = add i32 %8, %shl
  store i32 %add8, ptr %cache_hits7, align 4
  %cache_misses = getelementptr i8, ptr %t, i32 56
  %call.i.i177 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_misses, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %cache_misses, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cache_misses) #7, !srcloc !57
  %asmresult.i.i178 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl13 = shl i32 %asmresult.i.i178, 16
  %cache_misses15 = getelementptr i8, ptr %t, i32 384
  %10 = ptrtoint ptr %cache_misses15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_misses15, align 4
  %add16 = add i32 %11, %shl13
  store i32 %add16, ptr %cache_misses15, align 4
  %cache_misses18 = getelementptr i8, ptr %t, i32 552
  %12 = ptrtoint ptr %cache_misses18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_misses18, align 4
  %add19 = add i32 %13, %shl13
  store i32 %add19, ptr %cache_misses18, align 4
  %cache_misses21 = getelementptr i8, ptr %t, i32 720
  %14 = ptrtoint ptr %cache_misses21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cache_misses21, align 4
  %add22 = add i32 %15, %shl13
  store i32 %add22, ptr %cache_misses21, align 4
  %cache_misses24 = getelementptr i8, ptr %t, i32 216
  %16 = ptrtoint ptr %cache_misses24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cache_misses24, align 4
  %add25 = add i32 %17, %shl13
  store i32 %add25, ptr %cache_misses24, align 4
  %cache_bypass_hits = getelementptr i8, ptr %t, i32 60
  %call.i.i179 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_bypass_hits, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %cache_bypass_hits, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cache_bypass_hits) #7, !srcloc !57
  %asmresult.i.i180 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl32 = shl i32 %asmresult.i.i180, 16
  %cache_bypass_hits34 = getelementptr i8, ptr %t, i32 388
  %19 = ptrtoint ptr %cache_bypass_hits34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cache_bypass_hits34, align 4
  %add35 = add i32 %20, %shl32
  store i32 %add35, ptr %cache_bypass_hits34, align 4
  %cache_bypass_hits37 = getelementptr i8, ptr %t, i32 556
  %21 = ptrtoint ptr %cache_bypass_hits37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cache_bypass_hits37, align 4
  %add38 = add i32 %22, %shl32
  store i32 %add38, ptr %cache_bypass_hits37, align 4
  %cache_bypass_hits40 = getelementptr i8, ptr %t, i32 724
  %23 = ptrtoint ptr %cache_bypass_hits40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cache_bypass_hits40, align 4
  %add41 = add i32 %24, %shl32
  store i32 %add41, ptr %cache_bypass_hits40, align 4
  %cache_bypass_hits43 = getelementptr i8, ptr %t, i32 220
  %25 = ptrtoint ptr %cache_bypass_hits43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache_bypass_hits43, align 4
  %add44 = add i32 %26, %shl32
  store i32 %add44, ptr %cache_bypass_hits43, align 4
  %cache_bypass_misses = getelementptr i8, ptr %t, i32 64
  %call.i.i181 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_bypass_misses, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %cache_bypass_misses, i32 1, i32 3, i32 1) #7
  %27 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cache_bypass_misses) #7, !srcloc !57
  %asmresult.i.i182 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl51 = shl i32 %asmresult.i.i182, 16
  %cache_bypass_misses53 = getelementptr i8, ptr %t, i32 392
  %28 = ptrtoint ptr %cache_bypass_misses53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cache_bypass_misses53, align 4
  %add54 = add i32 %29, %shl51
  store i32 %add54, ptr %cache_bypass_misses53, align 4
  %cache_bypass_misses56 = getelementptr i8, ptr %t, i32 560
  %30 = ptrtoint ptr %cache_bypass_misses56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cache_bypass_misses56, align 4
  %add57 = add i32 %31, %shl51
  store i32 %add57, ptr %cache_bypass_misses56, align 4
  %cache_bypass_misses59 = getelementptr i8, ptr %t, i32 728
  %32 = ptrtoint ptr %cache_bypass_misses59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cache_bypass_misses59, align 4
  %add60 = add i32 %33, %shl51
  store i32 %add60, ptr %cache_bypass_misses59, align 4
  %cache_bypass_misses62 = getelementptr i8, ptr %t, i32 224
  %34 = ptrtoint ptr %cache_bypass_misses62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cache_bypass_misses62, align 4
  %add63 = add i32 %35, %shl51
  store i32 %add63, ptr %cache_bypass_misses62, align 4
  %cache_miss_collisions = getelementptr i8, ptr %t, i32 68
  %call.i.i183 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_miss_collisions, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %cache_miss_collisions, i32 1, i32 3, i32 1) #7
  %36 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cache_miss_collisions) #7, !srcloc !57
  %asmresult.i.i184 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl70 = shl i32 %asmresult.i.i184, 16
  %cache_miss_collisions72 = getelementptr i8, ptr %t, i32 400
  %37 = ptrtoint ptr %cache_miss_collisions72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cache_miss_collisions72, align 4
  %add73 = add i32 %38, %shl70
  store i32 %add73, ptr %cache_miss_collisions72, align 4
  %cache_miss_collisions75 = getelementptr i8, ptr %t, i32 568
  %39 = ptrtoint ptr %cache_miss_collisions75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cache_miss_collisions75, align 4
  %add76 = add i32 %40, %shl70
  store i32 %add76, ptr %cache_miss_collisions75, align 4
  %cache_miss_collisions78 = getelementptr i8, ptr %t, i32 736
  %41 = ptrtoint ptr %cache_miss_collisions78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cache_miss_collisions78, align 4
  %add79 = add i32 %42, %shl70
  store i32 %add79, ptr %cache_miss_collisions78, align 4
  %cache_miss_collisions81 = getelementptr i8, ptr %t, i32 232
  %43 = ptrtoint ptr %cache_miss_collisions81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cache_miss_collisions81, align 4
  %add82 = add i32 %44, %shl70
  store i32 %add82, ptr %cache_miss_collisions81, align 4
  %sectors_bypassed = getelementptr i8, ptr %t, i32 72
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sectors_bypassed, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %sectors_bypassed, i32 1, i32 3, i32 1) #7
  %45 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sectors_bypassed) #7, !srcloc !57
  %asmresult.i.i186 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %shl89 = shl i32 %asmresult.i.i186, 16
  %sectors_bypassed91 = getelementptr i8, ptr %t, i32 404
  %46 = ptrtoint ptr %sectors_bypassed91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sectors_bypassed91, align 4
  %add92 = add i32 %47, %shl89
  store i32 %add92, ptr %sectors_bypassed91, align 4
  %sectors_bypassed94 = getelementptr i8, ptr %t, i32 572
  %48 = ptrtoint ptr %sectors_bypassed94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sectors_bypassed94, align 4
  %add95 = add i32 %49, %shl89
  store i32 %add95, ptr %sectors_bypassed94, align 4
  %sectors_bypassed97 = getelementptr i8, ptr %t, i32 740
  %50 = ptrtoint ptr %sectors_bypassed97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sectors_bypassed97, align 4
  %add98 = add i32 %51, %shl89
  store i32 %add98, ptr %sectors_bypassed97, align 4
  %sectors_bypassed100 = getelementptr i8, ptr %t, i32 236
  %52 = ptrtoint ptr %sectors_bypassed100 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sectors_bypassed100, align 4
  %add101 = add i32 %53, %shl89
  store i32 %add101, ptr %sectors_bypassed100, align 4
  %rescale.i = getelementptr i8, ptr %t, i32 240
  %54 = ptrtoint ptr %rescale.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rescale.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %rescale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.scale_stats.exit_crit_edge

entry.scale_stats.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_stats.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %rescale.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %rescale.i, align 4
  %57 = ptrtoint ptr %cache_hits7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cache_hits7, align 4
  %mul.i.i = mul i32 %58, 31
  %div5.i.i = lshr i32 %mul.i.i, 5
  store i32 %div5.i.i, ptr %cache_hits7, align 4
  %59 = ptrtoint ptr %cache_misses24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cache_misses24, align 4
  %mul.i9.i = mul i32 %60, 31
  %div5.i10.i = lshr i32 %mul.i9.i, 5
  store i32 %div5.i10.i, ptr %cache_misses24, align 4
  %61 = ptrtoint ptr %cache_bypass_hits43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cache_bypass_hits43, align 4
  %mul.i11.i = mul i32 %62, 31
  %div5.i12.i = lshr i32 %mul.i11.i, 5
  store i32 %div5.i12.i, ptr %cache_bypass_hits43, align 4
  %63 = ptrtoint ptr %cache_bypass_misses62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cache_bypass_misses62, align 4
  %mul.i13.i = mul i32 %64, 31
  %div5.i14.i = lshr i32 %mul.i13.i, 5
  store i32 %div5.i14.i, ptr %cache_bypass_misses62, align 4
  %65 = ptrtoint ptr %cache_miss_collisions81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cache_miss_collisions81, align 4
  %mul.i15.i = mul i32 %66, 31
  %div5.i16.i = lshr i32 %mul.i15.i, 5
  store i32 %div5.i16.i, ptr %cache_miss_collisions81, align 4
  %67 = ptrtoint ptr %sectors_bypassed100 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sectors_bypassed100, align 4
  %mul.i17.i = mul i32 %68, 31
  %div5.i18.i = lshr i32 %mul.i17.i, 5
  store i32 %div5.i18.i, ptr %sectors_bypassed100, align 4
  br label %scale_stats.exit

scale_stats.exit:                                 ; preds = %if.then.i, %entry.scale_stats.exit_crit_edge
  %rescale.i188 = getelementptr i8, ptr %t, i32 744
  %69 = ptrtoint ptr %rescale.i188 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rescale.i188, align 4
  %inc.i189 = add i32 %70, 1
  store i32 %inc.i189, ptr %rescale.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %inc.i189)
  %cmp.i190 = icmp eq i32 %inc.i189, 288
  br i1 %cmp.i190, label %if.then.i209, label %scale_stats.exit.scale_stats.exit210_crit_edge

scale_stats.exit.scale_stats.exit210_crit_edge:   ; preds = %scale_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_stats.exit210

if.then.i209:                                     ; preds = %scale_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %rescale.i188 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %rescale.i188, align 4
  %72 = ptrtoint ptr %cache_hits5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cache_hits5, align 4
  %mul.i.i192 = mul i32 %73, 31
  %div5.i.i193 = lshr i32 %mul.i.i192, 5
  store i32 %div5.i.i193, ptr %cache_hits5, align 4
  %74 = ptrtoint ptr %cache_misses21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cache_misses21, align 4
  %mul.i9.i195 = mul i32 %75, 31
  %div5.i10.i196 = lshr i32 %mul.i9.i195, 5
  store i32 %div5.i10.i196, ptr %cache_misses21, align 4
  %76 = ptrtoint ptr %cache_bypass_hits40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cache_bypass_hits40, align 4
  %mul.i11.i198 = mul i32 %77, 31
  %div5.i12.i199 = lshr i32 %mul.i11.i198, 5
  store i32 %div5.i12.i199, ptr %cache_bypass_hits40, align 4
  %78 = ptrtoint ptr %cache_bypass_misses59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cache_bypass_misses59, align 4
  %mul.i13.i201 = mul i32 %79, 31
  %div5.i14.i202 = lshr i32 %mul.i13.i201, 5
  store i32 %div5.i14.i202, ptr %cache_bypass_misses59, align 4
  %80 = ptrtoint ptr %cache_miss_collisions78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cache_miss_collisions78, align 4
  %mul.i15.i204 = mul i32 %81, 31
  %div5.i16.i205 = lshr i32 %mul.i15.i204, 5
  store i32 %div5.i16.i205, ptr %cache_miss_collisions78, align 4
  %82 = ptrtoint ptr %sectors_bypassed97 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sectors_bypassed97, align 4
  %mul.i17.i207 = mul i32 %83, 31
  %div5.i18.i208 = lshr i32 %mul.i17.i207, 5
  store i32 %div5.i18.i208, ptr %sectors_bypassed97, align 4
  br label %scale_stats.exit210

scale_stats.exit210:                              ; preds = %if.then.i209, %scale_stats.exit.scale_stats.exit210_crit_edge
  %rescale.i211 = getelementptr i8, ptr %t, i32 576
  %84 = ptrtoint ptr %rescale.i211 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rescale.i211, align 4
  %inc.i212 = add i32 %85, 1
  store i32 %inc.i212, ptr %rescale.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %inc.i212)
  %cmp.i213 = icmp eq i32 %inc.i212, 12
  br i1 %cmp.i213, label %if.then.i232, label %scale_stats.exit210.scale_stats.exit233_crit_edge

scale_stats.exit210.scale_stats.exit233_crit_edge: ; preds = %scale_stats.exit210
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_stats.exit233

if.then.i232:                                     ; preds = %scale_stats.exit210
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %rescale.i211 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %rescale.i211, align 4
  %87 = ptrtoint ptr %cache_hits3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cache_hits3, align 4
  %mul.i.i215 = mul i32 %88, 31
  %div5.i.i216 = lshr i32 %mul.i.i215, 5
  store i32 %div5.i.i216, ptr %cache_hits3, align 4
  %89 = ptrtoint ptr %cache_misses18 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cache_misses18, align 4
  %mul.i9.i218 = mul i32 %90, 31
  %div5.i10.i219 = lshr i32 %mul.i9.i218, 5
  store i32 %div5.i10.i219, ptr %cache_misses18, align 4
  %91 = ptrtoint ptr %cache_bypass_hits37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cache_bypass_hits37, align 4
  %mul.i11.i221 = mul i32 %92, 31
  %div5.i12.i222 = lshr i32 %mul.i11.i221, 5
  store i32 %div5.i12.i222, ptr %cache_bypass_hits37, align 4
  %93 = ptrtoint ptr %cache_bypass_misses56 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cache_bypass_misses56, align 4
  %mul.i13.i224 = mul i32 %94, 31
  %div5.i14.i225 = lshr i32 %mul.i13.i224, 5
  store i32 %div5.i14.i225, ptr %cache_bypass_misses56, align 4
  %95 = ptrtoint ptr %cache_miss_collisions75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cache_miss_collisions75, align 4
  %mul.i15.i227 = mul i32 %96, 31
  %div5.i16.i228 = lshr i32 %mul.i15.i227, 5
  store i32 %div5.i16.i228, ptr %cache_miss_collisions75, align 4
  %97 = ptrtoint ptr %sectors_bypassed94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sectors_bypassed94, align 4
  %mul.i17.i230 = mul i32 %98, 31
  %div5.i18.i231 = lshr i32 %mul.i17.i230, 5
  store i32 %div5.i18.i231, ptr %sectors_bypassed94, align 4
  br label %scale_stats.exit233

scale_stats.exit233:                              ; preds = %if.then.i232, %scale_stats.exit210.scale_stats.exit233_crit_edge
  %rescale.i234 = getelementptr i8, ptr %t, i32 408
  %99 = ptrtoint ptr %rescale.i234 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rescale.i234, align 4
  %inc.i235 = add i32 %100, 1
  store i32 %inc.i235, ptr %rescale.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i236 = icmp eq i32 %100, 0
  br i1 %cmp.i236, label %if.then.i255, label %scale_stats.exit233.scale_stats.exit256_crit_edge

scale_stats.exit233.scale_stats.exit256_crit_edge: ; preds = %scale_stats.exit233
  call void @__sanitizer_cov_trace_pc() #9
  br label %scale_stats.exit256

if.then.i255:                                     ; preds = %scale_stats.exit233
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %rescale.i234 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %rescale.i234, align 4
  %102 = ptrtoint ptr %cache_hits2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cache_hits2, align 4
  %mul.i.i238 = mul i32 %103, 31
  %div5.i.i239 = lshr i32 %mul.i.i238, 5
  store i32 %div5.i.i239, ptr %cache_hits2, align 4
  %104 = ptrtoint ptr %cache_misses15 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cache_misses15, align 4
  %mul.i9.i241 = mul i32 %105, 31
  %div5.i10.i242 = lshr i32 %mul.i9.i241, 5
  store i32 %div5.i10.i242, ptr %cache_misses15, align 4
  %106 = ptrtoint ptr %cache_bypass_hits34 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cache_bypass_hits34, align 4
  %mul.i11.i244 = mul i32 %107, 31
  %div5.i12.i245 = lshr i32 %mul.i11.i244, 5
  store i32 %div5.i12.i245, ptr %cache_bypass_hits34, align 4
  %108 = ptrtoint ptr %cache_bypass_misses53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cache_bypass_misses53, align 4
  %mul.i13.i247 = mul i32 %109, 31
  %div5.i14.i248 = lshr i32 %mul.i13.i247, 5
  store i32 %div5.i14.i248, ptr %cache_bypass_misses53, align 4
  %110 = ptrtoint ptr %cache_miss_collisions72 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cache_miss_collisions72, align 4
  %mul.i15.i250 = mul i32 %111, 31
  %div5.i16.i251 = lshr i32 %mul.i15.i250, 5
  store i32 %div5.i16.i251, ptr %cache_miss_collisions72, align 4
  %112 = ptrtoint ptr %sectors_bypassed91 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sectors_bypassed91, align 4
  %mul.i17.i253 = mul i32 %113, 31
  %div5.i18.i254 = lshr i32 %mul.i17.i253, 5
  store i32 %div5.i18.i254, ptr %sectors_bypassed91, align 4
  br label %scale_stats.exit256

scale_stats.exit256:                              ; preds = %if.then.i255, %scale_stats.exit233.scale_stats.exit256_crit_edge
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %114 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %expires, align 4
  %add108 = add i32 %115, 1363
  store i32 %add108, ptr %expires, align 4
  %closing = getelementptr i8, ptr %t, i32 48
  %call.i.i187 = tail call zeroext i1 @__kasan_check_read(ptr noundef %closing, i32 noundef 4) #7
  %116 = ptrtoint ptr %closing to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not = icmp eq i32 %117, 0
  br i1 %tobool.not, label %if.then, label %do.body111

if.then:                                          ; preds = %scale_stats.exit256
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @add_timer(ptr noundef %t) #7
  br label %if.end

do.body111:                                       ; preds = %scale_stats.exit256
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %t, i32 -72
  tail call fastcc void @closure_set_ip(ptr noundef %add.ptr) #7
  %fn1.i = getelementptr i8, ptr %t, i32 -60
  %118 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %fn1.i, align 4
  %119 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @closure_sub(ptr noundef %add.ptr, i32 noundef 1073741825) #7
  br label %if.end

if.end:                                           ; preds = %do.body111, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bch_stats_release(ptr nocapture noundef %k) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_stats_show(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @sysfs_cache_hits
  br i1 %cmp, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cache_hits = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %cache_hits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_hits, align 4
  %shr = lshr i32 %1, 16
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %shr) #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %cmp2 = icmp eq ptr %attr, @sysfs_cache_misses
  br i1 %cmp2, label %if.then3, label %do.body9

if.then3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %cache_misses = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %cache_misses to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_misses, align 4
  %shr4 = lshr i32 %3, 16
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %shr4) #7
  br label %cleanup

do.body9:                                         ; preds = %do.body1
  %cmp10 = icmp eq ptr %attr, @sysfs_cache_bypass_hits
  br i1 %cmp10, label %if.then11, label %do.body17

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %cache_bypass_hits = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 3
  %4 = ptrtoint ptr %cache_bypass_hits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_bypass_hits, align 4
  %shr12 = lshr i32 %5, 16
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %shr12) #7
  br label %cleanup

do.body17:                                        ; preds = %do.body9
  %cmp18 = icmp eq ptr %attr, @sysfs_cache_bypass_misses
  br i1 %cmp18, label %if.then19, label %do.body25

if.then19:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %cache_bypass_misses = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 4
  %6 = ptrtoint ptr %cache_bypass_misses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_bypass_misses, align 4
  %shr20 = lshr i32 %7, 16
  %call21 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %shr20) #7
  br label %cleanup

do.body25:                                        ; preds = %do.body17
  %cmp26 = icmp eq ptr %attr, @sysfs_cache_hit_ratio
  br i1 %cmp26, label %if.then27, label %do.body39

if.then27:                                        ; preds = %do.body25
  %cache_hits28 = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 1
  %8 = ptrtoint ptr %cache_hits28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_hits28, align 4
  %shr29 = lshr i32 %9, 16
  %cache_misses32 = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 2
  %10 = ptrtoint ptr %cache_misses32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_misses32, align 4
  %shr33 = lshr i32 %11, 16
  %add = add nuw nsw i32 %shr33, %shr29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %if.then27.cond.end_crit_edge, label %cond.true

if.then27.cond.end_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nuw nsw i32 %shr29, 100
  %div = udiv i32 %mul, %add
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then27.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %if.then27.cond.end_crit_edge ]
  %call35 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %cond) #7
  br label %cleanup

do.body39:                                        ; preds = %do.body25
  %cmp40 = icmp eq ptr %attr, @sysfs_cache_miss_collisions
  br i1 %cmp40, label %if.then41, label %do.body47

if.then41:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %cache_miss_collisions = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 6
  %12 = ptrtoint ptr %cache_miss_collisions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_miss_collisions, align 4
  %shr42 = lshr i32 %13, 16
  %call43 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %shr42) #7
  br label %cleanup

do.body47:                                        ; preds = %do.body39
  %cmp48 = icmp eq ptr %attr, @sysfs_bypassed
  br i1 %cmp48, label %if.then49, label %do.body47.cleanup_crit_edge

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %sectors_bypassed = getelementptr inbounds %struct.cache_stats, ptr %kobj, i32 0, i32 7
  %14 = ptrtoint ptr %sectors_bypassed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectors_bypassed, align 4
  %16 = lshr i32 %15, 7
  %shl = and i32 %16, 33553920
  %conv = zext i32 %shl to i64
  %call51 = tail call i32 @bch_hprint(ptr noundef %buf, i64 noundef %conv) #7
  %strlen = tail call i32 @strlen(ptr noundef %buf) #10
  %endptr = getelementptr i8, ptr %buf, i32 %strlen
  %17 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %endptr, align 1
  %add53 = add i32 %call51, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body47.cleanup_crit_edge, %if.then41, %cond.end, %if.then19, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then3 ], [ %call13, %if.then11 ], [ %call21, %if.then19 ], [ %call35, %cond.end ], [ %call43, %if.then41 ], [ %add53, %if.then49 ], [ 0, %do.body47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bch_stats_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %size
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_hprint(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/stats.c", i32 97, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/stats.c", i32 99, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/bcache/stats.c", i32 101, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/stats.c", i32 103, i32 6}
!8 = !{ptr @bch_cache_accounting_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/md/bcache/stats.c", i32 230, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bch_stats_ktype, !12, !"bch_stats_ktype", i1 false, i1 false}
!12 = !{!"../drivers/md/bcache/stats.c", i32 91, i32 8}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/md/bcache/stats.c", i32 57, i32 2}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/bcache/stats.c", i32 67, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/bcache/stats.c", i32 44, i32 1}
!19 = !{ptr @sysfs_cache_hits, !18, !"sysfs_cache_hits", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/bcache/stats.c", i32 45, i32 1}
!22 = !{ptr @sysfs_cache_misses, !21, !"sysfs_cache_misses", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/bcache/stats.c", i32 46, i32 1}
!25 = !{ptr @sysfs_cache_bypass_hits, !24, !"sysfs_cache_bypass_hits", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/stats.c", i32 47, i32 1}
!28 = !{ptr @sysfs_cache_bypass_misses, !27, !"sysfs_cache_bypass_misses", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/bcache/stats.c", i32 48, i32 1}
!31 = !{ptr @sysfs_cache_hit_ratio, !30, !"sysfs_cache_hit_ratio", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/bcache/stats.c", i32 49, i32 1}
!34 = !{ptr @sysfs_cache_miss_collisions, !33, !"sysfs_cache_miss_collisions", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/bcache/stats.c", i32 50, i32 1}
!37 = !{ptr @sysfs_bypassed, !36, !"sysfs_bypassed", i1 false, i1 false}
!38 = !{ptr @bch_stats_files, !39, !"bch_stats_files", i1 false, i1 false}
!39 = !{!"../drivers/md/bcache/stats.c", i32 81, i32 26}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2154377730}
!50 = !{i64 2148581573, i64 2148581599, i64 2148581628, i64 2148581662, i64 2148581693, i64 2148581716}
!51 = !{i64 2148667008}
!52 = !{i64 2148582293, i64 2148582325, i64 2148582354, i64 2148582388, i64 2148582419, i64 2148582442}
!53 = !{i64 2148667237}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2154386875, i64 2154387367, i64 2154386912, i64 2154386968, i64 2154387002, i64 2154387026, i64 2154387067, i64 2154387088, i64 2154387116, i64 2154387150}
!56 = !{i64 2148841473}
!57 = !{i64 1088341, i64 1088358, i64 1088382, i64 1088408, i64 1088426}
!58 = !{i64 2148841843}
