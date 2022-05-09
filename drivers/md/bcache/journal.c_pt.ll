; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/journal.c_pt.bc'
source_filename = "../drivers/md/bcache/journal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.86 }
%union.anon.86 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.journal_replay = type { %struct.list_head, ptr, %struct.jset }
%struct.jset = type { i64, i64, i64, i32, i32, i64, %union.anon.99, %union.anon.100, i16, [3 x i16], [8 x i64], %union.anon.101 }
%union.anon.99 = type { [8 x i64] }
%union.anon.100 = type { [8 x i64] }
%union.anon.101 = type { [0 x %struct.bkey] }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.keylist = type { %union.anon.103, %union.anon.104, [16 x i64] }
%union.anon.103 = type { ptr }
%union.anon.104 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.btree_write = type { ptr, i32 }
%struct.btree = type { %struct.hlist_node, %union.anon.90, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.90 = type { [8 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.llist_node = type { ptr }

@bch_journal_read.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bch_journal_read\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/md/bcache/journal.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%u journal buckets\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcache: %s() %u journal buckets\0A\00", [63 x i8] zeroinitializer }, align 32
@bch_journal_read.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"falling back to linear search\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bcache: %s() falling back to linear search\0A\00", [52 x i8] zeroinitializer }, align 32
@bch_journal_read.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"starting binary search, l %u r %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bcache: %s() starting binary search, l %u r %u\0A\00", [48 x i8] zeroinitializer }, align 32
@bch_journal_read.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"finishing up: m %u njournal_buckets %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bcache: %s() finishing up: m %u njournal_buckets %u\0A\00", [43 x i8] zeroinitializer }, align 32
@bch_journal_replay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016bcache: %s() journal entries %llu-%llu may be discarded! (replaying %llu-%llu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bch_journal_replay\00", [45 x i8] zeroinitializer }, align 32
@bch_journal_replay._entry_ptr = internal global ptr @bch_journal_replay._entry, section ".printk_index", align 4
@bch_journal_replay._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013bcache: %s() journal entries %llu-%llu missing! (replaying %llu-%llu)\0A\00", [55 x i8] zeroinitializer }, align 32
@bch_journal_replay._entry_ptr.15 = internal global ptr @bch_journal_replay._entry.13, section ".printk_index", align 4
@bch_journal_replay._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016bcache: %s() journal replay done, %i keys in %i entries, seq %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@bch_journal_replay._entry_ptr.18 = internal global ptr @bch_journal_replay._entry.16, section ".printk_index", align 4
@bch_journal_next.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bch_journal_next\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"journal_pin full (%zu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bcache: %s() journal_pin full (%zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@bch_flush_wq = external dso_local local_unnamed_addr global ptr, align 4
@bch_journal_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&j->lock\00", [23 x i8] zeroinitializer }, align 32
@bch_journal_alloc.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&j->flush_write_lock\00", [43 x i8] zeroinitializer }, align 32
@bch_journal_alloc.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&(&j->work)->work)\00", [59 x i8] zeroinitializer }, align 32
@bch_journal_alloc.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&j->work)->timer\00", [45 x i8] zeroinitializer }, align 32
@journal_read_bucket.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"journal_read_bucket\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reading %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcache: %s() reading %u\0A\00", [39 x i8] zeroinitializer }, align 32
@journal_read_bucket.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%u: bad magic\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcache: %s() %u: bad magic\0A\00", [36 x i8] zeroinitializer }, align 32
@journal_read_bucket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016bcache: %s() %u: too big, %zu bytes, offset %u\0A\00", [46 x i8] zeroinitializer }, align 32
@journal_read_bucket._entry_ptr = internal global ptr @journal_read_bucket._entry, section ".printk_index", align 4
@journal_read_bucket._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016bcache: %s() %u: bad csum, %zu bytes, offset %u\0A\00", [45 x i8] zeroinitializer }, align 32
@journal_read_bucket._entry_ptr.37 = internal global ptr @journal_read_bucket._entry.35, section ".printk_index", align 4
@__tracepoint_bcache_journal_replay_key = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bcache.h\00", [34 x i8] zeroinitializer }, align 32
@trace_bcache_journal_replay_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_journal_entry_full = external dso_local global %struct.tracepoint, align 4
@trace_bcache_journal_entry_full.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_bcache_journal_full = external dso_local global %struct.tracepoint, align 4
@trace_bcache_journal_full.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_journal_discard.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ja->discard_work)\00", [59 x i8] zeroinitializer }, align 32
@bch_journal_wq = external dso_local local_unnamed_addr global ptr, align 4
@btree_flush_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013bcache: %s() BUG: flush_write bit should not be set here!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btree_flush_write\00", [46 x i8] zeroinitializer }, align 32
@btree_flush_write._entry_ptr = internal global ptr @btree_flush_write._entry, section ".printk_index", align 4
@btree_flush_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bcache: %s() BUG: btree_nodes[%d] is NULL\0A\00", [51 x i8] zeroinitializer }, align 32
@btree_flush_write._entry_ptr.46 = internal global ptr @btree_flush_write._entry.44, section ".printk_index", align 4
@btree_flush_write._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013bcache: %s() BUG: bnode %p: journal_flush bit cleaned\0A\00", [39 x i8] zeroinitializer }, align 32
@btree_flush_write._entry_ptr.49 = internal global ptr @btree_flush_write._entry.47, section ".printk_index", align 4
@btree_flush_write.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.50, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnode %p: written by others\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bcache: %s() bnode %p: written by others\0A\00", [54 x i8] zeroinitializer }, align 32
@btree_flush_write.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.52, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bnode %p: dirty bit cleaned by others\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bcache: %s() bnode %p: dirty bit cleaned by others\0A\00", [44 x i8] zeroinitializer }, align 32
@closure_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cl->work)\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"journal io error\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_journal_write = external dso_local global %struct.tracepoint, align 4
@trace_bcache_journal_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 190, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 215, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 230, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 250, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 365, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 368, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 398, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 697, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 969, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 970, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 971, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 50, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 81, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 87, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 96, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 209, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 108, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 623, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 476, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 529, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 535, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 543, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 550, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [31 x i8] c"../drivers/md/bcache/closure.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 247, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [31 x i8] c"../drivers/md/bcache/journal.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 704, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @bch_journal_replay._entry, ptr @bch_journal_replay._entry.13, ptr @bch_journal_replay._entry.16, ptr @bch_journal_replay._entry_ptr, ptr @bch_journal_replay._entry_ptr.15, ptr @bch_journal_replay._entry_ptr.18, ptr @btree_flush_write._entry, ptr @btree_flush_write._entry.44, ptr @btree_flush_write._entry.47, ptr @btree_flush_write._entry_ptr, ptr @btree_flush_write._entry_ptr.46, ptr @btree_flush_write._entry_ptr.49, ptr @journal_read_bucket._entry, ptr @journal_read_bucket._entry.35, ptr @journal_read_bucket._entry_ptr, ptr @journal_read_bucket._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @bch_journal_alloc.__key, ptr @.str.22, ptr @bch_journal_alloc.__key.23, ptr @.str.24, ptr @bch_journal_alloc.__key.25, ptr @.str.26, ptr @bch_journal_alloc.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @do_journal_discard.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @closure_queue.__key, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_replay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_replay._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_replay._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_alloc.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_alloc.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_journal_alloc.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_read_bucket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_read_bucket._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_journal_discard.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btree_flush_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btree_flush_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btree_flush_write._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @closure_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_journal_read(ptr nocapture noundef %c, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %bitmap = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %journal = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bitmap) #11
  %2 = call ptr @memset(ptr %bitmap, i32 0, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_journal_read.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_journal_read, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_journal_read.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp343.not = icmp eq i16 %8, 0
  br i1 %cmp343.not, label %do.end.do.body23_crit_edge, label %for.body.preheader

do.end.do.body23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

for.body.preheader:                               ; preds = %do.end
  %conv4342 = zext i16 %8 to i32
  br label %for.body

for.cond:                                         ; preds = %if.end18
  %inc = add nuw nsw i32 %i.0344, 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %6, align 2
  %conv4 = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv4
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body23_crit_edge

for.cond.do.body23_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %conv4345 = phi i32 [ %conv4, %for.cond.for.body_crit_edge ], [ %conv4342, %for.body.preheader ]
  %i.0344 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul i32 %i.0344, -1640531527
  %rem = urem i32 %mul, %conv4345
  %div3.i = lshr i32 %rem, 5
  %arrayidx.i = getelementptr i32, ptr %bitmap, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.do.body23_crit_edge

for.body.do.body23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

if.end12:                                         ; preds = %for.body
  %call13 = tail call fastcc i32 @journal_read_bucket(ptr noundef %1, ptr noundef %list, i32 noundef %rem)
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %16, %13
  store i32 %or.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp15 = icmp slt i32 %call13, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool20.not = icmp eq i32 %call13, 0
  br i1 %tobool20.not, label %for.cond, label %if.end18.do.body71_crit_edge

if.end18.do.body71_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

do.body23:                                        ; preds = %for.body.do.body23_crit_edge, %for.cond.do.body23_crit_edge, %do.end.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_journal_read.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_journal_read, %if.then35)) #11
          to label %do.end38 [label %if.then35], !srcloc !121

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_journal_read.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %6, align 2
  %conv41 = zext i16 %18 to i32
  %call42 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %bitmap, i32 noundef %conv41, i32 noundef 0) #11
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %conv45348 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call42, i32 %conv45348)
  %cmp46349 = icmp ult i32 %call42, %conv45348
  br i1 %cmp46349, label %do.end38.for.body48_crit_edge, label %do.end38.for.end64_crit_edge

do.end38.for.end64_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

do.end38.for.body48_crit_edge:                    ; preds = %do.end38
  br label %for.body48

for.body48:                                       ; preds = %for.inc59.for.body48_crit_edge, %do.end38.for.body48_crit_edge
  %l.0350 = phi i32 [ %call63, %for.inc59.for.body48_crit_edge ], [ %call42, %do.end38.for.body48_crit_edge ]
  %call49 = call fastcc i32 @journal_read_bucket(ptr noundef %1, ptr noundef %list, i32 noundef %l.0350)
  %rem.i296 = and i32 %l.0350, 31
  %shl.i297 = shl nuw i32 1, %rem.i296
  %div2.i298 = lshr i32 %l.0350, 5
  %add.ptr.i299 = getelementptr i32, ptr %bitmap, i32 %div2.i298
  %21 = ptrtoint ptr %add.ptr.i299 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i299, align 4
  %or.i300 = or i32 %22, %shl.i297
  store i32 %or.i300, ptr %add.ptr.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp slt i32 %call49, 0
  br i1 %cmp51, label %for.body48.cleanup_crit_edge, label %if.end54

for.body48.cleanup_crit_edge:                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %for.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool56.not = icmp eq i32 %call49, 0
  br i1 %tobool56.not, label %for.inc59, label %if.end54.do.body71_crit_edge

if.end54.do.body71_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

for.inc59:                                        ; preds = %if.end54
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %6, align 2
  %conv62 = zext i16 %24 to i32
  %add = add nuw i32 %l.0350, 1
  %call63 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %bitmap, i32 noundef %conv62, i32 noundef %add) #11
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %6, align 2
  %conv45 = zext i16 %26 to i32
  %cmp46 = icmp ult i32 %call63, %conv45
  br i1 %cmp46, label %for.inc59.for.body48_crit_edge, label %for.end64.loopexit

for.inc59.for.body48_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48

for.end64.loopexit:                               ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #13
  %conv45.le = zext i16 %26 to i32
  br label %for.end64

for.end64:                                        ; preds = %for.end64.loopexit, %do.end38.for.end64_crit_edge
  %conv45.le.pre-phi = phi i32 [ %conv45348, %do.end38.for.end64_crit_edge ], [ %conv45.le, %for.end64.loopexit ]
  %l.0.lcssa = phi i32 [ %call42, %do.end38.for.end64_crit_edge ], [ %call63, %for.end64.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %l.0.lcssa, i32 %conv45.le.pre-phi)
  %cmp67 = icmp eq i32 %l.0.lcssa, %conv45.le.pre-phi
  br i1 %cmp67, label %for.end64.out_crit_edge, label %for.end64.do.body71_crit_edge

for.end64.do.body71_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

for.end64.out_crit_edge:                          ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body71:                                        ; preds = %for.end64.do.body71_crit_edge, %if.end54.do.body71_crit_edge, %if.end18.do.body71_crit_edge
  %l.1 = phi i32 [ %l.0.lcssa, %for.end64.do.body71_crit_edge ], [ %l.0350, %if.end54.do.body71_crit_edge ], [ %rem, %if.end18.do.body71_crit_edge ]
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %28, %list
  br i1 %cmp.i.not, label %do.body81, label %do.end89, !prof !122

do.body81:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

do.end89:                                         ; preds = %do.body71
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %6, align 2
  %conv92 = zext i16 %30 to i32
  %add93 = add i32 %l.1, 1
  %call94 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap, i32 noundef %conv92, i32 noundef %add93) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_journal_read.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_journal_read, %if.then107)) #11
          to label %do.end110 [label %if.then107], !srcloc !121

if.then107:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_journal_read.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %l.1, i32 noundef %call94) #11
  br label %do.end110

do.end110:                                        ; preds = %if.then107, %do.end89
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %call94)
  %cmp112354 = icmp ult i32 %add93, %call94
  br i1 %cmp112354, label %while.body.lr.ph, label %do.end110.do.body134_crit_edge

do.end110.do.body134_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body134

while.body.lr.ph:                                 ; preds = %do.end110
  %prev = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end122.while.body_crit_edge, %while.body.lr.ph
  %l.2356 = phi i32 [ %l.1, %while.body.lr.ph ], [ %l.2.shr, %if.end122.while.body_crit_edge ]
  %r.0355 = phi i32 [ %call94, %while.body.lr.ph ], [ %shr.r.0, %if.end122.while.body_crit_edge ]
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %seq115 = getelementptr inbounds %struct.journal_replay, ptr %32, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %seq115 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %seq115, align 8
  %add116 = add i32 %l.2356, %r.0355
  %shr = lshr i32 %add116, 1
  %call117 = call fastcc i32 @journal_read_bucket(ptr noundef %1, ptr noundef %list, i32 noundef %shr)
  %rem.i304 = and i32 %shr, 31
  %shl.i305 = shl nuw i32 1, %rem.i304
  %div2.i306 = lshr i32 %add116, 6
  %add.ptr.i307 = getelementptr i32, ptr %bitmap, i32 %div2.i306
  %35 = ptrtoint ptr %add.ptr.i307 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i307, align 4
  %or.i308 = or i32 %36, %shl.i305
  store i32 %or.i308, ptr %add.ptr.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp119 = icmp slt i32 %call117, 0
  br i1 %cmp119, label %while.body.cleanup_crit_edge, label %if.end122

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end122:                                        ; preds = %while.body
  %37 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev, align 4
  %seq129 = getelementptr inbounds %struct.journal_replay, ptr %38, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %seq129 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %seq129, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %40)
  %cmp130.not = icmp eq i64 %34, %40
  %shr.r.0 = select i1 %cmp130.not, i32 %shr, i32 %r.0355
  %l.2.shr = select i1 %cmp130.not, i32 %l.2356, i32 %shr
  %add111 = add i32 %l.2.shr, 1
  %cmp112 = icmp ult i32 %add111, %shr.r.0
  br i1 %cmp112, label %if.end122.while.body_crit_edge, label %if.end122.do.body134_crit_edge

if.end122.do.body134_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body134

if.end122.while.body_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.body134:                                       ; preds = %if.end122.do.body134_crit_edge, %do.end110.do.body134_crit_edge
  %m.0.lcssa = phi i32 [ %l.1, %do.end110.do.body134_crit_edge ], [ %shr, %if.end122.do.body134_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_journal_read.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_journal_read, %if.then146)) #11
          to label %while.cond152 [label %if.then146], !srcloc !121

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %6, align 2
  %conv148 = zext i16 %42 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_journal_read.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %m.0.lcssa, i32 noundef %conv148) #11
  br label %while.cond152

while.cond152:                                    ; preds = %if.end173.while.cond152_crit_edge, %if.end162.while.cond152_crit_edge, %if.then146, %do.body134
  %l.4 = phi i32 [ %m.0.lcssa, %do.body134 ], [ %m.0.lcssa, %if.then146 ], [ %l.5, %if.end162.while.cond152_crit_edge ], [ %l.5, %if.end173.while.cond152_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.4)
  %tobool154.not = icmp eq i32 %l.4, 0
  br i1 %tobool154.not, label %if.then155, label %while.cond152.if.end158_crit_edge

while.cond152.if.end158_crit_edge:                ; preds = %while.cond152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then155:                                       ; preds = %while.cond152
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %6, align 2
  %conv157 = zext i16 %44 to i32
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %while.cond152.if.end158_crit_edge
  %l.5.in = phi i32 [ %l.4, %while.cond152.if.end158_crit_edge ], [ %conv157, %if.then155 ]
  %l.5 = add i32 %l.5.in, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %l.5, i32 %m.0.lcssa)
  %cmp159 = icmp eq i32 %l.5, %m.0.lcssa
  br i1 %cmp159, label %if.end158.while.end178_crit_edge, label %if.end162

if.end158.while.end178_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end178

if.end162:                                        ; preds = %if.end158
  %div3.i312 = lshr i32 %l.5, 5
  %arrayidx.i313 = getelementptr i32, ptr %bitmap, i32 %div3.i312
  %45 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i313, align 4
  %and.i314 = and i32 %l.5, 31
  %47 = shl nuw i32 1, %and.i314
  %48 = and i32 %46, %47
  %tobool165.not = icmp eq i32 %48, 0
  br i1 %tobool165.not, label %if.end167, label %if.end162.while.cond152_crit_edge

if.end162.while.cond152_crit_edge:                ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond152

if.end167:                                        ; preds = %if.end162
  %call168 = call fastcc i32 @journal_read_bucket(ptr noundef %1, ptr noundef %list, i32 noundef %l.5)
  %49 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i313, align 4
  %or.i321 = or i32 %50, %47
  store i32 %or.i321, ptr %arrayidx.i313, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp170 = icmp slt i32 %call168, 0
  br i1 %cmp170, label %if.end167.cleanup_crit_edge, label %if.end173

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end173:                                        ; preds = %if.end167
  %tobool175.not = icmp eq i32 %call168, 0
  br i1 %tobool175.not, label %if.end173.while.end178_crit_edge, label %if.end173.while.cond152_crit_edge

if.end173.while.cond152_crit_edge:                ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond152

if.end173.while.end178_crit_edge:                 ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end178

while.end178:                                     ; preds = %if.end173.while.end178_crit_edge, %if.end158.while.end178_crit_edge
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp182359.not = icmp eq i16 %52, 0
  br i1 %cmp182359.not, label %while.end178.out_crit_edge, label %for.body184.lr.ph

while.end178.out_crit_edge:                       ; preds = %while.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body184.lr.ph:                                ; preds = %while.end178
  %conv181358 = zext i16 %52 to i32
  %cur_idx = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19, i32 1
  %discard_idx = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19, i32 3
  %last_idx = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 19, i32 2
  br label %for.body184

for.body184:                                      ; preds = %for.inc196.for.body184_crit_edge, %for.body184.lr.ph
  %conv181363 = phi i32 [ %conv181358, %for.body184.lr.ph ], [ %conv181, %for.inc196.for.body184_crit_edge ]
  %i.1361 = phi i32 [ 0, %for.body184.lr.ph ], [ %inc197.pre-phi, %for.inc196.for.body184_crit_edge ]
  %seq.0360 = phi i64 [ 0, %for.body184.lr.ph ], [ %seq.1, %for.inc196.for.body184_crit_edge ]
  %arrayidx = getelementptr [256 x i64], ptr %journal, i32 0, i32 %i.1361
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %seq.0360)
  %cmp186 = icmp ugt i64 %54, %seq.0360
  br i1 %cmp186, label %if.then188, label %for.body184.for.inc196_crit_edge

for.body184.for.inc196_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nuw nsw i32 %i.1361, 1
  br label %for.inc196

if.then188:                                       ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %cur_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %i.1361, ptr %cur_idx, align 8
  %add191 = add nuw nsw i32 %i.1361, 1
  %rem194 = urem i32 %add191, %conv181363
  %56 = ptrtoint ptr %discard_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %rem194, ptr %discard_idx, align 8
  %57 = ptrtoint ptr %last_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %rem194, ptr %last_idx, align 4
  br label %for.inc196

for.inc196:                                       ; preds = %if.then188, %for.body184.for.inc196_crit_edge
  %inc197.pre-phi = phi i32 [ %.pre, %for.body184.for.inc196_crit_edge ], [ %add191, %if.then188 ]
  %seq.1 = phi i64 [ %seq.0360, %for.body184.for.inc196_crit_edge ], [ %54, %if.then188 ]
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %6, align 2
  %conv181 = zext i16 %59 to i32
  %cmp182 = icmp ult i32 %inc197.pre-phi, %conv181
  br i1 %cmp182, label %for.inc196.for.body184_crit_edge, label %for.inc196.out_crit_edge

for.inc196.out_crit_edge:                         ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc196.for.body184_crit_edge:                 ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body184

out:                                              ; preds = %for.inc196.out_crit_edge, %while.end178.out_crit_edge, %for.end64.out_crit_edge
  %60 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %list, align 4
  %cmp.i322.not = icmp eq ptr %61, %list
  br i1 %cmp.i322.not, label %out.cleanup_crit_edge, label %if.then201

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then201:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %prev203 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %62 = ptrtoint ptr %prev203 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev203, align 4
  %seq207 = getelementptr inbounds %struct.journal_replay, ptr %63, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %seq207 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seq207, align 8
  %seq209 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 8
  %66 = ptrtoint ptr %seq209 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %seq209, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then201, %out.cleanup_crit_edge, %if.end167.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.body48.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then201 ], [ 0, %out.cleanup_crit_edge ], [ %call168, %if.end167.cleanup_crit_edge ], [ %call117, %while.body.cleanup_crit_edge ], [ %call49, %for.body48.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bitmap) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @journal_read_bucket(ptr noundef %ca, ptr noundef %list, i32 noundef %bucket_index) unnamed_addr #0 align 64 {
entry:
  %cl = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %journal = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19
  %bio1 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8
  %0 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca, align 8
  %w = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 66, i32 11
  %2 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl) #11
  %arrayidx5 = getelementptr %struct.cache, ptr %ca, i32 0, i32 1, i32 15, i32 %bucket_index
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx5, align 8
  %conv.i = and i64 %5, 4294967295
  %bucket_bits.i = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %bucket_bits.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bucket_bits.i, align 8
  %sh_prom.i = zext i16 %7 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %8 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @journal_read_bucket.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@journal_read_bucket, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @journal_read_bucket.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %bucket_index) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bucket_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %10 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bucket_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp321.not = icmp eq i32 %11, 0
  br i1 %cmp321.not, label %do.end.cleanup174_crit_edge, label %reread.preheader.lr.ph

do.end.cleanup174_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup174

reread.preheader.lr.ph:                           ; preds = %do.end
  %bi_iter = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 8
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %bi_flags.i.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 3
  %bi_bdev.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 1
  %bi_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 8, i32 1
  %bi_end_io = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 10
  %bi_private = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 11
  %bi_opf.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 2
  %bi_status.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 19, i32 8, i32 6
  %12 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 4
  %block_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 1
  %arrayidx146 = getelementptr [256 x i64], ptr %journal, i32 0, i32 %bucket_index
  br label %reread

while.cond.loopexit:                              ; preds = %while.cond19
  %13 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bucket_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.2, i32 %14)
  %cmp = icmp ult i32 %offset.2, %14
  br i1 %cmp, label %while.cond.loopexit.reread.backedge_crit_edge, label %while.cond.loopexit.cleanup174_crit_edge

while.cond.loopexit.cleanup174_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup174

while.cond.loopexit.reread.backedge_crit_edge:    ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %reread.backedge

reread.backedge:                                  ; preds = %if.end56.reread.backedge_crit_edge, %while.cond.loopexit.reread.backedge_crit_edge
  br label %reread

reread:                                           ; preds = %reread.backedge, %reread.preheader.lr.ph
  %ret.1 = phi i32 [ 0, %reread.preheader.lr.ph ], [ %ret.2, %reread.backedge ]
  %offset.1 = phi i32 [ 0, %reread.preheader.lr.ph ], [ %offset.2, %reread.backedge ]
  %retval.1 = phi i32 [ undef, %reread.preheader.lr.ph ], [ %retval.2, %reread.backedge ]
  %15 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bucket_size, align 8
  %sub = sub i32 %16, %offset.1
  %17 = call i32 @llvm.umin.i32(i32 %sub, i32 64)
  call void @bio_reset(ptr noundef %bio1) #11
  %conv16 = zext i32 %offset.1 to i64
  %add = add i64 %shl.i, %conv16
  %18 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add, ptr %bi_iter, align 8
  %19 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev, align 4
  %21 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %22, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %23 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %24, %20
  br i1 %cmp.not.i, label %reread.bio_set_dev.exit_crit_edge, label %if.then.i272

reread.bio_set_dev.exit_crit_edge:                ; preds = %reread
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i272:                                     ; preds = %reread
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %22, -2177
  %25 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i272, %reread.bio_set_dev.exit_crit_edge
  %26 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio1) #11
  %shl = shl nuw nsw i32 %17, 9
  %27 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %bi_size, align 8
  %28 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @journal_read_endio, ptr %bi_end_io, align 8
  %29 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cl, ptr %bi_private, align 4
  %30 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bi_opf.i, align 8
  call void @bch_bio_map(ptr noundef %bio1, ptr noundef %3) #11
  %31 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ca, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  call void @llvm.prefetch.p0(ptr %remaining.i, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i, ptr %remaining.i, i32 1, ptr elementtype(i32) %remaining.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i274 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i274, label %do.body2.i.i, label %closure_get.exit.i, !prof !122

do.body2.i.i:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

closure_get.exit.i:                               ; preds = %bio_set_dev.exit
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %32, i32 0, i32 6
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end.i276, label %if.then.i275, !prof !128

if.then.i275:                                     ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %bio1) #11
  br label %closure_bio_submit.exit

if.end.i276:                                      ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @submit_bio_noacct(ptr noundef %bio1) #11
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i276, %if.then.i275
  %call.i.i.i278 = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %remaining.i, align 4
  %and.i = and i32 %39, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i279 = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i279, label %closure_bio_submit.exit.closure_sync.exit_crit_edge, label %if.then.i280

closure_bio_submit.exit.closure_sync.exit_crit_edge: ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %closure_sync.exit

if.then.i280:                                     ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__closure_sync(ptr noundef nonnull %cl) #11
  br label %closure_sync.exit

closure_sync.exit:                                ; preds = %if.then.i280, %closure_bio_submit.exit.closure_sync.exit_crit_edge
  %shl45 = shl i32 %sub, 9
  br label %while.cond19

while.cond19:                                     ; preds = %cleanup.while.cond19_crit_edge, %closure_sync.exit
  %ret.2 = phi i32 [ %ret.1, %closure_sync.exit ], [ %ret.4, %cleanup.while.cond19_crit_edge ]
  %offset.2 = phi i32 [ %offset.1, %closure_sync.exit ], [ %offset.3, %cleanup.while.cond19_crit_edge ]
  %len.0 = phi i32 [ %17, %closure_sync.exit ], [ %len.1, %cleanup.while.cond19_crit_edge ]
  %j.0 = phi ptr [ %3, %closure_sync.exit ], [ %j.1, %cleanup.while.cond19_crit_edge ]
  %retval.2 = phi i32 [ %retval.1, %closure_sync.exit ], [ %retval.3, %cleanup.while.cond19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool20.not = icmp eq i32 %len.0, 0
  br i1 %tobool20.not, label %while.cond.loopexit, label %while.body21

while.body21:                                     ; preds = %while.cond19
  %keys = getelementptr inbounds %struct.jset, ptr %j.0, i32 0, i32 4
  %40 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %keys, align 4
  %mul = shl i32 %41, 3
  %add22 = add i32 %mul, 240
  %magic = getelementptr %struct.jset, ptr %j.0, i32 0, i32 1
  %42 = ptrtoint ptr %magic to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %magic, align 8
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %12, align 8
  %xor.i = xor i64 %45, 2617213439241769010
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %xor.i)
  %cmp25.not = icmp eq i64 %43, %xor.i
  br i1 %cmp25.not, label %if.end44, label %do.body28

do.body28:                                        ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @journal_read_bucket.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@journal_read_bucket, %if.then40)) #11
          to label %cleanup [label %if.then40], !srcloc !121

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @journal_read_bucket.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef %bucket_index) #11
  br label %cleanup174

if.end44:                                         ; preds = %while.body21
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %shl45)
  %cmp46 = icmp ugt i32 %add22, %shl45
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add22)
  %cmp48 = icmp ugt i32 %add22, 32768
  %or.cond = or i1 %cmp46, %cmp48
  br i1 %or.cond, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef %bucket_index, i32 noundef %add22, i32 noundef %offset.2) #14
  br label %cleanup174

if.end56:                                         ; preds = %if.end44
  %shl57 = shl i32 %len.0, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %shl57)
  %cmp58 = icmp ugt i32 %add22, %shl57
  br i1 %cmp58, label %if.end56.reread.backedge_crit_edge, label %if.end61

if.end56.reread.backedge_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %reread.backedge

if.end61:                                         ; preds = %if.end56
  %46 = ptrtoint ptr %j.0 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %j.0, align 8
  %48 = getelementptr inbounds %struct.jset, ptr %j.0, i32 0, i32 11
  %add.ptr.i = getelementptr i64, ptr %48, i32 %41
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %magic to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = call i64 @crc64_be(i64 noundef -1, ptr noundef %magic, i32 noundef %sub.ptr.sub) #15
  %xor.i282 = xor i64 %call.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %xor.i282)
  %cmp66.not = icmp eq i64 %47, %xor.i282
  br i1 %cmp66.not, label %if.end74, label %do.end71

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %bucket_index, i32 noundef %add22, i32 noundef %offset.2) #14
  br label %cleanup174

if.end74:                                         ; preds = %if.end61
  %49 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %block_size, align 8
  %conv79 = zext i16 %50 to i32
  %shl80 = shl nuw nsw i32 %conv79, 9
  %add81 = add nsw i32 %mul, 239
  %sub82 = add nsw i32 %add81, %shl80
  %div = udiv i32 %sub82, %shl80
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %list, align 4
  %cmp.i283.not320 = icmp eq ptr %52, %list
  br i1 %cmp.i283.not320, label %if.end74.while.end_crit_edge, label %while.body92.lr.ph

if.end74.while.end_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body92.lr.ph:                               ; preds = %if.end74
  %last_seq = getelementptr inbounds %struct.jset, ptr %j.0, i32 0, i32 5
  br label %while.body92

while.body92:                                     ; preds = %list_del.exit.while.body92_crit_edge, %while.body92.lr.ph
  %53 = phi ptr [ %52, %while.body92.lr.ph ], [ %67, %list_del.exit.while.body92_crit_edge ]
  %seq = getelementptr inbounds %struct.journal_replay, ptr %53, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %seq, align 8
  %56 = ptrtoint ptr %last_seq to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %last_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %57)
  %cmp96.not = icmp ult i64 %55, %57
  br i1 %cmp96.not, label %if.end99, label %while.body92.while.end_crit_edge

while.body92.while.end_crit_edge:                 ; preds = %while.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end99:                                         ; preds = %while.body92
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end99.list_del.exit_crit_edge

if.end99.list_del.exit_crit_edge:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end99.list_del.exit_crit_edge
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %53) #11
  %66 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %list, align 4
  %cmp.i283.not = icmp eq ptr %67, %list
  br i1 %cmp.i283.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body92_crit_edge

list_del.exit.while.body92_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body92

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.body92.while.end_crit_edge, %if.end74.while.end_crit_edge
  %seq109 = getelementptr inbounds %struct.jset, ptr %j.0, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end122.for.cond_crit_edge, %while.end
  %list.pn = phi ptr [ %list, %while.end ], [ %i.0, %if.end122.for.cond_crit_edge ]
  %i.0.in = getelementptr inbounds %struct.list_head, ptr %list.pn, i32 0, i32 1
  %68 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %68)
  %i.0 = load ptr, ptr %i.0.in, align 4
  %cmp105.not = icmp eq ptr %i.0, %list
  br i1 %cmp105.not, label %for.cond.if.end8.i_crit_edge, label %for.body

for.cond.if.end8.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

for.body:                                         ; preds = %for.cond
  %69 = ptrtoint ptr %seq109 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %seq109, align 8
  %seq111 = getelementptr inbounds %struct.journal_replay, ptr %i.0, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %seq111 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %seq111, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %72)
  %cmp112 = icmp eq i64 %70, %72
  br i1 %cmp112, label %for.body.next_set_crit_edge, label %if.end115

for.body.next_set_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_set

if.end115:                                        ; preds = %for.body
  %last_seq118 = getelementptr inbounds %struct.journal_replay, ptr %i.0, i32 0, i32 2, i32 5
  %73 = ptrtoint ptr %last_seq118 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %last_seq118, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %74)
  %cmp119 = icmp ult i64 %70, %74
  br i1 %cmp119, label %if.end115.next_set_crit_edge, label %if.end122

if.end115.next_set_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_set

if.end122:                                        ; preds = %if.end115
  %cmp126 = icmp ugt i64 %70, %72
  br i1 %cmp126, label %if.end122.if.end8.i_crit_edge, label %if.end122.for.cond_crit_edge

if.end122.for.cond_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end122.if.end8.i_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end122.if.end8.i_crit_edge, %for.cond.if.end8.i_crit_edge
  %where.0 = phi ptr [ %i.0, %if.end122.if.end8.i_crit_edge ], [ %list, %for.cond.if.end8.i_crit_edge ]
  %add137 = add i32 %mul, 256
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add137, i32 noundef 3264) #16
  %tobool139.not = icmp eq ptr %call9.i, null
  br i1 %tobool139.not, label %if.end8.i.cleanup174_crit_edge, label %if.end141

if.end8.i.cleanup174_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup174

if.end141:                                        ; preds = %if.end8.i
  %j142 = getelementptr inbounds %struct.journal_replay, ptr %call9.i, i32 0, i32 2
  %75 = call ptr @memcpy(ptr %j142, ptr %j.0, i32 %add22)
  %76 = ptrtoint ptr %where.0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %where.0, align 4
  %call.i.i285 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %where.0, ptr noundef %77) #11
  br i1 %call.i.i285, label %if.end.i.i286, label %if.end141.list_add.exit_crit_edge

if.end141.list_add.exit_crit_edge:                ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i286:                                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call9.i, ptr %prev1.i.i, align 4
  %79 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %where.0, ptr %prev3.i.i, align 4
  %81 = ptrtoint ptr %where.0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %call9.i, ptr %where.0, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i286, %if.end141.list_add.exit_crit_edge
  %82 = ptrtoint ptr %seq109 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %seq109, align 8
  %84 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx146, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %85)
  %cmp147 = icmp ugt i64 %83, %85
  br i1 %cmp147, label %if.then149, label %list_add.exit.next_set_crit_edge

list_add.exit.next_set_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_set

if.then149:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %83, ptr %arrayidx146, align 8
  br label %next_set

next_set:                                         ; preds = %if.then149, %list_add.exit.next_set_crit_edge, %if.end115.next_set_crit_edge, %for.body.next_set_crit_edge
  %ret.3 = phi i32 [ 1, %if.then149 ], [ 1, %list_add.exit.next_set_crit_edge ], [ %ret.2, %for.body.next_set_crit_edge ], [ %ret.2, %if.end115.next_set_crit_edge ]
  %87 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %block_size, align 8
  %conv156 = zext i16 %88 to i32
  %mul157 = mul i32 %div, %conv156
  %add158 = add i32 %mul157, %offset.2
  %sub163 = sub i32 %len.0, %mul157
  %shl167 = shl i32 %div, 9
  %mul168 = mul i32 %shl167, %conv156
  %add.ptr169 = getelementptr i8, ptr %j.0, i32 %mul168
  br label %cleanup

cleanup:                                          ; preds = %next_set, %do.body28
  %ret.4 = phi i32 [ %ret.3, %next_set ], [ %ret.2, %do.body28 ]
  %offset.3 = phi i32 [ %add158, %next_set ], [ %offset.2, %do.body28 ]
  %len.1 = phi i32 [ %sub163, %next_set ], [ %len.0, %do.body28 ]
  %j.1 = phi ptr [ %add.ptr169, %next_set ], [ %j.0, %do.body28 ]
  %retval.3 = phi i32 [ %retval.2, %next_set ], [ %ret.2, %do.body28 ]
  br i1 %cmp25.not, label %cleanup.while.cond19_crit_edge, label %cleanup.cleanup174_crit_edge

cleanup.cleanup174_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup174

cleanup.while.cond19_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19

cleanup174:                                       ; preds = %cleanup.cleanup174_crit_edge, %if.end8.i.cleanup174_crit_edge, %do.end71, %do.end53, %if.then40, %while.cond.loopexit.cleanup174_crit_edge, %do.end.cleanup174_crit_edge
  %retval.4 = phi i32 [ %ret.2, %if.then40 ], [ %ret.2, %do.end71 ], [ %ret.2, %do.end53 ], [ 0, %do.end.cleanup174_crit_edge ], [ -12, %if.end8.i.cleanup174_crit_edge ], [ %retval.3, %cleanup.cleanup174_crit_edge ], [ %ret.2, %while.cond.loopexit.cleanup174_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl) #11
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_journal_mark(ptr noundef %c, ptr noundef readonly %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i.0.in227 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %i.0.in227 to i32
  call void @__asan_load4_noabort(i32 %0)
  %i.0228 = load ptr, ptr %i.0.in227, align 4
  %cmp.not229 = icmp eq ptr %i.0228, %list
  br i1 %cmp.not229, label %entry.for.end152_crit_edge, label %do.body.lr.ph

entry.for.end152_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end152

do.body.lr.ph:                                    ; preds = %entry
  %seq = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 8
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %seq, align 8
  %pin16 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9
  %size = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 2
  %back = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 1
  %mask = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  %data = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  br label %do.body

for.cond.loopexit:                                ; preds = %for.inc143.for.cond.loopexit_crit_edge, %if.end121.for.cond.loopexit_crit_edge
  %i.0.in = getelementptr inbounds %struct.list_head, ptr %i.0231, i32 0, i32 1
  %3 = ptrtoint ptr %i.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %i.0 = load ptr, ptr %i.0.in, align 4
  %cmp.not = icmp eq ptr %i.0, %list
  br i1 %cmp.not, label %for.cond.loopexit.for.end152_crit_edge, label %for.cond.loopexit.do.body_crit_edge

for.cond.loopexit.do.body_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.cond.loopexit.for.end152_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end152

do.body:                                          ; preds = %for.cond.loopexit.do.body_crit_edge, %do.body.lr.ph
  %i.0231 = phi ptr [ %i.0228, %do.body.lr.ph ], [ %i.0, %for.cond.loopexit.do.body_crit_edge ]
  %last.0230 = phi i64 [ %2, %do.body.lr.ph ], [ %dec.lcssa, %for.cond.loopexit.do.body_crit_edge ]
  %seq3 = getelementptr inbounds %struct.journal_replay, ptr %i.0231, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %seq3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %last.0230, i64 %5)
  %cmp4 = icmp ult i64 %last.0230, %5
  br i1 %cmp4, label %do.body7, label %do.end12, !prof !122

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 310, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

do.end12:                                         ; preds = %do.body
  %pin = getelementptr inbounds %struct.journal_replay, ptr %i.0231, i32 0, i32 1
  %6 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pin, align 8
  %dec216 = add i64 %last.0230, -1
  %7 = ptrtoint ptr %seq3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %seq3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %last.0230, i64 %8)
  %cmp15.not217 = icmp eq i64 %last.0230, %8
  br i1 %cmp15.not217, label %do.end12.while.end_crit_edge, label %do.end12.while.body_crit_edge

do.end12.while.body_crit_edge:                    ; preds = %do.end12
  br label %while.body

do.end12.while.end_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %do.end12.while.body_crit_edge
  %dec218 = phi i64 [ %dec, %if.end62.while.body_crit_edge ], [ %dec216, %do.end12.while.body_crit_edge ]
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %11 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %back, align 4
  %13 = ptrtoint ptr %pin16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pin16, align 8
  %sub = sub i32 %12, %14
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %16
  %sub20 = sub i32 %10, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub20)
  %cmp21 = icmp ugt i32 %sub20, 1
  br i1 %cmp21, label %if.then40, label %while.body.if.end62_crit_edge

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %dec43 = add i32 %14, -1
  %and48 = and i32 %dec43, %16
  %17 = ptrtoint ptr %pin16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and48, ptr %pin16, align 8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %19, i32 %and48
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx, align 4
  %21 = load ptr, ptr %data, align 8
  %22 = load i32, ptr %pin16, align 8
  %arrayidx61 = getelementptr %struct.atomic_t, ptr %21, i32 %22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx61, i32 noundef 4) #11
  %23 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %arrayidx61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then40, %while.body.if.end62_crit_edge
  %dec = add i64 %dec218, -1
  %24 = ptrtoint ptr %seq3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seq3, align 8
  %cmp15.not = icmp eq i64 %dec218, %25
  br i1 %cmp15.not, label %if.end62.while.end_crit_edge, label %if.end62.while.body_crit_edge

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end62.while.end_crit_edge, %do.end12.while.end_crit_edge
  %dec.lcssa = phi i64 [ %dec216, %do.end12.while.end_crit_edge ], [ %dec, %if.end62.while.end_crit_edge ]
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 8
  %28 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %back, align 4
  %30 = ptrtoint ptr %pin16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pin16, align 8
  %sub69 = sub i32 %29, %31
  %32 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask, align 4
  %and72 = and i32 %sub69, %33
  %sub73 = sub i32 %27, %and72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub73)
  %cmp74 = icmp ugt i32 %sub73, 1
  br i1 %cmp74, label %if.then95, label %while.end.if.end121_crit_edge

while.end.if.end121_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then95:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %dec98 = add i32 %31, -1
  %and103 = and i32 %dec98, %33
  %34 = ptrtoint ptr %pin16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and103, ptr %pin16, align 8
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 8
  %arrayidx108 = getelementptr %struct.atomic_t, ptr %36, i32 %and103
  %37 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx108, align 4
  %38 = load ptr, ptr %data, align 8
  %39 = load i32, ptr %pin16, align 8
  %arrayidx118 = getelementptr %struct.atomic_t, ptr %38, i32 %39
  %40 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx118, ptr %pin, align 8
  %call.i.i210 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx118, i32 noundef 4) #11
  %41 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %arrayidx118, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then95, %while.end.if.end121_crit_edge
  %42 = getelementptr inbounds %struct.journal_replay, ptr %i.0231, i32 1
  %keys = getelementptr inbounds %struct.journal_replay, ptr %i.0231, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %keys, align 4
  %add.ptr.i223 = getelementptr i64, ptr %42, i32 %44
  %cmp127224 = icmp ult ptr %42, %add.ptr.i223
  br i1 %cmp127224, label %if.end121.for.body128_crit_edge, label %if.end121.for.cond.loopexit_crit_edge

if.end121.for.cond.loopexit_crit_edge:            ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

if.end121.for.body128_crit_edge:                  ; preds = %if.end121
  br label %for.body128

for.body128:                                      ; preds = %for.inc143.for.body128_crit_edge, %if.end121.for.body128_crit_edge
  %k.0225 = phi ptr [ %add.ptr.i215, %for.inc143.for.body128_crit_edge ], [ %42, %if.end121.for.body128_crit_edge ]
  %call129 = tail call zeroext i1 @__bch_extent_invalid(ptr noundef %c, ptr noundef %k.0225) #11
  br i1 %call129, label %for.body128.for.inc143_crit_edge, label %for.cond132.preheader

for.body128.for.inc143_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc143

for.cond132.preheader:                            ; preds = %for.body128
  %45 = ptrtoint ptr %k.0225 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %k.0225, align 8
  %47 = and i64 %46, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp134221.not = icmp eq i64 %47, 0
  br i1 %cmp134221.not, label %for.cond132.preheader.for.end_crit_edge, label %for.cond132.preheader.for.body136_crit_edge

for.cond132.preheader.for.body136_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body136

for.cond132.preheader.for.end_crit_edge:          ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body136:                                      ; preds = %for.inc.for.body136_crit_edge, %for.cond132.preheader.for.body136_crit_edge
  %j131.0222 = phi i32 [ %inc, %for.inc.for.body136_crit_edge ], [ 0, %for.cond132.preheader.for.body136_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k.0225, i32 0, i32 2, i32 %j131.0222
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.i.i, align 8
  %50 = and i64 %49, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp.i = icmp eq i64 %50, 0
  br i1 %cmp.i, label %ptr_available.exit, label %for.body136.for.inc_crit_edge

for.body136.for.inc_crit_edge:                    ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

ptr_available.exit:                               ; preds = %for.body136
  %51 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cache.i, align 4
  %tobool.i.not = icmp eq ptr %52, null
  br i1 %tobool.i.not, label %ptr_available.exit.for.inc_crit_edge, label %if.then138

ptr_available.exit.for.inc_crit_edge:             ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then138:                                       ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cache.i, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buckets.i, align 8
  %shr.i.i.i = lshr i64 %49, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %57 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %58 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %add.ptr.i213 = getelementptr %struct.bucket, ptr %56, i32 %conv1.i.i.i
  %call.i.i211 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i213, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i213, i32 1, i32 3, i32 1) #11
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i213, ptr %add.ptr.i213, i32 1, ptr elementtype(i32) %add.ptr.i213) #11, !srcloc !130
  br label %for.inc

for.inc:                                          ; preds = %if.then138, %ptr_available.exit.for.inc_crit_edge, %for.body136.for.inc_crit_edge
  %inc = add i32 %j131.0222, 1
  %conv = zext i32 %inc to i64
  %60 = ptrtoint ptr %k.0225 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %k.0225, align 8
  %shr.i = lshr i64 %61, 60
  %and.i = and i64 %shr.i, 7
  %cmp134 = icmp ugt i64 %and.i, %conv
  br i1 %cmp134, label %for.inc.for.body136_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body136_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond132.preheader.for.end_crit_edge
  tail call void @bch_initial_mark_key(ptr noundef %c, i32 noundef 0, ptr noundef %k.0225) #11
  br label %for.inc143

for.inc143:                                       ; preds = %for.end, %for.body128.for.inc143_crit_edge
  %62 = ptrtoint ptr %k.0225 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %k.0225, align 8
  %shr.i.i.i214 = lshr i64 %63, 60
  %64 = trunc i64 %shr.i.i.i214 to i32
  %65 = and i32 %64, 7
  %conv.i.i = add nuw nsw i32 %65, 2
  %add.ptr.i215 = getelementptr i64, ptr %k.0225, i32 %conv.i.i
  %66 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %keys, align 4
  %add.ptr.i = getelementptr i64, ptr %42, i32 %67
  %cmp127 = icmp ult ptr %add.ptr.i215, %add.ptr.i
  br i1 %cmp127, label %for.inc143.for.body128_crit_edge, label %for.inc143.for.cond.loopexit_crit_edge

for.inc143.for.cond.loopexit_crit_edge:           ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.inc143.for.body128_crit_edge:                 ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body128

for.end152:                                       ; preds = %for.cond.loopexit.for.end152_crit_edge, %entry.for.end152_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__bch_extent_invalid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_initial_mark_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_journal_replay(ptr noundef %s, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %keylist = alloca %struct.keylist, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %last_seq = getelementptr inbounds %struct.journal_replay, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %last_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_seq, align 8
  %seq = getelementptr inbounds %struct.journal_replay, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %keylist) #11
  %6 = call ptr @memset(ptr %keylist, i32 255, i32 136)
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %i.0170 = load ptr, ptr %list, align 4
  %cmp.not171 = icmp eq ptr %i.0170, %list
  br i1 %cmp.not171, label %entry.do.end95_crit_edge, label %do.body.lr.ph

entry.do.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

do.body.lr.ph:                                    ; preds = %entry
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %s, i32 0, i32 9
  %8 = getelementptr inbounds %struct.keylist, ptr %keylist, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end82.do.body_crit_edge, %do.body.lr.ph
  %i.0175 = phi ptr [ %i.0170, %do.body.lr.ph ], [ %i.0, %if.end82.do.body_crit_edge ]
  %keys.0174 = phi i32 [ 0, %do.body.lr.ph ], [ %keys.1.lcssa, %if.end82.do.body_crit_edge ]
  %entries.0173 = phi i32 [ 0, %do.body.lr.ph ], [ %inc85, %if.end82.do.body_crit_edge ]
  %n.0172 = phi i64 [ %3, %do.body.lr.ph ], [ %add, %if.end82.do.body_crit_edge ]
  %pin = getelementptr inbounds %struct.journal_replay, ptr %i.0175, i32 0, i32 1
  %9 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %land.rhs

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.rhs:                                         ; preds = %do.body
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %10, i32 noundef 4) #11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp7.not = icmp eq i32 %12, 1
  br i1 %cmp7.not, label %land.rhs.do.end16_crit_edge, label %do.body11, !prof !128

land.rhs.do.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.body11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 361, 0\0A.popsection", ""() #11, !srcloc !131
  unreachable

do.end16:                                         ; preds = %land.rhs.do.end16_crit_edge, %do.body.do.end16_crit_edge
  %seq18 = getelementptr inbounds %struct.journal_replay, ptr %i.0175, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %seq18 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seq18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0172, i64 %14)
  %cmp19.not = icmp eq i64 %n.0172, %14
  br i1 %cmp19.not, label %do.end16.if.end40_crit_edge, label %if.then20

do.end16.if.end40_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then20:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0172, i64 %3)
  %cmp21 = icmp eq i64 %n.0172, %3
  br i1 %cmp21, label %land.lhs.true, label %if.then20.do.end33_crit_edge

if.then20.do.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

land.lhs.true:                                    ; preds = %if.then20
  %15 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache.i, align 4
  %discard.i = getelementptr inbounds %struct.cache, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %discard.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %discard.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not = icmp eq i8 %18, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.do.end33_crit_edge, label %do.end26

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i64 %14, -1
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i64 noundef %3, i64 noundef %sub, i64 noundef %3, i64 noundef %5) #14
  br label %if.end40

do.end33:                                         ; preds = %land.lhs.true.do.end33_crit_edge, %if.then20.do.end33_crit_edge
  %n.0172.lcssa181 = phi i64 [ %n.0172, %if.then20.do.end33_crit_edge ], [ %3, %land.lhs.true.do.end33_crit_edge ]
  %sub37 = add i64 %14, -1
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i64 noundef %n.0172.lcssa181, i64 noundef %sub37, i64 noundef %3, i64 noundef %5) #14
  br label %err

if.end40:                                         ; preds = %do.end26, %do.end16.if.end40_crit_edge
  %19 = getelementptr inbounds %struct.journal_replay, ptr %i.0175, i32 1
  %keys46 = getelementptr inbounds %struct.journal_replay, ptr %i.0175, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %keys46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keys46, align 4
  %add.ptr.i166 = getelementptr i64, ptr %19, i32 %21
  %cmp48167 = icmp ult ptr %19, %add.ptr.i166
  br i1 %cmp48167, label %if.end40.for.body49_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end40.for.body49_crit_edge:                    ; preds = %if.end40
  br label %for.body49

for.body49:                                       ; preds = %do.end74.for.body49_crit_edge, %if.end40.for.body49_crit_edge
  %keys.1169 = phi i32 [ %inc, %do.end74.for.body49_crit_edge ], [ %keys.0174, %if.end40.for.body49_crit_edge ]
  %k.0168 = phi ptr [ %add.ptr.i146, %do.end74.for.body49_crit_edge ], [ %19, %if.end40.for.body49_crit_edge ]
  call fastcc void @trace_bcache_journal_replay_key(ptr noundef %k.0168)
  %22 = ptrtoint ptr %keylist to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %k.0168, ptr %keylist, align 8
  %23 = ptrtoint ptr %k.0168 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %k.0168, align 8
  %shr.i.i.i.i = lshr i64 %24, 60
  %25 = trunc i64 %shr.i.i.i.i to i32
  %26 = and i32 %25, 7
  %conv.i.i.i = add nuw nsw i32 %26, 2
  %add.ptr.i.i = getelementptr i64, ptr %k.0168, i32 %conv.i.i.i
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i, ptr %8, align 4
  %28 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pin, align 8
  %call51 = call i32 @bch_btree_insert(ptr noundef %s, ptr noundef nonnull %keylist, ptr noundef %29, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body55, label %for.body49.err_crit_edge

for.body49.err_crit_edge:                         ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.body55:                                        ; preds = %for.body49
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %8, align 4
  %32 = ptrtoint ptr %keylist to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %keylist, align 8
  %cmp.i = icmp eq ptr %31, %33
  br i1 %cmp.i, label %do.end74, label %do.body66, !prof !128

do.body66:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 386, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end74:                                         ; preds = %do.body55
  %inc = add i32 %keys.1169, 1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 389, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %34 = ptrtoint ptr %k.0168 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %k.0168, align 8
  %shr.i.i.i = lshr i64 %35, 60
  %36 = trunc i64 %shr.i.i.i to i32
  %37 = and i32 %36, 7
  %conv.i.i = add nuw nsw i32 %37, 2
  %add.ptr.i146 = getelementptr i64, ptr %k.0168, i32 %conv.i.i
  %38 = ptrtoint ptr %keys46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %keys46, align 4
  %add.ptr.i = getelementptr i64, ptr %19, i32 %39
  %cmp48 = icmp ult ptr %add.ptr.i146, %add.ptr.i
  br i1 %cmp48, label %do.end74.for.body49_crit_edge, label %do.end74.for.end_crit_edge

do.end74.for.end_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end74.for.body49_crit_edge:                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49

for.end:                                          ; preds = %do.end74.for.end_crit_edge, %if.end40.for.end_crit_edge
  %keys.1.lcssa = phi i32 [ %keys.0174, %if.end40.for.end_crit_edge ], [ %inc, %do.end74.for.end_crit_edge ]
  %40 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pin, align 8
  %tobool79.not = icmp eq ptr %41, null
  br i1 %tobool79.not, label %for.end.if.end82_crit_edge, label %if.then80

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i145 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #11
  %42 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #11, !srcloc !134
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %for.end.if.end82_crit_edge
  %43 = ptrtoint ptr %seq18 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seq18, align 8
  %add = add i64 %44, 1
  %inc85 = add i32 %entries.0173, 1
  %45 = ptrtoint ptr %i.0175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %i.0 = load ptr, ptr %i.0175, align 4
  %cmp.not = icmp eq ptr %i.0, %list
  br i1 %cmp.not, label %if.end82.do.end95_crit_edge, label %if.end82.do.body_crit_edge

if.end82.do.body_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end82.do.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

do.end95:                                         ; preds = %if.end82.do.end95_crit_edge, %entry.do.end95_crit_edge
  %entries.0.lcssa = phi i32 [ 0, %entry.do.end95_crit_edge ], [ %inc85, %if.end82.do.end95_crit_edge ]
  %keys.0.lcssa = phi i32 [ 0, %entry.do.end95_crit_edge ], [ %keys.1.lcssa, %if.end82.do.end95_crit_edge ]
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef %keys.0.lcssa, i32 noundef %entries.0.lcssa, i64 noundef %5) #14
  br label %err

err:                                              ; preds = %do.end95, %for.body49.err_crit_edge, %do.end33
  %ret.2 = phi i32 [ -5, %do.end33 ], [ 0, %do.end95 ], [ %call51, %for.body49.err_crit_edge ]
  %46 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %list, align 4
  %cmp.i147.not178 = icmp eq ptr %47, %list
  br i1 %cmp.i147.not178, label %err.while.end_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %err.while.body_crit_edge
  %48 = phi ptr [ %58, %list_del.exit.while.body_crit_edge ], [ %47, %err.while.body_crit_edge ]
  %call.i.i148 = call zeroext i1 @__list_del_entry_valid(ptr noundef %48) #11
  br i1 %call.i.i148, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %48) #11
  %57 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %list, align 4
  %cmp.i147.not = icmp eq ptr %58, %list
  br i1 %cmp.i147.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %err.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %keylist) #11
  ret i32 %ret.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_journal_replay_key(ptr noundef %k) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_replay_key, i32 0, i32 1), ptr blockaddress(@trace_bcache_journal_replay_key, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !128

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !135
  %call42 = tail call i32 @__traceiter_bcache_journal_replay_key(ptr noundef null, ptr noundef %k) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !128

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_replay_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_replay_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_journal_replay_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_bcache_journal_replay_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 212, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_btree_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_journal_next(ptr noundef %j) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 12
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %w = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 11
  %cmp = icmp eq ptr %1, %w
  %arrayidx = getelementptr %struct.journal, ptr %j, i32 0, i32 11, i32 1
  %cond = select i1 %cmp, ptr %arrayidx, ptr %w
  store ptr %cond, ptr %cur, align 8
  %pin = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 9
  %size = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %back = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %back, align 4
  %6 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin, align 8
  %sub = sub i32 %5, %7
  %mask = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and)
  %tobool.not = icmp eq i32 %3, %and
  br i1 %tobool.not, label %do.body28.critedge, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %inc = add i32 %5, 1
  %12 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %back, align 4
  %arrayidx14 = getelementptr %struct.atomic_t, ptr %11, i32 %5
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx14, align 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %16 = load i32, ptr %back, align 4
  %and19 = and i32 %16, %15
  store i32 %and19, ptr %back, align 4
  %17 = load ptr, ptr %data, align 8
  %sub39 = add i32 %and19, -1
  %and42 = and i32 %sub39, %15
  %arrayidx43 = getelementptr %struct.atomic_t, ptr %17, i32 %and42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx43, i32 noundef 4) #11
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %arrayidx43, align 4
  %seq = getelementptr inbounds %struct.journal, ptr %j, i32 0, i32 8
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seq, align 8
  %inc44 = add i64 %20, 1
  store i64 %inc44, ptr %seq, align 8
  %21 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %seq47 = getelementptr inbounds %struct.jset, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %seq47 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %inc44, ptr %seq47, align 8
  %26 = load ptr, ptr %cur, align 8
  %dirty = getelementptr inbounds %struct.journal_write, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dirty, align 4
  %28 = load ptr, ptr %cur, align 8
  %need_write = getelementptr inbounds %struct.journal_write, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %need_write to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %need_write, align 1
  %30 = load ptr, ptr %cur, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %keys = getelementptr inbounds %struct.jset, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %keys, align 4
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 8
  %36 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %back, align 4
  %38 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pin, align 8
  %sub58 = sub i32 %37, %39
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask, align 4
  %and61 = and i32 %sub58, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and61)
  %tobool63.not = icmp eq i32 %35, %and61
  br i1 %tobool63.not, label %do.body65, label %if.then.if.end87_crit_edge

if.then.if.end87_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.body28.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #11, !srcloc !139
  unreachable

do.body65:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bch_journal_next.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bch_journal_next, %if.then75)) #11
          to label %if.end87 [label %if.then75], !srcloc !121

if.then75:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %back, align 4
  %44 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pin, align 8
  %sub80 = sub i32 %43, %45
  %46 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask, align 4
  %and83 = and i32 %sub80, %47
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bch_journal_next.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %and83) #11
  br label %if.end87

if.end87:                                         ; preds = %if.then75, %do.body65, %if.then.if.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_journal(ptr noundef %c, ptr nocapture noundef readonly %keys, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  %cl.i = alloca %struct.closure, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !128

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 4
  %flags.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not = icmp eq i64 %and.i, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = getelementptr inbounds %struct.keylist, ptr %keys, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %keys, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl.i) #11
  %12 = call ptr @memset(ptr %cl.i, i32 0, i32 72)
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #11
  %13 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1073741825, ptr %remaining.i.i, align 4
  %journal.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  call void @_raw_spin_lock(ptr noundef %journal.i) #11
  %cur.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 12
  %block_size.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1, i32 11, i32 0, i32 1
  %blocks_free.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 7
  %wait22.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 3
  %pin.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9
  %size.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 2
  %back.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 1
  %mask.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %if.end6
  %wait.0.off0.i = phi i1 [ false, %if.end6 ], [ true, %cleanup.i ]
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %keys.i = getelementptr inbounds %struct.jset, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %keys.i, align 4
  %add.i65 = shl i32 %19, 3
  %20 = add i32 %sub.ptr.sub.i, %add.i65
  %mul.i = and i32 %20, -8
  %21 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %block_size.i, align 8
  %conv.i = zext i16 %22 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %add3.i = add i32 %mul.i, 239
  %sub.i = add i32 %add3.i, %shl.i
  %div.i = udiv i32 %sub.i, %shl.i
  %mul11.i = mul i32 %div.i, %conv.i
  %23 = ptrtoint ptr %blocks_free.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocks_free.i, align 8
  %mul16.i = mul i32 %24, %conv.i
  %25 = call i32 @llvm.umin.i32(i32 %mul16.i, i32 64) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11.i, i32 %25)
  %cmp18.not.i = icmp ugt i32 %mul11.i, %25
  br i1 %cmp18.not.i, label %if.end.i57, label %journal_wait_for_write.exit

if.end.i57:                                       ; preds = %while.cond.i
  br i1 %wait.0.off0.i, label %if.then20.i, label %if.end.i57.if.end23.i_crit_edge

if.end.i57.if.end23.i_crit_edge:                  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call zeroext i1 @closure_wait(ptr noundef %wait22.i, ptr noundef nonnull %cl.i) #11
  %26 = ptrtoint ptr %blocks_free.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %blocks_free.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end.i57.if.end23.i_crit_edge
  %27 = phi i32 [ %.pr.i, %if.then20.i ], [ %24, %if.end.i57.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not.i = icmp eq i32 %27, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.else.i59_crit_edge, label %lor.lhs.false.i

if.end23.i.if.else.i59_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i59

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 8
  %30 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %back.i, align 4
  %32 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pin.i, align 8
  %sub32.i = sub i32 %31, %33
  %34 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask.i, align 4
  %and.i58 = and i32 %sub32.i, %35
  %sub35.i = sub i32 %29, %and.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub35.i)
  %cmp36.i = icmp ult i32 %sub35.i, 2
  br i1 %cmp36.i, label %lor.lhs.false.i.if.else.i59_crit_edge, label %if.then38.i

lor.lhs.false.i.if.else.i59_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i59

if.then38.i:                                      ; preds = %lor.lhs.false.i
  br i1 %wait.0.off0.i, label %if.then40.i, label %if.then38.i.do.body.i_crit_edge

if.then38.i.do.body.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_bcache_journal_entry_full(ptr noundef %c) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then40.i, %if.then38.i.do.body.i_crit_edge
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 4
  %keys43.i = getelementptr inbounds %struct.jset, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %keys43.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %keys43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool44.not.i = icmp eq i32 %39, 0
  br i1 %tobool44.not.i, label %do.body49.i, label %do.end55.i, !prof !122

do.body49.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 871, 0\0A.popsection", ""() #11, !srcloc !140
  unreachable

do.end55.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @journal_try_write(ptr noundef %c) #11
  br label %if.end61.i

if.else.i59:                                      ; preds = %lor.lhs.false.i.if.else.i59_crit_edge, %if.end23.i.if.else.i59_crit_edge
  br i1 %wait.0.off0.i, label %if.then57.i, label %if.else.i59.if.end58.i_crit_edge

if.else.i59.if.end58.i_crit_edge:                 ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_bcache_journal_full(ptr noundef %c) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.else.i59.if.end58.i_crit_edge
  call fastcc void @journal_reclaim(ptr noundef %c) #11
  call void @_raw_spin_unlock(ptr noundef %journal.i) #11
  call fastcc void @btree_flush_write(ptr noundef %c) #11
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end58.i, %do.end55.i
  %call.i.i.i96.i = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %remaining.i.i, align 4
  %and.i.i = and i32 %41, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.not.i.i, label %if.end61.i.cleanup.i_crit_edge, label %if.then.i.i

if.end61.i.cleanup.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__closure_sync(ptr noundef nonnull %cl.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %if.end61.i.cleanup.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %journal.i) #11
  br label %while.cond.i

journal_wait_for_write.exit:                      ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl.i) #11
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.jset, ptr %43, i32 0, i32 11
  %keys10 = getelementptr inbounds %struct.jset, ptr %43, i32 0, i32 4
  %45 = ptrtoint ptr %keys10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %keys10, align 4
  %add.ptr.i = getelementptr i64, ptr %44, i32 %46
  %47 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %keys, align 8
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %51 = call ptr @memcpy(ptr %add.ptr.i, ptr %48, i32 %sub.ptr.sub.i.i)
  %52 = load ptr, ptr %7, align 4
  %53 = load ptr, ptr %keys, align 8
  %sub.ptr.lhs.cast.i60 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i61 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i62 = sub i32 %sub.ptr.lhs.cast.i60, %sub.ptr.rhs.cast.i61
  %sub.ptr.div.i63 = ashr exact i32 %sub.ptr.sub.i62, 3
  %54 = load ptr, ptr %15, align 4
  %keys15 = getelementptr inbounds %struct.jset, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %keys15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %keys15, align 4
  %add = add i32 %sub.ptr.div.i63, %56
  store i32 %add, ptr %keys15, align 4
  %data16 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %57 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data16, align 8
  %59 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %back.i, align 4
  %sub = add i32 %60, -1
  %61 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask.i, align 4
  %and = and i32 %sub, %62
  %arrayidx = getelementptr %struct.atomic_t, ptr %58, i32 %and
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !130
  %tobool21.not = icmp eq ptr %parent, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %journal_wait_for_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wait = getelementptr inbounds %struct.journal_write, ptr %15, i32 0, i32 2
  %call23 = call zeroext i1 @closure_wait(ptr noundef %wait, ptr noundef nonnull %parent) #11
  call fastcc void @journal_try_write(ptr noundef %c)
  br label %cleanup

if.else:                                          ; preds = %journal_wait_for_write.exit
  %dirty = getelementptr inbounds %struct.journal_write, ptr %15, i32 0, i32 3
  %64 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dirty, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool24.not = icmp eq i8 %65, 0
  br i1 %tobool24.not, label %if.then25, label %if.else31

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %dirty, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_flush_wq to i32))
  %67 = load ptr, ptr @bch_flush_wq, align 4
  %work = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6
  %journal_delay_ms = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 83
  %68 = ptrtoint ptr %journal_delay_ms to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %journal_delay_ms, align 4
  %conv = zext i16 %69 to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv) #11
  %call.i64 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %work, i32 noundef %call2.i) #11
  call void @_raw_spin_unlock(ptr noundef %journal.i) #11
  br label %cleanup

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %journal.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then25, %if.then22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %arrayidx, %if.then25 ], [ %arrayidx, %if.else31 ], [ %arrayidx, %if.then22 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @closure_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @journal_try_write(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 12
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %need_write = getelementptr inbounds %struct.journal_write, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %need_write to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %need_write, align 1
  %io_in_flight = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 5
  %3 = ptrtoint ptr %io_in_flight to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_in_flight, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %io = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4
  %5 = ptrtoint ptr %io_in_flight to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %io_in_flight, align 8
  %6 = call ptr @memset(ptr %io, i32 0, i32 72)
  %parent1.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 1
  %7 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %c, ptr %parent1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %c, null
  br i1 %tobool.not.i.i, label %if.then.closure_init.exit.i_crit_edge, label %if.then.i.i

if.then.closure_init.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %closure_init.exit.i

if.then.i.i:                                      ; preds = %if.then
  %remaining.i.i.i = getelementptr inbounds %struct.closure, ptr %c, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i.i, ptr %remaining.i.i.i, i32 1, ptr elementtype(i32) %remaining.i.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %and.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %if.then.i.i.closure_init.exit.i_crit_edge, !prof !122

if.then.i.i.closure_init.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %closure_init.exit.i

do.body2.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

closure_init.exit.i:                              ; preds = %if.then.i.i.closure_init.exit.i_crit_edge, %if.then.closure_init.exit.i_crit_edge
  %remaining.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1073741825, ptr %remaining.i.i, align 4
  tail call void @closure_debug_create(ptr noundef %io) #11
  tail call fastcc void @closure_set_ip(ptr noundef %io) #11
  %fn1.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @journal_write_unlocked, ptr %fn1.i.i, align 4
  %11 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %io, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %tobool.not.i1.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i, label %if.else.i.i, label %do.body2.i.i

do.body2.i.i:                                     ; preds = %closure_init.exit.i
  tail call void @__init_work(ptr noundef %io, i32 noundef 0) #11
  %14 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %io, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry3.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %entry3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry3.i.i, ptr %entry3.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 4, i32 0, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry3.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %13, ptr noundef %io) #11
  br i1 %call.i.i.i, label %do.body2.i.i.if.end_crit_edge, label %do.body12.i.i, !prof !128

do.body2.i.i.if.end_crit_edge:                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body12.i.i:                                    ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

if.else.i.i:                                      ; preds = %closure_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fn1.i.i, align 4
  tail call void %18(ptr noundef %io) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %journal = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else.i.i, %do.body2.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_journal_meta(ptr noundef %c, ptr noundef %cl) local_unnamed_addr #0 align 64 {
entry:
  %keys = alloca %struct.keylist, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %keys) #11
  %0 = getelementptr inbounds i8, ptr %keys, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 128)
  %inline_keys.i = getelementptr inbounds %struct.keylist, ptr %keys, i32 0, i32 2
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inline_keys.i, ptr %keys, align 8
  %3 = getelementptr inbounds %struct.keylist, ptr %keys, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %inline_keys.i, ptr %3, align 4
  %call = call ptr @bch_journal(ptr noundef %c, ptr noundef nonnull %keys, ptr noundef %cl)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !143
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %5 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !144
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %do.body5, label %do.body.if.end11_crit_edge, !prof !122

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 955, 0\0A.popsection", ""() #11, !srcloc !146
  unreachable

if.end11:                                         ; preds = %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %keys) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_journal_free(ptr nocapture noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %w = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 11
  %arrayidx = getelementptr %struct.cache_set, ptr %c, i32 0, i32 66, i32 11, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %2, i32 noundef 3) #11
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w, align 8
  %5 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %5, i32 noundef 3) #11
  %data6 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %6 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data6, align 8
  tail call void @kvfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_journal_alloc(ptr noundef %c) local_unnamed_addr #0 align 64 {
cond.end134:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %journal = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  tail call void @__raw_spin_lock_init(ptr noundef %journal, ptr noundef nonnull @.str.22, ptr noundef nonnull @bch_journal_alloc.__key, i16 noundef signext 3) #11
  %flush_write_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %flush_write_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @bch_journal_alloc.__key.23, i16 noundef signext 3) #11
  %work = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @bch_journal_alloc.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry14 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6, i32 0, i32 1
  %1 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @journal_write_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @bch_journal_alloc.__key.27) #11
  %journal_delay_ms = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 83
  %4 = ptrtoint ptr %journal_delay_ms to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 100, ptr %journal_delay_ms, align 4
  %c25 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 11, i32 0, i32 1
  %5 = ptrtoint ptr %c25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %c, ptr %c25, align 4
  %arrayidx27 = getelementptr %struct.cache_set, ptr %c, i32 0, i32 66, i32 11, i32 1
  %c28 = getelementptr %struct.cache_set, ptr %c, i32 0, i32 66, i32 11, i32 1, i32 1
  %6 = ptrtoint ptr %c28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %c, ptr %c28, align 4
  %pin = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9
  %size = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32767, ptr %size, align 8
  %mask = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32767, ptr %mask, align 4
  %back = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 1
  %9 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %back, align 4
  %10 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pin, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 131072, i32 noundef 3264, i32 noundef -1) #16
  %data142 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %11 = ptrtoint ptr %data142 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %data142, align 8
  %tobool146.not = icmp eq ptr %call.i, null
  br i1 %tobool146.not, label %cond.end134.cleanup_crit_edge, label %lor.lhs.false

cond.end134.cleanup_crit_edge:                    ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end134
  %w = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 11
  %call147 = tail call i32 @__get_free_pages(i32 noundef 265408, i32 noundef 3) #11
  %12 = inttoptr i32 %call147 to ptr
  %13 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %w, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool151.not = icmp eq i32 %call147, 0
  br i1 %tobool151.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false152

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false152:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call153 = tail call i32 @__get_free_pages(i32 noundef 265408, i32 noundef 3) #11
  %14 = inttoptr i32 %call153 to ptr
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool157.not = icmp eq i32 %call153, 0
  %spec.select = select i1 %tobool157.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false152, %lor.lhs.false.cleanup_crit_edge, %cond.end134.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %cond.end134.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false152 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %journal = getelementptr i8, ptr %work, i32 -172
  tail call void @_raw_spin_lock(ptr noundef %journal) #11
  %cur = getelementptr i8, ptr %work, i32 236
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %dirty = getelementptr inbounds %struct.journal_write, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dirty, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -47788
  tail call fastcc void @journal_try_write(ptr noundef %add.ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_read_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  tail call void @closure_put(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @crc64_be(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_journal_replay_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_journal_entry_full(ptr noundef %c) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_entry_full, i32 0, i32 1), ptr blockaddress(@trace_bcache_journal_entry_full, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !128

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %call42 = tail call i32 @__traceiter_bcache_journal_entry_full(ptr noundef null, ptr noundef %c) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !128

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_entry_full, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_entry_full, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_journal_entry_full.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_bcache_journal_entry_full.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 222, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_journal_full(ptr noundef %c) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_full, i32 0, i32 1), ptr blockaddress(@trace_bcache_journal_full, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !128

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !149
  %call42 = tail call i32 @__traceiter_bcache_journal_full(ptr noundef null, ptr noundef %c) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !128

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_full, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_full, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_journal_full.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_bcache_journal_full.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 217, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @journal_reclaim(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 10
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache, align 4
  %journal1 = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19
  %reclaim = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 77
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaim, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %reclaim, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reclaim, ptr %reclaim, i32 1, ptr elementtype(i32) %reclaim) #11, !srcloc !130
  %pin = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9
  %data = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %6 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin, align 8
  %arrayidx160 = getelementptr %struct.atomic_t, ptr %5, i32 %7
  %call.i.i154161 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx160, i32 noundef 4) #11
  %8 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not162 = icmp eq i32 %9, 0
  br i1 %tobool.not162, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %back = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 1
  %mask = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %back, align 4
  %12 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin, align 8
  %sub = sub i32 %11, %13
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %13, 1
  %and29 = and i32 %inc, %15
  %16 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and29, ptr %pin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %19 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %18, i32 %20
  %call.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %seq = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 8
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %seq, align 8
  %back36 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 1
  %25 = ptrtoint ptr %back36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %back36, align 4
  %27 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pin, align 8
  %sub40 = sub i32 %26, %28
  %mask43 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  %29 = ptrtoint ptr %mask43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask43, align 4
  %and44 = and i32 %sub40, %30
  %conv = zext i32 %and44 to i64
  %sub45 = add i64 %24, 1
  %add = sub i64 %sub45, %conv
  %last_idx = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 2
  %cur_idx = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %last_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_idx, align 4
  %33 = ptrtoint ptr %cur_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not163 = icmp eq i32 %32, %34
  br i1 %cmp.not163, label %while.end.while.end58_crit_edge, label %land.rhs.lr.ph

while.end.while.end58_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end58

land.rhs.lr.ph:                                   ; preds = %while.end
  %35 = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 14
  br label %land.rhs

land.rhs:                                         ; preds = %while.body53.land.rhs_crit_edge, %land.rhs.lr.ph
  %36 = phi i32 [ %32, %land.rhs.lr.ph ], [ %rem, %while.body53.land.rhs_crit_edge ]
  %arrayidx50 = getelementptr [256 x i64], ptr %journal1, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %add)
  %cmp51 = icmp ult i64 %38, %add
  br i1 %cmp51, label %while.body53, label %land.rhs.while.end58_crit_edge

land.rhs.while.end58_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end58

while.body53:                                     ; preds = %land.rhs
  %add55 = add i32 %36, 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %35, align 2
  %conv56 = zext i16 %40 to i32
  %rem = urem i32 %add55, %conv56
  %41 = ptrtoint ptr %last_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rem, ptr %last_idx, align 4
  %42 = ptrtoint ptr %cur_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_idx, align 8
  %cmp.not = icmp eq i32 %rem, %43
  br i1 %cmp.not, label %while.body53.while.end58_crit_edge, label %while.body53.land.rhs_crit_edge

while.body53.land.rhs_crit_edge:                  ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body53.while.end58_crit_edge:               ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end58

while.end58:                                      ; preds = %while.body53.while.end58_crit_edge, %land.rhs.while.end58_crit_edge, %while.end.while.end58_crit_edge
  %.lcssa = phi i32 [ %32, %while.end.while.end58_crit_edge ], [ %rem, %while.body53.while.end58_crit_edge ], [ %36, %land.rhs.while.end58_crit_edge ]
  %discard_bio.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6
  %discard.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 18
  %44 = ptrtoint ptr %discard.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %discard.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #13
  %discard_idx.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 3
  %46 = ptrtoint ptr %discard_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.lcssa, ptr %discard_idx.i, align 8
  br label %do_journal_discard.exit

if.end.i:                                         ; preds = %while.end58
  %discard_in_flight.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discard_in_flight.i, i32 noundef 4) #11
  %47 = ptrtoint ptr %discard_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %discard_in_flight.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %if.end.i.do_journal_discard.exit_crit_edge [
    i32 0, label %if.end.i.sw.bb5.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end.i.sw.bb5.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.end.i.do_journal_discard.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_journal_discard.exit

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %discard_idx2.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 3
  %50 = ptrtoint ptr %discard_idx2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %discard_idx2.i, align 8
  %add.i = add i32 %51, 1
  %52 = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 14
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 2
  %conv.i = zext i16 %54 to i32
  %rem.i = urem i32 %add.i, %conv.i
  store i32 %rem.i, ptr %discard_idx2.i, align 8
  %call.i.i56.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_in_flight.i, i32 noundef 4) #11
  %55 = ptrtoint ptr %discard_in_flight.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %discard_in_flight.i, align 4
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb1.i, %if.end.i.sw.bb5.i_crit_edge
  %discard_idx6.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 3
  %56 = ptrtoint ptr %discard_idx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %discard_idx6.i, align 8
  %58 = ptrtoint ptr %last_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i = icmp eq i32 %57, %59
  br i1 %cmp.i, label %sw.bb5.i.do_journal_discard.exit_crit_edge, label %if.end10.i

sw.bb5.i.do_journal_discard.exit_crit_edge:       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_journal_discard.exit

if.end10.i:                                       ; preds = %sw.bb5.i
  %call.i.i57.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_in_flight.i, i32 noundef 4) #11
  %60 = ptrtoint ptr %discard_in_flight.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 1, ptr %discard_in_flight.i, align 4
  %bi_inline_vecs.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 7
  tail call void @bio_init(ptr noundef %discard_bio.i, ptr noundef %bi_inline_vecs.i, i16 noundef zeroext 1) #11
  %bi_opf.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 2
  %61 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %bi_opf.i.i, align 8
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %2, align 8
  %64 = ptrtoint ptr %discard_idx6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %discard_idx6.i, align 8
  %arrayidx.i = getelementptr %struct.cache, ptr %2, i32 0, i32 1, i32 15, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx.i, align 8
  %conv.i.i = and i64 %67, 4294967295
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %63, i32 0, i32 24
  %68 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %69 to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %bi_iter.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 8
  %70 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %shl.i.i, ptr %bi_iter.i, align 8
  %bdev.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 6
  %71 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bdev.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 3
  %73 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %74, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 1
  %75 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %76, %72
  br i1 %cmp.not.i.i, label %if.end10.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end10.i.bio_set_dev.exit.i_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i.i = and i16 %74, -2177
  %77 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end10.i.bio_set_dev.exit.i_crit_edge
  %78 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %72, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %discard_bio.i) #11
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 11, i32 0, i32 4
  %79 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bucket_size.i, align 8
  %shl.i = shl i32 %80, 9
  %bi_size.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 8, i32 1
  %81 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shl.i, ptr %bi_size.i, align 8
  %bi_end_io.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 6, i32 10
  %82 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @journal_discard_endio, ptr %bi_end_io.i, align 8
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %2, align 8
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %84, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #11
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %85, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !122

do.body2.i.i:                                     ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

closure_get.exit.i:                               ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %discard_work.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 5
  tail call void @__init_work(ptr noundef %discard_work.i, i32 noundef 0) #11
  %86 = ptrtoint ptr %discard_work.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -64, ptr %discard_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @do_journal_discard.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry22.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 5, i32 1
  %87 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %entry22.i, ptr %entry22.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 5, i32 1, i32 1
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %entry22.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 5, i32 2
  %89 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @journal_discard_work, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_journal_wq to i32))
  %90 = load ptr, ptr @bch_journal_wq, align 4
  %call.i.i156 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %discard_work.i) #11
  br label %do_journal_discard.exit

do_journal_discard.exit:                          ; preds = %closure_get.exit.i, %sw.bb5.i.do_journal_discard.exit_crit_edge, %if.end.i.do_journal_discard.exit_crit_edge, %if.then.i
  %blocks_free = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 7
  %91 = ptrtoint ptr %blocks_free to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %blocks_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool60.not = icmp eq i32 %92, 0
  br i1 %tobool60.not, label %if.end62, label %do_journal_discard.exit.lor.lhs.false_crit_edge

do_journal_discard.exit.lor.lhs.false_crit_edge:  ; preds = %do_journal_discard.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end62:                                         ; preds = %do_journal_discard.exit
  %93 = ptrtoint ptr %cur_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_idx, align 8
  %add64 = add i32 %94, 1
  %95 = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 14
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %95, align 2
  %conv66 = zext i16 %97 to i32
  %rem67 = urem i32 %add64, %conv66
  %discard_idx = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 19, i32 3
  %98 = ptrtoint ptr %discard_idx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %discard_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem67, i32 %99)
  %cmp68 = icmp eq i32 %rem67, %99
  br i1 %cmp68, label %outthread-pre-split, label %if.end71

if.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %cur_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %rem67, ptr %cur_idx, align 8
  %nr_this_dev = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 11, i32 0, i32 3
  %101 = ptrtoint ptr %nr_this_dev to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nr_this_dev, align 4
  %conv74 = zext i16 %102 to i64
  %shl = shl i64 %conv74, 51
  %arrayidx77 = getelementptr %struct.cache, ptr %2, i32 0, i32 1, i32 15, i32 %rem67
  %103 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx77, align 8
  %conv.i157 = and i64 %104, 4294967295
  %bucket_bits.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %105 = ptrtoint ptr %bucket_bits.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %bucket_bits.i, align 8
  %sh_prom.i = zext i16 %106 to i64
  %shl.i158 = shl i64 %conv.i157, %sh_prom.i
  %shl80 = shl i64 %shl.i158, 8
  %or = or i64 %shl80, %shl
  %ptr = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 10, i32 0, i32 2
  %107 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %or, ptr %ptr, align 8
  %reclaimed_journal_buckets = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 78
  %call.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reclaimed_journal_buckets, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %reclaimed_journal_buckets, i32 1, i32 3, i32 1) #11
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reclaimed_journal_buckets, ptr %reclaimed_journal_buckets, i32 1, ptr elementtype(i32) %reclaimed_journal_buckets) #11, !srcloc !130
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 10, i32 0, i32 1
  %109 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 -8070450532247928832, ptr %0, align 8
  %bucket_size = getelementptr inbounds %struct.cache, ptr %2, i32 0, i32 1, i32 11, i32 0, i32 4
  %111 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bucket_size, align 8
  %block_bits = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 25
  %113 = ptrtoint ptr %block_bits to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %block_bits, align 2
  %conv84 = zext i16 %114 to i32
  %shr = lshr i32 %112, %conv84
  %115 = ptrtoint ptr %blocks_free to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shr, ptr %blocks_free, align 8
  br label %out

outthread-pre-split:                              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %blocks_free to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr = load i32, ptr %blocks_free, align 8
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end71
  %117 = phi i32 [ %.pr, %outthread-pre-split ], [ %shr, %if.end71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool89.not = icmp eq i32 %117, 0
  br i1 %tobool89.not, label %out.if.end108_crit_edge, label %out.lor.lhs.false_crit_edge

out.lor.lhs.false_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

out.if.end108_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

lor.lhs.false:                                    ; preds = %out.lor.lhs.false_crit_edge, %do_journal_discard.exit.lor.lhs.false_crit_edge
  %size = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 2
  %118 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size, align 8
  %120 = ptrtoint ptr %back36 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %back36, align 4
  %122 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pin, align 8
  %sub98 = sub i32 %121, %123
  %124 = ptrtoint ptr %mask43 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mask43, align 4
  %and102 = and i32 %sub98, %125
  %sub103 = sub i32 %119, %and102
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub103)
  %cmp104 = icmp ult i32 %sub103, 2
  br i1 %cmp104, label %lor.lhs.false.if.end108_crit_edge, label %if.then106

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then106:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %wait = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 3
  tail call void @__closure_wake_up(ptr noundef %wait) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %lor.lhs.false.if.end108_crit_edge, %out.if.end108_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btree_flush_write(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  %btree_nodes = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %btree_nodes) #11
  %journal = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66
  %btree_flushing = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 2
  %0 = ptrtoint ptr %btree_flushing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btree_flushing, align 8, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flush_write_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 1
  tail call void @_raw_spin_lock(ptr noundef %flush_write_lock) #11
  %2 = ptrtoint ptr %btree_flushing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btree_flushing, align 8, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %btree_flushing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %btree_flushing, align 8
  tail call void @_raw_spin_unlock(ptr noundef %flush_write_lock) #11
  tail call void @_raw_spin_lock(ptr noundef %journal) #11
  %pin = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9
  %data = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %7 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin, align 8
  %arrayidx = getelementptr %struct.atomic_t, ptr %6, i32 %8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp slt i32 %10, 1
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  br i1 %cmp, label %if.end8.out_crit_edge, label %if.end20

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %if.end8
  %mask25 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 66, i32 9, i32 3
  %11 = ptrtoint ptr %mask25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask25, align 4
  %flush_write = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 79
  %call.i.i218 = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_write, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %flush_write, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flush_write, ptr %flush_write, i32 1, ptr elementtype(i32) %flush_write) #11, !srcloc !130
  %14 = call ptr @memset(ptr %btree_nodes, i32 0, i32 32)
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #11
  %btree_cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 27
  %prev = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 27, i32 1
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev, align 4
  %cmp32.not243 = icmp eq ptr %16, %btree_cache
  br i1 %cmp32.not243, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #11
  br label %out

for.body.lr.ph:                                   ; preds = %if.end20
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn216245 = phi ptr [ %16, %for.body.lr.ph ], [ %.pn247, %for.inc.for.body_crit_edge ]
  %nr.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %nr.1, %for.inc.for.body_crit_edge ]
  %b.0246 = getelementptr i8, ptr %.pn216245, i32 -584
  %.pn247.in = getelementptr inbounds %struct.list_head, ptr %.pn216245, i32 0, i32 1
  %17 = ptrtoint ptr %.pn247.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn247 = load ptr, ptr %.pn247.in, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %20 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pin, align 8
  %arrayidx39 = getelementptr %struct.atomic_t, ptr %19, i32 %21
  %cmp40.not = icmp eq ptr %arrayidx39, %arrayidx
  br i1 %cmp40.not, label %if.end42, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end42:                                         ; preds = %for.body
  %call.i.i219 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0244, i32 %23)
  %cmp44.not = icmp ult i32 %nr.0244, %23
  br i1 %cmp44.not, label %if.end46, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end46:                                         ; preds = %if.end42
  %flags.i = getelementptr i8, ptr %.pn216245, i32 -312
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end46.if.end51_crit_edge, label %do.end

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #14
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.end46.if.end51_crit_edge
  %write_lock = getelementptr i8, ptr %.pn216245, i32 -404
  tail call void @mutex_lock_nested(ptr noundef %write_lock, i32 noundef 0) #11
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i224.not = icmp eq i32 %29, 0
  br i1 %tobool.i224.not, label %if.end51.for.inc.sink.split_crit_edge, label %if.end55

if.end51.for.inc.sink.split_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.end55:                                         ; preds = %if.end51
  %writes.i = getelementptr i8, ptr %.pn216245, i32 108
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = lshr i32 %31, 2
  %.lobit.i = and i32 %32, 1
  %add.ptr.i = getelementptr %struct.btree_write, ptr %writes.i, i32 %.lobit.i
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %tobool58.not = icmp eq ptr %34, null
  br i1 %tobool58.not, label %if.end55.for.inc.sink.split_crit_edge, label %if.end61

if.end55.for.inc.sink.split_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.end61:                                         ; preds = %if.end55
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i, align 4
  %37 = lshr i32 %36, 2
  %.lobit.i227 = and i32 %37, 1
  %add.ptr.i228 = getelementptr %struct.btree_write, ptr %writes.i, i32 %.lobit.i227
  %38 = ptrtoint ptr %add.ptr.i228 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i228, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %and = and i32 %sub.ptr.div, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp64.not = icmp eq i32 %and, 0
  br i1 %cmp64.not, label %if.end67, label %if.end61.for.inc.sink.split_crit_edge

if.end61.for.inc.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.end67:                                         ; preds = %if.end61
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #11
  tail call void @mutex_unlock(ptr noundef %write_lock) #11
  %inc = add nuw i32 %nr.0244, 1
  %arrayidx69 = getelementptr [8 x ptr], ptr %btree_nodes, i32 0, i32 %nr.0244
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b.0246, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp70 = icmp eq i32 %inc, 8
  br i1 %cmp70, label %for.end.thread255, label %if.end67.for.inc_crit_edge

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.end.thread255:                                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #11
  br label %for.body81.preheader

for.inc.sink.split:                               ; preds = %if.end61.for.inc.sink.split_crit_edge, %if.end55.for.inc.sink.split_crit_edge, %if.end51.for.inc.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %write_lock) #11
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end67.for.inc_crit_edge
  %nr.1 = phi i32 [ %inc, %if.end67.for.inc_crit_edge ], [ %nr.0244, %for.inc.sink.split ]
  %cmp32.not = icmp eq ptr %.pn247, %btree_cache
  br i1 %cmp32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42.for.end_crit_edge, %for.body.for.end_crit_edge
  %nr.2 = phi i32 [ %nr.1, %for.inc.for.end_crit_edge ], [ %nr.0244, %for.body.for.end_crit_edge ], [ %nr.0244, %if.end42.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.2)
  %cmp80251.not = icmp eq i32 %nr.2, 0
  br i1 %cmp80251.not, label %for.end.out_crit_edge, label %for.end.for.body81.preheader_crit_edge

for.end.for.body81.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81.preheader

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body81.preheader:                             ; preds = %for.end.for.body81.preheader_crit_edge, %for.end.thread255
  %nr.2258 = phi i32 [ 8, %for.end.thread255 ], [ %nr.2, %for.end.for.body81.preheader_crit_edge ]
  br label %for.body81

for.body81:                                       ; preds = %for.inc140.for.body81_crit_edge, %for.body81.preheader
  %i.0252 = phi i32 [ %inc141, %for.inc140.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx82 = getelementptr [8 x ptr], ptr %btree_nodes, i32 0, i32 %i.0252
  %41 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %42, null
  br i1 %tobool83.not, label %do.end87, label %if.end90

do.end87:                                         ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %i.0252) #14
  br label %for.inc140

if.end90:                                         ; preds = %for.body81
  %flags.i230 = getelementptr inbounds %struct.btree, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i230, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i231.not = icmp eq i32 %45, 0
  br i1 %tobool.i231.not, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, ptr noundef nonnull %42) #14
  br label %for.inc140

if.end98:                                         ; preds = %if.end90
  %write_lock99 = getelementptr inbounds %struct.btree, ptr %42, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %write_lock99, i32 noundef 0) #11
  %writes.i232 = getelementptr inbounds %struct.btree, ptr %42, i32 0, i32 15
  %46 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i230, align 4
  %48 = lshr i32 %47, 2
  %.lobit.i234 = and i32 %48, 1
  %add.ptr.i235 = getelementptr %struct.btree_write, ptr %writes.i232, i32 %.lobit.i234
  %49 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i235, align 4
  %tobool102.not = icmp eq ptr %50, null
  br i1 %tobool102.not, label %if.then103, label %if.end116

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i230) #11
  tail call void @mutex_unlock(ptr noundef %write_lock99) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btree_flush_write.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btree_flush_write, %if.then112)) #11
          to label %for.inc140 [label %if.then112], !srcloc !121

if.then112:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btree_flush_write.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.43, ptr noundef nonnull %42) #11
  br label %for.inc140

if.end116:                                        ; preds = %if.end98
  %51 = ptrtoint ptr %flags.i230 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i230, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i237.not = icmp eq i32 %53, 0
  br i1 %tobool.i237.not, label %if.then118, label %if.end137

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i230) #11
  tail call void @mutex_unlock(ptr noundef %write_lock99) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btree_flush_write.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btree_flush_write, %if.then133)) #11
          to label %for.inc140 [label %if.then133], !srcloc !121

if.then133:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btree_flush_write.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.43, ptr noundef nonnull %42) #11
  br label %for.inc140

if.end137:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__bch_btree_node_write(ptr noundef nonnull %42, ptr noundef null) #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i230) #11
  tail call void @mutex_unlock(ptr noundef %write_lock99) #11
  br label %for.inc140

for.inc140:                                       ; preds = %if.end137, %if.then133, %if.then118, %if.then112, %if.then103, %do.end95, %do.end87
  %inc141 = add nuw i32 %i.0252, 1
  %exitcond.not = icmp eq i32 %inc141, %nr.2258
  br i1 %exitcond.not, label %for.inc140.out_crit_edge, label %for.inc140.for.body81_crit_edge

for.inc140.for.body81_crit_edge:                  ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

for.inc140.out_crit_edge:                         ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc140.out_crit_edge, %for.end.out_crit_edge, %for.end.thread, %if.end8.out_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %flush_write_lock) #11
  %54 = ptrtoint ptr %btree_flushing to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %btree_flushing, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %flush_write_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %btree_nodes) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_journal_entry_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_journal_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_discard_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %bio, i32 -4816
  %discard_in_flight = getelementptr i8, ptr %bio, i32 -52
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_in_flight, i32 noundef 4) #11
  %0 = ptrtoint ptr %discard_in_flight to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %discard_in_flight, align 4
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr3, align 8
  %wait = getelementptr inbounds %struct.cache_set, ptr %2, i32 0, i32 66, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @__closure_wake_up(ptr noundef %wait) #11
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr3, align 8
  tail call void @closure_put(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_discard_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %discard_bio = getelementptr i8, ptr %work, i32 48
  tail call void @submit_bio(ptr noundef %discard_bio) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bch_btree_node_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write_unlocked(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cl, i32 -47712
  %cache = getelementptr i8, ptr %cl, i32 -46524
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %journal = getelementptr i8, ptr %cl, i32 -96
  %cur = getelementptr i8, ptr %cl, i32 312
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %4 = getelementptr i8, ptr %cl, i32 216
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %keys = getelementptr inbounds %struct.jset, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keys, align 4
  %mul = shl i32 %8, 3
  %block_size = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 1
  %9 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %block_size, align 8
  %conv = zext i16 %10 to i32
  %shl = shl nuw nsw i32 %conv, 9
  %add2 = add i32 %mul, 239
  %sub = add i32 %add2, %shl
  %div = udiv i32 %sub, %shl
  %mul10 = mul i32 %div, %conv
  %need_write = getelementptr inbounds %struct.journal_write, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %need_write to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %need_write, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #11
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %13 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @journal_write_unlock, ptr %fn1.i, align 4
  %14 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %cleanup

if.else:                                          ; preds = %entry
  %blocks_free = getelementptr i8, ptr %cl, i32 176
  %15 = ptrtoint ptr %blocks_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %if.else.if.then23_crit_edge, label %lor.lhs.false

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  %pin = getelementptr i8, ptr %cl, i32 192
  %size = getelementptr i8, ptr %cl, i32 200
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 8
  %back = getelementptr i8, ptr %cl, i32 196
  %19 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %back, align 4
  %21 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin, align 8
  %sub18 = sub i32 %20, %22
  %mask = getelementptr i8, ptr %cl, i32 204
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %and = and i32 %sub18, %24
  %sub21 = sub i32 %18, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub21)
  %cmp = icmp ult i32 %sub21, 2
  br i1 %cmp, label %lor.lhs.false.if.then23_crit_edge, label %if.end28

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.else.if.then23_crit_edge
  tail call fastcc void @journal_reclaim(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  tail call fastcc void @btree_flush_write(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_journal_wq to i32))
  %25 = load ptr, ptr @bch_journal_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #11
  %fn1.i257 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %26 = ptrtoint ptr %fn1.i257 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @journal_write, ptr %fn1.i257, align 4
  %27 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %sub46 = sub i32 %16, %div
  %28 = ptrtoint ptr %blocks_free to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub46, ptr %blocks_free, align 8
  %root = getelementptr i8, ptr %cl, i32 -804
  %29 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %root, align 4
  %level = getelementptr inbounds %struct.btree, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %level, align 2
  %conv47 = zext i8 %32 to i16
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %btree_level = getelementptr inbounds %struct.jset, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %btree_level to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv47, ptr %btree_level, align 8
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.jset, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %root, align 4
  %39 = getelementptr inbounds %struct.btree, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  %sh.diff.i = lshr i64 %41, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %42 = call ptr @memcpy(ptr %37, ptr %39, i32 %mul.i)
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.jset, ptr %43, i32 0, i32 6
  %45 = getelementptr i8, ptr %cl, i32 -672
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %45, align 8
  %sh.diff.i258 = lshr i64 %47, 57
  %tr.sh.diff.i259 = trunc i64 %sh.diff.i258 to i32
  %conv.i.i260 = and i32 %tr.sh.diff.i259, 56
  %mul.i261 = add nuw nsw i32 %conv.i.i260, 16
  %48 = call ptr @memcpy(ptr %44, ptr %45, i32 %mul.i261)
  %prio_buckets = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 10
  %49 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prio_buckets, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  %53 = load ptr, ptr %3, align 4
  %nr_this_dev = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 3
  %54 = ptrtoint ptr %nr_this_dev to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nr_this_dev, align 4
  %idxprom = zext i16 %55 to i32
  %arrayidx56 = getelementptr %struct.jset, ptr %53, i32 0, i32 10, i32 %idxprom
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %52, ptr %arrayidx56, align 8
  %57 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %xor.i = xor i64 %59, 2617213439241769010
  %60 = load ptr, ptr %3, align 4
  %magic = getelementptr inbounds %struct.jset, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %magic to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %xor.i, ptr %magic, align 8
  %62 = load ptr, ptr %3, align 4
  %version = getelementptr inbounds %struct.jset, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %version, align 8
  %seq = getelementptr i8, ptr %cl, i32 184
  %64 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seq, align 8
  %66 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %back, align 4
  %68 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pin, align 8
  %sub68 = sub i32 %67, %69
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mask, align 4
  %and72 = and i32 %sub68, %71
  %conv73 = zext i32 %and72 to i64
  %sub74 = add i64 %65, 1
  %add75 = sub i64 %sub74, %conv73
  %72 = load ptr, ptr %3, align 4
  %last_seq = getelementptr inbounds %struct.jset, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %last_seq to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %add75, ptr %last_seq, align 8
  %74 = load ptr, ptr %3, align 4
  %add.ptr78 = getelementptr i8, ptr %74, i32 8
  %75 = getelementptr inbounds %struct.jset, ptr %74, i32 0, i32 11
  %keys81 = getelementptr inbounds %struct.jset, ptr %74, i32 0, i32 4
  %76 = ptrtoint ptr %keys81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %keys81, align 4
  %add.ptr.i = getelementptr i64, ptr %75, i32 %77
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr78 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call.i = tail call i64 @crc64_be(i64 noundef -1, ptr noundef %add.ptr78, i32 noundef %sub.ptr.sub) #15
  %xor.i262 = xor i64 %call.i, -1
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %xor.i262, ptr %74, align 8
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %4, align 8
  %81 = and i64 %80, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %cmp89283.not = icmp eq i64 %81, 0
  br i1 %cmp89283.not, label %if.end28.do.body115_crit_edge, label %for.body.lr.ph, !prof !152

if.end28.do.body115_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

for.body.lr.ph:                                   ; preds = %if.end28
  %shl95 = shl i32 %mul10, 9
  %conv101 = zext i32 %mul10 to i64
  %add102280 = shl nuw nsw i64 %conv101, 8
  br label %for.body

for.body:                                         ; preds = %bio_list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bio_list_add.exit.for.body_crit_edge ]
  %list.sroa.0.0285 = phi ptr [ null, %for.body.lr.ph ], [ %list.sroa.0.1, %bio_list_add.exit.for.body_crit_edge ]
  %list.sroa.7.0284 = phi ptr [ null, %for.body.lr.ph ], [ %bio93, %bio_list_add.exit.for.body_crit_edge ]
  %82 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cache, align 4
  %journal92 = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19
  %bio93 = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8
  %meta_sectors_written = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %meta_sectors_written, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %meta_sectors_written, i32 1, i32 3, i32 1) #11
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %meta_sectors_written, ptr %meta_sectors_written, i32 %mul10, ptr elementtype(i32) %meta_sectors_written) #11, !srcloc !130
  tail call void @bio_reset(ptr noundef %bio93) #11
  %arrayidx.i = getelementptr %struct.bkey, ptr %4, i32 0, i32 2, i32 %i.0286
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx.i, align 8
  %shr.i263 = lshr i64 %86, 8
  %and.i264 = and i64 %shr.i263, 8796093022207
  %bi_iter = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 8
  %87 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %and.i264, ptr %bi_iter, align 8
  %bdev = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 6
  %88 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 3
  %90 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %91, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 1
  %92 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %93, %89
  br i1 %cmp.not.i, label %for.body.bio_set_dev.exit_crit_edge, label %if.then.i

for.body.bio_set_dev.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %91, -2177
  %94 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %for.body.bio_set_dev.exit_crit_edge
  %95 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %89, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio93) #11
  %bi_size = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 8, i32 1
  %96 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shl95, ptr %bi_size, align 8
  %bi_end_io = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 10
  %97 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @journal_write_endio, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 11
  %98 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %3, ptr %bi_private, align 4
  %bi_opf.i = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 8, i32 2
  %99 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 399361, ptr %bi_opf.i, align 8
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 4
  tail call void @bch_bio_map(ptr noundef %bio93, ptr noundef %101) #11
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %3, align 4
  %keys99 = getelementptr inbounds %struct.jset, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %keys99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %keys99, align 4
  tail call fastcc void @trace_bcache_journal_write(ptr noundef %bio93, i32 noundef %105)
  %106 = ptrtoint ptr %bio93 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %bio93, align 8
  %tobool.not.i = icmp eq ptr %list.sroa.7.0284, null
  br i1 %tobool.not.i, label %bio_set_dev.exit.bio_list_add.exit_crit_edge, label %if.then.i266

bio_set_dev.exit.bio_list_add.exit_crit_edge:     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_list_add.exit

if.then.i266:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %list.sroa.7.0284 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %bio93, ptr %list.sroa.7.0284, align 8
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.then.i266, %bio_set_dev.exit.bio_list_add.exit_crit_edge
  %list.sroa.0.1 = phi ptr [ %list.sroa.0.0285, %if.then.i266 ], [ %bio93, %bio_set_dev.exit.bio_list_add.exit_crit_edge ]
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i, align 8
  %and.i271 = and i64 %109, -2251799813684993
  %.mask = and i64 %109, 2251799813684992
  %and1.i = add nuw nsw i64 %.mask, %add102280
  %shl.i = and i64 %and1.i, 2251799813684992
  %or.i = or i64 %shl.i, %and.i271
  store i64 %or.i, ptr %arrayidx.i, align 8
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 4
  %seq104 = getelementptr inbounds %struct.jset, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %seq104 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %seq104, align 8
  %cur_idx = getelementptr inbounds %struct.cache, ptr %83, i32 0, i32 19, i32 1
  %114 = ptrtoint ptr %cur_idx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_idx, align 8
  %arrayidx108 = getelementptr [256 x i64], ptr %journal92, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %113, ptr %arrayidx108, align 8
  %inc = add i32 %i.0286, 1
  %conv87 = zext i32 %inc to i64
  %117 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %4, align 8
  %shr.i = lshr i64 %118, 60
  %and.i = and i64 %shr.i, 7
  %cmp89 = icmp ugt i64 %and.i, %conv87
  br i1 %cmp89, label %bio_list_add.exit.for.body_crit_edge, label %do.body109

bio_list_add.exit.for.body_crit_edge:             ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body109:                                       ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 0
  br i1 %phi.cmp, label %do.body109.do.body115_crit_edge, label %do.body124, !prof !122

do.body109.do.body115_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

do.body115:                                       ; preds = %do.body109.do.body115_crit_edge, %if.end28.do.body115_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #11, !srcloc !153
  unreachable

do.body124:                                       ; preds = %do.body109
  %data127 = getelementptr i8, ptr %cl, i32 208
  %119 = ptrtoint ptr %data127 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data127, align 8
  %121 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %back, align 4
  %sub131 = add i32 %122, -1
  %123 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mask, align 4
  %and135 = and i32 %sub131, %124
  %arrayidx136 = getelementptr %struct.atomic_t, ptr %120, i32 %and135
  %call.i.i256 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx136, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr %arrayidx136, i32 1, i32 3, i32 1) #11
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx136, ptr %arrayidx136, i32 1, ptr elementtype(i32) %arrayidx136) #11, !srcloc !144
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %125, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp138 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp138, label %do.body147, label %do.end155, !prof !122

do.body147:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 798, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

do.end155:                                        ; preds = %do.body124
  tail call void @bch_journal_next(ptr noundef %journal)
  tail call fastcc void @journal_reclaim(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  %tobool.not.i272288 = icmp eq ptr %list.sroa.0.1, null
  br i1 %tobool.not.i272288, label %do.end155.do.body161_crit_edge, label %if.then.i273.lr.ph

do.end155.do.body161_crit_edge:                   ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body161

if.then.i273.lr.ph:                               ; preds = %do.end155
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %flags.i = getelementptr i8, ptr %cl, i32 -46536
  br label %if.then.i273

if.then.i273:                                     ; preds = %closure_bio_submit.exit.if.then.i273_crit_edge, %if.then.i273.lr.ph
  %list.sroa.0.2289 = phi ptr [ %list.sroa.0.1, %if.then.i273.lr.ph ], [ %127, %closure_bio_submit.exit.if.then.i273_crit_edge ]
  %126 = ptrtoint ptr %list.sroa.0.2289 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %list.sroa.0.2289, align 8
  store ptr null, ptr %list.sroa.0.2289, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #11
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !122

do.body2.i.i:                                     ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

closure_get.exit.i:                               ; preds = %if.then.i273
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %flags.i, align 4
  %131 = and i32 %130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i275 = icmp eq i32 %131, 0
  br i1 %tobool.not.i275, label %if.end.i277, label %if.then.i276, !prof !128

if.then.i276:                                     ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %list.sroa.0.2289, i32 0, i32 6
  %132 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %list.sroa.0.2289) #11
  br label %closure_bio_submit.exit

if.end.i277:                                      ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @submit_bio_noacct(ptr noundef nonnull %list.sroa.0.2289) #11
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i277, %if.then.i276
  %tobool.not.i272 = icmp eq ptr %127, null
  br i1 %tobool.not.i272, label %closure_bio_submit.exit.do.body161_crit_edge, label %closure_bio_submit.exit.if.then.i273_crit_edge

closure_bio_submit.exit.if.then.i273_crit_edge:   ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i273

closure_bio_submit.exit.do.body161_crit_edge:     ; preds = %closure_bio_submit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body161

do.body161:                                       ; preds = %closure_bio_submit.exit.do.body161_crit_edge, %do.end155.do.body161_crit_edge
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #11
  %fn1.i278 = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %133 = ptrtoint ptr %fn1.i278 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @journal_write_done, ptr %fn1.i278, align 4
  %134 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %do.body161, %if.then23, %do.body
  %.sink = phi i32 [ 1073741825, %do.body161 ], [ 1073741825, %if.then23 ], [ 1006632961, %do.body ]
  tail call void @closure_sub(ptr noundef %cl, i32 noundef %.sink) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write_unlock(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %journal = getelementptr i8, ptr %cl, i32 -96
  %io_in_flight = getelementptr i8, ptr %cl, i32 72
  %0 = ptrtoint ptr %io_in_flight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %io_in_flight, align 8
  tail call void @_raw_spin_unlock(ptr noundef %journal) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %journal = getelementptr i8, ptr %cl, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %journal) #11
  tail call void @journal_write_unlocked(ptr noundef %cl)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %c = getelementptr inbounds %struct.journal_write, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %call = tail call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %5, ptr noundef nonnull @.str.55) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %c1 = getelementptr inbounds %struct.journal_write, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c1, align 4
  %io = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 66, i32 4
  tail call void @closure_put(ptr noundef %io) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_journal_write(ptr noundef %bio, i32 noundef %keys) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_write, i32 0, i32 1), ptr blockaddress(@trace_bcache_journal_write, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !128

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %call42 = tail call i32 @__traceiter_bcache_journal_write(ptr noundef null, ptr noundef %bio, i32 noundef %keys) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !128

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_journal_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_journal_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_bcache_journal_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 248, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @journal_write_done(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr i8, ptr %cl, i32 312
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 8
  %w1 = getelementptr i8, ptr %cl, i32 280
  %cmp = icmp eq ptr %1, %w1
  %. = select i1 %cmp, i32 296, i32 280
  %2 = getelementptr i8, ptr %cl, i32 %.
  %wait = getelementptr inbounds %struct.journal_write, ptr %2, i32 0, i32 2
  tail call void @__closure_wake_up(ptr noundef %wait) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bch_journal_wq to i32))
  %3 = load ptr, ptr @bch_journal_wq, align 4
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #11
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %4 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @journal_write, ptr %fn1.i, align 4
  %5 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %entry
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #11
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %9 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %7, ptr noundef %cl) #11
  br i1 %call.i.i, label %do.body2.i.closure_queue.exit_crit_edge, label %do.body12.i, !prof !128

do.body2.i.closure_queue.exit_crit_edge:          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %closure_queue.exit

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #11, !srcloc !142
  unreachable

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn1.i, align 4
  tail call void %12(ptr noundef %cl) #11
  br label %closure_queue.exit

closure_queue.exit:                               ; preds = %if.else.i, %do.body2.i.closure_queue.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_cache_set_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_journal_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/journal.c", i32 190, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bch_journal_read.__UNIQUE_ID_ddebug342, !1, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/md/bcache/journal.c", i32 215, i32 2}
!9 = !{ptr @bch_journal_read.__UNIQUE_ID_ddebug343, !8, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/bcache/journal.c", i32 230, i32 2}
!13 = !{ptr @bch_journal_read.__UNIQUE_ID_ddebug344, !12, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/bcache/journal.c", i32 250, i32 2}
!17 = !{ptr @bch_journal_read.__UNIQUE_ID_ddebug345, !16, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/bcache/journal.c", i32 365, i32 5}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bch_journal_replay._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @bch_journal_replay._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/bcache/journal.c", i32 368, i32 5}
!26 = !{ptr @bch_journal_replay._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bch_journal_replay._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/journal.c", i32 398, i32 2}
!30 = !{ptr @bch_journal_replay._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bch_journal_replay._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/bcache/journal.c", i32 697, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bch_journal_next.__UNIQUE_ID_ddebug348, !33, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!36 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bch_journal_alloc.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/md/bcache/journal.c", i32 969, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bch_journal_alloc.__key.23, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/md/bcache/journal.c", i32 970, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @bch_journal_alloc.__key.25, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/md/bcache/journal.c", i32 971, i32 2}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bch_journal_alloc.__key.27, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/bcache/journal.c", i32 50, i32 2}
!50 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @journal_read_bucket.__UNIQUE_ID_ddebug338, !49, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!52 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/bcache/journal.c", i32 81, i32 5}
!55 = !{ptr @journal_read_bucket.__UNIQUE_ID_ddebug341, !54, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!56 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/bcache/journal.c", i32 87, i32 5}
!59 = !{ptr @journal_read_bucket._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @journal_read_bucket._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/bcache/journal.c", i32 96, i32 5}
!63 = !{ptr @journal_read_bucket._entry.35, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @journal_read_bucket._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/trace/events/bcache.h", i32 209, i32 1}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!69 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!72 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/trace/events/bcache.h", i32 219, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/trace/events/bcache.h", i32 214, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @do_journal_discard.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/md/bcache/journal.c", i32 623, i32 3}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/bcache/journal.c", i32 476, i32 4}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @btree_flush_write._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @btree_flush_write._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/bcache/journal.c", i32 529, i32 4}
!89 = !{ptr @btree_flush_write._entry.44, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @btree_flush_write._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/bcache/journal.c", i32 535, i32 4}
!93 = !{ptr @btree_flush_write._entry.47, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @btree_flush_write._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/md/bcache/journal.c", i32 543, i32 4}
!97 = !{ptr @btree_flush_write.__UNIQUE_ID_ddebug346, !96, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!98 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/bcache/journal.c", i32 550, i32 4}
!101 = !{ptr @btree_flush_write.__UNIQUE_ID_ddebug347, !100, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!102 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @closure_queue.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/md/bcache/closure.h", i32 247, i32 3}
!105 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/bcache/journal.c", i32 704, i32 2}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/trace/events/bcache.h", i32 224, i32 1}
!110 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148423496, i64 2148423501, i64 2148423514, i64 2148423558, i64 2148423592, i64 2148423613}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2155153070, i64 2155153562, i64 2155153107, i64 2155153163, i64 2155153197, i64 2155153221, i64 2155153262, i64 2155153283, i64 2155153311, i64 2155153345}
!124 = !{i64 2148684333}
!125 = !{i64 2148599618, i64 2148599650, i64 2148599679, i64 2148599713, i64 2148599744, i64 2148599767}
!126 = !{i64 2148684562}
!127 = !{i64 2154404200, i64 2154404692, i64 2154404237, i64 2154404293, i64 2154404327, i64 2154404351, i64 2154404392, i64 2154404413, i64 2154404441, i64 2154404475}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2155170988, i64 2155171480, i64 2155171025, i64 2155171081, i64 2155171115, i64 2155171139, i64 2155171180, i64 2155171201, i64 2155171229, i64 2155171263}
!130 = !{i64 2148598898, i64 2148598924, i64 2148598953, i64 2148598987, i64 2148599018, i64 2148599041}
!131 = !{i64 2155178220, i64 2155178712, i64 2155178257, i64 2155178313, i64 2155178347, i64 2155178371, i64 2155178412, i64 2155178433, i64 2155178461, i64 2155178495}
!132 = !{i8 0, i8 2}
!133 = !{i64 2155184049, i64 2155184541, i64 2155184086, i64 2155184142, i64 2155184176, i64 2155184200, i64 2155184241, i64 2155184262, i64 2155184290, i64 2155184324}
!134 = !{i64 2148601363, i64 2148601389, i64 2148601418, i64 2148601452, i64 2148601483, i64 2148601506}
!135 = !{i64 2154689395}
!136 = !{i64 2154689610}
!137 = !{i64 2149586987}
!138 = !{i64 2149588023}
!139 = !{i64 2155210997, i64 2155211489, i64 2155211034, i64 2155211090, i64 2155211124, i64 2155211148, i64 2155211189, i64 2155211210, i64 2155211238, i64 2155211272}
!140 = !{i64 2155229151, i64 2155233704, i64 2155229188, i64 2155229244, i64 2155229278, i64 2155229302, i64 2155229343, i64 2155229364, i64 2155229392, i64 2155229426}
!141 = !{i64 2154395055}
!142 = !{i64 2154402290, i64 2154402782, i64 2154402327, i64 2154402383, i64 2154402417, i64 2154402441, i64 2154402482, i64 2154402503, i64 2154402531, i64 2154402565}
!143 = !{i64 2148687374}
!144 = !{i64 2148602083, i64 2148602115, i64 2148602144, i64 2148602178, i64 2148602209, i64 2148602232}
!145 = !{i64 2148687603}
!146 = !{i64 2155236562, i64 2155237054, i64 2155236599, i64 2155236655, i64 2155236689, i64 2155236713, i64 2155236754, i64 2155236775, i64 2155236803, i64 2155236837}
!147 = !{i64 2154726646}
!148 = !{i64 2154726861}
!149 = !{i64 2154710094}
!150 = !{i64 2154710297}
!151 = !{i64 2154406151}
!152 = !{!"branch_weights", i32 1073205, i32 2146410443}
!153 = !{i64 2155221074, i64 2155221566, i64 2155221111, i64 2155221167, i64 2155221201, i64 2155221225, i64 2155221266, i64 2155221287, i64 2155221315, i64 2155221349}
!154 = !{i64 2155223106, i64 2155223598, i64 2155223143, i64 2155223199, i64 2155223233, i64 2155223257, i64 2155223298, i64 2155223319, i64 2155223347, i64 2155223381}
!155 = !{i64 2154743488}
!156 = !{i64 2154743709}
