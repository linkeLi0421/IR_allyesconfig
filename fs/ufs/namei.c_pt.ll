; ModuleID = '/llk/IR_all_yes/fs/ufs/namei.c_pt.bc'
source_filename = "../fs/ufs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
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
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.21, %union.anon.31, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }

@ufs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @ufs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ufs_create, ptr @ufs_link, ptr @ufs_unlink, ptr @ufs_symlink, ptr @ufs_mkdir, ptr @ufs_rmdir, ptr @ufs_mknod, ptr @ufs_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ufs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ufs_file_operations = external dso_local constant %struct.file_operations, align 4
@ufs_aops = external dso_local constant %struct.address_space_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ufs_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_ = private constant [18 x i8] c"../fs/ufs/namei.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 55, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 717, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ufs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ufs_inode_by_name(ptr noundef %dir, ptr noundef %d_name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call4 = tail call ptr @ufs_iget(ptr noundef %3, i32 noundef %call2) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %inode.0 = phi ptr [ %call4, %if.then3 ], [ null, %if.end.if.end5_crit_edge ]
  %call6 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.end5 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ufs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ufs_file_inode_operations, ptr %i_op, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ufs_file_operations, ptr %2, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ufs_aops, ptr %a_ops, align 4
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  %call.i = tail call i32 @ufs_add_link(ptr noundef %dentry, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  tail call void @discard_new_inode(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_link(ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef readnone %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #5
  %2 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @inc_nlink(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  call void @ihold(ptr noundef %1) #5
  %call1 = call i32 @ufs_add_link(ptr noundef %dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @drop_nlink(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  call void @iput(ptr noundef %1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #5
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = call ptr @ufs_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %page) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page, align 4
  %call2 = call i32 @ufs_delete_entry(ptr noundef %dir, ptr noundef nonnull %call1, ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime6 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime6, i32 16)
  call void @drop_nlink(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.end5 ], [ -2, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @strlen(ptr noundef %symname) #8
  %add = add i32 %call, 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ufs_new_inode(ptr noundef %dir, i16 noundef zeroext -24065) #5
  %4 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %s_maxsymlinklen = getelementptr inbounds %struct.ufs_sb_private_info, ptr %8, i32 0, i32 61
  %9 = ptrtoint ptr %s_maxsymlinklen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_maxsymlinklen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp7 = icmp ugt i32 %add, %10
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @page_symlink_inode_operations, ptr %i_op, align 8
  tail call void @inode_nohighmem(ptr noundef %call1) #5
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ufs_aops, ptr %a_ops, align 4
  %call9 = tail call i32 @page_symlink(ptr noundef %call1, ptr noundef %symname, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then8.if.end14_crit_edge, label %out_fail

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @simple_symlink_inode_operations, ptr %i_op, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -328
  %16 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 48
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %16, align 4
  %18 = call ptr @memcpy(ptr %add.ptr.i, ptr %symname, i32 %add)
  %conv = zext i32 %call to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %19 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %i_size, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8.if.end14_crit_edge
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  %call.i = tail call i32 @ufs_add_link(ptr noundef %dentry, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @discard_new_inode(ptr noundef %call1) #5
  br label %cleanup

out_fail:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @discard_new_inode(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %out_fail ], [ -36, %entry.cleanup_crit_edge ], [ %4, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inc_nlink(ptr noundef %dir) #5
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  %0 = or i16 %mode, 16384
  %call = tail call ptr @ufs_new_inode(ptr noundef %dir, i16 noundef zeroext %0) #5
  %1 = ptrtoint ptr %call to i32
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_dir_crit_edge, label %if.end

entry.out_dir_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dir

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ufs_dir_inode_operations, ptr %i_op, align 8
  %3 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ufs_dir_operations, ptr %3, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ufs_aops, ptr %a_ops, align 4
  tail call void @inc_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  %call4 = tail call i32 @ufs_make_empty(ptr noundef %call, ptr noundef %dir) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_fail_crit_edge

if.end.out_fail_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_fail

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ufs_add_link(ptr noundef %dentry, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_fail_crit_edge

if.end6.out_fail_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_fail

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call) #5
  br label %cleanup

out_fail:                                         ; preds = %if.end6.out_fail_crit_edge, %if.end.out_fail_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_fail_crit_edge ], [ %call7, %if.end6.out_fail_crit_edge ]
  tail call void @drop_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  tail call void @drop_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  tail call void @discard_new_inode(ptr noundef %call) #5
  br label %out_dir

out_dir:                                          ; preds = %out_fail, %entry.out_dir_crit_edge
  %err.1 = phi i32 [ %1, %entry.out_dir_crit_edge ], [ %err.0, %out_fail ]
  tail call void @drop_nlink(ptr noundef %dir) #5
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %out_dir, %if.end10
  %retval.0 = phi i32 [ %err.1, %out_dir ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @ufs_empty_dir(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #5
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i, align 4, !annotation !15
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1.i = call ptr @ufs_find_entry(ptr noundef %dir, ptr noundef %d_name.i, ptr noundef nonnull %page.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.ufs_unlink.exit.thread_crit_edge, label %if.end.i

if.then.ufs_unlink.exit.thread_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ufs_unlink.exit.thread

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page.i, align 4
  %call2.i = call i32 @ufs_delete_entry(ptr noundef %dir, ptr noundef nonnull %call1.i, ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4, label %if.end.i.ufs_unlink.exit.thread_crit_edge

if.end.i.ufs_unlink.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ufs_unlink.exit.thread

ufs_unlink.exit.thread:                           ; preds = %if.end.i.ufs_unlink.exit.thread_crit_edge, %if.then.ufs_unlink.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -2, %if.then.ufs_unlink.exit.thread_crit_edge ], [ %call2.i, %if.end.i.ufs_unlink.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #5
  br label %if.end5

if.then4:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_ctime6.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %7 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_ctime6.i, i32 16)
  call void @drop_nlink(ptr noundef %3) #5
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #5
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %i_size, align 8
  call void @drop_nlink(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  call void @drop_nlink(ptr noundef %dir) #5
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %ufs_unlink.exit.thread, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %if.then4 ], [ -39, %entry.if.end5_crit_edge ], [ %err.0.i.ph, %ufs_unlink.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %rdev, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ufs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #5
  %2 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %mode, i32 noundef %rdev) #5
  %i_sb = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -328
  tail call void @ufs_set_inode_dev(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %rdev) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  %call.i = tail call i32 @ufs_add_link(ptr noundef %dentry, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call1) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @discard_new_inode(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %2, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dir_page = alloca ptr, align 4
  %old_page = alloca ptr, align 4
  %new_page = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp39 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i91 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i91, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir_page) #5
  %4 = ptrtoint ptr %dir_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dir_page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page) #5
  %5 = ptrtoint ptr %old_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page, align 4, !annotation !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup52_crit_edge

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call2 = call ptr @ufs_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %old_page) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup52_crit_edge, label %if.end5

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %if.then8, label %if.end13.thread

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @ufs_dotdot(ptr noundef %1, ptr noundef nonnull %dir_page) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.out_old_crit_edge, label %if.end13

if.then8.out_old_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.end13:                                         ; preds = %if.then8
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true

if.end13.thread:                                  ; preds = %if.end5
  %tobool14.not143 = icmp eq ptr %3, null
  br i1 %tobool14.not143, label %if.else.thread, label %if.then15.thread

if.then15.thread:                                 ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #5
  %9 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !15
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #5
  %10 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !15
  %call17 = call i32 @ufs_empty_dir(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out_dir.thread171, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

out_dir.thread171:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %if.then50

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.then15.thread
  %dir_de.0144151 = phi ptr [ null, %if.then15.thread ], [ %call9, %land.lhs.true.if.end20_crit_edge ]
  %d_name21 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call22 = call ptr @ufs_find_entry(ptr noundef %new_dir, ptr noundef %d_name21, ptr noundef nonnull %new_page) #5
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %out_dir, label %if.end25

if.end25:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %new_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_page, align 4
  call void @ufs_set_link(ptr noundef %new_dir, ptr noundef nonnull %call22, ptr noundef %12, ptr noundef %1, i1 noundef zeroext true) #5
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %3) #5
  %13 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  br i1 %cmp, label %if.then27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void @drop_nlink(ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge
  call void @drop_nlink(ptr noundef nonnull %3) #5
  call void @__mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %if.end37

if.else:                                          ; preds = %if.end13
  %call30 = call i32 @ufs_add_link(ptr noundef %new_dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then35, label %if.else.if.then50_crit_edge

if.else.if.then50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.else.thread:                                   ; preds = %if.end13.thread
  %call30158 = call i32 @ufs_add_link(ptr noundef %new_dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30158)
  %tobool31.not159 = icmp eq i32 %call30158, 0
  br i1 %tobool31.not159, label %if.else.thread.if.end37_crit_edge, label %if.else.thread.out_old_crit_edge

if.else.thread.out_old_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.else.thread.if.end37_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @inc_nlink(ptr noundef %new_dir) #5
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.else.thread.if.end37_crit_edge, %cleanup
  %dir_de.0147 = phi ptr [ %dir_de.0144151, %cleanup ], [ %call9, %if.then35 ], [ null, %if.else.thread.if.end37_crit_edge ]
  %i_ctime38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp39) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp39, ptr noundef %1) #5
  %14 = call ptr @memcpy(ptr %i_ctime38, ptr %tmp39, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp39) #5
  %15 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %old_page, align 4
  %call40 = call i32 @ufs_delete_entry(ptr noundef %old_dir, ptr noundef nonnull %call2, ptr noundef %16) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  %tobool41.not = icmp eq ptr %dir_de.0147, null
  br i1 %tobool41.not, label %if.end37.cleanup52_crit_edge, label %if.then42

if.end37.cleanup52_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.then42:                                        ; preds = %if.end37
  %cmp43.not = icmp eq ptr %old_dir, %new_dir
  %17 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir_page, align 4
  br i1 %cmp43.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  call void @ufs_set_link(ptr noundef %1, ptr noundef nonnull %dir_de.0147, ptr noundef %18, ptr noundef %new_dir, i1 noundef zeroext false) #5
  br label %if.end47

if.else46:                                        ; preds = %if.then42
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr.i.i = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.else46.kunmap.exit_crit_edge [
    i32 2, label %if.else46.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.else46.if.end.i_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else46.kunmap.exit_crit_edge:                  ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.else46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.else46.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %18) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.else46.kunmap.exit_crit_edge
  %23 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dir_page, align 4
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !16

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !17

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.1) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_rename, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !22

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end47_crit_edge

folio_put_testzero.exit.i.i.if.end47_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__put_page(ptr noundef %29) #5
  br label %if.end47

if.end47:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end47_crit_edge, %if.then45
  call void @drop_nlink(ptr noundef %old_dir) #5
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #5
  br label %cleanup52

out_dir:                                          ; preds = %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  %tobool49.not = icmp eq ptr %dir_de.0144151, null
  br i1 %tobool49.not, label %out_dir.out_old_crit_edge, label %out_dir.if.then50_crit_edge

out_dir.if.then50_crit_edge:                      ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

out_dir.out_old_crit_edge:                        ; preds = %out_dir
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.then50:                                        ; preds = %out_dir.if.then50_crit_edge, %if.else.if.then50_crit_edge, %out_dir.thread171
  %err.1170 = phi i32 [ -2, %out_dir.if.then50_crit_edge ], [ -39, %out_dir.thread171 ], [ %call30, %if.else.if.then50_crit_edge ]
  %33 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dir_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %shr.i.i92 = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %shr.i.i92, label %if.then50.kunmap.exit96_crit_edge [
    i32 2, label %if.then50.if.end.i95_crit_edge
    i32 3, label %is_highmem_idx.exit.i94
  ]

if.then50.if.end.i95_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

if.then50.kunmap.exit96_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit96

is_highmem_idx.exit.i94:                          ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i93 = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i93, label %is_highmem_idx.exit.i94.if.end.i95_crit_edge, label %is_highmem_idx.exit.i94.kunmap.exit96_crit_edge

is_highmem_idx.exit.i94.kunmap.exit96_crit_edge:  ; preds = %is_highmem_idx.exit.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit96

is_highmem_idx.exit.i94.if.end.i95_crit_edge:     ; preds = %is_highmem_idx.exit.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

if.end.i95:                                       ; preds = %is_highmem_idx.exit.i94.if.end.i95_crit_edge, %if.then50.if.end.i95_crit_edge
  call void @kunmap_high(ptr noundef %34) #5
  br label %kunmap.exit96

kunmap.exit96:                                    ; preds = %if.end.i95, %is_highmem_idx.exit.i94.kunmap.exit96_crit_edge, %if.then50.kunmap.exit96_crit_edge
  %39 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dir_page, align 4
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i97 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i101, label %if.then.i.i100, !prof !16

if.then.i.i100:                                   ; preds = %kunmap.exit96
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i99 = add i32 %43, -1
  br label %_compound_head.exit.i106

if.end.i.i101:                                    ; preds = %kunmap.exit96
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i106

_compound_head.exit.i106:                         ; preds = %if.end.i.i101, %if.then.i.i100
  %retval.0.i.i102 = phi i32 [ %sub.i.i99, %if.then.i.i100 ], [ %44, %if.end.i.i101 ]
  %45 = inttoptr i32 %retval.0.i.i102 to ptr
  %_refcount.i.i.i.i.i103 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i103, i32 noundef 4) #5
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i105 = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i105, label %if.then.i.i.i.i107, label %do.end5.i.i.i.i111, !prof !17

if.then.i.i.i.i107:                               ; preds = %_compound_head.exit.i106
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.1) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end5.i.i.i.i111:                               ; preds = %_compound_head.exit.i106
  %call.i.i.i10.i.i.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i103, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i103, i32 1, i32 3, i32 1) #5
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i103, ptr %_refcount.i.i.i.i.i103, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i103) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i109 = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i109)
  %cmp.i.i.i.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i109, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_rename, %if.then.i.i.i.i.i113)) #5
          to label %folio_put_testzero.exit.i.i114 [label %if.then.i.i.i.i.i113], !srcloc !22

if.then.i.i.i.i.i113:                             ; preds = %do.end5.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i112 = zext i1 %cmp.i.i.i.i.i.i.i110 to i32
  call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i112) #5
  br label %folio_put_testzero.exit.i.i114

folio_put_testzero.exit.i.i114:                   ; preds = %if.then.i.i.i.i.i113, %do.end5.i.i.i.i111
  br i1 %cmp.i.i.i.i.i.i.i110, label %if.then.i4.i115, label %folio_put_testzero.exit.i.i114.out_old_crit_edge

folio_put_testzero.exit.i.i114.out_old_crit_edge: ; preds = %folio_put_testzero.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.then.i4.i115:                                  ; preds = %folio_put_testzero.exit.i.i114
  call void @__sanitizer_cov_trace_pc() #7
  call void @__put_page(ptr noundef %45) #5
  br label %out_old

out_old:                                          ; preds = %if.then.i4.i115, %folio_put_testzero.exit.i.i114.out_old_crit_edge, %out_dir.out_old_crit_edge, %if.else.thread.out_old_crit_edge, %if.then8.out_old_crit_edge
  %err.2 = phi i32 [ -2, %out_dir.out_old_crit_edge ], [ -5, %if.then8.out_old_crit_edge ], [ %err.1170, %folio_put_testzero.exit.i.i114.out_old_crit_edge ], [ %err.1170, %if.then.i4.i115 ], [ %call30158, %if.else.thread.out_old_crit_edge ]
  %49 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %old_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %shr.i.i117 = lshr i32 %52, 30
  %53 = zext i32 %shr.i.i117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %shr.i.i117, label %out_old.kunmap.exit121_crit_edge [
    i32 2, label %out_old.if.end.i120_crit_edge
    i32 3, label %is_highmem_idx.exit.i119
  ]

out_old.if.end.i120_crit_edge:                    ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i120

out_old.kunmap.exit121_crit_edge:                 ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit121

is_highmem_idx.exit.i119:                         ; preds = %out_old
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %54 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp2.i.not.i118 = icmp eq i32 %54, 2
  br i1 %cmp2.i.not.i118, label %is_highmem_idx.exit.i119.if.end.i120_crit_edge, label %is_highmem_idx.exit.i119.kunmap.exit121_crit_edge

is_highmem_idx.exit.i119.kunmap.exit121_crit_edge: ; preds = %is_highmem_idx.exit.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit121

is_highmem_idx.exit.i119.if.end.i120_crit_edge:   ; preds = %is_highmem_idx.exit.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i120

if.end.i120:                                      ; preds = %is_highmem_idx.exit.i119.if.end.i120_crit_edge, %out_old.if.end.i120_crit_edge
  call void @kunmap_high(ptr noundef %50) #5
  br label %kunmap.exit121

kunmap.exit121:                                   ; preds = %if.end.i120, %is_highmem_idx.exit.i119.kunmap.exit121_crit_edge, %out_old.kunmap.exit121_crit_edge
  %55 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %old_page, align 4
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i122 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i122)
  %tobool.not.i.i123 = icmp eq i32 %and.i.i122, 0
  br i1 %tobool.not.i.i123, label %if.end.i.i126, label %if.then.i.i125, !prof !16

if.then.i.i125:                                   ; preds = %kunmap.exit121
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i124 = add i32 %59, -1
  br label %_compound_head.exit.i131

if.end.i.i126:                                    ; preds = %kunmap.exit121
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %56 to i32
  br label %_compound_head.exit.i131

_compound_head.exit.i131:                         ; preds = %if.end.i.i126, %if.then.i.i125
  %retval.0.i.i127 = phi i32 [ %sub.i.i124, %if.then.i.i125 ], [ %60, %if.end.i.i126 ]
  %61 = inttoptr i32 %retval.0.i.i127 to ptr
  %_refcount.i.i.i.i.i128 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i129 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i128, i32 noundef 4) #5
  %62 = ptrtoint ptr %_refcount.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i.i130 = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i.i130, label %if.then.i.i.i.i132, label %do.end5.i.i.i.i136, !prof !17

if.then.i.i.i.i132:                               ; preds = %_compound_head.exit.i131
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.1) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end5.i.i.i.i136:                               ; preds = %_compound_head.exit.i131
  %call.i.i.i10.i.i.i.i133 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i128, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i128, i32 1, i32 3, i32 1) #5
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i128, ptr %_refcount.i.i.i.i.i128, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i128) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i134 = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i134)
  %cmp.i.i.i.i.i.i.i135 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i134, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_rename, %if.then.i.i.i.i.i138)) #5
          to label %folio_put_testzero.exit.i.i139 [label %if.then.i.i.i.i.i138], !srcloc !22

if.then.i.i.i.i.i138:                             ; preds = %do.end5.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i137 = zext i1 %cmp.i.i.i.i.i.i.i135 to i32
  call void @__page_ref_mod_and_test(ptr noundef %61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i137) #5
  br label %folio_put_testzero.exit.i.i139

folio_put_testzero.exit.i.i139:                   ; preds = %if.then.i.i.i.i.i138, %do.end5.i.i.i.i136
  br i1 %cmp.i.i.i.i.i.i.i135, label %if.then.i4.i140, label %folio_put_testzero.exit.i.i139.cleanup52_crit_edge

folio_put_testzero.exit.i.i139.cleanup52_crit_edge: ; preds = %folio_put_testzero.exit.i.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.then.i4.i140:                                  ; preds = %folio_put_testzero.exit.i.i139
  call void @__sanitizer_cov_trace_pc() #7
  call void @__put_page(ptr noundef %61) #5
  br label %cleanup52

cleanup52:                                        ; preds = %if.then.i4.i140, %folio_put_testzero.exit.i.i139.cleanup52_crit_edge, %if.end47, %if.end37.cleanup52_crit_edge, %if.end.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup52_crit_edge ], [ 0, %if.end47 ], [ 0, %if.end37.cleanup52_crit_edge ], [ -2, %if.end.cleanup52_crit_edge ], [ %err.2, %folio_put_testzero.exit.i.i139.cleanup52_crit_edge ], [ %err.2, %if.then.i4.i140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_page) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_inode_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_new_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_add_link(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_find_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_delete_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_make_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufs_empty_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_set_inode_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_dotdot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ufs_dir_inode_operations, !1, !"ufs_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/ufs/namei.c", i32 330, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/mm.h", i32 717, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153239651, i64 2153240134, i64 2153239688, i64 2153239744, i64 2153239778, i64 2153239802, i64 2153239843, i64 2153239864, i64 2153239892, i64 2153239926}
!19 = !{i64 2148294077}
!20 = !{i64 2148208810, i64 2148208842, i64 2148208871, i64 2148208905, i64 2148208936, i64 2148208959}
!21 = !{i64 2148294306}
!22 = !{i64 2149055966, i64 2149055971, i64 2149055984, i64 2149056028, i64 2149056062, i64 2149056083}
