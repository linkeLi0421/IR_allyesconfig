; ModuleID = '/llk/IR_all_yes/fs/f2fs/shrinker.c_pt.bc'
source_filename = "../fs/f2fs/shrinker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.xarray, %struct.xarray, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, [3 x i32], i32, %struct.xarray, %struct.list_head, [2 x i32], %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@f2fs_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@f2fs_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @f2fs_list, ptr @f2fs_list }, [24 x i8] zeroinitializer }, align 32
@shrinker_run_no = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f2fs_list_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"f2fs_list_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"f2fs_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 15, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"shrinker_run_no\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 17, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [22 x i8] c"../fs/f2fs/shrinker.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 16, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @f2fs_list_lock, ptr @f2fs_list, ptr @shrinker_run_no, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinker_run_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %0 = load ptr, ptr @f2fs_list, align 4
  %cmp.not2023 = icmp eq ptr %0, @f2fs_list
  br i1 %cmp.not2023, label %entry.while.end_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %p.0.ph25 = phi ptr [ %15, %if.end.while.body.lr.ph_crit_edge ], [ %0, %entry.while.body.lr.ph_crit_edge ]
  %count.0.ph24 = phi i32 [ %add5, %if.end.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %while.body.lr.ph
  %p.021 = phi ptr [ %p.0.ph25, %while.body.lr.ph ], [ %2, %if.then.while.body_crit_edge ]
  %umount_mutex = getelementptr i8, ptr %p.021, i32 8
  %call = tail call i32 @mutex_trylock(ptr noundef %umount_mutex) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = ptrtoint ptr %p.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.021, align 4
  %cmp.not = icmp eq ptr %2, @f2fs_list
  br i1 %cmp.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  %total_zombie_tree.i = getelementptr i8, ptr %p.021, i32 -1896
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_zombie_tree.i, i32 noundef 4) #3
  %3 = ptrtoint ptr %total_zombie_tree.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %total_zombie_tree.i, align 4
  %total_ext_node.i = getelementptr i8, ptr %p.021, i32 -1892
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_node.i, i32 noundef 4) #3
  %5 = ptrtoint ptr %total_ext_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %total_ext_node.i, align 4
  %nm_info.i.i = getelementptr i8, ptr %p.021, i32 -3800
  %7 = ptrtoint ptr %nm_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nm_info.i.i, align 8
  %arrayidx.i = getelementptr %struct.f2fs_nm_info, ptr %8, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %nid_cnt.i = getelementptr inbounds %struct.f2fs_nm_info, ptr %8, i32 0, i32 16
  %11 = ptrtoint ptr %nid_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nid_cnt.i, align 4
  %sub.i = add i32 %12, -3640
  %13 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #3
  %add.i = add i32 %4, %count.0.ph24
  %add = add i32 %add.i, %6
  %add3 = add i32 %add, %10
  %add5 = add i32 %add3, %13
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %14 = ptrtoint ptr %p.021 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.021, align 4
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #3
  %cmp.not20 = icmp eq ptr %15, @f2fs_list
  br i1 %cmp.not20, label %if.end.while.end_crit_edge, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.ph.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %count.0.ph24, %if.then.while.end_crit_edge ], [ %add5, %if.end.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  ret i32 %count.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %shrinker_run_no.promoted = load i32, ptr @shrinker_run_no, align 4
  %phi.bo = add i32 %shrinker_run_no.promoted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp.peel = icmp eq i32 %phi.bo, 0
  %inc52.lcssa = select i1 %cmp.peel, i32 1, i32 %phi.bo
  store i32 %inc52.lcssa, ptr @shrinker_run_no, align 4
  %2 = load ptr, ptr @f2fs_list, align 4
  %shr = lshr i32 %1, 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %list_move_tail.exit.while.cond.outer_crit_edge, %entry
  %p.0.ph = phi ptr [ %9, %list_move_tail.exit.while.cond.outer_crit_edge ], [ %2, %entry ]
  %freed.0.ph = phi i32 [ %freed.2, %list_move_tail.exit.while.cond.outer_crit_edge ], [ 0, %entry ]
  %cmp1.not55 = icmp eq ptr %p.0.ph, @f2fs_list
  br i1 %cmp1.not55, label %while.cond.outer.while.end_crit_edge, label %while.cond.outer.while.body_crit_edge

while.cond.outer.while.body_crit_edge:            ; preds = %while.cond.outer
  br label %while.body

while.cond.outer.while.end_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %if.then3.while.body_crit_edge, %while.cond.outer.while.body_crit_edge
  %p.056 = phi ptr [ %6, %if.then3.while.body_crit_edge ], [ %p.0.ph, %while.cond.outer.while.body_crit_edge ]
  %shrinker_run_no = getelementptr i8, ptr %p.056, i32 100
  %3 = ptrtoint ptr %shrinker_run_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shrinker_run_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %inc52.lcssa)
  %cmp2 = icmp eq i32 %4, %inc52.lcssa
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end:                                           ; preds = %while.body
  %umount_mutex = getelementptr i8, ptr %p.056, i32 8
  %call = tail call i32 @mutex_trylock(ptr noundef %umount_mutex) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %p.056 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.056, align 4
  %cmp1.not = icmp eq ptr %6, @f2fs_list
  br i1 %cmp1.not, label %if.then3.while.end_crit_edge, label %if.then3.while.body_crit_edge

if.then3.while.body_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end4:                                          ; preds = %if.end
  %shrinker_run_no.le = getelementptr i8, ptr %p.056, i32 100
  %add.ptr.le = getelementptr i8, ptr %p.056, i32 -4016
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  %7 = ptrtoint ptr %shrinker_run_no.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc52.lcssa, ptr %shrinker_run_no.le, align 4
  %call6 = tail call i32 @f2fs_shrink_extent_tree(ptr noundef %add.ptr.le, i32 noundef %shr) #3
  %add = add i32 %call6, %freed.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp7 = icmp ugt i32 %1, %add
  br i1 %cmp7, label %if.then8, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %1, %add
  %call9 = tail call i32 @f2fs_try_to_free_nats(ptr noundef %add.ptr.le, i32 noundef %sub) #3
  %add10 = add i32 %call9, %add
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %freed.1 = phi i32 [ %add10, %if.then8 ], [ %add, %if.end4.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %freed.1)
  %cmp12 = icmp ugt i32 %1, %freed.1
  br i1 %cmp12, label %if.then13, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %sub14 = sub i32 %1, %freed.1
  %call15 = tail call i32 @f2fs_try_to_free_nids(ptr noundef %add.ptr.le, i32 noundef %sub14) #3
  %add16 = add i32 %call15, %freed.1
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  %freed.2 = phi i32 [ %add16, %if.then13 ], [ %freed.1, %if.end11.if.end17_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %8 = ptrtoint ptr %p.056 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.056, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.056) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.__list_del_entry.exit.i_crit_edge

if.end17.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.056, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %p.056 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end17.__list_del_entry.exit.i_crit_edge
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p.056, ptr noundef %16, ptr noundef nonnull @f2fs_list) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %p.056, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_list, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %p.056 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @f2fs_list, ptr %p.056, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.056, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %p.056, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #3
  %cmp20.not = icmp ult i32 %freed.2, %1
  br i1 %cmp20.not, label %list_move_tail.exit.while.cond.outer_crit_edge, label %list_move_tail.exit.while.end_crit_edge

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

list_move_tail.exit.while.cond.outer_crit_edge:   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.outer

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %if.then3.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.outer.while.end_crit_edge
  %freed.3 = phi i32 [ %freed.0.ph, %while.body.while.end_crit_edge ], [ %freed.0.ph, %if.then3.while.end_crit_edge ], [ %freed.0.ph, %while.cond.outer.while.end_crit_edge ], [ %freed.2, %list_move_tail.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  ret i32 %freed.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_shrink_extent_tree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_try_to_free_nats(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_try_to_free_nids(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_join_shrinker(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %s_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 119
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %s_list, ptr noundef %0, ptr noundef nonnull @f2fs_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %s_list, ptr getelementptr inbounds (%struct.list_head, ptr @f2fs_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %s_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @f2fs_list, ptr %s_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 119, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %s_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_leave_shrinker(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %total_zombie_tree.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_zombie_tree.i, i32 noundef 4) #3
  %0 = ptrtoint ptr %total_zombie_tree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %total_zombie_tree.i, align 4
  %total_ext_node.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 43
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_ext_node.i, i32 noundef 4) #3
  %2 = ptrtoint ptr %total_ext_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %total_ext_node.i, align 4
  %add.i = add i32 %3, %1
  %call1 = tail call i32 @f2fs_shrink_extent_tree(ptr noundef %sbi, i32 noundef %add.i) #3
  tail call void @_raw_spin_lock(ptr noundef nonnull @f2fs_list_lock) #3
  %s_list = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 119
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 119, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %s_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %s_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %s_list, ptr %s_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 119, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %s_list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @f2fs_list_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @shrinker_run_no, !1, !"shrinker_run_no", i1 false, i1 false}
!1 = !{!"../fs/f2fs/shrinker.c", i32 17, i32 21}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/shrinker.c", i32 16, i32 8}
!4 = !{ptr @f2fs_list_lock, !3, !"f2fs_list_lock", i1 false, i1 false}
!5 = !{ptr @f2fs_list, !6, !"f2fs_list", i1 false, i1 false}
!6 = !{!"../fs/f2fs/shrinker.c", i32 15, i32 8}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
