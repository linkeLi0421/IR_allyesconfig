; ModuleID = '/llk/IR_all_yes/fs/btrfs/export.c_pt.bc'
source_filename = "../fs/btrfs/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.83, %struct.list_head, %struct.list_head, %union.anon.84 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.spinlock, i32 }
%union.anon.83 = type { %struct.list_head }
%union.anon.84 = type { %struct.hlist_node }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.85, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.85 = type { i64 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_fid = type <{ i64, i64, i32, i64, i32, i64 }>
%struct.btrfs_root_ref = type <{ i64, i64, i16 }>
%struct.btrfs_inode_ref = type <{ i64, i16 }>

@btrfs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @btrfs_encode_fh, ptr @btrfs_fh_to_dentry, ptr @btrfs_fh_to_parent, ptr @btrfs_get_name, ptr @btrfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 78, i64 79]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"btrfs_export_ops\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../fs/btrfs/export.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 275, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @btrfs_export_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_dentry(ptr noundef %sb, i64 noundef %objectid, i64 noundef %root_objectid, i32 noundef %generation, i32 noundef %check_generation) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %objectid)
  %cmp = icmp ult i64 %objectid, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @btrfs_get_fs_root(ptr noundef %1, i64 noundef %root_objectid, i1 noundef zeroext true) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @btrfs_iget(ptr noundef %sb, i64 noundef %objectid, ptr noundef %call2) #5
  tail call void @btrfs_put_root(ptr noundef %call2) #5
  %cmp.i28 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_generation)
  %tobool.not = icmp eq i32 %check_generation, 0
  br i1 %tobool.not, label %if.end11.if.end15_crit_edge, label %land.lhs.true

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %i_generation = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 49
  %2 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %generation)
  %cmp12.not = icmp eq i32 %3, %generation
  br i1 %cmp12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef %call7) #5
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %call16 = tail call ptr @d_obtain_alias(ptr noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then13 ], [ %call16, %if.end15 ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_iget(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #5
  %8 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %10 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call4 = tail call ptr @btrfs_alloc_path() #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %location.i = getelementptr i8, ptr %1, i32 -860
  %11 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i, label %btrfs_ino.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr i8, ptr %1, i32 -852
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %14)
  %cmp.i = icmp eq i8 %14, -124
  br i1 %cmp.i, label %btrfs_ino.exit.thread122, label %btrfs_ino.exit.thread

btrfs_ino.exit:                                   ; preds = %if.end
  %i_ino.i = getelementptr i8, ptr %1, i32 40
  %15 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %cmp = icmp eq i32 %16, 256
  br i1 %cmp, label %btrfs_ino.exit.if.then8_crit_edge, label %btrfs_ino.exit.if.then.i113_crit_edge

btrfs_ino.exit.if.then.i113_crit_edge:            ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i113

btrfs_ino.exit.if.then8_crit_edge:                ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

btrfs_ino.exit.thread122:                         ; preds = %lor.lhs.false.i
  %i_ino.i123 = getelementptr i8, ptr %1, i32 40
  %17 = ptrtoint ptr %i_ino.i123 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %cmp125 = icmp eq i32 %18, 256
  br i1 %cmp125, label %btrfs_ino.exit.thread122.if.then8_crit_edge, label %lor.lhs.false.i110

btrfs_ino.exit.thread122.if.then8_crit_edge:      ; preds = %btrfs_ino.exit.thread122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

btrfs_ino.exit.thread:                            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %12)
  %cmp120 = icmp eq i64 %12, 256
  br i1 %cmp120, label %btrfs_ino.exit.thread.if.then8_crit_edge, label %btrfs_ino.exit.thread.btrfs_ino.exit115_crit_edge

btrfs_ino.exit.thread.btrfs_ino.exit115_crit_edge: ; preds = %btrfs_ino.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %btrfs_ino.exit115

btrfs_ino.exit.thread.if.then8_crit_edge:         ; preds = %btrfs_ino.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %btrfs_ino.exit.thread.if.then8_crit_edge, %btrfs_ino.exit.thread122.if.then8_crit_edge, %btrfs_ino.exit.if.then8_crit_edge
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %root_key, align 1
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %key, align 8
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -112, ptr %8, align 8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 -1, ptr %9, align 1
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tree_root, align 4
  br label %if.end15

lor.lhs.false.i110:                               ; preds = %btrfs_ino.exit.thread122
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %.pr)
  %cmp.i109 = icmp eq i8 %.pr, -124
  br i1 %cmp.i109, label %lor.lhs.false.i110.if.then.i113_crit_edge, label %lor.lhs.false.i110.btrfs_ino.exit115_crit_edge

lor.lhs.false.i110.btrfs_ino.exit115_crit_edge:   ; preds = %lor.lhs.false.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %btrfs_ino.exit115

lor.lhs.false.i110.if.then.i113_crit_edge:        ; preds = %lor.lhs.false.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i113

if.then.i113:                                     ; preds = %lor.lhs.false.i110.if.then.i113_crit_edge, %btrfs_ino.exit.if.then.i113_crit_edge
  %i_ino.i111 = getelementptr i8, ptr %1, i32 40
  %27 = ptrtoint ptr %i_ino.i111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino.i111, align 8
  %conv3.i112 = zext i32 %28 to i64
  br label %btrfs_ino.exit115

btrfs_ino.exit115:                                ; preds = %if.then.i113, %lor.lhs.false.i110.btrfs_ino.exit115_crit_edge, %btrfs_ino.exit.thread.btrfs_ino.exit115_crit_edge
  %ino.0.i114 = phi i64 [ %conv3.i112, %if.then.i113 ], [ %12, %lor.lhs.false.i110.btrfs_ino.exit115_crit_edge ], [ %12, %btrfs_ino.exit.thread.btrfs_ino.exit115_crit_edge ]
  %29 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %ino.0.i114, ptr %key, align 8
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 12, ptr %8, align 8
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 -1, ptr %9, align 1
  br label %if.end15

if.end15:                                         ; preds = %btrfs_ino.exit115, %if.then8
  %root.0 = phi ptr [ %25, %if.then8 ], [ %7, %btrfs_ino.exit115 ]
  %call16 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root.0, ptr noundef nonnull %key, ptr noundef nonnull %call4, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.fail_crit_edge, label %do.body

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp20 = icmp eq i32 %call16, 0
  br i1 %cmp20, label %do.body24, label %do.end30, !prof !11

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/export.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

do.end30:                                         ; preds = %do.body
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call4, i32 0, i32 1
  %32 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp31 = icmp eq i32 %33, 0
  br i1 %cmp31, label %do.end30.fail_crit_edge, label %if.end33

do.end30.fail_crit_edge:                          ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end33:                                         ; preds = %do.end30
  %dec = add i32 %33, -1
  %34 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dec, ptr %slots, align 4
  %35 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call4, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #5
  %37 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %38 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %dec, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %39 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %36, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #5
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %38, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #5
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %37, align 8
  %45 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %disk_key.i, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46) #5
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #5
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp41.not = icmp eq i64 %47, %49
  br i1 %cmp41.not, label %lor.lhs.false, label %if.end33.fail_crit_edge

if.end33.fail_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

lor.lhs.false:                                    ; preds = %if.end33
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %8, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %51)
  %cmp45.not = icmp eq i8 %44, %51
  br i1 %cmp45.not, label %if.end48, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end48:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %44)
  %cmp51 = icmp eq i8 %44, -112
  br i1 %cmp51, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end48
  %52 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %53, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %54 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %36, ptr noundef %54, i32 noundef 17) #5
  %add = add i32 %call.i.i, 101
  %55 = inttoptr i32 %add to ptr
  %call.i = call i64 @btrfs_get_64(ptr noundef %36, ptr noundef %55, i32 noundef 0) #5
  %56 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %call.i, ptr %key, align 8
  call void @btrfs_free_path(ptr noundef nonnull %call4) #5
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 45
  %57 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sb, align 8
  %59 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %60)
  %cmp.i116 = icmp ult i64 %60, 256
  br i1 %cmp.i116, label %if.then67.cleanup_crit_edge, label %if.end.i

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then67
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2.i = call ptr @btrfs_get_fs_root(ptr noundef %62, i64 noundef %42, i1 noundef zeroext true) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @btrfs_iget(ptr noundef %58, i64 noundef %60, ptr noundef %call2.i) #5
  call void @btrfs_put_root(ptr noundef %call2.i) #5
  %cmp.i28.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = call ptr @d_obtain_alias(ptr noundef %call7.i) #5
  br label %cleanup

if.end71:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %42, ptr %key, align 8
  call void @btrfs_free_path(ptr noundef nonnull %call4) #5
  %sb72 = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 45
  %64 = ptrtoint ptr %sb72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sb72, align 8
  %66 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %key, align 8
  %call74 = call ptr @btrfs_iget(ptr noundef %65, i64 noundef %67, ptr noundef %root.0) #5
  %call75 = call ptr @d_obtain_alias(ptr noundef %call74) #5
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %if.end33.fail_crit_edge, %do.end30.fail_crit_edge, %if.end15.fail_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.fail_crit_edge ], [ -2, %do.end30.fail_crit_edge ], [ -2, %lor.lhs.false.fail_crit_edge ], [ -2, %if.end33.fail_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call4) #5
  %68 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end71, %if.end11.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %68, %fail ], [ %call75, %if.end71 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call16.i, %if.end11.i ], [ inttoptr (i32 -116 to ptr), %if.then67.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @btrfs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef %fh, ptr nocapture noundef %max_len, ptr noundef readonly %parent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_len, align 4
  %tobool.not = icmp eq ptr %parent, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp1 = icmp ult i32 %1, 5
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %location.i = getelementptr i8, ptr %inode, i32 -860
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end3.if.then.i_crit_edge, label %lor.lhs.false.i

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end3
  %type.i = getelementptr i8, ptr %inode, i32 -852
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %5)
  %cmp.i = icmp eq i8 %5, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end3.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %inode, i32 40
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %7 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %3, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %8 = ptrtoint ptr %fh to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %ino.0.i, ptr %fh, align 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %root_key, align 1
  %root_objectid = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 1
  %13 = ptrtoint ptr %root_objectid to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %root_objectid, align 1
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %14 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_generation, align 8
  %gen = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 2
  %16 = ptrtoint ptr %gen to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %gen, align 1
  br i1 %tobool.not, label %btrfs_ino.exit.cleanup_crit_edge, label %if.then8

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %btrfs_ino.exit
  %add.ptr.i43 = getelementptr i8, ptr %parent, i32 -864
  %location = getelementptr i8, ptr %parent, i32 -860
  %17 = ptrtoint ptr %location to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %location, align 4
  %parent_objectid = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 3
  %19 = ptrtoint ptr %parent_objectid to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %parent_objectid, align 1
  %i_generation11 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %20 = ptrtoint ptr %i_generation11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_generation11, align 8
  %parent_gen = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 4
  %22 = ptrtoint ptr %parent_gen to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %parent_gen, align 1
  %23 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i43, align 8
  %root_key14 = getelementptr inbounds %struct.btrfs_root, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %root_key14 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %root_key14, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %12)
  %cmp17.not = icmp eq i64 %26, %12
  br i1 %cmp17.not, label %if.then8.cleanup_crit_edge, label %if.then18

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %parent_root_objectid = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 5
  %27 = ptrtoint ptr %parent_root_objectid to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %parent_root_objectid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.then8.cleanup_crit_edge, %btrfs_ino.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %len.1.sink = phi i32 [ 8, %entry.cleanup_crit_edge ], [ 5, %if.else.cleanup_crit_edge ], [ 5, %btrfs_ino.exit.cleanup_crit_edge ], [ 10, %if.then18 ], [ 8, %if.then8.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %if.else.cleanup_crit_edge ], [ 77, %btrfs_ino.exit.cleanup_crit_edge ], [ 79, %if.then18 ], [ 78, %if.then8.cleanup_crit_edge ]
  %28 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len.1.sink, ptr %max_len, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @btrfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %fh_type)
  %cmp.not = icmp ne i32 %fh_type, 78
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %fh_len)
  %cmp1 = icmp ult i32 %fh_len, 8
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %fh_type)
  %cmp2.not = icmp ne i32 %fh_type, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %fh_len)
  %cmp4 = icmp ult i32 %fh_len, 10
  %or.cond20 = or i1 %cmp4, %cmp2.not
  br i1 %or.cond20, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %fh_type)
  %cmp6.not = icmp ne i32 %fh_type, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %fh_len)
  %cmp8 = icmp ult i32 %fh_len, 5
  %or.cond21 = or i1 %cmp8, %cmp6.not
  br i1 %or.cond21, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %fh, align 1
  %gen = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %gen, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %1)
  %cmp.i = icmp ult i64 %1, 256
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %root_objectid10 = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %root_objectid10 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %root_objectid10, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2.i = tail call ptr @btrfs_get_fs_root(ptr noundef %7, i64 noundef %5, i1 noundef zeroext true) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @btrfs_iget(ptr noundef %sb, i64 noundef %1, ptr noundef %call2.i) #5
  tail call void @btrfs_put_root(ptr noundef %call2.i) #5
  %cmp.i28.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp12.not.i = icmp eq i32 %9, %3
  br i1 %cmp12.not.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef %call7.i) #5
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call ptr @d_obtain_alias(ptr noundef %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15.i, %if.then13.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true5.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then13.i ], [ %call16.i, %if.end15.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @btrfs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 78, label %if.then
    i32 79, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %fh_len)
  %cmp1 = icmp ult i32 %fh_len, 8
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %root_objectid3 = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 1
  br label %if.end11

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %fh_len)
  %cmp6 = icmp ult i32 %fh_len, 10
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %parent_root_objectid = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 5
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end
  %root_objectid.0.in = phi ptr [ %root_objectid3, %if.end ], [ %parent_root_objectid, %if.end8 ]
  %parent_objectid = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 3
  %1 = ptrtoint ptr %parent_objectid to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %parent_objectid, align 1
  %parent_gen = getelementptr inbounds %struct.btrfs_fid, ptr %fh, i32 0, i32 4
  %3 = ptrtoint ptr %parent_gen to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %parent_gen, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %2)
  %cmp.i = icmp ult i64 %2, 256
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %root_objectid.0.in to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %root_objectid.0 = load i64, ptr %root_objectid.0.in, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2.i = tail call ptr @btrfs_get_fs_root(ptr noundef %7, i64 noundef %root_objectid.0, i1 noundef zeroext true) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @btrfs_iget(ptr noundef %sb, i64 noundef %2, ptr noundef %call2.i) #5
  tail call void @btrfs_put_root(ptr noundef %call2.i) #5
  %cmp.i28.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call7.i, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp12.not.i = icmp eq i32 %9, %4
  br i1 %cmp12.not.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef %call7.i) #5
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call ptr @d_obtain_alias(ptr noundef %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15.i, %if.then13.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ null, %if.then5.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then13.i ], [ %call16.i, %if.end15.i ], [ inttoptr (i32 -116 to ptr), %if.end11.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_get_name(ptr nocapture noundef readonly %parent, ptr noundef %name, ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i94 = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i94, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #5
  %10 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %11 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %12 = call ptr @memset(ptr %key, i32 255, i32 17)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp = icmp eq i16 %15, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i95 = getelementptr i8, ptr %1, i32 -864
  %location.i = getelementptr i8, ptr %1, i32 -860
  %16 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr i8, ptr %1, i32 -852
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %19)
  %cmp.i = icmp eq i8 %19, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %1, i32 40
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %21 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %17, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %call8 = tail call ptr @btrfs_alloc_path() #5
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %btrfs_ino.exit.cleanup_crit_edge, label %if.end10

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %ino.0.i)
  %cmp11 = icmp eq i64 %ino.0.i, 256
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i95, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %root_key, align 1
  %26 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %key, align 8
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -112, ptr %10, align 8
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 -1, ptr %11, align 1
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 2
  %29 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tree_root, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end10
  %31 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %ino.0.i, ptr %key, align 8
  %location.i98 = getelementptr i8, ptr %3, i32 -860
  %32 = ptrtoint ptr %location.i98 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %location.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.not.i99 = icmp eq i64 %33, 0
  br i1 %tobool.not.i99, label %if.else.if.then.i105_crit_edge, label %lor.lhs.false.i102

if.else.if.then.i105_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i105

lor.lhs.false.i102:                               ; preds = %if.else
  %type.i100 = getelementptr i8, ptr %3, i32 -852
  %34 = ptrtoint ptr %type.i100 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %35)
  %cmp.i101 = icmp eq i8 %35, -124
  br i1 %cmp.i101, label %lor.lhs.false.i102.if.then.i105_crit_edge, label %lor.lhs.false.i102.btrfs_ino.exit107_crit_edge

lor.lhs.false.i102.btrfs_ino.exit107_crit_edge:   ; preds = %lor.lhs.false.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %btrfs_ino.exit107

lor.lhs.false.i102.if.then.i105_crit_edge:        ; preds = %lor.lhs.false.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i105

if.then.i105:                                     ; preds = %lor.lhs.false.i102.if.then.i105_crit_edge, %if.else.if.then.i105_crit_edge
  %i_ino.i103 = getelementptr i8, ptr %3, i32 40
  %36 = ptrtoint ptr %i_ino.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino.i103, align 8
  %conv3.i104 = zext i32 %37 to i64
  br label %btrfs_ino.exit107

btrfs_ino.exit107:                                ; preds = %if.then.i105, %lor.lhs.false.i102.btrfs_ino.exit107_crit_edge
  %ino.0.i106 = phi i64 [ %conv3.i104, %if.then.i105 ], [ %33, %lor.lhs.false.i102.btrfs_ino.exit107_crit_edge ]
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %ino.0.i106, ptr %11, align 1
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 12, ptr %10, align 8
  br label %if.end22

if.end22:                                         ; preds = %btrfs_ino.exit107, %if.then13
  %root.0 = phi ptr [ %30, %if.then13 ], [ %9, %btrfs_ino.exit107 ]
  %call23 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root.0, ptr noundef nonnull %key, ptr noundef nonnull %call8, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void @btrfs_free_path(ptr noundef nonnull %call8) #5
  br label %cleanup

if.else27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp28.not = icmp eq i32 %call23, 0
  br i1 %cmp28.not, label %if.end37, label %if.then30

if.then30:                                        ; preds = %if.else27
  br i1 %cmp11, label %if.end37.thread, label %if.else34

if.end37.thread:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call8, i32 0, i32 1
  %40 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slots, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %slots, align 4
  %42 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call8, align 4
  br label %if.then41

if.else34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void @btrfs_free_path(ptr noundef nonnull %call8) #5
  br label %cleanup

if.end37:                                         ; preds = %if.else27
  %44 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call8, align 4
  br i1 %cmp11, label %if.end37.if.then41_crit_edge, label %if.else47

if.end37.if.then41_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %if.end37.if.then41_crit_edge, %if.end37.thread
  %46 = phi ptr [ %43, %if.end37.thread ], [ %45, %if.end37.if.then41_crit_edge ]
  %slots42 = getelementptr inbounds %struct.btrfs_path, ptr %call8, i32 0, i32 1
  %47 = ptrtoint ptr %slots42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots42, align 4
  %mul.i.i.i = mul i32 %48, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %49 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %46, ptr noundef %49, i32 noundef 17) #5
  %add = add i32 %call.i.i, 101
  %50 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr %struct.btrfs_root_ref, ptr %50, i32 1
  %call.i = call zeroext i16 @btrfs_get_16(ptr noundef %46, ptr noundef %50, i32 noundef 16) #5
  br label %if.end55

if.else47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %slots48 = getelementptr inbounds %struct.btrfs_path, ptr %call8, i32 0, i32 1
  %51 = ptrtoint ptr %slots48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slots48, align 4
  %mul.i.i.i108 = mul i32 %52, 25
  %add.i.i.i109 = add i32 %mul.i.i.i108, 101
  %53 = inttoptr i32 %add.i.i.i109 to ptr
  %call.i.i110 = call i32 @btrfs_get_32(ptr noundef %45, ptr noundef %53, i32 noundef 17) #5
  %add51 = add i32 %call.i.i110, 101
  %54 = inttoptr i32 %add51 to ptr
  %add.ptr52 = getelementptr %struct.btrfs_inode_ref, ptr %54, i32 1
  %call.i111 = call zeroext i16 @btrfs_get_16(ptr noundef %45, ptr noundef %54, i32 noundef 8) #5
  br label %if.end55

if.end55:                                         ; preds = %if.else47, %if.then41
  %55 = phi ptr [ %46, %if.then41 ], [ %45, %if.else47 ]
  %name_ptr.0.in = phi ptr [ %add.ptr, %if.then41 ], [ %add.ptr52, %if.else47 ]
  %name_len.0.in = phi i16 [ %call.i, %if.then41 ], [ %call.i111, %if.else47 ]
  %name_len.0 = zext i16 %name_len.0.in to i32
  %name_ptr.0 = ptrtoint ptr %name_ptr.0.in to i32
  call void @read_extent_buffer(ptr noundef %55, ptr noundef %name, i32 noundef %name_ptr.0, i32 noundef %name_len.0) #5
  call void @btrfs_free_path(ptr noundef nonnull %call8) #5
  %arrayidx56 = getelementptr i8, ptr %name, i32 %name_len.0
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx56, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.else34, %if.then26, %btrfs_ino.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then26 ], [ 0, %if.end55 ], [ -2, %if.else34 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %btrfs_ino.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @btrfs_export_ops, !1, !"btrfs_export_ops", i1 false, i1 false}
!1 = !{!"../fs/btrfs/export.c", i32 275, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2158263775, i64 2158264257, i64 2158263812, i64 2158263868, i64 2158263902, i64 2158263926, i64 2158263967, i64 2158263988, i64 2158264016, i64 2158264050}
