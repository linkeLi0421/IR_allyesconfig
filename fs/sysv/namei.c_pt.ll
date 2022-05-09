; ModuleID = '/llk/IR_all_yes/fs/sysv/namei.c_pt.bc'
source_filename = "../fs/sysv/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
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
%struct.page = type { i32, %union.anon.21, %union.anon.31, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }

@sysv_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @sysv_lookup, ptr null, ptr null, ptr null, ptr null, ptr @sysv_create, ptr @sysv_link, ptr @sysv_unlink, ptr @sysv_symlink, ptr @sysv_mkdir, ptr @sysv_rmdir, ptr @sysv_mknod, ptr @sysv_rename, ptr null, ptr @sysv_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_ = private constant [19 x i8] c"../fs/sysv/namei.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 55, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 717, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sysv_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp = icmp ugt i32 %1, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysv_inode_by_name(ptr noundef %dentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call3 = tail call ptr @sysv_iget(ptr noundef %3, i32 noundef %call1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %inode.0 = phi ptr [ %call3, %if.then2 ], [ null, %if.end.if.end4_crit_edge ]
  %call5 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysv_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_link(ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef readnone %dir, ptr noundef %dentry) #0 align 64 {
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
  %call.i = call i32 @sysv_add_link(ptr noundef %dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #5
  br label %add_nondir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @drop_nlink(ptr noundef %1) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  call void @iput(ptr noundef %1) #5
  br label %add_nondir.exit

add_nondir.exit:                                  ; preds = %if.end.i, %if.then.i
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_unlink(ptr nocapture noundef readonly %dir, ptr noundef %dentry) #0 align 64 {
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
  %call1 = call ptr @sysv_find_entry(ptr noundef %dentry, ptr noundef nonnull %page) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page, align 4
  %call2 = call i32 @sysv_delete_entry(ptr noundef nonnull %call1, ptr noundef %4) #5
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
define internal i32 @sysv_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %symname) #8
  %add = add i32 %call, 1
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @sysv_new_inode(ptr noundef %dir, i16 noundef zeroext -24065) #5
  %4 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  tail call void @sysv_set_inode(ptr noundef %call1, i32 noundef 0) #5
  %call6 = tail call i32 @page_symlink(ptr noundef %call1, ptr noundef %symname, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %out_fail

if.end8:                                          ; preds = %if.end5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  %call.i = tail call i32 @sysv_add_link(ptr noundef %dentry, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %call1) #5
  br label %out

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @iput(ptr noundef %call1) #5
  br label %out

out:                                              ; preds = %out_fail, %if.end.i, %if.then.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -36, %entry.out_crit_edge ], [ %4, %if.end.out_crit_edge ], [ %call6, %out_fail ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %err.0

out_fail:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @iput(ptr noundef %call1) #5
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inc_nlink(ptr noundef %dir) #5
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  %0 = or i16 %mode, 16384
  %call = tail call ptr @sysv_new_inode(ptr noundef %dir, i16 noundef zeroext %0) #5
  %1 = ptrtoint ptr %call to i32
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_dir_crit_edge, label %if.end

entry.out_dir_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dir

if.end:                                           ; preds = %entry
  tail call void @sysv_set_inode(ptr noundef %call, i32 noundef 0) #5
  tail call void @inc_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  %call4 = tail call i32 @sysv_make_empty(ptr noundef %call, ptr noundef %dir) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_fail_crit_edge

if.end.out_fail_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_fail

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @sysv_add_link(ptr noundef %dentry, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_fail_crit_edge

if.end6.out_fail_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_fail

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %call) #5
  br label %out

out:                                              ; preds = %out_dir, %if.end10
  %err.0 = phi i32 [ %err.2, %out_dir ], [ 0, %if.end10 ]
  ret i32 %err.0

out_fail:                                         ; preds = %if.end6.out_fail_crit_edge, %if.end.out_fail_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.out_fail_crit_edge ], [ %call7, %if.end6.out_fail_crit_edge ]
  tail call void @drop_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  tail call void @drop_nlink(ptr noundef %call) #5
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #5
  tail call void @iput(ptr noundef %call) #5
  br label %out_dir

out_dir:                                          ; preds = %out_fail, %entry.out_dir_crit_edge
  %err.2 = phi i32 [ %1, %entry.out_dir_crit_edge ], [ %err.1, %out_fail ]
  tail call void @drop_nlink(ptr noundef %dir) #5
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_rmdir(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @sysv_empty_dir(ptr noundef %1) #5
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
  %call1.i = call ptr @sysv_find_entry(ptr noundef %dentry, ptr noundef nonnull %page.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.sysv_unlink.exit.thread_crit_edge, label %if.end.i

if.then.sysv_unlink.exit.thread_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysv_unlink.exit.thread

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page.i, align 4
  %call2.i = call i32 @sysv_delete_entry(ptr noundef nonnull %call1.i, ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4, label %if.end.i.sysv_unlink.exit.thread_crit_edge

if.end.i.sysv_unlink.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysv_unlink.exit.thread

sysv_unlink.exit.thread:                          ; preds = %if.end.i.sysv_unlink.exit.thread_crit_edge, %if.then.sysv_unlink.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -2, %if.then.sysv_unlink.exit.thread_crit_edge ], [ %call2.i, %if.end.i.sysv_unlink.exit.thread_crit_edge ]
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

if.end5:                                          ; preds = %if.then4, %sysv_unlink.exit.thread, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %if.then4 ], [ -39, %entry.if.end5_crit_edge ], [ %err.0.i.ph, %sysv_unlink.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
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
  %call1 = tail call ptr @sysv_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #5
  %2 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @sysv_set_inode(ptr noundef %call1, i32 noundef %rdev) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  %call.i = tail call i32 @sysv_add_link(ptr noundef %dentry, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %call1) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drop_nlink(ptr noundef %call1) #5
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 7) #5
  tail call void @iput(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %2, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dir_page = alloca ptr, align 4
  %old_page = alloca ptr, align 4
  %new_page = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i74 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i74 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i74, align 8
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
  br i1 %tobool.not, label %if.end, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call2 = call ptr @sysv_find_entry(ptr noundef %old_dentry, ptr noundef nonnull %old_page) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup44_crit_edge, label %if.end5

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %if.then8, label %if.end13.thread

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @sysv_dotdot(ptr noundef %1, ptr noundef nonnull %dir_page) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.out_old_crit_edge, label %if.end13

if.then8.out_old_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.end13:                                         ; preds = %if.then8
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true

if.end13.thread:                                  ; preds = %if.end5
  %tobool14.not101 = icmp eq ptr %3, null
  br i1 %tobool14.not101, label %if.else.thread, label %if.end20.thread

land.lhs.true:                                    ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #5
  %9 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !15
  %call17 = call i32 @sysv_empty_dir(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out_dir.thread129, label %if.end20

out_dir.thread129:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %if.then42

if.end20:                                         ; preds = %land.lhs.true
  %call21 = call ptr @sysv_find_entry(ptr noundef %new_dentry, ptr noundef nonnull %new_page) #5
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %out_dir, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end20.thread:                                  ; preds = %if.end13.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_page) #5
  %10 = ptrtoint ptr %new_page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_page, align 4, !annotation !15
  %call21134 = call ptr @sysv_find_entry(ptr noundef %new_dentry, ptr noundef nonnull %new_page) #5
  %tobool22.not135 = icmp eq ptr %call21134, null
  br i1 %tobool22.not135, label %out_dir.thread, label %if.end20.thread.if.end24_crit_edge

if.end20.thread.if.end24_crit_edge:               ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

out_dir.thread:                                   ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %out_old

if.end24:                                         ; preds = %if.end20.thread.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %call21138 = phi ptr [ %call21134, %if.end20.thread.if.end24_crit_edge ], [ %call21, %if.end20.if.end24_crit_edge ]
  %dir_de.0102109136 = phi ptr [ null, %if.end20.thread.if.end24_crit_edge ], [ %call9, %if.end20.if.end24_crit_edge ]
  %11 = ptrtoint ptr %new_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_page, align 4
  call void @sysv_set_link(ptr noundef nonnull %call21138, ptr noundef %12, ptr noundef %1) #5
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %3) #5
  %13 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  br i1 %cmp, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void @drop_nlink(ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge
  call void @drop_nlink(ptr noundef nonnull %3) #5
  call void @__mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %if.end36

if.else:                                          ; preds = %if.end13
  %call29 = call i32 @sysv_add_link(ptr noundef %new_dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then34, label %if.else.if.then42_crit_edge

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.else.thread:                                   ; preds = %if.end13.thread
  %call29116 = call i32 @sysv_add_link(ptr noundef %new_dentry, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29116)
  %tobool30.not117 = icmp eq i32 %call29116, 0
  br i1 %tobool30.not117, label %if.else.thread.if.end36_crit_edge, label %if.else.thread.out_old_crit_edge

if.else.thread.out_old_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.else.thread.if.end36_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @inc_nlink(ptr noundef %new_dir) #5
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else.thread.if.end36_crit_edge, %cleanup
  %dir_de.0105 = phi ptr [ %dir_de.0102109136, %cleanup ], [ %call9, %if.then34 ], [ null, %if.else.thread.if.end36_crit_edge ]
  %14 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %old_page, align 4
  %call37 = call i32 @sysv_delete_entry(ptr noundef nonnull %call2, ptr noundef %15) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  %tobool38.not = icmp eq ptr %dir_de.0105, null
  br i1 %tobool38.not, label %if.end36.cleanup44_crit_edge, label %if.then39

if.end36.cleanup44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dir_page, align 4
  call void @sysv_set_link(ptr noundef nonnull %dir_de.0105, ptr noundef %17, ptr noundef %new_dir) #5
  call void @drop_nlink(ptr noundef %old_dir) #5
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #5
  br label %cleanup44

out_dir:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_page) #5
  br label %if.then42

if.then42:                                        ; preds = %out_dir, %if.else.if.then42_crit_edge, %out_dir.thread129
  %err.1128 = phi i32 [ -2, %out_dir ], [ -39, %out_dir.thread129 ], [ %call29, %if.else.if.then42_crit_edge ]
  %18 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dir_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shr.i.i = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.then42.kunmap.exit_crit_edge [
    i32 2, label %if.then42.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then42.if.end.i_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then42.kunmap.exit_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then42.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %19) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then42.kunmap.exit_crit_edge
  %24 = ptrtoint ptr %dir_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dir_page, align 4
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !16

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !17

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.1) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv_rename, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !22

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_old_crit_edge

folio_put_testzero.exit.i.i.out_old_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_old

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__put_page(ptr noundef %30) #5
  br label %out_old

out_old:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_old_crit_edge, %if.else.thread.out_old_crit_edge, %out_dir.thread, %if.then8.out_old_crit_edge
  %err.2 = phi i32 [ -5, %if.then8.out_old_crit_edge ], [ %err.1128, %folio_put_testzero.exit.i.i.out_old_crit_edge ], [ %err.1128, %if.then.i4.i ], [ %call29116, %if.else.thread.out_old_crit_edge ], [ -2, %out_dir.thread ]
  %34 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %old_page, align 4
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %shr.i.i75 = lshr i32 %37, 30
  %38 = zext i32 %shr.i.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %shr.i.i75, label %out_old.kunmap.exit79_crit_edge [
    i32 2, label %out_old.if.end.i78_crit_edge
    i32 3, label %is_highmem_idx.exit.i77
  ]

out_old.if.end.i78_crit_edge:                     ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i78

out_old.kunmap.exit79_crit_edge:                  ; preds = %out_old
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit79

is_highmem_idx.exit.i77:                          ; preds = %out_old
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %39 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp2.i.not.i76 = icmp eq i32 %39, 2
  br i1 %cmp2.i.not.i76, label %is_highmem_idx.exit.i77.if.end.i78_crit_edge, label %is_highmem_idx.exit.i77.kunmap.exit79_crit_edge

is_highmem_idx.exit.i77.kunmap.exit79_crit_edge:  ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit79

is_highmem_idx.exit.i77.if.end.i78_crit_edge:     ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i78

if.end.i78:                                       ; preds = %is_highmem_idx.exit.i77.if.end.i78_crit_edge, %out_old.if.end.i78_crit_edge
  call void @kunmap_high(ptr noundef %35) #5
  br label %kunmap.exit79

kunmap.exit79:                                    ; preds = %if.end.i78, %is_highmem_idx.exit.i77.kunmap.exit79_crit_edge, %out_old.kunmap.exit79_crit_edge
  %40 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %old_page, align 4
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i80 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i84, label %if.then.i.i83, !prof !16

if.then.i.i83:                                    ; preds = %kunmap.exit79
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i82 = add i32 %44, -1
  br label %_compound_head.exit.i89

if.end.i.i84:                                     ; preds = %kunmap.exit79
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %41 to i32
  br label %_compound_head.exit.i89

_compound_head.exit.i89:                          ; preds = %if.end.i.i84, %if.then.i.i83
  %retval.0.i.i85 = phi i32 [ %sub.i.i82, %if.then.i.i83 ], [ %45, %if.end.i.i84 ]
  %46 = inttoptr i32 %retval.0.i.i85 to ptr
  %_refcount.i.i.i.i.i86 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i.i87 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i86, i32 noundef 4) #5
  %47 = ptrtoint ptr %_refcount.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i.i.i88 = icmp eq i32 %48, 0
  br i1 %cmp.i.i.i.i88, label %if.then.i.i.i.i90, label %do.end5.i.i.i.i94, !prof !17

if.then.i.i.i.i90:                                ; preds = %_compound_head.exit.i89
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.1) #5
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end5.i.i.i.i94:                                ; preds = %_compound_head.exit.i89
  %call.i.i.i10.i.i.i.i91 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i86, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !19
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i86, i32 1, i32 3, i32 1) #5
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i86, ptr %_refcount.i.i.i.i.i86, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i86) #5, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i.i.i92 = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i92)
  %cmp.i.i.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i92, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv_rename, %if.then.i.i.i.i.i96)) #5
          to label %folio_put_testzero.exit.i.i97 [label %if.then.i.i.i.i.i96], !srcloc !22

if.then.i.i.i.i.i96:                              ; preds = %do.end5.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i95 = zext i1 %cmp.i.i.i.i.i.i.i93 to i32
  call void @__page_ref_mod_and_test(ptr noundef %46, i32 noundef -1, i32 noundef %conv.i.i.i.i.i95) #5
  br label %folio_put_testzero.exit.i.i97

folio_put_testzero.exit.i.i97:                    ; preds = %if.then.i.i.i.i.i96, %do.end5.i.i.i.i94
  br i1 %cmp.i.i.i.i.i.i.i93, label %if.then.i4.i98, label %folio_put_testzero.exit.i.i97.cleanup44_crit_edge

folio_put_testzero.exit.i.i97.cleanup44_crit_edge: ; preds = %folio_put_testzero.exit.i.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.then.i4.i98:                                   ; preds = %folio_put_testzero.exit.i.i97
  call void @__sanitizer_cov_trace_pc() #7
  call void @__put_page(ptr noundef %46) #5
  br label %cleanup44

cleanup44:                                        ; preds = %if.then.i4.i98, %folio_put_testzero.exit.i.i97.cleanup44_crit_edge, %if.then39, %if.end36.cleanup44_crit_edge, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup44_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end36.cleanup44_crit_edge ], [ -2, %if.end.cleanup44_crit_edge ], [ %err.2, %folio_put_testzero.exit.i.i97.cleanup44_crit_edge ], [ %err.2, %if.then.i4.i98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir_page) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_inode_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_add_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_find_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_delete_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_new_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_set_inode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_make_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_empty_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_dotdot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_set_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @sysv_dir_inode_operations, !1, !"sysv_dir_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/sysv/namei.c", i32 267, i32 31}
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
!18 = !{i64 2153153862, i64 2153154345, i64 2153153899, i64 2153153955, i64 2153153989, i64 2153154013, i64 2153154054, i64 2153154075, i64 2153154103, i64 2153154137}
!19 = !{i64 2148796342}
!20 = !{i64 2148711051, i64 2148711083, i64 2148711112, i64 2148711146, i64 2148711177, i64 2148711200}
!21 = !{i64 2148796571}
!22 = !{i64 2148308543, i64 2148308548, i64 2148308561, i64 2148308605, i64 2148308639, i64 2148308660}
