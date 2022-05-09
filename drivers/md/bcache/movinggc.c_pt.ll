; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/movinggc.c_pt.bc'
source_filename = "../drivers/md/bcache/movinggc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.86 }
%struct.atomic_t = type { i32 }
%union.anon.86 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.96, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.moving_io = type { %struct.closure, ptr, %struct.data_insert_op, %struct.bbio }
%struct.data_insert_op = type { %struct.closure, ptr, ptr, ptr, i32, i16, i16, i8, [3 x i8], %union.anon.102, %struct.keylist, %union.anon.106 }
%union.anon.102 = type { i16, [2 x i8] }
%struct.keylist = type { %union.anon.104, %union.anon.105, [16 x i64] }
%union.anon.104 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { [8 x i64] }
%struct.bbio = type { i32, %union.anon.107, %struct.bio }
%union.anon.107 = type { [3 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { ptr, ptr, %struct.llist_node, ptr }
%struct.llist_node = type { ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reading data to move\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_gc_copy = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bcache.h\00", [34 x i8] zeroinitializer }, align 32
@trace_bcache_gc_copy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@closure_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cl->work)\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_gc_copy_collision = external dso_local global %struct.tracepoint, align 4
@trace_bcache_gc_copy_collision.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private constant [32 x i8] c"../drivers/md/bcache/movinggc.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 75, i32 48 }
@___asan_gen_.14 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 322, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 108, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"../drivers/md/bcache/closure.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 247, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 33, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 34, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 35, i32 39 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @closure_queue.__key, ptr @.str.4, ptr @sema_init.__key, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @closure_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_moving_gc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %cl.i = alloca %struct.closure, align 4
  %.compoundliteral.i = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %copy_gc_enabled = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 85
  %2 = ptrtoint ptr %copy_gc_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %copy_gc_enabled, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup422_crit_edge, label %if.end

entry.cleanup422_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup422

if.end:                                           ; preds = %entry
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11
  %bucket_size = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 11, i32 0, i32 4
  %5 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bucket_size, align 8
  %arrayidx = getelementptr %struct.cache, ptr %1, i32 0, i32 12, i32 2
  %back = getelementptr %struct.cache, ptr %1, i32 0, i32 12, i32 2, i32 1
  %7 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %back, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %8, %10
  %mask = getelementptr %struct.cache, ptr %1, i32 0, i32 12, i32 2, i32 3
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %12
  %mul = mul i32 %and, %6
  %heap = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16
  %used = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %used, align 4
  %buckets = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buckets, align 8
  %first_bucket = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 1, i32 13
  %16 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %first_bucket, align 4
  %conv = zext i16 %17 to i32
  %add.ptr = getelementptr %struct.bucket, ptr %15, i32 %conv
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %4, align 8
  %idx.ext661 = trunc i64 %19 to i32
  %add.ptr8662 = getelementptr %struct.bucket, ptr %15, i32 %idx.ext661
  %cmp663 = icmp ult ptr %add.ptr, %add.ptr8662
  br i1 %cmp663, label %for.body.lr.ph, label %if.end.while.cond320.preheader_crit_edge

if.end.while.cond320.preheader_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond320.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %data = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16, i32 2
  br label %for.body

while.cond214.preheader:                          ; preds = %for.inc212
  call void @__sanitizer_cov_trace_cmp4(i32 %sectors_to_move.1, i32 %mul)
  %cmp215674 = icmp ugt i32 %sectors_to_move.1, %mul
  br i1 %cmp215674, label %while.body217.lr.ph, label %while.cond214.preheader.while.cond320.preheader_crit_edge

while.cond214.preheader.while.cond320.preheader_crit_edge: ; preds = %while.cond214.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond320.preheader

while.body217.lr.ph:                              ; preds = %while.cond214.preheader
  %data226 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16, i32 2
  br label %while.body217

for.body:                                         ; preds = %for.inc212.for.body_crit_edge, %for.body.lr.ph
  %b.0666 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc212.for.body_crit_edge ]
  %sectors_to_move.0664 = phi i32 [ 0, %for.body.lr.ph ], [ %sectors_to_move.1, %for.inc212.for.body_crit_edge ]
  %gc_mark.i = getelementptr inbounds %struct.bucket, ptr %b.0666, i32 0, i32 4
  %20 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gc_mark.i, align 4
  %22 = and i16 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp10 = icmp eq i16 %22, 3
  br i1 %cmp10, label %for.body.for.inc212_crit_edge, label %lor.lhs.false

for.body.for.inc212_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

lor.lhs.false:                                    ; preds = %for.body
  %23 = lshr i16 %21, 2
  %24 = and i16 %23, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool13.not = icmp eq i16 %24, 0
  br i1 %tobool13.not, label %lor.lhs.false.for.inc212_crit_edge, label %lor.lhs.false14

lor.lhs.false.for.inc212_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bucket_size, align 8
  %27 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp19 = icmp eq i32 %26, %27
  br i1 %cmp19, label %lor.lhs.false14.for.inc212_crit_edge, label %lor.lhs.false21

lor.lhs.false14.for.inc212_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

lor.lhs.false21:                                  ; preds = %lor.lhs.false14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b.0666, i32 noundef 4) #9
  %28 = ptrtoint ptr %b.0666 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %b.0666, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not = icmp eq i32 %29, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false21.for.inc212_crit_edge

lor.lhs.false21.for.inc212_crit_edge:             ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

if.end25:                                         ; preds = %lor.lhs.false21
  %30 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %used, align 4
  %32 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %heap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp29 = icmp eq i32 %31, %33
  br i1 %cmp29, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end25
  %34 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %gc_mark.i, align 4
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 8191
  %38 = zext i16 %37 to i32
  %conv34 = add i32 %sectors_to_move.0664, %38
  %inc = add i32 %31, 1
  %39 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc, ptr %used, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %arrayidx46 = getelementptr ptr, ptr %41, i32 %31
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b.0666, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool47.not648 = icmp eq i32 %31, 0
  br i1 %tobool47.not648, label %if.then42.do.body73_crit_edge, label %if.then42.while.body_crit_edge

if.then42.while.body_crit_edge:                   ; preds = %if.then42
  br label %while.body

if.then42.do.body73_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.then42.while.body_crit_edge
  %_i.0649 = phi i32 [ %div594, %cleanup.while.body_crit_edge ], [ %31, %if.then42.while.body_crit_edge ]
  %sub48 = add i32 %_i.0649, -1
  %div594 = lshr i32 %sub48, 1
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %arrayidx51 = getelementptr ptr, ptr %44, i32 %_i.0649
  %45 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx51, align 4
  %arrayidx54 = getelementptr ptr, ptr %44, i32 %div594
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx54, align 4
  %gc_mark.i.i = getelementptr inbounds %struct.bucket, ptr %46, i32 0, i32 4
  %49 = ptrtoint ptr %gc_mark.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gc_mark.i.i, align 4
  %51 = lshr i16 %50, 2
  %52 = and i16 %51, 8191
  %gc_mark.i2.i = getelementptr inbounds %struct.bucket, ptr %48, i32 0, i32 4
  %53 = ptrtoint ptr %gc_mark.i2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gc_mark.i2.i, align 4
  %55 = lshr i16 %54, 2
  %56 = and i16 %55, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %56)
  %cmp.i = icmp ult i16 %52, %56
  br i1 %cmp.i, label %while.body.do.body73_crit_edge, label %cleanup

while.body.do.body73_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

cleanup:                                          ; preds = %while.body
  %57 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %48, ptr %arrayidx51, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %arrayidx70 = getelementptr ptr, ptr %59, i32 %div594
  %60 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %46, ptr %arrayidx70, align 4
  %tobool47.not = icmp ult i32 %sub48, 2
  br i1 %tobool47.not, label %cleanup.do.body73_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.do.body73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73

do.body73:                                        ; preds = %cleanup.do.body73_crit_edge, %while.body.do.body73_crit_edge, %if.then42.do.body73_crit_edge
  %_i.0.lcssa = phi i32 [ 0, %if.then42.do.body73_crit_edge ], [ %_i.0649, %while.body.do.body73_crit_edge ], [ %div594, %cleanup.do.body73_crit_edge ]
  %mul76651 = shl i32 %_i.0.lcssa, 1
  %add77652 = or i32 %mul76651, 1
  %61 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add77652, i32 %62)
  %cmp80653 = icmp ult i32 %add77652, %62
  br i1 %cmp80653, label %do.body73.for.body82_crit_edge, label %do.body73.for.inc212_crit_edge

do.body73.for.inc212_crit_edge:                   ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

do.body73.for.body82_crit_edge:                   ; preds = %do.body73
  br label %for.body82

for.body82:                                       ; preds = %do.body111.for.body82_crit_edge, %do.body73.for.body82_crit_edge
  %63 = phi i32 [ %97, %do.body111.for.body82_crit_edge ], [ %62, %do.body73.for.body82_crit_edge ]
  %add77656 = phi i32 [ %add77, %do.body111.for.body82_crit_edge ], [ %add77652, %do.body73.for.body82_crit_edge ]
  %mul76655 = phi i32 [ %mul76, %do.body111.for.body82_crit_edge ], [ %mul76651, %do.body73.for.body82_crit_edge ]
  %_j.0654 = phi i32 [ %_r74.0, %do.body111.for.body82_crit_edge ], [ %_i.0.lcssa, %do.body73.for.body82_crit_edge ]
  %add85 = add i32 %mul76655, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %63)
  %cmp88 = icmp ult i32 %add85, %63
  br i1 %cmp88, label %land.lhs.true, label %for.body82.if.end101_crit_edge

for.body82.if.end101_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true:                                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %arrayidx92 = getelementptr ptr, ptr %65, i32 %add77656
  %66 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx92, align 4
  %arrayidx96 = getelementptr ptr, ptr %65, i32 %add85
  %68 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx96, align 4
  %gc_mark.i.i604 = getelementptr inbounds %struct.bucket, ptr %67, i32 0, i32 4
  %70 = ptrtoint ptr %gc_mark.i.i604 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %gc_mark.i.i604, align 4
  %72 = lshr i16 %71, 2
  %73 = and i16 %72, 8191
  %gc_mark.i2.i605 = getelementptr inbounds %struct.bucket, ptr %69, i32 0, i32 4
  %74 = ptrtoint ptr %gc_mark.i2.i605 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %gc_mark.i2.i605, align 4
  %76 = lshr i16 %75, 2
  %77 = and i16 %76, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %77)
  %cmp.i606 = icmp ult i16 %73, %77
  %spec.select = select i1 %cmp.i606, i32 %add85, i32 %add77656
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true, %for.body82.if.end101_crit_edge
  %_r74.0 = phi i32 [ %add77656, %for.body82.if.end101_crit_edge ], [ %spec.select, %land.lhs.true ]
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %arrayidx104 = getelementptr ptr, ptr %79, i32 %_r74.0
  %80 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx104, align 4
  %arrayidx107 = getelementptr ptr, ptr %79, i32 %_j.0654
  %82 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx107, align 4
  %gc_mark.i.i607 = getelementptr inbounds %struct.bucket, ptr %81, i32 0, i32 4
  %84 = ptrtoint ptr %gc_mark.i.i607 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %gc_mark.i.i607, align 4
  %86 = lshr i16 %85, 2
  %87 = and i16 %86, 8191
  %gc_mark.i2.i608 = getelementptr inbounds %struct.bucket, ptr %83, i32 0, i32 4
  %88 = ptrtoint ptr %gc_mark.i2.i608 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %gc_mark.i2.i608, align 4
  %90 = lshr i16 %89, 2
  %91 = and i16 %90, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %91)
  %cmp.i609 = icmp ult i16 %87, %91
  br i1 %cmp.i609, label %if.end101.for.inc212_crit_edge, label %do.body111

if.end101.for.inc212_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

do.body111:                                       ; preds = %if.end101
  %92 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %83, ptr %arrayidx104, align 4
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %arrayidx124 = getelementptr ptr, ptr %94, i32 %_j.0654
  %95 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %81, ptr %arrayidx124, align 4
  %mul76 = shl i32 %_r74.0, 1
  %add77 = or i32 %mul76, 1
  %96 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %used, align 4
  %cmp80 = icmp ult i32 %add77, %97
  br i1 %cmp80, label %do.body111.for.body82_crit_edge, label %do.body111.for.inc212_crit_edge

do.body111.for.inc212_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

do.body111.for.body82_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body82

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool135.not = icmp eq i32 %31, 0
  br i1 %tobool135.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.else
  %98 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %gc_mark.i, align 4
  %100 = lshr i16 %99, 2
  %101 = and i16 %100, 8191
  call void @__asan_load2_noabort(i32 8)
  %102 = load i16, ptr inttoptr (i32 8 to ptr), align 8
  %103 = lshr i16 %102, 2
  %104 = and i16 %103, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %104)
  %cmp.i612 = icmp ult i16 %101, %104
  br i1 %cmp.i612, label %cond.end.bucket_heap_top.exit_crit_edge, label %cond.end.for.inc212_crit_edge

cond.end.for.inc212_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

cond.end.bucket_heap_top.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_heap_top.exit

cond.end.thread:                                  ; preds = %if.else
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %gc_mark.i, align 4
  %111 = lshr i16 %110, 2
  %112 = and i16 %111, 8191
  %gc_mark.i2.i611643 = getelementptr inbounds %struct.bucket, ptr %108, i32 0, i32 4
  %113 = ptrtoint ptr %gc_mark.i2.i611643 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %gc_mark.i2.i611643, align 4
  %115 = lshr i16 %114, 2
  %116 = and i16 %115, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %116)
  %cmp.i612644 = icmp ult i16 %112, %116
  br i1 %cmp.i612644, label %cond.end.i, label %cond.end.thread.for.inc212_crit_edge

cond.end.thread.for.inc212_crit_edge:             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

cond.end.i:                                       ; preds = %cond.end.thread
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %tobool2.not.i = icmp eq ptr %120, null
  br i1 %tobool2.not.i, label %cond.end.i.bucket_heap_top.exit_crit_edge, label %cond.true3.i

cond.end.i.bucket_heap_top.exit_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bucket_heap_top.exit

cond.true3.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %gc_mark.i.i613 = getelementptr inbounds %struct.bucket, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %gc_mark.i.i613 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %gc_mark.i.i613, align 4
  %123 = lshr i16 %122, 2
  %124 = and i16 %123, 8191
  %extract.t.i = zext i16 %124 to i32
  br label %bucket_heap_top.exit

bucket_heap_top.exit:                             ; preds = %cond.true3.i, %cond.end.i.bucket_heap_top.exit_crit_edge, %cond.end.bucket_heap_top.exit_crit_edge
  %125 = phi i16 [ %112, %cond.true3.i ], [ %112, %cond.end.i.bucket_heap_top.exit_crit_edge ], [ %101, %cond.end.bucket_heap_top.exit_crit_edge ]
  %cond6.off0.i = phi i32 [ %extract.t.i, %cond.true3.i ], [ 0, %cond.end.i.bucket_heap_top.exit_crit_edge ], [ 0, %cond.end.bucket_heap_top.exit_crit_edge ]
  %sub142 = sub i32 %sectors_to_move.0664, %cond6.off0.i
  %126 = zext i16 %125 to i32
  %conv146 = add i32 %sub142, %126
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %b.0666, ptr %128, align 4
  %130 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp158657 = icmp ugt i32 %131, 1
  br i1 %cmp158657, label %bucket_heap_top.exit.for.body160_crit_edge, label %bucket_heap_top.exit.for.inc212_crit_edge

bucket_heap_top.exit.for.inc212_crit_edge:        ; preds = %bucket_heap_top.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

bucket_heap_top.exit.for.body160_crit_edge:       ; preds = %bucket_heap_top.exit
  br label %for.body160

for.body160:                                      ; preds = %do.body190.for.body160_crit_edge, %bucket_heap_top.exit.for.body160_crit_edge
  %132 = phi i32 [ %166, %do.body190.for.body160_crit_edge ], [ %131, %bucket_heap_top.exit.for.body160_crit_edge ]
  %add155660 = phi i32 [ %add155, %do.body190.for.body160_crit_edge ], [ 1, %bucket_heap_top.exit.for.body160_crit_edge ]
  %mul154659 = phi i32 [ %mul154, %do.body190.for.body160_crit_edge ], [ 0, %bucket_heap_top.exit.for.body160_crit_edge ]
  %_j152.0658 = phi i32 [ %_r151.0, %do.body190.for.body160_crit_edge ], [ 0, %bucket_heap_top.exit.for.body160_crit_edge ]
  %add163 = add i32 %mul154659, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add163, i32 %132)
  %cmp166 = icmp ult i32 %add163, %132
  br i1 %cmp166, label %land.lhs.true168, label %for.body160.if.end180_crit_edge

for.body160.if.end180_crit_edge:                  ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true168:                                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  %arrayidx171 = getelementptr ptr, ptr %134, i32 %add155660
  %135 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx171, align 4
  %arrayidx175 = getelementptr ptr, ptr %134, i32 %add163
  %137 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx175, align 4
  %gc_mark.i.i616 = getelementptr inbounds %struct.bucket, ptr %136, i32 0, i32 4
  %139 = ptrtoint ptr %gc_mark.i.i616 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %gc_mark.i.i616, align 4
  %141 = lshr i16 %140, 2
  %142 = and i16 %141, 8191
  %gc_mark.i2.i617 = getelementptr inbounds %struct.bucket, ptr %138, i32 0, i32 4
  %143 = ptrtoint ptr %gc_mark.i2.i617 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %gc_mark.i2.i617, align 4
  %145 = lshr i16 %144, 2
  %146 = and i16 %145, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %146)
  %cmp.i618 = icmp ult i16 %142, %146
  %spec.select595 = select i1 %cmp.i618, i32 %add163, i32 %add155660
  br label %if.end180

if.end180:                                        ; preds = %land.lhs.true168, %for.body160.if.end180_crit_edge
  %_r151.0 = phi i32 [ %add155660, %for.body160.if.end180_crit_edge ], [ %spec.select595, %land.lhs.true168 ]
  %147 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data, align 4
  %arrayidx183 = getelementptr ptr, ptr %148, i32 %_r151.0
  %149 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx183, align 4
  %arrayidx186 = getelementptr ptr, ptr %148, i32 %_j152.0658
  %151 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx186, align 4
  %gc_mark.i.i619 = getelementptr inbounds %struct.bucket, ptr %150, i32 0, i32 4
  %153 = ptrtoint ptr %gc_mark.i.i619 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %gc_mark.i.i619, align 4
  %155 = lshr i16 %154, 2
  %156 = and i16 %155, 8191
  %gc_mark.i2.i620 = getelementptr inbounds %struct.bucket, ptr %152, i32 0, i32 4
  %157 = ptrtoint ptr %gc_mark.i2.i620 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %gc_mark.i2.i620, align 4
  %159 = lshr i16 %158, 2
  %160 = and i16 %159, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %156, i16 %160)
  %cmp.i621 = icmp ult i16 %156, %160
  br i1 %cmp.i621, label %if.end180.for.inc212_crit_edge, label %do.body190

if.end180.for.inc212_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

do.body190:                                       ; preds = %if.end180
  %161 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %152, ptr %arrayidx183, align 4
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data, align 4
  %arrayidx203 = getelementptr ptr, ptr %163, i32 %_j152.0658
  %164 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %150, ptr %arrayidx203, align 4
  %mul154 = shl i32 %_r151.0, 1
  %add155 = or i32 %mul154, 1
  %165 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %used, align 4
  %cmp158 = icmp ult i32 %add155, %166
  br i1 %cmp158, label %do.body190.for.body160_crit_edge, label %do.body190.for.inc212_crit_edge

do.body190.for.inc212_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc212

do.body190.for.body160_crit_edge:                 ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body160

for.inc212:                                       ; preds = %do.body190.for.inc212_crit_edge, %if.end180.for.inc212_crit_edge, %bucket_heap_top.exit.for.inc212_crit_edge, %cond.end.thread.for.inc212_crit_edge, %cond.end.for.inc212_crit_edge, %do.body111.for.inc212_crit_edge, %if.end101.for.inc212_crit_edge, %do.body73.for.inc212_crit_edge, %lor.lhs.false21.for.inc212_crit_edge, %lor.lhs.false14.for.inc212_crit_edge, %lor.lhs.false.for.inc212_crit_edge, %for.body.for.inc212_crit_edge
  %sectors_to_move.1 = phi i32 [ %sectors_to_move.0664, %for.body.for.inc212_crit_edge ], [ %sectors_to_move.0664, %lor.lhs.false14.for.inc212_crit_edge ], [ %sectors_to_move.0664, %lor.lhs.false21.for.inc212_crit_edge ], [ %sectors_to_move.0664, %cond.end.for.inc212_crit_edge ], [ %sectors_to_move.0664, %lor.lhs.false.for.inc212_crit_edge ], [ %sectors_to_move.0664, %cond.end.thread.for.inc212_crit_edge ], [ %conv146, %bucket_heap_top.exit.for.inc212_crit_edge ], [ %conv34, %do.body73.for.inc212_crit_edge ], [ %conv146, %do.body190.for.inc212_crit_edge ], [ %conv146, %if.end180.for.inc212_crit_edge ], [ %conv34, %if.end101.for.inc212_crit_edge ], [ %conv34, %do.body111.for.inc212_crit_edge ]
  %incdec.ptr = getelementptr %struct.bucket, ptr %b.0666, i32 1
  %167 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %buckets, align 8
  %169 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %4, align 8
  %idx.ext = trunc i64 %170 to i32
  %add.ptr8 = getelementptr %struct.bucket, ptr %168, i32 %idx.ext
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr8
  br i1 %cmp, label %for.inc212.for.body_crit_edge, label %while.cond214.preheader

for.inc212.for.body_crit_edge:                    ; preds = %for.inc212
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.cond320.preheader:                          ; preds = %if.end310.while.cond320.preheader_crit_edge, %while.cond214.preheader.while.cond320.preheader_crit_edge, %if.end.while.cond320.preheader_crit_edge
  %171 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool324.not681 = icmp eq i32 %172, 0
  br i1 %tobool324.not681, label %while.cond320.preheader.while.end420_crit_edge, label %if.then327.lr.ph

while.cond320.preheader.while.end420_crit_edge:   ; preds = %while.cond320.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end420

if.then327.lr.ph:                                 ; preds = %while.cond320.preheader
  %data329 = getelementptr inbounds %struct.cache, ptr %1, i32 0, i32 16, i32 2
  br label %if.then327

while.body217:                                    ; preds = %if.end310.while.body217_crit_edge, %while.body217.lr.ph
  %b.1676 = phi ptr [ %incdec.ptr, %while.body217.lr.ph ], [ %b.2, %if.end310.while.body217_crit_edge ]
  %sectors_to_move.2675 = phi i32 [ %sectors_to_move.1, %while.body217.lr.ph ], [ %conv318, %if.end310.while.body217_crit_edge ]
  %173 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool221.not = icmp eq i32 %174, 0
  br i1 %tobool221.not, label %while.body217.if.end310_crit_edge, label %if.then224

while.body217.if.end310_crit_edge:                ; preds = %while.body217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.then224:                                       ; preds = %while.body217
  %175 = ptrtoint ptr %data226 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data226, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %dec = add i32 %174, -1
  %179 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %dec, ptr %used, align 4
  %180 = load ptr, ptr %176, align 4
  %arrayidx239 = getelementptr ptr, ptr %176, i32 %dec
  %181 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx239, align 4
  store ptr %182, ptr %176, align 4
  %183 = load ptr, ptr %data226, align 4
  %184 = load i32, ptr %used, align 4
  %arrayidx247 = getelementptr ptr, ptr %183, i32 %184
  %185 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %180, ptr %arrayidx247, align 4
  %186 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp258670 = icmp ugt i32 %186, 1
  br i1 %cmp258670, label %if.then224.for.body260_crit_edge, label %if.then224.if.end310_crit_edge

if.then224.if.end310_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.then224.for.body260_crit_edge:                 ; preds = %if.then224
  br label %for.body260

for.body260:                                      ; preds = %do.body290.for.body260_crit_edge, %if.then224.for.body260_crit_edge
  %187 = phi i32 [ %221, %do.body290.for.body260_crit_edge ], [ %186, %if.then224.for.body260_crit_edge ]
  %add255673 = phi i32 [ %add255, %do.body290.for.body260_crit_edge ], [ 1, %if.then224.for.body260_crit_edge ]
  %mul254672 = phi i32 [ %mul254, %do.body290.for.body260_crit_edge ], [ 0, %if.then224.for.body260_crit_edge ]
  %_j252.0671 = phi i32 [ %_r251.0, %do.body290.for.body260_crit_edge ], [ 0, %if.then224.for.body260_crit_edge ]
  %add263 = add i32 %mul254672, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add263, i32 %187)
  %cmp266 = icmp ult i32 %add263, %187
  br i1 %cmp266, label %land.lhs.true268, label %for.body260.if.end280_crit_edge

for.body260.if.end280_crit_edge:                  ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end280

land.lhs.true268:                                 ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %data226 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %data226, align 4
  %arrayidx271 = getelementptr ptr, ptr %189, i32 %add255673
  %190 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx271, align 4
  %arrayidx275 = getelementptr ptr, ptr %189, i32 %add263
  %192 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx275, align 4
  %gc_mark.i.i622 = getelementptr inbounds %struct.bucket, ptr %191, i32 0, i32 4
  %194 = ptrtoint ptr %gc_mark.i.i622 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %gc_mark.i.i622, align 4
  %196 = lshr i16 %195, 2
  %197 = and i16 %196, 8191
  %gc_mark.i2.i623 = getelementptr inbounds %struct.bucket, ptr %193, i32 0, i32 4
  %198 = ptrtoint ptr %gc_mark.i2.i623 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %gc_mark.i2.i623, align 4
  %200 = lshr i16 %199, 2
  %201 = and i16 %200, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %197, i16 %201)
  %cmp.i624 = icmp ult i16 %197, %201
  %spec.select596 = select i1 %cmp.i624, i32 %add263, i32 %add255673
  br label %if.end280

if.end280:                                        ; preds = %land.lhs.true268, %for.body260.if.end280_crit_edge
  %_r251.0 = phi i32 [ %add255673, %for.body260.if.end280_crit_edge ], [ %spec.select596, %land.lhs.true268 ]
  %202 = ptrtoint ptr %data226 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %data226, align 4
  %arrayidx283 = getelementptr ptr, ptr %203, i32 %_r251.0
  %204 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx283, align 4
  %arrayidx286 = getelementptr ptr, ptr %203, i32 %_j252.0671
  %206 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx286, align 4
  %gc_mark.i.i625 = getelementptr inbounds %struct.bucket, ptr %205, i32 0, i32 4
  %208 = ptrtoint ptr %gc_mark.i.i625 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %gc_mark.i.i625, align 4
  %210 = lshr i16 %209, 2
  %211 = and i16 %210, 8191
  %gc_mark.i2.i626 = getelementptr inbounds %struct.bucket, ptr %207, i32 0, i32 4
  %212 = ptrtoint ptr %gc_mark.i2.i626 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %gc_mark.i2.i626, align 4
  %214 = lshr i16 %213, 2
  %215 = and i16 %214, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %211, i16 %215)
  %cmp.i627 = icmp ult i16 %211, %215
  br i1 %cmp.i627, label %if.end280.if.end310_crit_edge, label %do.body290

if.end280.if.end310_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.body290:                                       ; preds = %if.end280
  %216 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %207, ptr %arrayidx283, align 4
  %217 = ptrtoint ptr %data226 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data226, align 4
  %arrayidx303 = getelementptr ptr, ptr %218, i32 %_j252.0671
  %219 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %205, ptr %arrayidx303, align 4
  %mul254 = shl i32 %_r251.0, 1
  %add255 = or i32 %mul254, 1
  %220 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %used, align 4
  %cmp258 = icmp ult i32 %add255, %221
  br i1 %cmp258, label %do.body290.for.body260_crit_edge, label %do.body290.if.end310_crit_edge

do.body290.if.end310_crit_edge:                   ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

do.body290.for.body260_crit_edge:                 ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body260

if.end310:                                        ; preds = %do.body290.if.end310_crit_edge, %if.end280.if.end310_crit_edge, %if.then224.if.end310_crit_edge, %while.body217.if.end310_crit_edge
  %b.2 = phi ptr [ %b.1676, %while.body217.if.end310_crit_edge ], [ %178, %if.then224.if.end310_crit_edge ], [ %178, %do.body290.if.end310_crit_edge ], [ %178, %if.end280.if.end310_crit_edge ]
  %gc_mark.i628 = getelementptr inbounds %struct.bucket, ptr %b.2, i32 0, i32 4
  %222 = ptrtoint ptr %gc_mark.i628 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %gc_mark.i628, align 4
  %224 = lshr i16 %223, 2
  %225 = and i16 %224, 8191
  %226 = zext i16 %225 to i32
  %conv318 = sub i32 %sectors_to_move.2675, %226
  %cmp215 = icmp ugt i32 %conv318, %mul
  br i1 %cmp215, label %if.end310.while.body217_crit_edge, label %if.end310.while.cond320.preheader_crit_edge

if.end310.while.cond320.preheader_crit_edge:      ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond320.preheader

if.end310.while.body217_crit_edge:                ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body217

if.then327:                                       ; preds = %while.body419.if.then327_crit_edge, %if.then327.lr.ph
  %227 = phi i32 [ %172, %if.then327.lr.ph ], [ %279, %while.body419.if.then327_crit_edge ]
  %228 = ptrtoint ptr %data329 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %data329, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %dec333 = add i32 %227, -1
  %232 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %dec333, ptr %used, align 4
  %233 = load ptr, ptr %229, align 4
  %arrayidx343 = getelementptr ptr, ptr %229, i32 %dec333
  %234 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx343, align 4
  store ptr %235, ptr %229, align 4
  %236 = load ptr, ptr %data329, align 4
  %237 = load i32, ptr %used, align 4
  %arrayidx351 = getelementptr ptr, ptr %236, i32 %237
  %238 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %233, ptr %arrayidx351, align 4
  %239 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp362677 = icmp ugt i32 %239, 1
  br i1 %cmp362677, label %if.then327.for.body364_crit_edge, label %if.then327.while.body419_crit_edge

if.then327.while.body419_crit_edge:               ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body419

if.then327.for.body364_crit_edge:                 ; preds = %if.then327
  br label %for.body364

for.body364:                                      ; preds = %do.body394.for.body364_crit_edge, %if.then327.for.body364_crit_edge
  %240 = phi i32 [ %274, %do.body394.for.body364_crit_edge ], [ %239, %if.then327.for.body364_crit_edge ]
  %add359680 = phi i32 [ %add359, %do.body394.for.body364_crit_edge ], [ 1, %if.then327.for.body364_crit_edge ]
  %mul358679 = phi i32 [ %mul358, %do.body394.for.body364_crit_edge ], [ 0, %if.then327.for.body364_crit_edge ]
  %_j356.0678 = phi i32 [ %_r355.0, %do.body394.for.body364_crit_edge ], [ 0, %if.then327.for.body364_crit_edge ]
  %add367 = add i32 %mul358679, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add367, i32 %240)
  %cmp370 = icmp ult i32 %add367, %240
  br i1 %cmp370, label %land.lhs.true372, label %for.body364.if.end384_crit_edge

for.body364.if.end384_crit_edge:                  ; preds = %for.body364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end384

land.lhs.true372:                                 ; preds = %for.body364
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %data329 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %data329, align 4
  %arrayidx375 = getelementptr ptr, ptr %242, i32 %add359680
  %243 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx375, align 4
  %arrayidx379 = getelementptr ptr, ptr %242, i32 %add367
  %245 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx379, align 4
  %gc_mark.i.i630 = getelementptr inbounds %struct.bucket, ptr %244, i32 0, i32 4
  %247 = ptrtoint ptr %gc_mark.i.i630 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %gc_mark.i.i630, align 4
  %249 = lshr i16 %248, 2
  %250 = and i16 %249, 8191
  %gc_mark.i2.i631 = getelementptr inbounds %struct.bucket, ptr %246, i32 0, i32 4
  %251 = ptrtoint ptr %gc_mark.i2.i631 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %gc_mark.i2.i631, align 4
  %253 = lshr i16 %252, 2
  %254 = and i16 %253, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %250, i16 %254)
  %cmp.i632 = icmp ult i16 %250, %254
  %spec.select597 = select i1 %cmp.i632, i32 %add367, i32 %add359680
  br label %if.end384

if.end384:                                        ; preds = %land.lhs.true372, %for.body364.if.end384_crit_edge
  %_r355.0 = phi i32 [ %add359680, %for.body364.if.end384_crit_edge ], [ %spec.select597, %land.lhs.true372 ]
  %255 = ptrtoint ptr %data329 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %data329, align 4
  %arrayidx387 = getelementptr ptr, ptr %256, i32 %_r355.0
  %257 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx387, align 4
  %arrayidx390 = getelementptr ptr, ptr %256, i32 %_j356.0678
  %259 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx390, align 4
  %gc_mark.i.i633 = getelementptr inbounds %struct.bucket, ptr %258, i32 0, i32 4
  %261 = ptrtoint ptr %gc_mark.i.i633 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %gc_mark.i.i633, align 4
  %263 = lshr i16 %262, 2
  %264 = and i16 %263, 8191
  %gc_mark.i2.i634 = getelementptr inbounds %struct.bucket, ptr %260, i32 0, i32 4
  %265 = ptrtoint ptr %gc_mark.i2.i634 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %gc_mark.i2.i634, align 4
  %267 = lshr i16 %266, 2
  %268 = and i16 %267, 8191
  call void @__sanitizer_cov_trace_cmp2(i16 %264, i16 %268)
  %cmp.i635 = icmp ult i16 %264, %268
  br i1 %cmp.i635, label %if.end384.while.body419_crit_edge, label %do.body394

if.end384.while.body419_crit_edge:                ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body419

do.body394:                                       ; preds = %if.end384
  %269 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %260, ptr %arrayidx387, align 4
  %270 = ptrtoint ptr %data329 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %data329, align 4
  %arrayidx407 = getelementptr ptr, ptr %271, i32 %_j356.0678
  %272 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %258, ptr %arrayidx407, align 4
  %mul358 = shl i32 %_r355.0, 1
  %add359 = or i32 %mul358, 1
  %273 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %used, align 4
  %cmp362 = icmp ult i32 %add359, %274
  br i1 %cmp362, label %do.body394.for.body364_crit_edge, label %do.body394.while.body419_crit_edge

do.body394.while.body419_crit_edge:               ; preds = %do.body394
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body419

do.body394.for.body364_crit_edge:                 ; preds = %do.body394
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body364

while.body419:                                    ; preds = %do.body394.while.body419_crit_edge, %if.end384.while.body419_crit_edge, %if.then327.while.body419_crit_edge
  %gc_mark.i636 = getelementptr inbounds %struct.bucket, ptr %231, i32 0, i32 4
  %275 = ptrtoint ptr %gc_mark.i636 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %gc_mark.i636, align 4
  %277 = or i16 %276, -32768
  store i16 %277, ptr %gc_mark.i636, align 4
  %278 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %used, align 4
  %tobool324.not = icmp eq i32 %279, 0
  br i1 %tobool324.not, label %while.body419.while.end420_crit_edge, label %while.body419.if.then327_crit_edge

while.body419.if.then327_crit_edge:               ; preds = %while.body419
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then327

while.body419.while.end420_crit_edge:             ; preds = %while.body419
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end420

while.end420:                                     ; preds = %while.body419.while.end420_crit_edge, %while.cond320.preheader.while.end420_crit_edge
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #9
  %moving_gc_keys = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 49
  %280 = ptrtoint ptr %moving_gc_keys to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 -9223372036854775808, ptr %moving_gc_keys, align 8
  %.compoundliteral.sroa.2.0.last_scanned.sroa_idx = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 49, i32 0, i32 1
  %281 = ptrtoint ptr %.compoundliteral.sroa.2.0.last_scanned.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 0, ptr %.compoundliteral.sroa.2.0.last_scanned.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cl.i) #9
  %282 = call ptr @memset(ptr %cl.i, i32 0, i32 72)
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %cl.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #9
  %283 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile i32 1073741825, ptr %remaining.i.i, align 4
  %flags.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %284 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile i32, ptr %flags.i, align 4
  %286 = and i32 %285, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool.not74.i = icmp eq i32 %286, 0
  br i1 %tobool.not74.i, label %while.body.lr.ph.i, label %while.end420.if.end34.i_crit_edge

while.end420.if.end34.i_crit_edge:                ; preds = %while.end420
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

while.body.lr.ph.i:                               ; preds = %while.end420
  %low.i = getelementptr inbounds %struct.bkey, ptr %.compoundliteral.i, i32 0, i32 1
  %bucket_bits.i.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %moving_gc_wq.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 51
  %moving_in_flight.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %287 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 -9223372036853727233, ptr %.compoundliteral.i, align 8
  %288 = ptrtoint ptr %low.i to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 9223372036854775807, ptr %low.i, align 8
  %call1.i = call ptr @bch_keybuf_next_rescan(ptr noundef %c, ptr noundef %moving_gc_keys, ptr noundef nonnull %.compoundliteral.i, ptr noundef nonnull @moving_pred) #9
  %tobool2.not.i637 = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i637, label %while.body.i.if.end34.i_crit_edge, label %if.end.i

while.body.i.if.end34.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.end.i:                                         ; preds = %while.body.i
  %289 = getelementptr inbounds %struct.keybuf_key, ptr %call1.i, i32 0, i32 1
  %290 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cache, align 4
  %buckets.i.i.i = getelementptr inbounds %struct.cache, ptr %291, i32 0, i32 15
  %292 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %buckets.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.keybuf_key, ptr %call1.i, i32 0, i32 1, i32 0, i32 2
  %294 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %arrayidx.i.i.i.i.i, align 8
  %shr.i.i.i.i.i = lshr i64 %295, 8
  %and.i.i.i.i.i = and i64 %shr.i.i.i.i.i, 8796093022207
  %296 = ptrtoint ptr %bucket_bits.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %bucket_bits.i.i.i.i.i, align 8
  %sh_prom.i.i.i.i.i = zext i16 %297 to i64
  %shr.i2.i.i.i.i = lshr i64 %and.i.i.i.i.i, %sh_prom.i.i.i.i.i
  %conv1.i.i.i.i.i = trunc i64 %shr.i2.i.i.i.i to i32
  %gen.i.i = getelementptr %struct.bucket, ptr %293, i32 %conv1.i.i.i.i.i, i32 2
  %298 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %gen.i.i, align 2
  %conv.i.i = trunc i64 %295 to i8
  %sub.i.i.i = sub i8 %299, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i.i)
  %cmp.i.i.i = icmp ugt i8 %sub.i.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %299, i8 %conv.i.i)
  %tobool4.not73.i = icmp eq i8 %299, %conv.i.i
  %tobool4.not.i = or i1 %tobool4.not73.i, %cmp.i.i.i
  br i1 %tobool4.not.i, label %if.end8.i.i.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @bch_keybuf_del(ptr noundef %moving_gc_keys, ptr noundef nonnull %call1.i) #9
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end25.i, %if.then5.i
  %300 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %flags.i, align 4
  %302 = and i32 %301, 2
  %tobool.not.i638 = icmp eq i32 %302, 0
  br i1 %tobool.not.i638, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.end34.i_crit_edge

while.cond.backedge.i.if.end34.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end8.i.i.i:                                    ; preds = %if.end.i
  %303 = ptrtoint ptr %289 to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %289, align 8
  %shr.i64.i = lshr i64 %304, 20
  %and.i.i = and i64 %shr.i64.i, 65535
  %sub.i = add nuw nsw i64 %and.i.i, 7
  %div63.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div63.i to i32
  %305 = mul nuw nsw i32 %conv.i, 12
  %spec.select.i72.i = add nuw nsw i32 %305, 520
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i72.i, i32 noundef 3520) #12
  %tobool11.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool11.not.i, label %if.end8.i.i.i.err.i_crit_edge, label %if.end13.i

if.end8.i.i.i.err.i_crit_edge:                    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end13.i:                                       ; preds = %if.end8.i.i.i
  %private.i = getelementptr inbounds %struct.keybuf_key, ptr %call1.i, i32 0, i32 2
  %306 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call9.i.i.i, ptr %private.i, align 8
  %w14.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 1
  %307 = ptrtoint ptr %w14.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call1.i, ptr %w14.i, align 8
  %308 = ptrtoint ptr %289 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %289, align 8
  %310 = trunc i64 %309 to i32
  %conv16.i = and i32 %310, 1048575
  %inode.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 2, i32 4
  %311 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %conv16.i, ptr %inode.i, align 4
  %c18.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %312 = ptrtoint ptr %c18.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %c, ptr %c18.i, align 8
  %313 = ptrtoint ptr %moving_gc_wq.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %moving_gc_wq.i, align 8
  %wq.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 2, i32 3
  %315 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %314, ptr %wq.i, align 32
  %bio2.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2
  %bi_inline_vecs.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 1
  %316 = load i64, ptr %289, align 8
  %shr.i.i.i = lshr i64 %316, 20
  %and.i.i.i = and i64 %shr.i.i.i, 65535
  %sub.i.i = add nuw nsw i64 %and.i.i.i, 7
  %div15.i.i = lshr i64 %sub.i.i, 3
  %conv.i67.i = trunc i64 %div15.i.i to i16
  call void @bio_init(ptr noundef %bio2.i.i, ptr noundef %bi_inline_vecs.i.i, i16 noundef zeroext %conv.i67.i) #9
  %bi_flags.i.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 3
  %317 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %bi_flags.i.i.i, align 4
  %319 = or i16 %318, 64
  store i16 %319, ptr %bi_flags.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  %__bi_cnt.i.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 19
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %__bi_cnt.i.i.i, i32 1, i32 3, i32 1) #9
  %320 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i.i.i, ptr %__bi_cnt.i.i.i, i32 1, ptr elementtype(i32) %__bi_cnt.i.i.i) #9, !srcloc !33
  %bi_ioprio.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 4
  %321 = ptrtoint ptr %bi_ioprio.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 24576, ptr %bi_ioprio.i.i, align 2
  %322 = ptrtoint ptr %w14.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %w14.i, align 8
  %324 = getelementptr inbounds %struct.keybuf_key, ptr %323, i32 0, i32 1
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %324, align 8
  %sh.diff.i.i = lshr i64 %326, 11
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %conv5.i.i = and i32 %tr.sh.diff.i.i, 33553920
  %bi_size.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 8, i32 1
  %327 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %conv5.i.i, ptr %bi_size.i.i, align 64
  %bi_private.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 11
  %328 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %call9.i.i.i, ptr %bi_private.i.i, align 4
  call void @bch_bio_map(ptr noundef %bio2.i.i, ptr noundef null) #9
  %bi_opf.i.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 2
  %329 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %bi_opf.i.i, align 8
  %bi_end_io.i = getelementptr inbounds %struct.moving_io, ptr %call9.i.i.i, i32 0, i32 3, i32 2, i32 10
  %330 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr @read_moving_endio, ptr %bi_end_io.i, align 16
  %call22.i = call i32 @bch_bio_alloc_pages(ptr noundef %bio2.i.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end13.i.err.i_crit_edge

if.end13.i.err.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end25.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_bcache_gc_copy(ptr noundef %289) #9
  call void @down(ptr noundef %moving_in_flight.i) #9
  call fastcc void @closure_call(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @read_moving_submit, ptr noundef nonnull %cl.i) #9
  br label %while.cond.backedge.i

err.i:                                            ; preds = %if.end13.i.err.i_crit_edge, %if.end8.i.i.i.err.i_crit_edge
  %private28.i = getelementptr inbounds %struct.keybuf_key, ptr %call1.i, i32 0, i32 2
  %331 = ptrtoint ptr %private28.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %private28.i, align 8
  %tobool.not.i.i = icmp eq ptr %332, null
  %cmp.i.i = icmp ugt ptr %332, inttoptr (i32 -4096 to ptr)
  %spec.select.i68.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i68.i, label %err.i.if.end32.i_crit_edge, label %if.then30.i

err.i.if.end32.i_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then30.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %332) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %err.i.if.end32.i_crit_edge
  call void @bch_keybuf_del(ptr noundef %moving_gc_keys, ptr noundef nonnull %call1.i) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end32.i, %while.cond.backedge.i.if.end34.i_crit_edge, %while.body.i.if.end34.i_crit_edge, %while.end420.if.end34.i_crit_edge
  %call.i.i.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %remaining.i.i, i32 noundef 4) #9
  %333 = ptrtoint ptr %remaining.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load volatile i32, ptr %remaining.i.i, align 4
  %and.i71.i = and i32 %334, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i71.i)
  %cmp.not.i.i = icmp eq i32 %and.i71.i, 1
  br i1 %cmp.not.i.i, label %if.end34.i.read_moving.exit_crit_edge, label %if.then.i.i

if.end34.i.read_moving.exit_crit_edge:            ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_moving.exit

if.then.i.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__closure_sync(ptr noundef nonnull %cl.i) #9
  br label %read_moving.exit

read_moving.exit:                                 ; preds = %if.then.i.i, %if.end34.i.read_moving.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cl.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  br label %cleanup422

cleanup422:                                       ; preds = %read_moving.exit, %entry.cleanup422_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_moving_init_cache_set(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %moving_gc_keys = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 49
  tail call void @bch_keybuf_init(ptr noundef %moving_gc_keys) #9
  %moving_in_flight = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50
  %wait_list1.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 2
  %0 = ptrtoint ptr %moving_in_flight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %moving_in_flight, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 3
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 4
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.5, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 0, i32 4, i32 5
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %10 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 50, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_keybuf_next_rescan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @moving_pred(ptr nocapture noundef readonly %buf, ptr nocapture noundef readonly %k) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache.i13 = getelementptr i8, ptr %buf, i32 -1548
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %1, 60
  %and.i = and i64 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp14.not = icmp eq i64 %and.i, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %bucket_bits.i.i.i = getelementptr i8, ptr %buf, i32 -336
  %arrayidx.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i.i, align 8
  %4 = and i64 %3, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i = icmp eq i64 %4, 0
  br i1 %cmp.i, label %ptr_available.exit, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

ptr_available.exit:                               ; preds = %for.body.lr.ph
  %5 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not = icmp eq ptr %6, null
  br i1 %tobool.i.not, label %ptr_available.exit.for.inc_crit_edge, label %land.lhs.true

ptr_available.exit.for.inc_crit_edge:             ; preds = %ptr_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %ptr_available.exit
  %7 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache.i13, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buckets.i, align 8
  %shr.i.i.i = lshr i64 %3, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %11 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %12 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %gc_mark.i = getelementptr %struct.bucket, ptr %10, i32 %conv1.i.i.i, i32 4
  %13 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gc_mark.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool.not = icmp sgt i16 %14, -1
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %ptr_available.exit.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i)
  %cmp = icmp ugt i64 %and.i, 1
  br i1 %cmp, label %for.body.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %arrayidx.i.i.1 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i.1, align 8
  %17 = and i64 %16, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.i.1 = icmp eq i64 %17, 0
  br i1 %cmp.i.1, label %ptr_available.exit.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

ptr_available.exit.1:                             ; preds = %for.body.1
  %18 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.1 = icmp eq ptr %19, null
  br i1 %tobool.i.not.1, label %ptr_available.exit.1.for.inc.1_crit_edge, label %land.lhs.true.1

ptr_available.exit.1.for.inc.1_crit_edge:         ; preds = %ptr_available.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %ptr_available.exit.1
  %20 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache.i13, align 4
  %buckets.i.1 = getelementptr inbounds %struct.cache, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %buckets.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buckets.i.1, align 8
  %shr.i.i.i.1 = lshr i64 %16, 8
  %and.i.i.i.1 = and i64 %shr.i.i.i.1, 8796093022207
  %24 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.1 = zext i16 %25 to i64
  %shr.i2.i.i.1 = lshr i64 %and.i.i.i.1, %sh_prom.i.i.i.1
  %conv1.i.i.i.1 = trunc i64 %shr.i2.i.i.1 to i32
  %gc_mark.i.1 = getelementptr %struct.bucket, ptr %23, i32 %conv1.i.i.i.1, i32 4
  %26 = ptrtoint ptr %gc_mark.i.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gc_mark.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %tobool.not.1 = icmp sgt i16 %27, -1
  br i1 %tobool.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %ptr_available.exit.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i)
  %cmp.1 = icmp ugt i64 %and.i, 2
  br i1 %cmp.1, label %for.body.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.i.i.2 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i.2, align 8
  %30 = and i64 %29, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp.i.2 = icmp eq i64 %30, 0
  br i1 %cmp.i.2, label %ptr_available.exit.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

ptr_available.exit.2:                             ; preds = %for.body.2
  %31 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.2 = icmp eq ptr %32, null
  br i1 %tobool.i.not.2, label %ptr_available.exit.2.for.inc.2_crit_edge, label %land.lhs.true.2

ptr_available.exit.2.for.inc.2_crit_edge:         ; preds = %ptr_available.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %ptr_available.exit.2
  %33 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cache.i13, align 4
  %buckets.i.2 = getelementptr inbounds %struct.cache, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %buckets.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buckets.i.2, align 8
  %shr.i.i.i.2 = lshr i64 %29, 8
  %and.i.i.i.2 = and i64 %shr.i.i.i.2, 8796093022207
  %37 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.2 = zext i16 %38 to i64
  %shr.i2.i.i.2 = lshr i64 %and.i.i.i.2, %sh_prom.i.i.i.2
  %conv1.i.i.i.2 = trunc i64 %shr.i2.i.i.2 to i32
  %gc_mark.i.2 = getelementptr %struct.bucket, ptr %36, i32 %conv1.i.i.i.2, i32 4
  %39 = ptrtoint ptr %gc_mark.i.2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gc_mark.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %tobool.not.2 = icmp sgt i16 %40, -1
  br i1 %tobool.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %ptr_available.exit.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %and.i)
  %cmp.2 = icmp ugt i64 %and.i, 3
  br i1 %cmp.2, label %for.body.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.i.i.3 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i.i.3, align 8
  %43 = and i64 %42, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp.i.3 = icmp eq i64 %43, 0
  br i1 %cmp.i.3, label %ptr_available.exit.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

ptr_available.exit.3:                             ; preds = %for.body.3
  %44 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.3 = icmp eq ptr %45, null
  br i1 %tobool.i.not.3, label %ptr_available.exit.3.for.inc.3_crit_edge, label %land.lhs.true.3

ptr_available.exit.3.for.inc.3_crit_edge:         ; preds = %ptr_available.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %ptr_available.exit.3
  %46 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cache.i13, align 4
  %buckets.i.3 = getelementptr inbounds %struct.cache, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %buckets.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buckets.i.3, align 8
  %shr.i.i.i.3 = lshr i64 %42, 8
  %and.i.i.i.3 = and i64 %shr.i.i.i.3, 8796093022207
  %50 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.3 = zext i16 %51 to i64
  %shr.i2.i.i.3 = lshr i64 %and.i.i.i.3, %sh_prom.i.i.i.3
  %conv1.i.i.i.3 = trunc i64 %shr.i2.i.i.3 to i32
  %gc_mark.i.3 = getelementptr %struct.bucket, ptr %49, i32 %conv1.i.i.i.3, i32 4
  %52 = ptrtoint ptr %gc_mark.i.3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gc_mark.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %53)
  %tobool.not.3 = icmp sgt i16 %53, -1
  br i1 %tobool.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %ptr_available.exit.3.for.inc.3_crit_edge, %for.body.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %and.i)
  %cmp.3 = icmp ugt i64 %and.i, 4
  br i1 %cmp.3, label %for.body.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %arrayidx.i.i.4 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx.i.i.4, align 8
  %56 = and i64 %55, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp.i.4 = icmp eq i64 %56, 0
  br i1 %cmp.i.4, label %ptr_available.exit.4, label %for.body.4.for.inc.4_crit_edge

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

ptr_available.exit.4:                             ; preds = %for.body.4
  %57 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.4 = icmp eq ptr %58, null
  br i1 %tobool.i.not.4, label %ptr_available.exit.4.for.inc.4_crit_edge, label %land.lhs.true.4

ptr_available.exit.4.for.inc.4_crit_edge:         ; preds = %ptr_available.exit.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %ptr_available.exit.4
  %59 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cache.i13, align 4
  %buckets.i.4 = getelementptr inbounds %struct.cache, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %buckets.i.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buckets.i.4, align 8
  %shr.i.i.i.4 = lshr i64 %55, 8
  %and.i.i.i.4 = and i64 %shr.i.i.i.4, 8796093022207
  %63 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.4 = zext i16 %64 to i64
  %shr.i2.i.i.4 = lshr i64 %and.i.i.i.4, %sh_prom.i.i.i.4
  %conv1.i.i.i.4 = trunc i64 %shr.i2.i.i.4 to i32
  %gc_mark.i.4 = getelementptr %struct.bucket, ptr %62, i32 %conv1.i.i.i.4, i32 4
  %65 = ptrtoint ptr %gc_mark.i.4 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %gc_mark.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %tobool.not.4 = icmp sgt i16 %66, -1
  br i1 %tobool.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.cleanup_crit_edge

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %ptr_available.exit.4.for.inc.4_crit_edge, %for.body.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %and.i)
  %cmp.4 = icmp ugt i64 %and.i, 5
  br i1 %cmp.4, label %for.body.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.5:                                       ; preds = %for.inc.4
  %arrayidx.i.i.5 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 5
  %67 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx.i.i.5, align 8
  %69 = and i64 %68, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp.i.5 = icmp eq i64 %69, 0
  br i1 %cmp.i.5, label %ptr_available.exit.5, label %for.body.5.for.inc.5_crit_edge

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

ptr_available.exit.5:                             ; preds = %for.body.5
  %70 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.5 = icmp eq ptr %71, null
  br i1 %tobool.i.not.5, label %ptr_available.exit.5.for.inc.5_crit_edge, label %land.lhs.true.5

ptr_available.exit.5.for.inc.5_crit_edge:         ; preds = %ptr_available.exit.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %ptr_available.exit.5
  %72 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cache.i13, align 4
  %buckets.i.5 = getelementptr inbounds %struct.cache, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %buckets.i.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buckets.i.5, align 8
  %shr.i.i.i.5 = lshr i64 %68, 8
  %and.i.i.i.5 = and i64 %shr.i.i.i.5, 8796093022207
  %76 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.5 = zext i16 %77 to i64
  %shr.i2.i.i.5 = lshr i64 %and.i.i.i.5, %sh_prom.i.i.i.5
  %conv1.i.i.i.5 = trunc i64 %shr.i2.i.i.5 to i32
  %gc_mark.i.5 = getelementptr %struct.bucket, ptr %75, i32 %conv1.i.i.i.5, i32 4
  %78 = ptrtoint ptr %gc_mark.i.5 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %gc_mark.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %79)
  %tobool.not.5 = icmp sgt i16 %79, -1
  br i1 %tobool.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.cleanup_crit_edge

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %ptr_available.exit.5.for.inc.5_crit_edge, %for.body.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %and.i)
  %cmp.5 = icmp eq i64 %and.i, 7
  br i1 %cmp.5, label %for.body.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.6:                                       ; preds = %for.inc.5
  %arrayidx.i.i.6 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 6
  %80 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i.i.6, align 8
  %82 = and i64 %81, 9205357638345293824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp.i.6 = icmp eq i64 %82, 0
  br i1 %cmp.i.6, label %ptr_available.exit.6, label %for.body.6.for.inc.6_crit_edge

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

ptr_available.exit.6:                             ; preds = %for.body.6
  %83 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cache.i13, align 4
  %tobool.i.not.6 = icmp eq ptr %84, null
  br i1 %tobool.i.not.6, label %ptr_available.exit.6.for.inc.6_crit_edge, label %land.lhs.true.6

ptr_available.exit.6.for.inc.6_crit_edge:         ; preds = %ptr_available.exit.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %ptr_available.exit.6
  %85 = ptrtoint ptr %cache.i13 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cache.i13, align 4
  %buckets.i.6 = getelementptr inbounds %struct.cache, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %buckets.i.6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buckets.i.6, align 8
  %shr.i.i.i.6 = lshr i64 %81, 8
  %and.i.i.i.6 = and i64 %shr.i.i.i.6, 8796093022207
  %89 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i.6 = zext i16 %90 to i64
  %shr.i2.i.i.6 = lshr i64 %and.i.i.i.6, %sh_prom.i.i.i.6
  %conv1.i.i.i.6 = trunc i64 %shr.i2.i.i.6 to i32
  %gc_mark.i.6 = getelementptr %struct.bucket, ptr %88, i32 %conv1.i.i.i.6, i32 4
  %91 = ptrtoint ptr %gc_mark.i.6 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %gc_mark.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %92)
  %tobool.not.6 = icmp sgt i16 %92, -1
  br i1 %tobool.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.cleanup_crit_edge

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %ptr_available.exit.6.for.inc.6_crit_edge, %for.body.6.for.inc.6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %land.lhs.true.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true.1.cleanup_crit_edge ], [ false, %for.inc.1.cleanup_crit_edge ], [ true, %land.lhs.true.2.cleanup_crit_edge ], [ false, %for.inc.2.cleanup_crit_edge ], [ true, %land.lhs.true.3.cleanup_crit_edge ], [ false, %for.inc.3.cleanup_crit_edge ], [ true, %land.lhs.true.4.cleanup_crit_edge ], [ false, %for.inc.4.cleanup_crit_edge ], [ true, %land.lhs.true.5.cleanup_crit_edge ], [ false, %for.inc.5.cleanup_crit_edge ], [ true, %land.lhs.true.6.cleanup_crit_edge ], [ false, %for.inc.6 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_keybuf_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_moving_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not, label %if.else, label %entry.if.end12.sink.split_crit_edge

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %4 = getelementptr i8, ptr %bio, i32 -24
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %c = getelementptr inbounds %struct.moving_io, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 8
  %cache.i.i = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache.i.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i8, ptr %bio, i32 -8
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %15, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 24
  %16 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %17 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %13, i32 %conv1.i.i.i.i, i32 2
  %18 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %15 to i8
  %sub.i.i = sub i8 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i)
  %cmp.i.i = icmp ugt i8 %sub.i.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv.i)
  %tobool8.not25 = icmp eq i8 %19, %conv.i
  %tobool8.not = or i1 %tobool8.not25, %cmp.i.i
  br i1 %tobool8.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.if.end12.sink.split_crit_edge

land.lhs.true.if.end12.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.sink.split:                              ; preds = %land.lhs.true.if.end12.sink.split_crit_edge, %entry.if.end12.sink.split_crit_edge
  %.sink = phi i8 [ %3, %entry.if.end12.sink.split_crit_edge ], [ 10, %land.lhs.true.if.end12.sink.split_crit_edge ]
  %status11 = getelementptr inbounds %struct.moving_io, ptr %1, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %status11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %status11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %c14 = getelementptr inbounds %struct.moving_io, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %c14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c14, align 8
  %23 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bi_status, align 2
  tail call void @bch_bbio_endio(ptr noundef %22, ptr noundef %bio, i8 noundef zeroext %24, ptr noundef nonnull @.str) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_bio_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_gc_copy(ptr noundef %k) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy, i32 0, i32 1), ptr blockaddress(@trace_bcache_gc_copy, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !34

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !35

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %call42 = tail call i32 @__traceiter_bcache_gc_copy(ptr noundef null, ptr noundef %k) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !35

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_gc_copy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_bcache_gc_copy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 325, ptr noundef nonnull @.str.2) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @closure_call(ptr noundef %cl, ptr noundef %fn, ptr noundef %parent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %cl, i32 0, i32 72)
  %parent1.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 1
  %1 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %entry.closure_init.exit_crit_edge, label %if.then.i

entry.closure_init.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %closure_init.exit

if.then.i:                                        ; preds = %entry
  %remaining.i.i = getelementptr inbounds %struct.closure, ptr %parent, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %remaining.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %remaining.i.i, ptr %remaining.i.i, i32 1, ptr elementtype(i32) %remaining.i.i) #9, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %and.i.i = and i32 %asmresult.i.i.i.i.i.i, 67108862
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.then.i.closure_init.exit_crit_edge, !prof !43

if.then.i.closure_init.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %closure_init.exit

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

closure_init.exit:                                ; preds = %if.then.i.closure_init.exit_crit_edge, %entry.closure_init.exit_crit_edge
  %remaining.i = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %remaining.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1073741825, ptr %remaining.i, align 4
  tail call void @closure_debug_create(ptr noundef %cl) #9
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #9
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %4 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fn, ptr %fn1.i, align 4
  %5 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.else.i, label %do.body2.i

do.body2.i:                                       ; preds = %closure_init.exit
  tail call void @__init_work(ptr noundef %cl, i32 noundef 0) #9
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %cl, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @closure_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry3.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1
  %9 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry3.i, ptr %entry3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %cl, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry3.i, ptr %prev.i.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %7, ptr noundef %cl) #9
  br i1 %call.i.i, label %do.body2.i.closure_queue.exit_crit_edge, label %do.body12.i, !prof !35

do.body2.i.closure_queue.exit_crit_edge:          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %closure_queue.exit

do.body12.i:                                      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/closure.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #9, !srcloc !46
  unreachable

if.else.i:                                        ; preds = %closure_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %fn1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn1.i, align 4
  tail call void %12(ptr noundef %cl) #9
  br label %closure_queue.exit

closure_queue.exit:                               ; preds = %if.else.i, %do.body2.i.closure_queue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_moving_submit(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio2 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2
  %c = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %w = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 1
  %2 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w, align 8
  %4 = getelementptr inbounds %struct.keybuf_key, ptr %3, i32 0, i32 1
  tail call void @bch_submit_bbio(ptr noundef %bio2, ptr noundef %1, ptr noundef %4, i32 noundef 0) #9
  %wq = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #9
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %7 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @write_moving, ptr %fn1.i, align 4
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bio_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_bbio_endio(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_gc_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_debug_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @closure_set_ip(ptr nocapture noundef writeonly %cl) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ip = getelementptr inbounds %struct.closure, ptr %cl, i32 0, i32 5
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr blockaddress(@closure_set_ip, %__here) to i32), ptr %ip, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_submit_bbio(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_moving(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %op1 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2
  %bio2.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2
  %bi_inline_vecs.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 1
  %w.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 1
  %2 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w.i, align 8
  %4 = getelementptr inbounds %struct.keybuf_key, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %shr.i.i = lshr i64 %6, 20
  %and.i.i = and i64 %shr.i.i, 65535
  %sub.i = add nuw nsw i64 %and.i.i, 7
  %div15.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div15.i to i16
  tail call void @bio_init(ptr noundef %bio2.i, ptr noundef %bi_inline_vecs.i, i16 noundef zeroext %conv.i) #9
  %bi_flags.i.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 3
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bi_flags.i.i, align 4
  %9 = or i16 %8, 64
  store i16 %9, ptr %bi_flags.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  %__bi_cnt.i.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %__bi_cnt.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i.i, ptr %__bi_cnt.i.i, i32 1, ptr elementtype(i32) %__bi_cnt.i.i) #9, !srcloc !33
  %bi_ioprio.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 4
  %11 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 24576, ptr %bi_ioprio.i, align 2
  %12 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %w.i, align 8
  %14 = getelementptr inbounds %struct.keybuf_key, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %sh.diff.i = lshr i64 %16, 11
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv5.i = and i32 %tr.sh.diff.i, 33553920
  %bi_size.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 8, i32 1
  %17 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv5.i, ptr %bi_size.i, align 8
  %bi_private.i = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 11
  %18 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cl, ptr %bi_private.i, align 4
  tail call void @bch_bio_map(ptr noundef %bio2.i, ptr noundef null) #9
  %19 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %w.i, align 8
  %21 = getelementptr inbounds %struct.keybuf_key, ptr %20, i32 0, i32 1
  %low.i = getelementptr inbounds %struct.keybuf_key, ptr %20, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %low.i, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %21, align 8
  %shr.i = lshr i64 %25, 20
  %and.i = and i64 %shr.i, 65535
  %sub = sub i64 %23, %and.i
  %bi_iter = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2, i32 8
  %26 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub, ptr %bi_iter, align 8
  %write_prio = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %write_prio to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %write_prio, align 2
  %bio7 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %bio7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bio2.i, ptr %bio7, align 4
  %29 = load i64, ptr %21, align 8
  %30 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 9
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %30, align 8
  %sh.diff = lshr i64 %29, 30
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.value = and i8 %tr.sh.diff, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %30, align 8
  %32 = load i64, ptr %21, align 8
  %sh.diff52 = lshr i64 %32, 52
  %tr.sh.diff53 = trunc i64 %sh.diff52 to i8
  %bf.shl15 = and i8 %tr.sh.diff53, 16
  %bf.clear16 = and i8 %bf.set, -17
  %bf.set17 = or i8 %bf.shl15, %bf.clear16
  store i8 %bf.set17, ptr %30, align 8
  %33 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 11
  %34 = load i64, ptr %21, align 8
  %sh.diff.i50 = lshr i64 %34, 57
  %tr.sh.diff.i51 = trunc i64 %sh.diff.i50 to i32
  %conv.i.i = and i32 %tr.sh.diff.i51, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %35 = call ptr @memcpy(ptr %33, ptr %21, i32 %mul.i)
  %bf.set24 = or i8 %bf.set17, 8
  store i8 %bf.set24, ptr %30, align 8
  tail call fastcc void @closure_call(ptr noundef %op1, ptr noundef nonnull @bch_data_insert, ptr noundef %cl)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %wq = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wq, align 8
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #9
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %38 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @write_moving_finish, ptr %fn1.i, align 4
  %39 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1073741825) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @closure_sub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_data_insert(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_moving_finish(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio2 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 3, i32 2
  tail call void @bio_free_pages(ptr noundef %bio2) #9
  %0 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %0, align 8
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %w = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 1
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w, align 8
  %5 = getelementptr inbounds %struct.keybuf_key, ptr %4, i32 0, i32 1
  tail call fastcc void @trace_bcache_gc_copy_collision(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %moving_gc_keys = getelementptr inbounds %struct.cache_set, ptr %7, i32 0, i32 49
  %w4 = getelementptr inbounds %struct.moving_io, ptr %cl, i32 0, i32 1
  %8 = ptrtoint ptr %w4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %w4, align 8
  tail call void @bch_keybuf_del(ptr noundef %moving_gc_keys, ptr noundef %9) #9
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 8
  %moving_in_flight = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 50
  tail call void @up(ptr noundef %moving_in_flight) #9
  tail call fastcc void @closure_set_ip(ptr noundef %cl) #9
  %fn1.i = getelementptr inbounds %struct.anon, ptr %cl, i32 0, i32 3
  %12 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @moving_io_destructor, ptr %fn1.i, align 4
  %13 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @closure_sub(ptr noundef %cl, i32 noundef 1006632961) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_gc_copy_collision(ptr noundef %k) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy_collision, i32 0, i32 1), ptr blockaddress(@trace_bcache_gc_copy_collision, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !34

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !35

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %call42 = tail call i32 @__traceiter_bcache_gc_copy_collision(ptr noundef null, ptr noundef %k) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !35

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy_collision, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_gc_copy_collision, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_gc_copy_collision.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_bcache_gc_copy_collision.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 330, ptr noundef nonnull @.str.2) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !22) #9
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
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moving_io_destructor(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_gc_copy_collision(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__closure_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/movinggc.c", i32 75, i32 48}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/trace/events/bcache.h", i32 322, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @closure_queue.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/md/bcache/closure.h", i32 247, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/trace/events/bcache.h", i32 327, i32 1}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = !{ptr @sema_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2154146432}
!33 = !{i64 2148580728, i64 2148580754, i64 2148580783, i64 2148580817, i64 2148580848, i64 2148580871}
!34 = !{i64 2148405326, i64 2148405331, i64 2148405344, i64 2148405388, i64 2148405422, i64 2148405443}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2154902711}
!37 = !{i64 2154902904}
!38 = !{i64 2149568817}
!39 = !{i64 2149569853}
!40 = !{i64 2148666163}
!41 = !{i64 2148581448, i64 2148581480, i64 2148581509, i64 2148581543, i64 2148581574, i64 2148581597}
!42 = !{i64 2148666392}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2154386030, i64 2154386522, i64 2154386067, i64 2154386123, i64 2154386157, i64 2154386181, i64 2154386222, i64 2154386243, i64 2154386271, i64 2154386305}
!45 = !{i64 2154376885}
!46 = !{i64 2154384120, i64 2154384612, i64 2154384157, i64 2154384213, i64 2154384247, i64 2154384271, i64 2154384312, i64 2154384333, i64 2154384361, i64 2154384395}
!47 = !{i64 2154918875}
!48 = !{i64 2154919088}
