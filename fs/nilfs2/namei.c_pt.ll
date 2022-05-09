; ModuleID = '/llk/IR_all_yes/fs/nilfs2/namei.c_pt.bc'
source_filename = "../fs/nilfs2/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.83, %struct.list_head, %struct.list_head, %union.anon.84 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.83 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.nilfs_fid = type { i64, i64, i32, i32, i64 }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@nilfs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @nilfs_lookup, ptr null, ptr @nilfs_permission, ptr null, ptr null, ptr @nilfs_create, ptr @nilfs_link, ptr @nilfs_unlink, ptr @nilfs_symlink, ptr @nilfs_mkdir, ptr @nilfs_rmdir, ptr @nilfs_mknod, ptr @nilfs_rename, ptr @nilfs_setattr, ptr null, ptr null, ptr @nilfs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_fileattr_set, ptr @nilfs_fileattr_get, [36 x i8] undef }, align 128
@nilfs_special_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @nilfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@nilfs_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr @nilfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@nilfs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @nilfs_encode_fh, ptr @nilfs_fh_to_dentry, ptr @nilfs_fh_to_parent, ptr null, ptr @nilfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@nilfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@nilfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nilfs_aops = external dso_local constant %struct.address_space_operations, align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014deleting nonexistent file (ino=%lu), %d\00", [54 x i8] zeroinitializer }, align 32
@nilfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@dotdot_name = external dso_local constant %struct.qstr, align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"nilfs_export_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 568, i32 32 }
@___asan_gen_.8 = private constant [21 x i8] c"../fs/nilfs2/namei.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 277, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 55, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 717, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @nilfs_export_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nilfs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nilfs_inode_by_name(ptr noundef %dir, ptr noundef %d_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %i_root = getelementptr i8, ptr %dir, i32 -8
  %4 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_root, align 8
  %call4 = tail call ptr @nilfs_iget(ptr noundef %3, ptr noundef %5, i32 noundef %call2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call4, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  %call5 = tail call ptr @d_splice_alias(ptr noundef %cond, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %cond.end ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @nilfs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %3 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nilfs_file_inode_operations, ptr %i_op, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nilfs_file_operations, ptr %4, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nilfs_aops, ptr %a_ops, align 4
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #7
  %call.i28 = call i32 @nilfs_add_link(ptr noundef %dentry, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i, label %if.end7.thread, label %if.end7.thread31

if.end7.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #7
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call11 = call i32 @nilfs_transaction_commit(ptr noundef %10) #7
  br label %cleanup

if.end7.thread31:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef %call1) #7
  call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #7
  call void @unlock_new_inode(ptr noundef %call1) #7
  call void @iput(ptr noundef %call1) #7
  br label %if.else

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call1 to i32
  br label %if.else

if.else:                                          ; preds = %if.end7, %if.end7.thread31
  %err.034 = phi i32 [ %call.i28, %if.end7.thread31 ], [ %11, %if.end7 ]
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end7.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.034, %if.else ], [ %call11, %if.end7.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_link(ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef readonly %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call1 = call i32 @nilfs_transaction_begin(ptr noundef %4, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #7
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @inc_nlink(ptr noundef %1) #7
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  call void @ihold(ptr noundef %1) #7
  %call2 = call i32 @nilfs_add_link(ptr noundef %dentry, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #7
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %call6 = call i32 @nilfs_transaction_commit(ptr noundef %7) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef %1) #7
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  call void @iput(ptr noundef %1) #7
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.else ], [ %call6, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @nilfs_do_unlink(ptr noundef %dir, ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #7
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %call.i20 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %4, i32 noundef 7) #7
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call8 = call i32 @nilfs_transaction_commit(ptr noundef %6) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ %call8, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @strlen(ptr noundef %symname) #10
  %add = add i32 %call, 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp = icmp ugt i32 %add, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @nilfs_new_inode(ptr noundef %dir, i16 noundef zeroext -24065) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end9

if.end9:                                          ; preds = %if.end4
  %i_op = getelementptr inbounds %struct.inode, ptr %call5, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nilfs_symlink_inode_operations, ptr %i_op, align 8
  call void @inode_nohighmem(ptr noundef %call5) #7
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nilfs_aops, ptr %a_ops, align 4
  %call10 = call i32 @page_symlink(ptr noundef %call5, ptr noundef %symname, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %out_fail

if.end13:                                         ; preds = %if.end9
  %call.i = call i32 @nilfs_add_link(ptr noundef %dentry, ptr noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %out.thread50, label %if.end.i

out.thread50:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call5) #7
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call18 = call i32 @nilfs_transaction_commit(ptr noundef %10) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef %call5) #7
  call void @__mark_inode_dirty(ptr noundef %call5, i32 noundef 7) #7
  call void @unlock_new_inode(ptr noundef %call5) #7
  call void @iput(ptr noundef %call5) #7
  br label %if.else

out:                                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call5 to i32
  br label %if.else

if.else:                                          ; preds = %out_fail, %out, %if.end.i
  %err.049 = phi i32 [ %11, %out ], [ %call.i, %if.end.i ], [ %call10, %out_fail ]
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %13) #7
  br label %cleanup

out_fail:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef %call5) #7
  %call.i46 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %call5, i32 noundef 7) #7
  call void @unlock_new_inode(ptr noundef %call5) #7
  call void @iput(ptr noundef %call5) #7
  br label %if.else

cleanup:                                          ; preds = %if.else, %out.thread50, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %err.049, %if.else ], [ %call18, %out.thread50 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @inc_nlink(ptr noundef %dir) #7
  %3 = or i16 %mode, 16384
  %call2 = call ptr @nilfs_new_inode(ptr noundef %dir, i16 noundef zeroext %3) #7
  %4 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nilfs_dir_inode_operations, ptr %i_op, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nilfs_dir_operations, ptr %6, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nilfs_aops, ptr %a_ops, align 4
  call void @inc_nlink(ptr noundef %call2) #7
  %call7 = call i32 @nilfs_make_empty(ptr noundef %call2, ptr noundef %dir) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_fail_crit_edge

if.end6.out_fail_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @nilfs_add_link(ptr noundef %dentry, ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %out.thread, label %if.end10.out_fail_crit_edge

if.end10.out_fail_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail

out.thread:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #7
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call2) #7
  br label %if.then17

out:                                              ; preds = %out_fail, %if.end.out_crit_edge
  %err.3 = phi i32 [ %4, %if.end.out_crit_edge ], [ %err.2, %out_fail ]
  call void @drop_nlink(ptr noundef %dir) #7
  %call.i54 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool16.not = icmp eq i32 %err.3, 0
  br i1 %tobool16.not, label %out.if.then17_crit_edge, label %if.else

out.if.then17_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %out.if.then17_crit_edge, %out.thread
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call19 = call i32 @nilfs_transaction_commit(ptr noundef %12) #7
  br label %cleanup

if.else:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %14) #7
  br label %cleanup

out_fail:                                         ; preds = %if.end10.out_fail_crit_edge, %if.end6.out_fail_crit_edge
  %err.2 = phi i32 [ %call7, %if.end6.out_fail_crit_edge ], [ %call11, %if.end10.out_fail_crit_edge ]
  call void @drop_nlink(ptr noundef %call2) #7
  call void @drop_nlink(ptr noundef %call2) #7
  %call.i53 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #7
  call void @unlock_new_inode(ptr noundef %call2) #7
  call void @iput(ptr noundef %call2) #7
  br label %out

cleanup:                                          ; preds = %if.else, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.3, %if.else ], [ %call19, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call1 = call i32 @nilfs_transaction_begin(ptr noundef %4, ptr noundef nonnull %ti, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @nilfs_empty_dir(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.else_crit_edge, label %if.then4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @nilfs_do_unlink(ptr noundef %dir, ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then13, label %if.then4.if.else_crit_edge

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then13:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %i_size, align 8
  call void @drop_nlink(ptr noundef %1) #7
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  call void @drop_nlink(ptr noundef %dir) #7
  %call.i33 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #7
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %call15 = call i32 @nilfs_transaction_commit(ptr noundef %7) #7
  br label %cleanup

if.else:                                          ; preds = %if.then4.if.else_crit_edge, %if.end.if.else_crit_edge
  %err.0.ph = phi i32 [ -39, %if.end.if.else_crit_edge ], [ %call5, %if.then4.if.else_crit_edge ]
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %err.0.ph, %if.else ], [ %call15, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @nilfs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call1, align 8
  call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %4, i32 noundef %rdev) #7
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #7
  %call.i27 = call i32 @nilfs_add_link(ptr noundef %dentry, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %if.end7.thread, label %if.end7.thread30

if.end7.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #7
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call11 = call i32 @nilfs_transaction_commit(ptr noundef %6) #7
  br label %cleanup

if.end7.thread30:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef %call1) #7
  call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #7
  call void @unlock_new_inode(ptr noundef %call1) #7
  call void @iput(ptr noundef %call1) #7
  br label %if.else

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call1 to i32
  br label %if.else

if.else:                                          ; preds = %if.end7, %if.end7.thread30
  %err.033 = phi i32 [ %call.i27, %if.end7.thread30 ], [ %7, %if.end7 ]
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end7.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.033, %if.else ], [ %call11, %if.end7.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dir_page = alloca ptr, align 4
  %old_page = alloca ptr, align 4
  %ti = alloca %struct.nilfs_transaction_info, align 4
  %new_page = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp48 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i108 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i108 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i108, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir_page) #7
  %4 = ptrtoint ptr %dir_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dir_page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page) #7
  %5 = ptrtoint ptr %old_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  %6 = call ptr @memset(ptr %ti, i32 255, i32 12)
  br i1 %tobool.not, label %if.end, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %call2 = call i32 @nilfs_transaction_begin(ptr noundef %8, ptr noundef nonnull %ti, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.end.cleanup61_crit_edge, !prof !24

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end7:                                          ; preds = %if.end
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call8 = call ptr @nilfs_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %old_page) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp eq i16 %11, 16384
  br i1 %cmp, label %if.then14, label %if.end19.thread

if.then14:                                        ; preds = %if.end11
  %call15 = call ptr @nilfs_dotdot(ptr noundef %1, ptr noundef nonnull %dir_page) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then14.out_old_crit_edge, label %if.end19

if.then14.out_old_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_old

if.end19:                                         ; preds = %if.then14
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.else, label %land.lhs.true

if.end19.thread:                                  ; preds = %if.end11
  %tobool20.not139 = icmp eq ptr %3, null
  br i1 %tobool20.not139, label %if.else.thread, label %if.then21.thread

if.then21.thread:                                 ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #7
  %12 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !23
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #7
  %13 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !23
  %call23 = call i32 @nilfs_empty_dir(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %out_dir.thread167, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

out_dir.thread167:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #7
  br label %if.then58

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.then21.thread
  %dir_de.0140147 = phi ptr [ null, %if.then21.thread ], [ %call15, %land.lhs.true.if.end26_crit_edge ]
  %d_name27 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call28 = call ptr @nilfs_find_entry(ptr noundef %new_dir, ptr noundef %d_name27, ptr noundef nonnull %new_page) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %out_dir, label %if.end31

if.end31:                                         ; preds = %if.end26
  %14 = ptrtoint ptr %new_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_page, align 4
  call void @nilfs_set_link(ptr noundef %new_dir, ptr noundef nonnull %call28, ptr noundef %15, ptr noundef %1) #7
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %3) #7
  %16 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  br i1 %cmp, label %if.then34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge
  call void @drop_nlink(ptr noundef nonnull %3) #7
  %call.i109 = call i32 @__nilfs_mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #7
  br label %if.end46

if.else:                                          ; preds = %if.end19
  %call38 = call i32 @nilfs_add_link(ptr noundef %new_dentry, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then43, label %if.else.if.then58_crit_edge

if.else.if.then58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.else.thread:                                   ; preds = %if.end19.thread
  %call38154 = call i32 @nilfs_add_link(ptr noundef %new_dentry, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38154)
  %tobool39.not155 = icmp eq i32 %call38154, 0
  br i1 %tobool39.not155, label %if.else.thread.if.end46_crit_edge, label %if.else.thread.out_old_crit_edge

if.else.thread.out_old_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_old

if.else.thread.if.end46_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @inc_nlink(ptr noundef %new_dir) #7
  %call.i110 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.else.thread.if.end46_crit_edge, %cleanup
  %dir_de.0143 = phi ptr [ %dir_de.0140147, %cleanup ], [ %call15, %if.then43 ], [ null, %if.else.thread.if.end46_crit_edge ]
  %i_ctime47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp48) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp48, ptr noundef %1) #7
  %17 = call ptr @memcpy(ptr %i_ctime47, ptr %tmp48, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp48) #7
  %18 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %old_page, align 4
  %call49 = call i32 @nilfs_delete_entry(ptr noundef nonnull %call8, ptr noundef %19) #7
  %tobool50.not = icmp eq ptr %dir_de.0143, null
  br i1 %tobool50.not, label %if.end46.if.end52_crit_edge, label %if.then51

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dir_page, align 4
  call void @nilfs_set_link(ptr noundef %1, ptr noundef nonnull %dir_de.0143, ptr noundef %21, ptr noundef %new_dir) #7
  call void @drop_nlink(ptr noundef %old_dir) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end46.if.end52_crit_edge
  %call.i111 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #7
  %call.i112 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %call56 = call i32 @nilfs_transaction_commit(ptr noundef %23) #7
  br label %cleanup61

out_dir:                                          ; preds = %if.end26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #7
  %tobool57.not = icmp eq ptr %dir_de.0140147, null
  br i1 %tobool57.not, label %out_dir.out_old_crit_edge, label %out_dir.if.then58_crit_edge

out_dir.if.then58_crit_edge:                      ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

out_dir.out_old_crit_edge:                        ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_old

if.then58:                                        ; preds = %out_dir.if.then58_crit_edge, %if.else.if.then58_crit_edge, %out_dir.thread167
  %err.1166 = phi i32 [ -2, %out_dir.if.then58_crit_edge ], [ -39, %out_dir.thread167 ], [ %call38, %if.else.if.then58_crit_edge ]
  %24 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dir_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 55) #7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.then58.kunmap.exit_crit_edge [
    i32 2, label %if.then58.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then58.if.end.i_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then58.kunmap.exit_crit_edge:                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then58.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %25) #7
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then58.kunmap.exit_crit_edge
  %30 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dir_page, align 4
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %31 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !25

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %39 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_rename, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !30

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_old_crit_edge

folio_put_testzero.exit.i.i.out_old_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_old

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %36) #7
  br label %out_old

out_old:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_old_crit_edge, %out_dir.out_old_crit_edge, %if.else.thread.out_old_crit_edge, %if.then14.out_old_crit_edge
  %err.2 = phi i32 [ -2, %out_dir.out_old_crit_edge ], [ -5, %if.then14.out_old_crit_edge ], [ %err.1166, %folio_put_testzero.exit.i.i.out_old_crit_edge ], [ %err.1166, %if.then.i4.i ], [ %call38154, %if.else.thread.out_old_crit_edge ]
  %40 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %old_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 55) #7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %shr.i.i113 = lshr i32 %43, 30
  %44 = zext i32 %shr.i.i113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %shr.i.i113, label %out_old.kunmap.exit117_crit_edge [
    i32 2, label %out_old.if.end.i116_crit_edge
    i32 3, label %is_highmem_idx.exit.i115
  ]

out_old.if.end.i116_crit_edge:                    ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i116

out_old.kunmap.exit117_crit_edge:                 ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit117

is_highmem_idx.exit.i115:                         ; preds = %out_old
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %45 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp2.i.not.i114 = icmp eq i32 %45, 2
  br i1 %cmp2.i.not.i114, label %is_highmem_idx.exit.i115.if.end.i116_crit_edge, label %is_highmem_idx.exit.i115.kunmap.exit117_crit_edge

is_highmem_idx.exit.i115.kunmap.exit117_crit_edge: ; preds = %is_highmem_idx.exit.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %kunmap.exit117

is_highmem_idx.exit.i115.if.end.i116_crit_edge:   ; preds = %is_highmem_idx.exit.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i116

if.end.i116:                                      ; preds = %is_highmem_idx.exit.i115.if.end.i116_crit_edge, %out_old.if.end.i116_crit_edge
  call void @kunmap_high(ptr noundef %41) #7
  br label %kunmap.exit117

kunmap.exit117:                                   ; preds = %if.end.i116, %is_highmem_idx.exit.i115.kunmap.exit117_crit_edge, %out_old.kunmap.exit117_crit_edge
  %46 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %old_page, align 4
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i118 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i.i119, label %if.end.i.i122, label %if.then.i.i121, !prof !24

if.then.i.i121:                                   ; preds = %kunmap.exit117
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i120 = add i32 %50, -1
  br label %_compound_head.exit.i127

if.end.i.i122:                                    ; preds = %kunmap.exit117
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %47 to i32
  br label %_compound_head.exit.i127

_compound_head.exit.i127:                         ; preds = %if.end.i.i122, %if.then.i.i121
  %retval.0.i.i123 = phi i32 [ %sub.i.i120, %if.then.i.i121 ], [ %51, %if.end.i.i122 ]
  %52 = inttoptr i32 %retval.0.i.i123 to ptr
  %_refcount.i.i.i.i.i124 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  %call.i.i.i.i.i.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i124, i32 noundef 4) #7
  %53 = ptrtoint ptr %_refcount.i.i.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %_refcount.i.i.i.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i.i.i126 = icmp eq i32 %54, 0
  br i1 %cmp.i.i.i.i126, label %if.then.i.i.i.i128, label %do.end5.i.i.i.i132, !prof !25

if.then.i.i.i.i128:                               ; preds = %_compound_head.exit.i127
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.2) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

do.end5.i.i.i.i132:                               ; preds = %_compound_head.exit.i127
  %call.i.i.i10.i.i.i.i129 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i124, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i124, i32 1, i32 3, i32 1) #7
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i124, ptr %_refcount.i.i.i.i.i124, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i124) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i130 = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i130)
  %cmp.i.i.i.i.i.i.i131 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i130, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_rename, %if.then.i.i.i.i.i134)) #7
          to label %folio_put_testzero.exit.i.i135 [label %if.then.i.i.i.i.i134], !srcloc !30

if.then.i.i.i.i.i134:                             ; preds = %do.end5.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i133 = zext i1 %cmp.i.i.i.i.i.i.i131 to i32
  call void @__page_ref_mod_and_test(ptr noundef %52, i32 noundef -1, i32 noundef %conv.i.i.i.i.i133) #7
  br label %folio_put_testzero.exit.i.i135

folio_put_testzero.exit.i.i135:                   ; preds = %if.then.i.i.i.i.i134, %do.end5.i.i.i.i132
  br i1 %cmp.i.i.i.i.i.i.i131, label %if.then.i4.i136, label %folio_put_testzero.exit.i.i135.out_crit_edge

folio_put_testzero.exit.i.i135.out_crit_edge:     ; preds = %folio_put_testzero.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i4.i136:                                  ; preds = %folio_put_testzero.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %52) #7
  br label %out

out:                                              ; preds = %if.then.i4.i136, %folio_put_testzero.exit.i.i135.out_crit_edge, %if.end7.out_crit_edge
  %err.3 = phi i32 [ -2, %if.end7.out_crit_edge ], [ %err.2, %folio_put_testzero.exit.i.i135.out_crit_edge ], [ %err.2, %if.then.i4.i136 ]
  %56 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %57) #7
  br label %cleanup61

cleanup61:                                        ; preds = %out, %if.end52, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ %call56, %if.end52 ], [ -22, %entry.cleanup61_crit_edge ], [ %call2, %if.end.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_page) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fileattr_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %lenp, ptr noundef readonly %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_root, align 8
  %tobool.not = icmp eq ptr %parent, null
  %2 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %lenp, align 4
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp = icmp ult i32 %.pr, 8
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp1 = icmp ult i32 %.pr, 5
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %land.lhs.true.if.end3_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %1, align 8
  %5 = ptrtoint ptr %fh to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %fh, align 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %7 to i64
  %ino = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 1
  %8 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv, ptr %ino, align 1
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation, align 8
  %gen = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 2
  %11 = ptrtoint ptr %gen to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %gen, align 1
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino7 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino7, align 8
  %conv8 = zext i32 %13 to i64
  %parent_ino = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 4
  %14 = ptrtoint ptr %parent_ino to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv8, ptr %parent_ino, align 1
  %i_generation9 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %15 = ptrtoint ptr %i_generation9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_generation9, align 8
  %parent_gen = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 3
  %17 = ptrtoint ptr %parent_gen to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %parent_gen, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %storemerge.sink = phi i32 [ 8, %land.lhs.true.cleanup_crit_edge ], [ 5, %if.end.cleanup_crit_edge ], [ 8, %if.then6 ], [ 5, %if.end3.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 255, %land.lhs.true.cleanup_crit_edge ], [ 255, %if.end.cleanup_crit_edge ], [ 98, %if.then6 ], [ 97, %if.end3.cleanup_crit_edge ]
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.sink, ptr %lenp, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nilfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp = icmp ugt i32 %fh_len, 4
  %fh_type.off = add i32 %fh_type, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type.off)
  %switch = icmp ult i32 %fh_type.off, 2
  %or.cond = and i1 %cmp, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ino = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %ino, align 1
  %gen = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %gen, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_first_ino.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %ns_first_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_first_ino.i, align 8
  %conv.i = sext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.i = icmp uge i64 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %1)
  %cmp2.not.i = icmp eq i64 %1, 2
  %or.cond.i = or i1 %cmp2.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %fh to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %fh, align 1
  %call5.i = tail call ptr @nilfs_lookup_root(ptr noundef %5, i64 noundef %9) #7
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %conv9.i = trunc i64 %1 to i32
  %call10.i = tail call ptr @nilfs_iget(ptr noundef %sb, ptr noundef nonnull %call5.i, i32 noundef %conv9.i) #7
  tail call void @nilfs_put_root(ptr noundef nonnull %call5.i) #7
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.i.cleanup_crit_edge, label %if.end14.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not.i = icmp eq i32 %3, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end21.i_crit_edge, label %land.lhs.true16.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true16.i:                                ; preds = %if.end14.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call10.i, i32 0, i32 49
  %10 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp17.not.i = icmp eq i32 %11, %3
  br i1 %cmp17.not.i, label %land.lhs.true16.i.if.end21.i_crit_edge, label %if.then19.i

land.lhs.true16.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then19.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iput(ptr noundef %call10.i) #7
  br label %cleanup

if.end21.i:                                       ; preds = %land.lhs.true16.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %call22.i = tail call ptr @d_obtain_alias(ptr noundef %call10.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then19.i, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then19.i ], [ %call22.i, %if.end21.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.cleanup_crit_edge ], [ %call10.i, %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nilfs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fh, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %fh_len)
  %cmp = icmp ugt i32 %fh_len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %fh_type)
  %cmp1.not = icmp eq i32 %fh_type, 98
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_ino = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 4
  %0 = ptrtoint ptr %parent_ino to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %parent_ino, align 1
  %parent_gen = getelementptr inbounds %struct.nilfs_fid, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %parent_gen to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %parent_gen, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_first_ino.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %ns_first_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_first_ino.i, align 8
  %conv.i = sext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv.i)
  %cmp.i = icmp uge i64 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %1)
  %cmp2.not.i = icmp eq i64 %1, 2
  %or.cond.i = or i1 %cmp2.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %fh to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %fh, align 1
  %call5.i = tail call ptr @nilfs_lookup_root(ptr noundef %5, i64 noundef %9) #7
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %conv9.i = trunc i64 %1 to i32
  %call10.i = tail call ptr @nilfs_iget(ptr noundef %sb, ptr noundef nonnull %call5.i, i32 noundef %conv9.i) #7
  tail call void @nilfs_put_root(ptr noundef nonnull %call5.i) #7
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.i.cleanup_crit_edge, label %if.end14.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not.i = icmp eq i32 %3, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end21.i_crit_edge, label %land.lhs.true16.i

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true16.i:                                ; preds = %if.end14.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call10.i, i32 0, i32 49
  %10 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp17.not.i = icmp eq i32 %11, %3
  br i1 %cmp17.not.i, label %land.lhs.true16.i.if.end21.i_crit_edge, label %if.then19.i

land.lhs.true16.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then19.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iput(ptr noundef %call10.i) #7
  br label %cleanup

if.end21.i:                                       ; preds = %land.lhs.true16.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %call22.i = tail call ptr @d_obtain_alias(ptr noundef %call10.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then19.i, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then19.i ], [ %call22.i, %if.end21.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.i.cleanup_crit_edge ], [ %call10.i, %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nilfs_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @nilfs_inode_by_name(ptr noundef %1, ptr noundef nonnull @dotdot_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_root = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %call5 = tail call ptr @nilfs_iget(ptr noundef %7, ptr noundef %5, i32 noundef %call1) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call ptr @d_obtain_alias(ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.end9 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_inode_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_new_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_transaction_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nilfs_mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_add_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_do_unlink(ptr noundef %dir, ptr noundef %dentry) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #7
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !23
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call = call ptr @nilfs_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %page) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %call, align 8
  %5 = call i64 @llvm.bswap.i64(i64 %4)
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp.not = icmp eq i64 %5, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef 0) #7
  call void @set_nlink(ptr noundef %2, i32 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %call10 = call i32 @nilfs_delete_entry(ptr noundef nonnull %call, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  %i_ctime14 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime14, i32 16)
  call void @drop_nlink(ptr noundef %2) #7
  br label %out

out:                                              ; preds = %if.end13, %if.end9.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -5, %if.end.out_crit_edge ], [ %call10, %if.end9.out_crit_edge ], [ 0, %if.end13 ], [ -2, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_find_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_delete_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_make_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_empty_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_dotdot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_lookup_root(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_put_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @nilfs_dir_inode_operations, !1, !"nilfs_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/namei.c", i32 541, i32 31}
!2 = !{ptr @nilfs_special_inode_operations, !3, !"nilfs_special_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/namei.c", i32 558, i32 31}
!4 = !{ptr @nilfs_symlink_inode_operations, !5, !"nilfs_symlink_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/namei.c", i32 563, i32 31}
!6 = !{ptr @nilfs_export_ops, !7, !"nilfs_export_ops", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/namei.c", i32 568, i32 32}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/namei.c", i32 277, i32 3}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2153160972, i64 2153161455, i64 2153161009, i64 2153161065, i64 2153161099, i64 2153161123, i64 2153161164, i64 2153161185, i64 2153161213, i64 2153161247}
!27 = !{i64 2148803452}
!28 = !{i64 2148718161, i64 2148718193, i64 2148718222, i64 2148718256, i64 2148718287, i64 2148718310}
!29 = !{i64 2148803681}
!30 = !{i64 2148315653, i64 2148315658, i64 2148315671, i64 2148315715, i64 2148315749, i64 2148315770}
