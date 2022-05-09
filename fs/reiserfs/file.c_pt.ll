; ModuleID = '/llk/IR_all_yes/fs/reiserfs/file.c_pt.bc'
source_filename = "../fs/reiserfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.85, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.85 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.7, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@reiserfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr @reiserfs_file_open, ptr null, ptr @reiserfs_file_release, ptr @reiserfs_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@reiserfs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @reiserfs_permission, ptr @reiserfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_setattr, ptr null, ptr @reiserfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_set_acl, ptr @reiserfs_fileattr_set, ptr @reiserfs_fileattr_get, [36 x i8] undef }, align 128
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-9001\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_file_release = private unnamed_addr constant [22 x i8] c"reiserfs_file_release\00", align 1
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pinning inode %lu because the preallocation can't be freed\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"reiserfs_file_operations\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 239, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 452, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 260, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [22 x i8] c"../fs/reiserfs/file.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 81, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @reiserfs_file_operations, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_vfs_truncate_file(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tailpack = getelementptr i8, ptr %inode, i32 -204
  tail call void @mutex_lock_nested(ptr noundef %tailpack, i32 noundef 0) #4
  %call1 = tail call i32 @reiserfs_truncate_file(ptr noundef %inode, i32 noundef 1) #4
  tail call void @mutex_unlock(ptr noundef %tailpack) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_truncate_file(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_commit_page(ptr noundef %inode, ptr noundef %page, i32 noundef %from, i32 noundef %to) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %2 = lshr i64 %1, 12
  %conv = trunc i64 %2 to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i99 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i99, label %reiserfs_file_data_log.exit, label %reiserfs_file_data_log.exit.thread

reiserfs_file_data_log.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %s_blocksize106 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize106 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize106, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #4
  %11 = call ptr @memset(ptr %th, i32 255, i32 36)
  %t_trans_id107 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %12 = ptrtoint ptr %t_trans_id107 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %t_trans_id107, align 4
  %i_blkbits.i108 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %13 = ptrtoint ptr %i_blkbits.i108 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i_blkbits.i108, align 2
  %conv.i109 = zext i8 %14 to i32
  %shl.i110 = shl nuw i32 1, %conv.i109
  br label %if.then

reiserfs_file_data_log.exit:                      ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %15 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i, align 8
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %phi.cmp = icmp eq i32 %17, 0
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #4
  %20 = call ptr @memset(ptr %th, i32 255, i32 36)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %21 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %t_trans_id, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %22 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %23 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br i1 %phi.cmp, label %reiserfs_file_data_log.exit.do.body_crit_edge, label %reiserfs_file_data_log.exit.if.then_crit_edge

reiserfs_file_data_log.exit.if.then_crit_edge:    ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

reiserfs_file_data_log.exit.do.body_crit_edge:    ; preds = %reiserfs_file_data_log.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %reiserfs_file_data_log.exit.if.then_crit_edge, %reiserfs_file_data_log.exit.thread
  %shl.i113 = phi i32 [ %shl.i110, %reiserfs_file_data_log.exit.thread ], [ %shl.i, %reiserfs_file_data_log.exit.if.then_crit_edge ]
  %24 = phi i32 [ %10, %reiserfs_file_data_log.exit.thread ], [ %19, %reiserfs_file_data_log.exit.if.then_crit_edge ]
  %div = udiv i32 4096, %24
  tail call void @reiserfs_write_lock(ptr noundef %4) #4
  %add = add nuw nsw i32 %div, 1
  %call2 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %4, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.drop_write_lock_crit_edge

if.then.drop_write_lock_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %drop_write_lock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #4
  br label %do.body

do.body:                                          ; preds = %if.end, %reiserfs_file_data_log.exit.do.body_crit_edge
  %shl.i114 = phi i32 [ %shl.i, %reiserfs_file_data_log.exit.do.body_crit_edge ], [ %shl.i113, %if.end ]
  %retval.0.i112 = phi i1 [ true, %reiserfs_file_data_log.exit.do.body_crit_edge ], [ false, %if.end ]
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !23

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not = icmp eq i32 %29, 0
  br i1 %tobool7.not, label %do.body12, label %do.end18, !prof !23

do.body12:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

do.end18:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %private, align 4
  %32 = inttoptr i32 %31 to ptr
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.for.body.outer_crit_edge, %do.end18
  %block_start.0104.ph = phi i32 [ %add24, %for.inc.for.body.outer_crit_edge ], [ 0, %do.end18 ]
  %bh.0102.ph = phi ptr [ %50, %for.inc.for.body.outer_crit_edge ], [ %32, %do.end18 ]
  %partial.0100.ph = phi i32 [ %partial.1, %for.inc.for.body.outer_crit_edge ], [ 0, %do.end18 ]
  br label %for.body

for.body:                                         ; preds = %for.inc.thread.for.body_crit_edge, %for.body.outer
  %block_start.0104 = phi i32 [ %add24, %for.inc.thread.for.body_crit_edge ], [ %block_start.0104.ph, %for.body.outer ]
  %bh.0102 = phi ptr [ %52, %for.inc.thread.for.body_crit_edge ], [ %bh.0102.ph, %for.body.outer ]
  %33 = ptrtoint ptr %bh.0102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %bh.0102, align 4
  call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0102) #4
  %add24 = add i32 %block_start.0104, %shl.i114
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %from)
  %cmp25.not = icmp ugt i32 %add24, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0104, i32 %to)
  %cmp27.not = icmp ult i32 %block_start.0104, %to
  %or.cond91 = and i1 %cmp27.not, %cmp25.not
  %35 = ptrtoint ptr %bh.0102 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %bh.0102, align 4
  %and1.i.i95 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i95)
  %tobool.not.i = icmp eq i32 %and1.i.i95, 0
  br i1 %or.cond91, label %if.else, label %if.then29

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select = select i1 %tobool.not.i, i32 1, i32 %partial.0100.ph
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool.not.i, label %if.then.i96, label %if.else.set_buffer_uptodate.exit_crit_edge

if.else.set_buffer_uptodate.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffer_uptodate.exit

if.then.i96:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0102) #4
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i96, %if.else.set_buffer_uptodate.exit_crit_edge
  br i1 %retval.0.i112, label %if.else38, label %for.inc.thread

if.else38:                                        ; preds = %set_buffer_uptodate.exit
  %37 = ptrtoint ptr %bh.0102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %bh.0102, align 4
  %39 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool40.not = icmp eq i32 %39, 0
  br i1 %tobool40.not, label %if.then41, label %if.else38.for.inc_crit_edge

if.else38.for.inc_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then41:                                        ; preds = %if.else38
  call void @mark_buffer_dirty(ptr noundef %bh.0102) #4
  %40 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then41.for.inc_crit_edge, label %land.lhs.true

if.then41.for.inc_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then41
  %46 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool45.not = icmp eq i32 %46, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %land.lhs.true.if.then49_crit_edge

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

lor.lhs.false46:                                  ; preds = %land.lhs.true
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv)
  %cmp47.not = icmp ult i32 %48, %conv
  br i1 %cmp47.not, label %lor.lhs.false46.for.inc_crit_edge, label %lor.lhs.false46.if.then49_crit_edge

lor.lhs.false46.if.then49_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

lor.lhs.false46.for.inc_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then49:                                        ; preds = %lor.lhs.false46.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  %call50 = call i32 @reiserfs_add_ordered_list(ptr noundef %inode, ptr noundef %bh.0102) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %lor.lhs.false46.for.inc_crit_edge, %if.then41.for.inc_crit_edge, %if.else38.for.inc_crit_edge, %if.then29
  %partial.1 = phi i32 [ %partial.0100.ph, %if.else38.for.inc_crit_edge ], [ %partial.0100.ph, %if.then49 ], [ %partial.0100.ph, %lor.lhs.false46.for.inc_crit_edge ], [ %partial.0100.ph, %if.then41.for.inc_crit_edge ], [ %spec.select, %if.then29 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0102, i32 0, i32 1
  %49 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp ne ptr %50, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24)
  %tobool20.not = icmp eq i32 %add24, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %for.inc.for.body.outer_crit_edge, label %for.end

for.inc.for.body.outer_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.outer

for.inc.thread:                                   ; preds = %set_buffer_uptodate.exit
  %call36 = call i32 @reiserfs_prepare_for_journal(ptr noundef %4, ptr noundef %bh.0102, i32 noundef 1) #4
  %call37 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %bh.0102) #4
  %b_this_page116 = getelementptr inbounds %struct.buffer_head, ptr %bh.0102, i32 0, i32 1
  %51 = ptrtoint ptr %b_this_page116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_this_page116, align 4
  %cmp.not117.not = icmp eq ptr %52, %32
  br i1 %cmp.not117.not, label %for.inc.thread.if.then56_crit_edge, label %for.inc.thread.for.body_crit_edge

for.inc.thread.for.body_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.thread.if.then56_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

for.end:                                          ; preds = %for.inc
  br i1 %retval.0.i112, label %for.end.if.end58_crit_edge, label %for.end.if.then56_crit_edge

for.end.if.then56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then56:                                        ; preds = %for.end.if.then56_crit_edge, %for.inc.thread.if.then56_crit_edge
  %partial.1120122 = phi i32 [ %partial.1, %for.end.if.then56_crit_edge ], [ %partial.0100.ph, %for.inc.thread.if.then56_crit_edge ]
  %call57 = call i32 @journal_end(ptr noundef nonnull %th) #4
  br label %drop_write_lock

drop_write_lock:                                  ; preds = %if.then56, %if.then.drop_write_lock_crit_edge
  %partial.2 = phi i32 [ 0, %if.then.drop_write_lock_crit_edge ], [ %partial.1120122, %if.then56 ]
  %ret.1 = phi i32 [ %call2, %if.then.drop_write_lock_crit_edge ], [ %call57, %if.then56 ]
  call void @reiserfs_write_unlock(ptr noundef %4) #4
  br label %if.end58

if.end58:                                         ; preds = %drop_write_lock, %for.end.if.end58_crit_edge
  %partial.3 = phi i32 [ %partial.2, %drop_write_lock ], [ %partial.1, %for.end.if.end58_crit_edge ]
  %ret.2 = phi i32 [ %ret.1, %drop_write_lock ], [ 0, %for.end.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %partial.3)
  %tobool59.not = icmp eq i32 %partial.3, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end61_crit_edge

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !26
  %53 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !27

if.then.i.i.i:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !28
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #4
  br label %if.end61

if.end61:                                         ; preds = %SetPageUptodate.exit, %if.end58.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #4
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_inode_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_add_ordered_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_file_open(ptr noundef %inode, ptr noundef %file) #4
  %openers = getelementptr i8, ptr %inode, i32 -208
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %openers, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %openers, ptr %openers, i32 0, i32 1, ptr elementtype(i32) %openers) #4, !srcloc !30
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then, label %atomic_inc_not_zero.exit.thread

atomic_inc_not_zero.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !31
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tailpack = getelementptr i8, ptr %inode, i32 -204
  tail call void @mutex_lock_nested(ptr noundef %tailpack, i32 noundef 0) #4
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %openers, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %openers, i32 1, i32 3, i32 1) #4
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %openers, ptr %openers, i32 1, ptr elementtype(i32) %openers) #4, !srcloc !32
  tail call void @mutex_unlock(ptr noundef %tailpack) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %atomic_inc_not_zero.exit.thread
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_file_release(ptr noundef %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #4
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %3)
  %cmp.not = icmp eq i16 %3, -32768
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !27

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #4, !srcloc !33
  unreachable

do.end9:                                          ; preds = %entry
  %openers = getelementptr i8, ptr %inode, i32 -208
  %tailpack = getelementptr i8, ptr %inode, i32 -204
  %call11 = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef %openers, ptr noundef %tailpack) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end9.cleanup_crit_edge, label %if.end14

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %do.end9
  %i_flags = getelementptr i8, ptr %inode, i32 -248
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 8
  %and16 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.land.lhs.true146_crit_edge, label %lor.lhs.false

if.end14.land.lhs.true146_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

lor.lhs.false:                                    ; preds = %if.end14
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 4
  %and19 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %15, -1
  %conv22 = zext i32 %sub to i64
  %and23 = and i64 %13, %conv22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %cond.true.land.lhs.true146_crit_edge, label %lor.lhs.false25

cond.true.land.lhs.true146_crit_edge:             ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

lor.lhs.false25:                                  ; preds = %cond.true
  %sub37 = add i32 %15, -120
  %conv38 = zext i32 %sub37 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and23, i64 %conv38)
  %cmp39 = icmp ugt i64 %and23, %conv38
  br i1 %cmp39, label %lor.lhs.false25.land.lhs.true146_crit_edge, label %lor.lhs.false41

lor.lhs.false25.land.lhs.true146_crit_edge:       ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

lor.lhs.false41:                                  ; preds = %lor.lhs.false25
  %mul = shl i32 %15, 2
  %conv45 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv45)
  %cmp46.not = icmp slt i64 %13, %conv45
  br i1 %cmp46.not, label %lor.lhs.false48, label %lor.lhs.false41.land.lhs.true146_crit_edge

lor.lhs.false41.land.lhs.true146_crit_edge:       ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

lor.lhs.false48:                                  ; preds = %lor.lhs.false41
  %mul52 = mul i32 %15, 3
  %conv53 = zext i32 %mul52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv53)
  %cmp54.not = icmp slt i64 %13, %conv53
  br i1 %cmp54.not, label %lor.lhs.false48.lor.lhs.false71_crit_edge, label %land.lhs.true

lor.lhs.false48.lor.lhs.false71_crit_edge:        ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false71

land.lhs.true:                                    ; preds = %lor.lhs.false48
  %div412 = lshr i32 %sub37, 2
  %conv68 = zext i32 %div412 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and23, i64 %conv68)
  %cmp69.not = icmp ult i64 %and23, %conv68
  br i1 %cmp69.not, label %land.lhs.true.lor.lhs.false71_crit_edge, label %land.lhs.true.land.lhs.true146_crit_edge

land.lhs.true.land.lhs.true146_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

land.lhs.true.lor.lhs.false71_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %land.lhs.true.lor.lhs.false71_crit_edge, %lor.lhs.false48.lor.lhs.false71_crit_edge
  %mul75 = shl i32 %15, 1
  %conv76 = zext i32 %mul75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv76)
  %cmp77.not = icmp slt i64 %13, %conv76
  br i1 %cmp77.not, label %lor.lhs.false71.lor.lhs.false96_crit_edge, label %land.lhs.true79

lor.lhs.false71.lor.lhs.false96_crit_edge:        ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false96

land.lhs.true79:                                  ; preds = %lor.lhs.false71
  %div92411 = lshr i32 %sub37, 1
  %conv93 = zext i32 %div92411 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and23, i64 %conv93)
  %cmp94.not = icmp ult i64 %and23, %conv93
  br i1 %cmp94.not, label %land.lhs.true79.lor.lhs.false96_crit_edge, label %land.lhs.true79.land.lhs.true146_crit_edge

land.lhs.true79.land.lhs.true146_crit_edge:       ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

land.lhs.true79.lor.lhs.false96_crit_edge:        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %land.lhs.true79.lor.lhs.false96_crit_edge, %lor.lhs.false71.lor.lhs.false96_crit_edge
  %conv100 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv100)
  %cmp101.not = icmp slt i64 %13, %conv100
  br i1 %cmp101.not, label %lor.lhs.false96.if.end153_crit_edge, label %land.lhs.true103

lor.lhs.false96.if.end153_crit_edge:              ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

land.lhs.true103:                                 ; preds = %lor.lhs.false96
  %mul116 = add i32 %mul52, -360
  %div117410 = lshr i32 %mul116, 2
  %conv118 = zext i32 %div117410 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and23, i64 %conv118)
  %cmp119.not = icmp ult i64 %and23, %conv118
  br i1 %cmp119.not, label %land.lhs.true103.if.end153_crit_edge, label %land.lhs.true103.land.lhs.true146_crit_edge

land.lhs.true103.land.lhs.true146_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

land.lhs.true103.if.end153_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

cond.false:                                       ; preds = %lor.lhs.false
  %and124 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %cond.false.land.lhs.true146_crit_edge, label %cond.true126

cond.false.land.lhs.true146_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

cond.true126:                                     ; preds = %cond.false
  %i_size127 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %16 = ptrtoint ptr %i_size127 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size127, align 8
  %s_blocksize129 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize129 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize129, align 16
  %sub130 = add i32 %19, -1
  %conv131 = zext i32 %sub130 to i64
  %and132 = and i64 %17, %conv131
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp eq i64 %and132, 0
  br i1 %tobool133.not, label %cond.true126.land.lhs.true146_crit_edge, label %lor.lhs.false134

cond.true126.land.lhs.true146_crit_edge:          ; preds = %cond.true126
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

lor.lhs.false134:                                 ; preds = %cond.true126
  %sub141 = add i32 %19, -120
  %conv142 = zext i32 %sub141 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv142)
  %cmp143 = icmp sgt i64 %17, %conv142
  br i1 %cmp143, label %lor.lhs.false134.land.lhs.true146_crit_edge, label %lor.lhs.false134.if.end153_crit_edge

lor.lhs.false134.if.end153_crit_edge:             ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

lor.lhs.false134.land.lhs.true146_crit_edge:      ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true146

land.lhs.true146:                                 ; preds = %lor.lhs.false134.land.lhs.true146_crit_edge, %cond.true126.land.lhs.true146_crit_edge, %cond.false.land.lhs.true146_crit_edge, %land.lhs.true103.land.lhs.true146_crit_edge, %land.lhs.true79.land.lhs.true146_crit_edge, %land.lhs.true.land.lhs.true146_crit_edge, %lor.lhs.false41.land.lhs.true146_crit_edge, %lor.lhs.false25.land.lhs.true146_crit_edge, %cond.true.land.lhs.true146_crit_edge, %if.end14.land.lhs.true146_crit_edge
  %i_prealloc_count = getelementptr i8, ptr %inode, i32 -232
  %20 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_prealloc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp148 = icmp slt i32 %21, 1
  br i1 %cmp148, label %if.then150, label %land.lhs.true146.if.end153_crit_edge

land.lhs.true146.if.end153_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.then150:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %tailpack) #4
  br label %cleanup

if.end153:                                        ; preds = %land.lhs.true146.if.end153_crit_edge, %lor.lhs.false134.if.end153_crit_edge, %land.lhs.true103.if.end153_crit_edge, %lor.lhs.false96.if.end153_crit_edge
  %i_sb154 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb154, align 4
  tail call void @reiserfs_write_lock(ptr noundef %23) #4
  %24 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb154, align 4
  %call156 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %25, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end153.if.end166_crit_edge, label %if.then158

if.end153.if.end166_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end166

if.then158:                                       ; preds = %if.end153
  %26 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb154, align 4
  %call160 = call i32 @journal_join_abort(ptr noundef nonnull %th, ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then158.if.end166_crit_edge, label %if.then162

if.then158.if.end166_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end166

if.then162:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #6
  %call163 = call ptr @igrab(ptr noundef %inode) #4
  %28 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb154, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.reiserfs_file_release, ptr noundef nonnull @.str.4, i32 noundef %31) #4
  br label %out

if.end166:                                        ; preds = %if.then158.if.end166_crit_edge, %if.end153.if.end166_crit_edge
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #4
  call void @reiserfs_discard_prealloc(ptr noundef nonnull %th, ptr noundef %inode) #4
  %call167 = call i32 @journal_end(ptr noundef nonnull %th) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  %spec.select = select i1 %tobool168.not, i32 %call156, i32 %call167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool171.not = icmp eq i32 %spec.select, 0
  br i1 %tobool171.not, label %land.lhs.true172, label %if.end166.out_crit_edge

if.end166.out_crit_edge:                          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true172:                                 ; preds = %if.end166
  %32 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags, align 8
  %and175 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %land.lhs.true172.out_crit_edge, label %land.lhs.true177

land.lhs.true172.out_crit_edge:                   ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true177:                                 ; preds = %land.lhs.true172
  %34 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb154, align 4
  %s_fs_info.i419 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i419 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i419, align 16
  %s_mount_opt180 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %s_mount_opt180 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_mount_opt180, align 4
  %and181 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %cond.false290, label %cond.true183

cond.true183:                                     ; preds = %land.lhs.true177
  %i_size184 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %40 = ptrtoint ptr %i_size184 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size184, align 8
  %s_blocksize186 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %s_blocksize186 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize186, align 16
  %sub187 = add i32 %43, -1
  %conv188 = zext i32 %sub187 to i64
  %and189 = and i64 %41, %conv188
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and189)
  %tobool190.not = icmp eq i64 %and189, 0
  br i1 %tobool190.not, label %cond.true183.out_crit_edge, label %lor.lhs.false191

cond.true183.out_crit_edge:                       ; preds = %cond.true183
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false191:                                 ; preds = %cond.true183
  %sub203 = add i32 %43, -120
  %conv204 = zext i32 %sub203 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and189, i64 %conv204)
  %cmp205 = icmp ugt i64 %and189, %conv204
  br i1 %cmp205, label %lor.lhs.false191.out_crit_edge, label %lor.lhs.false207

lor.lhs.false191.out_crit_edge:                   ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false207:                                 ; preds = %lor.lhs.false191
  %mul211 = shl i32 %43, 2
  %conv212 = zext i32 %mul211 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv212)
  %cmp213.not = icmp slt i64 %41, %conv212
  br i1 %cmp213.not, label %lor.lhs.false215, label %lor.lhs.false207.out_crit_edge

lor.lhs.false207.out_crit_edge:                   ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false215:                                 ; preds = %lor.lhs.false207
  %mul219 = mul i32 %43, 3
  %conv220 = zext i32 %mul219 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv220)
  %cmp221.not = icmp slt i64 %41, %conv220
  br i1 %cmp221.not, label %lor.lhs.false215.lor.lhs.false240_crit_edge, label %land.lhs.true223

lor.lhs.false215.lor.lhs.false240_crit_edge:      ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false240

land.lhs.true223:                                 ; preds = %lor.lhs.false215
  %div236409 = lshr i32 %sub203, 2
  %conv237 = zext i32 %div236409 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and189, i64 %conv237)
  %cmp238.not = icmp ult i64 %and189, %conv237
  br i1 %cmp238.not, label %land.lhs.true223.lor.lhs.false240_crit_edge, label %land.lhs.true223.out_crit_edge

land.lhs.true223.out_crit_edge:                   ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true223.lor.lhs.false240_crit_edge:      ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %land.lhs.true223.lor.lhs.false240_crit_edge, %lor.lhs.false215.lor.lhs.false240_crit_edge
  %mul244 = shl i32 %43, 1
  %conv245 = zext i32 %mul244 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv245)
  %cmp246.not = icmp slt i64 %41, %conv245
  br i1 %cmp246.not, label %lor.lhs.false240.lor.lhs.false265_crit_edge, label %land.lhs.true248

lor.lhs.false240.lor.lhs.false265_crit_edge:      ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false265

land.lhs.true248:                                 ; preds = %lor.lhs.false240
  %div261408 = lshr i32 %sub203, 1
  %conv262 = zext i32 %div261408 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and189, i64 %conv262)
  %cmp263.not = icmp ult i64 %and189, %conv262
  br i1 %cmp263.not, label %land.lhs.true248.lor.lhs.false265_crit_edge, label %land.lhs.true248.out_crit_edge

land.lhs.true248.out_crit_edge:                   ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true248.lor.lhs.false265_crit_edge:      ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %land.lhs.true248.lor.lhs.false265_crit_edge, %lor.lhs.false240.lor.lhs.false265_crit_edge
  %conv269 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv269)
  %cmp270.not = icmp slt i64 %41, %conv269
  br i1 %cmp270.not, label %lor.lhs.false265.if.then316_crit_edge, label %land.lhs.true272

lor.lhs.false265.if.then316_crit_edge:            ; preds = %lor.lhs.false265
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then316

land.lhs.true272:                                 ; preds = %lor.lhs.false265
  %mul285 = add i32 %mul219, -360
  %div286407 = lshr i32 %mul285, 2
  %conv287 = zext i32 %div286407 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and189, i64 %conv287)
  %cmp288.not = icmp ult i64 %and189, %conv287
  br i1 %cmp288.not, label %land.lhs.true272.if.then316_crit_edge, label %land.lhs.true272.out_crit_edge

land.lhs.true272.out_crit_edge:                   ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true272.if.then316_crit_edge:            ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then316

cond.false290:                                    ; preds = %land.lhs.true177
  %and294 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %cond.false290.out_crit_edge, label %cond.true296

cond.false290.out_crit_edge:                      ; preds = %cond.false290
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

cond.true296:                                     ; preds = %cond.false290
  %i_size297 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %44 = ptrtoint ptr %i_size297 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_size297, align 8
  %s_blocksize299 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 3
  %46 = ptrtoint ptr %s_blocksize299 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize299, align 16
  %sub300 = add i32 %47, -1
  %conv301 = zext i32 %sub300 to i64
  %and302 = and i64 %45, %conv301
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and302)
  %tobool303.not = icmp eq i64 %and302, 0
  br i1 %tobool303.not, label %cond.true296.out_crit_edge, label %lor.lhs.false304

cond.true296.out_crit_edge:                       ; preds = %cond.true296
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false304:                                 ; preds = %cond.true296
  %sub311 = add i32 %47, -120
  %conv312 = zext i32 %sub311 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %conv312)
  %cmp313 = icmp sgt i64 %45, %conv312
  br i1 %cmp313, label %lor.lhs.false304.out_crit_edge, label %lor.lhs.false304.if.then316_crit_edge

lor.lhs.false304.if.then316_crit_edge:            ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then316

lor.lhs.false304.out_crit_edge:                   ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then316:                                       ; preds = %lor.lhs.false304.if.then316_crit_edge, %land.lhs.true272.if.then316_crit_edge, %lor.lhs.false265.if.then316_crit_edge
  %call317 = call i32 @reiserfs_truncate_file(ptr noundef %inode, i32 noundef 0) #4
  br label %out

out:                                              ; preds = %if.then316, %lor.lhs.false304.out_crit_edge, %cond.true296.out_crit_edge, %cond.false290.out_crit_edge, %land.lhs.true272.out_crit_edge, %land.lhs.true248.out_crit_edge, %land.lhs.true223.out_crit_edge, %lor.lhs.false207.out_crit_edge, %lor.lhs.false191.out_crit_edge, %cond.true183.out_crit_edge, %land.lhs.true172.out_crit_edge, %if.end166.out_crit_edge, %if.then162
  %err.1 = phi i32 [ %call160, %if.then162 ], [ %spec.select, %if.end166.out_crit_edge ], [ 0, %lor.lhs.false191.out_crit_edge ], [ 0, %lor.lhs.false207.out_crit_edge ], [ 0, %land.lhs.true223.out_crit_edge ], [ 0, %land.lhs.true248.out_crit_edge ], [ 0, %land.lhs.true272.out_crit_edge ], [ %call317, %if.then316 ], [ 0, %cond.true183.out_crit_edge ], [ 0, %lor.lhs.false304.out_crit_edge ], [ 0, %cond.true296.out_crit_edge ], [ 0, %cond.false290.out_crit_edge ], [ 0, %land.lhs.true172.out_crit_edge ]
  %48 = ptrtoint ptr %i_sb154 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb154, align 4
  call void @reiserfs_write_unlock(ptr noundef %49) #4
  call void @mutex_unlock(ptr noundef %tailpack) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then150, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then150 ], [ %err.1, %out ], [ 0, %do.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_sync_file(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.not = icmp eq i16 %6, -32768
  br i1 %cmp.not, label %do.end12, label %do.body6, !prof !27

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

do.end12:                                         ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %call13 = tail call i32 @sync_mapping_buffers(ptr noundef %8) #4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %10) #4
  %call14 = tail call i32 @reiserfs_commit_for_inode(ptr noundef %3) #4
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp16.not = icmp eq i32 %call14, 1
  br i1 %cmp16.not, label %if.end25.thread, label %land.lhs.true

if.end25.thread:                                  ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_write(ptr noundef %i_rwsem.i) #4
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end12
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_mount_opt, align 4
  %and20 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end25_crit_edge, label %if.then22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 26
  %19 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev, align 4
  %call24 = tail call i32 @blkdev_issue_flush(ptr noundef %20) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp26 = icmp slt i32 %call14, 0
  br i1 %cmp26, label %if.end25.cleanup_crit_edge, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end25.if.end29_crit_edge, %if.end25.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp30 = icmp slt i32 %call13, 0
  %cond = select i1 %cmp30, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ %call14, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_fileattr_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_file_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_join_abort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_discard_prealloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_for_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @reiserfs_file_operations, !1, !"reiserfs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/file.c", i32 239, i32 30}
!2 = !{ptr @reiserfs_file_inode_operations, !3, !"reiserfs_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/file.c", i32 255, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/file.c", i32 81, i32 4}
!12 = !{ptr @__func__.reiserfs_file_release, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2150729856, i64 2150730347, i64 2150729893, i64 2150729949, i64 2150729983, i64 2150730007, i64 2150730048, i64 2150730069, i64 2150730097, i64 2150730131}
!25 = !{i64 2155209193, i64 2155209676, i64 2155209230, i64 2155209286, i64 2155209320, i64 2155209344, i64 2155209385, i64 2155209406, i64 2155209434, i64 2155209468}
!26 = !{i64 2151018052}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2150267089, i64 2150267580, i64 2150267126, i64 2150267182, i64 2150267216, i64 2150267240, i64 2150267281, i64 2150267302, i64 2150267330, i64 2150267364}
!29 = !{i64 2148205085}
!30 = !{i64 690705, i64 690730, i64 690752, i64 690768, i64 690780, i64 690800, i64 690824, i64 690840, i64 690852}
!31 = !{i64 2148205273}
!32 = !{i64 2148205666, i64 2148205692, i64 2148205721, i64 2148205755, i64 2148205786, i64 2148205809}
!33 = !{i64 2155199502, i64 2155199984, i64 2155199539, i64 2155199595, i64 2155199629, i64 2155199653, i64 2155199694, i64 2155199715, i64 2155199743, i64 2155199777}
!34 = !{i64 2155207354, i64 2155207837, i64 2155207391, i64 2155207447, i64 2155207481, i64 2155207505, i64 2155207546, i64 2155207567, i64 2155207595, i64 2155207629}
