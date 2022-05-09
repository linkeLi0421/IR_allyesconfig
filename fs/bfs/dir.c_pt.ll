; ModuleID = '/llk/IR_all_yes/fs/bfs/dir.c_pt.bc'
source_filename = "../fs/bfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.bfs_dirent = type { i16, [14 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.bfs_sb_info = type { i32, i32, i32, i32, i32, [17 x i32], %struct.mutex }

@bfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bfs_dir_inops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @bfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @bfs_create, ptr @bfs_link, ptr @bfs_unlink, ptr null, ptr null, ptr null, ptr null, ptr @bfs_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@bfs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013BFS-fs: %s(): Bad f_pos=%08lx for %s:%08lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bfs_readdir\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/bfs/dir.c\00", [19 x i8] zeroinitializer }, align 32
@bfs_readdir._entry_ptr = internal global ptr @bfs_readdir._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@bfs_file_inops = external dso_local constant %struct.inode_operations, align 128
@bfs_file_operations = external dso_local constant %struct.file_operations, align 4
@bfs_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@bfs_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BFS-fs: %s(): unlinking non-existent file %s:%lu (nlink=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bfs_unlink\00", [21 x i8] zeroinitializer }, align 32
@bfs_unlink._entry_ptr = internal global ptr @bfs_unlink._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"bfs_dir_operations\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 71, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 38, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 111, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [16 x i8] c"../fs/bfs/dir.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 183, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @bfs_readdir._entry, ptr @bfs_readdir._entry_ptr, ptr @bfs_unlink._entry, ptr @bfs_unlink._entry_ptr, ptr @bfs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_readdir(ptr nocapture noundef readonly %f, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %and = and i64 %3, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp77 = icmp slt i64 %5, %7
  br i1 %cmp77, label %while.body.lr.ph, label %while.cond.preheader.cleanup45_crit_edge

while.cond.preheader.cleanup45_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_sblock = getelementptr i8, ptr %1, i32 -12
  %i_sb12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %extract.t = trunc i64 %5 to i32
  %extract = lshr i64 %5, 9
  %extract.t79 = trunc i64 %extract to i32
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %3 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, ptr noundef %s_id, i32 noundef %11) #10
  br label %cleanup45

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %.off0 = phi i32 [ %extract.t, %while.body.lr.ph ], [ %extract.t78, %while.cond.backedge.while.body_crit_edge ]
  %.off9 = phi i32 [ %extract.t79, %while.body.lr.ph ], [ %extract.t81, %while.cond.backedge.while.body_crit_edge ]
  %conv7 = and i32 %.off0, 511
  %12 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_sblock, align 4
  %conv11 = add i32 %13, %.off9
  %14 = ptrtoint ptr %i_sb12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb12, align 4
  %conv13 = sext i32 %conv11 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %conv13, i32 noundef %19, i32 noundef 8) #7
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.then16, label %do.body21.preheader

do.body21.preheader:                              ; preds = %while.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  br label %do.body21

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nuw nsw i32 512, %conv7
  %conv17 = zext i32 %sub to i64
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %add19 = add i64 %21, %conv17
  store i64 %add19, ptr %pos, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %brelse.exit76, %if.then16
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pos, align 8
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size, align 8
  %cmp = icmp slt i64 %23, %25
  %extract.t78 = trunc i64 %23 to i32
  %extract80 = lshr i64 %23, 9
  %extract.t81 = trunc i64 %extract80 to i32
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup45_crit_edge

while.cond.backedge.cleanup45_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body21:                                        ; preds = %land.rhs.do.body21_crit_edge, %do.body21.preheader
  %offset.0 = phi i32 [ %add34, %land.rhs.do.body21_crit_edge ], [ %conv7, %do.body21.preheader ]
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %offset.0
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool22.not = icmp eq i16 %29, 0
  br i1 %tobool22.not, label %do.body21.if.end33_crit_edge, label %if.then23

do.body21.if.end33_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then23:                                        ; preds = %do.body21
  %name = getelementptr inbounds %struct.bfs_dirent, ptr %add.ptr, i32 0, i32 1
  %call25 = tail call i32 @strnlen(ptr noundef %name, i32 noundef 14) #11
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv29 = zext i16 %30 to i64
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos, align 8
  %call.i73 = tail call i32 %32(ptr noundef %ctx, ptr noundef %name, i32 noundef %call25, i64 noundef %34, i64 noundef %conv29, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i = icmp eq i32 %call.i73, 0
  br i1 %cmp.i, label %if.then23.if.end33_crit_edge, label %brelse.exit

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

brelse.exit:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %cleanup45

if.end33:                                         ; preds = %if.then23.if.end33_crit_edge, %do.body21.if.end33_crit_edge
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %add36 = add i64 %36, 16
  store i64 %add36, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %offset.0)
  %cmp38 = icmp ult i32 %offset.0, 496
  br i1 %cmp38, label %land.rhs, label %if.end33.brelse.exit76_crit_edge

if.end33.brelse.exit76_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit76

land.rhs:                                         ; preds = %if.end33
  %add34 = add nuw nsw i32 %offset.0, 16
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %cmp42 = icmp slt i64 %add36, %38
  br i1 %cmp42, label %land.rhs.do.body21_crit_edge, label %land.rhs.brelse.exit76_crit_edge

land.rhs.brelse.exit76_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit76

land.rhs.do.body21_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

brelse.exit76:                                    ; preds = %land.rhs.brelse.exit76_crit_edge, %if.end33.brelse.exit76_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %while.cond.backedge

cleanup45:                                        ; preds = %brelse.exit, %while.cond.backedge.cleanup45_crit_edge, %do.end, %while.cond.preheader.cleanup45_crit_edge
  %retval.4 = phi i32 [ -22, %do.end ], [ 0, %brelse.exit ], [ 0, %while.cond.preheader.cleanup45_crit_edge ], [ 0, %while.cond.backedge.cleanup45_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  %de = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #7
  %0 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !26
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %1 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %2)
  %cmp = icmp ugt i32 %2, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #7
  %call3 = call fastcc ptr @bfs_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %de)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %brelse.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

brelse.exit:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i32
  tail call void @__brelse(ptr noundef nonnull %call3) #7
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call7 = tail call ptr @bfs_iget(ptr noundef %13, i32 noundef %conv) #7
  br label %if.end8

if.end8:                                          ; preds = %brelse.exit, %if.end.if.end8_crit_edge
  %inode.0 = phi ptr [ %call7, %brelse.exit ], [ null, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #7
  %call10 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.end8 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @new_inode(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #7
  %si_imap = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 5
  %si_lasti = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %si_lasti, align 4
  %add = add i32 %5, 1
  %call2 = tail call i32 @_find_first_zero_bit_be(ptr noundef %si_imap, i32 noundef %add) #7
  %6 = ptrtoint ptr %si_lasti to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %si_lasti, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %7)
  %cmp = icmp ugt i32 %call2, %7
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #7
  tail call void @iput(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @_set_bit(i32 noundef %call2, ptr noundef %si_imap) #7
  %si_freei = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %si_freei to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %si_freei, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %si_freei, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1, ptr noundef %dir, i16 noundef zeroext %mode) #7
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call1) #7
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %11 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %12 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %13 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %i_blocks, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %14 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bfs_file_inops, ptr %i_op, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bfs_file_operations, ptr %15, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bfs_aops, ptr %a_ops, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2, ptr %i_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2, ptr %add.ptr.i, align 8
  %i_sblock = getelementptr i8, ptr %call1, i32 -12
  %22 = ptrtoint ptr %i_sblock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i_sblock, align 4
  %i_eblock = getelementptr i8, ptr %call1, i32 -8
  %23 = ptrtoint ptr %i_eblock to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i_eblock, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call1, i32 noundef %call2) #7
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #7
  call void @bfs_dump_imap(ptr noundef nonnull @.str.3, ptr noundef %1) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %call13 = call fastcc i32 @bfs_add_entry(ptr noundef %dir, ptr noundef %d_name, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @drop_nlink(ptr noundef nonnull %call1) #7
  call void @__mark_inode_dirty(ptr noundef nonnull %call1, i32 noundef 7) #7
  call void @mutex_unlock(ptr noundef %bfs_lock) #7
  call void @iput(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %bfs_lock) #7
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then4 ], [ %call13, %if.then15 ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_link(ptr nocapture noundef readonly %old, ptr noundef %dir, ptr noundef %new) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 5
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
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %call2 = tail call fastcc i32 @bfs_add_entry(ptr noundef %dir, ptr noundef %d_name, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inc_nlink(ptr noundef %1) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #7
  %8 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  call void @ihold(ptr noundef %1) #7
  call void @d_instantiate(ptr noundef %new, ptr noundef %1) #7
  call void @mutex_unlock(ptr noundef %bfs_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_unlink(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  %de = alloca ptr, align 4
  %tmp11 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de) #7
  %2 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %de, align 4, !annotation !26
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call fastcc ptr @bfs_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %de)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.brelse.exit_crit_edge, label %lor.lhs.false

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp.not = icmp eq i32 %13, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end:                                           ; preds = %lor.lhs.false
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %do.end, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 39
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %s_id, i32 noundef %conv, i32 noundef 0) #10
  tail call void @set_nlink(ptr noundef %1, i32 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %8, align 2
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call2, ptr noundef %dir) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp11, ptr noundef %dir) #7
  %20 = call ptr @memcpy(ptr %i_mtime, ptr %tmp11, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11) #7
  %21 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #7
  %i_ctime12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %22 = call ptr @memcpy(ptr %i_ctime12, ptr %i_ctime, i32 16)
  call void @drop_nlink(ptr noundef %1) #7
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.end9, %lor.lhs.false.if.then.i_crit_edge
  %error.0.ph = phi i32 [ 0, %if.end9 ], [ -2, %lor.lhs.false.if.then.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call2) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %error.036 = phi i32 [ %error.0.ph, %if.then.i ], [ -2, %entry.brelse.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %bfs_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de) #7
  ret i32 %error.036
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #1 align 64 {
entry:
  %old_de = alloca ptr, align 4
  %new_de = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp33 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_de) #7
  %0 = ptrtoint ptr %old_de to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_de, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_de) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp = icmp eq i16 %5, 16384
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %9, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #7
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call6 = call fastcc ptr @bfs_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %old_de)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %brelse.exit69.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %10 = ptrtoint ptr %old_de to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_de, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv8 = zext i16 %14 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv8)
  %cmp9.not = icmp eq i32 %16, %conv8
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false.brelse.exit69_crit_edge

lor.lhs.false.brelse.exit69_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit69

if.end12:                                         ; preds = %lor.lhs.false
  %d_inode.i66 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i66, align 8
  %d_name14 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call15 = call fastcc ptr @bfs_find_entry(ptr noundef %new_dir, ptr noundef %d_name14, ptr noundef nonnull %new_de)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end12.if.then21_crit_edge, label %land.lhs.true

if.end12.if.then21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true:                                    ; preds = %if.end12
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %brelse.exit, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

brelse.exit:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call15) #7
  br label %if.then21

if.then21:                                        ; preds = %brelse.exit, %if.end12.if.then21_crit_edge
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %call24 = tail call fastcc i32 @bfs_add_entry(ptr noundef %new_dir, ptr noundef %d_name14, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then21.if.end28_crit_edge, label %if.then21.brelse.exit69_crit_edge

if.then21.brelse.exit69_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit69

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then21.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %new_bh.075 = phi ptr [ null, %if.then21.if.end28_crit_edge ], [ %call15, %land.lhs.true.if.end28_crit_edge ]
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %11, align 2
  %i_ctime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %old_dir) #7
  %22 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %23 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #7
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %i_ctime32 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp33) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp33, ptr noundef nonnull %18) #7
  %24 = call ptr @memcpy(ptr %i_ctime32, ptr %tmp33, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp33) #7
  call void @drop_nlink(ptr noundef nonnull %18) #7
  call void @__mark_inode_dirty(ptr noundef nonnull %18, i32 noundef 7) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call6, ptr noundef %old_dir) #7
  br label %brelse.exit69

brelse.exit69.thread:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #7
  br label %cleanup

brelse.exit69:                                    ; preds = %if.end34, %if.then21.brelse.exit69_crit_edge, %lor.lhs.false.brelse.exit69_crit_edge
  %new_bh.1.ph = phi ptr [ null, %if.then21.brelse.exit69_crit_edge ], [ %new_bh.075, %if.end34 ], [ null, %lor.lhs.false.brelse.exit69_crit_edge ]
  %error.0.ph = phi i32 [ %call24, %if.then21.brelse.exit69_crit_edge ], [ 0, %if.end34 ], [ -2, %lor.lhs.false.brelse.exit69_crit_edge ]
  call void @mutex_unlock(ptr noundef %bfs_lock) #7
  call void @__brelse(ptr noundef nonnull %call6) #7
  %tobool.not.i70 = icmp eq ptr %new_bh.1.ph, null
  br i1 %tobool.not.i70, label %brelse.exit69.cleanup_crit_edge, label %if.then.i71

brelse.exit69.cleanup_crit_edge:                  ; preds = %brelse.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i71:                                      ; preds = %brelse.exit69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %new_bh.1.ph) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i71, %brelse.exit69.cleanup_crit_edge, %brelse.exit69.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %brelse.exit69.thread ], [ %error.0.ph, %brelse.exit69.cleanup_crit_edge ], [ %error.0.ph, %if.then.i71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_de) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_de) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bfs_find_entry(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %child, ptr nocapture noundef writeonly %res_dir) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %child, align 8
  %4 = ptrtoint ptr %res_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %res_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp sgt i32 %3, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %i_sblock = getelementptr i8, ptr %dir, i32 -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 14
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %block.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %block.0.ph.be, %while.cond.outer.backedge ]
  %offset.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %offset.0.ph.be, %while.cond.outer.backedge ]
  %mul = shl i32 %block.0.ph, 9
  br label %while.cond

while.cond:                                       ; preds = %if.end19.while.cond_crit_edge, %while.cond.outer
  %offset.0 = phi i32 [ %add12, %if.end19.while.cond_crit_edge ], [ %offset.0.ph, %while.cond.outer ]
  %bh.0 = phi ptr [ %bh.1, %if.end19.while.cond_crit_edge ], [ null, %while.cond.outer ]
  %add = add i32 %mul, %offset.0
  %conv = zext i32 %add to i64
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp2 = icmp sgt i64 %6, %conv
  %tobool.not = icmp eq ptr %bh.0, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br i1 %tobool.not, label %if.then4, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %while.body
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %9 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_sblock, align 4
  %add5 = add i32 %10, %block.0.ph
  %conv6 = zext i32 %add5 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %conv6, i32 noundef %14, i32 noundef 8) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then4.while.cond.outer.backedge_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4.while.cond.outer.backedge_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer.backedge

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %while.body.if.end11_crit_edge
  %bh.1 = phi ptr [ %bh.0, %while.body.if.end11_crit_edge ], [ %call.i, %if.then4.if.end11_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %offset.0
  %add12 = add i32 %offset.0, 16
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool14.not = icmp eq i16 %18, 0
  br i1 %tobool14.not, label %if.end11.if.end19_crit_edge, label %land.lhs.true

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %name15 = getelementptr inbounds %struct.bfs_dirent, ptr %add.ptr, i32 0, i32 1
  br i1 %cmp.i.not, label %land.lhs.true.bfs_namecmp.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.bfs_namecmp.exit_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfs_namecmp.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %arrayidx.i = getelementptr i8, ptr %name15, i32 %3
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.bfs_namecmp.exit_crit_edge, label %land.lhs.true.i.if.end19_crit_edge

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true.i.bfs_namecmp.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfs_namecmp.exit

bfs_namecmp.exit:                                 ; preds = %land.lhs.true.i.bfs_namecmp.exit_crit_edge, %land.lhs.true.bfs_namecmp.exit_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %name15, i32 %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i.not, label %if.then18, label %bfs_namecmp.exit.if.end19_crit_edge

bfs_namecmp.exit.if.end19_crit_edge:              ; preds = %bfs_namecmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %bfs_namecmp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %res_dir to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %res_dir, align 4
  br label %cleanup

if.end19:                                         ; preds = %bfs_namecmp.exit.if.end19_crit_edge, %land.lhs.true.i.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 4
  %22 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size, align 8
  %cmp20 = icmp ult i32 %add12, %23
  br i1 %cmp20, label %if.end19.while.cond_crit_edge, label %brelse.exit

if.end19.while.cond_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

brelse.exit:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %bh.1) #7
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %brelse.exit, %if.then4.while.cond.outer.backedge_crit_edge
  %offset.0.ph.be = phi i32 [ 0, %brelse.exit ], [ %offset.0, %if.then4.while.cond.outer.backedge_crit_edge ]
  %block.0.ph.be = add i32 %block.0.ph, 1
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.then.i52

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i52:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %bh.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i52, %while.end.cleanup_crit_edge, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %bh.1, %if.then18 ], [ null, %entry.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ], [ null, %if.then.i52 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfs_dump_imap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bfs_add_entry(ptr noundef %dir, ptr nocapture noundef readonly %child, i32 noundef %ino) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp24 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %child, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp sgt i32 %3, 14
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_sblock = getelementptr i8, ptr %dir, i32 -12
  %4 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_sblock, align 4
  %i_eblock = getelementptr i8, ptr %dir, i32 -8
  %6 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_eblock, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.not91 = icmp sgt i32 %5, %7
  br i1 %cmp5.not91, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end3
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc38.31.for.body_crit_edge, %for.body.lr.ph
  %block.092 = phi i32 [ %5, %for.body.lr.ph ], [ %inc42, %for.inc38.31.for.body_crit_edge ]
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %conv = sext i32 %block.092 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %conv, i32 noundef %13, i32 noundef 8) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %for.cond10.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond10.preheader:                             ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool15.not = icmp eq i16 %17, 0
  br i1 %tobool15.not, label %for.cond10.preheader.if.then16_crit_edge, label %for.inc38

for.cond10.preheader.if.then16_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %for.inc38.30.if.then16_crit_edge, %for.inc38.29.if.then16_crit_edge, %for.inc38.28.if.then16_crit_edge, %for.inc38.27.if.then16_crit_edge, %for.inc38.26.if.then16_crit_edge, %for.inc38.25.if.then16_crit_edge, %for.inc38.24.if.then16_crit_edge, %for.inc38.23.if.then16_crit_edge, %for.inc38.22.if.then16_crit_edge, %for.inc38.21.if.then16_crit_edge, %for.inc38.20.if.then16_crit_edge, %for.inc38.19.if.then16_crit_edge, %for.inc38.18.if.then16_crit_edge, %for.inc38.17.if.then16_crit_edge, %for.inc38.16.if.then16_crit_edge, %for.inc38.15.if.then16_crit_edge, %for.inc38.14.if.then16_crit_edge, %for.inc38.13.if.then16_crit_edge, %for.inc38.12.if.then16_crit_edge, %for.inc38.11.if.then16_crit_edge, %for.inc38.10.if.then16_crit_edge, %for.inc38.9.if.then16_crit_edge, %for.inc38.8.if.then16_crit_edge, %for.inc38.7.if.then16_crit_edge, %for.inc38.6.if.then16_crit_edge, %for.inc38.5.if.then16_crit_edge, %for.inc38.4.if.then16_crit_edge, %for.inc38.3.if.then16_crit_edge, %for.inc38.2.if.then16_crit_edge, %for.inc38.1.if.then16_crit_edge, %for.inc38.if.then16_crit_edge, %for.cond10.preheader.if.then16_crit_edge
  %off.090.lcssa = phi i32 [ 0, %for.cond10.preheader.if.then16_crit_edge ], [ 16, %for.inc38.if.then16_crit_edge ], [ 32, %for.inc38.1.if.then16_crit_edge ], [ 48, %for.inc38.2.if.then16_crit_edge ], [ 64, %for.inc38.3.if.then16_crit_edge ], [ 80, %for.inc38.4.if.then16_crit_edge ], [ 96, %for.inc38.5.if.then16_crit_edge ], [ 112, %for.inc38.6.if.then16_crit_edge ], [ 128, %for.inc38.7.if.then16_crit_edge ], [ 144, %for.inc38.8.if.then16_crit_edge ], [ 160, %for.inc38.9.if.then16_crit_edge ], [ 176, %for.inc38.10.if.then16_crit_edge ], [ 192, %for.inc38.11.if.then16_crit_edge ], [ 208, %for.inc38.12.if.then16_crit_edge ], [ 224, %for.inc38.13.if.then16_crit_edge ], [ 240, %for.inc38.14.if.then16_crit_edge ], [ 256, %for.inc38.15.if.then16_crit_edge ], [ 272, %for.inc38.16.if.then16_crit_edge ], [ 288, %for.inc38.17.if.then16_crit_edge ], [ 304, %for.inc38.18.if.then16_crit_edge ], [ 320, %for.inc38.19.if.then16_crit_edge ], [ 336, %for.inc38.20.if.then16_crit_edge ], [ 352, %for.inc38.21.if.then16_crit_edge ], [ 368, %for.inc38.22.if.then16_crit_edge ], [ 384, %for.inc38.23.if.then16_crit_edge ], [ 400, %for.inc38.24.if.then16_crit_edge ], [ 416, %for.inc38.25.if.then16_crit_edge ], [ 432, %for.inc38.26.if.then16_crit_edge ], [ 448, %for.inc38.27.if.then16_crit_edge ], [ 464, %for.inc38.28.if.then16_crit_edge ], [ 480, %for.inc38.29.if.then16_crit_edge ], [ 496, %for.inc38.30.if.then16_crit_edge ]
  %add.ptr.le = getelementptr i8, ptr %15, i32 %off.090.lcssa
  %sub = sub i32 %block.092, %5
  %mul = shl i32 %sub, 9
  %add = or i32 %off.090.lcssa, %mul
  %conv17 = sext i32 %add to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv17)
  %cmp18.not = icmp sgt i64 %19, %conv17
  br i1 %cmp18.not, label %if.then16.if.end23_crit_edge, label %if.then20

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %add22 = add i64 %19, 16
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add22, ptr %i_size, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #7
  %21 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then16.if.end23_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp24) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp24, ptr noundef %dir) #7
  %22 = call ptr @memcpy(ptr %i_mtime, ptr %tmp24, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp24) #7
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #7
  %conv25 = trunc i32 %ino to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv25)
  %24 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr.le, align 2
  %name35 = getelementptr inbounds %struct.bfs_dirent, ptr %add.ptr.le, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31 = icmp sgt i32 %3, 0
  br i1 %cmp31, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %name35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %name35, align 1
  br label %cond.end.1.thread

cond.end:                                         ; preds = %if.end23
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  %28 = ptrtoint ptr %name35 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %name35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp31.1.not = icmp eq i32 %3, 1
  br i1 %cmp31.1.not, label %cond.end.cond.end.1.thread_crit_edge, label %cond.end.1

cond.end.cond.end.1.thread_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.1.thread

cond.end.1.thread:                                ; preds = %cond.end.cond.end.1.thread_crit_edge, %cond.end.thread
  %arrayidx36.1102 = getelementptr [14 x i8], ptr %name35, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx36.1102 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx36.1102, align 1
  br label %cond.end.2.thread

cond.end.1:                                       ; preds = %cond.end
  %arrayidx.1 = getelementptr i8, ptr %1, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.1, align 1
  %arrayidx36.1 = getelementptr [14 x i8], ptr %name35, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx36.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp31.2 = icmp ugt i32 %3, 2
  br i1 %cmp31.2, label %cond.end.2, label %cond.end.1.cond.end.2.thread_crit_edge

cond.end.1.cond.end.2.thread_crit_edge:           ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.2.thread

cond.end.2.thread:                                ; preds = %cond.end.1.cond.end.2.thread_crit_edge, %cond.end.1.thread
  %arrayidx36.2105 = getelementptr [14 x i8], ptr %name35, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx36.2105 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx36.2105, align 1
  br label %cond.end.3.thread

cond.end.2:                                       ; preds = %cond.end.1
  %arrayidx.2 = getelementptr i8, ptr %1, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.2, align 1
  %arrayidx36.2 = getelementptr [14 x i8], ptr %name35, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx36.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp31.3.not = icmp eq i32 %3, 3
  br i1 %cmp31.3.not, label %cond.end.2.cond.end.3.thread_crit_edge, label %cond.end.3

cond.end.2.cond.end.3.thread_crit_edge:           ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.3.thread

cond.end.3.thread:                                ; preds = %cond.end.2.cond.end.3.thread_crit_edge, %cond.end.2.thread
  %arrayidx36.3108 = getelementptr [14 x i8], ptr %name35, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx36.3108 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx36.3108, align 1
  br label %cond.end.4.thread

cond.end.3:                                       ; preds = %cond.end.2
  %arrayidx.3 = getelementptr i8, ptr %1, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.3, align 1
  %arrayidx36.3 = getelementptr [14 x i8], ptr %name35, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx36.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp31.4 = icmp ugt i32 %3, 4
  br i1 %cmp31.4, label %cond.end.4, label %cond.end.3.cond.end.4.thread_crit_edge

cond.end.3.cond.end.4.thread_crit_edge:           ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.4.thread

cond.end.4.thread:                                ; preds = %cond.end.3.cond.end.4.thread_crit_edge, %cond.end.3.thread
  %arrayidx36.4111 = getelementptr [14 x i8], ptr %name35, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx36.4111 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx36.4111, align 1
  br label %cond.end.5.thread

cond.end.4:                                       ; preds = %cond.end.3
  %arrayidx.4 = getelementptr i8, ptr %1, i32 4
  %42 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.4, align 1
  %arrayidx36.4 = getelementptr [14 x i8], ptr %name35, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx36.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp31.5.not = icmp eq i32 %3, 5
  br i1 %cmp31.5.not, label %cond.end.4.cond.end.5.thread_crit_edge, label %cond.end.5

cond.end.4.cond.end.5.thread_crit_edge:           ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.5.thread

cond.end.5.thread:                                ; preds = %cond.end.4.cond.end.5.thread_crit_edge, %cond.end.4.thread
  %arrayidx36.5114 = getelementptr [14 x i8], ptr %name35, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx36.5114 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx36.5114, align 1
  br label %cond.end.6.thread

cond.end.5:                                       ; preds = %cond.end.4
  %arrayidx.5 = getelementptr i8, ptr %1, i32 5
  %46 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.5, align 1
  %arrayidx36.5 = getelementptr [14 x i8], ptr %name35, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx36.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp31.6 = icmp ugt i32 %3, 6
  br i1 %cmp31.6, label %cond.end.6, label %cond.end.5.cond.end.6.thread_crit_edge

cond.end.5.cond.end.6.thread_crit_edge:           ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.6.thread

cond.end.6.thread:                                ; preds = %cond.end.5.cond.end.6.thread_crit_edge, %cond.end.5.thread
  %arrayidx36.6117 = getelementptr [14 x i8], ptr %name35, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx36.6117 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx36.6117, align 1
  br label %cond.end.7.thread

cond.end.6:                                       ; preds = %cond.end.5
  %arrayidx.6 = getelementptr i8, ptr %1, i32 6
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.6, align 1
  %arrayidx36.6 = getelementptr [14 x i8], ptr %name35, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx36.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp31.7.not = icmp eq i32 %3, 7
  br i1 %cmp31.7.not, label %cond.end.6.cond.end.7.thread_crit_edge, label %cond.end.7

cond.end.6.cond.end.7.thread_crit_edge:           ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.7.thread

cond.end.7.thread:                                ; preds = %cond.end.6.cond.end.7.thread_crit_edge, %cond.end.6.thread
  %arrayidx36.7120 = getelementptr [14 x i8], ptr %name35, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx36.7120 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx36.7120, align 1
  br label %cond.end.8.thread

cond.end.7:                                       ; preds = %cond.end.6
  %arrayidx.7 = getelementptr i8, ptr %1, i32 7
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.7, align 1
  %arrayidx36.7 = getelementptr [14 x i8], ptr %name35, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx36.7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp31.8 = icmp ugt i32 %3, 8
  br i1 %cmp31.8, label %cond.end.8, label %cond.end.7.cond.end.8.thread_crit_edge

cond.end.7.cond.end.8.thread_crit_edge:           ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.8.thread

cond.end.8.thread:                                ; preds = %cond.end.7.cond.end.8.thread_crit_edge, %cond.end.7.thread
  %arrayidx36.8123 = getelementptr [14 x i8], ptr %name35, i32 0, i32 8
  %57 = ptrtoint ptr %arrayidx36.8123 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx36.8123, align 1
  br label %cond.end.9.thread

cond.end.8:                                       ; preds = %cond.end.7
  %arrayidx.8 = getelementptr i8, ptr %1, i32 8
  %58 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.8, align 1
  %arrayidx36.8 = getelementptr [14 x i8], ptr %name35, i32 0, i32 8
  %60 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx36.8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp31.9.not = icmp eq i32 %3, 9
  br i1 %cmp31.9.not, label %cond.end.8.cond.end.9.thread_crit_edge, label %cond.end.9

cond.end.8.cond.end.9.thread_crit_edge:           ; preds = %cond.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.9.thread

cond.end.9.thread:                                ; preds = %cond.end.8.cond.end.9.thread_crit_edge, %cond.end.8.thread
  %arrayidx36.9126 = getelementptr [14 x i8], ptr %name35, i32 0, i32 9
  %61 = ptrtoint ptr %arrayidx36.9126 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx36.9126, align 1
  br label %cond.end.10.thread

cond.end.9:                                       ; preds = %cond.end.8
  %arrayidx.9 = getelementptr i8, ptr %1, i32 9
  %62 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.9, align 1
  %arrayidx36.9 = getelementptr [14 x i8], ptr %name35, i32 0, i32 9
  %64 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx36.9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp31.10 = icmp ugt i32 %3, 10
  br i1 %cmp31.10, label %cond.end.10, label %cond.end.9.cond.end.10.thread_crit_edge

cond.end.9.cond.end.10.thread_crit_edge:          ; preds = %cond.end.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.10.thread

cond.end.10.thread:                               ; preds = %cond.end.9.cond.end.10.thread_crit_edge, %cond.end.9.thread
  %arrayidx36.10129 = getelementptr [14 x i8], ptr %name35, i32 0, i32 10
  %65 = ptrtoint ptr %arrayidx36.10129 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx36.10129, align 1
  br label %cond.end.11.thread

cond.end.10:                                      ; preds = %cond.end.9
  %arrayidx.10 = getelementptr i8, ptr %1, i32 10
  %66 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.10, align 1
  %arrayidx36.10 = getelementptr [14 x i8], ptr %name35, i32 0, i32 10
  %68 = ptrtoint ptr %arrayidx36.10 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx36.10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp31.11.not = icmp eq i32 %3, 11
  br i1 %cmp31.11.not, label %cond.end.10.cond.end.11.thread_crit_edge, label %cond.end.11

cond.end.10.cond.end.11.thread_crit_edge:         ; preds = %cond.end.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.11.thread

cond.end.11.thread:                               ; preds = %cond.end.10.cond.end.11.thread_crit_edge, %cond.end.10.thread
  %arrayidx36.11132 = getelementptr [14 x i8], ptr %name35, i32 0, i32 11
  %69 = ptrtoint ptr %arrayidx36.11132 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx36.11132, align 1
  br label %cond.end.12.thread

cond.end.11:                                      ; preds = %cond.end.10
  %arrayidx.11 = getelementptr i8, ptr %1, i32 11
  %70 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.11, align 1
  %arrayidx36.11 = getelementptr [14 x i8], ptr %name35, i32 0, i32 11
  %72 = ptrtoint ptr %arrayidx36.11 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx36.11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp31.12 = icmp ugt i32 %3, 12
  br i1 %cmp31.12, label %cond.end.12, label %cond.end.11.cond.end.12.thread_crit_edge

cond.end.11.cond.end.12.thread_crit_edge:         ; preds = %cond.end.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.12.thread

cond.end.12.thread:                               ; preds = %cond.end.11.cond.end.12.thread_crit_edge, %cond.end.11.thread
  %arrayidx36.12135 = getelementptr [14 x i8], ptr %name35, i32 0, i32 12
  %73 = ptrtoint ptr %arrayidx36.12135 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx36.12135, align 1
  br label %cond.end.13

cond.end.12:                                      ; preds = %cond.end.11
  %arrayidx.12 = getelementptr i8, ptr %1, i32 12
  %74 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.12, align 1
  %arrayidx36.12 = getelementptr [14 x i8], ptr %name35, i32 0, i32 12
  %76 = ptrtoint ptr %arrayidx36.12 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx36.12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp31.13.not = icmp eq i32 %3, 13
  br i1 %cmp31.13.not, label %cond.end.12.cond.end.13_crit_edge, label %cond.true.13

cond.end.12.cond.end.13_crit_edge:                ; preds = %cond.end.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.13

cond.true.13:                                     ; preds = %cond.end.12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.13 = getelementptr i8, ptr %1, i32 13
  %77 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.13, align 1
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.true.13, %cond.end.12.cond.end.13_crit_edge, %cond.end.12.thread
  %cond.13 = phi i8 [ %78, %cond.true.13 ], [ 0, %cond.end.12.cond.end.13_crit_edge ], [ 0, %cond.end.12.thread ]
  %arrayidx36.13 = getelementptr [14 x i8], ptr %name35, i32 0, i32 13
  %79 = ptrtoint ptr %arrayidx36.13 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %cond.13, ptr %arrayidx36.13, align 1
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i, ptr noundef %dir) #7
  call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %cleanup

for.inc38:                                        ; preds = %for.cond10.preheader
  %add.ptr.1 = getelementptr i8, ptr %15, i32 16
  %80 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool15.not.1 = icmp eq i16 %81, 0
  br i1 %tobool15.not.1, label %for.inc38.if.then16_crit_edge, label %for.inc38.1

for.inc38.if.then16_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.1:                                      ; preds = %for.inc38
  %add.ptr.2 = getelementptr i8, ptr %15, i32 32
  %82 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool15.not.2 = icmp eq i16 %83, 0
  br i1 %tobool15.not.2, label %for.inc38.1.if.then16_crit_edge, label %for.inc38.2

for.inc38.1.if.then16_crit_edge:                  ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.2:                                      ; preds = %for.inc38.1
  %add.ptr.3 = getelementptr i8, ptr %15, i32 48
  %84 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool15.not.3 = icmp eq i16 %85, 0
  br i1 %tobool15.not.3, label %for.inc38.2.if.then16_crit_edge, label %for.inc38.3

for.inc38.2.if.then16_crit_edge:                  ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.3:                                      ; preds = %for.inc38.2
  %add.ptr.4 = getelementptr i8, ptr %15, i32 64
  %86 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool15.not.4 = icmp eq i16 %87, 0
  br i1 %tobool15.not.4, label %for.inc38.3.if.then16_crit_edge, label %for.inc38.4

for.inc38.3.if.then16_crit_edge:                  ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.4:                                      ; preds = %for.inc38.3
  %add.ptr.5 = getelementptr i8, ptr %15, i32 80
  %88 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool15.not.5 = icmp eq i16 %89, 0
  br i1 %tobool15.not.5, label %for.inc38.4.if.then16_crit_edge, label %for.inc38.5

for.inc38.4.if.then16_crit_edge:                  ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.5:                                      ; preds = %for.inc38.4
  %add.ptr.6 = getelementptr i8, ptr %15, i32 96
  %90 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool15.not.6 = icmp eq i16 %91, 0
  br i1 %tobool15.not.6, label %for.inc38.5.if.then16_crit_edge, label %for.inc38.6

for.inc38.5.if.then16_crit_edge:                  ; preds = %for.inc38.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.6:                                      ; preds = %for.inc38.5
  %add.ptr.7 = getelementptr i8, ptr %15, i32 112
  %92 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool15.not.7 = icmp eq i16 %93, 0
  br i1 %tobool15.not.7, label %for.inc38.6.if.then16_crit_edge, label %for.inc38.7

for.inc38.6.if.then16_crit_edge:                  ; preds = %for.inc38.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.7:                                      ; preds = %for.inc38.6
  %add.ptr.8 = getelementptr i8, ptr %15, i32 128
  %94 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool15.not.8 = icmp eq i16 %95, 0
  br i1 %tobool15.not.8, label %for.inc38.7.if.then16_crit_edge, label %for.inc38.8

for.inc38.7.if.then16_crit_edge:                  ; preds = %for.inc38.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.8:                                      ; preds = %for.inc38.7
  %add.ptr.9 = getelementptr i8, ptr %15, i32 144
  %96 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool15.not.9 = icmp eq i16 %97, 0
  br i1 %tobool15.not.9, label %for.inc38.8.if.then16_crit_edge, label %for.inc38.9

for.inc38.8.if.then16_crit_edge:                  ; preds = %for.inc38.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.9:                                      ; preds = %for.inc38.8
  %add.ptr.10 = getelementptr i8, ptr %15, i32 160
  %98 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr.10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool15.not.10 = icmp eq i16 %99, 0
  br i1 %tobool15.not.10, label %for.inc38.9.if.then16_crit_edge, label %for.inc38.10

for.inc38.9.if.then16_crit_edge:                  ; preds = %for.inc38.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.10:                                     ; preds = %for.inc38.9
  %add.ptr.11 = getelementptr i8, ptr %15, i32 176
  %100 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr.11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool15.not.11 = icmp eq i16 %101, 0
  br i1 %tobool15.not.11, label %for.inc38.10.if.then16_crit_edge, label %for.inc38.11

for.inc38.10.if.then16_crit_edge:                 ; preds = %for.inc38.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.11:                                     ; preds = %for.inc38.10
  %add.ptr.12 = getelementptr i8, ptr %15, i32 192
  %102 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool15.not.12 = icmp eq i16 %103, 0
  br i1 %tobool15.not.12, label %for.inc38.11.if.then16_crit_edge, label %for.inc38.12

for.inc38.11.if.then16_crit_edge:                 ; preds = %for.inc38.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.12:                                     ; preds = %for.inc38.11
  %add.ptr.13 = getelementptr i8, ptr %15, i32 208
  %104 = ptrtoint ptr %add.ptr.13 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool15.not.13 = icmp eq i16 %105, 0
  br i1 %tobool15.not.13, label %for.inc38.12.if.then16_crit_edge, label %for.inc38.13

for.inc38.12.if.then16_crit_edge:                 ; preds = %for.inc38.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.13:                                     ; preds = %for.inc38.12
  %add.ptr.14 = getelementptr i8, ptr %15, i32 224
  %106 = ptrtoint ptr %add.ptr.14 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool15.not.14 = icmp eq i16 %107, 0
  br i1 %tobool15.not.14, label %for.inc38.13.if.then16_crit_edge, label %for.inc38.14

for.inc38.13.if.then16_crit_edge:                 ; preds = %for.inc38.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.14:                                     ; preds = %for.inc38.13
  %add.ptr.15 = getelementptr i8, ptr %15, i32 240
  %108 = ptrtoint ptr %add.ptr.15 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %add.ptr.15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool15.not.15 = icmp eq i16 %109, 0
  br i1 %tobool15.not.15, label %for.inc38.14.if.then16_crit_edge, label %for.inc38.15

for.inc38.14.if.then16_crit_edge:                 ; preds = %for.inc38.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.15:                                     ; preds = %for.inc38.14
  %add.ptr.16 = getelementptr i8, ptr %15, i32 256
  %110 = ptrtoint ptr %add.ptr.16 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool15.not.16 = icmp eq i16 %111, 0
  br i1 %tobool15.not.16, label %for.inc38.15.if.then16_crit_edge, label %for.inc38.16

for.inc38.15.if.then16_crit_edge:                 ; preds = %for.inc38.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.16:                                     ; preds = %for.inc38.15
  %add.ptr.17 = getelementptr i8, ptr %15, i32 272
  %112 = ptrtoint ptr %add.ptr.17 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr.17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool15.not.17 = icmp eq i16 %113, 0
  br i1 %tobool15.not.17, label %for.inc38.16.if.then16_crit_edge, label %for.inc38.17

for.inc38.16.if.then16_crit_edge:                 ; preds = %for.inc38.16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.17:                                     ; preds = %for.inc38.16
  %add.ptr.18 = getelementptr i8, ptr %15, i32 288
  %114 = ptrtoint ptr %add.ptr.18 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool15.not.18 = icmp eq i16 %115, 0
  br i1 %tobool15.not.18, label %for.inc38.17.if.then16_crit_edge, label %for.inc38.18

for.inc38.17.if.then16_crit_edge:                 ; preds = %for.inc38.17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.18:                                     ; preds = %for.inc38.17
  %add.ptr.19 = getelementptr i8, ptr %15, i32 304
  %116 = ptrtoint ptr %add.ptr.19 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool15.not.19 = icmp eq i16 %117, 0
  br i1 %tobool15.not.19, label %for.inc38.18.if.then16_crit_edge, label %for.inc38.19

for.inc38.18.if.then16_crit_edge:                 ; preds = %for.inc38.18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.19:                                     ; preds = %for.inc38.18
  %add.ptr.20 = getelementptr i8, ptr %15, i32 320
  %118 = ptrtoint ptr %add.ptr.20 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool15.not.20 = icmp eq i16 %119, 0
  br i1 %tobool15.not.20, label %for.inc38.19.if.then16_crit_edge, label %for.inc38.20

for.inc38.19.if.then16_crit_edge:                 ; preds = %for.inc38.19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.20:                                     ; preds = %for.inc38.19
  %add.ptr.21 = getelementptr i8, ptr %15, i32 336
  %120 = ptrtoint ptr %add.ptr.21 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool15.not.21 = icmp eq i16 %121, 0
  br i1 %tobool15.not.21, label %for.inc38.20.if.then16_crit_edge, label %for.inc38.21

for.inc38.20.if.then16_crit_edge:                 ; preds = %for.inc38.20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.21:                                     ; preds = %for.inc38.20
  %add.ptr.22 = getelementptr i8, ptr %15, i32 352
  %122 = ptrtoint ptr %add.ptr.22 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr.22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool15.not.22 = icmp eq i16 %123, 0
  br i1 %tobool15.not.22, label %for.inc38.21.if.then16_crit_edge, label %for.inc38.22

for.inc38.21.if.then16_crit_edge:                 ; preds = %for.inc38.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.22:                                     ; preds = %for.inc38.21
  %add.ptr.23 = getelementptr i8, ptr %15, i32 368
  %124 = ptrtoint ptr %add.ptr.23 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr.23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool15.not.23 = icmp eq i16 %125, 0
  br i1 %tobool15.not.23, label %for.inc38.22.if.then16_crit_edge, label %for.inc38.23

for.inc38.22.if.then16_crit_edge:                 ; preds = %for.inc38.22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.23:                                     ; preds = %for.inc38.22
  %add.ptr.24 = getelementptr i8, ptr %15, i32 384
  %126 = ptrtoint ptr %add.ptr.24 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %tobool15.not.24 = icmp eq i16 %127, 0
  br i1 %tobool15.not.24, label %for.inc38.23.if.then16_crit_edge, label %for.inc38.24

for.inc38.23.if.then16_crit_edge:                 ; preds = %for.inc38.23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.24:                                     ; preds = %for.inc38.23
  %add.ptr.25 = getelementptr i8, ptr %15, i32 400
  %128 = ptrtoint ptr %add.ptr.25 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool15.not.25 = icmp eq i16 %129, 0
  br i1 %tobool15.not.25, label %for.inc38.24.if.then16_crit_edge, label %for.inc38.25

for.inc38.24.if.then16_crit_edge:                 ; preds = %for.inc38.24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.25:                                     ; preds = %for.inc38.24
  %add.ptr.26 = getelementptr i8, ptr %15, i32 416
  %130 = ptrtoint ptr %add.ptr.26 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %add.ptr.26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool15.not.26 = icmp eq i16 %131, 0
  br i1 %tobool15.not.26, label %for.inc38.25.if.then16_crit_edge, label %for.inc38.26

for.inc38.25.if.then16_crit_edge:                 ; preds = %for.inc38.25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.26:                                     ; preds = %for.inc38.25
  %add.ptr.27 = getelementptr i8, ptr %15, i32 432
  %132 = ptrtoint ptr %add.ptr.27 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %add.ptr.27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool15.not.27 = icmp eq i16 %133, 0
  br i1 %tobool15.not.27, label %for.inc38.26.if.then16_crit_edge, label %for.inc38.27

for.inc38.26.if.then16_crit_edge:                 ; preds = %for.inc38.26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.27:                                     ; preds = %for.inc38.26
  %add.ptr.28 = getelementptr i8, ptr %15, i32 448
  %134 = ptrtoint ptr %add.ptr.28 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr.28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool15.not.28 = icmp eq i16 %135, 0
  br i1 %tobool15.not.28, label %for.inc38.27.if.then16_crit_edge, label %for.inc38.28

for.inc38.27.if.then16_crit_edge:                 ; preds = %for.inc38.27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.28:                                     ; preds = %for.inc38.27
  %add.ptr.29 = getelementptr i8, ptr %15, i32 464
  %136 = ptrtoint ptr %add.ptr.29 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool15.not.29 = icmp eq i16 %137, 0
  br i1 %tobool15.not.29, label %for.inc38.28.if.then16_crit_edge, label %for.inc38.29

for.inc38.28.if.then16_crit_edge:                 ; preds = %for.inc38.28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.29:                                     ; preds = %for.inc38.28
  %add.ptr.30 = getelementptr i8, ptr %15, i32 480
  %138 = ptrtoint ptr %add.ptr.30 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %add.ptr.30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool15.not.30 = icmp eq i16 %139, 0
  br i1 %tobool15.not.30, label %for.inc38.29.if.then16_crit_edge, label %for.inc38.30

for.inc38.29.if.then16_crit_edge:                 ; preds = %for.inc38.29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.30:                                     ; preds = %for.inc38.29
  %add.ptr.31 = getelementptr i8, ptr %15, i32 496
  %140 = ptrtoint ptr %add.ptr.31 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %add.ptr.31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %tobool15.not.31 = icmp eq i16 %141, 0
  br i1 %tobool15.not.31, label %for.inc38.30.if.then16_crit_edge, label %for.inc38.31

for.inc38.30.if.then16_crit_edge:                 ; preds = %for.inc38.30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.inc38.31:                                     ; preds = %for.inc38.30
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  %inc42 = add i32 %block.092, 1
  %cmp5.not = icmp sgt i32 %inc42, %7
  br i1 %cmp5.not, label %for.inc38.31.cleanup_crit_edge, label %for.inc38.31.for.body_crit_edge

for.inc38.31.for.body_crit_edge:                  ; preds = %for.inc38.31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc38.31.cleanup_crit_edge:                   ; preds = %for.inc38.31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc38.31.cleanup_crit_edge, %cond.end.13, %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.13 ], [ -2, %entry.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ -28, %if.end3.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ], [ -28, %for.inc38.31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @bfs_dir_operations, !1, !"bfs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/bfs/dir.c", i32 71, i32 30}
!2 = !{ptr @bfs_dir_inops, !3, !"bfs_dir_inops", i1 false, i1 false}
!3 = !{!"../fs/bfs/dir.c", i32 259, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/bfs/dir.c", i32 38, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bfs_readdir._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @bfs_readdir._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/bfs/dir.c", i32 111, i32 16}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/bfs/dir.c", i32 183, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bfs_unlink._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bfs_unlink._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
