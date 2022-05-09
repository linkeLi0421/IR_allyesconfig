; ModuleID = '/llk/IR_all_yes/fs/ext2/namei.c_pt.bc'
source_filename = "../fs/ext2/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.71 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.page = type { i32, %union.anon.26, %union.anon.36, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.36 = type { %struct.atomic_t }
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
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }

@dotdot_name = external dso_local constant %struct.qstr, align 8
@ext2_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @ext2_lookup, ptr null, ptr null, ptr @ext2_get_acl, ptr null, ptr @ext2_create, ptr @ext2_link, ptr @ext2_unlink, ptr @ext2_symlink, ptr @ext2_mkdir, ptr @ext2_rmdir, ptr @ext2_mknod, ptr @ext2_rename, ptr @ext2_setattr, ptr @ext2_getattr, ptr @ext2_listxattr, ptr null, ptr null, ptr null, ptr @ext2_tmpfile, ptr @ext2_set_acl, ptr @ext2_fileattr_set, ptr @ext2_fileattr_get, [36 x i8] undef }, align 128
@ext2_special_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @ext2_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext2_setattr, ptr @ext2_getattr, ptr @ext2_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @ext2_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@__func__.ext2_lookup = private unnamed_addr constant [12 x i8] c"ext2_lookup\00", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"deleted inode referenced: %lu\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ext2_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_nobh_aops = external dso_local constant %struct.address_space_operations, align 4
@ext2_aops = external dso_local constant %struct.address_space_operations, align 4
@ext2_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_dir_operations = external dso_local constant %struct.file_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.3 = private constant [19 x i8] c"../fs/ext2/namei.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 74, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 717, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_get_parent(ptr nocapture noundef readonly %child) local_unnamed_addr #0 align 64 {
entry:
  %ino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #6
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ino, align 4, !annotation !19
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %call1 = call i32 @ext2_inode_by_name(ptr noundef %2, ptr noundef nonnull @dotdot_name, ptr noundef nonnull %ino) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = inttoptr i32 %call1 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ino, align 4
  %call3 = call ptr @ext2_iget(ptr noundef %5, i32 noundef %7) #6
  %call4 = call ptr @d_obtain_alias(ptr noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_inode_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext2_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %ino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #6
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ino, align 4, !annotation !19
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp = icmp ugt i32 %2, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @ext2_inode_by_name(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %ino) #6
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.then5 [
    i32 0, label %if.else
    i32 -2, label %if.end.if.end15_crit_edge
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.else:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ino, align 4
  %call8 = call ptr @ext2_iget(ptr noundef %6, i32 noundef %8) #6
  %cmp10 = icmp eq ptr %call8, inttoptr (i32 -116 to ptr)
  br i1 %cmp10, label %if.then11, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %11 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ino, align 4
  call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %10, ptr noundef nonnull @__func__.ext2_lookup, ptr noundef nonnull @.str, i32 noundef %12) #6
  br label %cleanup

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %inode.0 = phi ptr [ %call8, %if.else.if.end15_crit_edge ], [ null, %if.end.if.end15_crit_edge ]
  %call16 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then5 ], [ %call16, %if.end15 ], [ inttoptr (i32 -5 to ptr), %if.then11 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = tail call ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef %d_name) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @ext2_set_file_ops(ptr noundef %call1) #6
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #6
  %call.i = tail call i32 @ext2_add_link(ptr noundef %dentry, ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drop_nlink(ptr noundef %call1) #6
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #6
  tail call void @discard_new_inode(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #6
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  call void @inc_nlink(ptr noundef %1) #6
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  call void @ihold(ptr noundef %1) #6
  %call2 = call i32 @ext2_add_link(ptr noundef %dentry, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @drop_nlink(ptr noundef %1) #6
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  call void @iput(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end5 ], [ 0, %if.then4 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %page_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #6
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #6
  %3 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !19
  %call1 = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call ptr @ext2_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %page, ptr noundef nonnull %page_addr) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  br label %out

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page, align 4
  %7 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_addr, align 4
  %call7 = call i32 @ext2_delete_entry(ptr noundef %call2, ptr noundef %6, ptr noundef %8) #6
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  %11 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page_addr, align 4
  call void @kunmap_local_indexed(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !20

if.then.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %15, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %16, %if.end.i.i.i ]
  %17 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !21

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.1) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_unlink, %if.then.i.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.ext2_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.ext2_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ext2_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %17) #6
  br label %ext2_put_page.exit

ext2_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.ext2_put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %ext2_put_page.exit.out_crit_edge

ext2_put_page.exit.out_crit_edge:                 ; preds = %ext2_put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %ext2_put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime11 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %21 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime11, i32 16)
  call void @drop_nlink(ptr noundef %1) #6
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  br label %out

out:                                              ; preds = %if.end10, %ext2_put_page.exit.out_crit_edge, %if.then4, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %4, %if.then4 ], [ %call7, %ext2_put_page.exit.out_crit_edge ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @strlen(ptr noundef %symname) #9
  %add = add i32 %call, 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call4 = tail call ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext -24065, ptr noundef %d_name) #6
  %4 = ptrtoint ptr %call4 to i32
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.out_crit_edge, label %if.end8

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %add)
  %cmp9 = icmp ugt i32 %add, 60
  %i_op = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  br i1 %cmp9, label %if.then10, label %if.else22

if.then10:                                        ; preds = %if.end8
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ext2_symlink_inode_operations, ptr %i_op, align 8
  tail call void @inode_nohighmem(ptr noundef %call4) #6
  %i_sb11 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb11, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %i_mapping15 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping15, align 8
  %a_ops16 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %ext2_aops.ext2_nobh_aops = select i1 %tobool13.not, ptr @ext2_aops, ptr @ext2_nobh_aops
  %14 = ptrtoint ptr %a_ops16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ext2_aops.ext2_nobh_aops, ptr %a_ops16, align 4
  %call18 = tail call i32 @page_symlink(ptr noundef %call4, ptr noundef %symname, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then10.if.end25_crit_edge, label %out_fail

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ext2_fast_symlink_inode_operations, ptr %i_op, align 8
  %add.ptr.i = getelementptr i8, ptr %call4, i32 -328
  %16 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 48
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %16, align 4
  %18 = call ptr @memcpy(ptr %add.ptr.i, ptr %symname, i32 %add)
  %conv = zext i32 %call to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %i_size, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then10.if.end25_crit_edge
  tail call void @__mark_inode_dirty(ptr noundef %call4, i32 noundef 7) #6
  %call.i = tail call i32 @ext2_add_link(ptr noundef %dentry, ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call4) #6
  br label %out

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drop_nlink(ptr noundef %call4) #6
  tail call void @__mark_inode_dirty(ptr noundef %call4, i32 noundef 7) #6
  tail call void @discard_new_inode(ptr noundef %call4) #6
  br label %out

out:                                              ; preds = %out_fail, %if.end.i, %if.then.i, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -36, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ %4, %if.end3.out_crit_edge ], [ %call18, %out_fail ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %err.0

out_fail:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drop_nlink(ptr noundef %call4) #6
  tail call void @__mark_inode_dirty(ptr noundef %call4, i32 noundef 7) #6
  tail call void @discard_new_inode(ptr noundef %call4) #6
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @inc_nlink(ptr noundef %dir) #6
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #6
  %0 = or i16 %mode, 16384
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = tail call ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext %0, ptr noundef %d_name) #6
  %1 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_dir_crit_edge, label %if.end6

if.end.out_dir_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dir

if.end6:                                          ; preds = %if.end
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ext2_dir_inode_operations, ptr %i_op, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ext2_dir_operations, ptr %3, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %i_mapping10 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping10, align 8
  %a_ops11 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %ext2_aops.ext2_nobh_aops = select i1 %tobool8.not, ptr @ext2_aops, ptr @ext2_nobh_aops
  %13 = ptrtoint ptr %a_ops11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ext2_aops.ext2_nobh_aops, ptr %a_ops11, align 4
  tail call void @inc_nlink(ptr noundef %call2) #6
  tail call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #6
  %call13 = tail call i32 @ext2_make_empty(ptr noundef %call2, ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end6.out_fail_crit_edge

if.end6.out_fail_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end16:                                         ; preds = %if.end6
  %call17 = tail call i32 @ext2_add_link(ptr noundef %dentry, ptr noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_fail_crit_edge

if.end16.out_fail_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call2) #6
  br label %cleanup

out_fail:                                         ; preds = %if.end16.out_fail_crit_edge, %if.end6.out_fail_crit_edge
  %err.1 = phi i32 [ %call13, %if.end6.out_fail_crit_edge ], [ %call17, %if.end16.out_fail_crit_edge ]
  tail call void @drop_nlink(ptr noundef %call2) #6
  tail call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #6
  tail call void @drop_nlink(ptr noundef %call2) #6
  tail call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #6
  tail call void @discard_new_inode(ptr noundef %call2) #6
  br label %out_dir

out_dir:                                          ; preds = %out_fail, %if.end.out_dir_crit_edge
  %err.2 = phi i32 [ %1, %if.end.out_dir_crit_edge ], [ %err.1, %out_fail ]
  tail call void @drop_nlink(ptr noundef %dir) #6
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #6
  br label %cleanup

cleanup:                                          ; preds = %out_dir, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.2, %out_dir ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @ext2_empty_dir(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @ext2_unlink(ptr noundef %dir, ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i_size, align 8
  tail call void @drop_nlink(ptr noundef %1) #6
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  tail call void @drop_nlink(ptr noundef %dir) #6
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %call2, %if.then.if.end5_crit_edge ], [ 0, %if.then4 ], [ -39, %entry.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_initialize(ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = tail call ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef %d_name) #6
  %0 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %call1, align 8
  tail call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %2, i32 noundef %rdev) #6
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %3 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ext2_special_inode_operations, ptr %i_op, align 8
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #6
  %call.i = tail call i32 @ext2_add_link(ptr noundef %dentry, ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drop_nlink(ptr noundef %call1) #6
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #6
  tail call void @discard_new_inode(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dir_page = alloca ptr, align 4
  %dir_page_addr = alloca ptr, align 4
  %old_page = alloca ptr, align 4
  %old_page_addr = alloca ptr, align 4
  %page_addr = alloca ptr, align 4
  %new_page = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp50 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i108 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i108 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i108, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir_page) #6
  %4 = ptrtoint ptr %dir_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dir_page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir_page_addr) #6
  %5 = ptrtoint ptr %dir_page_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %dir_page_addr, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page) #6
  %6 = ptrtoint ptr %old_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page_addr) #6
  %7 = ptrtoint ptr %old_page_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page_addr, align 4, !annotation !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dquot_initialize(ptr noundef %old_dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup62_crit_edge

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @dquot_initialize(ptr noundef %new_dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup62_crit_edge

if.end5.cleanup62_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end9:                                          ; preds = %if.end5
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call10 = call ptr @ext2_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %old_page, ptr noundef nonnull %old_page_addr) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call10 to i32
  br label %cleanup62

if.end14:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp eq i16 %11, 16384
  br i1 %cmp, label %if.then17, label %if.end22.thread

if.then17:                                        ; preds = %if.end14
  %call18 = call ptr @ext2_dotdot(ptr noundef %1, ptr noundef nonnull %dir_page, ptr noundef nonnull %dir_page_addr) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.out_old_crit_edge, label %if.end22

if.then17.out_old_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_old

if.end22:                                         ; preds = %if.then17
  %tobool23.not = icmp eq ptr %3, null
  br i1 %tobool23.not, label %if.else, label %land.lhs.true

if.end22.thread:                                  ; preds = %if.end14
  %tobool23.not111 = icmp eq ptr %3, null
  br i1 %tobool23.not111, label %if.else.thread, label %if.then24.thread

if.then24.thread:                                 ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #6
  %12 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #6
  %13 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !19
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #6
  %14 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #6
  %15 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !19
  %call26 = call i32 @ext2_empty_dir(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %out_dir.thread139, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

out_dir.thread139:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #6
  br label %if.then60

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then24.thread
  %dir_de.0112119 = phi ptr [ null, %if.then24.thread ], [ %call18, %land.lhs.true.if.end29_crit_edge ]
  %d_name30 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call31 = call ptr @ext2_find_entry(ptr noundef %new_dir, ptr noundef %d_name30, ptr noundef nonnull %new_page, ptr noundef nonnull %page_addr) #6
  %cmp.i109 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %out_dir, label %if.end35

if.end35:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %new_page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_page, align 4
  %18 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_addr, align 4
  call void @ext2_set_link(ptr noundef %new_dir, ptr noundef %call31, ptr noundef %17, ptr noundef %19, ptr noundef %1, i32 noundef 1) #6
  %20 = ptrtoint ptr %new_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_page, align 4
  %22 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page_addr, align 4
  call fastcc void @ext2_put_page(ptr noundef %21, ptr noundef %23)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %3) #6
  %24 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  br i1 %cmp, label %if.then37, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @drop_nlink(ptr noundef nonnull %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end35.cleanup_crit_edge
  call void @drop_nlink(ptr noundef nonnull %3) #6
  call void @__mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #6
  br label %if.end48

if.else:                                          ; preds = %if.end22
  %call41 = call i32 @ext2_add_link(ptr noundef %new_dentry, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then46, label %if.else.if.then60_crit_edge

if.else.if.then60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.else.thread:                                   ; preds = %if.end22.thread
  %call41126 = call i32 @ext2_add_link(ptr noundef %new_dentry, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41126)
  %tobool42.not127 = icmp eq i32 %call41126, 0
  br i1 %tobool42.not127, label %if.else.thread.if.end48_crit_edge, label %if.else.thread.out_old_crit_edge

if.else.thread.out_old_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_old

if.else.thread.if.end48_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @inc_nlink(ptr noundef %new_dir) #6
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.else.thread.if.end48_crit_edge, %cleanup
  %dir_de.0115 = phi ptr [ %dir_de.0112119, %cleanup ], [ %call18, %if.then46 ], [ null, %if.else.thread.if.end48_crit_edge ]
  %i_ctime49 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp50) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp50, ptr noundef %1) #6
  %25 = call ptr @memcpy(ptr %i_ctime49, ptr %tmp50, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp50) #6
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  %26 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %old_page, align 4
  %28 = ptrtoint ptr %old_page_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %old_page_addr, align 4
  %call51 = call i32 @ext2_delete_entry(ptr noundef %call10, ptr noundef %27, ptr noundef %29) #6
  %tobool52.not = icmp eq ptr %dir_de.0115, null
  br i1 %tobool52.not, label %if.end48.if.end58_crit_edge, label %if.then53

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then53:                                        ; preds = %if.end48
  %cmp54.not = icmp eq ptr %old_dir, %new_dir
  br i1 %cmp54.not, label %if.then53.if.end57_crit_edge, label %if.then56

if.then53.if.end57_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dir_page, align 4
  %32 = ptrtoint ptr %dir_page_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dir_page_addr, align 4
  call void @ext2_set_link(ptr noundef %1, ptr noundef nonnull %dir_de.0115, ptr noundef %31, ptr noundef %33, ptr noundef %new_dir, i32 noundef 0) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53.if.end57_crit_edge
  %34 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dir_page, align 4
  %36 = ptrtoint ptr %dir_page_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dir_page_addr, align 4
  call fastcc void @ext2_put_page(ptr noundef %35, ptr noundef %37)
  call void @drop_nlink(ptr noundef %old_dir) #6
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #6
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end48.if.end58_crit_edge
  %38 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %old_page, align 4
  %40 = ptrtoint ptr %old_page_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %old_page_addr, align 4
  call fastcc void @ext2_put_page(ptr noundef %39, ptr noundef %41)
  br label %cleanup62

out_dir:                                          ; preds = %if.end29
  %42 = ptrtoint ptr %call31 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #6
  %tobool59.not = icmp eq ptr %dir_de.0112119, null
  br i1 %tobool59.not, label %out_dir.out_old_crit_edge, label %out_dir.if.then60_crit_edge

out_dir.if.then60_crit_edge:                      ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

out_dir.out_old_crit_edge:                        ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_old

if.then60:                                        ; preds = %out_dir.if.then60_crit_edge, %if.else.if.then60_crit_edge, %out_dir.thread139
  %err.1138 = phi i32 [ %42, %out_dir.if.then60_crit_edge ], [ -39, %out_dir.thread139 ], [ %call41, %if.else.if.then60_crit_edge ]
  %43 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dir_page, align 4
  %45 = ptrtoint ptr %dir_page_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dir_page_addr, align 4
  call fastcc void @ext2_put_page(ptr noundef %44, ptr noundef %46)
  br label %out_old

out_old:                                          ; preds = %if.then60, %out_dir.out_old_crit_edge, %if.else.thread.out_old_crit_edge, %if.then17.out_old_crit_edge
  %err.2 = phi i32 [ %err.1138, %if.then60 ], [ %42, %out_dir.out_old_crit_edge ], [ -5, %if.then17.out_old_crit_edge ], [ %call41126, %if.else.thread.out_old_crit_edge ]
  %47 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %old_page, align 4
  %49 = ptrtoint ptr %old_page_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %old_page_addr, align 4
  call void @kunmap_local_indexed(ptr noundef %50) #6
  %51 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !20

if.then.i.i.i:                                    ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %53, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %48 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %54, %if.end.i.i.i ]
  %55 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !21

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.1) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_rename, %if.then.i.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %55, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup62_crit_edge

folio_put_testzero.exit.i.i.i.cleanup62_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %55) #6
  br label %cleanup62

cleanup62:                                        ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup62_crit_edge, %if.end58, %if.then12, %if.end5.cleanup62_crit_edge, %if.end.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %entry.cleanup62_crit_edge ], [ %call2, %if.end.cleanup62_crit_edge ], [ %call6, %if.end5.cleanup62_crit_edge ], [ %8, %if.then12 ], [ %err.2, %folio_put_testzero.exit.i.i.i.cleanup62_crit_edge ], [ %err.2, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_page_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_page) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ext2_new_inode(ptr noundef %dir, i16 noundef zeroext %mode, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ext2_set_file_ops(ptr noundef %call) #6
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #6
  tail call void @d_tmpfile(ptr noundef %dentry, ptr noundef %call) #6
  tail call void @unlock_new_inode(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_new_inode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_set_file_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_add_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_find_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_delete_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_put_page(ptr noundef %page, ptr noundef %page_addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kunmap_local_indexed(ptr noundef %page_addr) #6
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !20

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !21

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_put_page, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %4) #6
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_make_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_empty_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_dotdot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @ext2_dir_inode_operations, !1, !"ext2_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/ext2/namei.c", i32 423, i32 31}
!2 = !{ptr @ext2_special_inode_operations, !3, !"ext2_special_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/ext2/namei.c", i32 443, i32 31}
!4 = !{ptr @__func__.ext2_lookup, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext2/namei.c", i32 73, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/namei.c", i32 74, i32 6}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 717, i32 2}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2153158267, i64 2153158750, i64 2153158304, i64 2153158360, i64 2153158394, i64 2153158418, i64 2153158459, i64 2153158480, i64 2153158508, i64 2153158542}
!23 = !{i64 2148800747}
!24 = !{i64 2148715456, i64 2148715488, i64 2148715517, i64 2148715551, i64 2148715582, i64 2148715605}
!25 = !{i64 2148800976}
!26 = !{i64 2148312948, i64 2148312953, i64 2148312966, i64 2148313010, i64 2148313044, i64 2148313065}
