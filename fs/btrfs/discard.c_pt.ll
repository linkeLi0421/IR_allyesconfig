; ModuleID = '/llk/IR_all_yes/fs/btrfs/discard.c_pt.bc'
source_filename = "../fs/btrfs/discard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.btrfs_free_space_ctl = type { %struct.spinlock, %struct.rb_root, %struct.rb_root_cached, i64, i32, i32, i32, i32, i64, [2 x i32], [2 x i64], ptr, ptr, %struct.mutex, %struct.list_head }

@discard_minlen = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1048576, i32 32768], [20 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/discard.c\00", [45 x i8] zeroinitializer }, align 32
@btrfs_discard_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&discard_ctl->lock\00", [45 x i8] zeroinitializer }, align 32
@btrfs_discard_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&discard_ctl->work)->work)\00", [49 x i8] zeroinitializer }, align 32
@btrfs_discard_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&discard_ctl->work)->timer\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"discard_minlen\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 65, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 604, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 699, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [22 x i8] c"../fs/btrfs/discard.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 700, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @discard_minlen, ptr @.str, ptr @btrfs_discard_init.__key, ptr @.str.1, ptr @btrfs_discard_init.__key.2, ptr @.str.3, ptr @btrfs_discard_init.__key.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discard_minlen to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_discard_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_discard_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_discard_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_check_filter(ptr noundef %block_group, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_opt, align 8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %discard_ctl3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134
  %discard_index = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 32
  %4 = ptrtoint ptr %discard_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %discard_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sub = add nsw i32 %5, -1
  %arrayidx = getelementptr [3 x i32], ptr @discard_minlen, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %bytes)
  %cmp5.not = icmp ugt i64 %conv, %bytes
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %block_group1.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134, i32 3
  %8 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block_group1.i, align 4
  %cmp.i = icmp eq ptr %9, %block_group
  br i1 %cmp.i, label %if.then.i, label %if.then7.if.end.i_crit_edge

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %block_group1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  %discard_eligible_time.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 33
  %11 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %discard_eligible_time.i, align 8
  %discard_list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.remove_from_discard_list.exit_crit_edge

if.end.i.remove_from_discard_list.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_from_discard_list.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %discard_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %remove_from_discard_list.exit

remove_from_discard_list.exit:                    ; preds = %if.end.i.i.i, %if.end.i.remove_from_discard_list.exit_crit_edge
  %18 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %discard_list.i, ptr %discard_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %discard_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %bytes)
  %cmp12.not = icmp ult i64 %bytes, 1048576
  br i1 %cmp12.not, label %for.inc, label %remove_from_discard_list.exit.if.then14_crit_edge

remove_from_discard_list.exit.if.then14_crit_edge: ; preds = %remove_from_discard_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %for.inc.if.then14_crit_edge, %remove_from_discard_list.exit.if.then14_crit_edge
  %i.033.lcssa = phi i32 [ 1, %remove_from_discard_list.exit.if.then14_crit_edge ], [ 2, %for.inc.if.then14_crit_edge ]
  %20 = ptrtoint ptr %discard_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.033.lcssa, ptr %discard_index, align 4
  %flags.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags.i.i, align 8
  %23 = and i64 %22, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %23)
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %if.end.i31, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i31:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  tail call fastcc void @__add_to_discard_list(ptr noundef %discard_ctl3, ptr noundef nonnull %block_group) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %cleanup

for.inc:                                          ; preds = %remove_from_discard_list.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %bytes)
  %cmp12.not.1 = icmp ult i64 %bytes, 32768
  br i1 %cmp12.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.if.then14_crit_edge

for.inc.if.then14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.i31, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_cancel_work(ptr noundef %discard_ctl, ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %block_group1.i = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 3
  %0 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1.i, align 4
  %cmp.i = icmp eq ptr %1, %block_group
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %block_group1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %discard_eligible_time.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 33
  %3 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %discard_eligible_time.i, align 8
  %discard_list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.remove_from_discard_list.exit_crit_edge

if.end.i.remove_from_discard_list.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_from_discard_list.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %discard_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %remove_from_discard_list.exit

remove_from_discard_list.exit:                    ; preds = %if.end.i.i.i, %if.end.i.remove_from_discard_list.exit_crit_edge
  %10 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %discard_list.i, ptr %discard_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %discard_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br i1 %cmp.i, label %if.then, label %remove_from_discard_list.exit.if.end_crit_edge

remove_from_discard_list.exit.if.end_crit_edge:   ; preds = %remove_from_discard_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %remove_from_discard_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %call.i.i = tail call i64 @ktime_get() #6
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  tail call fastcc void @__btrfs_discard_schedule_work(ptr noundef %discard_ctl, i64 noundef %call.i.i, i1 noundef zeroext true) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %remove_from_discard_list.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_schedule_work(ptr noundef %discard_ctl, i1 noundef zeroext %override) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #6
  %lock = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call fastcc void @__btrfs_discard_schedule_work(ptr noundef %discard_ctl, i64 noundef %call.i, i1 noundef zeroext %override)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %lor.lhs.false

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_opt, align 8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end7_crit_edge, label %if.end

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end:                                           ; preds = %lor.lhs.false
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 7
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %used, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @add_to_discard_unused_list(ptr noundef %discard_ctl, ptr noundef nonnull %block_group)
  br label %if.end3

if.else:                                          ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags.i.i, align 8
  %8 = and i64 %7, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %8)
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %if.end.i, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  tail call fastcc void @__add_to_discard_list(ptr noundef %discard_ctl, ptr noundef nonnull %block_group) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.else.if.end3_crit_edge, %if.then2
  %work = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 1
  %10 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i64 @ktime_get() #6
  %lock.i15 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i15) #6
  tail call fastcc void @__btrfs_discard_schedule_work(ptr noundef %discard_ctl, i64 noundef %call.i.i, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i15) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_to_discard_unused_list(ptr noundef %discard_ctl, ptr noundef %block_group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %sb.i = getelementptr i8, ptr %discard_ctl, i32 -2528
  %0 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb.i, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %btrfs_run_discard_work.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

btrfs_run_discard_work.exit:                      ; preds = %entry
  %flags.i = getelementptr i8, ptr %discard_ctl, i32 -3776
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %btrfs_run_discard_work.exit.return_crit_edge, label %if.end

btrfs_run_discard_work.exit.return_crit_edge:     ; preds = %btrfs_run_discard_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %btrfs_run_discard_work.exit
  %discard_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %discard_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %discard_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %discard_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %discard_list, ptr %discard_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %discard_list, ptr %prev.i3.i, align 4
  %discard_index = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 32
  %15 = ptrtoint ptr %discard_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %discard_index, align 4
  %call.i = tail call i64 @ktime_get() #6
  %add = add i64 %call.i, 10000000000
  %discard_eligible_time = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 33
  %16 = ptrtoint ptr %discard_eligible_time to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add, ptr %discard_eligible_time, align 8
  %discard_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 35
  %17 = ptrtoint ptr %discard_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %discard_state, align 8
  %discard_list4 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %discard_list, ptr noundef %19, ptr noundef %discard_list4) #6
  br i1 %call.i.i14, label %if.end.i.i15, label %list_del_init.exit.return_crit_edge

list_del_init.exit.return_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i.i15:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %discard_list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %discard_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %discard_list4, ptr %discard_list, align 4
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %discard_list, ptr %19, align 4
  br label %return

return:                                           ; preds = %if.end.i.i15, %list_del_init.exit.return_crit_edge, %btrfs_run_discard_work.exit.return_crit_edge, %entry.return_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_discard_schedule_work(ptr noundef %discard_ctl, i64 noundef %now, i1 noundef zeroext %override) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb.i = getelementptr i8, ptr %discard_ctl, i32 -2528
  %0 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb.i, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %btrfs_run_discard_work.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

btrfs_run_discard_work.exit:                      ; preds = %entry
  %flags.i = getelementptr i8, ptr %discard_ctl, i32 -3776
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %btrfs_run_discard_work.exit.cleanup_crit_edge, label %if.end

btrfs_run_discard_work.exit.cleanup_crit_edge:    ; preds = %btrfs_run_discard_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %btrfs_run_discard_work.exit
  br i1 %override, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %work = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 1
  %7 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %arrayidx.i = getelementptr %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.end5.for.inc.i_crit_edge, label %if.then.i

if.end5.for.inc.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %10, i32 -324
  %discard_eligible_time.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %discard_eligible_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %now)
  %cmp4.i = icmp ult i64 %12, %now
  br i1 %cmp4.i, label %if.then.i.find_next_block_group.exit_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i.find_next_block_group.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %if.end5.for.inc.i_crit_edge
  %ret_block_group.3.ph.i = phi ptr [ null, %if.end5.for.inc.i_crit_edge ], [ %add.ptr.i, %if.then.i.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %14, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %add.ptr.1.i = getelementptr i8, ptr %14, i32 -324
  %tobool2.not.1.i = icmp eq ptr %ret_block_group.3.ph.i, null
  %spec.select.1.i = select i1 %tobool2.not.1.i, ptr %add.ptr.1.i, ptr %ret_block_group.3.ph.i
  %discard_eligible_time.1.i = getelementptr inbounds %struct.btrfs_block_group, ptr %spec.select.1.i, i32 0, i32 33
  %15 = ptrtoint ptr %discard_eligible_time.1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %discard_eligible_time.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %now)
  %cmp4.1.i = icmp ult i64 %16, %now
  br i1 %cmp4.1.i, label %if.then.1.i.find_next_block_group.exit_crit_edge, label %if.end6.1.i

if.then.1.i.find_next_block_group.exit_crit_edge: ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit

if.end6.1.i:                                      ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %discard_eligible_time8.1.i = getelementptr i8, ptr %14, i32 12
  %17 = ptrtoint ptr %discard_eligible_time8.1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %discard_eligible_time8.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp9.1.i = icmp ugt i64 %16, %18
  %spec.select24.1.i = select i1 %cmp9.1.i, ptr %add.ptr.1.i, ptr %spec.select.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end6.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %ret_block_group.3.ph.1.i = phi ptr [ %spec.select24.1.i, %if.end6.1.i ], [ %ret_block_group.3.ph.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %20, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %for.inc.1.i.find_next_block_group.exit_crit_edge, label %if.then.2.i

for.inc.1.i.find_next_block_group.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  %add.ptr.2.i = getelementptr i8, ptr %20, i32 -324
  %tobool2.not.2.i = icmp eq ptr %ret_block_group.3.ph.1.i, null
  %spec.select.2.i = select i1 %tobool2.not.2.i, ptr %add.ptr.2.i, ptr %ret_block_group.3.ph.1.i
  %discard_eligible_time.2.i = getelementptr inbounds %struct.btrfs_block_group, ptr %spec.select.2.i, i32 0, i32 33
  %21 = ptrtoint ptr %discard_eligible_time.2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %discard_eligible_time.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %now)
  %cmp4.2.i = icmp ult i64 %22, %now
  br i1 %cmp4.2.i, label %if.then.2.i.find_next_block_group.exit_crit_edge, label %if.end6.2.i

if.then.2.i.find_next_block_group.exit_crit_edge: ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit

if.end6.2.i:                                      ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %discard_eligible_time8.2.i = getelementptr i8, ptr %20, i32 12
  %23 = ptrtoint ptr %discard_eligible_time8.2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %discard_eligible_time8.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp9.2.i = icmp ugt i64 %22, %24
  %spec.select24.2.i = select i1 %cmp9.2.i, ptr %add.ptr.2.i, ptr %spec.select.2.i
  br label %find_next_block_group.exit

find_next_block_group.exit:                       ; preds = %if.end6.2.i, %if.then.2.i.find_next_block_group.exit_crit_edge, %for.inc.1.i.find_next_block_group.exit_crit_edge, %if.then.1.i.find_next_block_group.exit_crit_edge, %if.then.i.find_next_block_group.exit_crit_edge
  %ret_block_group.4.i = phi ptr [ %add.ptr.i, %if.then.i.find_next_block_group.exit_crit_edge ], [ %spec.select.1.i, %if.then.1.i.find_next_block_group.exit_crit_edge ], [ %spec.select.2.i, %if.then.2.i.find_next_block_group.exit_crit_edge ], [ %spec.select24.2.i, %if.end6.2.i ], [ %ret_block_group.3.ph.1.i, %for.inc.1.i.find_next_block_group.exit_crit_edge ]
  %tobool7.not = icmp eq ptr %ret_block_group.4.i, null
  br i1 %tobool7.not, label %find_next_block_group.exit.cleanup_crit_edge, label %if.then8

find_next_block_group.exit.cleanup_crit_edge:     ; preds = %find_next_block_group.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %find_next_block_group.exit
  %delay_ms = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 10
  %25 = ptrtoint ptr %delay_ms to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %delay_ms, align 8
  %mul = mul i64 %26, 1000000
  %kbps_limit9 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 12
  %27 = ptrtoint ptr %kbps_limit9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %kbps_limit9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not = icmp eq i32 %28, 0
  br i1 %tobool10.not, label %if.then8.if.end20_crit_edge, label %land.lhs.true11

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true11:                                  ; preds = %if.then8
  %prev_discard = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 5
  %29 = ptrtoint ptr %prev_discard to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %prev_discard, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool12.not = icmp eq i64 %30, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end20_crit_edge, label %if.then13

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %28 to i64
  %mul14 = shl nuw nsw i64 %conv, 10
  %mul16 = mul i64 %30, 1000000000
  %call17 = tail call i64 @div64_u64(i64 noundef %mul16, i64 noundef %mul14) #6
  %31 = tail call i64 @llvm.umax.i64(i64 %mul, i64 %call17)
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true11.if.end20_crit_edge, %if.then8.if.end20_crit_edge
  %delay.0 = phi i64 [ %31, %if.then13 ], [ %mul, %land.lhs.true11.if.end20_crit_edge ], [ %mul, %if.then8.if.end20_crit_edge ]
  %discard_eligible_time = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i, i32 0, i32 33
  %32 = ptrtoint ptr %discard_eligible_time to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %discard_eligible_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %now)
  %cmp21 = icmp ugt i64 %33, %now
  %sub = sub i64 %33, %now
  %34 = tail call i64 @llvm.umax.i64(i64 %delay.0, i64 %sub)
  %delay.1 = select i1 %cmp21, i64 %34, i64 %delay.0
  br i1 %override, label %land.lhs.true35, label %if.end20.if.end45_crit_edge

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true35:                                  ; preds = %if.end20
  %prev_discard36 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 5
  %35 = ptrtoint ptr %prev_discard36 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %prev_discard36, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool37.not = icmp eq i64 %36, 0
  br i1 %tobool37.not, label %land.lhs.true35.if.end45_crit_edge, label %if.then38

land.lhs.true35.if.end45_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %prev_discard_time = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 6
  %37 = ptrtoint ptr %prev_discard_time to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %prev_discard_time, align 8
  %sub39 = sub i64 %now, %38
  %39 = tail call i64 @llvm.usub.sat.i64(i64 %delay.1, i64 %sub39)
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %land.lhs.true35.if.end45_crit_edge, %if.end20.if.end45_crit_edge
  %delay.3 = phi i64 [ %39, %if.then38 ], [ %delay.1, %land.lhs.true35.if.end45_crit_edge ], [ %delay.1, %if.end20.if.end45_crit_edge ]
  %40 = ptrtoint ptr %discard_ctl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %discard_ctl, align 8
  %work46 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 1
  %call47 = tail call i32 @nsecs_to_jiffies(i64 noundef %delay.3) #6
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work46, i32 noundef %call47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %find_next_block_group.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %btrfs_run_discard_work.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @btrfs_run_discard_work(ptr noundef %discard_ctl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb = getelementptr i8, ptr %discard_ctl, i32 -2528
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr i8, ptr %discard_ctl, i32 -3776
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_calc_delay(ptr noundef %discard_ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %discardable_extents1 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %discardable_extents1, i32 noundef 4) #6
  %0 = ptrtoint ptr %discardable_extents1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %discardable_extents1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %1
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_extents1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %discardable_extents1, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %discardable_extents1, ptr %discardable_extents1, i32 %sub, ptr elementtype(i32) %discardable_extents1) #6, !srcloc !21
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %discardable_bytes5 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 8
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %discardable_bytes5, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %discardable_bytes5) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp7 = icmp slt i64 %call.i, 0
  br i1 %cmp7, label %if.then8, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = sub i64 0, %call.i
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_bytes5, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef %sub9, ptr noundef %discardable_bytes5) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp12 = icmp slt i32 %1, 1
  br i1 %cmp12, label %if.end11.cleanup.sink.split_crit_edge, label %do.end

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end11
  %iops_limit16 = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 11
  %3 = ptrtoint ptr %iops_limit16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %iops_limit16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 1000, %4
  br label %if.end20

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %div19 = udiv i32 21600000, %1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %delay.0 = phi i32 [ %div, %if.then18 ], [ %div19, %if.else ]
  %5 = tail call i32 @llvm.umax.i32(i32 %delay.0, i32 1)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 1000)
  %conv = zext i32 %6 to i64
  %delay_ms = getelementptr inbounds %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 10
  %7 = ptrtoint ptr %delay_ms to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %delay_ms, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %if.end11.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_update_discardable(ptr noundef readonly %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_opt, align 8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags.i, align 8
  %6 = and i64 %5, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %6)
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %8 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_space_ctl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end.if.end23_crit_edge, label %land.rhs

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.rhs:                                         ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end23_crit_edge, !prof !22

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 604, i32 noundef 9, ptr noundef null) #6
  br label %if.end23

if.end23:                                         ; preds = %do.end, %land.rhs.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %discardable_extents, align 8
  %arrayidx33 = getelementptr %struct.btrfs_free_space_ctl, ptr %9, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %tobool34.not = icmp eq i32 %12, %14
  br i1 %tobool34.not, label %if.end23.if.end41_crit_edge, label %if.then35

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %12, %14
  %discardable_extents36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_extents36, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %discardable_extents36, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %discardable_extents36, ptr %discardable_extents36, i32 %sub, ptr elementtype(i32) %discardable_extents36) #6, !srcloc !21
  %16 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %discardable_extents, align 8
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx33, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end23.if.end41_crit_edge
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %9, i32 0, i32 10
  %19 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %discardable_bytes, align 8
  %arrayidx44 = getelementptr %struct.btrfs_free_space_ctl, ptr %9, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %tobool46.not = icmp eq i64 %20, %22
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.then47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %sub45 = sub i64 %20, %22
  %discardable_bytes48 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134, i32 8
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_bytes48, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef %sub45, ptr noundef %discardable_bytes48) #6
  %23 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %discardable_bytes, align 8
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx44, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end41.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_punt_unused_bgs_list(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #6
  %unused_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 163
  %0 = ptrtoint ptr %unused_bgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unused_bgs, align 8
  %cmp.not25 = icmp eq ptr %1, %unused_bgs
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in26 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del_init.exit.for.body_crit_edge ]
  %block_group.0 = getelementptr i8, ptr %.pn.in26, i32 -304
  %2 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in26, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in26, ptr %.pn.in26, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in26, ptr %prev.i3.i, align 4
  tail call void @btrfs_put_block_group(ptr noundef %block_group.0) #6
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %block_group.0)
  %cmp.not = icmp eq ptr %.pn, %unused_bgs
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_resume(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @btrfs_discard_cleanup(ptr noundef %fs_info)
  br label %return

if.end:                                           ; preds = %entry
  %unused_bgs_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock.i) #6
  %unused_bgs.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 163
  %2 = ptrtoint ptr %unused_bgs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unused_bgs.i, align 8
  %cmp.not25.i = icmp eq ptr %3, %unused_bgs.i
  br i1 %cmp.not25.i, label %if.end.btrfs_discard_punt_unused_bgs_list.exit_crit_edge, label %for.body.lr.ph.i

if.end.btrfs_discard_punt_unused_bgs_list.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_discard_punt_unused_bgs_list.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %discard_ctl.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134
  br label %for.body.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in26.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ]
  %block_group.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -304
  %4 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn.in26.i, ptr %.pn.in26.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.in26.i, ptr %prev.i3.i.i, align 4
  tail call void @btrfs_put_block_group(ptr noundef %block_group.0.i) #6
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl.i, ptr noundef %block_group.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %unused_bgs.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.btrfs_discard_punt_unused_bgs_list.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del_init.exit.i.btrfs_discard_punt_unused_bgs_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_discard_punt_unused_bgs_list.exit

btrfs_discard_punt_unused_bgs_list.exit:          ; preds = %list_del_init.exit.i.btrfs_discard_punt_unused_bgs_list.exit_crit_edge, %if.end.btrfs_discard_punt_unused_bgs_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock.i) #6
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags) #6
  br label %return

return:                                           ; preds = %btrfs_discard_punt_unused_bgs_list.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_cleanup(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags.i) #6
  %work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %arrayidx.i = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %cmp11.not41.i = icmp eq ptr %1, %arrayidx.i
  br i1 %cmp11.not41.i, label %entry.for.inc22.i_crit_edge, label %entry.for.body12.i_crit_edge

entry.for.body12.i_crit_edge:                     ; preds = %entry
  br label %for.body12.i

entry.for.inc22.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

for.body12.i:                                     ; preds = %if.end.i.for.body12.i_crit_edge, %entry.for.body12.i_crit_edge
  %.pn.in42.i = phi ptr [ %.pn45.i, %if.end.i.for.body12.i_crit_edge ], [ %1, %entry.for.body12.i_crit_edge ]
  %block_group.044.i = getelementptr i8, ptr %.pn.in42.i, i32 -324
  %2 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn45.i = load ptr, ptr %.pn.in42.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body12.i.list_del_init.exit.i_crit_edge

for.body12.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in42.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body12.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in42.i, ptr %.pn.in42.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in42.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %used.i = getelementptr i8, ptr %.pn.in42.i, i32 -236
  %11 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp15.i = icmp eq i64 %12, 0
  br i1 %cmp15.i, label %if.then.i, label %list_del_init.exit.i.if.end.i_crit_edge

list_del_init.exit.i.if.end.i_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @btrfs_mark_bg_unused(ptr noundef %block_group.044.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del_init.exit.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %cmp11.not.i = icmp eq ptr %.pn45.i, %arrayidx.i
  br i1 %cmp11.not.i, label %if.end.i.for.inc22.i_crit_edge, label %if.end.i.for.body12.i_crit_edge

if.end.i.for.body12.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

if.end.i.for.inc22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %if.end.i.for.inc22.i_crit_edge, %entry.for.inc22.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 8
  %cmp11.not41.1.i = icmp eq ptr %14, %arrayidx.1.i
  br i1 %cmp11.not41.1.i, label %for.inc22.i.for.inc22.1.i_crit_edge, label %for.inc22.i.for.body12.1.i_crit_edge

for.inc22.i.for.body12.1.i_crit_edge:             ; preds = %for.inc22.i
  br label %for.body12.1.i

for.inc22.i.for.inc22.1.i_crit_edge:              ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.1.i

for.body12.1.i:                                   ; preds = %if.end.1.i.for.body12.1.i_crit_edge, %for.inc22.i.for.body12.1.i_crit_edge
  %.pn.in42.1.i = phi ptr [ %.pn45.1.i, %if.end.1.i.for.body12.1.i_crit_edge ], [ %14, %for.inc22.i.for.body12.1.i_crit_edge ]
  %block_group.044.1.i = getelementptr i8, ptr %.pn.in42.1.i, i32 -324
  %15 = ptrtoint ptr %.pn.in42.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn45.1.i = load ptr, ptr %.pn.in42.1.i, align 4
  %call.i.i.1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42.1.i) #6
  br i1 %call.i.i.1.i, label %if.end.i.i.1.i, label %for.body12.1.i.list_del_init.exit.1.i_crit_edge

for.body12.1.i.list_del_init.exit.1.i_crit_edge:  ; preds = %for.body12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.1.i

if.end.i.i.1.i:                                   ; preds = %for.body12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.1.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.1.i, align 4
  %18 = ptrtoint ptr %.pn.in42.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in42.1.i, align 4
  %prev1.i.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.1.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit.1.i

list_del_init.exit.1.i:                           ; preds = %if.end.i.i.1.i, %for.body12.1.i.list_del_init.exit.1.i_crit_edge
  %22 = ptrtoint ptr %.pn.in42.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in42.1.i, ptr %.pn.in42.1.i, align 4
  %prev.i3.i.1.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.1.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn.in42.1.i, ptr %prev.i3.i.1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %used.1.i = getelementptr i8, ptr %.pn.in42.1.i, i32 -236
  %24 = ptrtoint ptr %used.1.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %used.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp15.1.i = icmp eq i64 %25, 0
  br i1 %cmp15.1.i, label %if.then.1.i, label %list_del_init.exit.1.i.if.end.1.i_crit_edge

list_del_init.exit.1.i.if.end.1.i_crit_edge:      ; preds = %list_del_init.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %list_del_init.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @btrfs_mark_bg_unused(ptr noundef %block_group.044.1.i) #6
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %list_del_init.exit.1.i.if.end.1.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %cmp11.not.1.i = icmp eq ptr %.pn45.1.i, %arrayidx.1.i
  br i1 %cmp11.not.1.i, label %if.end.1.i.for.inc22.1.i_crit_edge, label %if.end.1.i.for.body12.1.i_crit_edge

if.end.1.i.for.body12.1.i_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.1.i

if.end.1.i.for.inc22.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.1.i

for.inc22.1.i:                                    ; preds = %if.end.1.i.for.inc22.1.i_crit_edge, %for.inc22.i.for.inc22.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.2.i, align 8
  %cmp11.not41.2.i = icmp eq ptr %27, %arrayidx.2.i
  br i1 %cmp11.not41.2.i, label %for.inc22.1.i.btrfs_discard_purge_list.exit_crit_edge, label %for.inc22.1.i.for.body12.2.i_crit_edge

for.inc22.1.i.for.body12.2.i_crit_edge:           ; preds = %for.inc22.1.i
  br label %for.body12.2.i

for.inc22.1.i.btrfs_discard_purge_list.exit_crit_edge: ; preds = %for.inc22.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_discard_purge_list.exit

for.body12.2.i:                                   ; preds = %if.end.2.i.for.body12.2.i_crit_edge, %for.inc22.1.i.for.body12.2.i_crit_edge
  %.pn.in42.2.i = phi ptr [ %.pn45.2.i, %if.end.2.i.for.body12.2.i_crit_edge ], [ %27, %for.inc22.1.i.for.body12.2.i_crit_edge ]
  %block_group.044.2.i = getelementptr i8, ptr %.pn.in42.2.i, i32 -324
  %28 = ptrtoint ptr %.pn.in42.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn45.2.i = load ptr, ptr %.pn.in42.2.i, align 4
  %call.i.i.2.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42.2.i) #6
  br i1 %call.i.i.2.i, label %if.end.i.i.2.i, label %for.body12.2.i.list_del_init.exit.2.i_crit_edge

for.body12.2.i.list_del_init.exit.2.i_crit_edge:  ; preds = %for.body12.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.2.i

if.end.i.i.2.i:                                   ; preds = %for.body12.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.2.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.2.i, align 4
  %31 = ptrtoint ptr %.pn.in42.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in42.2.i, align 4
  %prev1.i.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.2.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit.2.i

list_del_init.exit.2.i:                           ; preds = %if.end.i.i.2.i, %for.body12.2.i.list_del_init.exit.2.i_crit_edge
  %35 = ptrtoint ptr %.pn.in42.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %.pn.in42.2.i, ptr %.pn.in42.2.i, align 4
  %prev.i3.i.2.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.2.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn.in42.2.i, ptr %prev.i3.i.2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %used.2.i = getelementptr i8, ptr %.pn.in42.2.i, i32 -236
  %37 = ptrtoint ptr %used.2.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %used.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp15.2.i = icmp eq i64 %38, 0
  br i1 %cmp15.2.i, label %if.then.2.i, label %list_del_init.exit.2.i.if.end.2.i_crit_edge

list_del_init.exit.2.i.if.end.2.i_crit_edge:      ; preds = %list_del_init.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %list_del_init.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @btrfs_mark_bg_unused(ptr noundef %block_group.044.2.i) #6
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %list_del_init.exit.2.i.if.end.2.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %cmp11.not.2.i = icmp eq ptr %.pn45.2.i, %arrayidx.2.i
  br i1 %cmp11.not.2.i, label %if.end.2.i.btrfs_discard_purge_list.exit_crit_edge, label %if.end.2.i.for.body12.2.i_crit_edge

if.end.2.i.for.body12.2.i_crit_edge:              ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.2.i

if.end.2.i.btrfs_discard_purge_list.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_discard_purge_list.exit

btrfs_discard_purge_list.exit:                    ; preds = %if.end.2.i.btrfs_discard_purge_list.exit_crit_edge, %for.inc22.1.i.btrfs_discard_purge_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_stop(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_discard_init(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @btrfs_discard_init.__key, i16 noundef signext 3) #6
  %work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @btrfs_discard_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry11 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @btrfs_discard_workfn, ptr %func, align 4
  %timer = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @btrfs_discard_init.__key.4) #6
  %arrayidx = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i44 = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %prev.i44, align 4
  %arrayidx.1 = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i44.1 = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i44.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %prev.i44.1, align 4
  %arrayidx.2 = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i44.2 = getelementptr %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 4, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i44.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.2, ptr %prev.i44.2, align 4
  %prev_discard = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 5
  %discardable_extents = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 7
  %10 = call ptr @memset(ptr %prev_discard, i32 0, i32 16)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_extents, i32 noundef 4) #6
  %11 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %discardable_extents, align 4
  %discardable_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 8
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discardable_bytes, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %discardable_bytes, i64 noundef 0) #6
  %max_discard_size = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 9
  %12 = ptrtoint ptr %max_discard_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 67108864, ptr %max_discard_size, align 8
  %delay_ms = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 10
  %13 = ptrtoint ptr %delay_ms to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1000, ptr %delay_ms, align 8
  %iops_limit = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 11
  %14 = ptrtoint ptr %iops_limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %iops_limit, align 8
  %kbps_limit = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 12
  %discard_bytes_saved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 15
  %15 = call ptr @memset(ptr %kbps_limit, i32 0, i32 20)
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_bytes_saved, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %discard_bytes_saved, i64 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_discard_workfn(ptr noundef %work) #0 align 64 {
entry:
  %trimmed = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trimmed) #6
  %0 = ptrtoint ptr %trimmed to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trimmed, align 8
  %call.i = tail call i64 @ktime_get() #6
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %lock.i = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %arrayidx.i.i = getelementptr i8, ptr %work, i32 148
  %arrayidx.1.i.i = getelementptr i8, ptr %work, i32 156
  %arrayidx.2.i.i = getelementptr i8, ptr %work, i32 164
  br label %again.i

again.i:                                          ; preds = %again.i.backedge, %entry
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %2, %arrayidx.i.i
  br i1 %cmp.i.not.i.i, label %again.i.for.inc.i.i_crit_edge, label %if.then.i.i

again.i.for.inc.i.i_crit_edge:                    ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %again.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -324
  %discard_eligible_time.i.i = getelementptr i8, ptr %2, i32 12
  %3 = ptrtoint ptr %discard_eligible_time.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %discard_eligible_time.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %call.i)
  %cmp4.i.i = icmp ult i64 %4, %call.i
  br i1 %cmp4.i.i, label %if.then.i.i.find_next_block_group.exit.i_crit_edge, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i.find_next_block_group.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit.i

for.inc.i.i:                                      ; preds = %if.then.i.i.for.inc.i.i_crit_edge, %again.i.for.inc.i.i_crit_edge
  %ret_block_group.3.ph.i.i = phi ptr [ null, %again.i.for.inc.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.i.i.for.inc.i.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx.1.i.i, align 4
  %cmp.i.not.1.i.i = icmp eq ptr %6, %arrayidx.1.i.i
  br i1 %cmp.i.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  %add.ptr.1.i.i = getelementptr i8, ptr %6, i32 -324
  %tobool2.not.1.i.i = icmp eq ptr %ret_block_group.3.ph.i.i, null
  %spec.select.1.i.i = select i1 %tobool2.not.1.i.i, ptr %add.ptr.1.i.i, ptr %ret_block_group.3.ph.i.i
  %discard_eligible_time.1.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %spec.select.1.i.i, i32 0, i32 33
  %7 = ptrtoint ptr %discard_eligible_time.1.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %discard_eligible_time.1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %call.i)
  %cmp4.1.i.i = icmp ult i64 %8, %call.i
  br i1 %cmp4.1.i.i, label %if.then.1.i.i.find_next_block_group.exit.i_crit_edge, label %if.end6.1.i.i

if.then.1.i.i.find_next_block_group.exit.i_crit_edge: ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit.i

if.end6.1.i.i:                                    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %discard_eligible_time8.1.i.i = getelementptr i8, ptr %6, i32 12
  %9 = ptrtoint ptr %discard_eligible_time8.1.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %discard_eligible_time8.1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp9.1.i.i = icmp ugt i64 %8, %10
  %spec.select24.1.i.i = select i1 %cmp9.1.i.i, ptr %add.ptr.1.i.i, ptr %spec.select.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end6.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %ret_block_group.3.ph.1.i.i = phi ptr [ %spec.select24.1.i.i, %if.end6.1.i.i ], [ %ret_block_group.3.ph.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %11 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.2.i.i, align 4
  %cmp.i.not.2.i.i = icmp eq ptr %12, %arrayidx.2.i.i
  br i1 %cmp.i.not.2.i.i, label %for.inc.1.i.i.find_next_block_group.exit.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.find_next_block_group.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  %add.ptr.2.i.i = getelementptr i8, ptr %12, i32 -324
  %tobool2.not.2.i.i = icmp eq ptr %ret_block_group.3.ph.1.i.i, null
  %spec.select.2.i.i = select i1 %tobool2.not.2.i.i, ptr %add.ptr.2.i.i, ptr %ret_block_group.3.ph.1.i.i
  %discard_eligible_time.2.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %spec.select.2.i.i, i32 0, i32 33
  %13 = ptrtoint ptr %discard_eligible_time.2.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %discard_eligible_time.2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %call.i)
  %cmp4.2.i.i = icmp ult i64 %14, %call.i
  br i1 %cmp4.2.i.i, label %if.then.2.i.i.find_next_block_group.exit.i_crit_edge, label %if.end6.2.i.i

if.then.2.i.i.find_next_block_group.exit.i_crit_edge: ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_next_block_group.exit.i

if.end6.2.i.i:                                    ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %discard_eligible_time8.2.i.i = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %discard_eligible_time8.2.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %discard_eligible_time8.2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp9.2.i.i = icmp ugt i64 %14, %16
  %spec.select24.2.i.i = select i1 %cmp9.2.i.i, ptr %add.ptr.2.i.i, ptr %spec.select.2.i.i
  br label %find_next_block_group.exit.i

find_next_block_group.exit.i:                     ; preds = %if.end6.2.i.i, %if.then.2.i.i.find_next_block_group.exit.i_crit_edge, %for.inc.1.i.i.find_next_block_group.exit.i_crit_edge, %if.then.1.i.i.find_next_block_group.exit.i_crit_edge, %if.then.i.i.find_next_block_group.exit.i_crit_edge
  %ret_block_group.4.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i.find_next_block_group.exit.i_crit_edge ], [ %spec.select.1.i.i, %if.then.1.i.i.find_next_block_group.exit.i_crit_edge ], [ %spec.select.2.i.i, %if.then.2.i.i.find_next_block_group.exit.i_crit_edge ], [ %spec.select24.2.i.i, %if.end6.2.i.i ], [ %ret_block_group.3.ph.1.i.i, %for.inc.1.i.i.find_next_block_group.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %ret_block_group.4.i.i, null
  br i1 %tobool.not.i, label %peek_discard_list.exit.thread, label %land.lhs.true.i

peek_discard_list.exit.thread:                    ; preds = %find_next_block_group.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %find_next_block_group.exit.i
  %discard_eligible_time.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 33
  %17 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %discard_eligible_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %call.i)
  %cmp.not.i = icmp ugt i64 %18, %call.i
  br i1 %cmp.not.i, label %land.lhs.true.i.lor.lhs.false_crit_edge, label %if.then.i

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then.i:                                        ; preds = %land.lhs.true.i
  %discard_index1.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 32
  %19 = ptrtoint ptr %discard_index1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %discard_index1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2.i = icmp eq i32 %20, 0
  br i1 %cmp2.i, label %land.lhs.true3.i, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

land.lhs.true3.i:                                 ; preds = %if.then.i
  %used.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp4.not.i = icmp eq i64 %22, 0
  br i1 %cmp4.not.i, label %land.lhs.true3.i.if.end8.i_crit_edge, label %if.then5.i

land.lhs.true3.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then5.i:                                       ; preds = %land.lhs.true3.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags.i.i, align 8
  %25 = and i64 %24, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %25)
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__add_to_discard_list(ptr noundef %add.ptr, ptr noundef nonnull %ret_block_group.4.i.i) #6
  br label %again.i.backedge

if.else.i:                                        ; preds = %if.then5.i
  %discard_list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %discard_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_del_init.exit.i_crit_edge
  %33 = ptrtoint ptr %discard_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %discard_list.i, ptr %discard_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31, i32 1
  %34 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %discard_list.i, ptr %prev.i3.i.i, align 4
  br label %again.i.backedge

again.i.backedge:                                 ; preds = %list_del_init.exit.i, %if.then7.i
  br label %again.i

if.end8.i:                                        ; preds = %land.lhs.true3.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  %discard_state9.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 35
  %35 = ptrtoint ptr %discard_state9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %discard_state9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp10.i = icmp eq i32 %36, 2
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start.i, align 8
  %discard_cursor.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 34
  %39 = ptrtoint ptr %discard_cursor.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %discard_cursor.i, align 8
  %40 = ptrtoint ptr %discard_state9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %discard_state9.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %block_group14.i = getelementptr i8, ptr %work, i32 144
  %41 = ptrtoint ptr %block_group14.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ret_block_group.4.i.i, ptr %block_group14.i, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13.i, %land.lhs.true.i.lor.lhs.false_crit_edge
  %discard_state18.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 35
  %42 = ptrtoint ptr %discard_state18.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %discard_state18.i, align 8
  %discard_index19.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 32
  %44 = ptrtoint ptr %discard_index19.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %discard_index19.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %sb.i = getelementptr i8, ptr %work, i32 -2532
  %46 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sb.i, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i81 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i81, label %btrfs_run_discard_work.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

btrfs_run_discard_work.exit:                      ; preds = %lor.lhs.false
  %flags.i = getelementptr i8, ptr %work, i32 -3780
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i, align 4
  %52 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool1.i.not = icmp eq i32 %52, 0
  br i1 %tobool1.i.not, label %btrfs_run_discard_work.exit.cleanup_crit_edge, label %if.end

btrfs_run_discard_work.exit.cleanup_crit_edge:    ; preds = %btrfs_run_discard_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %btrfs_run_discard_work.exit
  %53 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %discard_eligible_time.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %54)
  %cmp = icmp ult i64 %call.i, %54
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i64 @ktime_get() #6
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  tail call fastcc void @__btrfs_discard_schedule_work(ptr noundef %add.ptr, i64 noundef %call.i.i, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr [3 x i32], ptr @discard_minlen, i32 0, i32 %45
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %conv = sext i32 %56 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp5 = icmp eq i32 %43, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.not = icmp eq i32 %45, 0
  br i1 %cmp8.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %45, -1
  %arrayidx11 = getelementptr [3 x i32], ptr @discard_minlen, i32 0, i32 %sub
  %57 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx11, align 4
  %conv12 = sext i32 %58 to i64
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge
  %maxlen.0 = phi i64 [ %conv12, %if.then10 ], [ 0, %if.then7.if.end13_crit_edge ]
  %discard_cursor = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 34
  %59 = ptrtoint ptr %discard_cursor to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %discard_cursor, align 8
  %start.i83 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %start.i83 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %start.i83, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %length.i, align 8
  %add.i = add i64 %64, %62
  %call15 = call i32 @btrfs_trim_block_group_bitmaps(ptr noundef nonnull %ret_block_group.4.i.i, ptr noundef nonnull %trimmed, i64 noundef %60, i64 noundef %add.i, i64 noundef %conv, i64 noundef %maxlen.0, i1 noundef zeroext true) #6
  br label %if.end20

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %discard_cursor16 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 34
  %65 = ptrtoint ptr %discard_cursor16 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %discard_cursor16, align 8
  %start.i84 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %start.i84 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %start.i84, align 8
  %length.i85 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %length.i85 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %length.i85, align 8
  %add.i86 = add i64 %70, %68
  %call18 = call i32 @btrfs_trim_block_group_extents(ptr noundef nonnull %ret_block_group.4.i.i, ptr noundef nonnull %trimmed, i64 noundef %66, i64 noundef %add.i86, i64 noundef %conv, i1 noundef zeroext true) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end13
  %.sink = phi i32 [ 228, %if.else ], [ 236, %if.end13 ]
  %71 = ptrtoint ptr %trimmed to i32
  call void @__asan_load8_noabort(i32 %71)
  %.sink113 = load i64, ptr %trimmed, align 8
  %discard_extent_bytes = getelementptr i8, ptr %work, i32 %.sink
  %72 = ptrtoint ptr %discard_extent_bytes to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %discard_extent_bytes, align 8
  %add19 = add i64 %73, %.sink113
  store i64 %add19, ptr %discard_extent_bytes, align 8
  %discard_cursor21 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 34
  %74 = ptrtoint ptr %discard_cursor21 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %discard_cursor21, align 8
  %start.i87 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %start.i87 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %start.i87, align 8
  %length.i88 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %length.i88 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %length.i88, align 8
  %add.i89 = add i64 %79, %77
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %add.i89)
  %cmp23.not = icmp ult i64 %75, %add.i89
  br i1 %cmp23.not, label %if.end20.if.end39_crit_edge, label %if.then25

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then25:                                        ; preds = %if.end20
  br i1 %cmp5, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then25
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %block_group1.i.i = getelementptr i8, ptr %work, i32 144
  %80 = ptrtoint ptr %block_group1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %block_group1.i.i, align 4
  %cmp.i.i = icmp eq ptr %81, %ret_block_group.4.i.i
  br i1 %cmp.i.i, label %if.then.i.i90, label %if.then28.if.end.i.i_crit_edge

if.then28.if.end.i.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i90:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %block_group1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %block_group1.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i90, %if.then28.if.end.i.i_crit_edge
  %83 = ptrtoint ptr %discard_eligible_time.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %discard_eligible_time.i, align 8
  %discard_list.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list.i.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.remove_from_discard_list.exit.i_crit_edge

if.end.i.i.remove_from_discard_list.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_from_discard_list.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i.i, align 4
  %86 = ptrtoint ptr %discard_list.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %discard_list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %remove_from_discard_list.exit.i

remove_from_discard_list.exit.i:                  ; preds = %if.end.i.i.i.i, %if.end.i.i.remove_from_discard_list.exit.i_crit_edge
  %90 = ptrtoint ptr %discard_list.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %discard_list.i.i, ptr %discard_list.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 31, i32 1
  %91 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %discard_list.i.i, ptr %prev.i3.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %used.i92 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %used.i92 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %used.i92, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %93)
  %cmp.i = icmp eq i64 %93, 0
  br i1 %cmp.i, label %if.then.i93, label %if.else3.i

if.then.i93:                                      ; preds = %remove_from_discard_list.exit.i
  %call1.i = call zeroext i1 @btrfs_is_free_space_trimmed(ptr noundef nonnull %ret_block_group.4.i.i) #6
  br i1 %call1.i, label %if.then2.i, label %if.else.i94

if.then2.i:                                       ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_mark_bg_unused(ptr noundef nonnull %ret_block_group.4.i.i) #6
  br label %if.end39

if.else.i94:                                      ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @add_to_discard_unused_list(ptr noundef %add.ptr, ptr noundef nonnull %ret_block_group.4.i.i) #6
  br label %if.end39

if.else3.i:                                       ; preds = %remove_from_discard_list.exit.i
  %94 = ptrtoint ptr %discard_index19.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %discard_index19.i, align 4
  %inc.i.i = add i32 %95, 1
  store i32 %inc.i.i, ptr %discard_index19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i12.i = icmp eq i32 %inc.i.i, 3
  br i1 %cmp.i12.i, label %if.then.i13.i, label %if.end.i14.i

if.then.i13.i:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %discard_index19.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %discard_index19.i, align 4
  br label %if.end39

if.end.i14.i:                                     ; preds = %if.else3.i
  %flags.i.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret_block_group.4.i.i, i32 0, i32 10
  %97 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %flags.i.i.i.i, align 8
  %99 = and i64 %98, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %99)
  %100 = icmp eq i64 %99, 1
  br i1 %100, label %if.end.i.i.i95, label %if.end.i14.i.if.end39_crit_edge

if.end.i14.i.if.end39_crit_edge:                  ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end.i.i.i95:                                   ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  call fastcc void @__add_to_discard_list(ptr noundef %add.ptr, ptr noundef nonnull %ret_block_group.4.i.i) #6
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end39

if.else29:                                        ; preds = %if.then25
  %101 = ptrtoint ptr %discard_cursor21 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %77, ptr %discard_cursor21, align 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %102 = ptrtoint ptr %discard_state18.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %discard_state18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp32.not = icmp eq i32 %103, 2
  br i1 %cmp32.not, label %if.else29.if.end36_crit_edge, label %if.then34

if.else29.if.end36_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %discard_state18.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %discard_state18.i, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else29.if.end36_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %if.end.i.i.i95, %if.end.i14.i.if.end39_crit_edge, %if.then.i13.i, %if.else.i94, %if.then2.i, %if.end20.if.end39_crit_edge
  %call.i96 = call i64 @ktime_get() #6
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %105 = ptrtoint ptr %trimmed to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %trimmed, align 8
  %prev_discard = getelementptr i8, ptr %work, i32 172
  %107 = ptrtoint ptr %prev_discard to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %prev_discard, align 8
  %prev_discard_time = getelementptr i8, ptr %work, i32 180
  %108 = ptrtoint ptr %prev_discard_time to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %call.i96, ptr %prev_discard_time, align 8
  %block_group42 = getelementptr i8, ptr %work, i32 144
  %109 = ptrtoint ptr %block_group42 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %block_group42, align 4
  call fastcc void @__btrfs_discard_schedule_work(ptr noundef %add.ptr, i64 noundef %call.i96, i1 noundef zeroext false)
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then3, %btrfs_run_discard_work.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %peek_discard_list.exit.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trimmed) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_to_discard_list(ptr noundef %discard_ctl, ptr noundef %block_group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sb.i = getelementptr i8, ptr %discard_ctl, i32 -2528
  %0 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb.i, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %btrfs_run_discard_work.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

btrfs_run_discard_work.exit:                      ; preds = %entry
  %flags.i = getelementptr i8, ptr %discard_ctl, i32 -3776
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %btrfs_run_discard_work.exit.return_crit_edge, label %if.end

btrfs_run_discard_work.exit.return_crit_edge:     ; preds = %btrfs_run_discard_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %btrfs_run_discard_work.exit
  %discard_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31
  %7 = ptrtoint ptr %discard_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %discard_list, align 4
  %cmp.i.not = icmp eq ptr %8, %discard_list
  br i1 %cmp.i.not, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %discard_index = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 32
  %9 = ptrtoint ptr %discard_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %discard_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %discard_index3 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 32
  %11 = ptrtoint ptr %discard_index3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %discard_index3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %discard_index3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %discard_index3, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge
  %call.i = tail call i64 @ktime_get() #6
  %add = add i64 %call.i, 120000000000
  %discard_eligible_time = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 33
  %14 = ptrtoint ptr %discard_eligible_time to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add, ptr %discard_eligible_time, align 8
  %discard_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 35
  %15 = ptrtoint ptr %discard_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %discard_state, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %lor.lhs.false.if.end9_crit_edge
  %discard_index.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 32
  %16 = ptrtoint ptr %discard_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %discard_index.i, align 4
  %arrayidx.i = getelementptr %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 %17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %discard_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.__list_del_entry.exit.i_crit_edge

if.end9.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %discard_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %discard_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end9.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr %struct.btrfs_discard_ctl, ptr %discard_ctl, i32 0, i32 4, i32 %17, i32 1
  %24 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %discard_list, ptr noundef %25, ptr noundef %arrayidx.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.return_crit_edge

__list_del_entry.exit.i.return_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %discard_list, ptr %prev.i2.i, align 4
  %27 = ptrtoint ptr %discard_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.i, ptr %discard_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 31, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %discard_list, ptr %25, align 4
  br label %return

return:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.return_crit_edge, %btrfs_run_discard_work.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_trim_block_group_bitmaps(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_trim_block_group_extents(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_is_free_space_trimmed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_bg_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/discard.c", i32 604, i32 2}
!2 = !{ptr @btrfs_discard_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/btrfs/discard.c", i32 699, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @btrfs_discard_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/btrfs/discard.c", i32 700, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @btrfs_discard_init.__key.4, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @discard_minlen, !11, !"discard_minlen", i1 false, i1 false}
!11 = !{!"../fs/btrfs/discard.c", i32 65, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148235988, i64 2148236014, i64 2148236043, i64 2148236077, i64 2148236108, i64 2148236131}
!22 = !{!"branch_weights", i32 1, i32 2000}
