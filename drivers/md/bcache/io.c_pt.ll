; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/io.c_pt.bc'
source_filename = "../drivers/md/bcache/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.95, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.90 }
%struct.rb_root = type { ptr }
%struct.anon.90 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.91, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.91 = type { [8 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.95 = type { [8 x i64] }
%struct.closure = type { %union.anon.75, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon.75 = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.96, %union.anon.97, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.96 = type { i32, i32, i32, i32, ptr }
%union.anon.97 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.bbio = type { i32, %union.anon.101, %struct.bio }
%union.anon.101 = type { [3 x i64] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.77, [32 x i8], i64, i64, i64, i64, i64, %union.anon.78, i32, i16, %union.anon.81, [256 x i64] }
%union.anon.77 = type { i64, [8 x i8] }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i16, i16, i16, i32 }
%union.anon.81 = type { i16 }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.cached_dev = type { %struct.list_head, %struct.bcache_device, ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.closure, %struct.semaphore, %struct.refcount_struct, %struct.work_struct, %struct.atomic_t, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.bch_ratelimit, %struct.delayed_work, %struct.semaphore, ptr, ptr, %struct.keybuf, ptr, %struct.closure_waitlist, %struct.atomic_t, [128 x %struct.io], [129 x %struct.hlist_head], %struct.list_head, %struct.spinlock, %struct.cache_accounting, i32, i8, i8, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32 }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.io = type { %struct.hlist_node, %struct.list_head, i32, i32, i64 }

@bch_count_backing_io_errors.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/bcache/io.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NULL pointer of struct cached_dev\00", [62 x i8] zeroinitializer }, align 32
@bch_count_backing_io_errors._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bch_count_backing_io_errors = private unnamed_addr constant [28 x i8] c"bch_count_backing_io_errors\00", align 1
@bch_count_backing_io_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.bch_count_backing_io_errors, ptr @.str, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014bcache: %s() %pg: Read-ahead I/O failed on backing device, ignore\0A\00", [59 x i8] zeroinitializer }, align 32
@bch_count_backing_io_errors._entry_ptr = internal global ptr @bch_count_backing_io_errors._entry, section ".printk_index", align 4
@bch_count_backing_io_errors._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.bch_count_backing_io_errors, ptr @.str, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013bcache: %s() %pg: IO error on backing device, unrecoverable\0A\00", [33 x i8] zeroinitializer }, align 32
@bch_count_backing_io_errors._entry_ptr.6 = internal global ptr @bch_count_backing_io_errors._entry.4, section ".printk_index", align 4
@bch_count_io_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bcache: %s() %pg: IO error on %s%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bch_count_io_errors\00", [44 x i8] zeroinitializer }, align 32
@bch_count_io_errors._entry_ptr = internal global ptr @bch_count_io_errors._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", recovering.\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pg: too many IO errors %s\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 59, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 75, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 126, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [26 x i8] c"../drivers/md/bcache/io.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 131, i32 10 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @bch_count_backing_io_errors._entry, ptr @bch_count_backing_io_errors._entry.4, ptr @bch_count_backing_io_errors._entry_ptr, ptr @bch_count_backing_io_errors._entry_ptr.6, ptr @bch_count_io_errors._entry, ptr @bch_count_io_errors._entry_ptr, ptr @.str, ptr @.str.1, ptr @bch_count_backing_io_errors._rs, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_count_backing_io_errors._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_count_backing_io_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_count_backing_io_errors._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_count_io_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bbio_free(ptr noundef %bio, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bio, i32 -32
  %bio_meta = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 20
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %bio_meta) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_bbio_alloc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_meta = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 20
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %bio_meta, i32 noundef 3072) #5
  %bio1 = getelementptr inbounds %struct.bbio, ptr %call, i32 0, i32 2
  %bi_inline_vecs = getelementptr inbounds %struct.bbio, ptr %call, i32 1
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 4
  %2 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket_size.i, align 8
  %div17.i = lshr i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16391, i32 %3)
  %cmp2.i = icmp ugt i32 %3, 16391
  %4 = trunc i32 %div17.i to i16
  %conv = select i1 %cmp2.i, i16 2048, i16 %4
  tail call void @bio_init(ptr noundef %bio1, ptr noundef %bi_inline_vecs, i16 noundef zeroext %conv) #5
  ret ptr %bio1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bch_submit_bbio(ptr noundef %bio, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bio, i32 -32
  %ptr.i = getelementptr i8, ptr %bio, i32 -8
  %0 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ptr.i, align 8
  %shr.i = lshr i64 %1, 8
  %and.i = and i64 %shr.i, 8796093022207
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %and.i, ptr %bi_iter, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %8, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %9 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %10, %6
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i = and i16 %8, -2177
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #5
  %call.i.i = tail call i64 @sched_clock() #5
  %shr.i8 = lshr i64 %call.i.i, 10
  %conv.i = trunc i64 %shr.i8 to i32
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %add.ptr, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %14 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bi_private, align 4
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %15, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #5, !srcloc !34
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %closure_get.exit.i, !prof !36

do.body2.i.i:                                     ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

closure_get.exit.i:                               ; preds = %bio_set_dev.exit
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i9, !prof !38

if.then.i9:                                       ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %20 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #5
  br label %closure_bio_submit.exit

if.end.i:                                         ; preds = %closure_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @submit_bio_noacct(ptr noundef %bio) #5
  br label %closure_bio_submit.exit

closure_bio_submit.exit:                          ; preds = %if.end.i, %if.then.i9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_submit_bbio(ptr noundef %bio, ptr noundef %c, ptr noundef %k, i32 noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr i8, ptr %bio, i32 -24
  tail call void @bch_bkey_copy_single_ptr(ptr noundef %0, ptr noundef %k, i32 noundef %ptr) #5
  tail call void @__bch_submit_bbio(ptr noundef %bio, ptr noundef %c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bkey_copy_single_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_count_backing_io_errors(ptr noundef %dc, ptr nocapture noundef readonly %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dc, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @bch_count_backing_io_errors.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !38

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bch_count_backing_io_errors.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool37.not = icmp eq i32 %2, 0
  br i1 %tobool37.not, label %if.end47, label %if.then38

if.then38:                                        ; preds = %if.end29
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @bch_count_backing_io_errors._rs, ptr noundef nonnull @__func__.bch_count_backing_io_errors) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %if.then38.cleanup_crit_edge, label %do.end43

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %bdev = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %3 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.bch_count_backing_io_errors, ptr noundef %4) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end29
  %io_errors = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 46
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %io_errors, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_errors, ptr %io_errors, i32 1, ptr elementtype(i32) %io_errors) #5, !srcloc !34
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %error_limit = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 47
  %6 = ptrtoint ptr %error_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %7)
  %cmp = icmp ult i32 %asmresult.i.i.i, %7
  br i1 %cmp, label %do.end53, label %if.else

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %bdev55 = getelementptr inbounds %struct.cached_dev, ptr %dc, i32 0, i32 2
  %8 = ptrtoint ptr %bdev55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev55, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bch_count_backing_io_errors, ptr noundef %9) #8
  br label %cleanup

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call zeroext i1 @bch_cached_dev_error(ptr noundef %dc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end53, %do.end43, %if.then38.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_cached_dev_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_count_io_errors(ptr noundef %ca, i8 noundef zeroext %error, i32 noundef %is_read, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca, align 8
  %error_decay = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %error_decay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_decay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %entry
  %io_count = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %io_count, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count, ptr %io_count, i32 1, ptr elementtype(i32) %io_count) #5, !srcloc !34
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca, align 8
  %error_decay270 = getelementptr inbounds %struct.cache_set, ptr %6, i32 0, i32 82
  %7 = ptrtoint ptr %error_decay270 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_decay270, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %8)
  %cmp71 = icmp ugt i32 %asmresult.i.i.i.i, %8
  br i1 %cmp71, label %while.body.lr.ph, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

while.body.lr.ph:                                 ; preds = %if.then
  %io_errors = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i32 [ %8, %while.body.lr.ph ], [ %17, %if.end.while.body_crit_edge ]
  %count.072 = phi i32 [ %asmresult.i.i.i.i, %while.body.lr.ph ], [ %count.1, %if.end.while.body_crit_edge ]
  %sub = sub i32 %count.072, %9
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %io_count, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %while.body
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %io_count, ptr %io_count, i32 %count.072, i32 %sub, ptr elementtype(i32) %io_count) #5, !srcloc !40
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i, i32 %count.072)
  %cmp7 = icmp eq i32 %asmresult3.i.i.i, %count.072
  br i1 %cmp7, label %if.then8, label %atomic_cmpxchg.exit.if.end_crit_edge

atomic_cmpxchg.exit.if.end_crit_edge:             ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8:                                         ; preds = %atomic_cmpxchg.exit
  %call.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_errors, i32 noundef 4) #5
  %11 = ptrtoint ptr %io_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %io_errors, align 4
  br label %do.body

do.body:                                          ; preds = %atomic_cmpxchg.exit66.do.body_crit_edge, %if.then8
  %errors.0 = phi i32 [ %12, %if.then8 ], [ %asmresult3.i.i.i65, %atomic_cmpxchg.exit66.do.body_crit_edge ]
  %conv = zext i32 %errors.0 to i64
  %mul = mul nuw nsw i64 %conv, 127
  %div58 = lshr i64 %mul, 7
  %conv10 = trunc i64 %div58 to i32
  %call.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %io_errors, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i64

do.body.i.i.i64:                                  ; preds = %do.body.i.i.i64.do.body.i.i.i64_crit_edge, %do.body
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %io_errors, ptr %io_errors, i32 %errors.0, i32 %conv10, ptr elementtype(i32) %io_errors) #5, !srcloc !40
  %asmresult.i.i.i62 = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i63 = icmp eq i32 %asmresult.i.i.i62, 0
  br i1 %tobool.not.i.i.i63, label %atomic_cmpxchg.exit66, label %do.body.i.i.i64.do.body.i.i.i64_crit_edge

do.body.i.i.i64.do.body.i.i.i64_crit_edge:        ; preds = %do.body.i.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i64

atomic_cmpxchg.exit66:                            ; preds = %do.body.i.i.i64
  %asmresult3.i.i.i65 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !41
  %cmp13.not = icmp eq i32 %errors.0, %asmresult3.i.i.i65
  br i1 %cmp13.not, label %atomic_cmpxchg.exit66.if.end_crit_edge, label %atomic_cmpxchg.exit66.do.body_crit_edge

atomic_cmpxchg.exit66.do.body_crit_edge:          ; preds = %atomic_cmpxchg.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

atomic_cmpxchg.exit66.if.end_crit_edge:           ; preds = %atomic_cmpxchg.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %atomic_cmpxchg.exit66.if.end_crit_edge, %atomic_cmpxchg.exit.if.end_crit_edge
  %count.1 = phi i32 [ %asmresult3.i.i.i, %atomic_cmpxchg.exit.if.end_crit_edge ], [ %sub, %atomic_cmpxchg.exit66.if.end_crit_edge ]
  %14 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ca, align 8
  %error_decay2 = getelementptr inbounds %struct.cache_set, ptr %15, i32 0, i32 82
  %16 = ptrtoint ptr %error_decay2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error_decay2, align 8
  %cmp = icmp ugt i32 %count.1, %17
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %error)
  %tobool16.not = icmp eq i8 %error, 0
  br i1 %tobool16.not, label %if.end15.if.end34_crit_edge, label %if.then17

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then17:                                        ; preds = %if.end15
  %io_errors19 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 20
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors19, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %io_errors19, i32 1, i32 3, i32 1) #5
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_errors19, ptr %io_errors19, i32 1048576, ptr elementtype(i32) %io_errors19) #5, !srcloc !34
  %asmresult.i.i.i68 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %shr = lshr i32 %asmresult.i.i.i68, 20
  %19 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ca, align 8
  %error_limit = getelementptr inbounds %struct.cache_set, ptr %20, i32 0, i32 81
  %21 = ptrtoint ptr %error_limit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %22)
  %cmp22 = icmp ult i32 %shr, %22
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 4
  br i1 %cmp22, label %do.end27, label %if.else

do.end27:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_read)
  %tobool28.not = icmp eq i32 %is_read, 0
  %cond = select i1 %tobool28.not, ptr @.str.10, ptr @.str.9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %24, ptr noundef %m, ptr noundef nonnull %cond) #8
  br label %if.end34

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call zeroext i1 (ptr, ptr, ...) @bch_cache_set_error(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef %24, ptr noundef %m) #5
  br label %if.end34

if.end34:                                         ; preds = %if.else, %do.end27, %if.end15.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bch_cache_set_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bbio_count_io_errors(ptr noundef %c, ptr nocapture noundef readonly %bio, i8 noundef zeroext %error, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %congested_write_threshold_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 70
  %congested_read_threshold_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 69
  %cond5.in = select i1 %tobool.i.not, ptr %congested_read_threshold_us, ptr %congested_write_threshold_us
  %4 = ptrtoint ptr %cond5.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond5 = load i32, ptr %cond5.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5)
  %tobool.not = icmp eq i32 %cond5, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %bio, i32 -32
  %call.i.i42 = tail call i64 @sched_clock() #5
  %shr.i = lshr i64 %call.i.i42, 10
  %conv.i = trunc i64 %shr.i to i32
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 8
  %sub = sub i32 %conv.i, %6
  %congested7 = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %congested7, i32 noundef 4) #5
  %7 = ptrtoint ptr %congested7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %congested7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond5)
  %cmp9 = icmp sgt i32 %sub, %cond5
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %div = sdiv i32 %sub, 1024
  %congested_last_us = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 67
  %9 = ptrtoint ptr %congested_last_us to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %congested_last_us, align 8
  %add = add i32 %8, 1024
  %10 = tail call i32 @llvm.smin.i32(i32 %div, i32 %add)
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %congested7, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %congested7, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congested7, ptr %congested7, i32 %10, ptr elementtype(i32) %congested7) #5, !srcloc !42
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18 = icmp slt i32 %8, 0
  br i1 %cmp18, label %if.then19, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %congested7, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %congested7, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %congested7, ptr %congested7, i32 1, ptr elementtype(i32) %congested7) #5, !srcloc !43
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else.if.end22_crit_edge, %if.then10, %entry.if.end22_crit_edge
  %13 = xor i32 %and.i, 1
  tail call void @bch_count_io_errors(ptr noundef %1, i8 noundef zeroext %error, i32 noundef %13, ptr noundef %m)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bbio_endio(ptr noundef %c, ptr noundef %bio, i8 noundef zeroext %error, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  tail call void @bch_bbio_count_io_errors(ptr noundef %c, ptr noundef %bio, i8 noundef zeroext %error, ptr noundef %m)
  tail call void @bio_put(ptr noundef %bio) #5
  tail call void @closure_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/io.c", i32 59, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/bcache/io.c", i32 68, i32 3}
!6 = !{ptr @bch_count_backing_io_errors._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.bch_count_backing_io_errors, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @bch_count_backing_io_errors._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @bch_count_backing_io_errors._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/bcache/io.c", i32 75, i32 3}
!13 = !{ptr @bch_count_backing_io_errors._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @bch_count_backing_io_errors._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/bcache/io.c", i32 126, i32 4}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bch_count_io_errors._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @bch_count_io_errors._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/io.c", i32 131, i32 10}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148664887}
!34 = !{i64 2148580172, i64 2148580204, i64 2148580233, i64 2148580267, i64 2148580298, i64 2148580321}
!35 = !{i64 2148665116}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2154384754, i64 2154385246, i64 2154384791, i64 2154384847, i64 2154384881, i64 2154384905, i64 2154384946, i64 2154384967, i64 2154384995, i64 2154385029}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148681299}
!40 = !{i64 1064965, i64 1064989, i64 1065010, i64 1065027, i64 1065044}
!41 = !{i64 2148681525}
!42 = !{i64 2148581917, i64 2148581943, i64 2148581972, i64 2148582006, i64 2148582037, i64 2148582060}
!43 = !{i64 2148579452, i64 2148579478, i64 2148579507, i64 2148579541, i64 2148579572, i64 2148579595}
