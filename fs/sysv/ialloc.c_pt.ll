; ModuleID = '/llk/IR_all_yes/fs/sysv/ialloc.c_pt.bc'
source_filename = "../fs/sysv/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.sysv_inode = type { i16, i16, i16, i16, i32, [39 x i8], i8, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@sysv_free_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sysv_free_inode: inode 0,1,2 or nonexistent inode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysv_free_inode\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/sysv/ialloc.c\00", [47 x i8] zeroinitializer }, align 32
@sysv_free_inode._entry_ptr = internal global ptr @sysv_free_inode._entry, section ".printk_index", align 4
@sysv_free_inode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sysv_free_inode: unable to read inode block on device %s\0A\00", [38 x i8] zeroinitializer }, align 32
@sysv_free_inode._entry_ptr.5 = internal global ptr @sysv_free_inode._entry.3, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@sysv_count_free_inodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"sysv_count_free_inodes: free inode count was %d, correcting to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysv_count_free_inodes\00", [41 x i8] zeroinitializer }, align 32
@sysv_count_free_inodes._entry_ptr = internal global ptr @sysv_count_free_inodes._entry, section ".printk_index", align 4
@sysv_count_free_inodes._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sysv_count_free_inodes: unable to read inode table\0A\00", [44 x i8] zeroinitializer }, align 32
@sysv_count_free_inodes._entry_ptr.10 = internal global ptr @sysv_count_free_inodes._entry.8, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 113, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 118, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 221, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [20 x i8] c"../fs/sysv/ialloc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 231, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @sysv_count_free_inodes._entry, ptr @sysv_count_free_inodes._entry.8, ptr @sysv_count_free_inodes._entry_ptr, ptr @sysv_count_free_inodes._entry_ptr.10, ptr @sysv_free_inode._entry, ptr @sysv_free_inode._entry.3, ptr @sysv_free_inode._entry_ptr, ptr @sysv_free_inode._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_free_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_free_inode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_inodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_inodes._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sysv_raw_inode(ptr nocapture noundef readonly %sb, i32 noundef %ino, ptr nocapture noundef writeonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_firstinodezone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %s_firstinodezone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_firstinodezone, align 4
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %s_block_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_block_base, align 4
  %add = add i32 %5, %3
  %sub = add i32 %ino, -1
  %s_inodes_per_block_bits = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %s_inodes_per_block_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_inodes_per_block_bits, align 4
  %shr = lshr i32 %sub, %7
  %add1 = add i32 %add, %shr
  %conv = sext i32 %add1 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv, i32 noundef %11, i32 noundef 8) #5
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %bh, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %s_inodes_per_block_1 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %s_inodes_per_block_1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_inodes_per_block_1, align 4
  %and = and i32 %16, %sub
  %add.ptr = getelementptr %struct.sysv_inode, ptr %14, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_free_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_ninodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp ugt i32 %5, %7
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_firstinodezone.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %s_firstinodezone.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_firstinodezone.i, align 4
  %s_block_base.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %s_block_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_block_base.i, align 4
  %add.i = add i32 %11, %9
  %sub.i = add i32 %5, -1
  %s_inodes_per_block_bits.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %s_inodes_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_inodes_per_block_bits.i, align 4
  %shr.i = lshr i32 %sub.i, %13
  %add1.i = add i32 %add.i, %shr.i
  %conv.i = sext i32 %add1.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end8_crit_edge, label %sysv_raw_inode.exit

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

sysv_raw_inode.exit:                              ; preds = %if.end
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i, align 4
  %s_inodes_per_block_1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %s_inodes_per_block_1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_inodes_per_block_1.i, align 4
  %and.i = and i32 %21, %sub.i
  %add.ptr.i = getelementptr %struct.sysv_inode, ptr %19, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %sysv_raw_inode.exit.do.end8_crit_edge, label %if.end12

sysv_raw_inode.exit.do.end8_crit_edge:            ; preds = %sysv_raw_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end8:                                          ; preds = %sysv_raw_inode.exit.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %s_id) #8
  br label %cleanup

if.end12:                                         ; preds = %sysv_raw_inode.exit
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_sb_fic_count, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %27) #5
  %retval.0.i54 = select i1 %cmp.not.i, i16 %27, i16 %30
  %s_fic_size = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %s_fic_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s_fic_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i54, i16 %32)
  %cmp15 = icmp ult i16 %retval.0.i54, %32
  br i1 %cmp15, label %if.then17, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then17:                                        ; preds = %if.end12
  %conv = zext i16 %retval.0.i54 to i32
  %conv18 = trunc i32 %5 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv18) #5
  %retval.0.i57 = select i1 %cmp.not.i, i16 %conv18, i16 %33
  %inc = add nuw i16 %retval.0.i54, 1
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_bh1.i, align 4
  %s_bh2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %35, i32 0, i32 14
  %38 = ptrtoint ptr %s_bh2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_bh2.i, align 4
  %cmp.i = icmp eq ptr %37, %39
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %s_sb_fic_inodes.i = getelementptr inbounds %struct.sysv_sb_info, ptr %35, i32 0, i32 18
  %40 = ptrtoint ptr %s_sb_fic_inodes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_sb_fic_inodes.i, align 4
  %arrayidx.i = getelementptr i16, ptr %41, i32 %conv
  br label %sv_sb_fic_inode.exit

if.else.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %42 = shl nuw nsw i32 %conv, 1
  %43 = add nuw nsw i32 %42, 410
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %retval.0.i54)
  %cmp1.i = icmp ult i16 %retval.0.i54, 51
  %s_sbd1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %35, i32 0, i32 15
  %s_sbd2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %35, i32 0, i32 16
  %.pn.in.i = select i1 %cmp1.i, ptr %s_sbd1.i, ptr %s_sbd2.i
  %44 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.0.i59 = getelementptr i8, ptr %.pn.i, i32 %43
  br label %sv_sb_fic_inode.exit

sv_sb_fic_inode.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.1.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %retval.0.i59, %if.else.i ]
  %45 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %retval.0.i57, ptr %retval.1.i, align 2
  %46 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.not.i61 = icmp eq i8 %47, 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %inc) #5
  %retval.0.i62 = select i1 %cmp.not.i61, i16 %inc, i16 %48
  %49 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_sb_fic_count, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %retval.0.i62, ptr %50, align 2
  br label %if.end24

if.end24:                                         ; preds = %sv_sb_fic_inode.exit, %if.end12.if.end24_crit_edge
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 19
  %52 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_sb_total_free_inodes, align 4
  %54 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp.not.i64 = icmp eq i8 %55, 2
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %53, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #5
  %add.i.i = add i16 %58, 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %add.i.i) #5
  %add.i1.i = add i16 %57, 1
  %storemerge.i = select i1 %cmp.not.i64, i16 %add.i1.i, i16 %59
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %storemerge.i, ptr %53, align 2
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i66 = getelementptr inbounds %struct.sysv_sb_info, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %s_bh1.i66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_bh1.i66, align 4
  tail call void @mark_buffer_dirty(ptr noundef %64) #5
  %65 = ptrtoint ptr %s_bh1.i66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bh1.i66, align 4
  %s_bh2.i67 = getelementptr inbounds %struct.sysv_sb_info, ptr %62, i32 0, i32 14
  %67 = ptrtoint ptr %s_bh2.i67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_bh2.i67, align 4
  %cmp.not.i68 = icmp eq ptr %66, %68
  br i1 %cmp.not.i68, label %if.end24.brelse.exit_crit_edge, label %if.then.i69

if.end24.brelse.exit_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i69:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %68) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i69, %if.end24.brelse.exit_crit_edge
  %69 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #5
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %do.end8, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sysv_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #5
  %4 = call ptr @memset(ptr %wbc, i32 0, i32 64)
  %call1 = tail call ptr @new_inode(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_sb_fic_count = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_sb_fic_count, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %8) #5
  %retval.0.i = select i1 %cmp.not.i, i16 %8, i16 %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp = icmp eq i16 %retval.0.i, 0
  br i1 %cmp, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i16 %retval.0.i to i32
  %sub = add nsw i32 %conv, -1
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bh1.i, align 4
  %s_bh2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %13, i32 0, i32 14
  %16 = ptrtoint ptr %s_bh2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bh2.i, align 4
  %cmp.i = icmp eq ptr %15, %17
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %s_sb_fic_inodes.i = getelementptr inbounds %struct.sysv_sb_info, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %s_sb_fic_inodes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_sb_fic_inodes.i, align 4
  %arrayidx.i = getelementptr i16, ptr %19, i32 %sub
  br label %sv_sb_fic_inode.exit

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %20 = shl nuw nsw i32 %sub, 1
  %21 = add nuw nsw i32 %20, 410
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 51
  %s_sbd1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %13, i32 0, i32 15
  %s_sbd2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %13, i32 0, i32 16
  %.pn.in.i = select i1 %cmp1.i, ptr %s_sbd1.i, ptr %s_sbd2.i
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.0.i68 = getelementptr i8, ptr %.pn.i, i32 %21
  br label %sv_sb_fic_inode.exit

sv_sb_fic_inode.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.1.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %retval.0.i68, %if.else.i ]
  %23 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp7 = icmp eq i16 %24, 0
  br i1 %cmp7, label %sv_sb_fic_inode.exit.if.then9_crit_edge, label %sv_sb_fic_inode.exit.if.end17_crit_edge

sv_sb_fic_inode.exit.if.end17_crit_edge:          ; preds = %sv_sb_fic_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sv_sb_fic_inode.exit.if.then9_crit_edge:          ; preds = %sv_sb_fic_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %sv_sb_fic_inode.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_firstinodezone.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %s_firstinodezone.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_firstinodezone.i.i, align 4
  %s_block_base.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 10
  %29 = ptrtoint ptr %s_block_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_block_base.i.i, align 4
  %add.i.i = add i32 %30, %28
  %s_inodes_per_block_bits.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 5
  %31 = ptrtoint ptr %s_inodes_per_block_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_inodes_per_block_bits.i.i, align 4
  %shr.i.i = lshr i32 2, %32
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %conv.i.i = sext i32 %add1.i.i to i64
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %33 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = tail call ptr @__bread_gfp(ptr noundef %34, i64 noundef %conv.i.i, i32 noundef %36, i32 noundef 8) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then9.if.then13_crit_edge, label %sysv_raw_inode.exit.i

if.then9.if.then13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

sysv_raw_inode.exit.i:                            ; preds = %if.then9
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data.i.i, align 4
  %s_inodes_per_block_1.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 4
  %39 = ptrtoint ptr %s_inodes_per_block_1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_inodes_per_block_1.i.i, align 4
  %and.i.i = and i32 %40, 2
  %add.ptr.i.i = getelementptr %struct.sysv_inode, ptr %38, i32 %and.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %sysv_raw_inode.exit.i.if.then13_crit_edge, label %while.cond.preheader.i

sysv_raw_inode.exit.i.if.then13_crit_edge:        ; preds = %sysv_raw_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

while.cond.preheader.i:                           ; preds = %sysv_raw_inode.exit.i
  %s_ninodes.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 27
  %41 = ptrtoint ptr %s_ninodes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_ninodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.not79.i = icmp ult i32 %42, 3
  br i1 %cmp.not79.i, label %while.cond.preheader.i.if.then.i70.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.then.i70.i_crit_edge:   ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i70.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %s_fic_size.i = getelementptr inbounds %struct.sysv_sb_info, ptr %26, i32 0, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ino.084.i = phi i32 [ 3, %while.body.lr.ph.i ], [ %inc18.i, %if.end26.i.while.body.i_crit_edge ]
  %i.083.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i.1.i, %if.end26.i.while.body.i_crit_edge ]
  %raw_inode.082.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %raw_inode.1.i, %if.end26.i.while.body.i_crit_edge ]
  %bh.080.i = phi ptr [ %call.i.i.i, %while.body.lr.ph.i ], [ %bh.1.i, %if.end26.i.while.body.i_crit_edge ]
  %43 = ptrtoint ptr %raw_inode.082.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %raw_inode.082.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp2.i = icmp eq i16 %44, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %while.body.i.if.end17.i_crit_edge

while.body.i.if.end17.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %i_nlink.i = getelementptr inbounds %struct.sysv_inode, ptr %raw_inode.082.i, i32 0, i32 1
  %45 = ptrtoint ptr %i_nlink.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %i_nlink.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp5.i = icmp eq i16 %46, 0
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %conv9.i = trunc i32 %ino.084.i to i16
  %s_bytesex.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp.not.i.i = icmp eq i8 %50, 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #5
  %retval.0.i44.i = select i1 %cmp.not.i.i, i16 %conv9.i, i16 %51
  %inc.i = add i32 %i.083.i, 1
  %s_bh1.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 13
  %52 = ptrtoint ptr %s_bh1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_bh1.i.i, align 4
  %s_bh2.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 14
  %54 = ptrtoint ptr %s_bh2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_bh2.i.i, align 4
  %cmp.i.i = icmp eq ptr %53, %55
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_sb_fic_inodes.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 18
  %56 = ptrtoint ptr %s_sb_fic_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_sb_fic_inodes.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %57, i32 %i.083.i
  br label %sv_sb_fic_inode.exit.i

if.else.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = shl i32 %i.083.i, 1
  %59 = add i32 %58, 410
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %59)
  %cmp1.i.i = icmp ult i32 %59, 512
  %s_sbd1.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 15
  %s_sbd2.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %48, i32 0, i32 16
  %.pn.in.i.i = select i1 %cmp1.i.i, ptr %s_sbd1.i.i, ptr %s_sbd2.i.i
  %60 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %retval.0.i46.i = getelementptr i8, ptr %.pn.i.i, i32 %59
  br label %sv_sb_fic_inode.exit.i

sv_sb_fic_inode.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %retval.1.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ %retval.0.i46.i, %if.else.i.i ]
  %61 = ptrtoint ptr %retval.1.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %retval.0.i44.i, ptr %retval.1.i.i, align 2
  %62 = ptrtoint ptr %s_fic_size.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %s_fic_size.i, align 4
  %conv12.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %inc.i, %conv12.i
  br i1 %cmp13.i, label %sv_sb_fic_inode.exit.i.while.end.i_crit_edge, label %sv_sb_fic_inode.exit.i.if.end17.i_crit_edge

sv_sb_fic_inode.exit.i.if.end17.i_crit_edge:      ; preds = %sv_sb_fic_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

sv_sb_fic_inode.exit.i.while.end.i_crit_edge:     ; preds = %sv_sb_fic_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end17.i:                                       ; preds = %sv_sb_fic_inode.exit.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %while.body.i.if.end17.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %sv_sb_fic_inode.exit.i.if.end17.i_crit_edge ], [ %i.083.i, %land.lhs.true.i.if.end17.i_crit_edge ], [ %i.083.i, %while.body.i.if.end17.i_crit_edge ]
  %inc18.i = add i32 %ino.084.i, 1
  %64 = ptrtoint ptr %s_inodes_per_block_1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_inodes_per_block_1.i.i, align 4
  %and.i = and i32 %65, %ino.084.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp19.i = icmp eq i32 %and.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i70

if.then21.i:                                      ; preds = %if.end17.i
  %tobool.not.i47.i = icmp eq ptr %bh.080.i, null
  br i1 %tobool.not.i47.i, label %if.then21.i.brelse.exit.i_crit_edge, label %if.then.i48.i

if.then21.i.brelse.exit.i_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.i

if.then.i48.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %bh.080.i) #5
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i48.i, %if.then21.i.brelse.exit.i_crit_edge
  %66 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i, align 16
  %s_firstinodezone.i51.i = getelementptr inbounds %struct.sysv_sb_info, ptr %67, i32 0, i32 25
  %68 = ptrtoint ptr %s_firstinodezone.i51.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_firstinodezone.i51.i, align 4
  %s_block_base.i52.i = getelementptr inbounds %struct.sysv_sb_info, ptr %67, i32 0, i32 10
  %70 = ptrtoint ptr %s_block_base.i52.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_block_base.i52.i, align 4
  %add.i53.i = add i32 %71, %69
  %s_inodes_per_block_bits.i54.i = getelementptr inbounds %struct.sysv_sb_info, ptr %67, i32 0, i32 5
  %72 = ptrtoint ptr %s_inodes_per_block_bits.i54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_inodes_per_block_bits.i54.i, align 4
  %shr.i55.i = lshr i32 %ino.084.i, %73
  %add1.i56.i = add i32 %add.i53.i, %shr.i55.i
  %conv.i57.i = sext i32 %add1.i56.i to i64
  %74 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_bdev.i.i.i, align 4
  %76 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i60.i = tail call ptr @__bread_gfp(ptr noundef %75, i64 noundef %conv.i57.i, i32 noundef %77, i32 noundef 8) #5
  %tobool.not.i61.i = icmp eq ptr %call.i.i60.i, null
  br i1 %tobool.not.i61.i, label %brelse.exit.i.refill_free_cache.exit_crit_edge, label %sysv_raw_inode.exit68.i

brelse.exit.i.refill_free_cache.exit_crit_edge:   ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refill_free_cache.exit

sysv_raw_inode.exit68.i:                          ; preds = %brelse.exit.i
  %b_data.i62.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i60.i, i32 0, i32 5
  %78 = ptrtoint ptr %b_data.i62.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data.i62.i, align 4
  %s_inodes_per_block_1.i63.i = getelementptr inbounds %struct.sysv_sb_info, ptr %67, i32 0, i32 4
  %80 = ptrtoint ptr %s_inodes_per_block_1.i63.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_inodes_per_block_1.i63.i, align 4
  %and.i64.i = and i32 %81, %ino.084.i
  %add.ptr.i65.i = getelementptr %struct.sysv_inode, ptr %79, i32 %and.i64.i
  %tobool23.not.i = icmp eq ptr %add.ptr.i65.i, null
  br i1 %tobool23.not.i, label %sysv_raw_inode.exit68.i.refill_free_cache.exit_crit_edge, label %sysv_raw_inode.exit68.i.if.end26.i_crit_edge

sysv_raw_inode.exit68.i.if.end26.i_crit_edge:     ; preds = %sysv_raw_inode.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sysv_raw_inode.exit68.i.refill_free_cache.exit_crit_edge: ; preds = %sysv_raw_inode.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refill_free_cache.exit

if.else.i70:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr %struct.sysv_inode, ptr %raw_inode.082.i, i32 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i70, %sysv_raw_inode.exit68.i.if.end26.i_crit_edge
  %bh.1.i = phi ptr [ %call.i.i60.i, %sysv_raw_inode.exit68.i.if.end26.i_crit_edge ], [ %bh.080.i, %if.else.i70 ]
  %raw_inode.1.i = phi ptr [ %add.ptr.i65.i, %sysv_raw_inode.exit68.i.if.end26.i_crit_edge ], [ %incdec.ptr.i, %if.else.i70 ]
  %82 = ptrtoint ptr %s_ninodes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_ninodes.i, align 4
  %cmp.not.i71 = icmp ugt i32 %inc18.i, %83
  br i1 %cmp.not.i71, label %if.end26.i.while.end.i_crit_edge, label %if.end26.i.while.body.i_crit_edge

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end26.i.while.end.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end26.i.while.end.i_crit_edge, %sv_sb_fic_inode.exit.i.while.end.i_crit_edge
  %bh.0.lcssa.i = phi ptr [ %bh.1.i, %if.end26.i.while.end.i_crit_edge ], [ %bh.080.i, %sv_sb_fic_inode.exit.i.while.end.i_crit_edge ]
  %i.2.i = phi i32 [ %i.1.i, %if.end26.i.while.end.i_crit_edge ], [ %inc.i, %sv_sb_fic_inode.exit.i.while.end.i_crit_edge ]
  %tobool.not.i69.i = icmp eq ptr %bh.0.lcssa.i, null
  br i1 %tobool.not.i69.i, label %while.end.i.refill_free_cache.exit_crit_edge, label %while.end.i.if.then.i70.i_crit_edge

while.end.i.if.then.i70.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i70.i

while.end.i.refill_free_cache.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refill_free_cache.exit

if.then.i70.i:                                    ; preds = %while.end.i.if.then.i70.i_crit_edge, %while.cond.preheader.i.if.then.i70.i_crit_edge
  %i.292.i = phi i32 [ %i.2.i, %while.end.i.if.then.i70.i_crit_edge ], [ 0, %while.cond.preheader.i.if.then.i70.i_crit_edge ]
  %bh.0.lcssa91.i = phi ptr [ %bh.0.lcssa.i, %while.end.i.if.then.i70.i_crit_edge ], [ %call.i.i.i, %while.cond.preheader.i.if.then.i70.i_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.0.lcssa91.i) #5
  br label %refill_free_cache.exit

refill_free_cache.exit:                           ; preds = %if.then.i70.i, %while.end.i.refill_free_cache.exit_crit_edge, %sysv_raw_inode.exit68.i.refill_free_cache.exit_crit_edge, %brelse.exit.i.refill_free_cache.exit_crit_edge
  %i.3.i = phi i32 [ %i.2.i, %while.end.i.refill_free_cache.exit_crit_edge ], [ %i.292.i, %if.then.i70.i ], [ %i.1.i, %sysv_raw_inode.exit68.i.refill_free_cache.exit_crit_edge ], [ %i.1.i, %brelse.exit.i.refill_free_cache.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3.i)
  %cmp11 = icmp eq i32 %i.3.i, 0
  br i1 %cmp11, label %refill_free_cache.exit.if.then13_crit_edge, label %refill_free_cache.exit.if.end17_crit_edge

refill_free_cache.exit.if.then13_crit_edge:       ; preds = %refill_free_cache.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

refill_free_cache.exit.if.end17_crit_edge:        ; preds = %refill_free_cache.exit
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = add i32 %i.3.i, -1
  br label %if.end17

if.then13:                                        ; preds = %refill_free_cache.exit.if.then13_crit_edge, %sysv_raw_inode.exit.i.if.then13_crit_edge, %if.then9.if.then13_crit_edge
  tail call void @iput(ptr noundef nonnull %call1) #5
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup

if.end17:                                         ; preds = %refill_free_cache.exit.if.end17_crit_edge, %sv_sb_fic_inode.exit.if.end17_crit_edge
  %dec.pre-phi = phi i32 [ %.pre, %refill_free_cache.exit.if.end17_crit_edge ], [ %sub, %sv_sb_fic_inode.exit.if.end17_crit_edge ]
  %84 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i73 = getelementptr inbounds %struct.sysv_sb_info, ptr %85, i32 0, i32 13
  %86 = ptrtoint ptr %s_bh1.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_bh1.i73, align 4
  %s_bh2.i74 = getelementptr inbounds %struct.sysv_sb_info, ptr %85, i32 0, i32 14
  %88 = ptrtoint ptr %s_bh2.i74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_bh2.i74, align 4
  %cmp.i75 = icmp eq ptr %87, %89
  br i1 %cmp.i75, label %if.then.i78, label %if.else.i85

if.then.i78:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %s_sb_fic_inodes.i76 = getelementptr inbounds %struct.sysv_sb_info, ptr %85, i32 0, i32 18
  %90 = ptrtoint ptr %s_sb_fic_inodes.i76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_sb_fic_inodes.i76, align 4
  %arrayidx.i77 = getelementptr i16, ptr %91, i32 %dec.pre-phi
  br label %sv_sb_fic_inode.exit87

if.else.i85:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %92 = shl i32 %dec.pre-phi, 1
  %93 = add i32 %92, 410
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %93)
  %cmp1.i79 = icmp ult i32 %93, 512
  %s_sbd1.i80 = getelementptr inbounds %struct.sysv_sb_info, ptr %85, i32 0, i32 15
  %s_sbd2.i81 = getelementptr inbounds %struct.sysv_sb_info, ptr %85, i32 0, i32 16
  %.pn.in.i82 = select i1 %cmp1.i79, ptr %s_sbd1.i80, ptr %s_sbd2.i81
  %94 = ptrtoint ptr %.pn.in.i82 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn.i83 = load ptr, ptr %.pn.in.i82, align 4
  %retval.0.i84 = getelementptr i8, ptr %.pn.i83, i32 %93
  br label %sv_sb_fic_inode.exit87

sv_sb_fic_inode.exit87:                           ; preds = %if.else.i85, %if.then.i78
  %retval.1.i86 = phi ptr [ %arrayidx.i77, %if.then.i78 ], [ %retval.0.i84, %if.else.i85 ]
  %95 = ptrtoint ptr %retval.1.i86 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %retval.1.i86, align 2
  %conv19 = trunc i32 %dec.pre-phi to i16
  %97 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %98)
  %cmp.not.i89 = icmp eq i8 %98, 2
  %99 = tail call i16 @llvm.bswap.i16(i16 %conv19) #5
  %retval.0.i90 = select i1 %cmp.not.i89, i16 %conv19, i16 %99
  %100 = ptrtoint ptr %s_sb_fic_count to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_sb_fic_count, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %retval.0.i90, ptr %101, align 2
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 19
  %103 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_sb_total_free_inodes, align 4
  %105 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %106)
  %cmp.not.i92 = icmp eq i8 %106, 2
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %104, align 2
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #5
  %add.i.i93 = add i16 %109, -1
  %110 = tail call i16 @llvm.bswap.i16(i16 %add.i.i93) #5
  %add.i1.i = add i16 %108, -1
  %storemerge.i = select i1 %cmp.not.i92, i16 %add.i1.i, i16 %110
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %storemerge.i, ptr %104, align 2
  %112 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i95 = getelementptr inbounds %struct.sysv_sb_info, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %s_bh1.i95 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_bh1.i95, align 4
  tail call void @mark_buffer_dirty(ptr noundef %115) #5
  %116 = ptrtoint ptr %s_bh1.i95 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_bh1.i95, align 4
  %s_bh2.i96 = getelementptr inbounds %struct.sysv_sb_info, ptr %113, i32 0, i32 14
  %118 = ptrtoint ptr %s_bh2.i96 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_bh2.i96, align 4
  %cmp.not.i97 = icmp eq ptr %117, %119
  br i1 %cmp.not.i97, label %sv_sb_fic_inode.exit87.dirty_sb.exit_crit_edge, label %if.then.i98

sv_sb_fic_inode.exit87.dirty_sb.exit_crit_edge:   ; preds = %sv_sb_fic_inode.exit87
  call void @__sanitizer_cov_trace_pc() #7
  br label %dirty_sb.exit

if.then.i98:                                      ; preds = %sv_sb_fic_inode.exit87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %119) #5
  br label %dirty_sb.exit

dirty_sb.exit:                                    ; preds = %if.then.i98, %sv_sb_fic_inode.exit87.dirty_sb.exit_crit_edge
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1, ptr noundef %dir, i16 noundef zeroext %mode) #5
  %120 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %cmp.not.i100 = icmp eq i8 %121, 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %96) #5
  %retval.0.i101 = select i1 %cmp.not.i100, i16 %96, i16 %122
  %conv24 = zext i16 %retval.0.i101 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %123 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv24, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call1) #5
  %124 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  %125 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %126 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %127 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %i_blocks, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -56
  %128 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 56)
  %129 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call1, i32 noundef %130) #5
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #5
  %call27 = call i32 @sysv_write_inode(ptr noundef nonnull %call1, ptr noundef nonnull %wbc) #5
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #5
  call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %dirty_sb.exit, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -28 to ptr), %if.then13 ], [ %call1, %dirty_sb.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_count_free_inodes(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_sb_total_free_inodes = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_sb_total_free_inodes, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %5) #5
  %retval.0.i = select i1 %cmp.not.i, i16 %5, i16 %8
  %conv = zext i16 %retval.0.i to i32
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_firstinodezone.i = getelementptr inbounds %struct.sysv_sb_info, ptr %10, i32 0, i32 25
  %11 = ptrtoint ptr %s_firstinodezone.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_firstinodezone.i, align 4
  %s_block_base.i = getelementptr inbounds %struct.sysv_sb_info, ptr %10, i32 0, i32 10
  %13 = ptrtoint ptr %s_block_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_block_base.i, align 4
  %add.i = add i32 %14, %12
  %s_inodes_per_block_bits.i = getelementptr inbounds %struct.sysv_sb_info, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %s_inodes_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_inodes_per_block_bits.i, align 4
  %shr.i = lshr i32 2, %16
  %add1.i = add i32 %add.i, %shr.i
  %conv.i = sext i32 %add1.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv.i, i32 noundef %20, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end36_crit_edge, label %sysv_raw_inode.exit

entry.do.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

sysv_raw_inode.exit:                              ; preds = %entry
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data.i, align 4
  %s_inodes_per_block_1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %10, i32 0, i32 4
  %23 = ptrtoint ptr %s_inodes_per_block_1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_inodes_per_block_1.i, align 4
  %and.i = and i32 %24, 2
  %add.ptr.i = getelementptr %struct.sysv_inode, ptr %22, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %sysv_raw_inode.exit.do.end36_crit_edge, label %while.cond.preheader

sysv_raw_inode.exit.do.end36_crit_edge:           ; preds = %sysv_raw_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

while.cond.preheader:                             ; preds = %sysv_raw_inode.exit
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 27
  %25 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_ninodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.not105 = icmp ult i32 %26, 3
  br i1 %cmp.not105, label %while.cond.preheader.if.then.i86_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.then.i86_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i86

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %s_inodes_per_block_1 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %raw_inode.0109 = phi ptr [ %add.ptr.i, %while.body.lr.ph ], [ %raw_inode.1, %if.end20.while.body_crit_edge ]
  %count.0108 = phi i32 [ 0, %while.body.lr.ph ], [ %count.1, %if.end20.while.body_crit_edge ]
  %ino.0107 = phi i32 [ 3, %while.body.lr.ph ], [ %inc12, %if.end20.while.body_crit_edge ]
  %bh.0106 = phi ptr [ %call.i.i, %while.body.lr.ph ], [ %bh.1, %if.end20.while.body_crit_edge ]
  %27 = ptrtoint ptr %raw_inode.0109 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %raw_inode.0109, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp5 = icmp eq i16 %28, 0
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %i_nlink = getelementptr inbounds %struct.sysv_inode, ptr %raw_inode.0109, i32 0, i32 1
  %29 = ptrtoint ptr %i_nlink to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_nlink, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp8 = icmp eq i16 %30, 0
  %inc = zext i1 %cmp8 to i32
  %spec.select = add i32 %count.0108, %inc
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %while.body.if.end11_crit_edge
  %count.1 = phi i32 [ %count.0108, %while.body.if.end11_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc12 = add i32 %ino.0107, 1
  %31 = ptrtoint ptr %s_inodes_per_block_1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_inodes_per_block_1, align 4
  %and = and i32 %32, %ino.0107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %tobool.not.i64 = icmp eq ptr %bh.0106, null
  br i1 %tobool.not.i64, label %if.then15.brelse.exit_crit_edge, label %if.then.i

if.then15.brelse.exit_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %bh.0106) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then15.brelse.exit_crit_edge
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %s_firstinodezone.i67 = getelementptr inbounds %struct.sysv_sb_info, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %s_firstinodezone.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_firstinodezone.i67, align 4
  %s_block_base.i68 = getelementptr inbounds %struct.sysv_sb_info, ptr %34, i32 0, i32 10
  %37 = ptrtoint ptr %s_block_base.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_block_base.i68, align 4
  %add.i69 = add i32 %38, %36
  %s_inodes_per_block_bits.i70 = getelementptr inbounds %struct.sysv_sb_info, ptr %34, i32 0, i32 5
  %39 = ptrtoint ptr %s_inodes_per_block_bits.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_inodes_per_block_bits.i70, align 4
  %shr.i71 = lshr i32 %ino.0107, %40
  %add1.i72 = add i32 %add.i69, %shr.i71
  %conv.i73 = sext i32 %add1.i72 to i64
  %41 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_bdev.i.i, align 4
  %43 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i76 = tail call ptr @__bread_gfp(ptr noundef %42, i64 noundef %conv.i73, i32 noundef %44, i32 noundef 8) #5
  %tobool.not.i77 = icmp eq ptr %call.i.i76, null
  br i1 %tobool.not.i77, label %brelse.exit.do.end36_crit_edge, label %sysv_raw_inode.exit84

brelse.exit.do.end36_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

sysv_raw_inode.exit84:                            ; preds = %brelse.exit
  %b_data.i78 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i76, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i78 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i78, align 4
  %s_inodes_per_block_1.i79 = getelementptr inbounds %struct.sysv_sb_info, ptr %34, i32 0, i32 4
  %47 = ptrtoint ptr %s_inodes_per_block_1.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_inodes_per_block_1.i79, align 4
  %and.i80 = and i32 %48, %ino.0107
  %add.ptr.i81 = getelementptr %struct.sysv_inode, ptr %46, i32 %and.i80
  %tobool17.not = icmp eq ptr %add.ptr.i81, null
  br i1 %tobool17.not, label %sysv_raw_inode.exit84.do.end36_crit_edge, label %sysv_raw_inode.exit84.if.end20_crit_edge

sysv_raw_inode.exit84.if.end20_crit_edge:         ; preds = %sysv_raw_inode.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sysv_raw_inode.exit84.do.end36_crit_edge:         ; preds = %sysv_raw_inode.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr %struct.sysv_inode, ptr %raw_inode.0109, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %sysv_raw_inode.exit84.if.end20_crit_edge
  %bh.1 = phi ptr [ %call.i.i76, %sysv_raw_inode.exit84.if.end20_crit_edge ], [ %bh.0106, %if.else ]
  %raw_inode.1 = phi ptr [ %add.ptr.i81, %sysv_raw_inode.exit84.if.end20_crit_edge ], [ %incdec.ptr, %if.else ]
  %49 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_ninodes, align 4
  %cmp.not = icmp ugt i32 %inc12, %50
  br i1 %cmp.not, label %while.end, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end20
  %tobool.not.i85 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i85, label %while.end.brelse.exit88_crit_edge, label %while.end.if.then.i86_crit_edge

while.end.if.then.i86_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i86

while.end.brelse.exit88_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit88

if.then.i86:                                      ; preds = %while.end.if.then.i86_crit_edge, %while.cond.preheader.if.then.i86_crit_edge
  %count.0.lcssa116 = phi i32 [ %count.1, %while.end.if.then.i86_crit_edge ], [ 0, %while.cond.preheader.if.then.i86_crit_edge ]
  %bh.0.lcssa115 = phi ptr [ %bh.1, %while.end.if.then.i86_crit_edge ], [ %call.i.i, %while.cond.preheader.if.then.i86_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.0.lcssa115) #5
  br label %brelse.exit88

brelse.exit88:                                    ; preds = %if.then.i86, %while.end.brelse.exit88_crit_edge
  %count.0.lcssa117 = phi i32 [ %count.1, %while.end.brelse.exit88_crit_edge ], [ %count.0.lcssa116, %if.then.i86 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa117, i32 %conv)
  %cmp21.not = icmp eq i32 %count.0.lcssa117, %conv
  br i1 %cmp21.not, label %brelse.exit88.out_crit_edge, label %do.end

brelse.exit88.out_crit_edge:                      ; preds = %brelse.exit88
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %do.end36, %if.then.i96, %if.then28.out_crit_edge, %do.end.out_crit_edge, %brelse.exit88.out_crit_edge
  %count.2 = phi i32 [ %conv, %do.end36 ], [ %count.0.lcssa117, %do.end.out_crit_edge ], [ %conv, %brelse.exit88.out_crit_edge ], [ %count.0.lcssa117, %if.then28.out_crit_edge ], [ %count.0.lcssa117, %if.then.i96 ]
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  ret i32 %count.2

do.end:                                           ; preds = %brelse.exit88
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %count.0.lcssa117) #8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags.i, align 4
  %and.i89 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.i.not = icmp eq i32 %and.i89, 0
  br i1 %tobool.i.not, label %if.then28, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then28:                                        ; preds = %do.end
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %conv30 = trunc i32 %count.0.lcssa117 to i16
  %s_bytesex.i91 = getelementptr inbounds %struct.sysv_sb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i91 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %s_bytesex.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.not.i92 = icmp eq i8 %56, 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv30) #5
  %retval.0.i93 = select i1 %cmp.not.i92, i16 %conv30, i16 %57
  %58 = ptrtoint ptr %s_sb_total_free_inodes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_sb_total_free_inodes, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %retval.0.i93, ptr %59, align 2
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_bh1.i, align 4
  tail call void @mark_buffer_dirty(ptr noundef %64) #5
  %65 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bh1.i, align 4
  %s_bh2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %62, i32 0, i32 14
  %67 = ptrtoint ptr %s_bh2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_bh2.i, align 4
  %cmp.not.i95 = icmp eq ptr %66, %68
  br i1 %cmp.not.i95, label %if.then28.out_crit_edge, label %if.then.i96

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i96:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %68) #5
  br label %out

do.end36:                                         ; preds = %sysv_raw_inode.exit84.do.end36_crit_edge, %brelse.exit.do.end36_crit_edge, %sysv_raw_inode.exit.do.end36_crit_edge, %entry.do.end36_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/sysv/ialloc.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sysv_free_inode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sysv_free_inode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/sysv/ialloc.c", i32 118, i32 3}
!8 = !{ptr @sysv_free_inode._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sysv_free_inode._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/sysv/ialloc.c", i32 221, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sysv_count_free_inodes._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sysv_count_free_inodes._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/sysv/ialloc.c", i32 231, i32 2}
!17 = !{ptr @sysv_count_free_inodes._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @sysv_count_free_inodes._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
