; ModuleID = '/llk/IR_all_yes/fs/reiserfs/xattr_security.c_pt.bc'
source_filename = "../fs/reiserfs/xattr_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.reiserfs_security_handle = type { ptr, ptr, i32 }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.74, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.74 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@reiserfs_xattr_security_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr @security_list, ptr @security_get, ptr @security_set }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 105, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [32 x i8] c"reiserfs_xattr_security_handler\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../fs/reiserfs/xattr_security.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 104, i32 28 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @reiserfs_xattr_security_handler], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_security_init(ptr noundef %dir, ptr noundef %inode, ptr noundef %qstr, ptr noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sec, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.reiserfs_security_handle, ptr %sec, i32 0, i32 1
  %length = getelementptr inbounds %struct.reiserfs_security_handle, ptr %sec, i32 0, i32 2
  %call = tail call i32 @security_old_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef %sec, ptr noundef %value, ptr noundef %length) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  %3 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sec, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %value, align 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %length, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %priv_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %priv_root.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv_root.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %reiserfs_xattrs_initialized.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

reiserfs_xattrs_initialized.exit:                 ; preds = %land.lhs.true
  %xattr_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 32
  %14 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xattr_root.i, align 4
  %tobool2.i.not = icmp eq ptr %15, null
  br i1 %tobool2.i.not, label %reiserfs_xattrs_initialized.exit.cleanup_crit_edge, label %if.then14

reiserfs_xattrs_initialized.exit.cleanup_crit_edge: ; preds = %reiserfs_xattrs_initialized.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %reiserfs_xattrs_initialized.exit
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %17, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  %add7.i = select i1 %tobool.not.i40, i32 54, i32 224
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %18 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i, align 8
  %and9.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then14.reiserfs_xattr_jcreate_nblocks.exit_crit_edge

if.then14.reiserfs_xattr_jcreate_nblocks.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %reiserfs_xattr_jcreate_nblocks.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %add25.i = select i1 %tobool.not.i40, i32 108, i32 448
  %20 = ptrtoint ptr %xattr_root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xattr_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %23, null
  %add45.i = select i1 %tobool.not.i40, i32 162, i32 672
  %spec.select.i = select i1 %cmp.i.i, i32 %add45.i, i32 %add25.i
  br label %reiserfs_xattr_jcreate_nblocks.exit

reiserfs_xattr_jcreate_nblocks.exit:              ; preds = %if.then.i, %if.then14.reiserfs_xattr_jcreate_nblocks.exit_crit_edge
  %nblocks.0.i = phi i32 [ %add7.i, %if.then14.reiserfs_xattr_jcreate_nblocks.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %and.i.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %24 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i42 = icmp eq i32 %24, 0
  %or.cond = select i1 %tobool.not.i.i, i1 %tobool.not.i42, i1 false
  br i1 %or.cond, label %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge, label %if.then.i44

reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge: ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %reiserfs_xattr_nblocks.exit

if.then.i44:                                      ; preds = %reiserfs_xattr_jcreate_nblocks.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv17 = zext i32 %7 to i64
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %26 to i64
  %add1.i = add nuw nsw i64 %conv17, 7
  %sub.i = add nuw nsw i64 %add1.i, %conv.i
  %neg.i = sub i32 0, %26
  %conv5.i = zext i32 %neg.i to i64
  %and.i43 = and i64 %sub.i, %conv5.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %27 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %28 to i64
  %shr.i = lshr i64 %and.i43, %sh_prom.i
  %extract.t = trunc i64 %shr.i to i32
  br label %reiserfs_xattr_nblocks.exit

reiserfs_xattr_nblocks.exit:                      ; preds = %if.then.i44, %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge
  %ret.0.i.off0 = phi i32 [ %extract.t, %if.then.i44 ], [ 0, %reiserfs_xattr_jcreate_nblocks.exit.reiserfs_xattr_nblocks.exit_crit_edge ]
  %conv19 = add i32 %ret.0.i.off0, %nblocks.0.i
  %29 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_flags.i, align 8
  %or = or i32 %30, 64
  store i32 %or, ptr %i_flags.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %reiserfs_xattr_nblocks.exit, %reiserfs_xattrs_initialized.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ %conv19, %reiserfs_xattr_nblocks.exit ], [ 0, %reiserfs_xattrs_initialized.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_old_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_security_write(ptr noundef %th, ptr noundef %inode, ptr nocapture noundef readonly %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %cmp = icmp ult i32 %call, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.reiserfs_security_handle, ptr %sec, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %length = getelementptr inbounds %struct.reiserfs_security_handle, ptr %sec, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %call2 = tail call i32 @reiserfs_xattr_set_handle(ptr noundef %th, ptr noundef %inode, ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef 1) #4
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 -61, label %if.end.if.then5_crit_edge
    i32 -95, label %if.end.if.then5_crit_edge12
  ]

if.end.if.then5_crit_edge12:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_xattr_set_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_security_free(ptr nocapture noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec, align 4
  tail call void @kfree(ptr noundef %1) #4
  %value = getelementptr inbounds %struct.reiserfs_security_handle, ptr %sec, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  tail call void @kfree(ptr noundef %3) #4
  %4 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sec, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %value, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @security_list(ptr nocapture noundef readonly %dentry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @security_get(ptr noundef %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #4
  %call1 = tail call i32 @reiserfs_xattr_get(ptr noundef %inode, ptr noundef %call, ptr noundef %buffer, i32 noundef %size) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @security_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #4
  %call1 = tail call i32 @reiserfs_xattr_set(ptr noundef %inode, ptr noundef %call, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/xattr_security.c", i32 105, i32 12}
!2 = !{ptr @reiserfs_xattr_security_handler, !3, !"reiserfs_xattr_security_handler", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/xattr_security.c", i32 104, i32 28}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
