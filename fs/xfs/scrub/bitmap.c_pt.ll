; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/bitmap.c_pt.bc'
source_filename = "../fs/xfs/scrub/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.xbitmap_range = type { %struct.list_head, i64, i64 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.93, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.93 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.94, %union.anon.95 }
%union.anon.94 = type { ptr }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.atomic_t = type { i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!list_empty(&sub->list)\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/bitmap.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [25 x i8] c"../fs/xfs/scrub/bitmap.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 114, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbitmap_set(ptr noundef %bitmap, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_alloc(i32 noundef 24, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  %start1 = getelementptr inbounds %struct.xbitmap_range, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %start1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %start, ptr %start1, align 8
  %len2 = getelementptr inbounds %struct.xbitmap_range, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %len, ptr %len2, align 8
  %prev.i9 = getelementptr inbounds %struct.list_head, ptr %bitmap, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i9, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %5, ptr noundef %bitmap) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %prev.i9, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bitmap, ptr %call, align 4
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xbitmap_destroy(ptr noundef readonly %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %cmp.not19 = icmp eq ptr %1, %bitmap
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %bmr.020 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %bmr.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %bmr.020, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bmr.020) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bmr.020, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %bmr.020 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmr.020, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %bmr.020 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %bmr.020, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bmr.020, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %bmr.020) #8
  %cmp.not = icmp eq ptr %n.0, %bitmap
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xbitmap_init(ptr noundef %bitmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %bitmap, ptr %bitmap, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bitmap, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bitmap, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbitmap_disunion(ptr noundef %bitmap, ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bitmap, align 4
  %cmp.i.not = icmp eq ptr %1, %bitmap
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sub, align 4
  %cmp.i168.not = icmp eq ptr %3, %sub
  br i1 %cmp.i168.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sub, align 4
  %cmp.i170.not = icmp eq ptr %5, %sub
  br i1 %cmp.i170.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !14

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 114) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  tail call void @list_sort(ptr noundef null, ptr noundef %bitmap, ptr noundef nonnull @xbitmap_range_cmp) #8
  tail call void @list_sort(ptr noundef null, ptr noundef %sub, ptr noundef nonnull @xbitmap_range_cmp) #8
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 4
  %cmp.not185 = icmp eq ptr %7, %bitmap
  br i1 %cmp.not185, label %cond.end.cleanup_crit_edge, label %while.cond19.preheader.preheader

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond19.preheader.preheader:                 ; preds = %cond.end
  %8 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sub, align 4
  br label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %while.cond.backedge.while.cond19.preheader_crit_edge, %while.cond19.preheader.preheader
  %lp.0187 = phi ptr [ %lp.0.be, %while.cond.backedge.while.cond19.preheader_crit_edge ], [ %7, %while.cond19.preheader.preheader ]
  %sub_br.0186 = phi ptr [ %sub_br.1, %while.cond.backedge.while.cond19.preheader_crit_edge ], [ %9, %while.cond19.preheader.preheader ]
  %start20 = getelementptr inbounds %struct.xbitmap_range, ptr %lp.0187, i32 0, i32 1
  %10 = ptrtoint ptr %start20 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start20, align 8
  br label %while.cond19

while.cond19:                                     ; preds = %while.body22.while.cond19_crit_edge, %while.cond19.preheader
  %sub_br.1 = phi ptr [ %17, %while.body22.while.cond19_crit_edge ], [ %sub_br.0186, %while.cond19.preheader ]
  %start = getelementptr inbounds %struct.xbitmap_range, ptr %sub_br.1, i32 0, i32 1
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.xbitmap_range, ptr %sub_br.1, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len, align 8
  %add = add i64 %15, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp21.not = icmp ugt i64 %add, %11
  br i1 %cmp21.not, label %while.end, label %while.body22

while.body22:                                     ; preds = %while.cond19
  %16 = ptrtoint ptr %sub_br.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sub_br.1, align 4
  %cmp.i172.not = icmp eq ptr %17, %sub
  br i1 %cmp.i172.not, label %while.body22.cleanup_crit_edge, label %while.body22.while.cond19_crit_edge

while.body22.while.cond19_crit_edge:              ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond19

while.body22.cleanup_crit_edge:                   ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end:                                        ; preds = %while.cond19
  %len36 = getelementptr inbounds %struct.xbitmap_range, ptr %lp.0187, i32 0, i32 2
  %18 = ptrtoint ptr %len36 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len36, align 8
  %add37 = add i64 %19, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add37)
  %cmp38.not = icmp ult i64 %13, %add37
  br i1 %cmp38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lp.0187, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %list_add.exit, %list_del.exit, %sw.bb75, %sw.bb, %if.then39
  %lp.0.be = phi ptr [ %21, %if.then39 ], [ %59, %list_add.exit ], [ %32, %list_del.exit ], [ %30, %sw.bb75 ], [ %lp.0187, %sw.bb ]
  %cmp.not = icmp eq ptr %lp.0.be, %bitmap
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.cond19.preheader_crit_edge

while.cond.backedge.while.cond19.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond19.preheader

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %while.end
  %22 = tail call i64 @llvm.usub.sat.i64(i64 %11, i64 %13)
  %sub_len.0 = sub i64 %15, %22
  %23 = tail call i64 @llvm.umax.i64(i64 %13, i64 %11)
  %24 = tail call i64 @llvm.umin.i64(i64 %sub_len.0, i64 %19)
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp60.not = icmp uge i64 %11, %13
  %state.0 = zext i1 %cmp60.not to i32
  %add63 = add i64 %24, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %add63, i64 %add37)
  %cmp67 = icmp eq i64 %add63, %add37
  %or69 = or i32 %state.0, 2
  %state.1 = select i1 %cmp67, i32 %or69, i32 %state.0
  %25 = zext i32 %state.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state.1, label %if.end41.unreachabledefault [
    i32 1, label %sw.bb
    i32 2, label %sw.bb75
    i32 3, label %sw.bb79
    i32 0, label %sw.bb82
  ]

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %add72 = add i64 %24, %11
  %26 = ptrtoint ptr %start20 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add72, ptr %start20, align 8
  %sub74 = sub i64 %19, %24
  %27 = ptrtoint ptr %len36 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub74, ptr %len36, align 8
  br label %while.cond.backedge

sw.bb75:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %sub77 = sub i64 %19, %24
  %28 = ptrtoint ptr %len36 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sub77, ptr %len36, align 8
  %29 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lp.0187, align 4
  br label %while.cond.backedge

sw.bb79:                                          ; preds = %if.end41
  %31 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lp.0187, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lp.0187) #8
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb79.list_del.exit_crit_edge

sw.bb79.list_del.exit_crit_edge:                  ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lp.0187, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lp.0187, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %sw.bb79.list_del.exit_crit_edge
  %39 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %lp.0187, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lp.0187, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %lp.0187) #8
  br label %while.cond.backedge

sw.bb82:                                          ; preds = %if.end41
  %call83 = tail call ptr @kmem_alloc(i32 noundef 24, i32 noundef 8) #8
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %sw.bb82.cleanup_crit_edge, label %if.end86

sw.bb82.cleanup_crit_edge:                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %sw.bb82
  %41 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call83, ptr %call83, align 4
  %prev.i174 = getelementptr inbounds %struct.list_head, ptr %call83, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call83, ptr %prev.i174, align 4
  %start89 = getelementptr inbounds %struct.xbitmap_range, ptr %call83, i32 0, i32 1
  %43 = ptrtoint ptr %start89 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %add63, ptr %start89, align 8
  %44 = ptrtoint ptr %start20 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start20, align 8
  %46 = ptrtoint ptr %len36 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %len36, align 8
  %add92 = sub i64 %45, %add63
  %sub94 = add i64 %add92, %47
  %len95 = getelementptr inbounds %struct.xbitmap_range, ptr %call83, i32 0, i32 2
  %48 = ptrtoint ptr %len95 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub94, ptr %len95, align 8
  %49 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lp.0187, align 4
  %call.i.i175 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call83, ptr noundef %lp.0187, ptr noundef %50) #8
  br i1 %call.i.i175, label %if.end.i.i176, label %if.end86.list_add.exit_crit_edge

if.end86.list_add.exit_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i176:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call83, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %call83, align 4
  %53 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %lp.0187, ptr %prev.i174, align 4
  %54 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call83, ptr %lp.0187, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i176, %if.end86.list_add.exit_crit_edge
  %55 = ptrtoint ptr %start20 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start20, align 8
  %sub99 = sub i64 %23, %56
  %57 = ptrtoint ptr %len36 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub99, ptr %len36, align 8
  %58 = ptrtoint ptr %lp.0187 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lp.0187, align 4
  br label %while.cond.backedge

if.end41.unreachabledefault:                      ; preds = %if.end41
  unreachable

cleanup:                                          ; preds = %sw.bb82.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %while.body22.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %while.body22.cleanup_crit_edge ], [ -12, %sw.bb82.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xbitmap_range_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.xbitmap_range, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start, align 8
  %start4 = getelementptr inbounds %struct.xbitmap_range, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ugt i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp7 = icmp ult i64 %1, %3
  %. = sext i1 %cmp7 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbitmap_set_btcur_path(ptr noundef %bitmap, ptr noundef %cur) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !15
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %1 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bc_nlevels, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp152.not = icmp eq i8 %2, 0
  br i1 %cmp152.not, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %prev.i9.i = getelementptr inbounds %struct.list_head, ptr %bitmap, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0153 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %ptr = getelementptr %struct.xfs_btree_cur, ptr %cur, i32 0, i32 11, i32 %i.0153, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp3 = icmp eq i16 %4, 1
  br i1 %cmp3, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %call = call ptr @xfs_btree_get_block(ptr noundef %cur, i32 noundef %i.0153, ptr noundef nonnull %bp) #8
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bc_mp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %6, i32 0, i32 24
  %9 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_maps.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %14 to i64
  %shr.i = ashr i64 %12, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 11
  %15 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i132, label %if.else178.i133, !prof !16

if.then172.i132:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %16
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %conv7136143 = zext i32 %div176.i to i64
  %sb_agblklog137144 = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 24
  %17 = ptrtoint ptr %sb_agblklog137144 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_agblklog137144, align 4
  %sh_prom138145 = zext i8 %18 to i64
  %shl139146 = shl i64 %conv7136143, %sh_prom138145
  %19 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %19
  br label %xfs_daddr_to_agbno.exit

if.else178.i133:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %shr.i) #11
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  %conv7136 = and i64 %asmresult1.i.i, 4294967295
  %sb_agblklog137 = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 24
  %21 = ptrtoint ptr %sb_agblklog137 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sb_agblklog137, align 4
  %sh_prom138 = zext i8 %22 to i64
  %shl139 = shl i64 %conv7136, %sh_prom138
  %asmresult.i266.i = extractvalue { i64, i64 } %20, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i133, %if.then172.i132
  %shl140 = phi i64 [ %shl139146, %if.then172.i132 ], [ %shl139, %if.else178.i133 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i132 ], [ %conv.i.i, %if.else178.i133 ]
  %call.i = call ptr @kmem_alloc(i32 noundef 24, i32 noundef 8) #8
  %tobool.not.i134 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i134, label %xfs_daddr_to_agbno.exit.cleanup_crit_edge, label %if.end.i

xfs_daddr_to_agbno.exit.cleanup_crit_edge:        ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %xfs_daddr_to_agbno.exit
  %conv13 = zext i32 %__rem.0.i to i64
  %or = or i64 %shl140, %conv13
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %prev.i.i, align 4
  %start1.i = getelementptr inbounds %struct.xbitmap_range, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %start1.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %start1.i, align 8
  %len2.i = getelementptr inbounds %struct.xbitmap_range, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %len2.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1, ptr %len2.i, align 8
  %27 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i9.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %28, ptr noundef %bitmap) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %prev.i9.i, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bitmap, ptr %call.i, align 4
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call.i, ptr %28, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0153, 1
  %33 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %xfs_daddr_to_agbno.exit.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %xfs_daddr_to_agbno.exit.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_get_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbitmap_set_btblocks(ptr noundef %bitmap, ptr noundef %cur) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_btree_visit_blocks(ptr noundef %cur, ptr noundef nonnull @xbitmap_collect_btblock, i32 noundef 3, ptr noundef %bitmap) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_visit_blocks(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xbitmap_collect_btblock(ptr noundef %cur, i32 noundef %level, ptr noundef %priv) #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !15
  %call = call ptr @xfs_btree_get_block(ptr noundef %cur, i32 noundef %level, ptr noundef nonnull %bp) #8
  %1 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bc_mp, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %2, i32 0, i32 24
  %5 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_maps.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 28
  %9 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %10 to i64
  %shr.i = ashr i64 %8, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i117, label %if.else178.i118, !prof !16

if.then172.i117:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %12
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %conv121128 = zext i32 %div176.i to i64
  %sb_agblklog122129 = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 24
  %13 = ptrtoint ptr %sb_agblklog122129 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sb_agblklog122129, align 4
  %sh_prom123130 = zext i8 %14 to i64
  %shl124131 = shl i64 %conv121128, %sh_prom123130
  %15 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %15
  br label %xfs_daddr_to_agbno.exit

if.else178.i118:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %shr.i) #11
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %conv121 = and i64 %asmresult1.i.i, 4294967295
  %sb_agblklog122 = getelementptr inbounds %struct.xfs_sb, ptr %4, i32 0, i32 24
  %17 = ptrtoint ptr %sb_agblklog122 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sb_agblklog122, align 4
  %sh_prom123 = zext i8 %18 to i64
  %shl124 = shl i64 %conv121, %sh_prom123
  %asmresult.i266.i = extractvalue { i64, i64 } %16, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i118, %if.then172.i117
  %shl125 = phi i64 [ %shl124131, %if.then172.i117 ], [ %shl124, %if.else178.i118 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i117 ], [ %conv.i.i, %if.else178.i118 ]
  %call.i = call ptr @kmem_alloc(i32 noundef 24, i32 noundef 8) #8
  %tobool.not.i119 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i119, label %xfs_daddr_to_agbno.exit.cleanup_crit_edge, label %if.end.i

xfs_daddr_to_agbno.exit.cleanup_crit_edge:        ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %xfs_daddr_to_agbno.exit
  %conv8 = zext i32 %__rem.0.i to i64
  %or = or i64 %shl125, %conv8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %prev.i.i, align 4
  %start1.i = getelementptr inbounds %struct.xbitmap_range, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %start1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or, ptr %start1.i, align 8
  %len2.i = getelementptr inbounds %struct.xbitmap_range, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %len2.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %len2.i, align 8
  %prev.i9.i = getelementptr inbounds %struct.list_head, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i9.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %24, ptr noundef %priv) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %prev.i9.i, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv, ptr %call.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call.i, ptr %24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.end.i.cleanup_crit_edge, %xfs_daddr_to_agbno.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %xfs_daddr_to_agbno.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xbitmap_hweight(ptr noundef readonly %bitmap) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %bmr.018 = load ptr, ptr %bitmap, align 4
  %cmp.not19 = icmp eq ptr %bmr.018, %bitmap
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bmr.021 = phi ptr [ %bmr.0, %for.body.for.body_crit_edge ], [ %bmr.018, %entry.for.body_crit_edge ]
  %ret.020 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.xbitmap_range, ptr %bmr.021, i32 0, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %len, align 8
  %add = add i64 %2, %ret.020
  %3 = ptrtoint ptr %bmr.021 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bmr.0 = load ptr, ptr %bmr.021, align 4
  %cmp.not = icmp eq ptr %bmr.0, %bitmap
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i64 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/bitmap.c", i32 114, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/scrub/bitmap.c", i32 198, i32 4}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
