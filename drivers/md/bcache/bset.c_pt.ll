; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/bset.c_pt.bc'
source_filename = "../drivers/md/bcache/bset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bset = type { i64, i64, i64, i32, i32, %union.anon }
%union.anon = type { [0 x %struct.bkey] }
%struct.btree_keys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.btree_iter = type { i32, i32, ptr, [4 x %struct.btree_iter_set] }
%struct.btree_iter_set = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.keylist = type { %union.anon.0, %union.anon.1, [16 x i64] }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct.bkey_float = type { i32 }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.5, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%union.anon.78 = type { [8 x i64] }
%struct.bset_stats = type { i32, i32, i32, i32, i32, i32 }

@bch_dump_bset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bcache: %s() block %u key %u/%u: \00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bch_dump_bset\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/md/bcache/bset.c\00", [39 x i8] zeroinitializer }, align 32
@bch_dump_bset._entry_ptr = internal global ptr @bch_dump_bset._entry, section ".printk_index", align 4
@bch_dump_bset._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c%llu:%llu\0A\00", [19 x i8] zeroinitializer }, align 32
@bch_dump_bset._entry_ptr.5 = internal global ptr @bch_dump_bset._entry.3, section ".printk_index", align 4
@bch_dump_bset._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bcache: %s() Key skipped backwards\0A\00", [58 x i8] zeroinitializer }, align 32
@bch_dump_bset._entry_ptr.8 = internal global ptr @bch_dump_bset._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Keys out of order\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Overlapping keys\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Duplicate keys\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bch_check_keys error:  %s:\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.bch_btree_insert_key.preceding_key_on_stack = private unnamed_addr constant %struct.bkey { i64 -9223372036854775808, i64 0, [0 x i64] zeroinitializer }, align 8
@bch_bset_sort_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&state->time.lock\00", [46 x i8] zeroinitializer }, align 32
@__bch_btree_iter_next.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bset was corrupt!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Key skipped backwards\0A\00", [41 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@btree_mergesort.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btree_mergesort\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sorted %i keys\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bcache: %s() sorted %i keys\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 28, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 34, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 39, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 75, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 82, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 89, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1186, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1145, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 119, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [28 x i8] c"../drivers/md/bcache/bset.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1232, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @bch_dump_bset._entry, ptr @bch_dump_bset._entry.3, ptr @bch_dump_bset._entry.6, ptr @bch_dump_bset._entry_ptr, ptr @bch_dump_bset._entry_ptr.5, ptr @bch_dump_bset._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @bch_bset_sort_state_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_dump_bset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_dump_bset._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_dump_bset._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_bset_sort_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_dump_bset(ptr noundef %b, ptr noundef %i, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 5
  %keys = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 4
  %1 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %keys, align 4
  %add.ptr.i58 = getelementptr i64, ptr %0, i32 %2
  %cmp59 = icmp ult ptr %0, %add.ptr.i58
  br i1 %cmp59, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %low = getelementptr inbounds %struct.bkey, ptr %.compoundliteral, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %37, %for.inc.for.body_crit_edge ]
  %k.060 = phi ptr [ %0, %for.body.lr.ph ], [ %add.ptr.i53, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %k.060 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %k.060, align 8
  %shr.i.i.i = lshr i64 %5, 60
  %6 = trunc i64 %shr.i.i.i to i32
  %7 = and i32 %6, 7
  %conv.i.i = add nuw nsw i32 %7, 2
  %add.ptr.i53 = getelementptr i64, ptr %k.060, i32 %conv.i.i
  %sub.ptr.lhs.cast = ptrtoint ptr %k.060 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %set, i32 noundef %sub.ptr.div, i32 noundef %3) #17
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b, align 8
  %key_dump = getelementptr inbounds %struct.btree_keys_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %key_dump to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key_dump, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end10, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %11(ptr noundef %b, ptr noundef %k.060) #14
  br label %if.end

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %k.060 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %k.060, align 8
  %and.i = and i64 %13, 1048575
  %low.i = getelementptr inbounds %struct.bkey, ptr %k.060, i32 0, i32 1
  %14 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %low.i, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %and.i, i64 noundef %15) #17
  br label %if.end

if.end:                                           ; preds = %do.end10, %if.then
  %16 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keys, align 4
  %add.ptr.i54 = getelementptr i64, ptr %0, i32 %17
  %cmp18 = icmp ult ptr %add.ptr.i53, %add.ptr.i54
  br i1 %cmp18, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b, align 8
  %is_extents = getelementptr inbounds %struct.btree_keys_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %is_extents to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_extents, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  br i1 %tobool20.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i53, align 8
  %and.i55 = and i64 %23, 1048575
  %or = or i64 %and.i55, -9223372036854775808
  %24 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or, ptr %.compoundliteral, align 8
  %low.i56 = getelementptr inbounds %struct.bkey, ptr %add.ptr.i53, i32 0, i32 1
  %25 = ptrtoint ptr %low.i56 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %low.i56, align 8
  %shr.i = lshr i64 %23, 20
  %and.i57 = and i64 %shr.i, 65535
  %sub = sub i64 %26, %and.i57
  %27 = ptrtoint ptr %low to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub, ptr %low, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge
  %cond = phi ptr [ %.compoundliteral, %cond.true ], [ %add.ptr.i53, %land.lhs.true.cond.end_crit_edge ]
  %28 = ptrtoint ptr %k.060 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %k.060, align 8
  %and.i.i = and i64 %29, 1048575
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cond, align 8
  %and.i12.i = and i64 %31, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !46

cond.true.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i.i, %and.i12.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k.060, i32 0, i32 1
  %32 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %low.i.i, align 8
  %low.i15.i = getelementptr inbounds %struct.bkey, ptr %cond, i32 0, i32 1
  %34 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %low.i15.i, align 8
  %sub7.i = sub i64 %33, %35
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp25 = icmp sgt i64 %cond.i, 0
  br i1 %cmp25, label %do.end29, label %bkey_cmp.exit.for.inc_crit_edge

bkey_cmp.exit.for.inc_crit_edge:                  ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end29:                                         ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end29, %bkey_cmp.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %36 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %keys, align 4
  %add.ptr.i = getelementptr i64, ptr %0, i32 %37
  %cmp = icmp ult ptr %add.ptr.i53, %add.ptr.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_dump_bucket(ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #14
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %data.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.013, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  %sub.i.i = sub i32 %2, %5
  %shr.i = lshr i32 %sub.i.i, 9
  tail call void @bch_dump_bset(ptr noundef %b, ptr noundef %1, i32 noundef %shr.i)
  %inc = add nuw nsw i32 %i.013, 1
  %6 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nsets, align 1
  %conv = zext i8 %7 to i32
  %cmp.not.not = icmp ult i32 %i.013, %conv
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @console_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bch_count_data(ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #14
  %0 = getelementptr inbounds i8, ptr %iter, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 8
  %is_extents = getelementptr inbounds %struct.btree_keys_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %is_extents to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_extents, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %iter, align 4
  %used.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %7 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %used.i.i, align 4
  %b1.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %8 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %b, ptr %b1.i.i, align 4
  %nsets.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %9 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i16.i.i = zext i8 %10 to i32
  %add.ptr.i17.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i16.i.i
  %cmp.not18.i.i = icmp ult ptr %add.ptr.i17.i.i, %set.i
  br i1 %cmp.not18.i.i, label %if.then.bch_btree_iter_init.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.bch_btree_iter_init.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %start.addr.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %set.i, %if.then.for.body.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 8
  %13 = getelementptr inbounds %struct.bset, ptr %12, i32 0, i32 5
  %keys.i.i = getelementptr inbounds %struct.bset, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %keys.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i64, ptr %13, i32 %15
  call void @bch_btree_iter_push(ptr noundef nonnull %iter, ptr noundef %13, ptr noundef %add.ptr.i15.i.i) #14
  %incdec.ptr.i.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i, i32 1
  %16 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i.i.i = zext i8 %17 to i32
  %add.ptr.i.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bch_btree_iter_init.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.bch_btree_iter_init.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

bch_btree_iter_init.exit:                         ; preds = %for.body.i.i.bch_btree_iter_init.exit_crit_edge, %if.then.bch_btree_iter_init.exit_crit_edge
  %call17 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter)
  %tobool2.not8 = icmp eq ptr %call17, null
  br i1 %tobool2.not8, label %bch_btree_iter_init.exit.if.end_crit_edge, label %bch_btree_iter_init.exit.for.body_crit_edge

bch_btree_iter_init.exit.for.body_crit_edge:      ; preds = %bch_btree_iter_init.exit
  br label %for.body

bch_btree_iter_init.exit.if.end_crit_edge:        ; preds = %bch_btree_iter_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %bch_btree_iter_init.exit.for.body_crit_edge
  %call110 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call17, %bch_btree_iter_init.exit.for.body_crit_edge ]
  %ret.09 = phi i32 [ %conv4, %for.body.for.body_crit_edge ], [ 0, %bch_btree_iter_init.exit.for.body_crit_edge ]
  %18 = ptrtoint ptr %call110 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %call110, align 8
  %shr.i = lshr i64 %19, 20
  %20 = trunc i64 %shr.i to i32
  %21 = and i32 %20, 65535
  %conv4 = add i32 %21, %ret.09
  %call1 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %bch_btree_iter_init.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %bch_btree_iter_init.exit.if.end_crit_edge ], [ %conv4, %for.body.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #14
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_btree_iter_init(ptr noundef %b, ptr nocapture noundef %iter, ptr noundef readonly %search) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %iter, align 4
  %used.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %1 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %used.i, align 4
  %b1.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %2 = ptrtoint ptr %b1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %b, ptr %b1.i, align 4
  %nsets.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %3 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nsets.i.i, align 1
  %conv.i16.i = zext i8 %4 to i32
  %add.ptr.i17.i = getelementptr %struct.bset_tree, ptr %set, i32 %conv.i16.i
  %cmp.not18.i = icmp ult ptr %add.ptr.i17.i, %set
  br i1 %cmp.not18.i, label %entry.__bch_btree_iter_init.exit_crit_edge, label %for.body.lr.ph.i

entry.__bch_btree_iter_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_init.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %search, null
  br label %for.body.i

for.body.i:                                       ; preds = %bch_bset_search.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %start.addr.019.i = phi ptr [ %set, %for.body.lr.ph.i ], [ %incdec.ptr.i, %bch_bset_search.exit.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @__bch_bset_search(ptr noundef %b, ptr noundef %start.addr.019.i, ptr noundef nonnull %search) #14
  br label %bch_bset_search.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i, i32 0, i32 5
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 8
  %7 = getelementptr inbounds %struct.bset, ptr %6, i32 0, i32 5
  br label %bch_bset_search.exit.i

bch_bset_search.exit.i:                           ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %7, %cond.false.i.i ]
  %data.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i, i32 0, i32 5
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 8
  %10 = getelementptr inbounds %struct.bset, ptr %9, i32 0, i32 5
  %keys.i = getelementptr inbounds %struct.bset, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keys.i, align 4
  %add.ptr.i15.i = getelementptr i64, ptr %10, i32 %12
  tail call void @bch_btree_iter_push(ptr noundef %iter, ptr noundef %cond.i.i, ptr noundef %add.ptr.i15.i) #14
  %incdec.ptr.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i, i32 1
  %13 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nsets.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %add.ptr.i.i = getelementptr %struct.bset_tree, ptr %set, i32 %conv.i.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %add.ptr.i.i
  br i1 %cmp.not.i, label %bch_bset_search.exit.i.__bch_btree_iter_init.exit_crit_edge, label %bch_bset_search.exit.i.for.body.i_crit_edge

bch_bset_search.exit.i.for.body.i_crit_edge:      ; preds = %bch_bset_search.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

bch_bset_search.exit.i.__bch_btree_iter_init.exit_crit_edge: ; preds = %bch_bset_search.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_init.exit

__bch_btree_iter_init.exit:                       ; preds = %bch_bset_search.exit.i.__bch_btree_iter_init.exit_crit_edge, %entry.__bch_btree_iter_init.exit_crit_edge
  %ret.0.lcssa.i = phi ptr [ null, %entry.__bch_btree_iter_init.exit_crit_edge ], [ %cond.i.i, %bch_bset_search.exit.i.__bch_btree_iter_init.exit_crit_edge ]
  ret ptr %ret.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_btree_iter_next(ptr nocapture noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i.i = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %used.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.__bch_btree_iter_next.exit_crit_edge, label %if.then.i

entry.__bch_btree_iter_next.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i.i) #14
  %data.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 3
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %shr.i.i.i.i.i = lshr i64 %5, 60
  %6 = trunc i64 %shr.i.i.i.i.i to i32
  %7 = and i32 %6, 7
  %conv.i.i.i.i = add nuw nsw i32 %7, 2
  %add.ptr.i.i.i = getelementptr i64, ptr %3, i32 %conv.i.i.i.i
  %end.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %cmp.i.i = icmp ult ptr %add.ptr.i.i.i, %9
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.bch_btree_iter_next_check.exit.i_crit_edge

if.then.i.bch_btree_iter_next_check.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_next_check.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %b.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %is_extents.i.i = getelementptr inbounds %struct.btree_keys_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %is_extents.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_extents.i.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i273.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i273.i, label %land.lhs.true.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i.i.i, align 8
  %and.i.i.i = and i64 %17, 1048575
  %or.i.i = or i64 %and.i.i.i, -9223372036854775808
  %18 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or.i.i, ptr %.compoundliteral.i.i, align 8
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %.compoundliteral.i.i, i32 0, i32 1
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %add.ptr.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %low.i.i.i, align 8
  %shr.i.i.i = lshr i64 %17, 20
  %and.i18.i.i = and i64 %shr.i.i.i, 65535
  %sub.i.i = sub i64 %20, %and.i18.i.i
  %21 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub.i.i, ptr %low.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %land.lhs.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %.compoundliteral.i.i, %cond.true.i.i ], [ %add.ptr.i.i.i, %land.lhs.true.i.i.cond.end.i.i_crit_edge ]
  %and.i.i.i.i = and i64 %5, 1048575
  %22 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cond.i.i, align 8
  %and.i12.i.i.i = and i64 %23, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i, i64 %and.i12.i.i.i)
  %cmp.not.i.i.i = icmp eq i64 %and.i.i.i.i, %and.i12.i.i.i
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !46

cond.true.i.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = sub nsw i64 %and.i.i.i.i, %and.i12.i.i.i
  br label %bkey_cmp.exit.i.i

cond.false.i.i.i:                                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i.i = getelementptr inbounds %struct.bkey, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %low.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %low.i.i.i.i, align 8
  %low.i15.i.i.i = getelementptr inbounds %struct.bkey, ptr %cond.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %low.i15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %low.i15.i.i.i, align 8
  %sub7.i.i.i = sub i64 %25, %27
  br label %bkey_cmp.exit.i.i

bkey_cmp.exit.i.i:                                ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i64 [ %sub.i.i.i, %cond.true.i.i.i ], [ %sub7.i.i.i, %cond.false.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i.i)
  %cmp8.i.i = icmp sgt i64 %cond.i.i.i, 0
  br i1 %cmp8.i.i, label %if.then.i.i, label %bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge

bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge: ; preds = %bkey_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_next_check.exit.i

if.then.i.i:                                      ; preds = %bkey_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bch_dump_bucket(ptr noundef %11) #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #18
  unreachable

bch_btree_iter_next_check.exit.i:                 ; preds = %bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge, %if.then.i.bch_btree_iter_next_check.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i.i) #14
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %cmp13.i = icmp ugt ptr %add.ptr.i.i.i, %9
  br i1 %cmp13.i, label %land.end.i, label %bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge

bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge: ; preds = %bch_btree_iter_next_check.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

land.end.i:                                       ; preds = %bch_btree_iter_next_check.exit.i
  %.b271.i = load i1, ptr @__bch_btree_iter_next.__already_done, align 1
  br i1 %.b271.i, label %land.end.i.if.end40.i_crit_edge, label %if.then19.i, !prof !46

land.end.i.if.end40.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then19.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__bch_btree_iter_next.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1145, i32 noundef 9, ptr noundef nonnull @.str.14) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then19.i, %land.end.i.if.end40.i_crit_edge
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %data.i.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end40.i, %bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i, align 4
  %cmp61.i = icmp eq ptr %33, %35
  %36 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i.i, align 4
  br i1 %cmp61.i, label %if.then62.i, label %for.cond127.preheader.i

for.cond127.preheader.i:                          ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp131275.i = icmp ugt i32 %37, 1
  br i1 %cmp131275.i, label %for.cond127.preheader.i.for.body132.i_crit_edge, label %for.cond127.preheader.i.__bch_btree_iter_next.exit_crit_edge

for.cond127.preheader.i.__bch_btree_iter_next.exit_crit_edge: ; preds = %for.cond127.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

for.cond127.preheader.i.for.body132.i_crit_edge:  ; preds = %for.cond127.preheader.i
  br label %for.body132.i

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool63.not.i = icmp eq i32 %37, 0
  br i1 %tobool63.not.i, label %if.then62.i.__bch_btree_iter_next.exit_crit_edge, label %if.then65.i

if.then62.i.__bch_btree_iter_next.exit_crit_edge: ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

if.then65.i:                                      ; preds = %if.then62.i
  %dec.i = add i32 %37, -1
  %38 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %dec.i, ptr %used.i.i, align 4
  %arrayidx75.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %dec.i
  %39 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %arrayidx75.i, align 4
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %data.i.i, align 4
  store ptr %33, ptr %arrayidx75.i, align 4
  %__tmp.sroa.5.0.arrayidx78.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx75.i, i32 4
  %42 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx78.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %33, ptr %__tmp.sroa.5.0.arrayidx78.sroa_idx.i, align 4
  %43 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp84279.i = icmp ugt i32 %43, 1
  br i1 %cmp84279.i, label %if.then65.i.for.body.i_crit_edge, label %if.then65.i.__bch_btree_iter_next.exit_crit_edge

if.then65.i.__bch_btree_iter_next.exit_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

if.then65.i.for.body.i_crit_edge:                 ; preds = %if.then65.i
  br label %for.body.i

for.body.i:                                       ; preds = %do.body105.i.for.body.i_crit_edge, %if.then65.i.for.body.i_crit_edge
  %44 = phi i32 [ %75, %do.body105.i.for.body.i_crit_edge ], [ %43, %if.then65.i.for.body.i_crit_edge ]
  %add282.i = phi i32 [ %add.i, %do.body105.i.for.body.i_crit_edge ], [ 1, %if.then65.i.for.body.i_crit_edge ]
  %mul281.i = phi i32 [ %mul.i, %do.body105.i.for.body.i_crit_edge ], [ 0, %if.then65.i.for.body.i_crit_edge ]
  %_j.0280.i = phi i32 [ %_r82.0.i, %do.body105.i.for.body.i_crit_edge ], [ 0, %if.then65.i.for.body.i_crit_edge ]
  %add87.i = add i32 %mul281.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add87.i, i32 %44)
  %cmp89.i = icmp ult i32 %add87.i, %44
  br i1 %cmp89.i, label %land.lhs.true.i, label %for.body.i.if.end97.i_crit_edge

for.body.i.if.end97.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx91.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add282.i
  %arrayidx94.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add87.i
  %45 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack265.i = load i32, ptr %arrayidx91.i, align 4
  %46 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack268.i = load i32, ptr %arrayidx94.i, align 4
  %47 = inttoptr i32 %.unpack265.i to ptr
  %48 = inttoptr i32 %.unpack268.i to ptr
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %47, align 8
  %and.i.i.i30 = and i64 %50, 1048575
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %48, align 8
  %and.i12.i.i31 = and i64 %52, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i30, i64 %and.i12.i.i31)
  %cmp.not.i.i32 = icmp eq i64 %and.i.i.i30, %and.i12.i.i31
  br i1 %cmp.not.i.i32, label %cond.false.i.i38, label %cond.true.i.i34, !prof !46

cond.true.i.i34:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i33 = sub nsw i64 %and.i.i.i30, %and.i12.i.i31
  br label %btree_iter_cmp.exit41

cond.false.i.i38:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i35 = getelementptr inbounds %struct.bkey, ptr %47, i32 0, i32 1
  %53 = ptrtoint ptr %low.i.i.i35 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %low.i.i.i35, align 8
  %low.i15.i.i36 = getelementptr inbounds %struct.bkey, ptr %48, i32 0, i32 1
  %55 = ptrtoint ptr %low.i15.i.i36 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %low.i15.i.i36, align 8
  %sub7.i.i37 = sub i64 %54, %56
  br label %btree_iter_cmp.exit41

btree_iter_cmp.exit41:                            ; preds = %cond.false.i.i38, %cond.true.i.i34
  %cond.i.i39 = phi i64 [ %sub.i.i33, %cond.true.i.i34 ], [ %sub7.i.i37, %cond.false.i.i38 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i39)
  %cmp.i40 = icmp sgt i64 %cond.i.i39, 0
  %spec.select.i = select i1 %cmp.i40, i32 %add87.i, i32 %add282.i
  br label %if.end97.i

if.end97.i:                                       ; preds = %btree_iter_cmp.exit41, %for.body.i.if.end97.i_crit_edge
  %_r82.0.i = phi i32 [ %add282.i, %for.body.i.if.end97.i_crit_edge ], [ %spec.select.i, %btree_iter_cmp.exit41 ]
  %arrayidx99.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r82.0.i
  %arrayidx101.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j.0280.i
  %57 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack259.i = load i32, ptr %arrayidx99.i, align 4
  %.elt260.i = getelementptr inbounds [2 x i32], ptr %arrayidx99.i, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack262.i = load i32, ptr %arrayidx101.i, align 4
  %.elt263.i = getelementptr inbounds [2 x i32], ptr %arrayidx101.i, i32 0, i32 1
  %59 = inttoptr i32 %.unpack259.i to ptr
  %60 = inttoptr i32 %.unpack262.i to ptr
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %59, align 8
  %and.i.i.i18 = and i64 %62, 1048575
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %60, align 8
  %and.i12.i.i19 = and i64 %64, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i18, i64 %and.i12.i.i19)
  %cmp.not.i.i20 = icmp eq i64 %and.i.i.i18, %and.i12.i.i19
  br i1 %cmp.not.i.i20, label %cond.false.i.i26, label %cond.true.i.i22, !prof !46

cond.true.i.i22:                                  ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i21 = sub nsw i64 %and.i.i.i18, %and.i12.i.i19
  br label %btree_iter_cmp.exit29

cond.false.i.i26:                                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i23 = getelementptr inbounds %struct.bkey, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %low.i.i.i23 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %low.i.i.i23, align 8
  %low.i15.i.i24 = getelementptr inbounds %struct.bkey, ptr %60, i32 0, i32 1
  %67 = ptrtoint ptr %low.i15.i.i24 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %low.i15.i.i24, align 8
  %sub7.i.i25 = sub i64 %66, %68
  br label %btree_iter_cmp.exit29

btree_iter_cmp.exit29:                            ; preds = %cond.false.i.i26, %cond.true.i.i22
  %cond.i.i27 = phi i64 [ %sub.i.i21, %cond.true.i.i22 ], [ %sub7.i.i25, %cond.false.i.i26 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i27)
  %cmp.i28 = icmp sgt i64 %cond.i.i27, 0
  br i1 %cmp.i28, label %btree_iter_cmp.exit29.__bch_btree_iter_next.exit_crit_edge, label %do.body105.i

btree_iter_cmp.exit29.__bch_btree_iter_next.exit_crit_edge: ; preds = %btree_iter_cmp.exit29
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

do.body105.i:                                     ; preds = %btree_iter_cmp.exit29
  %69 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %__tmp106.sroa.0.0.copyload.i = load ptr, ptr %arrayidx99.i, align 4
  %70 = ptrtoint ptr %.elt260.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %__tmp106.sroa.5.0.copyload.i = load ptr, ptr %.elt260.i, align 4
  %71 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %arrayidx101.i, align 4
  store i64 %72, ptr %arrayidx99.i, align 4
  store ptr %__tmp106.sroa.0.0.copyload.i, ptr %arrayidx101.i, align 4
  %73 = ptrtoint ptr %.elt263.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %__tmp106.sroa.5.0.copyload.i, ptr %.elt263.i, align 4
  %mul.i = shl i32 %_r82.0.i, 1
  %add.i = or i32 %mul.i, 1
  %74 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %used.i.i, align 4
  %cmp84.i = icmp ult i32 %add.i, %75
  br i1 %cmp84.i, label %do.body105.i.for.body.i_crit_edge, label %do.body105.i.__bch_btree_iter_next.exit_crit_edge

do.body105.i.__bch_btree_iter_next.exit_crit_edge: ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

do.body105.i.for.body.i_crit_edge:                ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body132.i:                                    ; preds = %do.body155.i.for.body132.i_crit_edge, %for.cond127.preheader.i.for.body132.i_crit_edge
  %76 = phi i32 [ %107, %do.body155.i.for.body132.i_crit_edge ], [ %37, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %add129278.i = phi i32 [ %add129.i, %do.body155.i.for.body132.i_crit_edge ], [ 1, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %mul128277.i = phi i32 [ %mul128.i, %do.body155.i.for.body132.i_crit_edge ], [ 0, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %_j126.0276.i = phi i32 [ %_r125.0.i, %do.body155.i.for.body132.i_crit_edge ], [ 0, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %add135.i = add i32 %mul128277.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add135.i, i32 %76)
  %cmp137.i = icmp ult i32 %add135.i, %76
  br i1 %cmp137.i, label %land.lhs.true138.i, label %for.body132.i.if.end147.i_crit_edge

for.body132.i.if.end147.i_crit_edge:              ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147.i

land.lhs.true138.i:                               ; preds = %for.body132.i
  %arrayidx140.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add129278.i
  %arrayidx143.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add135.i
  %77 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack253.i = load i32, ptr %arrayidx140.i, align 4
  %78 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack256.i = load i32, ptr %arrayidx143.i, align 4
  %79 = inttoptr i32 %.unpack253.i to ptr
  %80 = inttoptr i32 %.unpack256.i to ptr
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %79, align 8
  %and.i.i.i6 = and i64 %82, 1048575
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %80, align 8
  %and.i12.i.i7 = and i64 %84, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i6, i64 %and.i12.i.i7)
  %cmp.not.i.i8 = icmp eq i64 %and.i.i.i6, %and.i12.i.i7
  br i1 %cmp.not.i.i8, label %cond.false.i.i14, label %cond.true.i.i10, !prof !46

cond.true.i.i10:                                  ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i9 = sub nsw i64 %and.i.i.i6, %and.i12.i.i7
  br label %btree_iter_cmp.exit17

cond.false.i.i14:                                 ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i11 = getelementptr inbounds %struct.bkey, ptr %79, i32 0, i32 1
  %85 = ptrtoint ptr %low.i.i.i11 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %low.i.i.i11, align 8
  %low.i15.i.i12 = getelementptr inbounds %struct.bkey, ptr %80, i32 0, i32 1
  %87 = ptrtoint ptr %low.i15.i.i12 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %low.i15.i.i12, align 8
  %sub7.i.i13 = sub i64 %86, %88
  br label %btree_iter_cmp.exit17

btree_iter_cmp.exit17:                            ; preds = %cond.false.i.i14, %cond.true.i.i10
  %cond.i.i15 = phi i64 [ %sub.i.i9, %cond.true.i.i10 ], [ %sub7.i.i13, %cond.false.i.i14 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i15)
  %cmp.i16 = icmp sgt i64 %cond.i.i15, 0
  %spec.select272.i = select i1 %cmp.i16, i32 %add135.i, i32 %add129278.i
  br label %if.end147.i

if.end147.i:                                      ; preds = %btree_iter_cmp.exit17, %for.body132.i.if.end147.i_crit_edge
  %_r125.0.i = phi i32 [ %add129278.i, %for.body132.i.if.end147.i_crit_edge ], [ %spec.select272.i, %btree_iter_cmp.exit17 ]
  %arrayidx149.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r125.0.i
  %arrayidx151.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j126.0276.i
  %89 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack.i = load i32, ptr %arrayidx149.i, align 4
  %.elt248.i = getelementptr inbounds [2 x i32], ptr %arrayidx149.i, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack250.i = load i32, ptr %arrayidx151.i, align 4
  %.elt251.i = getelementptr inbounds [2 x i32], ptr %arrayidx151.i, i32 0, i32 1
  %91 = inttoptr i32 %.unpack.i to ptr
  %92 = inttoptr i32 %.unpack250.i to ptr
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %91, align 8
  %and.i.i.i1 = and i64 %94, 1048575
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %92, align 8
  %and.i12.i.i = and i64 %96, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i1, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i1, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i3, !prof !46

cond.true.i.i3:                                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i2 = sub nsw i64 %and.i.i.i1, %and.i12.i.i
  br label %btree_iter_cmp.exit

cond.false.i.i:                                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i4 = getelementptr inbounds %struct.bkey, ptr %91, i32 0, i32 1
  %97 = ptrtoint ptr %low.i.i.i4 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %low.i.i.i4, align 8
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %92, i32 0, i32 1
  %99 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %98, %100
  br label %btree_iter_cmp.exit

btree_iter_cmp.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i3
  %cond.i.i5 = phi i64 [ %sub.i.i2, %cond.true.i.i3 ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i5)
  %cmp.i = icmp sgt i64 %cond.i.i5, 0
  br i1 %cmp.i, label %btree_iter_cmp.exit.__bch_btree_iter_next.exit_crit_edge, label %do.body155.i

btree_iter_cmp.exit.__bch_btree_iter_next.exit_crit_edge: ; preds = %btree_iter_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

do.body155.i:                                     ; preds = %btree_iter_cmp.exit
  %101 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %__tmp156.sroa.0.0.copyload.i = load ptr, ptr %arrayidx149.i, align 4
  %102 = ptrtoint ptr %.elt248.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %__tmp156.sroa.5.0.copyload.i = load ptr, ptr %.elt248.i, align 4
  %103 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %arrayidx151.i, align 4
  store i64 %104, ptr %arrayidx149.i, align 4
  store ptr %__tmp156.sroa.0.0.copyload.i, ptr %arrayidx151.i, align 4
  %105 = ptrtoint ptr %.elt251.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %__tmp156.sroa.5.0.copyload.i, ptr %.elt251.i, align 4
  %mul128.i = shl i32 %_r125.0.i, 1
  %add129.i = or i32 %mul128.i, 1
  %106 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %used.i.i, align 4
  %cmp131.i = icmp ult i32 %add129.i, %107
  br i1 %cmp131.i, label %do.body155.i.for.body132.i_crit_edge, label %do.body155.i.__bch_btree_iter_next.exit_crit_edge

do.body155.i.__bch_btree_iter_next.exit_crit_edge: ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_next.exit

do.body155.i.for.body132.i_crit_edge:             ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body132.i

__bch_btree_iter_next.exit:                       ; preds = %do.body155.i.__bch_btree_iter_next.exit_crit_edge, %btree_iter_cmp.exit.__bch_btree_iter_next.exit_crit_edge, %do.body105.i.__bch_btree_iter_next.exit_crit_edge, %btree_iter_cmp.exit29.__bch_btree_iter_next.exit_crit_edge, %if.then65.i.__bch_btree_iter_next.exit_crit_edge, %if.then62.i.__bch_btree_iter_next.exit_crit_edge, %for.cond127.preheader.i.__bch_btree_iter_next.exit_crit_edge, %entry.__bch_btree_iter_next.exit_crit_edge
  %ret.0.i = phi ptr [ null, %entry.__bch_btree_iter_next.exit_crit_edge ], [ %3, %if.then62.i.__bch_btree_iter_next.exit_crit_edge ], [ %3, %if.then65.i.__bch_btree_iter_next.exit_crit_edge ], [ %3, %for.cond127.preheader.i.__bch_btree_iter_next.exit_crit_edge ], [ %3, %do.body105.i.__bch_btree_iter_next.exit_crit_edge ], [ %3, %btree_iter_cmp.exit29.__bch_btree_iter_next.exit_crit_edge ], [ %3, %do.body155.i.__bch_btree_iter_next.exit_crit_edge ], [ %3, %btree_iter_cmp.exit.__bch_btree_iter_next.exit_crit_edge ]
  ret ptr %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bch_check_keys(ptr noundef %b, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %iter = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #14
  %1 = getelementptr inbounds i8, ptr %iter, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 32)
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %iter, align 4
  %used.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %used.i.i, align 4
  %b1.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %5 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %b, ptr %b1.i.i, align 4
  %nsets.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i16.i.i = zext i8 %7 to i32
  %add.ptr.i17.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i16.i.i
  %cmp.not18.i.i = icmp ult ptr %add.ptr.i17.i.i, %set.i
  br i1 %cmp.not18.i.i, label %entry.bch_btree_iter_init.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bch_btree_iter_init.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %start.addr.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %set.i, %entry.for.body.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 8
  %10 = getelementptr inbounds %struct.bset, ptr %9, i32 0, i32 5
  %keys.i.i = getelementptr inbounds %struct.bset, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keys.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i64, ptr %10, i32 %12
  call void @bch_btree_iter_push(ptr noundef nonnull %iter, ptr noundef %10, ptr noundef %add.ptr.i15.i.i) #14
  %incdec.ptr.i.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i, i32 1
  %13 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i.i.i = zext i8 %14 to i32
  %add.ptr.i.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bch_btree_iter_init.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.bch_btree_iter_init.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

bch_btree_iter_init.exit:                         ; preds = %for.body.i.i.bch_btree_iter_init.exit_crit_edge, %entry.bch_btree_iter_init.exit_crit_edge
  %call1106109 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter)
  %tobool.not107110 = icmp eq ptr %call1106109, null
  br i1 %tobool.not107110, label %bch_btree_iter_init.exit.for.end_crit_edge, label %bch_btree_iter_init.exit.for.body.lr.ph_crit_edge

bch_btree_iter_init.exit.for.body.lr.ph_crit_edge: ; preds = %bch_btree_iter_init.exit
  br label %for.body.lr.ph

bch_btree_iter_init.exit.for.end_crit_edge:       ; preds = %bch_btree_iter_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end43.for.body.lr.ph_crit_edge, %bch_btree_iter_init.exit.for.body.lr.ph_crit_edge
  %call1106112 = phi ptr [ %call1106, %if.end43.for.body.lr.ph_crit_edge ], [ %call1106109, %bch_btree_iter_init.exit.for.body.lr.ph_crit_edge ]
  %p.0.ph111 = phi ptr [ %call1108, %if.end43.for.body.lr.ph_crit_edge ], [ null, %bch_btree_iter_init.exit.for.body.lr.ph_crit_edge ]
  %tobool3.not = icmp eq ptr %p.0.ph111, null
  %low.i = getelementptr inbounds %struct.bkey, ptr %p.0.ph111, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %call1108 = phi ptr [ %call1106112, %for.body.lr.ph ], [ %call1, %for.cond.backedge.for.body_crit_edge ]
  %15 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b, align 8
  %is_extents = getelementptr inbounds %struct.btree_keys_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %is_extents to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_extents, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not = icmp eq i8 %18, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %tobool3.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %19 = ptrtoint ptr %p.0.ph111 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %p.0.ph111, align 8
  %and.i = and i64 %20, 1048575
  %21 = ptrtoint ptr %call1108 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %call1108, align 8
  %and.i88 = and i64 %22, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and.i88)
  %cmp.not.i = icmp eq i64 %and.i, %and.i88
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !46

cond.true.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i, %and.i88
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %low.i89 = getelementptr inbounds %struct.bkey, ptr %call1108, i32 0, i32 1
  %23 = ptrtoint ptr %low.i89 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %low.i89, align 8
  %shr.i90 = lshr i64 %22, 20
  %and.i91 = and i64 %shr.i90, 65535
  %25 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %20, 20
  %and.i87 = and i64 %shr.i, 65535
  %27 = add i64 %and.i87, %24
  %sub14.neg = sub i64 %and.i91, %27
  %sub7.i = add i64 %sub14.neg, %26
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp = icmp sgt i64 %cond.i, 0
  br i1 %cmp, label %bkey_cmp.exit.bug_crit_edge, label %if.end.thread

bkey_cmp.exit.bug_crit_edge:                      ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bug

if.end:                                           ; preds = %if.then
  %key_invalid.i = getelementptr inbounds %struct.btree_keys_ops, ptr %16, i32 0, i32 3
  %28 = ptrtoint ptr %key_invalid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %key_invalid.i, align 4
  %call.i = tail call zeroext i1 %29(ptr noundef %b, ptr noundef nonnull %call1108) #14
  br i1 %call.i, label %if.end.for.cond.backedge_crit_edge, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end.for.cond.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else.for.cond.backedge_crit_edge, %if.end.thread.for.cond.backedge_crit_edge, %if.end.for.cond.backedge_crit_edge
  %call1 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.thread:                                    ; preds = %bkey_cmp.exit
  %key_invalid.i97 = getelementptr inbounds %struct.btree_keys_ops, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %key_invalid.i97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %key_invalid.i97, align 4
  %call.i98 = tail call zeroext i1 %31(ptr noundef %b, ptr noundef nonnull %call1108) #14
  br i1 %call.i98, label %if.end.thread.for.cond.backedge_crit_edge, label %land.lhs.true21

if.end.thread.for.cond.backedge_crit_edge:        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

land.lhs.true21:                                  ; preds = %if.end.thread
  %32 = ptrtoint ptr %call1108 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %call1108, align 8
  %and.i92 = and i64 %33, 1048575
  %34 = ptrtoint ptr %p.0.ph111 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %p.0.ph111, align 8
  %and.i.i65 = and i64 %35, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i65, i64 %and.i92)
  %cmp.not.i67 = icmp eq i64 %and.i.i65, %and.i92
  br i1 %cmp.not.i67, label %cond.false.i73, label %cond.true.i69, !prof !46

cond.true.i69:                                    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i68 = sub nsw i64 %and.i.i65, %and.i92
  br label %bkey_cmp.exit75

cond.false.i73:                                   ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  %low.i93 = getelementptr inbounds %struct.bkey, ptr %call1108, i32 0, i32 1
  %36 = ptrtoint ptr %low.i93 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %low.i93, align 8
  %shr.i94 = lshr i64 %33, 20
  %and.i95 = and i64 %shr.i94, 65535
  %sub29.neg = sub i64 %and.i95, %37
  %38 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %low.i, align 8
  %sub7.i72 = add i64 %sub29.neg, %39
  br label %bkey_cmp.exit75

bkey_cmp.exit75:                                  ; preds = %cond.false.i73, %cond.true.i69
  %cond.i74 = phi i64 [ %sub.i68, %cond.true.i69 ], [ %sub7.i72, %cond.false.i73 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i74)
  %cmp31 = icmp sgt i64 %cond.i74, 0
  br i1 %cmp31, label %bkey_cmp.exit75.bug_crit_edge, label %bkey_cmp.exit75.if.end43_crit_edge

bkey_cmp.exit75.if.end43_crit_edge:               ; preds = %bkey_cmp.exit75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

bkey_cmp.exit75.bug_crit_edge:                    ; preds = %bkey_cmp.exit75
  call void @__sanitizer_cov_trace_pc() #16
  br label %bug

if.else:                                          ; preds = %for.body
  %key_bad.i = getelementptr inbounds %struct.btree_keys_ops, ptr %16, i32 0, i32 4
  %40 = ptrtoint ptr %key_bad.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %key_bad.i, align 4
  %call.i96 = tail call zeroext i1 %41(ptr noundef %b, ptr noundef nonnull %call1108) #14
  br i1 %call.i96, label %if.else.for.cond.backedge_crit_edge, label %if.end36

if.else.for.cond.backedge_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.backedge

if.end36:                                         ; preds = %if.else
  br i1 %tobool3.not, label %if.end36.if.end43_crit_edge, label %land.lhs.true38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end36
  %42 = ptrtoint ptr %p.0.ph111 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %p.0.ph111, align 8
  %and.i.i76 = and i64 %43, 1048575
  %44 = ptrtoint ptr %call1108 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %call1108, align 8
  %and.i12.i77 = and i64 %45, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i76, i64 %and.i12.i77)
  %cmp.not.i78 = icmp eq i64 %and.i.i76, %and.i12.i77
  br i1 %cmp.not.i78, label %cond.false.i84, label %cond.true.i80, !prof !46

cond.true.i80:                                    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i79 = sub nsw i64 %and.i.i76, %and.i12.i77
  br label %bkey_cmp.exit86

cond.false.i84:                                   ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %low.i, align 8
  %low.i15.i82 = getelementptr inbounds %struct.bkey, ptr %call1108, i32 0, i32 1
  %48 = ptrtoint ptr %low.i15.i82 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %low.i15.i82, align 8
  %sub7.i83 = sub i64 %47, %49
  br label %bkey_cmp.exit86

bkey_cmp.exit86:                                  ; preds = %cond.false.i84, %cond.true.i80
  %cond.i85 = phi i64 [ %sub.i79, %cond.true.i80 ], [ %sub7.i83, %cond.false.i84 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i85)
  %tobool40.not = icmp eq i64 %cond.i85, 0
  br i1 %tobool40.not, label %bkey_cmp.exit86.bug_crit_edge, label %bkey_cmp.exit86.if.end43_crit_edge

bkey_cmp.exit86.if.end43_crit_edge:               ; preds = %bkey_cmp.exit86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

bkey_cmp.exit86.bug_crit_edge:                    ; preds = %bkey_cmp.exit86
  call void @__sanitizer_cov_trace_pc() #16
  br label %bug

if.end43:                                         ; preds = %bkey_cmp.exit86.if.end43_crit_edge, %if.end36.if.end43_crit_edge, %bkey_cmp.exit75.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %call1106 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter)
  %tobool.not107 = icmp eq ptr %call1106, null
  br i1 %tobool.not107, label %if.end43.for.end_crit_edge, label %if.end43.for.body.lr.ph_crit_edge

if.end43.for.body.lr.ph_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.cond.backedge.for.end_crit_edge, %bch_btree_iter_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  ret void

bug:                                              ; preds = %bkey_cmp.exit86.bug_crit_edge, %bkey_cmp.exit75.bug_crit_edge, %bkey_cmp.exit.bug_crit_edge
  %err.0 = phi ptr [ @.str.9, %bkey_cmp.exit.bug_crit_edge ], [ @.str.11, %bkey_cmp.exit86.bug_crit_edge ], [ @.str.10, %bkey_cmp.exit75.bug_crit_edge ]
  tail call void @bch_dump_bucket(ptr noundef %b)
  call void @llvm.va_start(ptr nonnull %args)
  %50 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call44 = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.12, ptr noundef nonnull %err.0) #18
  unreachable
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_ptr_invalid(ptr noundef %b, ptr noundef %k) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_invalid = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %key_invalid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_invalid, align 4
  %call = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %k) #14
  ret i1 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bch_ptr_bad(ptr noundef %b, ptr noundef %k) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_bad = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %key_bad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_bad, align 4
  %call = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %k) #14
  ret i1 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bch_keylist_realloc(ptr noundef %l, i32 noundef %u64s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.keylist, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %inline_keys = getelementptr inbounds %struct.keylist, ptr %l, i32 0, i32 2
  %cmp = icmp eq ptr %4, %inline_keys
  %spec.select = select i1 %cmp, ptr null, ptr %4
  %add = add i32 %sub.ptr.div.i, %u64s
  %sub.i101 = add i32 %add, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i101)
  %tobool.not.i.i.i = icmp eq i32 %sub.i101, 0
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %cond.end24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end24:                                       ; preds = %entry
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i101, i1 true) #14, !range !48
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %cond25 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i101)
  %cmp26 = icmp ult i32 %sub.i101, 16
  br i1 %cmp26, label %cond.end24.cleanup_crit_edge, label %cond.end57

cond.end24.cleanup_crit_edge:                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end57:                                       ; preds = %cond.end24
  %sub.i105 = add nsw i32 %sub.ptr.div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i105)
  %tobool.not.i.i.i106 = icmp eq i32 %sub.i105, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i105, i1 true) #14, !range !48
  %sub.i.i.i107 = sub nuw nsw i32 32, %6
  %sub.i.i.op.i108 = shl nuw i32 1, %sub.i.i.i107
  %shl.i109 = select i1 %tobool.not.i.i.i106, i32 1, i32 %sub.i.i.op.i108
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i109, i32 %cond25)
  %cmp59 = icmp eq i32 %shl.i109, %cond25
  br i1 %cmp59, label %cond.end57.cleanup_crit_edge, label %if.end

cond.end57.cleanup_crit_edge:                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %cond.end57
  %mul = shl i32 %cond25, 3
  %call61 = tail call noalias ptr @krealloc(ptr noundef %spec.select, i32 noundef %mul, i32 noundef 3072) #19
  %tobool.not = icmp eq ptr %call61, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end63

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end63:                                         ; preds = %if.end
  %tobool64.not = icmp eq ptr %spec.select, null
  br i1 %tobool64.not, label %if.then65, label %if.end63.if.end69_crit_edge

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %call61, ptr %inline_keys, i32 %sub.ptr.sub.i)
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end63.if.end69_crit_edge
  %8 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call61, ptr %l, align 8
  %add.ptr = getelementptr i64, ptr %call61, i32 %sub.ptr.div.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end.cleanup_crit_edge, %cond.end57.cleanup_crit_edge, %cond.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ 0, %cond.end57.cleanup_crit_edge ], [ 0, %cond.end24.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_keylist_pop(ptr nocapture noundef %l) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l, align 8
  %2 = getelementptr inbounds %struct.keylist, ptr %l, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %1, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %k.0 = phi ptr [ %add.ptr.i, %while.cond.while.cond_crit_edge ], [ %1, %entry.while.cond_crit_edge ]
  %5 = ptrtoint ptr %k.0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %k.0, align 8
  %shr.i.i.i = lshr i64 %6, 60
  %7 = trunc i64 %shr.i.i.i to i32
  %8 = and i32 %7, 7
  %conv.i.i = add nuw nsw i32 %8, 2
  %add.ptr.i = getelementptr i64, ptr %k.0, i32 %conv.i.i
  %cmp1.not = icmp eq ptr %add.ptr.i, %4
  br i1 %cmp1.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %k.0, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %k.0, %while.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bch_keylist_pop_front(ptr nocapture noundef %l) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %shr.i.i = lshr i64 %3, 60
  %4 = trunc i64 %shr.i.i to i32
  %5 = and i32 %4, 7
  %6 = getelementptr inbounds %struct.keylist, ptr %l, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %idx.neg = sub nuw nsw i32 -2, %5
  %add.ptr = getelementptr i64, ptr %8, i32 %idx.neg
  store ptr %add.ptr, ptr %6, align 4
  %9 = load i64, ptr %1, align 8
  %shr.i.i.i = lshr i64 %9, 60
  %10 = trunc i64 %shr.i.i.i to i32
  %11 = and i32 %10, 7
  %conv.i.i = add nuw nsw i32 %11, 2
  %add.ptr.i = getelementptr i64, ptr %1, i32 %conv.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = call ptr @memmove(ptr %1, ptr %add.ptr.i, i32 %sub.ptr.sub.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bkey_copy_single_ptr(ptr nocapture noundef %dest, ptr nocapture noundef readonly %src, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %i to i64
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %src, align 8
  %shr.i = lshr i64 %1, 60
  %and.i = and i64 %shr.i, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv)
  %cmp = icmp ult i64 %and.i, %conv
  br i1 %cmp, label %do.body3, label %do.end6, !prof !49

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #14, !srcloc !50
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = call ptr @memcpy(ptr %dest, ptr %src, i32 16)
  %arrayidx = getelementptr %struct.bkey, ptr %src, i32 0, i32 2, i32 %i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %ptr7 = getelementptr inbounds %struct.bkey, ptr %dest, i32 0, i32 2
  %5 = ptrtoint ptr %ptr7 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %ptr7, align 8
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dest, align 8
  %and.i15 = and i64 %7, -8286623314361712641
  %or.i = or i64 %and.i15, 1152921504606846976
  store i64 %or.i, ptr %dest, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bch_cut_front(ptr nocapture noundef readonly %where, ptr nocapture noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %and.i = and i64 %1, 1048575
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %2 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %low.i, align 8
  %4 = ptrtoint ptr %where to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %where, align 8
  %and.i.i = and i64 %5, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i
  br i1 %cmp.not.i, label %bkey_cmp.exit, label %bkey_cmp.exit.thread, !prof !46

bkey_cmp.exit:                                    ; preds = %entry
  %shr.i = lshr i64 %1, 20
  %and.i64 = and i64 %shr.i, 65535
  %sub.neg = sub i64 %and.i64, %3
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %where, i32 0, i32 1
  %6 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low.i.i, align 8
  %sub7.i = add i64 %sub.neg, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub7.i)
  %cmp = icmp slt i64 %sub7.i, 1
  br i1 %cmp, label %bkey_cmp.exit.cleanup_crit_edge, label %cond.false.i61

bkey_cmp.exit.cleanup_crit_edge:                  ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

bkey_cmp.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp84.not = icmp ugt i64 %and.i.i, %and.i
  br i1 %cmp84.not, label %cond.true.i57, label %bkey_cmp.exit.thread.cleanup_crit_edge

bkey_cmp.exit.thread.cleanup_crit_edge:           ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.true.i57:                                    ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i56 = sub nsw i64 %and.i.i, %and.i
  br label %bkey_cmp.exit63

cond.false.i61:                                   ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %low.i.i, align 8
  %sub7.i60 = sub i64 %9, %3
  br label %bkey_cmp.exit63

bkey_cmp.exit63:                                  ; preds = %cond.false.i61, %cond.true.i57
  %cond.i62 = phi i64 [ %sub.i56, %cond.true.i57 ], [ %sub7.i60, %cond.false.i61 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i62)
  %cmp5 = icmp slt i64 %cond.i62, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %bkey_cmp.exit63
  call void @__sanitizer_cov_trace_pc() #16
  %low.i66 = getelementptr inbounds %struct.bkey, ptr %where, i32 0, i32 1
  %10 = ptrtoint ptr %low.i66 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %low.i66, align 8
  %sub9 = sub i64 %3, %11
  %conv = trunc i64 %sub9 to i32
  br label %if.end10

if.else:                                          ; preds = %bkey_cmp.exit63
  call void @__sanitizer_cov_trace_pc() #16
  %and.i4.i = and i64 %1, -1048576
  %or.i.i = or i64 %and.i.i, %and.i4.i
  %12 = ptrtoint ptr %k to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or.i.i, ptr %k, align 8
  %low.i.i68 = getelementptr inbounds %struct.bkey, ptr %where, i32 0, i32 1
  %13 = ptrtoint ptr %low.i.i68 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %low.i.i68, align 8
  %15 = ptrtoint ptr %low.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %low.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %len.0 = phi i32 [ %conv, %if.then6 ], [ 0, %if.else ]
  %16 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %k, align 8
  %18 = and i64 %17, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp1392.not = icmp eq i64 %18, 0
  %.pre = zext i32 %len.0 to i64
  br i1 %cmp1392.not, label %if.end10.do.body_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %19 = phi i64 [ %23, %for.body.for.body_crit_edge ], [ %17, %if.end10.for.body_crit_edge ]
  %i.093 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.093
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i, align 8
  %shr.i73 = lshr i64 %19, 20
  %and.i74 = and i64 %shr.i73, 65535
  %add = sub nsw i64 %and.i74, %.pre
  %and.i76 = and i64 %21, -2251799813684993
  %sub1894 = shl nsw i64 %add, 8
  %.mask = and i64 %21, 2251799813684992
  %and1.i = add nsw i64 %.mask, %sub1894
  %shl.i = and i64 %and1.i, 2251799813684992
  %or.i = or i64 %shl.i, %and.i76
  store i64 %or.i, ptr %arrayidx.i, align 8
  %inc = add i32 %i.093, 1
  %conv11 = zext i32 %inc to i64
  %22 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %k, align 8
  %shr.i69 = lshr i64 %23, 60
  %and.i70 = and i64 %shr.i69, 7
  %cmp13 = icmp ugt i64 %and.i70, %conv11
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.end10.do.body_crit_edge
  %.lcssa = phi i64 [ %17, %if.end10.do.body_crit_edge ], [ %23, %for.body.do.body_crit_edge ]
  %shr.i77 = lshr i64 %.lcssa, 20
  %and.i78 = and i64 %shr.i77, 65535
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i78, i64 %.pre)
  %cmp21 = icmp ult i64 %and.i78, %.pre
  br i1 %cmp21, label %do.body25, label %do.end31, !prof !49

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 212, 0\0A.popsection", ""() #14, !srcloc !51
  unreachable

do.end31:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %and.i79 = and i64 %.lcssa, -68718428161
  %and1.i80 = shl nuw nsw i64 %.pre, 20
  %shl.i81 = and i64 %and1.i80, 68718428160
  %or.i82 = or i64 %and.i79, %shl.i81
  %24 = ptrtoint ptr %k to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i82, ptr %k, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %bkey_cmp.exit.thread.cleanup_crit_edge, %bkey_cmp.exit.cleanup_crit_edge
  %cmp86 = phi i1 [ false, %bkey_cmp.exit.thread.cleanup_crit_edge ], [ false, %bkey_cmp.exit.cleanup_crit_edge ], [ true, %do.end31 ]
  ret i1 %cmp86
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bch_cut_back(ptr nocapture noundef readonly %where, ptr nocapture noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %where to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %where, align 8
  %and.i.i = and i64 %1, 1048575
  %2 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %k, align 8
  %and.i12.i = and i64 %3, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %bkey_cmp.exit, label %bkey_cmp.exit.thread, !prof !46

bkey_cmp.exit:                                    ; preds = %entry
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %where, i32 0, i32 1
  %4 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %low.i.i, align 8
  %low.i15.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %6 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %low.i15.i, align 8
  %sub7.i = sub i64 %5, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp = icmp sgt i64 %sub7.i, -1
  br i1 %cmp, label %bkey_cmp.exit.cleanup_crit_edge, label %bkey_cmp.exit71

bkey_cmp.exit.cleanup_crit_edge:                  ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

bkey_cmp.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp85.not = icmp ult i64 %and.i.i, %and.i12.i
  br i1 %cmp85.not, label %do.body6, label %bkey_cmp.exit.thread.cleanup_crit_edge

bkey_cmp.exit.thread.cleanup_crit_edge:           ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body6:                                         ; preds = %bkey_cmp.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #14, !srcloc !52
  unreachable

bkey_cmp.exit71:                                  ; preds = %bkey_cmp.exit
  %8 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %low.i15.i, align 8
  %shr.i = lshr i64 %3, 20
  %and.i74 = and i64 %shr.i, 65535
  %sub.neg = sub i64 %and.i74, %9
  %10 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %low.i.i, align 8
  %sub7.i68 = add i64 %sub.neg, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub7.i68)
  %cmp17 = icmp sgt i64 %sub7.i68, 0
  br i1 %cmp17, label %if.then18, label %bkey_cmp.exit71.if.end24_crit_edge

bkey_cmp.exit71.if.end24_crit_edge:               ; preds = %bkey_cmp.exit71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then18:                                        ; preds = %bkey_cmp.exit71
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %low.i.i, align 8
  %sub23 = add i64 %sub.neg, %13
  %conv = trunc i64 %sub23 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %bkey_cmp.exit71.if.end24_crit_edge
  %len.0 = phi i32 [ %conv, %if.then18 ], [ 0, %bkey_cmp.exit71.if.end24_crit_edge ]
  %and.i4.i = and i64 %3, -1048576
  %or.i.i = or i64 %and.i4.i, %and.i.i
  %14 = ptrtoint ptr %k to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or.i.i, ptr %k, align 8
  %15 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %low.i.i, align 8
  %17 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %low.i15.i, align 8
  %conv26 = zext i32 %len.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i74, i64 %conv26)
  %cmp28 = icmp ult i64 %and.i74, %conv26
  br i1 %cmp28, label %do.body37, label %do.end45, !prof !49

do.body37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #14, !srcloc !53
  unreachable

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %and.i83 = and i64 %or.i.i, -68718428161
  %and1.i = shl nuw nsw i64 %conv26, 20
  %shl.i = and i64 %and1.i, 68718428160
  %or.i = or i64 %shl.i, %and.i83
  %18 = ptrtoint ptr %k to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or.i, ptr %k, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %bkey_cmp.exit.thread.cleanup_crit_edge, %bkey_cmp.exit.cleanup_crit_edge
  %cmp87 = phi i1 [ false, %bkey_cmp.exit.thread.cleanup_crit_edge ], [ false, %bkey_cmp.exit.cleanup_crit_edge ], [ true, %do.end45 ]
  ret i1 %cmp87
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_keys_free(ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page_order.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_order.i.i.i, align 4
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl i32 4096, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl.i.i.i)
  %cmp = icmp ult i32 %shl.i.i.i, 524288
  %prev = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %3) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  %div1.i.i = lshr exact i32 %shl.i.i.i, 7
  %sub.i = add nsw i32 %div1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %tobool.not.i.i = icmp ult i32 %sub.i, 4096
  %shr.i = lshr i32 %sub.i, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !48
  %sub.i.i = sub nuw nsw i32 32, %5
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @free_pages(i32 noundef %4, i32 noundef %cond.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %page_order.i.i.i, align 4
  %conv.i.i.i50 = zext i8 %7 to i32
  %shl.i.i.i51 = shl i32 4096, %conv.i.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %shl.i.i.i51)
  %cmp5 = icmp ult i32 %shl.i.i.i51, 131072
  %tree = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %8 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tree, align 8
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %9) #14
  br label %if.end11

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %9 to i32
  %div1.i.i52 = lshr exact i32 %shl.i.i.i51, 5
  %sub.i31 = add nsw i32 %div1.i.i52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i31)
  %tobool.not.i.i39 = icmp ult i32 %sub.i31, 4096
  %shr.i38 = lshr i32 %sub.i31, 12
  %11 = tail call i32 @llvm.ctlz.i32(i32 %shr.i38, i1 true) #14, !range !48
  %sub.i.i40 = sub nuw nsw i32 32, %11
  %cond.i.i41 = select i1 %tobool.not.i.i39, i32 0, i32 %sub.i.i40
  tail call void @free_pages(i32 noundef %10, i32 noundef %cond.i.i41) #14
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then6
  %data = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %page_order.i.i.i, align 4
  %conv = zext i8 %16 to i32
  tail call void @free_pages(i32 noundef %14, i32 noundef %conv) #14
  %prev12 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 4
  %17 = ptrtoint ptr %prev12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %prev12, align 4
  %tree13 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %18 = ptrtoint ptr %tree13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tree13, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_btree_keys_alloc(ptr nocapture noundef %b, i32 noundef %page_order, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !46

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #14, !srcloc !54
  unreachable

do.end8:                                          ; preds = %entry
  %conv = trunc i32 %page_order to i8
  %page_order9 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %page_order9 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %page_order9, align 4
  %or = or i32 %gfp, 262144
  %conv11 = and i32 %page_order, 255
  %call = tail call i32 @__get_free_pages(i32 noundef %or, i32 noundef %conv11) #14
  %3 = inttoptr i32 %call to ptr
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %do.end8.err_crit_edge, label %if.end16

do.end8.err_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end16:                                         ; preds = %do.end8
  %5 = ptrtoint ptr %page_order9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %page_order9, align 4
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl i32 4096, %conv.i.i.i
  %div1.i.i = lshr exact i32 %shl.i.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %shl.i.i.i)
  %cmp = icmp ult i32 %shl.i.i.i, 131072
  br i1 %cmp, label %if.end8.i, label %get_order.exit

if.end8.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div1.i.i, i32 noundef %gfp) #20
  br label %cond.end

get_order.exit:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add nsw i32 %div1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %tobool.not.i.i66 = icmp ult i32 %sub.i, 4096
  %shr.i = lshr i32 %sub.i, 12
  %7 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !48
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %tobool.not.i.i66, i32 0, i32 %sub.i.i
  %call23 = tail call i32 @__get_free_pages(i32 noundef %gfp, i32 noundef %cond.i.i) #14
  %8 = inttoptr i32 %call23 to ptr
  br label %cond.end

cond.end:                                         ; preds = %get_order.exit, %if.end8.i
  %cond = phi ptr [ %8, %get_order.exit ], [ %call9.i, %if.end8.i ]
  %tree = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %9 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %tree, align 8
  %tobool25.not = icmp eq ptr %cond, null
  br i1 %tobool25.not, label %cond.end.err_crit_edge, label %if.end27

cond.end.err_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end27:                                         ; preds = %cond.end
  %10 = ptrtoint ptr %page_order9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %page_order9, align 4
  %conv.i.i.i137 = zext i8 %11 to i32
  %shl.i.i.i138 = shl i32 4096, %conv.i.i.i137
  %div1.i.i139 = lshr exact i32 %shl.i.i.i138, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl.i.i.i138)
  %cmp29 = icmp ult i32 %shl.i.i.i138, 524288
  br i1 %cmp29, label %if.end8.i107, label %get_order.exit127

if.end8.i107:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i106 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %div1.i.i139, i32 noundef %gfp) #20
  br label %cond.end38

get_order.exit127:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i114 = add nsw i32 %div1.i.i139, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i114)
  %tobool.not.i.i122 = icmp ult i32 %sub.i114, 4096
  %shr.i121 = lshr i32 %sub.i114, 12
  %12 = tail call i32 @llvm.ctlz.i32(i32 %shr.i121, i1 true) #14, !range !48
  %sub.i.i123 = sub nuw nsw i32 32, %12
  %cond.i.i124 = select i1 %tobool.not.i.i122, i32 0, i32 %sub.i.i123
  %call37 = tail call i32 @__get_free_pages(i32 noundef %gfp, i32 noundef %cond.i.i124) #14
  %13 = inttoptr i32 %call37 to ptr
  br label %cond.end38

cond.end38:                                       ; preds = %get_order.exit127, %if.end8.i107
  %cond39 = phi ptr [ %13, %get_order.exit127 ], [ %call9.i106, %if.end8.i107 ]
  %prev = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 4
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond39, ptr %prev, align 4
  %tobool41.not = icmp eq ptr %cond39, null
  br i1 %tobool41.not, label %cond.end38.err_crit_edge, label %cond.end38.cleanup_crit_edge

cond.end38.cleanup_crit_edge:                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end38.err_crit_edge:                         ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

err:                                              ; preds = %cond.end38.err_crit_edge, %cond.end.err_crit_edge, %do.end8.err_crit_edge
  tail call void @bch_btree_keys_free(ptr noundef %b)
  br label %cleanup

cleanup:                                          ; preds = %err, %cond.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %cond.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bch_btree_keys_init(ptr nocapture noundef %b, ptr noundef %ops, ptr noundef %expensive_debug_checks) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %b, align 8
  %expensive_debug_checks2 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 4
  %1 = ptrtoint ptr %expensive_debug_checks2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %expensive_debug_checks, ptr %expensive_debug_checks2, align 8
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %nsets to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %nsets, align 1
  %last_set_unwritten = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %3 = ptrtoint ptr %last_set_unwritten to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %last_set_unwritten, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %last_set_unwritten, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bset_init_next(ptr noundef %b, ptr noundef %i, i64 noundef %magic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %cmp.not = icmp eq ptr %1, %i
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %2 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nsets, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %nsets, align 1
  %idxprom = zext i8 %inc to i32
  %data2 = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %idxprom, i32 5
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i, ptr %data2, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %seq = getelementptr inbounds %struct.bset, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %seq, align 8
  %seq6 = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 2
  %9 = ptrtoint ptr %seq6 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %seq6, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq7 = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 2
  tail call void @get_random_bytes(ptr noundef %seq7, i32 noundef 8) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %magic8 = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 1
  %10 = ptrtoint ptr %magic8 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %magic, ptr %magic8, align 8
  %version = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 3
  %11 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %version, align 8
  %keys = getelementptr inbounds %struct.bset, ptr %i, i32 0, i32 4
  %12 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %keys, align 4
  %set.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %13 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nsets.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %add.ptr.i.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i
  %last_set_unwritten.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %15 = ptrtoint ptr %last_set_unwritten.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %last_set_unwritten.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.end8.i, label %do.body3.i, !prof !46

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 655, 0\0A.popsection", ""() #14, !srcloc !55
  unreachable

do.end8.i:                                        ; preds = %if.end
  %bf.set.i = or i8 %bf.load.i, -128
  %16 = ptrtoint ptr %last_set_unwritten.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set.i, ptr %last_set_unwritten.i, align 2
  %cmp.not.i.i = icmp eq ptr %set.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %do.end8.i.if.end.i.i_crit_edge, label %if.then.i.i

do.end8.i.if.end.i.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.bset_tree, ptr %add.ptr.i.i, i32 -1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 8
  %add.i.i = add i32 %18, 15
  %div22.i.i = and i32 %add.i.i, -16
  %tree.i.i = getelementptr %struct.bset_tree, ptr %add.ptr.i.i, i32 -1, i32 3
  %19 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tree.i.i, align 8
  %add.ptr.i28.i = getelementptr %struct.bkey_float, ptr %20, i32 %div22.i.i
  %tree2.i.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i, i32 3
  %21 = ptrtoint ptr %tree2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i28.i, ptr %tree2.i.i, align 8
  %prev.i.i = getelementptr %struct.bset_tree, ptr %add.ptr.i.i, i32 -1, i32 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %23, i32 %div22.i.i
  %prev5.i.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i, i32 4
  %24 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr4.i.i, ptr %prev5.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.end8.i.if.end.i.i_crit_edge
  %add.ptr8.i.i = getelementptr %struct.btree_keys, ptr %b, i32 1
  %cmp923.i.i = icmp ugt ptr %add.ptr8.i.i, %add.ptr.i.i
  br i1 %cmp923.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.bset_alloc_tree.exit.i_crit_edge

if.end.i.i.bset_alloc_tree.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bset_alloc_tree.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %t.addr.024.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.bset_tree, ptr %t.addr.024.i.i, i32 1
  %25 = ptrtoint ptr %t.addr.024.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %t.addr.024.i.i, align 8
  %cmp9.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.bset_alloc_tree.exit.i_crit_edge

while.body.i.i.bset_alloc_tree.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bset_alloc_tree.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

bset_alloc_tree.exit.i:                           ; preds = %while.body.i.i.bset_alloc_tree.exit.i_crit_edge, %if.end.i.i.bset_alloc_tree.exit.i_crit_edge
  %tree.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i, i32 3
  %26 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tree.i, align 8
  %tree11.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %28 = ptrtoint ptr %tree11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tree11.i, align 8
  %page_order.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %30 = ptrtoint ptr %page_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %page_order.i.i.i, align 4
  %conv.i.i.i = zext i8 %31 to i32
  %shl.i.i.i = shl i32 4096, %conv.i.i.i
  %div1.i.i = lshr exact i32 %shl.i.i.i, 7
  %add.ptr.i = getelementptr %struct.bkey_float, ptr %29, i32 %div1.i.i
  %cmp.not.i = icmp eq ptr %27, %add.ptr.i
  br i1 %cmp.not.i, label %bset_alloc_tree.exit.i.bch_bset_build_unwritten_tree.exit_crit_edge, label %if.then13.i

bset_alloc_tree.exit.i.bch_bset_build_unwritten_tree.exit_crit_edge: ; preds = %bset_alloc_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_bset_build_unwritten_tree.exit

if.then13.i:                                      ; preds = %bset_alloc_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i, i32 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %33, align 1
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %add.ptr.i.i, align 8
  br label %bch_bset_build_unwritten_tree.exit

bch_bset_build_unwritten_tree.exit:               ; preds = %if.then13.i, %bset_alloc_tree.exit.i.bch_bset_build_unwritten_tree.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bset_build_written_tree(ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i
  %data = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %4 = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 5
  %last_set_unwritten = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %5 = ptrtoint ptr %last_set_unwritten to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %last_set_unwritten, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %last_set_unwritten, align 2
  %cmp.not.i = icmp eq ptr %set.i, %add.ptr.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.bset_tree, ptr %add.ptr.i, i32 -1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %7, 15
  %div22.i = and i32 %add.i, -16
  %tree.i = getelementptr %struct.bset_tree, ptr %add.ptr.i, i32 -1, i32 3
  %8 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tree.i, align 8
  %add.ptr.i132 = getelementptr %struct.bkey_float, ptr %9, i32 %div22.i
  %tree2.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 3
  %10 = ptrtoint ptr %tree2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i132, ptr %tree2.i, align 8
  %prev.i = getelementptr %struct.bset_tree, ptr %add.ptr.i, i32 -1, i32 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 %div22.i
  %prev5.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 4
  %13 = ptrtoint ptr %prev5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr4.i, ptr %prev5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add.ptr8.i = getelementptr %struct.btree_keys, ptr %b, i32 1
  %cmp923.i = icmp ugt ptr %add.ptr8.i, %add.ptr.i
  br i1 %cmp923.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.bset_alloc_tree.exit_crit_edge

if.end.i.bset_alloc_tree.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bset_alloc_tree.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %t.addr.024.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.bset_tree, ptr %t.addr.024.i, i32 1
  %14 = ptrtoint ptr %t.addr.024.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %t.addr.024.i, align 8
  %cmp9.i = icmp ult ptr %incdec.ptr.i, %add.ptr8.i
  br i1 %cmp9.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.bset_alloc_tree.exit_crit_edge

while.body.i.bset_alloc_tree.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bset_alloc_tree.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

bset_alloc_tree.exit:                             ; preds = %while.body.i.bset_alloc_tree.exit_crit_edge, %if.end.i.bset_alloc_tree.exit_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %17 = getelementptr inbounds %struct.bset, ptr %16, i32 0, i32 5
  %keys = getelementptr inbounds %struct.bset, ptr %16, i32 0, i32 4
  %18 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %keys, align 4
  %add.ptr.i133 = getelementptr i64, ptr %17, i32 %19
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i133 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 128
  %tree = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tree, align 8
  %page_order.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %22 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %page_order.i.i, align 4
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl i32 4096, %conv.i.i
  %div1.i = lshr exact i32 %shl.i.i, 7
  %add.ptr = getelementptr %struct.bkey_float, ptr %21, i32 %div1.i
  %tree8 = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 3
  %24 = ptrtoint ptr %tree8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tree8, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %26 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %sub.ptr.div)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp10 = icmp ult i32 %26, 2
  br i1 %cmp10, label %if.then, label %cond.end38

if.then:                                          ; preds = %bset_alloc_tree.exit
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %add.ptr.i, align 8
  br label %cleanup

cond.end38:                                       ; preds = %bset_alloc_tree.exit
  %sub = add nsw i32 %26, -1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #14, !range !48
  %sub.i.i.op.i = xor i32 %29, 31
  %cond39.neg = shl nsw i32 -1, %sub.i.i.op.i
  %sub40 = add i32 %cond39.neg, %26
  %shl41 = shl i32 %sub40, 1
  %extra = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 1
  %30 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl41, ptr %extra, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %cond.end38
  %j.addr.0.i = phi i32 [ %mul3.i, %while.cond.i.while.cond.i_crit_edge ], [ 1, %cond.end38 ]
  %mul3.i = shl i32 %j.addr.0.i, 1
  %cmp4.i = icmp ult i32 %mul3.i, %26
  br i1 %cmp4.i, label %while.cond.i.while.cond.i_crit_edge, label %inorder_next.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

inorder_next.exit:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.addr.0.i)
  %tobool.not194 = icmp eq i32 %j.addr.0.i, 0
  br i1 %tobool.not194, label %inorder_next.exit.while.cond59.preheader_crit_edge, label %while.cond.preheader.lr.ph

inorder_next.exit.while.cond59.preheader_crit_edge: ; preds = %inorder_next.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond59.preheader

while.cond.preheader.lr.ph:                       ; preds = %inorder_next.exit
  %prev50 = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %inorder_next.exit155.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %cacheline.0198 = phi i32 [ 1, %while.cond.preheader.lr.ph ], [ %inc, %inorder_next.exit155.while.cond.preheader_crit_edge ]
  %j.0197 = phi i32 [ %j.addr.0.i, %while.cond.preheader.lr.ph ], [ %j.addr.1.i153, %inorder_next.exit155.while.cond.preheader_crit_edge ]
  %k.0196 = phi ptr [ %4, %while.cond.preheader.lr.ph ], [ %k.1.lcssa186, %inorder_next.exit155.while.cond.preheader_crit_edge ]
  %prev.0195 = phi ptr [ null, %while.cond.preheader.lr.ph ], [ %prev.1.lcssa, %inorder_next.exit155.while.cond.preheader_crit_edge ]
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %sub.ptr.rhs.cast.i137 = ptrtoint ptr %32 to i32
  %sub.ptr.lhs.cast.i136187 = ptrtoint ptr %k.0196 to i32
  %sub.ptr.sub.i138188 = sub i32 %sub.ptr.lhs.cast.i136187, %sub.ptr.rhs.cast.i137
  %div.i139189 = sdiv i32 %sub.ptr.sub.i138188, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i139189, i32 %cacheline.0198)
  %cmp45190 = icmp ult i32 %div.i139189, %cacheline.0198
  br i1 %cmp45190, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond59.preheader:                           ; preds = %inorder_next.exit155.while.cond59.preheader_crit_edge, %inorder_next.exit.while.cond59.preheader_crit_edge
  %k.0.lcssa = phi ptr [ %4, %inorder_next.exit.while.cond59.preheader_crit_edge ], [ %k.1.lcssa186, %inorder_next.exit155.while.cond59.preheader_crit_edge ]
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 8
  %35 = getelementptr inbounds %struct.bset, ptr %34, i32 0, i32 5
  %keys64 = getelementptr inbounds %struct.bset, ptr %34, i32 0, i32 4
  %36 = ptrtoint ptr %keys64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %keys64, align 4
  %add.ptr.i159 = getelementptr i64, ptr %35, i32 %37
  br label %while.cond59

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %k.1191 = phi ptr [ %add.ptr.i141, %while.body.while.body_crit_edge ], [ %k.0196, %while.cond.preheader.while.body_crit_edge ]
  %38 = ptrtoint ptr %k.1191 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %k.1191, align 8
  %shr.i.i.i = lshr i64 %39, 60
  %40 = trunc i64 %shr.i.i.i to i32
  %41 = and i32 %40, 7
  %conv.i.i140 = add nuw nsw i32 %41, 2
  %add.ptr.i141 = getelementptr i64, ptr %k.1191, i32 %conv.i.i140
  %sub.ptr.lhs.cast.i136 = ptrtoint ptr %add.ptr.i141 to i32
  %sub.ptr.sub.i138 = sub i32 %sub.ptr.lhs.cast.i136, %sub.ptr.rhs.cast.i137
  %div.i139 = sdiv i32 %sub.ptr.sub.i138, 128
  %cmp45 = icmp ult i32 %div.i139, %cacheline.0198
  br i1 %cmp45, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast.i136.le = ptrtoint ptr %add.ptr.i141 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader.while.end_crit_edge
  %sub.ptr.lhs.cast.i136.le.pre-phi = phi i32 [ %sub.ptr.lhs.cast.i136187, %while.cond.preheader.while.end_crit_edge ], [ %sub.ptr.lhs.cast.i136.le, %while.end.loopexit ]
  %k.1.lcssa186 = phi ptr [ %k.0196, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr.i141, %while.end.loopexit ]
  %prev.1.lcssa = phi ptr [ %prev.0195, %while.cond.preheader.while.end_crit_edge ], [ %k.1191, %while.end.loopexit ]
  %42 = ptrtoint ptr %prev.1.lcssa to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %prev.1.lcssa, align 8
  %shr.i.i = lshr i64 %43, 60
  %44 = trunc i64 %shr.i.i to i8
  %45 = and i8 %44, 7
  %conv.i142 = add nuw nsw i8 %45, 2
  %46 = ptrtoint ptr %prev50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev50, align 4
  %arrayidx = getelementptr i8, ptr %47, i32 %j.0197
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i142, ptr %arrayidx, align 1
  %inc = add i32 %cacheline.0198, 1
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 8
  %mul.i.i = shl i32 %cacheline.0198, 7
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %mul.i.i
  %sub.ptr.rhs.cast.i144 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i145 = sub i32 %sub.ptr.lhs.cast.i136.le.pre-phi, %sub.ptr.rhs.cast.i144
  %51 = ptrtoint ptr %tree8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tree8, align 8
  %arrayidx53 = getelementptr %struct.bkey_float, ptr %52, i32 %j.0197
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %bf.load54 = load i32, ptr %arrayidx53, align 1
  %bf.value = shl i32 %sub.ptr.sub.i145, 19
  %bf.shl = and i32 %bf.value, 29360128
  %bf.clear55 = and i32 %bf.load54, -29360129
  %bf.set56 = or i32 %bf.shl, %bf.clear55
  store i32 %bf.set56, ptr %arrayidx53, align 1
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 8
  %mul.i = shl i32 %j.0197, 1
  %add.i146 = or i32 %mul.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i146, i32 %55)
  %cmp.i147 = icmp ult i32 %add.i146, %55
  br i1 %cmp.i147, label %while.end.while.cond.i151_crit_edge, label %if.else.i152

while.end.while.cond.i151_crit_edge:              ; preds = %while.end
  br label %while.cond.i151

while.cond.i151:                                  ; preds = %while.cond.i151.while.cond.i151_crit_edge, %while.end.while.cond.i151_crit_edge
  %j.addr.0.i148 = phi i32 [ %mul3.i149, %while.cond.i151.while.cond.i151_crit_edge ], [ %add.i146, %while.end.while.cond.i151_crit_edge ]
  %mul3.i149 = shl i32 %j.addr.0.i148, 1
  %cmp4.i150 = icmp ult i32 %mul3.i149, %55
  br i1 %cmp4.i150, label %while.cond.i151.while.cond.i151_crit_edge, label %while.cond.i151.inorder_next.exit155_crit_edge

while.cond.i151.inorder_next.exit155_crit_edge:   ; preds = %while.cond.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %inorder_next.exit155

while.cond.i151.while.cond.i151_crit_edge:        ; preds = %while.cond.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i151

if.else.i152:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %neg.i = xor i32 %j.0197, -1
  %56 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 false) #14, !range !48
  %add6.i = add nuw nsw i32 %56, 1
  %shr.i = lshr i32 %j.0197, %add6.i
  br label %inorder_next.exit155

inorder_next.exit155:                             ; preds = %if.else.i152, %while.cond.i151.inorder_next.exit155_crit_edge
  %j.addr.1.i153 = phi i32 [ %shr.i, %if.else.i152 ], [ %j.addr.0.i148, %while.cond.i151.inorder_next.exit155_crit_edge ]
  %tobool.not = icmp eq i32 %j.addr.1.i153, 0
  br i1 %tobool.not, label %inorder_next.exit155.while.cond59.preheader_crit_edge, label %inorder_next.exit155.while.cond.preheader_crit_edge

inorder_next.exit155.while.cond.preheader_crit_edge: ; preds = %inorder_next.exit155
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

inorder_next.exit155.while.cond59.preheader_crit_edge: ; preds = %inorder_next.exit155
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond59.preheader

while.cond59:                                     ; preds = %while.cond59.while.cond59_crit_edge, %while.cond59.preheader
  %k.2 = phi ptr [ %add.ptr.i158, %while.cond59.while.cond59_crit_edge ], [ %k.0.lcssa, %while.cond59.preheader ]
  %57 = ptrtoint ptr %k.2 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %k.2, align 8
  %shr.i.i.i156 = lshr i64 %58, 60
  %59 = trunc i64 %shr.i.i.i156 to i32
  %60 = and i32 %59, 7
  %conv.i.i157 = add nuw nsw i32 %60, 2
  %add.ptr.i158 = getelementptr i64, ptr %k.2, i32 %conv.i.i157
  %cmp66.not = icmp eq ptr %add.ptr.i158, %add.ptr.i159
  br i1 %cmp66.not, label %while.end70, label %while.cond59.while.cond59_crit_edge

while.cond59.while.cond59_crit_edge:              ; preds = %while.cond59
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond59

while.end70:                                      ; preds = %while.cond59
  %end = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 2
  %61 = call ptr @memcpy(ptr %end, ptr %k.2, i32 16)
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i163 = icmp ugt i32 %63, 1
  br i1 %cmp.i163, label %while.end70.while.cond.i167_crit_edge, label %while.end70.cleanup_crit_edge

while.end70.cleanup_crit_edge:                    ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.end70.while.cond.i167_crit_edge:            ; preds = %while.end70
  br label %while.cond.i167

while.cond.i167:                                  ; preds = %while.cond.i167.while.cond.i167_crit_edge, %while.end70.while.cond.i167_crit_edge
  %j.addr.0.i164 = phi i32 [ %mul3.i165, %while.cond.i167.while.cond.i167_crit_edge ], [ 1, %while.end70.while.cond.i167_crit_edge ]
  %mul3.i165 = shl i32 %j.addr.0.i164, 1
  %cmp4.i166 = icmp ult i32 %mul3.i165, %63
  br i1 %cmp4.i166, label %while.cond.i167.while.cond.i167_crit_edge, label %inorder_next.exit171

while.cond.i167.while.cond.i167_crit_edge:        ; preds = %while.cond.i167
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i167

inorder_next.exit171:                             ; preds = %while.cond.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.addr.0.i164)
  %tobool74.not200 = icmp eq i32 %j.addr.0.i164, 0
  br i1 %tobool74.not200, label %inorder_next.exit171.cleanup_crit_edge, label %inorder_next.exit171.for.body75_crit_edge

inorder_next.exit171.for.body75_crit_edge:        ; preds = %inorder_next.exit171
  br label %for.body75

inorder_next.exit171.cleanup_crit_edge:           ; preds = %inorder_next.exit171
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body75:                                       ; preds = %inorder_next.exit185.for.body75_crit_edge, %inorder_next.exit171.for.body75_crit_edge
  %j.1201 = phi i32 [ %j.addr.1.i183, %inorder_next.exit185.for.body75_crit_edge ], [ %j.addr.0.i164, %inorder_next.exit171.for.body75_crit_edge ]
  tail call fastcc void @make_bfloat(ptr noundef %add.ptr.i, i32 noundef %j.1201)
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i, align 8
  %mul.i172 = shl i32 %j.1201, 1
  %add.i173 = or i32 %mul.i172, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i173, i32 %65)
  %cmp.i174 = icmp ult i32 %add.i173, %65
  br i1 %cmp.i174, label %for.body75.while.cond.i178_crit_edge, label %if.else.i182

for.body75.while.cond.i178_crit_edge:             ; preds = %for.body75
  br label %while.cond.i178

while.cond.i178:                                  ; preds = %while.cond.i178.while.cond.i178_crit_edge, %for.body75.while.cond.i178_crit_edge
  %j.addr.0.i175 = phi i32 [ %mul3.i176, %while.cond.i178.while.cond.i178_crit_edge ], [ %add.i173, %for.body75.while.cond.i178_crit_edge ]
  %mul3.i176 = shl i32 %j.addr.0.i175, 1
  %cmp4.i177 = icmp ult i32 %mul3.i176, %65
  br i1 %cmp4.i177, label %while.cond.i178.while.cond.i178_crit_edge, label %while.cond.i178.inorder_next.exit185_crit_edge

while.cond.i178.inorder_next.exit185_crit_edge:   ; preds = %while.cond.i178
  call void @__sanitizer_cov_trace_pc() #16
  br label %inorder_next.exit185

while.cond.i178.while.cond.i178_crit_edge:        ; preds = %while.cond.i178
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i178

if.else.i182:                                     ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #16
  %neg.i179 = xor i32 %j.1201, -1
  %66 = tail call i32 @llvm.cttz.i32(i32 %neg.i179, i1 false) #14, !range !48
  %add6.i180 = add nuw nsw i32 %66, 1
  %shr.i181 = lshr i32 %j.1201, %add6.i180
  br label %inorder_next.exit185

inorder_next.exit185:                             ; preds = %if.else.i182, %while.cond.i178.inorder_next.exit185_crit_edge
  %j.addr.1.i183 = phi i32 [ %shr.i181, %if.else.i182 ], [ %j.addr.0.i175, %while.cond.i178.inorder_next.exit185_crit_edge ]
  %tobool74.not = icmp eq i32 %j.addr.1.i183, 0
  br i1 %tobool74.not, label %inorder_next.exit185.cleanup_crit_edge, label %inorder_next.exit185.for.body75_crit_edge

inorder_next.exit185.for.body75_crit_edge:        ; preds = %inorder_next.exit185
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body75

inorder_next.exit185.cleanup_crit_edge:           ; preds = %inorder_next.exit185
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %inorder_next.exit185.cleanup_crit_edge, %inorder_next.exit171.cleanup_crit_edge, %while.end70.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @make_bfloat(ptr noundef readonly %t, i32 noundef %j) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tree = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree, align 8
  %arrayidx = getelementptr %struct.bkey_float, ptr %1, i32 %j
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 8
  %extra.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j)
  %tobool.not.i.i.i.i = icmp eq i32 %j, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %j, i1 true) #14, !range !48
  %sub.i.i.i.i = sub nuw nsw i32 32, %6
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %sub.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i18.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #14, !range !48
  %sub.i19.i.i.i = sub nuw nsw i32 32, %7
  %cond.i20.i.i.i = select i1 %tobool.not.i18.i.i.i, i32 0, i32 %sub.i19.i.i.i
  %sub2.i.i.i = sub nsw i32 %cond.i20.i.i.i, %cond.i.i.i.i
  %sub3.i.i.i = add nsw i32 %cond.i.i.i.i, -1
  %shl.i.i.i = shl nuw i32 1, %sub3.i.i.i
  %xor.i.i.i = xor i32 %shl.i.i.i, %j
  %shl4.i.i.i = shl i32 %xor.i.i.i, 1
  %or.i.i.i = or i32 %shl4.i.i.i, 1
  %shl5.i.i.i = shl i32 %or.i.i.i, %sub2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i, i32 %5)
  %cmp.i.i.i = icmp ugt i32 %shl5.i.i.i, %5
  %sub6.i.i.i = sub i32 %shl5.i.i.i, %5
  %shr.i.i.i = lshr i32 %sub6.i.i.i, 1
  %sub7.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 0
  %j.addr.0.i.i.i = sub i32 %shl5.i.i.i, %sub7.i.i.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %arrayidx, align 1
  %data.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 8
  %mul.i.i = shl i32 %j.addr.0.i.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %mul.i.i
  %11 = lshr i32 %bf.load.i, 19
  %mul1.i.i = and i32 %11, 56
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul1.i.i
  %prev.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %arrayidx.i140 = getelementptr i8, ptr %13, i32 %j
  %14 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i140, align 1
  %conv.i141 = zext i8 %15 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i141
  %add.ptr.i = getelementptr i64, ptr %add.ptr2.i.i, i32 %idx.neg.i
  %16 = tail call i32 @llvm.ctpop.i32(i32 %j) #14, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %.not = icmp eq i32 %16, 1
  br i1 %.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %17 = getelementptr inbounds %struct.bset, ptr %10, i32 0, i32 5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = tail call i32 @llvm.cttz.i32(i32 %j, i1 true), !range !48
  %19 = add nuw nsw i32 %18, 1
  %ffs = select i1 %tobool.not.i.i.i.i, i32 0, i32 %19
  %shr = lshr i32 %j, %ffs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not.i.i.i.i.i143 = icmp eq i32 %shr, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #14, !range !48
  %sub.i.i.i.i.i144 = sub nuw nsw i32 32, %20
  %cond.i.i.i.i.i145 = select i1 %tobool.not.i.i.i.i.i143, i32 0, i32 %sub.i.i.i.i.i144
  %sub2.i.i.i.i150 = sub nsw i32 %cond.i20.i.i.i, %cond.i.i.i.i.i145
  %sub3.i.i.i.i151 = add nsw i32 %cond.i.i.i.i.i145, -1
  %shl.i.i.i.i152 = shl nuw i32 1, %sub3.i.i.i.i151
  %xor.i.i.i.i153 = xor i32 %shl.i.i.i.i152, %shr
  %shl4.i.i.i.i154 = shl i32 %xor.i.i.i.i153, 1
  %or.i.i.i.i155 = or i32 %shl4.i.i.i.i154, 1
  %shl5.i.i.i.i156 = shl i32 %or.i.i.i.i155, %sub2.i.i.i.i150
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i.i156, i32 %5)
  %cmp.i.i.i.i157 = icmp ugt i32 %shl5.i.i.i.i156, %5
  %sub6.i.i.i.i158 = sub i32 %shl5.i.i.i.i156, %5
  %shr.i.i.i.i159 = lshr i32 %sub6.i.i.i.i158, 1
  %sub7.i.i.i.i160 = select i1 %cmp.i.i.i.i157, i32 %shr.i.i.i.i159, i32 0
  %j.addr.0.i.i.i.i161 = sub i32 %shl5.i.i.i.i156, %sub7.i.i.i.i160
  %arrayidx.i.i163 = getelementptr %struct.bkey_float, ptr %1, i32 %shr
  %21 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i.i164 = load i32, ptr %arrayidx.i.i163, align 1
  %mul.i.i.i166 = shl i32 %j.addr.0.i.i.i.i161, 7
  %add.ptr.i.i.i167 = getelementptr i8, ptr %10, i32 %mul.i.i.i166
  %22 = lshr i32 %bf.load.i.i164, 19
  %mul1.i.i.i168 = and i32 %22, 56
  %add.ptr2.i.i.i169 = getelementptr i8, ptr %add.ptr.i.i.i167, i32 %mul1.i.i.i168
  %arrayidx.i171 = getelementptr i8, ptr %13, i32 %shr
  %23 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i171, align 1
  %conv.i172 = zext i8 %24 to i32
  %idx.neg.i173 = sub nsw i32 0, %conv.i172
  %add.ptr.i174 = getelementptr i64, ptr %add.ptr2.i.i.i169, i32 %idx.neg.i173
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ %add.ptr.i174, %cond.false ]
  %add = add i32 %j, 1
  %25 = tail call i32 @llvm.ctpop.i32(i32 %add) #14, !range !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %cond.true5, label %cond.false10

cond.true5:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %keys = getelementptr inbounds %struct.bset, ptr %10, i32 0, i32 4
  %27 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keys, align 4
  %end = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 2
  %29 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %end, align 8
  %shr.i.i = lshr i64 %30, 60
  %31 = trunc i64 %shr.i.i to i32
  %32 = and i32 %31, 7
  %conv.i179.neg = add i32 %28, -2
  %sub = sub i32 %conv.i179.neg, %32
  %33 = getelementptr inbounds %struct.bset, ptr %10, i32 0, i32 5
  %add.ptr.i.i180 = getelementptr i64, ptr %33, i32 %sub
  br label %cond.end15

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %j, -1
  %34 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 false) #14, !range !48
  %add12 = add nuw nsw i32 %34, 1
  %shr13 = lshr i32 %j, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13)
  %tobool.not.i.i.i.i182 = icmp eq i32 %shr13, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %shr13, i1 true) #14, !range !48
  %sub.i.i.i.i183 = sub nuw nsw i32 32, %35
  %cond.i.i.i.i184 = select i1 %tobool.not.i.i.i.i182, i32 0, i32 %sub.i.i.i.i183
  %sub2.i.i.i189 = sub nsw i32 %cond.i20.i.i.i, %cond.i.i.i.i184
  %sub3.i.i.i190 = add nsw i32 %cond.i.i.i.i184, -1
  %shl.i.i.i191 = shl nuw i32 1, %sub3.i.i.i190
  %xor.i.i.i192 = xor i32 %shl.i.i.i191, %shr13
  %shl4.i.i.i193 = shl i32 %xor.i.i.i192, 1
  %or.i.i.i194 = or i32 %shl4.i.i.i193, 1
  %shl5.i.i.i195 = shl i32 %or.i.i.i194, %sub2.i.i.i189
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i195, i32 %5)
  %cmp.i.i.i196 = icmp ugt i32 %shl5.i.i.i195, %5
  %sub6.i.i.i197 = sub i32 %shl5.i.i.i195, %5
  %shr.i.i.i198 = lshr i32 %sub6.i.i.i197, 1
  %sub7.i.i.i199 = select i1 %cmp.i.i.i196, i32 %shr.i.i.i198, i32 0
  %j.addr.0.i.i.i200 = sub i32 %shl5.i.i.i195, %sub7.i.i.i199
  %arrayidx.i202 = getelementptr %struct.bkey_float, ptr %1, i32 %shr13
  %36 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load.i203 = load i32, ptr %arrayidx.i202, align 1
  %mul.i.i205 = shl i32 %j.addr.0.i.i.i200, 7
  %add.ptr.i.i206 = getelementptr i8, ptr %10, i32 %mul.i.i205
  %37 = lshr i32 %bf.load.i203, 19
  %mul1.i.i207 = and i32 %37, 56
  %add.ptr2.i.i208 = getelementptr i8, ptr %add.ptr.i.i206, i32 %mul1.i.i207
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false10, %cond.true5
  %cond16 = phi ptr [ %add.ptr.i.i180, %cond.true5 ], [ %add.ptr2.i.i208, %cond.false10 ]
  %cmp = icmp ult ptr %add.ptr2.i.i, %cond
  %cmp17 = icmp ugt ptr %add.ptr2.i.i, %cond16
  %spec.select = select i1 %cmp, i1 true, i1 %cmp17, !prof !49
  br i1 %spec.select, label %do.body19, label %do.body25, !prof !49

do.body19:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 606, 0\0A.popsection", ""() #14, !srcloc !56
  unreachable

do.body25:                                        ; preds = %cond.end15
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.i, align 8
  %shr.i.i.i209 = lshr i64 %39, 60
  %40 = trunc i64 %shr.i.i.i209 to i32
  %41 = and i32 %40, 7
  %conv.i.i = add nuw nsw i32 %41, 2
  %add.ptr.i210 = getelementptr i64, ptr %add.ptr.i, i32 %conv.i.i
  %cmp27.not = icmp eq ptr %add.ptr.i210, %add.ptr2.i.i
  br i1 %cmp27.not, label %do.end43, label %do.body35, !prof !46

do.body35:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 607, 0\0A.popsection", ""() #14, !srcloc !57
  unreachable

do.end43:                                         ; preds = %do.body25
  %42 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cond, align 8
  %and.i = and i64 %43, 1048575
  %44 = ptrtoint ptr %cond16 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cond16, align 8
  %and.i211 = and i64 %45, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and.i211)
  %cmp46.not = icmp eq i64 %and.i, %and.i211
  br i1 %cmp46.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #16
  %xor = xor i64 %and.i211, %and.i
  %conv1.i = trunc i64 %xor to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %46 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #14, !range !48
  %.neg = mul nsw i32 %46, -33554432
  %sub.i6.i.op = add nsw i32 %.neg, 1073741824
  %phi.bo = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i.op
  %bf.clear = and i32 %bf.load.i, 33554431
  %47 = or i32 %phi.bo, %bf.clear
  %bf.set = xor i32 %47, -2147483648
  br label %if.end60

if.else:                                          ; preds = %do.end43
  %low = getelementptr inbounds %struct.bkey, ptr %cond16, i32 0, i32 1
  %48 = ptrtoint ptr %low to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %low, align 8
  %low52 = getelementptr inbounds %struct.bkey, ptr %cond, i32 0, i32 1
  %50 = ptrtoint ptr %low52 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %low52, align 8
  %xor53 = xor i64 %51, %49
  %shr.i127 = lshr i64 %xor53, 32
  %conv.i128 = trunc i64 %shr.i127 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i128)
  %tobool.not.i129 = icmp eq i32 %conv.i128, 0
  br i1 %tobool.not.i129, label %if.end.i136, label %if.then.i131

if.then.i131:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %52 = tail call i32 @llvm.ctlz.i32(i32 %conv.i128, i1 true) #14, !range !48
  %add.i130 = sub nuw nsw i32 64, %52
  br label %fls64.exit138

if.end.i136:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i132 = trunc i64 %xor53 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i132)
  %tobool.not.i5.i133 = icmp eq i32 %conv1.i132, 0
  %53 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i132, i1 true) #14, !range !48
  %sub.i6.i134 = sub nuw nsw i32 32, %53
  %cond.i7.i135 = select i1 %tobool.not.i5.i133, i32 0, i32 %sub.i6.i134
  br label %fls64.exit138

fls64.exit138:                                    ; preds = %if.end.i136, %if.then.i131
  %retval.0.i137 = phi i32 [ %add.i130, %if.then.i131 ], [ %cond.i7.i135, %if.end.i136 ]
  %bf.shl57 = shl nuw i32 %retval.0.i137, 25
  %bf.clear58 = and i32 %bf.load.i, 33554431
  %bf.set59 = or i32 %bf.shl57, %bf.clear58
  br label %if.end60

if.end60:                                         ; preds = %fls64.exit138, %if.end.i
  %storemerge = phi i32 [ %bf.set59, %fls64.exit138 ], [ %bf.set, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 771751935, i32 %storemerge)
  %cmp63 = icmp ugt i32 %storemerge, 771751935
  %54 = add i32 %storemerge, -738197504
  %bf.clear71 = and i32 %storemerge, 33554431
  %bf.set72 = select i1 %cmp63, i32 %54, i32 %bf.clear71
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %bf.set72, ptr %arrayidx, align 1
  %low.i = getelementptr inbounds %struct.bkey, ptr %add.ptr2.i.i, i32 0, i32 1
  %bf.lshr.i = lshr i32 %bf.set72, 25
  %.neg.i = ashr i32 %bf.set72, 31
  %add.ptr.i215 = getelementptr i64, ptr %low.i, i32 %.neg.i
  %arrayidx.i216 = getelementptr i64, ptr %add.ptr.i215, i32 -1
  %56 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.i216, align 8
  %58 = ptrtoint ptr %add.ptr.i215 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr.i215, align 8
  %60 = trunc i32 %bf.lshr.i to i8
  %conv.i217 = and i8 %60, 63
  %sh_prom.i.i = zext i8 %conv.i217 to i64
  %shr.i.i218 = lshr i64 %59, %sh_prom.i.i
  %shl.i.i = shl i64 %57, 1
  %61 = xor i8 %conv.i217, 63
  %sh_prom2.i.i = zext i8 %61 to i64
  %shl3.i.i = shl i64 %shl.i.i, %sh_prom2.i.i
  %or.i.i = or i64 %shl3.i.i, %shr.i.i218
  %low.i219 = getelementptr inbounds %struct.bkey, ptr %add.ptr.i, i32 0, i32 1
  %add.ptr.i223 = getelementptr i64, ptr %low.i219, i32 %.neg.i
  %arrayidx.i224 = getelementptr i64, ptr %add.ptr.i223, i32 -1
  %62 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i224, align 8
  %64 = ptrtoint ptr %add.ptr.i223 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr.i223, align 8
  %shr.i.i227 = lshr i64 %65, %sh_prom.i.i
  %shl.i.i228 = shl i64 %63, 1
  %shl3.i.i230 = shl i64 %shl.i.i228, %sh_prom2.i.i
  %or.i.i231 = or i64 %shl3.i.i230, %shr.i.i227
  %66 = xor i64 %or.i.i, %or.i.i231
  %67 = and i64 %66, 4194303
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp75.not = icmp eq i64 %67, 0
  br i1 %cmp75.not, label %if.else83, label %if.then76

if.then76:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %68 = trunc i64 %or.i.i to i32
  %sub78 = add i32 %68, 4194303
  %bf.value80 = and i32 %sub78, 4194303
  %bf.clear81 = and i32 %bf.set72, -4194304
  %bf.set82 = or i32 %bf.value80, %bf.clear81
  br label %if.end87

if.else83:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set86 = or i32 %bf.set72, -33554432
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then76
  %storemerge126 = phi i32 [ %bf.set86, %if.else83 ], [ %bf.set82, %if.then76 ]
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %storemerge126, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bset_fix_invalidated_key(ptr noundef %b, ptr noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set, i32 %conv.i
  %cmp.not152 = icmp ugt ptr %set, %add.ptr.i
  br i1 %cmp.not152, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.0153 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %set, %entry.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %4 = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 5
  %keys = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keys, align 4
  %add.ptr.i99 = getelementptr i64, ptr %4, i32 %6
  %cmp4 = icmp ugt ptr %add.ptr.i99, %k
  br i1 %cmp4, label %found_set, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.bset_tree, ptr %t.0153, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr.i
  br i1 %cmp.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 747, 0\0A.popsection", ""() #14, !srcloc !58
  unreachable

found_set:                                        ; preds = %for.body
  %data.le = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 5
  %7 = ptrtoint ptr %t.0153 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t.0153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %found_set.cleanup_crit_edge, label %lor.lhs.false

found_set.cleanup_crit_edge:                      ; preds = %found_set
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %found_set
  %last_set_unwritten.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %9 = ptrtoint ptr %last_set_unwritten.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %last_set_unwritten.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %idx.neg.i = sub nsw i32 0, %bf.cast.i
  %add.ptr1.i = getelementptr %struct.bset_tree, ptr %add.ptr.i, i32 %idx.neg.i
  %cmp.i.not = icmp ult ptr %add.ptr1.i, %t.0153
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast.i = ptrtoint ptr %k to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 128
  %cmp14 = icmp eq ptr %4, %k
  br i1 %cmp14, label %if.end10.do.body34.preheader_crit_edge, label %if.end16

if.end10.do.body34.preheader_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34.preheader

if.end16:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %k, align 8
  %shr.i.i.i = lshr i64 %11, 60
  %12 = trunc i64 %shr.i.i.i to i32
  %13 = and i32 %12, 7
  %conv.i.i = add nuw nsw i32 %13, 2
  %add.ptr.i104 = getelementptr i64, ptr %k, i32 %conv.i.i
  %cmp23 = icmp eq ptr %add.ptr.i104, %add.ptr.i99
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %end = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %end, ptr %k, i32 16)
  br label %do.body49.preheader

if.end25:                                         ; preds = %if.end16
  %extra.i = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 1
  %15 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extra.i, align 4
  %sub.i38.i.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i38.i.i, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %sub.i38.i.i, i1 true) #14, !range !48
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %17
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %div.i, i32 %16) #14
  %j.addr.0.i.i = add i32 %18, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.addr.0.i.i)
  %iszero.i.i = icmp eq i32 %j.addr.0.i.i, 0
  %19 = tail call i32 @llvm.cttz.i32(i32 %j.addr.0.i.i, i1 true) #14, !range !48
  %20 = add nuw nsw i32 %19, 1
  %ffs.i.i = select i1 %iszero.i.i, i32 0, i32 %20
  %shr37.i.i = or i32 %shl.i.i.i, %j.addr.0.i.i
  %or.i.i = lshr i32 %shr37.i.i, %ffs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool27.not = icmp ne i32 %or.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %8)
  %cmp29 = icmp ult i32 %or.i.i, %8
  %or.cond = select i1 %tobool27.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %land.lhs.true30, label %if.end25.if.end39thread-pre-split_crit_edge

if.end25.if.end39thread-pre-split_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39thread-pre-split

land.lhs.true30:                                  ; preds = %if.end25
  %21 = tail call i32 @llvm.ctlz.i32(i32 %or.i.i, i1 true) #14, !range !48
  %sub.i.i.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i18.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #14, !range !48
  %sub.i19.i.i.i.op = sub nsw i32 0, %22
  %sub.i.i.i.i.neg = select i1 %tobool.not.i18.i.i.i, i32 -32, i32 %sub.i19.i.i.i.op
  %sub2.i.i.i = add nsw i32 %sub.i.i.i.i.neg, %21
  %sub3.i.i.i = xor i32 %21, 31
  %shl.i.i.i106 = shl nuw i32 1, %sub3.i.i.i
  %xor.i.i.i = xor i32 %shl.i.i.i106, %or.i.i
  %shl4.i.i.i = shl i32 %xor.i.i.i, 1
  %or.i.i.i = or i32 %shl4.i.i.i, 1
  %shl5.i.i.i = shl i32 %or.i.i.i, %sub2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i, i32 %16)
  %cmp.i.i.i = icmp ugt i32 %shl5.i.i.i, %16
  %sub6.i.i.i = sub i32 %shl5.i.i.i, %16
  %shr.i.i.i107 = lshr i32 %sub6.i.i.i, 1
  %sub7.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i107, i32 0
  %j.addr.0.i.i.i = sub i32 %shl5.i.i.i, %sub7.i.i.i
  %tree.i = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 3
  %23 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tree.i, align 8
  %arrayidx.i = getelementptr %struct.bkey_float, ptr %24, i32 %or.i.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load.i108 = load i32, ptr %arrayidx.i, align 1
  %mul.i.i = shl i32 %j.addr.0.i.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %mul.i.i
  %26 = lshr i32 %bf.load.i108, 19
  %mul1.i.i = and i32 %26, 56
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul1.i.i
  %cmp32 = icmp eq ptr %add.ptr2.i.i, %k
  br i1 %cmp32, label %land.lhs.true30.do.body34.preheader_crit_edge, label %land.lhs.true30.if.end39thread-pre-split_crit_edge

land.lhs.true30.if.end39thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39thread-pre-split

land.lhs.true30.do.body34.preheader_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34.preheader

do.body34.preheader:                              ; preds = %land.lhs.true30.do.body34.preheader_crit_edge, %if.end10.do.body34.preheader_crit_edge
  %j.1.ph = phi i32 [ %or.i.i, %land.lhs.true30.do.body34.preheader_crit_edge ], [ 1, %if.end10.do.body34.preheader_crit_edge ]
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %do.body34.preheader
  %j.1 = phi i32 [ %mul, %do.body34.do.body34_crit_edge ], [ %j.1.ph, %do.body34.preheader ]
  tail call fastcc void @make_bfloat(ptr noundef %t.0153, i32 noundef %j.1)
  %mul = shl i32 %j.1, 1
  %27 = ptrtoint ptr %t.0153 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t.0153, align 8
  %cmp37 = icmp ult i32 %mul, %28
  br i1 %cmp37, label %do.body34.do.body34_crit_edge, label %do.body34.if.end39_crit_edge

do.body34.if.end39_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34

if.end39thread-pre-split:                         ; preds = %land.lhs.true30.if.end39thread-pre-split_crit_edge, %if.end25.if.end39thread-pre-split_crit_edge
  %29 = ptrtoint ptr %t.0153 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %t.0153, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %do.body34.if.end39_crit_edge
  %30 = phi i32 [ %.pr, %if.end39thread-pre-split ], [ %28, %do.body34.if.end39_crit_edge ]
  %add = add nsw i32 %div.i, 1
  %extra.i109 = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 1
  %31 = ptrtoint ptr %extra.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %extra.i109, align 4
  %sub.i38.i.i124 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38.i.i124)
  %tobool.not.i.i.i.i.i125 = icmp eq i32 %sub.i38.i.i124, 0
  %33 = tail call i32 @llvm.ctlz.i32(i32 %sub.i38.i.i124, i1 true) #14, !range !48
  %sub.i.i.i.i.i126 = sub nuw nsw i32 32, %33
  %sub.i.i.op.i.i.i127 = shl nuw i32 1, %sub.i.i.i.i.i126
  %shl.i.i.i128 = select i1 %tobool.not.i.i.i.i.i125, i32 1, i32 %sub.i.i.op.i.i.i127
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %add, i32 %32) #14
  %j.addr.0.i.i131 = add i32 %34, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.addr.0.i.i131)
  %iszero.i.i132 = icmp eq i32 %j.addr.0.i.i131, 0
  %35 = tail call i32 @llvm.cttz.i32(i32 %j.addr.0.i.i131, i1 true) #14, !range !48
  %36 = add nuw nsw i32 %35, 1
  %ffs.i.i133 = select i1 %iszero.i.i132, i32 0, i32 %36
  %shr37.i.i134 = or i32 %shl.i.i.i128, %j.addr.0.i.i131
  %or.i.i135 = lshr i32 %shr37.i.i134, %ffs.i.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i135)
  %tobool41.not = icmp ne i32 %or.i.i135, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i135, i32 %30)
  %cmp44 = icmp ult i32 %or.i.i135, %30
  %or.cond144 = select i1 %tobool41.not, i1 %cmp44, i1 false
  br i1 %or.cond144, label %land.lhs.true45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true45:                                  ; preds = %if.end39
  %37 = tail call i32 @llvm.ctlz.i32(i32 %or.i.i135, i1 true) #14, !range !48
  %sub.i.i.i.i139 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i139)
  %tobool.not.i18.i.i.i.i = icmp eq i32 %sub.i.i.i.i139, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i.i139, i1 true) #14, !range !48
  %sub.i19.i.i.i.i.op = sub nsw i32 0, %38
  %sub.i.i.i.i.i138.neg = select i1 %tobool.not.i18.i.i.i.i, i32 -32, i32 %sub.i19.i.i.i.i.op
  %sub2.i.i.i.i = add nsw i32 %sub.i.i.i.i.i138.neg, %37
  %sub3.i.i.i.i = xor i32 %37, 31
  %shl.i.i.i.i = shl nuw i32 1, %sub3.i.i.i.i
  %xor.i.i.i.i = xor i32 %shl.i.i.i.i, %or.i.i135
  %shl4.i.i.i.i = shl i32 %xor.i.i.i.i, 1
  %or.i.i.i.i = or i32 %shl4.i.i.i.i, 1
  %shl5.i.i.i.i = shl i32 %or.i.i.i.i, %sub2.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i.i, i32 %32)
  %cmp.i.i.i.i = icmp ugt i32 %shl5.i.i.i.i, %32
  %sub6.i.i.i.i = sub i32 %shl5.i.i.i.i, %32
  %shr.i.i.i.i = lshr i32 %sub6.i.i.i.i, 1
  %sub7.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %shr.i.i.i.i, i32 0
  %j.addr.0.i.i.i.i = sub i32 %shl5.i.i.i.i, %sub7.i.i.i.i
  %tree.i.i = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 3
  %39 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tree.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bkey_float, ptr %40, i32 %or.i.i135
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load.i.i = load i32, ptr %arrayidx.i.i, align 1
  %42 = ptrtoint ptr %data.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.le, align 8
  %mul.i.i.i = shl i32 %j.addr.0.i.i.i.i, 7
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 %mul.i.i.i
  %44 = lshr i32 %bf.load.i.i, 19
  %mul1.i.i.i = and i32 %44, 56
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul1.i.i.i
  %prev.i = getelementptr inbounds %struct.bset_tree, ptr %t.0153, i32 0, i32 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %arrayidx.i140 = getelementptr i8, ptr %46, i32 %or.i.i135
  %47 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i140, align 1
  %conv.i141 = zext i8 %48 to i32
  %idx.neg.i142 = sub nsw i32 0, %conv.i141
  %add.ptr.i143 = getelementptr i64, ptr %add.ptr2.i.i.i, i32 %idx.neg.i142
  %cmp47 = icmp eq ptr %add.ptr.i143, %k
  br i1 %cmp47, label %land.lhs.true45.do.body49.preheader_crit_edge, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true45.do.body49.preheader_crit_edge:    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body49.preheader

do.body49.preheader:                              ; preds = %land.lhs.true45.do.body49.preheader_crit_edge, %if.then24
  %j.3.ph = phi i32 [ 1, %if.then24 ], [ %or.i.i135, %land.lhs.true45.do.body49.preheader_crit_edge ]
  br label %do.body49

do.body49:                                        ; preds = %do.body49.do.body49_crit_edge, %do.body49.preheader
  %j.3 = phi i32 [ %add51, %do.body49.do.body49_crit_edge ], [ %j.3.ph, %do.body49.preheader ]
  tail call fastcc void @make_bfloat(ptr noundef %t.0153, i32 noundef %j.3)
  %mul50 = shl i32 %j.3, 1
  %add51 = or i32 %mul50, 1
  %49 = ptrtoint ptr %t.0153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %t.0153, align 8
  %cmp54 = icmp ult i32 %add51, %50
  br i1 %cmp54, label %do.body49.do.body49_crit_edge, label %do.body49.cleanup_crit_edge

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body49.do.body49_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body49

cleanup:                                          ; preds = %do.body49.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %found_set.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @tree_to_bkey(ptr nocapture noundef readonly %t, i32 noundef %j) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 8
  %extra.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j)
  %tobool.not.i.i.i = icmp eq i32 %j, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %j, i1 true) #14, !range !48
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %sub.i.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i18.i.i = icmp eq i32 %sub.i.i, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #14, !range !48
  %sub.i19.i.i = sub nuw nsw i32 32, %5
  %cond.i20.i.i = select i1 %tobool.not.i18.i.i, i32 0, i32 %sub.i19.i.i
  %sub2.i.i = sub nsw i32 %cond.i20.i.i, %cond.i.i.i
  %sub3.i.i = add nsw i32 %cond.i.i.i, -1
  %shl.i.i = shl nuw i32 1, %sub3.i.i
  %xor.i.i = xor i32 %shl.i.i, %j
  %shl4.i.i = shl i32 %xor.i.i, 1
  %or.i.i = or i32 %shl4.i.i, 1
  %shl5.i.i = shl i32 %or.i.i, %sub2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i, i32 %3)
  %cmp.i.i = icmp ugt i32 %shl5.i.i, %3
  %sub6.i.i = sub i32 %shl5.i.i, %3
  %shr.i.i = lshr i32 %sub6.i.i, 1
  %sub7.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 0
  %j.addr.0.i.i = sub i32 %shl5.i.i, %sub7.i.i
  %tree = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 3
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree, align 8
  %arrayidx = getelementptr %struct.bkey_float, ptr %7, i32 %j
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load = load i32, ptr %arrayidx, align 1
  %data.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 8
  %mul.i = shl i32 %j.addr.0.i.i, 7
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %11 = lshr i32 %bf.load, 19
  %mul1.i = and i32 %11, 56
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul1.i
  ret ptr %add.ptr2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_bkey_try_merge(ptr noundef %b, ptr noundef %l, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %key_merge = getelementptr inbounds %struct.btree_keys_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %key_merge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_merge, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %l, align 8
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %r, align 8
  %shr.i22.i = xor i64 %7, %5
  %8 = and i64 %shr.i22.i, 8286623383081189376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %and.i = and i64 %7, 1048575
  %and.i.i = and i64 %5, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !46

cond.true.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i.i, %and.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %low.i = getelementptr inbounds %struct.bkey, ptr %r, i32 0, i32 1
  %10 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %low.i, align 8
  %shr.i = lshr i64 %7, 20
  %and.i19 = and i64 %shr.i, 65535
  %sub.neg = sub i64 %and.i19, %11
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %l, i32 0, i32 1
  %12 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %low.i.i, align 8
  %sub7.i = add i64 %sub.neg, %13
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool5.not = icmp eq i64 %cond.i, 0
  br i1 %tobool5.not, label %if.end7, label %bkey_cmp.exit.return_crit_edge

bkey_cmp.exit.return_crit_edge:                   ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end7:                                          ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call zeroext i1 %3(ptr noundef %b, ptr noundef %l, ptr noundef %r) #14
  br label %return

return:                                           ; preds = %if.end7, %bkey_cmp.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call10, %if.end7 ], [ false, %entry.return_crit_edge ], [ false, %bkey_cmp.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bset_insert(ptr nocapture noundef %b, ptr noundef %where, ptr nocapture noundef readonly %insert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i
  %last_set_unwritten = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %2 = ptrtoint ptr %last_set_unwritten to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %last_set_unwritten, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !49

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #14, !srcloc !59
  unreachable

do.body10:                                        ; preds = %entry
  %data = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %5 = ptrtoint ptr %4 to i32
  %data.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 8
  %8 = ptrtoint ptr %7 to i32
  %keys = getelementptr inbounds %struct.bset, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %keys, align 4
  %11 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %insert, align 8
  %shr.i.i = lshr i64 %12, 60
  %13 = trunc i64 %shr.i.i to i32
  %14 = and i32 %13, 7
  %conv.i60 = add nuw nsw i32 %14, 2
  %add = add i32 %conv.i60, %10
  %mul = shl i32 %add, 3
  %add14 = add i32 %5, 32
  %sub.i = sub i32 %add14, %8
  %add15 = add i32 %sub.i, %mul
  %page_order = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %15 = ptrtoint ptr %page_order to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %page_order, align 4
  %conv = zext i8 %16 to i32
  %shl = shl i32 4096, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %shl)
  %cmp = icmp ugt i32 %add15, %shl
  br i1 %cmp, label %do.body24, label %do.end32, !prof !49

do.body24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 865, 0\0A.popsection", ""() #14, !srcloc !60
  unreachable

do.end32:                                         ; preds = %do.body10
  %add.ptr = getelementptr i64, ptr %where, i32 %conv.i60
  %17 = getelementptr inbounds %struct.bset, ptr %4, i32 0, i32 5
  %add.ptr.i63 = getelementptr i64, ptr %17, i32 %10
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i63 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %where to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = call ptr @memmove(ptr %add.ptr, ptr %where, i32 %sub.ptr.sub)
  %19 = ptrtoint ptr %insert to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %insert, align 8
  %shr.i.i64 = lshr i64 %20, 60
  %21 = trunc i64 %shr.i.i64 to i32
  %22 = and i32 %21, 7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %keys40 = getelementptr inbounds %struct.bset, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %keys40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keys40, align 4
  %conv.i65 = add i32 %26, 2
  %add41 = add i32 %conv.i65, %22
  store i32 %add41, ptr %keys40, align 4
  %27 = load i64, ptr %insert, align 8
  %sh.diff.i = lshr i64 %27, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i, 16
  %28 = call ptr @memcpy(ptr %where, ptr %insert, i32 %mul.i)
  %29 = ptrtoint ptr %where to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %where, align 8
  %shr.i.i.i = lshr i64 %30, 60
  %31 = trunc i64 %shr.i.i.i to i8
  %32 = and i8 %31, 7
  %conv.i.i66 = add nuw nsw i8 %32, 2
  %33 = load ptr, ptr %data, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast.i.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i, 128
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %do.end32.bch_bset_fix_lookup_table.exit_crit_edge, label %while.cond.preheader.i

do.end32.bch_bset_fix_lookup_table.exit_crit_edge: ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_bset_fix_lookup_table.exit

while.cond.preheader.i:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %35)
  %cmp148.i = icmp ult i32 %div.i.i, %35
  br i1 %cmp148.i, label %land.rhs.lr.ph.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %prev.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %j.0149.i = phi i32 [ %div.i.i, %land.rhs.lr.ph.i ], [ %inc.i, %while.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %37, i32 %j.0149.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i106.i = zext i8 %39 to i32
  %mul.i.i.i = shl i32 %j.0149.i, 7
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %mul.i.i.i
  %mul1.i.i.i = shl nuw nsw i32 %conv.i106.i, 3
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul1.i.i.i
  %cmp4.not.i = icmp ugt ptr %add.ptr2.i.i.i, %where
  br i1 %cmp4.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add i32 %j.0149.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %35
  br i1 %exitcond.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %div.i.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %j.0149.i, %land.rhs.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %35)
  %cmp6155.i = icmp ult i32 %j.0.lcssa.i, %35
  br i1 %cmp6155.i, label %for.body.lr.ph.i, label %while.end.i.for.end.i_crit_edge

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.end.i
  %prev.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.1156.i = phi i32 [ %j.0.lcssa.i, %for.body.lr.ph.i ], [ %inc27.i, %for.inc.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %arrayidx.i = getelementptr i8, ptr %41, i32 %j.1156.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv7.i = add i8 %conv.i.i66, %43
  store i8 %conv7.i, ptr %arrayidx.i, align 1
  %44 = load ptr, ptr %prev.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %44, i32 %j.1156.i
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %cmp11.i = icmp ugt i8 %46, 7
  br i1 %cmp11.i, label %if.then13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  %sub.i67 = add i32 %j.1156.i, -1
  %arrayidx.i108.i = getelementptr i8, ptr %44, i32 %sub.i67
  %47 = ptrtoint ptr %arrayidx.i108.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i108.i, align 1
  %conv.i109.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 8
  %mul.i.i111.i = shl i32 %sub.i67, 7
  %add.ptr.i.i112.i = getelementptr i8, ptr %50, i32 %mul.i.i111.i
  %mul1.i.i113.i = shl nuw nsw i32 %conv.i109.i, 3
  %add.ptr2.i.i114.i = getelementptr i8, ptr %add.ptr.i.i112.i, i32 %mul1.i.i113.i
  %mul.i.i = shl i32 %j.1156.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %mul.i.i
  %cmp17151.i = icmp ult ptr %add.ptr2.i.i114.i, %add.ptr.i.i
  br i1 %cmp17151.i, label %if.then13.i.while.body19.i_crit_edge, label %if.then13.i.while.end21.i_crit_edge

if.then13.i.while.end21.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end21.i

if.then13.i.while.body19.i_crit_edge:             ; preds = %if.then13.i
  br label %while.body19.i

while.body19.i:                                   ; preds = %while.body19.i.while.body19.i_crit_edge, %if.then13.i.while.body19.i_crit_edge
  %k.addr.0152.i = phi ptr [ %add.ptr.i116.i, %while.body19.i.while.body19.i_crit_edge ], [ %add.ptr2.i.i114.i, %if.then13.i.while.body19.i_crit_edge ]
  %51 = ptrtoint ptr %k.addr.0152.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %k.addr.0152.i, align 8
  %shr.i.i.i.i = lshr i64 %52, 60
  %53 = trunc i64 %shr.i.i.i.i to i32
  %54 = and i32 %53, 7
  %conv.i.i.i = add nuw nsw i32 %54, 2
  %add.ptr.i116.i = getelementptr i64, ptr %k.addr.0152.i, i32 %conv.i.i.i
  %cmp17.i = icmp ult ptr %add.ptr.i116.i, %add.ptr.i.i
  br i1 %cmp17.i, label %while.body19.i.while.body19.i_crit_edge, label %while.body19.i.while.end21.i_crit_edge

while.body19.i.while.end21.i_crit_edge:           ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end21.i

while.body19.i.while.body19.i_crit_edge:          ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body19.i

while.end21.i:                                    ; preds = %while.body19.i.while.end21.i_crit_edge, %if.then13.i.while.end21.i_crit_edge
  %k.addr.0.lcssa.i = phi ptr [ %add.ptr2.i.i114.i, %if.then13.i.while.end21.i_crit_edge ], [ %add.ptr.i116.i, %while.body19.i.while.end21.i_crit_edge ]
  %sub.ptr.lhs.cast.i120.i = ptrtoint ptr %k.addr.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i121.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i122.i = sub i32 %sub.ptr.lhs.cast.i120.i, %sub.ptr.rhs.cast.i121.i
  %55 = lshr exact i32 %sub.ptr.sub.i122.i, 3
  %conv23.i = trunc i32 %55 to i8
  %56 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv23.i, ptr %arrayidx9.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.end21.i, %for.body.i.for.inc.i_crit_edge
  %inc27.i = add nuw i32 %j.1156.i, 1
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 8
  %cmp6.i = icmp ult i32 %inc27.i, %58
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.end.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %35, %while.end.i.for.end.i_crit_edge ], [ %58, %for.inc.i.for.end.i_crit_edge ], [ %35, %while.body.i.for.end.i_crit_edge ]
  %tree.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 3
  %59 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tree.i, align 8
  %61 = ptrtoint ptr %page_order to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %page_order, align 4
  %conv.i.i123.i = zext i8 %62 to i32
  %shl.i.i.i = shl i32 4096, %conv.i.i123.i
  %div1.i.i = lshr exact i32 %shl.i.i.i, 7
  %add.ptr.i68 = getelementptr %struct.bkey_float, ptr %60, i32 %div1.i.i
  %tree30.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 3
  %63 = ptrtoint ptr %tree30.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tree30.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i68 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %sub.ptr.div.i)
  %cmp31.i = icmp eq i32 %.lcssa.i, %sub.ptr.div.i
  br i1 %cmp31.i, label %for.end.i.bch_bset_fix_lookup_table.exit_crit_edge, label %if.end34.i

for.end.i.bch_bset_fix_lookup_table.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_bset_fix_lookup_table.exit

if.end34.i:                                       ; preds = %for.end.i
  %sub36.i = add i32 %.lcssa.i, -1
  %prev.i124.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 4
  %65 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i124.i, align 4
  %arrayidx.i125.i = getelementptr i8, ptr %66, i32 %sub36.i
  %67 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i125.i, align 1
  %conv.i126.i = zext i8 %68 to i32
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 8
  %mul.i.i128.i = shl i32 %sub36.i, 7
  %add.ptr.i.i129.i = getelementptr i8, ptr %70, i32 %mul.i.i128.i
  %mul1.i.i130.i = shl nuw nsw i32 %conv.i126.i, 3
  %add.ptr2.i.i131.i = getelementptr i8, ptr %add.ptr.i.i129.i, i32 %mul1.i.i130.i
  %71 = getelementptr inbounds %struct.bset, ptr %70, i32 0, i32 5
  %keys159.i = getelementptr inbounds %struct.bset, ptr %70, i32 0, i32 4
  %72 = ptrtoint ptr %keys159.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %keys159.i, align 4
  %add.ptr.i132160.i = getelementptr i64, ptr %71, i32 %73
  %cmp42.not161.i = icmp eq ptr %add.ptr2.i.i131.i, %add.ptr.i132160.i
  br i1 %cmp42.not161.i, label %if.end34.i.bch_bset_fix_lookup_table.exit_crit_edge, label %if.end34.i.for.body44.i_crit_edge

if.end34.i.for.body44.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body44.i

if.end34.i.bch_bset_fix_lookup_table.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_bset_fix_lookup_table.exit

for.body44.i:                                     ; preds = %for.inc59.i.for.body44.i_crit_edge, %if.end34.i.for.body44.i_crit_edge
  %74 = phi ptr [ %88, %for.inc59.i.for.body44.i_crit_edge ], [ %70, %if.end34.i.for.body44.i_crit_edge ]
  %k.addr.1162.i = phi ptr [ %add.ptr.i147.i, %for.inc59.i.for.body44.i_crit_edge ], [ %add.ptr2.i.i131.i, %if.end34.i.for.body44.i_crit_edge ]
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 8
  %sub.ptr.lhs.cast.i134.i = ptrtoint ptr %k.addr.1162.i to i32
  %sub.ptr.rhs.cast.i135.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i136.i = sub i32 %sub.ptr.lhs.cast.i134.i, %sub.ptr.rhs.cast.i135.i
  %div.i137.i = sdiv i32 %sub.ptr.sub.i136.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %div.i137.i)
  %cmp47.i = icmp eq i32 %76, %div.i137.i
  br i1 %cmp47.i, label %if.then49.i, label %for.body44.i.for.inc59.i_crit_edge

for.body44.i.for.inc59.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59.i

if.then49.i:                                      ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i139.i = shl i32 %76, 7
  %add.ptr.i.i140.i = getelementptr i8, ptr %74, i32 %mul.i.i139.i
  %sub.ptr.rhs.cast.i142.i = ptrtoint ptr %add.ptr.i.i140.i to i32
  %sub.ptr.sub.i143.i = sub i32 %sub.ptr.lhs.cast.i134.i, %sub.ptr.rhs.cast.i142.i
  %77 = lshr exact i32 %sub.ptr.sub.i143.i, 3
  %conv52.i = trunc i32 %77 to i8
  %78 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i124.i, align 4
  %arrayidx55.i = getelementptr i8, ptr %79, i32 %76
  %80 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv52.i, ptr %arrayidx55.i, align 1
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 8
  %inc57.i = add i32 %82, 1
  store i32 %inc57.i, ptr %add.ptr.i, align 8
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %if.then49.i, %for.body44.i.for.inc59.i_crit_edge
  %83 = ptrtoint ptr %k.addr.1162.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %k.addr.1162.i, align 8
  %shr.i.i.i145.i = lshr i64 %84, 60
  %85 = trunc i64 %shr.i.i.i145.i to i32
  %86 = and i32 %85, 7
  %conv.i.i146.i = add nuw nsw i32 %86, 2
  %add.ptr.i147.i = getelementptr i64, ptr %k.addr.1162.i, i32 %conv.i.i146.i
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 8
  %89 = getelementptr inbounds %struct.bset, ptr %88, i32 0, i32 5
  %keys.i = getelementptr inbounds %struct.bset, ptr %88, i32 0, i32 4
  %90 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %keys.i, align 4
  %add.ptr.i132.i = getelementptr i64, ptr %89, i32 %91
  %cmp42.not.i = icmp eq ptr %add.ptr.i147.i, %add.ptr.i132.i
  br i1 %cmp42.not.i, label %for.inc59.i.bch_bset_fix_lookup_table.exit_crit_edge, label %for.inc59.i.for.body44.i_crit_edge

for.inc59.i.for.body44.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body44.i

for.inc59.i.bch_bset_fix_lookup_table.exit_crit_edge: ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_bset_fix_lookup_table.exit

bch_bset_fix_lookup_table.exit:                   ; preds = %for.inc59.i.bch_bset_fix_lookup_table.exit_crit_edge, %if.end34.i.bch_bset_fix_lookup_table.exit_crit_edge, %for.end.i.bch_bset_fix_lookup_table.exit_crit_edge, %do.end32.bch_bset_fix_lookup_table.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_btree_insert_key(ptr noundef %b, ptr noundef %k, ptr noundef %replace_key) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.btree_iter, align 4
  %preceding_key_on_stack = alloca %struct.bkey, align 8
  %.compoundliteral30 = alloca %struct.bkey, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i
  %data = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #14
  %4 = getelementptr inbounds i8, ptr %iter, i32 12
  %5 = call ptr @memset(ptr %4, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %preceding_key_on_stack) #14
  %6 = call ptr @memcpy(ptr %preceding_key_on_stack, ptr @__const.bch_btree_insert_key.preceding_key_on_stack, i32 16)
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b, align 8
  %is_extents = getelementptr inbounds %struct.btree_keys_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %is_extents to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_extents, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %k, align 8
  br i1 %tobool.not, label %if.else, label %land.rhs

land.rhs:                                         ; preds = %entry
  %13 = and i64 %12, 68718428160
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool2.not = icmp eq i64 %13, 0
  br i1 %tobool2.not, label %do.body6, label %if.then15, !prof !49

do.body6:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 886, 0\0A.popsection", ""() #14, !srcloc !61
  unreachable

if.then15:                                        ; preds = %land.rhs
  %14 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %k, align 8
  %and.i96 = and i64 %15, 1048575
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %16 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %low.i, align 8
  %shr.i97 = lshr i64 %15, 20
  %and.i98 = and i64 %shr.i97, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i96)
  %tobool.not.i = icmp eq i64 %and.i96, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and.i98)
  %tobool2.not.i = icmp eq i64 %17, %and.i98
  %or.cond = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  br i1 %or.cond, label %if.then15.if.end19_crit_edge, label %if.then.i

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then.i:                                        ; preds = %if.then15
  %or = or i64 %and.i96, -9223372036854775808
  %sub = sub i64 %17, %and.i98
  %18 = ptrtoint ptr %preceding_key_on_stack to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or, ptr %preceding_key_on_stack, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %preceding_key_on_stack, i32 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and.i98)
  %tobool6.not.i = icmp eq i64 %17, %and.i98
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end19.sink.split_crit_edge

if.then.i.if.end19.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.sink.split

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nuw i64 %and.i96, 9223372036854775807
  %19 = ptrtoint ptr %preceding_key_on_stack to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %dec.i, ptr %preceding_key_on_stack, align 8
  br label %if.end19.sink.split

if.else:                                          ; preds = %entry
  %and.i.i101 = and i64 %12, 1048575
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i101)
  %tobool.not.i102 = icmp eq i64 %and.i.i101, 0
  br i1 %tobool.not.i102, label %lor.lhs.false.i105, label %if.else.if.then.i111_crit_edge

if.else.if.then.i111_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i111

lor.lhs.false.i105:                               ; preds = %if.else
  %low.i.i103 = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %20 = ptrtoint ptr %low.i.i103 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %low.i.i103, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool2.not.i104 = icmp eq i64 %21, 0
  br i1 %tobool2.not.i104, label %lor.lhs.false.i105.if.end19_crit_edge, label %lor.lhs.false.i105.if.then.i111_crit_edge

lor.lhs.false.i105.if.then.i111_crit_edge:        ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i111

lor.lhs.false.i105.if.end19_crit_edge:            ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then.i111:                                     ; preds = %lor.lhs.false.i105.if.then.i111_crit_edge, %if.else.if.then.i111_crit_edge
  %or.i106 = or i64 %and.i.i101, -9223372036854775808
  %low.i20.i107 = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %22 = ptrtoint ptr %low.i20.i107 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %low.i20.i107, align 8
  %24 = ptrtoint ptr %preceding_key_on_stack to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i106, ptr %preceding_key_on_stack, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i108 = getelementptr inbounds i8, ptr %preceding_key_on_stack, i32 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool6.not.i110 = icmp eq i64 %23, 0
  br i1 %tobool6.not.i110, label %if.then7.i113, label %if.then.i111.if.end19.sink.split_crit_edge

if.then.i111.if.end19.sink.split_crit_edge:       ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.sink.split

if.then7.i113:                                    ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i112 = add nuw i64 %and.i.i101, 9223372036854775807
  %25 = ptrtoint ptr %preceding_key_on_stack to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %dec.i112, ptr %preceding_key_on_stack, align 8
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then7.i113, %if.then.i111.if.end19.sink.split_crit_edge, %if.then7.i, %if.then.i.if.end19.sink.split_crit_edge
  %.sink = phi i64 [ %sub, %if.then7.i ], [ %sub, %if.then.i.if.end19.sink.split_crit_edge ], [ %23, %if.then7.i113 ], [ %23, %if.then.i111.if.end19.sink.split_crit_edge ]
  %.compoundliteral.sroa.2.0..sroa_idx.i108.sink = phi ptr [ %.compoundliteral.sroa.2.0..sroa_idx.i, %if.then7.i ], [ %.compoundliteral.sroa.2.0..sroa_idx.i, %if.then.i.if.end19.sink.split_crit_edge ], [ %.compoundliteral.sroa.2.0..sroa_idx.i108, %if.then7.i113 ], [ %.compoundliteral.sroa.2.0..sroa_idx.i108, %if.then.i111.if.end19.sink.split_crit_edge ]
  %dec10.i115 = add i64 %.sink, -1
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i108.sink to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %dec10.i115, ptr %.compoundliteral.sroa.2.0..sroa_idx.i108.sink, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %lor.lhs.false.i105.if.end19_crit_edge, %if.then15.if.end19_crit_edge
  %preceding_key_p.2 = phi ptr [ null, %lor.lhs.false.i105.if.end19_crit_edge ], [ null, %if.then15.if.end19_crit_edge ], [ %preceding_key_on_stack, %if.end19.sink.split ]
  %27 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %iter, align 4
  %used.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %28 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %used.i.i, align 4
  %b1.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %29 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b, ptr %b1.i.i, align 4
  %cmp.not18.i.i = icmp ult ptr %add.ptr.i, %set.i
  br i1 %cmp.not18.i.i, label %if.end19.bch_btree_iter_init.exit_crit_edge, label %for.body.lr.ph.i.i

if.end19.bch_btree_iter_init.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

for.body.lr.ph.i.i:                               ; preds = %if.end19
  %tobool.not.i.i.i = icmp eq ptr %preceding_key_p.2, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %bch_bset_search.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %start.addr.019.i.i = phi ptr [ %set.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %bch_bset_search.exit.i.i.for.body.i.i_crit_edge ]
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call ptr @__bch_bset_search(ptr noundef %b, ptr noundef %start.addr.019.i.i, ptr noundef nonnull %preceding_key_p.2) #14
  br label %bch_bset_search.exit.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 8
  %32 = getelementptr inbounds %struct.bset, ptr %31, i32 0, i32 5
  br label %bch_bset_search.exit.i.i

bch_bset_search.exit.i.i:                         ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %32, %cond.false.i.i.i ]
  %data.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 8
  %35 = getelementptr inbounds %struct.bset, ptr %34, i32 0, i32 5
  %keys.i.i = getelementptr inbounds %struct.bset, ptr %34, i32 0, i32 4
  %36 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %keys.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i64, ptr %35, i32 %37
  call void @bch_btree_iter_push(ptr noundef nonnull %iter, ptr noundef %cond.i.i.i, ptr noundef %add.ptr.i15.i.i) #14
  %incdec.ptr.i.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i, i32 1
  %38 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nsets.i, align 1
  %conv.i.i.i = zext i8 %39 to i32
  %add.ptr.i.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %bch_bset_search.exit.i.i.bch_btree_iter_init.exit_crit_edge, label %bch_bset_search.exit.i.i.for.body.i.i_crit_edge

bch_bset_search.exit.i.i.for.body.i.i_crit_edge:  ; preds = %bch_bset_search.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

bch_bset_search.exit.i.i.bch_btree_iter_init.exit_crit_edge: ; preds = %bch_bset_search.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

bch_btree_iter_init.exit:                         ; preds = %bch_bset_search.exit.i.i.bch_btree_iter_init.exit_crit_edge, %if.end19.bch_btree_iter_init.exit_crit_edge
  %ret.0.lcssa.i.i = phi ptr [ null, %if.end19.bch_btree_iter_init.exit_crit_edge ], [ %cond.i.i.i, %bch_bset_search.exit.i.i.bch_btree_iter_init.exit_crit_edge ]
  %40 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b, align 8
  %insert_fixup = getelementptr inbounds %struct.btree_keys_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %insert_fixup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %insert_fixup, align 4
  %call22 = call zeroext i1 %43(ptr noundef %b, ptr noundef %k, ptr noundef nonnull %iter, ptr noundef %replace_key) #14
  br i1 %call22, label %bch_btree_iter_init.exit.cleanup_crit_edge, label %while.cond.preheader

bch_btree_iter_init.exit.cleanup_crit_edge:       ; preds = %bch_btree_iter_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %bch_btree_iter_init.exit
  %44 = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 5
  %keys = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %keys, align 4
  %add.ptr.i120 = getelementptr i64, ptr %44, i32 %46
  %cmp.not168 = icmp eq ptr %ret.0.lcssa.i.i, %add.ptr.i120
  br i1 %cmp.not168, label %while.cond.preheader.if.end45_crit_edge, label %land.rhs26.lr.ph

while.cond.preheader.if.end45_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.rhs26.lr.ph:                                 ; preds = %while.cond.preheader
  %47 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b, align 8
  %is_extents28 = getelementptr inbounds %struct.btree_keys_ops, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %is_extents28 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_extents28, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool29.not = icmp eq i8 %50, 0
  %low34 = getelementptr inbounds %struct.bkey, ptr %.compoundliteral30, i32 0, i32 1
  %51 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %k, align 8
  %and.i.i = and i64 %52, 1048575
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  br label %land.rhs26

land.rhs26:                                       ; preds = %while.body.land.rhs26_crit_edge, %land.rhs26.lr.ph
  %prev.0170 = phi ptr [ null, %land.rhs26.lr.ph ], [ %m.0169, %while.body.land.rhs26_crit_edge ]
  %m.0169 = phi ptr [ %ret.0.lcssa.i.i, %land.rhs26.lr.ph ], [ %add.ptr.i125, %while.body.land.rhs26_crit_edge ]
  br i1 %tobool29.not, label %land.rhs26.cond.end_crit_edge, label %cond.true

land.rhs26.cond.end_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %m.0169 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %m.0169, align 8
  %and.i121 = and i64 %54, 1048575
  %or33 = or i64 %and.i121, -9223372036854775808
  %55 = ptrtoint ptr %.compoundliteral30 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %or33, ptr %.compoundliteral30, align 8
  %low.i122 = getelementptr inbounds %struct.bkey, ptr %m.0169, i32 0, i32 1
  %56 = ptrtoint ptr %low.i122 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %low.i122, align 8
  %58 = load i64, ptr %m.0169, align 8
  %shr.i123 = lshr i64 %58, 20
  %and.i124 = and i64 %shr.i123, 65535
  %sub37 = sub i64 %57, %and.i124
  %59 = ptrtoint ptr %low34 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %sub37, ptr %low34, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs26.cond.end_crit_edge
  %cond = phi ptr [ %.compoundliteral30, %cond.true ], [ %m.0169, %land.rhs26.cond.end_crit_edge ]
  %60 = ptrtoint ptr %cond to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %cond, align 8
  %and.i12.i = and i64 %61, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !46

cond.true.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i.i, %and.i12.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %low.i.i, align 8
  %low.i15.i = getelementptr inbounds %struct.bkey, ptr %cond, i32 0, i32 1
  %64 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %low.i15.i, align 8
  %sub7.i = sub i64 %63, %65
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %cmp39 = icmp sgt i64 %cond.i, 0
  br i1 %cmp39, label %while.body, label %bkey_cmp.exit.while.end_crit_edge

bkey_cmp.exit.while.end_crit_edge:                ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %bkey_cmp.exit
  %66 = ptrtoint ptr %m.0169 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %m.0169, align 8
  %shr.i.i.i = lshr i64 %67, 60
  %68 = trunc i64 %shr.i.i.i to i32
  %69 = and i32 %68, 7
  %conv.i.i = add nuw nsw i32 %69, 2
  %add.ptr.i125 = getelementptr i64, ptr %m.0169, i32 %conv.i.i
  %cmp.not = icmp eq ptr %add.ptr.i125, %add.ptr.i120
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs26_crit_edge

while.body.land.rhs26_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs26

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %bkey_cmp.exit.while.end_crit_edge
  %m.0.lcssa = phi ptr [ %m.0169, %bkey_cmp.exit.while.end_crit_edge ], [ %add.ptr.i120, %while.body.while.end_crit_edge ]
  %prev.0.lcssa = phi ptr [ %prev.0170, %bkey_cmp.exit.while.end_crit_edge ], [ %m.0169, %while.body.while.end_crit_edge ]
  %tobool42.not = icmp eq ptr %prev.0.lcssa, null
  br i1 %tobool42.not, label %while.end.if.end45_crit_edge, label %land.lhs.true

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true:                                    ; preds = %while.end
  %70 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b, align 8
  %key_merge.i = getelementptr inbounds %struct.btree_keys_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %key_merge.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %key_merge.i, align 4
  %tobool.not.i126 = icmp eq ptr %73, null
  br i1 %tobool.not.i126, label %land.lhs.true.if.end45_crit_edge, label %if.end.i127

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.end.i127:                                      ; preds = %land.lhs.true
  %74 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %prev.0.lcssa, align 8
  %76 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %k, align 8
  %shr.i22.i.i = xor i64 %77, %75
  %78 = and i64 %shr.i22.i.i, 8286623383081189376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %lor.lhs.false.i130, label %if.end.i127.if.end45_crit_edge

if.end.i127.if.end45_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

lor.lhs.false.i130:                               ; preds = %if.end.i127
  %and.i.i128 = and i64 %77, 1048575
  %and.i.i.i = and i64 %75, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %and.i.i128)
  %cmp.not.i.i129 = icmp eq i64 %and.i.i.i, %and.i.i128
  br i1 %cmp.not.i.i129, label %cond.false.i.i, label %cond.true.i.i, !prof !46

cond.true.i.i:                                    ; preds = %lor.lhs.false.i130
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub nsw i64 %and.i.i.i, %and.i.i128
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %lor.lhs.false.i130
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i131 = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %80 = ptrtoint ptr %low.i.i131 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %low.i.i131, align 8
  %shr.i.i = lshr i64 %77, 20
  %and.i19.i = and i64 %shr.i.i, 65535
  %sub.neg.i = sub i64 %and.i19.i, %81
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %prev.0.lcssa, i32 0, i32 1
  %82 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %low.i.i.i, align 8
  %sub7.i.i = add i64 %sub.neg.i, %83
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %tobool5.not.i = icmp eq i64 %cond.i.i, 0
  br i1 %tobool5.not.i, label %bch_bkey_try_merge.exit, label %bkey_cmp.exit.i.if.end45_crit_edge

bkey_cmp.exit.i.if.end45_crit_edge:               ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

bch_bkey_try_merge.exit:                          ; preds = %bkey_cmp.exit.i
  %call10.i = call zeroext i1 %73(ptr noundef %b, ptr noundef nonnull %prev.0.lcssa, ptr noundef %k) #14
  br i1 %call10.i, label %bch_bkey_try_merge.exit.cleanup_crit_edge, label %bch_bkey_try_merge.exit.if.end45_crit_edge

bch_bkey_try_merge.exit.if.end45_crit_edge:       ; preds = %bch_bkey_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

bch_bkey_try_merge.exit.cleanup_crit_edge:        ; preds = %bch_bkey_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %bch_bkey_try_merge.exit.if.end45_crit_edge, %bkey_cmp.exit.i.if.end45_crit_edge, %if.end.i127.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %while.end.if.end45_crit_edge, %while.cond.preheader.if.end45_crit_edge
  %m.0.lcssa179 = phi ptr [ %m.0.lcssa, %if.end.i127.if.end45_crit_edge ], [ %m.0.lcssa, %bkey_cmp.exit.i.if.end45_crit_edge ], [ %m.0.lcssa, %land.lhs.true.if.end45_crit_edge ], [ %m.0.lcssa, %bch_bkey_try_merge.exit.if.end45_crit_edge ], [ %m.0.lcssa, %while.end.if.end45_crit_edge ], [ %ret.0.lcssa.i.i, %while.cond.preheader.if.end45_crit_edge ]
  %84 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %keys, align 4
  %add.ptr.i132 = getelementptr i64, ptr %44, i32 %85
  %cmp49.not = icmp eq ptr %m.0.lcssa179, %add.ptr.i132
  br i1 %cmp49.not, label %if.end45.if.end53_crit_edge, label %land.lhs.true50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true50:                                  ; preds = %if.end45
  %86 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %b, align 8
  %key_merge.i133 = getelementptr inbounds %struct.btree_keys_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %key_merge.i133 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %key_merge.i133, align 4
  %tobool.not.i134 = icmp eq ptr %89, null
  br i1 %tobool.not.i134, label %land.lhs.true50.if.end53_crit_edge, label %if.end.i136

land.lhs.true50.if.end53_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end.i136:                                      ; preds = %land.lhs.true50
  %90 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %k, align 8
  %92 = ptrtoint ptr %m.0.lcssa179 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %m.0.lcssa179, align 8
  %shr.i22.i.i135 = xor i64 %93, %91
  %94 = and i64 %shr.i22.i.i135, 8286623383081189376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %lor.lhs.false.i140, label %if.end.i136.if.end53_crit_edge

if.end.i136.if.end53_crit_edge:                   ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

lor.lhs.false.i140:                               ; preds = %if.end.i136
  %and.i.i137 = and i64 %93, 1048575
  %and.i.i.i138 = and i64 %91, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i138, i64 %and.i.i137)
  %cmp.not.i.i139 = icmp eq i64 %and.i.i.i138, %and.i.i137
  br i1 %cmp.not.i.i139, label %cond.false.i.i149, label %cond.true.i.i142, !prof !46

cond.true.i.i142:                                 ; preds = %lor.lhs.false.i140
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i141 = sub nsw i64 %and.i.i.i138, %and.i.i137
  br label %bkey_cmp.exit.i152

cond.false.i.i149:                                ; preds = %lor.lhs.false.i140
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i143 = getelementptr inbounds %struct.bkey, ptr %m.0.lcssa179, i32 0, i32 1
  %96 = ptrtoint ptr %low.i.i143 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %low.i.i143, align 8
  %shr.i.i144 = lshr i64 %93, 20
  %and.i19.i145 = and i64 %shr.i.i144, 65535
  %sub.neg.i146 = sub i64 %and.i19.i145, %97
  %low.i.i.i147 = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %98 = ptrtoint ptr %low.i.i.i147 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %low.i.i.i147, align 8
  %sub7.i.i148 = add i64 %sub.neg.i146, %99
  br label %bkey_cmp.exit.i152

bkey_cmp.exit.i152:                               ; preds = %cond.false.i.i149, %cond.true.i.i142
  %cond.i.i150 = phi i64 [ %sub.i.i141, %cond.true.i.i142 ], [ %sub7.i.i148, %cond.false.i.i149 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i150)
  %tobool5.not.i151 = icmp eq i64 %cond.i.i150, 0
  br i1 %tobool5.not.i151, label %bch_bkey_try_merge.exit156, label %bkey_cmp.exit.i152.if.end53_crit_edge

bkey_cmp.exit.i152.if.end53_crit_edge:            ; preds = %bkey_cmp.exit.i152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

bch_bkey_try_merge.exit156:                       ; preds = %bkey_cmp.exit.i152
  %call10.i153 = call zeroext i1 %89(ptr noundef %b, ptr noundef %k, ptr noundef %m.0.lcssa179) #14
  br i1 %call10.i153, label %bch_bkey_try_merge.exit156.copy_crit_edge, label %bch_bkey_try_merge.exit156.if.end53_crit_edge

bch_bkey_try_merge.exit156.if.end53_crit_edge:    ; preds = %bch_bkey_try_merge.exit156
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

bch_bkey_try_merge.exit156.copy_crit_edge:        ; preds = %bch_bkey_try_merge.exit156
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy

if.end53:                                         ; preds = %bch_bkey_try_merge.exit156.if.end53_crit_edge, %bkey_cmp.exit.i152.if.end53_crit_edge, %if.end.i136.if.end53_crit_edge, %land.lhs.true50.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  call void @bch_bset_insert(ptr noundef %b, ptr noundef %m.0.lcssa179, ptr noundef %k)
  br label %copy

copy:                                             ; preds = %if.end53, %bch_bkey_try_merge.exit156.copy_crit_edge
  %100 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %k, align 8
  %sh.diff.i = lshr i64 %101, 57
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv.i.i157 = and i32 %tr.sh.diff.i, 56
  %mul.i = add nuw nsw i32 %conv.i.i157, 16
  %102 = call ptr @memcpy(ptr %m.0.lcssa179, ptr %k, i32 %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %copy, %bch_bkey_try_merge.exit.cleanup_crit_edge, %bch_btree_iter_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bch_btree_iter_init.exit.cleanup_crit_edge ], [ 2, %bch_bkey_try_merge.exit.cleanup_crit_edge ], [ 4, %copy ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %preceding_key_on_stack) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__bch_bset_search(ptr noundef readonly %b, ptr noundef readonly %t, ptr nocapture noundef readonly %search) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %4 = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 5
  %keys = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keys, align 4
  %add.ptr.i = getelementptr i64, ptr %4, i32 %6
  br label %if.end62

if.else:                                          ; preds = %entry
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %7 = ptrtoint ptr %nsets.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nsets.i, align 1
  %conv.i = zext i8 %8 to i32
  %add.ptr.i228 = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i
  %last_set_unwritten.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %9 = ptrtoint ptr %last_set_unwritten.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %last_set_unwritten.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %idx.neg.i = sub nsw i32 0, %bf.cast.i
  %add.ptr1.i = getelementptr %struct.bset_tree, ptr %add.ptr.i228, i32 %idx.neg.i
  %cmp.i.not = icmp ult ptr %add.ptr1.i, %t
  br i1 %cmp.i.not, label %do.body, label %if.then8

if.then8:                                         ; preds = %if.else
  %end = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %search, align 8
  %and.i.i = and i64 %11, 1048575
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end, align 8
  %and.i12.i = and i64 %13, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i)
  %cmp.not.i = icmp eq i64 %and.i.i, %and.i12.i
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i, !prof !46

cond.true.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = sub nsw i64 %and.i.i, %and.i12.i
  br label %bkey_cmp.exit

cond.false.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  %14 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %low.i.i, align 8
  %low.i15.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %low.i15.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %low.i15.i, align 8
  %sub7.i = sub i64 %15, %17
  br label %bkey_cmp.exit

bkey_cmp.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %cond.i)
  %cmp = icmp sgt i64 %cond.i, -1
  %data17 = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %18 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data17, align 8
  %20 = getelementptr inbounds %struct.bset, ptr %19, i32 0, i32 5
  br i1 %cmp, label %if.then16, label %if.end, !prof !49

if.then16:                                        ; preds = %bkey_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  %keys20 = getelementptr inbounds %struct.bset, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %keys20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %keys20, align 4
  %add.ptr.i229 = getelementptr i64, ptr %20, i32 %22
  br label %cleanup

if.end:                                           ; preds = %bkey_cmp.exit
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %20, align 8
  %and.i12.i185 = and i64 %24, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i12.i185)
  %cmp.not.i186 = icmp eq i64 %and.i.i, %and.i12.i185
  br i1 %cmp.not.i186, label %cond.false.i192, label %cond.true.i188, !prof !46

cond.true.i188:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i187 = sub nsw i64 %and.i.i, %and.i12.i185
  br label %bkey_cmp.exit194

cond.false.i192:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i189 = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  %25 = ptrtoint ptr %low.i.i189 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %low.i.i189, align 8
  %low.i15.i190 = getelementptr inbounds %struct.bset, ptr %19, i32 1, i32 1
  %27 = ptrtoint ptr %low.i15.i190 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %low.i15.i190, align 8
  %sub7.i191 = sub i64 %26, %28
  br label %bkey_cmp.exit194

bkey_cmp.exit194:                                 ; preds = %cond.false.i192, %cond.true.i188
  %cond.i193 = phi i64 [ %sub.i187, %cond.true.i188 ], [ %sub7.i191, %cond.false.i192 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i193)
  %cmp25 = icmp slt i64 %cond.i193, 0
  br i1 %cmp25, label %bkey_cmp.exit194.cleanup_crit_edge, label %if.end35, !prof !49

bkey_cmp.exit194.cleanup_crit_edge:               ; preds = %bkey_cmp.exit194
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %bkey_cmp.exit194
  %tree.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 3
  %low.i.i230 = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end21.i.do.body.i_crit_edge, %if.end35
  %n.0.i = phi i32 [ 1, %if.end35 ], [ %spec.select141.i, %if.end21.i.do.body.i_crit_edge ]
  %shl.i = shl i32 %n.0.i, 4
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t, align 8, !noalias !62
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %30)
  %cmp.i231 = icmp ult i32 %shl.i, %30
  br i1 %cmp.i231, label %if.then.i, label %do.body.i.if.end.i_crit_edge

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tree.i, align 8, !noalias !62
  %arrayidx.i = getelementptr %struct.bkey_float, ptr %32, i32 %shl.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx.i) #14, !noalias !62, !srcloc !65
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %33 = ptrtoint ptr %tree.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tree.i, align 8, !noalias !62
  %arrayidx2.i = getelementptr %struct.bkey_float, ptr %34, i32 %n.0.i
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load.i232 = load i32, ptr %arrayidx2.i, align 1, !noalias !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554433, i32 %bf.load.i232)
  %cmp3.not.i = icmp ugt i32 %bf.load.i232, -33554433
  br i1 %cmp3.not.i, label %if.else11.i, label %if.then5.i, !prof !49

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear.i = and i32 %bf.load.i232, 4194303
  %bf.lshr.i.i = lshr i32 %bf.load.i232, 25
  %.neg.i.i = ashr i32 %bf.load.i232, 31
  %add.ptr.i.i = getelementptr i64, ptr %low.i.i230, i32 %.neg.i.i
  %arrayidx.i.i = getelementptr i64, ptr %add.ptr.i.i, i32 -1
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i.i, align 8, !noalias !62
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.i.i, align 8, !noalias !62
  %40 = trunc i32 %bf.lshr.i.i to i8
  %conv.i.i = and i8 %40, 63
  %sh_prom.i.i.i = zext i8 %conv.i.i to i64
  %shr.i.i.i = lshr i64 %39, %sh_prom.i.i.i
  %shl.i.i.i = shl i64 %37, 1
  %41 = xor i8 %conv.i.i, 63
  %sh_prom2.i.i.i = zext i8 %41 to i64
  %shl3.i.i.i = shl i64 %shl.i.i.i, %sh_prom2.i.i.i
  %or.i.i.i = or i64 %shl3.i.i.i, %shr.i.i.i
  %42 = trunc i64 %or.i.i.i to i32
  %conv5.i.i = and i32 %42, 4194303
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i, i32 %conv5.i.i)
  %cmp7.not.i = icmp ult i32 %bf.clear.i, %conv5.i.i
  br label %if.end21.i

if.else11.i:                                      ; preds = %if.end.i
  %call12.i = tail call fastcc ptr @tree_to_bkey(ptr noundef %t, i32 noundef %n.0.i) #14, !noalias !62
  %43 = ptrtoint ptr %call12.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %call12.i, align 8, !noalias !62
  %and.i.i.i = and i64 %44, 1048575
  %45 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %search, align 8, !noalias !62
  %and.i12.i.i = and i64 %46, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !46

cond.true.i.i:                                    ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub nsw i64 %and.i.i.i, %and.i12.i.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %call12.i, i32 0, i32 1
  %47 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %low.i.i.i, align 8, !noalias !62
  %49 = ptrtoint ptr %low.i.i230 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %low.i.i230, align 8, !noalias !62
  %sub7.i.i = sub i64 %48, %50
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i.i)
  %cmp14.i = icmp slt i64 %cond.i.i, 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %bkey_cmp.exit.i, %if.then5.i
  %cmp14.i.sink = phi i1 [ %cmp14.i, %bkey_cmp.exit.i ], [ %cmp7.not.i, %if.then5.i ]
  %mul16.i = shl i32 %n.0.i, 1
  %add19.i = zext i1 %cmp14.i.sink to i32
  %spec.select141.i = or i32 %mul16.i, %add19.i
  %51 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %t, align 8, !noalias !62
  %cmp23.i = icmp ult i32 %spec.select141.i, %52
  br i1 %cmp23.i, label %if.end21.i.do.body.i_crit_edge, label %do.end.i

if.end21.i.do.body.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %if.end21.i
  %extra.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 1
  %53 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %extra.i.i, align 4, !noalias !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %tobool.not.i.i.i.i = icmp eq i32 %n.0.i, 0
  %55 = tail call i32 @llvm.ctlz.i32(i32 %n.0.i, i1 true) #14, !range !48
  %sub.i.i.i.i = sub nuw nsw i32 32, %55
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %sub.i.i.i = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i18.i.i.i = icmp eq i32 %sub.i.i.i, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #14, !range !48
  %sub.i19.i.i.i = sub nuw nsw i32 32, %56
  %cond.i20.i.i.i = select i1 %tobool.not.i18.i.i.i, i32 0, i32 %sub.i19.i.i.i
  %sub2.i.i.i = sub nsw i32 %cond.i20.i.i.i, %cond.i.i.i.i
  %sub3.i.i.i = add nsw i32 %cond.i.i.i.i, -1
  %shl.i.i109.i = shl nuw i32 1, %sub3.i.i.i
  %xor.i.i.i = xor i32 %shl.i.i109.i, %n.0.i
  %shl4.i.i.i = shl i32 %xor.i.i.i, 1
  %or.i.i110.i = or i32 %shl4.i.i.i, 1
  %shl5.i.i.i = shl i32 %or.i.i110.i, %sub2.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i, i32 %54)
  %cmp.i.i.i = icmp ugt i32 %shl5.i.i.i, %54
  %sub6.i.i.i = sub i32 %shl5.i.i.i, %54
  %shr.i.i111.i = lshr i32 %sub6.i.i.i, 1
  %sub7.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i111.i, i32 0
  %j.addr.0.i.i.i = sub i32 %shl5.i.i.i, %sub7.i.i.i
  %57 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data17, align 8, !noalias !62
  %mul.i121.i = shl i32 %j.addr.0.i.i.i, 7
  %add.ptr.i122.i = getelementptr i8, ptr %58, i32 %mul.i121.i
  %59 = lshr i32 %bf.load.i232, 19
  %mul1.i123.i = and i32 %59, 56
  %add.ptr2.i124.i = getelementptr i8, ptr %add.ptr.i122.i, i32 %mul1.i123.i
  br i1 %cmp14.i.sink, label %if.then26.i, label %if.else46.i

if.then26.i:                                      ; preds = %do.end.i
  %inc.i = add i32 %j.addr.0.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %52)
  %cmp32.not.i = icmp eq i32 %inc.i, %52
  br i1 %cmp32.not.i, label %if.else42.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then26.i
  %mul.i113.i = shl i32 %n.0.i, 1
  %add.i.i = or i32 %mul.i113.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %52)
  %cmp.i.i = icmp ult i32 %add.i.i, %52
  br i1 %cmp.i.i, label %if.then33.i.while.cond.i.i_crit_edge, label %if.else.i.i

if.then33.i.while.cond.i.i_crit_edge:             ; preds = %if.then33.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then33.i.while.cond.i.i_crit_edge
  %j.addr.0.i.i = phi i32 [ %mul3.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %add.i.i, %if.then33.i.while.cond.i.i_crit_edge ]
  %mul3.i.i = shl i32 %j.addr.0.i.i, 1
  %cmp4.i.i = icmp ult i32 %mul3.i.i, %52
  br i1 %cmp4.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.cond.i.i.inorder_next.exit.i_crit_edge

while.cond.i.i.inorder_next.exit.i_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inorder_next.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

if.else.i.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  %neg.i.i = xor i32 %n.0.i, -1
  %60 = tail call i32 @llvm.cttz.i32(i32 %neg.i.i, i1 false) #14, !range !48
  %add6.i.i = add nuw nsw i32 %60, 1
  %shr.i.i = lshr i32 %n.0.i, %add6.i.i
  br label %inorder_next.exit.i

inorder_next.exit.i:                              ; preds = %if.else.i.i, %while.cond.i.i.inorder_next.exit.i_crit_edge
  %j.addr.1.i.i = phi i32 [ %shr.i.i, %if.else.i.i ], [ %j.addr.0.i.i, %while.cond.i.i.inorder_next.exit.i_crit_edge ]
  %arrayidx37.i = getelementptr %struct.bkey_float, ptr %34, i32 %j.addr.1.i.i
  %61 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %bf.load38.i = load i32, ptr %arrayidx37.i, align 1, !noalias !62
  %mul.i115.i = shl i32 %inc.i, 7
  %add.ptr.i116.i = getelementptr i8, ptr %58, i32 %mul.i115.i
  %62 = lshr i32 %bf.load38.i, 19
  %mul1.i117.i = and i32 %62, 56
  %add.ptr2.i118.i = getelementptr i8, ptr %add.ptr.i116.i, i32 %mul1.i117.i
  br label %if.end62

if.else42.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  %63 = getelementptr inbounds %struct.bset, ptr %58, i32 0, i32 5
  %keys.i = getelementptr inbounds %struct.bset, ptr %58, i32 0, i32 4
  %64 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %keys.i, align 4, !noalias !62
  %add.ptr.i119.i = getelementptr i64, ptr %63, i32 %65
  br label %if.end62

if.else46.i:                                      ; preds = %do.end.i
  %dec.i = add i32 %j.addr.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool51.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool51.not.i, label %if.else61.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.else46.i
  %mul.i125.i = shl i32 %n.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i125.i, i32 %52)
  %cmp.i126.i = icmp ult i32 %mul.i125.i, %52
  br i1 %cmp.i126.i, label %if.then52.i.while.cond.i129.i_crit_edge, label %if.else.i131.i

if.then52.i.while.cond.i129.i_crit_edge:          ; preds = %if.then52.i
  br label %while.cond.i129.i

while.cond.i129.i:                                ; preds = %while.cond.i129.i.while.cond.i129.i_crit_edge, %if.then52.i.while.cond.i129.i_crit_edge
  %j.addr.0.i127.i = phi i32 [ %add.i128.i, %while.cond.i129.i.while.cond.i129.i_crit_edge ], [ %mul.i125.i, %if.then52.i.while.cond.i129.i_crit_edge ]
  %mul2.i.i = shl i32 %j.addr.0.i127.i, 1
  %add.i128.i = or i32 %mul2.i.i, 1
  %cmp3.i.i = icmp ult i32 %add.i128.i, %52
  br i1 %cmp3.i.i, label %while.cond.i129.i.while.cond.i129.i_crit_edge, label %while.cond.i129.i.inorder_prev.exit.i_crit_edge

while.cond.i129.i.inorder_prev.exit.i_crit_edge:  ; preds = %while.cond.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inorder_prev.exit.i

while.cond.i129.i.while.cond.i129.i_crit_edge:    ; preds = %while.cond.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i129.i

if.else.i131.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = tail call i32 @llvm.cttz.i32(i32 %n.0.i, i1 true) #14, !range !48
  %67 = add nuw nsw i32 %66, 1
  %ffs.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %67
  %shr.i130.i = lshr i32 %n.0.i, %ffs.i.i
  br label %inorder_prev.exit.i

inorder_prev.exit.i:                              ; preds = %if.else.i131.i, %while.cond.i129.i.inorder_prev.exit.i_crit_edge
  %j.addr.1.i132.i = phi i32 [ %shr.i130.i, %if.else.i131.i ], [ %j.addr.0.i127.i, %while.cond.i129.i.inorder_prev.exit.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.bkey_float, ptr %34, i32 %j.addr.1.i132.i
  %68 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load57.i = load i32, ptr %arrayidx56.i, align 1, !noalias !62
  %mul.i134.i = shl i32 %dec.i, 7
  %add.ptr.i135.i = getelementptr i8, ptr %58, i32 %mul.i134.i
  %69 = lshr i32 %bf.load57.i, 19
  %mul1.i136.i = and i32 %69, 56
  %add.ptr2.i137.i = getelementptr i8, ptr %add.ptr.i135.i, i32 %mul1.i136.i
  br label %if.end62

if.else61.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = getelementptr inbounds %struct.bset, ptr %58, i32 0, i32 5
  br label %if.end62

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool37.not = icmp eq i8 %8, 0
  br i1 %tobool37.not, label %land.rhs, label %do.body.do.end59_crit_edge

do.body.do.end59_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

land.rhs:                                         ; preds = %do.body
  %data39 = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %71 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data39, align 8
  %73 = getelementptr inbounds %struct.bset, ptr %72, i32 0, i32 5
  %keys42 = getelementptr inbounds %struct.bset, ptr %72, i32 0, i32 4
  %74 = ptrtoint ptr %keys42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %keys42, align 4
  %add.ptr.i233 = getelementptr i64, ptr %73, i32 %75
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i233 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub.i, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div.i)
  %cmp45 = icmp ult i32 %1, %div.i
  br i1 %cmp45, label %do.body53, label %land.rhs.do.end59_crit_edge, !prof !49

land.rhs.do.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

do.body53:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1055, 0\0A.popsection", ""() #14, !srcloc !66
  unreachable

do.end59:                                         ; preds = %land.rhs.do.end59_crit_edge, %do.body.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not39.i = icmp eq i32 %1, 1
  br i1 %cmp.not39.i, label %do.end59.while.end.i_crit_edge, label %while.body.lr.ph.i

do.end59.while.end.i_crit_edge:                   ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.end59
  %prev.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 4
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i, align 4, !noalias !67
  %data.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %78 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i, align 8, !noalias !67
  %80 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %search, align 8, !noalias !67
  %and.i12.i.i234 = and i64 %81, 1048575
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %bkey_cmp.exit.i247.while.body.i_crit_edge, %while.body.lr.ph.i
  %ri.041.i = phi i32 [ %1, %while.body.lr.ph.i ], [ %shr.ri.0.i, %bkey_cmp.exit.i247.while.body.i_crit_edge ]
  %li.040.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %li.0.shr.i, %bkey_cmp.exit.i247.while.body.i_crit_edge ]
  %add1.i = add i32 %li.040.i, %ri.041.i
  %shr.i = lshr i32 %add1.i, 1
  %arrayidx.i.i235 = getelementptr i8, ptr %77, i32 %shr.i
  %82 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i235, align 1, !noalias !67
  %conv.i.i236 = zext i8 %83 to i32
  %mul.i.i.i = shl i32 %shr.i, 7
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 %mul.i.i.i
  %mul1.i.i.i = shl nuw nsw i32 %conv.i.i236, 3
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul1.i.i.i
  %84 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr2.i.i.i, align 8, !noalias !67
  %and.i.i.i237 = and i64 %85, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i237, i64 %and.i12.i.i234)
  %cmp.not.i.i238 = icmp eq i64 %and.i.i.i237, %and.i12.i.i234
  br i1 %cmp.not.i.i238, label %cond.false.i.i243, label %cond.true.i.i240, !prof !46

cond.true.i.i240:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i239 = sub nsw i64 %and.i.i.i237, %and.i12.i.i234
  br label %bkey_cmp.exit.i247

cond.false.i.i243:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i241 = getelementptr inbounds %struct.bkey, ptr %add.ptr2.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %low.i.i.i241 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %low.i.i.i241, align 8, !noalias !67
  %88 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %low.i15.i.i, align 8, !noalias !67
  %sub7.i.i242 = sub i64 %87, %89
  br label %bkey_cmp.exit.i247

bkey_cmp.exit.i247:                               ; preds = %cond.false.i.i243, %cond.true.i.i240
  %cond.i.i244 = phi i64 [ %sub.i.i239, %cond.true.i.i240 ], [ %sub7.i.i242, %cond.false.i.i243 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i244)
  %cmp3.i = icmp sgt i64 %cond.i.i244, 0
  %li.0.shr.i = select i1 %cmp3.i, i32 %li.040.i, i32 %shr.i
  %shr.ri.0.i = select i1 %cmp3.i, i32 %shr.i, i32 %ri.041.i
  %add.i245 = add i32 %li.0.shr.i, 1
  %cmp.not.i246 = icmp eq i32 %add.i245, %shr.ri.0.i
  br i1 %cmp.not.i246, label %bkey_cmp.exit.i247.while.end.i_crit_edge, label %bkey_cmp.exit.i247.while.body.i_crit_edge

bkey_cmp.exit.i247.while.body.i_crit_edge:        ; preds = %bkey_cmp.exit.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

bkey_cmp.exit.i247.while.end.i_crit_edge:         ; preds = %bkey_cmp.exit.i247
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %bkey_cmp.exit.i247.while.end.i_crit_edge, %do.end59.while.end.i_crit_edge
  %li.0.lcssa.i = phi i32 [ 0, %do.end59.while.end.i_crit_edge ], [ %li.0.shr.i, %bkey_cmp.exit.i247.while.end.i_crit_edge ]
  %ri.0.lcssa.i = phi i32 [ 1, %do.end59.while.end.i_crit_edge ], [ %shr.ri.0.i, %bkey_cmp.exit.i247.while.end.i_crit_edge ]
  %prev.i23.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 4
  %90 = ptrtoint ptr %prev.i23.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i23.i, align 4, !noalias !67
  %arrayidx.i24.i = getelementptr i8, ptr %91, i32 %li.0.lcssa.i
  %92 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i24.i, align 1, !noalias !67
  %conv.i25.i = zext i8 %93 to i32
  %data.i.i26.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %94 = ptrtoint ptr %data.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i26.i, align 8, !noalias !67
  %mul.i.i27.i = shl i32 %li.0.lcssa.i, 7
  %add.ptr.i.i28.i = getelementptr i8, ptr %95, i32 %mul.i.i27.i
  %mul1.i.i29.i = shl nuw nsw i32 %conv.i25.i, 3
  %add.ptr2.i.i30.i = getelementptr i8, ptr %add.ptr.i.i28.i, i32 %mul1.i.i29.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ri.0.lcssa.i, i32 %1)
  %cmp6.i = icmp ult i32 %ri.0.lcssa.i, %1
  br i1 %cmp6.i, label %cond.true.i248, label %cond.false.i251

cond.true.i248:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i32.i = getelementptr i8, ptr %91, i32 %ri.0.lcssa.i
  %96 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i32.i, align 1, !noalias !67
  %conv.i33.i = zext i8 %97 to i32
  %mul.i.i35.i = shl i32 %ri.0.lcssa.i, 7
  %add.ptr.i.i36.i = getelementptr i8, ptr %95, i32 %mul.i.i35.i
  %mul1.i.i37.i = shl nuw nsw i32 %conv.i33.i, 3
  %add.ptr2.i.i38.i = getelementptr i8, ptr %add.ptr.i.i36.i, i32 %mul1.i.i37.i
  br label %if.end62

cond.false.i251:                                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %98 = getelementptr inbounds %struct.bset, ptr %95, i32 0, i32 5
  %keys.i249 = getelementptr inbounds %struct.bset, ptr %95, i32 0, i32 4
  %99 = ptrtoint ptr %keys.i249 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %keys.i249, align 4, !noalias !67
  %add.ptr.i.i250 = getelementptr i64, ptr %98, i32 %100
  br label %if.end62

if.end62:                                         ; preds = %cond.false.i251, %cond.true.i248, %if.else61.i, %inorder_prev.exit.i, %if.else42.i, %inorder_next.exit.i, %if.then
  %i.sroa.13.0 = phi ptr [ %add.ptr.i, %if.then ], [ %add.ptr2.i118.i, %inorder_next.exit.i ], [ %add.ptr.i119.i, %if.else42.i ], [ %add.ptr2.i124.i, %inorder_prev.exit.i ], [ %add.ptr2.i124.i, %if.else61.i ], [ %add.ptr2.i.i38.i, %cond.true.i248 ], [ %add.ptr.i.i250, %cond.false.i251 ]
  %i.sroa.0.0 = phi ptr [ %4, %if.then ], [ %add.ptr2.i124.i, %inorder_next.exit.i ], [ %add.ptr2.i124.i, %if.else42.i ], [ %add.ptr2.i137.i, %inorder_prev.exit.i ], [ %70, %if.else61.i ], [ %add.ptr2.i.i30.i, %cond.true.i248 ], [ %add.ptr2.i.i30.i, %cond.false.i251 ]
  %expensive_debug_checks.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 4
  %101 = ptrtoint ptr %expensive_debug_checks.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %expensive_debug_checks.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i.not = icmp eq i8 %104, 0
  br i1 %tobool.i.not, label %if.end62.if.end124_crit_edge, label %do.body65

if.end62.if.end124_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

do.body65:                                        ; preds = %if.end62
  %set.i253 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i254 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %105 = ptrtoint ptr %nsets.i254 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nsets.i254, align 1
  %conv.i255 = zext i8 %106 to i32
  %add.ptr.i256 = getelementptr %struct.bset_tree, ptr %set.i253, i32 %conv.i255
  %last_set_unwritten.i257 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %107 = ptrtoint ptr %last_set_unwritten.i257 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i258 = load i8, ptr %last_set_unwritten.i257, align 2
  %bf.lshr.i259 = lshr i8 %bf.load.i258, 7
  %bf.cast.i260 = zext i8 %bf.lshr.i259 to i32
  %idx.neg.i261 = sub nsw i32 0, %bf.cast.i260
  %add.ptr1.i262 = getelementptr %struct.bset_tree, ptr %add.ptr.i256, i32 %idx.neg.i261
  %cmp.i263.not = icmp ult ptr %add.ptr1.i262, %t
  br i1 %cmp.i263.not, label %do.body65.do.body95_crit_edge, label %land.lhs.true

do.body65.do.body95_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

land.lhs.true:                                    ; preds = %do.body65
  %data68 = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %108 = ptrtoint ptr %data68 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data68, align 8
  %110 = getelementptr inbounds %struct.bset, ptr %109, i32 0, i32 5
  %cmp70.not = icmp eq ptr %i.sroa.0.0, %110
  br i1 %cmp70.not, label %land.lhs.true.do.body95_crit_edge, label %land.rhs71

land.lhs.true.do.body95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

land.rhs71:                                       ; preds = %land.lhs.true
  %sub.ptr.lhs.cast.i265 = ptrtoint ptr %i.sroa.0.0 to i32
  %sub.ptr.rhs.cast.i266 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i267 = sub i32 %sub.ptr.lhs.cast.i265, %sub.ptr.rhs.cast.i266
  %div.i268 = sdiv i32 %sub.ptr.sub.i267, 128
  %extra.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 1
  %111 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %extra.i, align 4
  %113 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %t, align 8
  %sub.i38.i.i = add i32 %114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i38.i.i, 0
  %115 = tail call i32 @llvm.ctlz.i32(i32 %sub.i38.i.i, i1 true) #14, !range !48
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %115
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i271 = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %div.i268, i32 %112) #14
  %j.addr.0.i.i272 = add i32 %116, %div.i268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.addr.0.i.i272)
  %iszero.i.i = icmp eq i32 %j.addr.0.i.i272, 0
  %117 = tail call i32 @llvm.cttz.i32(i32 %j.addr.0.i.i272, i1 true) #14, !range !48
  %118 = add nuw nsw i32 %117, 1
  %ffs.i.i273 = select i1 %iszero.i.i, i32 0, i32 %118
  %shr37.i.i = or i32 %shl.i.i.i271, %j.addr.0.i.i272
  %or.i.i = lshr i32 %shr37.i.i, %ffs.i.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.i.i.i.i274 = icmp eq i32 %or.i.i, 0
  %119 = tail call i32 @llvm.ctlz.i32(i32 %or.i.i, i1 true) #14, !range !48
  %sub.i.i.i.i.i275 = sub nuw nsw i32 32, %119
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i274, i32 0, i32 %sub.i.i.i.i.i275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38.i.i)
  %tobool.not.i18.i.i.i.i = icmp eq i32 %sub.i38.i.i, 0
  %120 = tail call i32 @llvm.ctlz.i32(i32 %sub.i38.i.i, i1 true) #14, !range !48
  %sub.i19.i.i.i.i = sub nuw nsw i32 32, %120
  %cond.i20.i.i.i.i = select i1 %tobool.not.i18.i.i.i.i, i32 0, i32 %sub.i19.i.i.i.i
  %sub2.i.i.i.i = sub nsw i32 %cond.i20.i.i.i.i, %cond.i.i.i.i.i
  %sub3.i.i.i.i = add nsw i32 %cond.i.i.i.i.i, -1
  %shl.i.i.i.i = shl nuw i32 1, %sub3.i.i.i.i
  %xor.i.i.i.i = xor i32 %shl.i.i.i.i, %or.i.i
  %shl4.i.i.i.i = shl i32 %xor.i.i.i.i, 1
  %or.i.i.i.i = or i32 %shl4.i.i.i.i, 1
  %shl5.i.i.i.i = shl i32 %or.i.i.i.i, %sub2.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl5.i.i.i.i, i32 %112)
  %cmp.i.i.i.i = icmp ugt i32 %shl5.i.i.i.i, %112
  %sub6.i.i.i.i = sub i32 %shl5.i.i.i.i, %112
  %shr.i.i.i.i = lshr i32 %sub6.i.i.i.i, 1
  %sub7.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %shr.i.i.i.i, i32 0
  %j.addr.0.i.i.i.i = sub i32 %shl5.i.i.i.i, %sub7.i.i.i.i
  %tree.i.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 3
  %121 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tree.i.i, align 8
  %arrayidx.i.i277 = getelementptr %struct.bkey_float, ptr %122, i32 %or.i.i
  %123 = ptrtoint ptr %arrayidx.i.i277 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %bf.load.i.i = load i32, ptr %arrayidx.i.i277, align 1
  %mul.i.i.i279 = shl i32 %j.addr.0.i.i.i.i, 7
  %add.ptr.i.i.i280 = getelementptr i8, ptr %109, i32 %mul.i.i.i279
  %124 = lshr i32 %bf.load.i.i, 19
  %mul1.i.i.i281 = and i32 %124, 56
  %add.ptr2.i.i.i282 = getelementptr i8, ptr %add.ptr.i.i.i280, i32 %mul1.i.i.i281
  %prev.i = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 4
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i, align 4
  %arrayidx.i283 = getelementptr i8, ptr %126, i32 %or.i.i
  %127 = ptrtoint ptr %arrayidx.i283 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i283, align 1
  %conv.i284 = zext i8 %128 to i32
  %idx.neg.i285 = sub nsw i32 0, %conv.i284
  %add.ptr.i286 = getelementptr i64, ptr %add.ptr2.i.i.i282, i32 %idx.neg.i285
  %129 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %add.ptr.i286, align 8
  %and.i.i195 = and i64 %130, 1048575
  %131 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %search, align 8
  %and.i12.i196 = and i64 %132, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i195, i64 %and.i12.i196)
  %cmp.not.i197 = icmp eq i64 %and.i.i195, %and.i12.i196
  br i1 %cmp.not.i197, label %cond.false.i203, label %cond.true.i199, !prof !46

cond.true.i199:                                   ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i198 = sub nsw i64 %and.i.i195, %and.i12.i196
  br label %bkey_cmp.exit205

cond.false.i203:                                  ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i200 = getelementptr inbounds %struct.bkey, ptr %add.ptr.i286, i32 0, i32 1
  %133 = ptrtoint ptr %low.i.i200 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %low.i.i200, align 8
  %low.i15.i201 = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  %135 = ptrtoint ptr %low.i15.i201 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %low.i15.i201, align 8
  %sub7.i202 = sub i64 %134, %136
  br label %bkey_cmp.exit205

bkey_cmp.exit205:                                 ; preds = %cond.false.i203, %cond.true.i199
  %cond.i204 = phi i64 [ %sub.i198, %cond.true.i199 ], [ %sub7.i202, %cond.false.i203 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i204)
  %cmp77 = icmp sgt i64 %cond.i204, 0
  br i1 %cmp77, label %do.body86, label %bkey_cmp.exit205.do.body95_crit_edge, !prof !49

bkey_cmp.exit205.do.body95_crit_edge:             ; preds = %bkey_cmp.exit205
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body95

do.body86:                                        ; preds = %bkey_cmp.exit205
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1065, 0\0A.popsection", ""() #14, !srcloc !70
  unreachable

do.body95:                                        ; preds = %bkey_cmp.exit205.do.body95_crit_edge, %land.lhs.true.do.body95_crit_edge, %do.body65.do.body95_crit_edge
  %data97 = getelementptr inbounds %struct.bset_tree, ptr %t, i32 0, i32 5
  %137 = ptrtoint ptr %data97 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data97, align 8
  %139 = getelementptr inbounds %struct.bset, ptr %138, i32 0, i32 5
  %keys100 = getelementptr inbounds %struct.bset, ptr %138, i32 0, i32 4
  %140 = ptrtoint ptr %keys100 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %keys100, align 4
  %add.ptr.i287 = getelementptr i64, ptr %139, i32 %141
  %cmp102.not = icmp eq ptr %i.sroa.13.0, %add.ptr.i287
  br i1 %cmp102.not, label %do.body95.if.end124_crit_edge, label %land.rhs103

do.body95.if.end124_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

land.rhs103:                                      ; preds = %do.body95
  %142 = ptrtoint ptr %i.sroa.13.0 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i.sroa.13.0, align 8
  %and.i.i206 = and i64 %143, 1048575
  %144 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %search, align 8
  %and.i12.i207 = and i64 %145, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i206, i64 %and.i12.i207)
  %cmp.not.i208 = icmp eq i64 %and.i.i206, %and.i12.i207
  br i1 %cmp.not.i208, label %cond.false.i214, label %cond.true.i210, !prof !46

cond.true.i210:                                   ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i209 = sub nsw i64 %and.i.i206, %and.i12.i207
  br label %bkey_cmp.exit216

cond.false.i214:                                  ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i211 = getelementptr inbounds %struct.bkey, ptr %i.sroa.13.0, i32 0, i32 1
  %146 = ptrtoint ptr %low.i.i211 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %low.i.i211, align 8
  %low.i15.i212 = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  %148 = ptrtoint ptr %low.i15.i212 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %low.i15.i212, align 8
  %sub7.i213 = sub i64 %147, %149
  br label %bkey_cmp.exit216

bkey_cmp.exit216:                                 ; preds = %cond.false.i214, %cond.true.i210
  %cond.i215 = phi i64 [ %sub.i209, %cond.true.i210 ], [ %sub7.i213, %cond.false.i214 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i215)
  %cmp106 = icmp slt i64 %cond.i215, 1
  br i1 %cmp106, label %do.body115, label %bkey_cmp.exit216.if.end124_crit_edge, !prof !49

bkey_cmp.exit216.if.end124_crit_edge:             ; preds = %bkey_cmp.exit216
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

do.body115:                                       ; preds = %bkey_cmp.exit216
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1068, 0\0A.popsection", ""() #14, !srcloc !71
  unreachable

if.end124:                                        ; preds = %bkey_cmp.exit216.if.end124_crit_edge, %do.body95.if.end124_crit_edge, %if.end62.if.end124_crit_edge
  %cmp127.not292 = icmp eq ptr %i.sroa.0.0, %i.sroa.13.0
  br i1 %cmp127.not292, label %if.end124.cleanup_crit_edge, label %land.rhs134.lr.ph, !prof !49

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs134.lr.ph:                                ; preds = %if.end124
  %150 = ptrtoint ptr %search to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %search, align 8
  %and.i12.i218 = and i64 %151, 1048575
  %low.i15.i223 = getelementptr inbounds %struct.bkey, ptr %search, i32 0, i32 1
  br label %land.rhs134

land.rhs134:                                      ; preds = %while.body.land.rhs134_crit_edge, %land.rhs134.lr.ph
  %i.sroa.0.1293 = phi ptr [ %i.sroa.0.0, %land.rhs134.lr.ph ], [ %add.ptr.i290, %while.body.land.rhs134_crit_edge ]
  %152 = ptrtoint ptr %i.sroa.0.1293 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %i.sroa.0.1293, align 8
  %and.i.i217 = and i64 %153, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i217, i64 %and.i12.i218)
  %cmp.not.i219 = icmp eq i64 %and.i.i217, %and.i12.i218
  br i1 %cmp.not.i219, label %cond.false.i225, label %cond.true.i221, !prof !46

cond.true.i221:                                   ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i220 = sub nsw i64 %and.i.i217, %and.i12.i218
  br label %bkey_cmp.exit227

cond.false.i225:                                  ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i222 = getelementptr inbounds %struct.bkey, ptr %i.sroa.0.1293, i32 0, i32 1
  %154 = ptrtoint ptr %low.i.i222 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %low.i.i222, align 8
  %156 = ptrtoint ptr %low.i15.i223 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %low.i15.i223, align 8
  %sub7.i224 = sub i64 %155, %157
  br label %bkey_cmp.exit227

bkey_cmp.exit227:                                 ; preds = %cond.false.i225, %cond.true.i221
  %cond.i226 = phi i64 [ %sub.i220, %cond.true.i221 ], [ %sub7.i224, %cond.false.i225 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i226)
  %cmp137 = icmp slt i64 %cond.i226, 1
  br i1 %cmp137, label %while.body, label %bkey_cmp.exit227.cleanup_crit_edge

bkey_cmp.exit227.cleanup_crit_edge:               ; preds = %bkey_cmp.exit227
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %bkey_cmp.exit227
  %shr.i.i.i288 = lshr i64 %153, 60
  %158 = trunc i64 %shr.i.i.i288 to i32
  %159 = and i32 %158, 7
  %conv.i.i289 = add nuw nsw i32 %159, 2
  %add.ptr.i290 = getelementptr i64, ptr %i.sroa.0.1293, i32 %conv.i.i289
  %cmp127.not = icmp eq ptr %add.ptr.i290, %i.sroa.13.0
  br i1 %cmp127.not, label %while.body.cleanup_crit_edge, label %while.body.land.rhs134_crit_edge, !prof !49

while.body.land.rhs134_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs134

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %bkey_cmp.exit227.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %bkey_cmp.exit194.cleanup_crit_edge, %if.then16
  %retval.0 = phi ptr [ %add.ptr.i229, %if.then16 ], [ %20, %bkey_cmp.exit194.cleanup_crit_edge ], [ %i.sroa.13.0, %if.end124.cleanup_crit_edge ], [ %i.sroa.13.0, %while.body.cleanup_crit_edge ], [ %i.sroa.0.1293, %bkey_cmp.exit227.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_iter_push(ptr nocapture noundef %iter, ptr noundef %k, ptr noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %k, %end
  br i1 %cmp.not, label %entry.if.end81_crit_edge, label %do.body

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.body:                                          ; preds = %entry
  %used = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %do.body72, label %if.then2

if.then2:                                         ; preds = %do.body
  %inc = add i32 %1, 1
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %used, align 4
  %arrayidx = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %k, ptr %arrayidx, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %end, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not173 = icmp eq i32 %1, 0
  br i1 %tobool7.not173, label %if.then2.do.body24_crit_edge, label %if.then2.while.body_crit_edge

if.then2.while.body_crit_edge:                    ; preds = %if.then2
  br label %while.body

if.then2.do.body24_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.then2.while.body_crit_edge
  %_i.0174 = phi i32 [ %div139, %cleanup.while.body_crit_edge ], [ %1, %if.then2.while.body_crit_edge ]
  %sub = add i32 %_i.0174, -1
  %div139 = lshr i32 %sub, 1
  %arrayidx9 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_i.0174
  %arrayidx11 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %div139
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack140 = load i32, ptr %arrayidx9, align 4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack143 = load i32, ptr %arrayidx11, align 4
  %9 = inttoptr i32 %.unpack140 to ptr
  %10 = inttoptr i32 %.unpack143 to ptr
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %9, align 8
  %and.i.i.i = and i64 %12, 1048575
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  %and.i12.i.i = and i64 %14, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %and.i12.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i, %and.i12.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !46

cond.true.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub nsw i64 %and.i.i.i, %and.i12.i.i
  br label %btree_iter_cmp.exit

cond.false.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %low.i.i.i, align 8
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %16, %18
  br label %btree_iter_cmp.exit

btree_iter_cmp.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i, label %btree_iter_cmp.exit.do.body24_crit_edge, label %cleanup

btree_iter_cmp.exit.do.body24_crit_edge:          ; preds = %btree_iter_cmp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

cleanup:                                          ; preds = %btree_iter_cmp.exit
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %__tmp.sroa.0.0.copyload = load ptr, ptr %arrayidx9, align 4
  %__tmp.sroa.5.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx9, i32 4
  %20 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %__tmp.sroa.5.0.copyload = load ptr, ptr %__tmp.sroa.5.0.arrayidx15.sroa_idx, align 4
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx11, align 4
  store i64 %22, ptr %arrayidx9, align 4
  store ptr %__tmp.sroa.0.0.copyload, ptr %arrayidx11, align 4
  %__tmp.sroa.5.0.arrayidx21.sroa_idx = getelementptr inbounds i8, ptr %arrayidx11, i32 4
  %23 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx21.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.arrayidx21.sroa_idx, align 4
  %tobool7.not = icmp ult i32 %sub, 2
  br i1 %tobool7.not, label %cleanup.do.body24_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.do.body24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

do.body24:                                        ; preds = %cleanup.do.body24_crit_edge, %btree_iter_cmp.exit.do.body24_crit_edge, %if.then2.do.body24_crit_edge
  %_i.0.lcssa = phi i32 [ 0, %if.then2.do.body24_crit_edge ], [ %_i.0174, %btree_iter_cmp.exit.do.body24_crit_edge ], [ %div139, %cleanup.do.body24_crit_edge ]
  %mul176 = shl i32 %_i.0.lcssa, 1
  %add177 = or i32 %mul176, 1
  %24 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add177, i32 %25)
  %cmp27178 = icmp ult i32 %add177, %25
  br i1 %cmp27178, label %do.body24.for.body_crit_edge, label %do.body24.if.end81_crit_edge

do.body24.if.end81_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.body24.for.body_crit_edge:                     ; preds = %do.body24
  br label %for.body

for.body:                                         ; preds = %do.body49.for.body_crit_edge, %do.body24.for.body_crit_edge
  %26 = phi i32 [ %57, %do.body49.for.body_crit_edge ], [ %25, %do.body24.for.body_crit_edge ]
  %add181 = phi i32 [ %add, %do.body49.for.body_crit_edge ], [ %add177, %do.body24.for.body_crit_edge ]
  %mul180 = phi i32 [ %mul, %do.body49.for.body_crit_edge ], [ %mul176, %do.body24.for.body_crit_edge ]
  %_j.0179 = phi i32 [ %_r25.0, %do.body49.for.body_crit_edge ], [ %_i.0.lcssa, %do.body24.for.body_crit_edge ]
  %add30 = add i32 %mul180, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %26)
  %cmp32 = icmp ult i32 %add30, %26
  br i1 %cmp32, label %land.lhs.true, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

land.lhs.true:                                    ; preds = %for.body
  %arrayidx34 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add181
  %arrayidx37 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add30
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack133 = load i32, ptr %arrayidx34, align 4
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack136 = load i32, ptr %arrayidx37, align 4
  %29 = inttoptr i32 %.unpack133 to ptr
  %30 = inttoptr i32 %.unpack136 to ptr
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %29, align 8
  %and.i.i.i146 = and i64 %32, 1048575
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %30, align 8
  %and.i12.i.i147 = and i64 %34, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i146, i64 %and.i12.i.i147)
  %cmp.not.i.i148 = icmp eq i64 %and.i.i.i146, %and.i12.i.i147
  br i1 %cmp.not.i.i148, label %cond.false.i.i154, label %cond.true.i.i150, !prof !46

cond.true.i.i150:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i149 = sub nsw i64 %and.i.i.i146, %and.i12.i.i147
  br label %btree_iter_cmp.exit157

cond.false.i.i154:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i151 = getelementptr inbounds %struct.bkey, ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %low.i.i.i151 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %low.i.i.i151, align 8
  %low.i15.i.i152 = getelementptr inbounds %struct.bkey, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %low.i15.i.i152 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %low.i15.i.i152, align 8
  %sub7.i.i153 = sub i64 %36, %38
  br label %btree_iter_cmp.exit157

btree_iter_cmp.exit157:                           ; preds = %cond.false.i.i154, %cond.true.i.i150
  %cond.i.i155 = phi i64 [ %sub.i.i149, %cond.true.i.i150 ], [ %sub7.i.i153, %cond.false.i.i154 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i155)
  %cmp.i156 = icmp sgt i64 %cond.i.i155, 0
  %spec.select = select i1 %cmp.i156, i32 %add30, i32 %add181
  br label %if.end41

if.end41:                                         ; preds = %btree_iter_cmp.exit157, %for.body.if.end41_crit_edge
  %_r25.0 = phi i32 [ %add181, %for.body.if.end41_crit_edge ], [ %spec.select, %btree_iter_cmp.exit157 ]
  %arrayidx43 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r25.0
  %arrayidx45 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j.0179
  %39 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack = load i32, ptr %arrayidx43, align 4
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack130 = load i32, ptr %arrayidx45, align 4
  %41 = inttoptr i32 %.unpack to ptr
  %42 = inttoptr i32 %.unpack130 to ptr
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %41, align 8
  %and.i.i.i158 = and i64 %44, 1048575
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %42, align 8
  %and.i12.i.i159 = and i64 %46, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i158, i64 %and.i12.i.i159)
  %cmp.not.i.i160 = icmp eq i64 %and.i.i.i158, %and.i12.i.i159
  br i1 %cmp.not.i.i160, label %cond.false.i.i166, label %cond.true.i.i162, !prof !46

cond.true.i.i162:                                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i161 = sub nsw i64 %and.i.i.i158, %and.i12.i.i159
  br label %btree_iter_cmp.exit169

cond.false.i.i166:                                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i163 = getelementptr inbounds %struct.bkey, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %low.i.i.i163 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %low.i.i.i163, align 8
  %low.i15.i.i164 = getelementptr inbounds %struct.bkey, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %low.i15.i.i164 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %low.i15.i.i164, align 8
  %sub7.i.i165 = sub i64 %48, %50
  br label %btree_iter_cmp.exit169

btree_iter_cmp.exit169:                           ; preds = %cond.false.i.i166, %cond.true.i.i162
  %cond.i.i167 = phi i64 [ %sub.i.i161, %cond.true.i.i162 ], [ %sub7.i.i165, %cond.false.i.i166 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i167)
  %cmp.i168 = icmp sgt i64 %cond.i.i167, 0
  br i1 %cmp.i168, label %btree_iter_cmp.exit169.if.end81_crit_edge, label %do.body49

btree_iter_cmp.exit169.if.end81_crit_edge:        ; preds = %btree_iter_cmp.exit169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.body49:                                        ; preds = %btree_iter_cmp.exit169
  %51 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %__tmp50.sroa.0.0.copyload = load ptr, ptr %arrayidx43, align 4
  %__tmp50.sroa.5.0.arrayidx52.sroa_idx = getelementptr inbounds i8, ptr %arrayidx43, i32 4
  %52 = ptrtoint ptr %__tmp50.sroa.5.0.arrayidx52.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %__tmp50.sroa.5.0.copyload = load ptr, ptr %__tmp50.sroa.5.0.arrayidx52.sroa_idx, align 4
  %53 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %arrayidx45, align 4
  store i64 %54, ptr %arrayidx43, align 4
  store ptr %__tmp50.sroa.0.0.copyload, ptr %arrayidx45, align 4
  %__tmp50.sroa.5.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %arrayidx45, i32 4
  %55 = ptrtoint ptr %__tmp50.sroa.5.0.arrayidx58.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %__tmp50.sroa.5.0.copyload, ptr %__tmp50.sroa.5.0.arrayidx58.sroa_idx, align 4
  %mul = shl i32 %_r25.0, 1
  %add = or i32 %mul, 1
  %56 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used, align 4
  %cmp27 = icmp ult i32 %add, %57
  br i1 %cmp27, label %do.body49.for.body_crit_edge, label %do.body49.if.end81_crit_edge

do.body49.if.end81_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.body49.for.body_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1100, 0\0A.popsection", ""() #14, !srcloc !72
  unreachable

if.end81:                                         ; preds = %do.body49.if.end81_crit_edge, %btree_iter_cmp.exit169.if.end81_crit_edge, %do.body24.if.end81_crit_edge, %entry.if.end81_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_btree_iter_next_filter(ptr nocapture noundef %iter, ptr noundef %b, ptr nocapture noundef readonly %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %call = tail call ptr @bch_btree_iter_next(ptr noundef %iter)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %call1 = tail call zeroext i1 %fn(ptr noundef %b, ptr noundef nonnull %call) #14
  br i1 %call1, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bset_sort_state_free(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mempool_exit(ptr noundef %state) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_bset_sort_state_init(ptr noundef %state, i32 noundef %page_order) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %time, ptr noundef nonnull @.str.13, ptr noundef nonnull @bch_bset_sort_state_init.__key, i16 noundef signext 3) #14
  %page_order1 = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %page_order1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %page_order, ptr %page_order1, align 8
  %shl = shl nuw i32 1, %page_order
  %call2 = tail call i32 @int_sqrt(i32 noundef %shl) #14
  %crit_factor = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %crit_factor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %crit_factor, align 4
  %2 = inttoptr i32 %page_order to ptr
  %call.i = tail call i32 @mempool_init(ptr noundef %state, i32 noundef 1, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef %2) #14
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_sort_partial(ptr noundef %b, i32 noundef %start, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %iter.i.i40 = alloca %struct.btree_iter, align 4
  %iter.i.i = alloca %struct.btree_iter, align 4
  %iter = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page_order = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %page_order to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_order, align 4
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #14
  %2 = getelementptr inbounds i8, ptr %iter, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  %expensive_debug_checks.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 4
  %4 = ptrtoint ptr %expensive_debug_checks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %expensive_debug_checks.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i, label %entry.bch_count_data.exit_crit_edge, label %cond.true.i

entry.bch_count_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_count_data.exit

cond.true.i:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter.i.i) #14
  %8 = getelementptr inbounds i8, ptr %iter.i.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 255, i32 32)
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b, align 8
  %is_extents.i.i = getelementptr inbounds %struct.btree_keys_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %is_extents.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_extents.i.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i38 = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i38, label %cond.true.i.__bch_count_data.exit.i_crit_edge, label %if.then.i.i

cond.true.i.__bch_count_data.exit.i_crit_edge:    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i

if.then.i.i:                                      ; preds = %cond.true.i
  %set.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %14 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %iter.i.i, align 4
  %used.i.i.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %used.i.i.i.i, align 4
  %b1.i.i.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %b1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b, ptr %b1.i.i.i.i, align 4
  %nsets.i.i.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %17 = ptrtoint ptr %nsets.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nsets.i.i.i.i.i, align 1
  %conv.i16.i.i.i.i = zext i8 %18 to i32
  %add.ptr.i17.i.i.i.i = getelementptr %struct.bset_tree, ptr %set.i.i.i, i32 %conv.i16.i.i.i.i
  %cmp.not18.i.i.i.i = icmp ult ptr %add.ptr.i17.i.i.i.i, %set.i.i.i
  br i1 %cmp.not18.i.i.i.i, label %if.then.i.i.bch_btree_iter_init.exit.i.i_crit_edge, label %if.then.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i.i_crit_edge:           ; preds = %if.then.i.i
  br label %for.body.i.i.i.i

if.then.i.i.bch_btree_iter_init.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i.i_crit_edge
  %start.addr.019.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %set.i.i.i, %if.then.i.i.for.body.i.i.i.i_crit_edge ]
  %data.i.i.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i.i, align 8
  %21 = getelementptr inbounds %struct.bset, ptr %20, i32 0, i32 5
  %keys.i.i.i.i = getelementptr inbounds %struct.bset, ptr %20, i32 0, i32 4
  %22 = ptrtoint ptr %keys.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keys.i.i.i.i, align 4
  %add.ptr.i15.i.i.i.i = getelementptr i64, ptr %21, i32 %23
  call void @bch_btree_iter_push(ptr noundef nonnull %iter.i.i, ptr noundef %21, ptr noundef %add.ptr.i15.i.i.i.i) #14
  %incdec.ptr.i.i.i.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i.i.i, i32 1
  %24 = ptrtoint ptr %nsets.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nsets.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %25 to i32
  %add.ptr.i.i.i.i.i = getelementptr %struct.bset_tree, ptr %set.i.i.i, i32 %conv.i.i.i.i.i
  %cmp.not.i.i.i.i = icmp ugt ptr %incdec.ptr.i.i.i.i, %add.ptr.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.bch_btree_iter_init.exit.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

for.body.i.i.i.i.bch_btree_iter_init.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit.i.i

bch_btree_iter_init.exit.i.i:                     ; preds = %for.body.i.i.i.i.bch_btree_iter_init.exit.i.i_crit_edge, %if.then.i.i.bch_btree_iter_init.exit.i.i_crit_edge
  %call17.i.i = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter.i.i) #14
  %tobool2.not8.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool2.not8.i.i, label %bch_btree_iter_init.exit.i.i.__bch_count_data.exit.i_crit_edge, label %bch_btree_iter_init.exit.i.i.for.body.i.i_crit_edge

bch_btree_iter_init.exit.i.i.for.body.i.i_crit_edge: ; preds = %bch_btree_iter_init.exit.i.i
  br label %for.body.i.i

bch_btree_iter_init.exit.i.i.__bch_count_data.exit.i_crit_edge: ; preds = %bch_btree_iter_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %bch_btree_iter_init.exit.i.i.for.body.i.i_crit_edge
  %call110.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call17.i.i, %bch_btree_iter_init.exit.i.i.for.body.i.i_crit_edge ]
  %ret.09.i.i = phi i32 [ %conv4.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %bch_btree_iter_init.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %call110.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %call110.i.i, align 8
  %shr.i.i.i = lshr i64 %27, 20
  %28 = trunc i64 %shr.i.i.i to i32
  %29 = and i32 %28, 65535
  %conv4.i.i = add i32 %29, %ret.09.i.i
  %call1.i.i = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter.i.i) #14
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.__bch_count_data.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.__bch_count_data.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i

__bch_count_data.exit.i:                          ; preds = %for.body.i.i.__bch_count_data.exit.i_crit_edge, %bch_btree_iter_init.exit.i.i.__bch_count_data.exit.i_crit_edge, %cond.true.i.__bch_count_data.exit.i_crit_edge
  %ret.1.i.i = phi i32 [ 0, %cond.true.i.__bch_count_data.exit.i_crit_edge ], [ 0, %bch_btree_iter_init.exit.i.i.__bch_count_data.exit.i_crit_edge ], [ %conv4.i.i, %for.body.i.i.__bch_count_data.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter.i.i) #14
  br label %bch_count_data.exit

bch_count_data.exit:                              ; preds = %__bch_count_data.exit.i, %entry.bch_count_data.exit_crit_edge
  %cond.i = phi i32 [ %ret.1.i.i, %__bch_count_data.exit.i ], [ -1, %entry.bch_count_data.exit_crit_edge ]
  %arrayidx = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %start
  %30 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %iter, align 4
  %used.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %31 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %used.i, align 4
  %b1.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %32 = ptrtoint ptr %b1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b, ptr %b1.i, align 4
  %set.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %nsets.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %33 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nsets.i.i, align 1
  %conv.i16.i = zext i8 %34 to i32
  %add.ptr.i17.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i16.i
  %cmp.not18.i = icmp ult ptr %add.ptr.i17.i, %arrayidx
  br i1 %cmp.not18.i, label %bch_count_data.exit.__bch_btree_iter_init.exit_crit_edge, label %bch_count_data.exit.for.body.i_crit_edge

bch_count_data.exit.for.body.i_crit_edge:         ; preds = %bch_count_data.exit
  br label %for.body.i

bch_count_data.exit.__bch_btree_iter_init.exit_crit_edge: ; preds = %bch_count_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %bch_count_data.exit.for.body.i_crit_edge
  %start.addr.019.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx, %bch_count_data.exit.for.body.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i, i32 0, i32 5
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 8
  %37 = getelementptr inbounds %struct.bset, ptr %36, i32 0, i32 5
  %keys.i = getelementptr inbounds %struct.bset, ptr %36, i32 0, i32 4
  %38 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %keys.i, align 4
  %add.ptr.i15.i = getelementptr i64, ptr %37, i32 %39
  call void @bch_btree_iter_push(ptr noundef nonnull %iter, ptr noundef %37, ptr noundef %add.ptr.i15.i) #14
  %incdec.ptr.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i, i32 1
  %40 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nsets.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %add.ptr.i.i = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %add.ptr.i.i
  br i1 %cmp.not.i, label %for.body.i.__bch_btree_iter_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.__bch_btree_iter_init.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_btree_iter_init.exit

__bch_btree_iter_init.exit:                       ; preds = %for.body.i.__bch_btree_iter_init.exit_crit_edge, %bch_count_data.exit.__bch_btree_iter_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %__bch_btree_iter_init.exit.if.end_crit_edge, label %for.cond.preheader

__bch_btree_iter_init.exit.if.end_crit_edge:      ; preds = %__bch_btree_iter_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %__bch_btree_iter_init.exit
  %42 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nsets.i.i, align 1
  %conv2 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %start)
  %cmp.not77 = icmp ult i32 %conv2, %start
  br i1 %cmp.not77, label %for.cond.preheader.if.end14.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14.i_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %start, %for.cond.preheader.for.body_crit_edge ]
  %keys.078 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %data = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.079, i32 5
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 8
  %keys6 = getelementptr inbounds %struct.bset, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %keys6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %keys6, align 4
  %add = add i32 %47, %keys.078
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond = icmp eq i32 %i.079, %conv2
  br i1 %exitcond, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = shl i32 %add, 3
  %phi.bo80 = add i32 %phi.bo, 31
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.end.loopexit, %for.cond.preheader.if.end14.i_crit_edge
  %keys.0.lcssa = phi i32 [ 31, %for.cond.preheader.if.end14.i_crit_edge ], [ %phi.bo80, %for.end.loopexit ]
  %shr.i = lshr i32 %keys.0.lcssa, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %keys.0.lcssa)
  %tobool.not.i.i = icmp ult i32 %keys.0.lcssa, 4096
  %48 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !48
  %sub.i.i = sub nuw nsw i32 32, %48
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %if.end

if.end:                                           ; preds = %if.end14.i, %__bch_btree_iter_init.exit.if.end_crit_edge
  %order.0 = phi i32 [ %conv, %__bch_btree_iter_init.exit.if.end_crit_edge ], [ %cond.i.i, %if.end14.i ]
  call fastcc void @__btree_sort(ptr noundef %b, ptr noundef nonnull %iter, i32 noundef %start, i32 noundef %order.0, i1 noundef zeroext false, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp9 = icmp sgt i32 %cond.i, -1
  br i1 %cmp9, label %land.rhs, label %if.end.do.end23_crit_edge

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

land.rhs:                                         ; preds = %if.end
  %49 = ptrtoint ptr %expensive_debug_checks.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %expensive_debug_checks.i.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.i.not.i42 = icmp eq i8 %52, 0
  br i1 %tobool.i.not.i42, label %land.rhs.bch_count_data.exit76_crit_edge, label %cond.true.i45

land.rhs.bch_count_data.exit76_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_count_data.exit76

cond.true.i45:                                    ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter.i.i40) #14
  %53 = getelementptr inbounds i8, ptr %iter.i.i40, i32 12
  %54 = call ptr @memset(ptr %53, i32 255, i32 32)
  %55 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b, align 8
  %is_extents.i.i43 = getelementptr inbounds %struct.btree_keys_ops, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %is_extents.i.i43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_extents.i.i43, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i44 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i44, label %cond.true.i45.__bch_count_data.exit.i74_crit_edge, label %if.then.i.i53

cond.true.i45.__bch_count_data.exit.i74_crit_edge: ; preds = %cond.true.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i74

if.then.i.i53:                                    ; preds = %cond.true.i45
  %59 = ptrtoint ptr %iter.i.i40 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %iter.i.i40, align 4
  %used.i.i.i.i47 = getelementptr inbounds %struct.btree_iter, ptr %iter.i.i40, i32 0, i32 1
  %60 = ptrtoint ptr %used.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %used.i.i.i.i47, align 4
  %b1.i.i.i.i48 = getelementptr inbounds %struct.btree_iter, ptr %iter.i.i40, i32 0, i32 2
  %61 = ptrtoint ptr %b1.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b, ptr %b1.i.i.i.i48, align 4
  %62 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nsets.i.i, align 1
  %conv.i16.i.i.i.i50 = zext i8 %63 to i32
  %add.ptr.i17.i.i.i.i51 = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i16.i.i.i.i50
  %cmp.not18.i.i.i.i52 = icmp ult ptr %add.ptr.i17.i.i.i.i51, %set.i.i
  br i1 %cmp.not18.i.i.i.i52, label %if.then.i.i53.bch_btree_iter_init.exit.i.i65_crit_edge, label %if.then.i.i53.for.body.i.i.i.i62_crit_edge

if.then.i.i53.for.body.i.i.i.i62_crit_edge:       ; preds = %if.then.i.i53
  br label %for.body.i.i.i.i62

if.then.i.i53.bch_btree_iter_init.exit.i.i65_crit_edge: ; preds = %if.then.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit.i.i65

for.body.i.i.i.i62:                               ; preds = %for.body.i.i.i.i62.for.body.i.i.i.i62_crit_edge, %if.then.i.i53.for.body.i.i.i.i62_crit_edge
  %start.addr.019.i.i.i.i54 = phi ptr [ %incdec.ptr.i.i.i.i58, %for.body.i.i.i.i62.for.body.i.i.i.i62_crit_edge ], [ %set.i.i, %if.then.i.i53.for.body.i.i.i.i62_crit_edge ]
  %data.i.i.i.i.i55 = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i.i.i54, i32 0, i32 5
  %64 = ptrtoint ptr %data.i.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i.i.i55, align 8
  %66 = getelementptr inbounds %struct.bset, ptr %65, i32 0, i32 5
  %keys.i.i.i.i56 = getelementptr inbounds %struct.bset, ptr %65, i32 0, i32 4
  %67 = ptrtoint ptr %keys.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %keys.i.i.i.i56, align 4
  %add.ptr.i15.i.i.i.i57 = getelementptr i64, ptr %66, i32 %68
  call void @bch_btree_iter_push(ptr noundef nonnull %iter.i.i40, ptr noundef %66, ptr noundef %add.ptr.i15.i.i.i.i57) #14
  %incdec.ptr.i.i.i.i58 = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i.i.i54, i32 1
  %69 = ptrtoint ptr %nsets.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nsets.i.i, align 1
  %conv.i.i.i.i.i59 = zext i8 %70 to i32
  %add.ptr.i.i.i.i.i60 = getelementptr %struct.bset_tree, ptr %set.i.i, i32 %conv.i.i.i.i.i59
  %cmp.not.i.i.i.i61 = icmp ugt ptr %incdec.ptr.i.i.i.i58, %add.ptr.i.i.i.i.i60
  br i1 %cmp.not.i.i.i.i61, label %for.body.i.i.i.i62.bch_btree_iter_init.exit.i.i65_crit_edge, label %for.body.i.i.i.i62.for.body.i.i.i.i62_crit_edge

for.body.i.i.i.i62.for.body.i.i.i.i62_crit_edge:  ; preds = %for.body.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i62

for.body.i.i.i.i62.bch_btree_iter_init.exit.i.i65_crit_edge: ; preds = %for.body.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit.i.i65

bch_btree_iter_init.exit.i.i65:                   ; preds = %for.body.i.i.i.i62.bch_btree_iter_init.exit.i.i65_crit_edge, %if.then.i.i53.bch_btree_iter_init.exit.i.i65_crit_edge
  %call17.i.i63 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter.i.i40) #14
  %tobool2.not8.i.i64 = icmp eq ptr %call17.i.i63, null
  br i1 %tobool2.not8.i.i64, label %bch_btree_iter_init.exit.i.i65.__bch_count_data.exit.i74_crit_edge, label %bch_btree_iter_init.exit.i.i65.for.body.i.i72_crit_edge

bch_btree_iter_init.exit.i.i65.for.body.i.i72_crit_edge: ; preds = %bch_btree_iter_init.exit.i.i65
  br label %for.body.i.i72

bch_btree_iter_init.exit.i.i65.__bch_count_data.exit.i74_crit_edge: ; preds = %bch_btree_iter_init.exit.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i74

for.body.i.i72:                                   ; preds = %for.body.i.i72.for.body.i.i72_crit_edge, %bch_btree_iter_init.exit.i.i65.for.body.i.i72_crit_edge
  %call110.i.i66 = phi ptr [ %call1.i.i70, %for.body.i.i72.for.body.i.i72_crit_edge ], [ %call17.i.i63, %bch_btree_iter_init.exit.i.i65.for.body.i.i72_crit_edge ]
  %ret.09.i.i67 = phi i32 [ %conv4.i.i69, %for.body.i.i72.for.body.i.i72_crit_edge ], [ 0, %bch_btree_iter_init.exit.i.i65.for.body.i.i72_crit_edge ]
  %71 = ptrtoint ptr %call110.i.i66 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %call110.i.i66, align 8
  %shr.i.i.i68 = lshr i64 %72, 20
  %73 = trunc i64 %shr.i.i.i68 to i32
  %74 = and i32 %73, 65535
  %conv4.i.i69 = add i32 %74, %ret.09.i.i67
  %call1.i.i70 = call ptr @bch_btree_iter_next(ptr noundef nonnull %iter.i.i40) #14
  %tobool2.not.i.i71 = icmp eq ptr %call1.i.i70, null
  br i1 %tobool2.not.i.i71, label %for.body.i.i72.__bch_count_data.exit.i74_crit_edge, label %for.body.i.i72.for.body.i.i72_crit_edge

for.body.i.i72.for.body.i.i72_crit_edge:          ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i72

for.body.i.i72.__bch_count_data.exit.i74_crit_edge: ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bch_count_data.exit.i74

__bch_count_data.exit.i74:                        ; preds = %for.body.i.i72.__bch_count_data.exit.i74_crit_edge, %bch_btree_iter_init.exit.i.i65.__bch_count_data.exit.i74_crit_edge, %cond.true.i45.__bch_count_data.exit.i74_crit_edge
  %ret.1.i.i73 = phi i32 [ 0, %cond.true.i45.__bch_count_data.exit.i74_crit_edge ], [ 0, %bch_btree_iter_init.exit.i.i65.__bch_count_data.exit.i74_crit_edge ], [ %conv4.i.i69, %for.body.i.i72.__bch_count_data.exit.i74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter.i.i40) #14
  br label %bch_count_data.exit76

bch_count_data.exit76:                            ; preds = %__bch_count_data.exit.i74, %land.rhs.bch_count_data.exit76_crit_edge
  %cond.i75 = phi i32 [ %ret.1.i.i73, %__bch_count_data.exit.i74 ], [ -1, %land.rhs.bch_count_data.exit76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i75, i32 %cond.i)
  %cmp12.not = icmp eq i32 %cond.i75, %cond.i
  br i1 %cmp12.not, label %bch_count_data.exit76.do.end23_crit_edge, label %do.body17, !prof !46

bch_count_data.exit76.do.end23_crit_edge:         ; preds = %bch_count_data.exit76
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.body17:                                        ; preds = %bch_count_data.exit76
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1312, 0\0A.popsection", ""() #14, !srcloc !73
  unreachable

do.end23:                                         ; preds = %bch_count_data.exit76.do.end23_crit_edge, %if.end.do.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btree_sort(ptr noundef %b, ptr noundef %iter, i32 noundef %start, i32 noundef %order, i1 noundef zeroext %fixup, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 10240, i32 noundef %order) #14
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then:                                          ; preds = %entry
  %page_order = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %page_order to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_order, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %order)
  %cmp = icmp ult i32 %2, %order
  br i1 %cmp, label %do.body4, label %do.end9, !prof !49

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/bset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1246, 0\0A.popsection", ""() #14, !srcloc !74
  unreachable

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call noalias ptr @mempool_alloc(ptr noundef %state, i32 noundef 3072) #14
  %call11 = tail call ptr @page_address(ptr noundef %call10) #14
  %3 = ptrtoint ptr %page_order to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_order, align 8
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %entry.if.end13_crit_edge
  %out.0 = phi ptr [ %0, %entry.if.end13_crit_edge ], [ %call11, %do.end9 ]
  %order.addr.0 = phi i32 [ %order, %entry.if.end13_crit_edge ], [ %4, %do.end9 ]
  %call.i = tail call i64 @sched_clock() #14
  tail call fastcc void @btree_mergesort(ptr noundef %b, ptr noundef %out.0, ptr noundef %iter, i1 noundef zeroext %fixup, i1 noundef zeroext false)
  %conv = trunc i32 %start to i8
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %5 = ptrtoint ptr %nsets to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %nsets, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool16.not = icmp eq i32 %start, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %page_order17 = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %6 = ptrtoint ptr %page_order17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %page_order17, align 4
  %conv18 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %order.addr.0, i32 %conv18)
  %cmp19 = icmp eq i32 %order.addr.0, %conv18
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %magic = getelementptr inbounds %struct.bset, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %magic to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %magic, align 8
  %magic22 = getelementptr inbounds %struct.bset, ptr %out.0, i32 0, i32 1
  %12 = ptrtoint ptr %magic22 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %magic22, align 8
  %13 = load ptr, ptr %data, align 8
  %seq = getelementptr inbounds %struct.bset, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seq, align 8
  %seq26 = getelementptr inbounds %struct.bset, ptr %out.0, i32 0, i32 2
  %16 = ptrtoint ptr %seq26 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %seq26, align 8
  %17 = load ptr, ptr %data, align 8
  %version = getelementptr inbounds %struct.bset, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 8
  %version30 = getelementptr inbounds %struct.bset, ptr %out.0, i32 0, i32 3
  %20 = ptrtoint ptr %version30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %version30, align 8
  %21 = load ptr, ptr %data, align 8
  store ptr %out.0, ptr %data, align 8
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  %keys = getelementptr inbounds %struct.bset, ptr %out.0, i32 0, i32 4
  %22 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keys, align 4
  %data41 = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %start, i32 5
  %24 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data41, align 8
  %keys42 = getelementptr inbounds %struct.bset, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %keys42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %keys42, align 4
  %27 = load ptr, ptr %data41, align 8
  %28 = getelementptr inbounds %struct.bset, ptr %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.bset, ptr %out.0, i32 0, i32 5
  %30 = load i32, ptr %keys, align 4
  %add.ptr.i.idx = shl i32 %30, 3
  %31 = call ptr @memcpy(ptr %28, ptr %29, i32 %add.ptr.i.idx)
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then21
  %out.1 = phi ptr [ %out.0, %if.else ], [ %21, %if.then21 ]
  br i1 %tobool.not, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %out.1 to i32
  %sub = add i32 %33, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %32, i32 %shr
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %state) #14
  br label %if.end58

if.else57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %out.1 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef %order.addr.0) #14
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then54
  tail call void @bch_bset_build_written_tree(ptr noundef %b)
  br i1 %tobool16.not, label %if.then60, label %if.end58.if.end61_crit_edge

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %time = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 3
  tail call void @bch_time_stats_update(ptr noundef %time, i64 noundef %call.i) #14
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_sort_and_fix_extents(ptr noundef %b, ptr noundef %iter, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page_order = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %page_order to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_order, align 4
  %conv = zext i8 %1 to i32
  tail call fastcc void @__btree_sort(ptr noundef %b, ptr noundef %iter, i32 noundef 0, i32 noundef %conv, i1 noundef zeroext true, ptr noundef %state)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_sort_into(ptr noundef %b, ptr nocapture noundef %new, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.btree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #14
  %0 = getelementptr inbounds i8, ptr %iter, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %iter, align 4
  %used.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %3 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %used.i.i, align 4
  %b1.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %4 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %b, ptr %b1.i.i, align 4
  %nsets.i.i.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %5 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i16.i.i = zext i8 %6 to i32
  %add.ptr.i17.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i16.i.i
  %cmp.not18.i.i = icmp ult ptr %add.ptr.i17.i.i, %set.i
  br i1 %cmp.not18.i.i, label %entry.bch_btree_iter_init.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bch_btree_iter_init.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %start.addr.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %set.i, %entry.for.body.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.bset_tree, ptr %start.addr.019.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 8
  %9 = getelementptr inbounds %struct.bset, ptr %8, i32 0, i32 5
  %keys.i.i = getelementptr inbounds %struct.bset, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %keys.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i64, ptr %9, i32 %11
  call void @bch_btree_iter_push(ptr noundef nonnull %iter, ptr noundef %9, ptr noundef %add.ptr.i15.i.i) #14
  %incdec.ptr.i.i = getelementptr %struct.bset_tree, ptr %start.addr.019.i.i, i32 1
  %12 = ptrtoint ptr %nsets.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nsets.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr.i.i.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv.i.i.i
  %cmp.not.i.i = icmp ugt ptr %incdec.ptr.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bch_btree_iter_init.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.bch_btree_iter_init.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_init.exit

bch_btree_iter_init.exit:                         ; preds = %for.body.i.i.bch_btree_iter_init.exit_crit_edge, %entry.bch_btree_iter_init.exit_crit_edge
  %set = getelementptr inbounds %struct.btree_keys, ptr %new, i32 0, i32 5
  %data = getelementptr inbounds %struct.btree_keys, ptr %new, i32 0, i32 5, i32 0, i32 5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  call fastcc void @btree_mergesort(ptr noundef %b, ptr noundef %15, ptr noundef nonnull %iter, i1 noundef zeroext false, i1 noundef zeroext true)
  %time = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 3
  call void @bch_time_stats_update(ptr noundef %time, i64 noundef %call.i) #14
  %16 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %set, align 8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btree_mergesort(ptr noundef %b, ptr noundef %out, ptr noundef %iter, i1 noundef zeroext %fixup, i1 noundef zeroext %remove_stale) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i.i = alloca %struct.bkey, align 8
  %tmp = alloca %union.anon.78, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #14
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 64)
  %cond = select i1 %remove_stale, ptr @bch_ptr_bad, ptr @bch_ptr_invalid
  %used = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 1
  %1 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp175.not = icmp ult i32 %2, 2
  br i1 %cmp175.not, label %entry.while.cond.preheader_crit_edge, label %for.cond2.preheader.preheader

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.cond2.preheader.preheader:                    ; preds = %entry
  %div132 = lshr i32 %2, 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %for.cond2.preheader.preheader
  %i.0176.in = phi i32 [ %i.0176, %for.end.for.cond2.preheader_crit_edge ], [ %div132, %for.cond2.preheader.preheader ]
  %i.0176 = add nsw i32 %i.0176.in, -1
  %mul168 = shl i32 %i.0176, 1
  %add169 = or i32 %mul168, 1
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add169, i32 %4)
  %cmp4170 = icmp ult i32 %add169, %4
  br i1 %cmp4170, label %for.cond2.preheader.for.body5_crit_edge, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond2.preheader.for.body5_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body5

while.cond.preheader:                             ; preds = %for.end.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %data.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 3
  %end.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 0, i32 1
  %b.i.i = getelementptr inbounds %struct.btree_iter, ptr %iter, i32 0, i32 2
  %low.i.i = getelementptr inbounds %struct.bkey, ptr %.compoundliteral.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.bset, ptr %out, i32 0, i32 5
  br label %while.cond.outer.outer

for.body5:                                        ; preds = %do.body23.for.body5_crit_edge, %for.cond2.preheader.for.body5_crit_edge
  %6 = phi i32 [ %37, %do.body23.for.body5_crit_edge ], [ %4, %for.cond2.preheader.for.body5_crit_edge ]
  %add173 = phi i32 [ %add, %do.body23.for.body5_crit_edge ], [ %add169, %for.cond2.preheader.for.body5_crit_edge ]
  %mul172 = phi i32 [ %mul, %do.body23.for.body5_crit_edge ], [ %mul168, %for.cond2.preheader.for.body5_crit_edge ]
  %_j.0171 = phi i32 [ %_r.0, %do.body23.for.body5_crit_edge ], [ %i.0176, %for.cond2.preheader.for.body5_crit_edge ]
  %add8 = add i32 %mul172, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %6)
  %cmp10 = icmp ult i32 %add8, %6
  br i1 %cmp10, label %land.lhs.true, label %for.body5.if.end_crit_edge

for.body5.if.end_crit_edge:                       ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add173
  %arrayidx13 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack138 = load i32, ptr %arrayidx, align 4
  %12 = insertvalue [2 x i32] undef, i32 %.unpack138, 0
  %.elt139 = getelementptr inbounds [2 x i32], ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %.elt139 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack140 = load i32, ptr %.elt139, align 4
  %14 = insertvalue [2 x i32] %12, i32 %.unpack140, 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack141 = load i32, ptr %arrayidx13, align 4
  %16 = insertvalue [2 x i32] undef, i32 %.unpack141, 0
  %.elt142 = getelementptr inbounds [2 x i32], ptr %arrayidx13, i32 0, i32 1
  %17 = ptrtoint ptr %.elt142 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack143 = load i32, ptr %.elt142, align 4
  %18 = insertvalue [2 x i32] %16, i32 %.unpack143, 1
  %call = tail call zeroext i1 %10([2 x i32] %14, [2 x i32] %18) #14
  %spec.select = select i1 %call, i32 %add8, i32 %add173
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body5.if.end_crit_edge
  %_r.0 = phi i32 [ %add173, %for.body5.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %19 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx17 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r.0
  %arrayidx19 = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j.0171
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %arrayidx17, align 4
  %24 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt133 = getelementptr inbounds [2 x i32], ptr %arrayidx17, i32 0, i32 1
  %25 = ptrtoint ptr %.elt133 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack134 = load i32, ptr %.elt133, align 4
  %26 = insertvalue [2 x i32] %24, i32 %.unpack134, 1
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack135 = load i32, ptr %arrayidx19, align 4
  %28 = insertvalue [2 x i32] undef, i32 %.unpack135, 0
  %.elt136 = getelementptr inbounds [2 x i32], ptr %arrayidx19, i32 0, i32 1
  %29 = ptrtoint ptr %.elt136 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack137 = load i32, ptr %.elt136, align 4
  %30 = insertvalue [2 x i32] %28, i32 %.unpack137, 1
  %call20 = tail call zeroext i1 %22([2 x i32] %26, [2 x i32] %30) #14
  br i1 %call20, label %if.end.for.end_crit_edge, label %do.body23

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body23:                                        ; preds = %if.end
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %__tmp.sroa.0.0.copyload = load ptr, ptr %arrayidx17, align 4
  %32 = ptrtoint ptr %.elt133 to i32
  call void @__asan_load4_noabort(i32 %32)
  %__tmp.sroa.5.0.copyload = load ptr, ptr %.elt133, align 4
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx19, align 4
  store i64 %34, ptr %arrayidx17, align 4
  store ptr %__tmp.sroa.0.0.copyload, ptr %arrayidx19, align 4
  %35 = ptrtoint ptr %.elt136 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %__tmp.sroa.5.0.copyload, ptr %.elt136, align 4
  %mul = shl i32 %_r.0, 1
  %add = or i32 %mul, 1
  %36 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used, align 4
  %cmp4 = icmp ult i32 %add, %37
  br i1 %cmp4, label %do.body23.for.body5_crit_edge, label %do.body23.for.end_crit_edge

do.body23.for.end_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body23.for.body5_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.end:                                          ; preds = %do.body23.for.end_crit_edge, %if.end.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %cmp = icmp sgt i32 %i.0176.in, 1
  br i1 %cmp, label %for.end.for.cond2.preheader_crit_edge, label %for.end.while.cond.preheader_crit_edge

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

while.cond:                                       ; preds = %while.cond.outer, %if.end51.while.cond_crit_edge
  %38 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %40 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b, align 8
  %sort_fixup = getelementptr inbounds %struct.btree_keys_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sort_fixup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sort_fixup, align 4
  %tobool38.not = icmp ne ptr %43, null
  %44 = and i1 %tobool38.not, %fixup
  br i1 %44, label %if.end45, label %while.body.if.then47_crit_edge

while.body.if.then47_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end45:                                         ; preds = %while.body
  %call44 = call ptr %43(ptr noundef %iter, ptr noundef nonnull %tmp) #14
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end45.if.then47_crit_edge, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %while.body.if.then47_crit_edge
  %45 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %if.then47.if.end51_crit_edge, label %if.then.i

if.then47.if.end51_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then.i:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i.i) #14
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  %shr.i.i.i.i.i = lshr i64 %54, 60
  %55 = trunc i64 %shr.i.i.i.i.i to i32
  %56 = and i32 %55, 7
  %conv.i.i.i.i = add nuw nsw i32 %56, 2
  %add.ptr.i.i.i = getelementptr i64, ptr %52, i32 %conv.i.i.i.i
  %57 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i, align 4
  %cmp.i.i = icmp ult ptr %add.ptr.i.i.i, %58
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.bch_btree_iter_next_check.exit.i_crit_edge

if.then.i.bch_btree_iter_next_check.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_next_check.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %59 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %is_extents.i.i = getelementptr inbounds %struct.btree_keys_ops, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %is_extents.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_extents.i.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i273.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i273.i, label %land.lhs.true.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr.i.i.i, align 8
  %and.i.i.i = and i64 %66, 1048575
  %or.i.i = or i64 %and.i.i.i, -9223372036854775808
  %67 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.i.i, ptr %.compoundliteral.i.i, align 8
  %low.i.i.i = getelementptr inbounds %struct.bkey, ptr %add.ptr.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %low.i.i.i, align 8
  %shr.i.i.i = lshr i64 %66, 20
  %and.i18.i.i = and i64 %shr.i.i.i, 65535
  %sub.i.i = sub i64 %69, %and.i18.i.i
  %70 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %sub.i.i, ptr %low.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %land.lhs.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %.compoundliteral.i.i, %cond.true.i.i ], [ %add.ptr.i.i.i, %land.lhs.true.i.i.cond.end.i.i_crit_edge ]
  %and.i.i.i.i = and i64 %54, 1048575
  %71 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %cond.i.i, align 8
  %and.i12.i.i.i = and i64 %72, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i.i, i64 %and.i12.i.i.i)
  %cmp.not.i.i.i = icmp eq i64 %and.i.i.i.i, %and.i12.i.i.i
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !46

cond.true.i.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = sub nsw i64 %and.i.i.i.i, %and.i12.i.i.i
  br label %bkey_cmp.exit.i.i

cond.false.i.i.i:                                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i.i.i = getelementptr inbounds %struct.bkey, ptr %52, i32 0, i32 1
  %73 = ptrtoint ptr %low.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %low.i.i.i.i, align 8
  %low.i15.i.i.i = getelementptr inbounds %struct.bkey, ptr %cond.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %low.i15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %low.i15.i.i.i, align 8
  %sub7.i.i.i = sub i64 %74, %76
  br label %bkey_cmp.exit.i.i

bkey_cmp.exit.i.i:                                ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i64 [ %sub.i.i.i, %cond.true.i.i.i ], [ %sub7.i.i.i, %cond.false.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i.i)
  %cmp8.i.i = icmp sgt i64 %cond.i.i.i, 0
  br i1 %cmp8.i.i, label %if.then.i.i, label %bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge

bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge: ; preds = %bkey_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bch_btree_iter_next_check.exit.i

if.then.i.i:                                      ; preds = %bkey_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @bch_dump_bucket(ptr noundef %60) #14
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #18
  unreachable

bch_btree_iter_next_check.exit.i:                 ; preds = %bkey_cmp.exit.i.i.bch_btree_iter_next_check.exit.i_crit_edge, %if.then.i.bch_btree_iter_next_check.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i.i) #14
  %77 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %cmp13.i = icmp ugt ptr %add.ptr.i.i.i, %58
  br i1 %cmp13.i, label %land.end.i, label %bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge

bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge: ; preds = %bch_btree_iter_next_check.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

land.end.i:                                       ; preds = %bch_btree_iter_next_check.exit.i
  %.b271.i = load i1, ptr @__bch_btree_iter_next.__already_done, align 1
  br i1 %.b271.i, label %land.end.i.if.end40.i_crit_edge, label %if.then19.i, !prof !46

land.end.i.if.end40.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then19.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__bch_btree_iter_next.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1145, i32 noundef 9, ptr noundef nonnull @.str.14) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then19.i, %land.end.i.if.end40.i_crit_edge
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %data.i.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end40.i, %bch_btree_iter_next_check.exit.i.if.end54.i_crit_edge
  %81 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i, align 4
  %83 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i.i, align 4
  %cmp61.i = icmp eq ptr %82, %84
  %85 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %used, align 4
  br i1 %cmp61.i, label %if.then62.i, label %for.cond127.preheader.i

for.cond127.preheader.i:                          ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp131275.i = icmp ugt i32 %86, 1
  br i1 %cmp131275.i, label %for.cond127.preheader.i.for.body132.i_crit_edge, label %for.cond127.preheader.i.if.end51_crit_edge

for.cond127.preheader.i.if.end51_crit_edge:       ; preds = %for.cond127.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond127.preheader.i.for.body132.i_crit_edge:  ; preds = %for.cond127.preheader.i
  br label %for.body132.i

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool63.not.i = icmp eq i32 %86, 0
  br i1 %tobool63.not.i, label %if.then62.i.if.end51_crit_edge, label %if.then65.i

if.then62.i.if.end51_crit_edge:                   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then65.i:                                      ; preds = %if.then62.i
  %dec.i = add i32 %86, -1
  %87 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %dec.i, ptr %used, align 4
  %arrayidx75.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %dec.i
  %88 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %arrayidx75.i, align 4
  %90 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %data.i.i, align 4
  store ptr %82, ptr %arrayidx75.i, align 4
  %__tmp.sroa.5.0.arrayidx78.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx75.i, i32 4
  %91 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx78.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %82, ptr %__tmp.sroa.5.0.arrayidx78.sroa_idx.i, align 4
  %92 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp84279.i = icmp ugt i32 %92, 1
  br i1 %cmp84279.i, label %if.then65.i.for.body.i_crit_edge, label %if.then65.i.if.end51_crit_edge

if.then65.i.if.end51_crit_edge:                   ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then65.i.for.body.i_crit_edge:                 ; preds = %if.then65.i
  br label %for.body.i

for.body.i:                                       ; preds = %do.body105.i.for.body.i_crit_edge, %if.then65.i.for.body.i_crit_edge
  %93 = phi i32 [ %116, %do.body105.i.for.body.i_crit_edge ], [ %92, %if.then65.i.for.body.i_crit_edge ]
  %add282.i = phi i32 [ %add.i, %do.body105.i.for.body.i_crit_edge ], [ 1, %if.then65.i.for.body.i_crit_edge ]
  %mul281.i = phi i32 [ %mul.i, %do.body105.i.for.body.i_crit_edge ], [ 0, %if.then65.i.for.body.i_crit_edge ]
  %_j.0280.i = phi i32 [ %_r82.0.i, %do.body105.i.for.body.i_crit_edge ], [ 0, %if.then65.i.for.body.i_crit_edge ]
  %add87.i = add i32 %mul281.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add87.i, i32 %93)
  %cmp89.i = icmp ult i32 %add87.i, %93
  br i1 %cmp89.i, label %land.lhs.true.i, label %for.body.i.if.end97.i_crit_edge

for.body.i.if.end97.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx91.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add282.i
  %arrayidx94.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add87.i
  %94 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.unpack265.i = load i32, ptr %arrayidx91.i, align 4
  %95 = insertvalue [2 x i32] undef, i32 %.unpack265.i, 0
  %.elt266.i = getelementptr inbounds [2 x i32], ptr %arrayidx91.i, i32 0, i32 1
  %96 = ptrtoint ptr %.elt266.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.unpack267.i = load i32, ptr %.elt266.i, align 4
  %97 = insertvalue [2 x i32] %95, i32 %.unpack267.i, 1
  %98 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.unpack268.i = load i32, ptr %arrayidx94.i, align 4
  %99 = insertvalue [2 x i32] undef, i32 %.unpack268.i, 0
  %.elt269.i = getelementptr inbounds [2 x i32], ptr %arrayidx94.i, i32 0, i32 1
  %100 = ptrtoint ptr %.elt269.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.unpack270.i = load i32, ptr %.elt269.i, align 4
  %101 = insertvalue [2 x i32] %99, i32 %.unpack270.i, 1
  %call95.i = call zeroext i1 %48([2 x i32] %97, [2 x i32] %101) #14
  %spec.select.i = select i1 %call95.i, i32 %add87.i, i32 %add282.i
  br label %if.end97.i

if.end97.i:                                       ; preds = %land.lhs.true.i, %for.body.i.if.end97.i_crit_edge
  %_r82.0.i = phi i32 [ %add282.i, %for.body.i.if.end97.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %arrayidx99.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r82.0.i
  %arrayidx101.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j.0280.i
  %102 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.unpack259.i = load i32, ptr %arrayidx99.i, align 4
  %103 = insertvalue [2 x i32] undef, i32 %.unpack259.i, 0
  %.elt260.i = getelementptr inbounds [2 x i32], ptr %arrayidx99.i, i32 0, i32 1
  %104 = ptrtoint ptr %.elt260.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.unpack261.i = load i32, ptr %.elt260.i, align 4
  %105 = insertvalue [2 x i32] %103, i32 %.unpack261.i, 1
  %106 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack262.i = load i32, ptr %arrayidx101.i, align 4
  %107 = insertvalue [2 x i32] undef, i32 %.unpack262.i, 0
  %.elt263.i = getelementptr inbounds [2 x i32], ptr %arrayidx101.i, i32 0, i32 1
  %108 = ptrtoint ptr %.elt263.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack264.i = load i32, ptr %.elt263.i, align 4
  %109 = insertvalue [2 x i32] %107, i32 %.unpack264.i, 1
  %call102.i = call zeroext i1 %48([2 x i32] %105, [2 x i32] %109) #14
  br i1 %call102.i, label %if.end97.i.if.end51_crit_edge, label %do.body105.i

if.end97.i.if.end51_crit_edge:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.body105.i:                                     ; preds = %if.end97.i
  %110 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %__tmp106.sroa.0.0.copyload.i = load ptr, ptr %arrayidx99.i, align 4
  %111 = ptrtoint ptr %.elt260.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %__tmp106.sroa.5.0.copyload.i = load ptr, ptr %.elt260.i, align 4
  %112 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %arrayidx101.i, align 4
  store i64 %113, ptr %arrayidx99.i, align 4
  store ptr %__tmp106.sroa.0.0.copyload.i, ptr %arrayidx101.i, align 4
  %114 = ptrtoint ptr %.elt263.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %__tmp106.sroa.5.0.copyload.i, ptr %.elt263.i, align 4
  %mul.i = shl i32 %_r82.0.i, 1
  %add.i = or i32 %mul.i, 1
  %115 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used, align 4
  %cmp84.i = icmp ult i32 %add.i, %116
  br i1 %cmp84.i, label %do.body105.i.for.body.i_crit_edge, label %do.body105.i.if.end51_crit_edge

do.body105.i.if.end51_crit_edge:                  ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.body105.i.for.body.i_crit_edge:                ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body132.i:                                    ; preds = %do.body155.i.for.body132.i_crit_edge, %for.cond127.preheader.i.for.body132.i_crit_edge
  %117 = phi i32 [ %140, %do.body155.i.for.body132.i_crit_edge ], [ %86, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %add129278.i = phi i32 [ %add129.i, %do.body155.i.for.body132.i_crit_edge ], [ 1, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %mul128277.i = phi i32 [ %mul128.i, %do.body155.i.for.body132.i_crit_edge ], [ 0, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %_j126.0276.i = phi i32 [ %_r125.0.i, %do.body155.i.for.body132.i_crit_edge ], [ 0, %for.cond127.preheader.i.for.body132.i_crit_edge ]
  %add135.i = add i32 %mul128277.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add135.i, i32 %117)
  %cmp137.i = icmp ult i32 %add135.i, %117
  br i1 %cmp137.i, label %land.lhs.true138.i, label %for.body132.i.if.end147.i_crit_edge

for.body132.i.if.end147.i_crit_edge:              ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147.i

land.lhs.true138.i:                               ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx140.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add129278.i
  %arrayidx143.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %add135.i
  %118 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack253.i = load i32, ptr %arrayidx140.i, align 4
  %119 = insertvalue [2 x i32] undef, i32 %.unpack253.i, 0
  %.elt254.i = getelementptr inbounds [2 x i32], ptr %arrayidx140.i, i32 0, i32 1
  %120 = ptrtoint ptr %.elt254.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.unpack255.i = load i32, ptr %.elt254.i, align 4
  %121 = insertvalue [2 x i32] %119, i32 %.unpack255.i, 1
  %122 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.unpack256.i = load i32, ptr %arrayidx143.i, align 4
  %123 = insertvalue [2 x i32] undef, i32 %.unpack256.i, 0
  %.elt257.i = getelementptr inbounds [2 x i32], ptr %arrayidx143.i, i32 0, i32 1
  %124 = ptrtoint ptr %.elt257.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.unpack258.i = load i32, ptr %.elt257.i, align 4
  %125 = insertvalue [2 x i32] %123, i32 %.unpack258.i, 1
  %call144.i = call zeroext i1 %48([2 x i32] %121, [2 x i32] %125) #14
  %spec.select272.i = select i1 %call144.i, i32 %add135.i, i32 %add129278.i
  br label %if.end147.i

if.end147.i:                                      ; preds = %land.lhs.true138.i, %for.body132.i.if.end147.i_crit_edge
  %_r125.0.i = phi i32 [ %add129278.i, %for.body132.i.if.end147.i_crit_edge ], [ %spec.select272.i, %land.lhs.true138.i ]
  %arrayidx149.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_r125.0.i
  %arrayidx151.i = getelementptr %struct.btree_iter, ptr %iter, i32 0, i32 3, i32 %_j126.0276.i
  %126 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.unpack.i = load i32, ptr %arrayidx149.i, align 4
  %127 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt248.i = getelementptr inbounds [2 x i32], ptr %arrayidx149.i, i32 0, i32 1
  %128 = ptrtoint ptr %.elt248.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack249.i = load i32, ptr %.elt248.i, align 4
  %129 = insertvalue [2 x i32] %127, i32 %.unpack249.i, 1
  %130 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.unpack250.i = load i32, ptr %arrayidx151.i, align 4
  %131 = insertvalue [2 x i32] undef, i32 %.unpack250.i, 0
  %.elt251.i = getelementptr inbounds [2 x i32], ptr %arrayidx151.i, i32 0, i32 1
  %132 = ptrtoint ptr %.elt251.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.unpack252.i = load i32, ptr %.elt251.i, align 4
  %133 = insertvalue [2 x i32] %131, i32 %.unpack252.i, 1
  %call152.i = call zeroext i1 %48([2 x i32] %129, [2 x i32] %133) #14
  br i1 %call152.i, label %if.end147.i.if.end51_crit_edge, label %do.body155.i

if.end147.i.if.end51_crit_edge:                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.body155.i:                                     ; preds = %if.end147.i
  %134 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %__tmp156.sroa.0.0.copyload.i = load ptr, ptr %arrayidx149.i, align 4
  %135 = ptrtoint ptr %.elt248.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %__tmp156.sroa.5.0.copyload.i = load ptr, ptr %.elt248.i, align 4
  %136 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %arrayidx151.i, align 4
  store i64 %137, ptr %arrayidx149.i, align 4
  store ptr %__tmp156.sroa.0.0.copyload.i, ptr %arrayidx151.i, align 4
  %138 = ptrtoint ptr %.elt251.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %__tmp156.sroa.5.0.copyload.i, ptr %.elt251.i, align 4
  %mul128.i = shl i32 %_r125.0.i, 1
  %add129.i = or i32 %mul128.i, 1
  %139 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %used, align 4
  %cmp131.i = icmp ult i32 %add129.i, %140
  br i1 %cmp131.i, label %do.body155.i.for.body132.i_crit_edge, label %do.body155.i.if.end51_crit_edge

do.body155.i.if.end51_crit_edge:                  ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.body155.i.for.body132.i_crit_edge:             ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body132.i

if.end51:                                         ; preds = %do.body155.i.if.end51_crit_edge, %if.end147.i.if.end51_crit_edge, %do.body105.i.if.end51_crit_edge, %if.end97.i.if.end51_crit_edge, %if.then65.i.if.end51_crit_edge, %if.then62.i.if.end51_crit_edge, %for.cond127.preheader.i.if.end51_crit_edge, %if.then47.if.end51_crit_edge, %if.end45.if.end51_crit_edge
  %k.1 = phi ptr [ %call44, %if.end45.if.end51_crit_edge ], [ null, %if.then47.if.end51_crit_edge ], [ %52, %if.then62.i.if.end51_crit_edge ], [ %52, %if.then65.i.if.end51_crit_edge ], [ %52, %for.cond127.preheader.i.if.end51_crit_edge ], [ %52, %if.end97.i.if.end51_crit_edge ], [ %52, %do.body105.i.if.end51_crit_edge ], [ %52, %if.end147.i.if.end51_crit_edge ], [ %52, %do.body155.i.if.end51_crit_edge ]
  %call52 = call zeroext i1 %cond(ptr noundef %b, ptr noundef %k.1) #14, !callees !75
  br i1 %call52, label %if.end51.while.cond_crit_edge, label %if.end54

if.end51.while.cond_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end54:                                         ; preds = %if.end51
  br i1 %tobool55.not, label %if.end54.if.end64.sink.split_crit_edge, label %if.else58

if.end54.if.end64.sink.split_crit_edge:           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.sink.split

if.else58:                                        ; preds = %if.end54
  %141 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %b, align 8
  %key_merge.i = getelementptr inbounds %struct.btree_keys_ops, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %key_merge.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %key_merge.i, align 4
  %tobool.not.i145 = icmp eq ptr %144, null
  br i1 %tobool.not.i145, label %if.else58.if.then60_crit_edge, label %if.end.i

if.else58.if.then60_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

if.end.i:                                         ; preds = %if.else58
  %145 = ptrtoint ptr %last.0.ph.ph to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %last.0.ph.ph, align 8
  %147 = ptrtoint ptr %k.1 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %k.1, align 8
  %shr.i22.i.i = xor i64 %148, %146
  %149 = and i64 %shr.i22.i.i, 8286623383081189376
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %149)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %lor.lhs.false.i, label %if.end.i.if.then60_crit_edge

if.end.i.if.then60_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

lor.lhs.false.i:                                  ; preds = %if.end.i
  %and.i.i = and i64 %148, 1048575
  %and.i.i.i146 = and i64 %146, 1048575
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i146, i64 %and.i.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i.i146, %and.i.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i148, !prof !46

cond.true.i.i148:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i147 = sub nsw i64 %and.i.i.i146, %and.i.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %low.i.i149 = getelementptr inbounds %struct.bkey, ptr %k.1, i32 0, i32 1
  %151 = ptrtoint ptr %low.i.i149 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %low.i.i149, align 8
  %shr.i.i = lshr i64 %148, 20
  %and.i19.i = and i64 %shr.i.i, 65535
  %sub.neg.i = sub i64 %and.i19.i, %152
  %153 = ptrtoint ptr %low.i.i.i150 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %low.i.i.i150, align 8
  %sub7.i.i = add i64 %sub.neg.i, %154
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i148
  %cond.i.i151 = phi i64 [ %sub.i.i147, %cond.true.i.i148 ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i151)
  %tobool5.not.i = icmp eq i64 %cond.i.i151, 0
  br i1 %tobool5.not.i, label %bch_bkey_try_merge.exit, label %bkey_cmp.exit.i.if.then60_crit_edge

bkey_cmp.exit.i.if.then60_crit_edge:              ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

bch_bkey_try_merge.exit:                          ; preds = %bkey_cmp.exit.i
  %call10.i = call zeroext i1 %144(ptr noundef %b, ptr noundef nonnull %last.0.ph.ph, ptr noundef %k.1) #14
  br i1 %call10.i, label %bch_bkey_try_merge.exit.while.cond.outer_crit_edge, label %bch_bkey_try_merge.exit.if.then60_crit_edge

bch_bkey_try_merge.exit.if.then60_crit_edge:      ; preds = %bch_bkey_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

bch_bkey_try_merge.exit.while.cond.outer_crit_edge: ; preds = %bch_bkey_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer

if.then60:                                        ; preds = %bch_bkey_try_merge.exit.if.then60_crit_edge, %bkey_cmp.exit.i.if.then60_crit_edge, %if.end.i.if.then60_crit_edge, %if.else58.if.then60_crit_edge
  %155 = ptrtoint ptr %last.0.ph.ph to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %last.0.ph.ph, align 8
  %shr.i.i.i153 = lshr i64 %156, 60
  %157 = trunc i64 %shr.i.i.i153 to i32
  %158 = and i32 %157, 7
  %conv.i.i154 = add nuw nsw i32 %158, 2
  %add.ptr.i = getelementptr i64, ptr %last.0.ph.ph, i32 %conv.i.i154
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.then60, %if.end54.if.end64.sink.split_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %if.then60 ], [ %5, %if.end54.if.end64.sink.split_crit_edge ]
  %159 = ptrtoint ptr %k.1 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %k.1, align 8
  %sh.diff.i155 = lshr i64 %160, 57
  %tr.sh.diff.i156 = trunc i64 %sh.diff.i155 to i32
  %conv.i.i157 = and i32 %tr.sh.diff.i156, 56
  %mul.i158 = add nuw nsw i32 %conv.i.i157, 16
  %161 = call ptr @memcpy(ptr %add.ptr.i.sink, ptr %k.1, i32 %mul.i158)
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %if.end64.sink.split, %while.cond.preheader
  %last.0.ph.ph = phi ptr [ %add.ptr.i.sink, %if.end64.sink.split ], [ null, %while.cond.preheader ]
  %tobool55.not = icmp eq ptr %last.0.ph.ph, null
  %low.i.i.i150 = getelementptr inbounds %struct.bkey, ptr %last.0.ph.ph, i32 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %bch_bkey_try_merge.exit.while.cond.outer_crit_edge
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tobool65.not = icmp eq ptr %last.0.ph.ph, null
  br i1 %tobool65.not, label %while.end.cond.end_crit_edge, label %cond.true

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %last.0.ph.ph to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %last.0.ph.ph, align 8
  %shr.i.i.i159 = lshr i64 %163, 60
  %164 = trunc i64 %shr.i.i.i159 to i32
  %165 = and i32 %164, 7
  %conv.i.i160 = add nuw nsw i32 %165, 2
  %add.ptr.i161 = getelementptr i64, ptr %last.0.ph.ph, i32 %conv.i.i160
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i161 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.end.cond.end_crit_edge
  %cond68 = phi i32 [ %sub.ptr.div, %cond.true ], [ 0, %while.end.cond.end_crit_edge ]
  %keys = getelementptr inbounds %struct.bset, ptr %out, i32 0, i32 4
  %166 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %cond68, ptr %keys, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btree_mergesort.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btree_mergesort, %if.then77)) #14
          to label %do.end81 [label %if.then77], !srcloc !76

if.then77:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %keys, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btree_mergesort.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %168) #14
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %cond.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_time_stats_update(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_sort_lazy(ptr noundef %b, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %crit_factor = getelementptr inbounds %struct.bset_sort_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %crit_factor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crit_factor, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %crit.0 = phi i32 [ 512, %if.end ], [ %mul, %for.body.for.cond_crit_edge ]
  %i.0.in = phi i32 [ %conv, %if.end ], [ %i.0, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in)
  %cmp = icmp sgt i32 %i.0.in, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1
  %mul = mul i32 %3, %crit.0
  %data = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.0, i32 5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %keys = getelementptr inbounds %struct.bset, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keys, align 4
  %cmp3 = icmp ult i32 %7, %mul
  br i1 %cmp3, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bch_btree_sort_partial(ptr noundef %b, i32 noundef %i.0, ptr noundef %state)
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp9 = icmp eq i8 %1, 3
  br i1 %cmp9, label %if.then11, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bch_btree_sort_partial(ptr noundef %b, i32 noundef 0, ptr noundef %state) #14
  br label %cleanup

out:                                              ; preds = %for.end.out_crit_edge, %entry.out_crit_edge
  tail call void @bch_bset_build_written_tree(ptr noundef %b)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11, %if.then5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_btree_keys_stats(ptr noundef readonly %b, ptr nocapture noundef %stats) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nsets = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 2
  %set.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 5
  %last_set_unwritten.i = getelementptr inbounds %struct.btree_keys, ptr %b, i32 0, i32 3
  %0 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nsets, align 1
  %conv38 = zext i8 %1 to i32
  %bytes_written = getelementptr inbounds %struct.bset_stats, ptr %stats, i32 0, i32 2
  %floats = getelementptr inbounds %struct.bset_stats, ptr %stats, i32 0, i32 4
  %failed = getelementptr inbounds %struct.bset_stats, ptr %stats, i32 0, i32 5
  %sets_unwritten = getelementptr inbounds %struct.bset_stats, ptr %stats, i32 0, i32 1
  %bytes_unwritten = getelementptr inbounds %struct.bset_stats, ptr %stats, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry
  %conv42 = phi i32 [ %conv38, %entry ], [ %conv, %if.end16.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc18, %if.end16.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.039
  %data = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.039, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %keys = getelementptr inbounds %struct.bset, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keys, align 4
  %mul = shl i32 %5, 3
  %add.ptr.i = getelementptr %struct.bset_tree, ptr %set.i, i32 %conv42
  %6 = ptrtoint ptr %last_set_unwritten.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %last_set_unwritten.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %idx.neg.i = sub nsw i32 0, %bf.cast.i
  %add.ptr1.i = getelementptr %struct.bset_tree, ptr %add.ptr.i, i32 %idx.neg.i
  %cmp.i.not = icmp ult ptr %add.ptr1.i, %arrayidx
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %stats, align 4
  %9 = ptrtoint ptr %bytes_written to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_written, align 4
  %add = add i32 %10, %mul
  store i32 %add, ptr %bytes_written, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %12, -1
  %13 = ptrtoint ptr %floats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %floats, align 4
  %add2 = add i32 %sub, %14
  store i32 %add2, ptr %floats, align 4
  %15 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp536 = icmp ugt i32 %15, 1
  br i1 %cmp536, label %for.body7.lr.ph, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

for.body7.lr.ph:                                  ; preds = %if.then
  %tree = getelementptr %struct.btree_keys, ptr %b, i32 0, i32 5, i32 %i.039, i32 3
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %j.037 = phi i32 [ 1, %for.body7.lr.ph ], [ %inc13, %for.inc.for.body7_crit_edge ]
  %16 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tree, align 8
  %arrayidx8 = getelementptr %struct.bkey_float, ptr %17, i32 %j.037
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load = load i32, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554433, i32 %bf.load)
  %cmp9 = icmp ugt i32 %bf.load, -33554433
  br i1 %cmp9, label %if.then11, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %failed, align 4
  %inc12 = add i32 %20, 1
  store i32 %inc12, ptr %failed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body7.for.inc_crit_edge
  %inc13 = add nuw i32 %j.037, 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  %cmp5 = icmp ult i32 %inc13, %22
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.if.end16_crit_edge

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %sets_unwritten to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sets_unwritten, align 4
  %inc14 = add i32 %24, 1
  store i32 %inc14, ptr %sets_unwritten, align 4
  %25 = ptrtoint ptr %bytes_unwritten to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes_unwritten, align 4
  %add15 = add i32 %26, %mul
  store i32 %add15, ptr %bytes_unwritten, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %for.inc.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %inc18 = add nuw nsw i32 %i.039, 1
  %27 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nsets, align 1
  %conv = zext i8 %28 to i32
  %cmp.not.not = icmp ult i32 %i.039, %conv
  br i1 %cmp.not.not, label %if.end16.for.body_crit_edge, label %for.end19

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/bset.c", i32 28, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bch_dump_bset._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bch_dump_bset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/bset.c", i32 34, i32 4}
!8 = !{ptr @bch_dump_bset._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bch_dump_bset._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/bcache/bset.c", i32 39, i32 4}
!12 = !{ptr @bch_dump_bset._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bch_dump_bset._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/bcache/bset.c", i32 75, i32 10}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/bcache/bset.c", i32 82, i32 11}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/bcache/bset.c", i32 89, i32 10}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/bcache/bset.c", i32 108, i32 8}
!22 = !{ptr @bch_bset_sort_state_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/bset.c", i32 1186, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/md/bcache/bset.c", i32 1145, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/bcache/bset.c", i32 119, i32 9}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/bset.c", i32 1232, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @btree_mergesort.__UNIQUE_ID_ddebug272, !31, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!35 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!"auto-init"}
!48 = !{i32 0, i32 33}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2154431691, i64 2154432180, i64 2154431728, i64 2154431784, i64 2154431818, i64 2154431842, i64 2154431883, i64 2154431904, i64 2154431932, i64 2154431966}
!51 = !{i64 2154433535, i64 2154434024, i64 2154433572, i64 2154433628, i64 2154433662, i64 2154433686, i64 2154433727, i64 2154433748, i64 2154433776, i64 2154433810}
!52 = !{i64 2154435170, i64 2154435659, i64 2154435207, i64 2154435263, i64 2154435297, i64 2154435321, i64 2154435362, i64 2154435383, i64 2154435411, i64 2154435445}
!53 = !{i64 2154437048, i64 2154437537, i64 2154437085, i64 2154437141, i64 2154437175, i64 2154437199, i64 2154437240, i64 2154437261, i64 2154437289, i64 2154437323}
!54 = !{i64 2154439607, i64 2154440096, i64 2154439644, i64 2154439700, i64 2154439734, i64 2154439758, i64 2154439799, i64 2154439820, i64 2154439848, i64 2154439882}
!55 = !{i64 2154447532, i64 2154448021, i64 2154447569, i64 2154447625, i64 2154447659, i64 2154447683, i64 2154447724, i64 2154447745, i64 2154447773, i64 2154447807}
!56 = !{i64 2154442272, i64 2154442761, i64 2154442309, i64 2154442365, i64 2154442399, i64 2154442423, i64 2154442464, i64 2154442485, i64 2154442513, i64 2154442547}
!57 = !{i64 2154443877, i64 2154444366, i64 2154443914, i64 2154443970, i64 2154444004, i64 2154444028, i64 2154444069, i64 2154444090, i64 2154444118, i64 2154444152}
!58 = !{i64 2154453333, i64 2154453822, i64 2154453370, i64 2154453426, i64 2154453460, i64 2154453484, i64 2154453525, i64 2154453546, i64 2154453574, i64 2154453608}
!59 = !{i64 2154455351, i64 2154455840, i64 2154455388, i64 2154455444, i64 2154455478, i64 2154455502, i64 2154455543, i64 2154455564, i64 2154455592, i64 2154455626}
!60 = !{i64 2154461423, i64 2154461912, i64 2154461460, i64 2154461516, i64 2154461550, i64 2154461574, i64 2154461615, i64 2154461636, i64 2154461664, i64 2154461698}
!61 = !{i64 2154463348, i64 2154463837, i64 2154463385, i64 2154463441, i64 2154463475, i64 2154463499, i64 2154463540, i64 2154463561, i64 2154463589, i64 2154463623}
!62 = !{!63}
!63 = distinct !{!63, !64, !"bset_search_tree: %agg.result"}
!64 = distinct !{!64, !"bset_search_tree"}
!65 = !{i64 1004796}
!66 = !{i64 2154466469, i64 2154466959, i64 2154466506, i64 2154466562, i64 2154466596, i64 2154466620, i64 2154466661, i64 2154466682, i64 2154466710, i64 2154466744}
!67 = !{!68}
!68 = distinct !{!68, !69, !"bset_search_write_set: %agg.result"}
!69 = distinct !{!69, !"bset_search_write_set"}
!70 = !{i64 2154468369, i64 2154468859, i64 2154468406, i64 2154468462, i64 2154468496, i64 2154468520, i64 2154468561, i64 2154468582, i64 2154468610, i64 2154468644}
!71 = !{i64 2154470279, i64 2154470769, i64 2154470316, i64 2154470372, i64 2154470406, i64 2154470430, i64 2154470471, i64 2154470492, i64 2154470520, i64 2154470554}
!72 = !{i64 2154475941, i64 2154476431, i64 2154475978, i64 2154476034, i64 2154476068, i64 2154476092, i64 2154476133, i64 2154476154, i64 2154476182, i64 2154476216}
!73 = !{i64 2154486870, i64 2154487360, i64 2154486907, i64 2154486963, i64 2154486997, i64 2154487021, i64 2154487062, i64 2154487083, i64 2154487111, i64 2154487145}
!74 = !{i64 2154484349, i64 2154484839, i64 2154484386, i64 2154484442, i64 2154484476, i64 2154484500, i64 2154484541, i64 2154484562, i64 2154484590, i64 2154484624}
!75 = !{ptr @bch_ptr_bad, ptr @bch_ptr_invalid}
!76 = !{i64 2148318921, i64 2148318926, i64 2148318939, i64 2148318983, i64 2148319017, i64 2148319038}
