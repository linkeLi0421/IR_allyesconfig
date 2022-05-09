; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_trans_inode.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_trans_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xfs_isilocked(ip, XFS_ILOCK_EXCL)\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/xfs/libxfs/xfs_trans_inode.c\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iip->ili_lock_flags == 0\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!xfs_iflags_test(ip, XFS_ISTALE)\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tp\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iip\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 34, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 39, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 41, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 63, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [35 x i8] c"../fs/xfs/libxfs/xfs_trans_inode.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 101, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ijoin(ptr noundef %tp, ptr noundef %ip, i32 noundef %lock_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #3
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !20

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_itemp, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 8
  tail call void @xfs_inode_item_init(ptr noundef %ip, ptr noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %4 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_itemp, align 8
  %ili_lock_flags = getelementptr inbounds %struct.xfs_inode_log_item, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ili_lock_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ili_lock_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3 = icmp eq i16 %7, 0
  br i1 %cmp3, label %if.end.cond.end13_crit_edge, label %cond.false12, !prof !20

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end13

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 39) #3
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %if.end.cond.end13_crit_edge
  %conv14 = trunc i32 %lock_flags to i16
  %8 = ptrtoint ptr %ili_lock_flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv14, ptr %ili_lock_flags, align 4
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #3
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %9 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %10, 2
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool17.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool17.not, label %cond.end13.cond.end28_crit_edge, label %cond.false27, !prof !20

cond.end13.cond.end28_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 41) #3
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end13.cond.end28_crit_edge
  tail call void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %5) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_item_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_add_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ichgtime(ptr noundef readnone %tp, ptr noundef %ip, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tv = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv)
  %0 = call ptr @memset(ptr %tv, i32 255, i32 16)
  %tobool.not = icmp eq ptr %tp, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 63) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call3 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #3
  br i1 %call3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !20

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64) #3
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tv, ptr noundef %i_vnode.i) #3
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %cond.end12.if.end_crit_edge, label %if.then

cond.end12.if.end_crit_edge:                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #5
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %1 = call ptr @memcpy(ptr %i_mtime, ptr %tv, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end12.if.end_crit_edge
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tv, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %and18 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %i_crtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 26
  %3 = call ptr @memcpy(ptr %i_crtime, ptr %tv, i32 16)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_itemp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 101) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call3 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 4) #3
  br i1 %call3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !20

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102) #3
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #3
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %2 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %3, 2
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool14.not, label %cond.end12.cond.end25_crit_edge, label %cond.false24, !prof !20

cond.end12.cond.end25_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 103) #3
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.end12.cond.end25_crit_edge
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %t_flags, align 4
  %i_state = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 24
  %6 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state, align 8
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %cond.end25.if.end_crit_edge, label %if.then

cond.end25.if.end_crit_edge:                      ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #5
  %i_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #3
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and28 = and i32 %9, -2049
  store i32 %and28, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end25.if.end_crit_edge
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 6
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %li_flags) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then32:                                        ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and33 = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then32.if.end40_crit_edge, label %land.lhs.true

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

land.lhs.true:                                    ; preds = %if.then32
  %and35 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !22
  %i_version.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #3
  %call.i.i18.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #3
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %land.lhs.true
  %cur.0.i = phi i64 [ %call.i.i18.i, %land.lhs.true ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  %or.cond.i = select i1 %tobool36.not, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i

for.cond.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inode_maybe_inc_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %14 = add i64 %cur.0.i, 2
  %add.i = and i64 %14, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #3
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #3
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !20

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

if.end.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inode_maybe_inc_iversion.exit

inode_maybe_inc_iversion.exit:                    ; preds = %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge
  %15 = xor i1 %or.cond.i, true
  %spec.select = zext i1 %15 to i32
  br label %if.end40

if.end40:                                         ; preds = %inode_maybe_inc_iversion.exit, %if.then32.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %iversion_flags.0 = phi i32 [ 0, %if.end.if.end40_crit_edge ], [ 0, %if.then32.if.end40_crit_edge ], [ %spec.select, %inode_maybe_inc_iversion.exit ]
  %and41 = and i32 %flags, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end50_crit_edge, label %land.lhs.true43

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

land.lhs.true43:                                  ; preds = %if.end40
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i134 = and i64 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i134)
  %tobool.i.not = icmp eq i64 %and.i134, 0
  br i1 %tobool.i.not, label %land.lhs.true43.if.end50_crit_edge, label %land.lhs.true45

land.lhs.true43.if.end50_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %20 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_diflags2.i, align 8
  %and.i135 = and i64 %21, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i135)
  %tobool.i136.not = icmp eq i64 %and.i135, 0
  br i1 %tobool.i136.not, label %if.then47, label %land.lhs.true45.if.end50_crit_edge

land.lhs.true45.if.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #5
  %or48 = or i64 %21, 8
  %22 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or48, ptr %i_diflags2.i, align 8
  %or49 = or i32 %flags, 1
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %land.lhs.true45.if.end50_crit_edge, %land.lhs.true43.if.end50_crit_edge, %if.end40.if.end50_crit_edge
  %flags.addr.0 = phi i32 [ %flags, %land.lhs.true45.if.end50_crit_edge ], [ %or49, %if.then47 ], [ %flags, %land.lhs.true43.if.end50_crit_edge ], [ %flags, %if.end40.if.end50_crit_edge ]
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %23 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_diflags, align 2
  %25 = and i16 %24, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %25)
  %.not = icmp eq i16 %25, 4352
  br i1 %.not, label %land.lhs.true58, label %if.end50.if.end68_crit_edge

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true58:                                  ; preds = %if.end50
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %26 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_extsize, align 4
  %28 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ip, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sb_rextsize, align 16
  %rem = urem i32 %27, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %land.lhs.true58.if.end68_crit_edge, label %if.then61

land.lhs.true58.if.end68_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #5
  %and64 = and i16 %24, -6145
  %32 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %and64, ptr %i_diflags, align 2
  %33 = ptrtoint ptr %i_extsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %i_extsize, align 4
  %or67 = or i32 %flags.addr.0, 1
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %land.lhs.true58.if.end68_crit_edge, %if.end50.if.end68_crit_edge
  %flags.addr.1 = phi i32 [ %or67, %if.then61 ], [ %flags.addr.0, %land.lhs.true58.if.end68_crit_edge ], [ %flags.addr.0, %if.end50.if.end68_crit_edge ]
  %ili_lock = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ili_lock) #3
  %ili_fsync_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %ili_fsync_fields to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ili_fsync_fields, align 4
  %or69 = or i32 %35, %flags.addr.1
  store i32 %or69, ptr %ili_fsync_fields, align 4
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %li_buf, align 8
  %tobool71.not = icmp eq ptr %37, null
  br i1 %tobool71.not, label %if.then72, label %if.end68.if.end86_crit_edge

if.end68.if.end86_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end86

if.then72:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #3
  %38 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !23
  tail call void @_raw_spin_unlock(ptr noundef %ili_lock) #3
  %39 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ip, align 8
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 5
  %call75 = call i32 @xfs_imap_to_bp(ptr noundef %40, ptr noundef %tp, ptr noundef %i_imap, ptr noundef nonnull %bp) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ip, align 8
  call void @xfs_do_force_shutdown(ptr noundef %42, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 184) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #3
  br label %cleanup91

if.end79:                                         ; preds = %if.then72
  %43 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bp, align 4
  call void @xfs_buf_hold(ptr noundef %44) #3
  call void @_raw_spin_lock(ptr noundef %ili_lock) #3
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 4
  %47 = ptrtoint ptr %li_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %li_buf, align 8
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 5
  %48 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b_flags, align 4
  %or83 = or i32 %49, 65536
  store i32 %or83, ptr %b_flags, align 4
  %li_bio_list = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 8
  %b_li_list = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.xfs_buf, ptr %46, i32 0, i32 20, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i137 = call zeroext i1 @__list_add_valid(ptr noundef %li_bio_list, ptr noundef %51, ptr noundef %b_li_list) #3
  br i1 %call.i.i137, label %if.end.i.i, label %if.end79.list_add_tail.exit_crit_edge

if.end79.list_add_tail.exit_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %li_bio_list, ptr %prev.i, align 4
  %53 = ptrtoint ptr %li_bio_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %b_li_list, ptr %li_bio_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %li_bio_list, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end79.list_add_tail.exit_crit_edge
  %56 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bp, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %57) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #3
  br label %if.end86

if.end86:                                         ; preds = %list_add_tail.exit, %if.end68.if.end86_crit_edge
  %ili_last_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %ili_last_fields to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ili_last_fields, align 4
  %ili_fields = getelementptr inbounds %struct.xfs_inode_log_item, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %ili_fields to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ili_fields, align 8
  %or87 = or i32 %flags.addr.1, %iversion_flags.0
  %or88 = or i32 %or87, %59
  %or89 = or i32 %or88, %61
  store i32 %or89, ptr %ili_fields, align 8
  call void @_raw_spin_unlock(ptr noundef %ili_lock) #3
  br label %cleanup91

cleanup91:                                        ; preds = %if.end86, %if.then77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_imap_to_bp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_roll_inode(ptr noundef %tpp, ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpp, align 4
  tail call void @xfs_trans_log_inode(ptr noundef %1, ptr noundef %ip, i32 noundef 1)
  %call = tail call i32 @xfs_trans_roll(ptr noundef %tpp) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %3, ptr noundef %ip, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_trans_inode.c", i32 34, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_trans_inode.c", i32 39, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_trans_inode.c", i32 41, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_trans_inode.c", i32 63, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_trans_inode.c", i32 101, i32 2}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2155730719}
!23 = !{!"auto-init"}
