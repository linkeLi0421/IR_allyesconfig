; ModuleID = '/llk/IR_all_yes/fs/omfs/dir.c_pt.bc'
source_filename = "../fs/omfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.omfs_sb_info = type { i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.omfs_inode = type { %struct.omfs_header, i64, i64, i64, [35 x i8], i8, i32, [64 x i8], [256 x i8], i64 }
%struct.omfs_header = type { i64, i32, i16, [2 x i8], i8, i8, i8, i8, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }

@omfs_is_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014omfs: bad hash chain detected\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omfs_is_bad\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/omfs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@omfs_is_bad._entry_ptr = internal global ptr @omfs_is_bad._entry, section ".printk_index", align 4
@omfs_dir_inops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @omfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @omfs_create, ptr null, ptr @omfs_remove, ptr null, ptr @omfs_mkdir, ptr @omfs_remove, ptr null, ptr @omfs_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@omfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 325, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"omfs_dir_operations\00", align 1
@___asan_gen_.18 = private constant [17 x i8] c"../fs/omfs/dir.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 457, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 3566, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 3571, i32 25 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @omfs_is_bad._entry, ptr @omfs_is_bad._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omfs_dir_operations, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_is_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_make_empty(ptr nocapture noundef readonly %inode, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %3 to i64
  %call1 = tail call ptr @omfs_bread(ptr noundef %sb, i64 noundef %conv) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 416)
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %inode, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 440
  %s_sys_blocksize = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %s_sys_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_sys_blocksize, align 8
  %sub = add i32 %13, -440
  %14 = call ptr @memset(ptr %arrayidx, i32 255, i32 %sub)
  br label %brelse.exit

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omfs_make_empty_table(ptr noundef nonnull %call1, i32 noundef 464) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.else, %if.then4
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %conv9 = zext i32 %18 to i64
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv9, ptr %16, align 8
  %i_sibling = getelementptr inbounds %struct.omfs_inode, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %i_sibling to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %i_sibling, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call1) #5
  tail call void @__brelse(ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omfs_bread(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omfs_make_empty_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_is_bad(ptr nocapture noundef readonly %sbi, ptr nocapture noundef readonly %header, i64 noundef %fsblock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %header, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %fsblock)
  %cmp.not = icmp eq i64 %1, %fsblock
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %s_root_ino = getelementptr inbounds %struct.omfs_sb_info, ptr %sbi, i32 0, i32 2
  %2 = ptrtoint ptr %s_root_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_root_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %fsblock)
  %cmp1 = icmp ugt i64 %3, %fsblock
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %lor.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.end:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %sbi to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sbi, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %fsblock)
  %cmp2 = icmp ult i64 %5, %fsblock
  br i1 %cmp2, label %lor.end.do.end_crit_edge, label %lor.end.if.end_crit_edge

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %6 = phi i32 [ 1, %do.end ], [ 0, %lor.end.if.end_crit_edge ]
  ret i32 %6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %dummy.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp = icmp ugt i32 %1, 256
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy.i) #5
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i.i.i.not = icmp eq i32 %1, 0
  br i1 %cmp6.i.i.i.not, label %if.end.omfs_get_bucket.exit.i_crit_edge, label %if.end.for.body.i.i.i_crit_edge

if.end.for.body.i.i.i_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i.i

if.end.omfs_get_bucket.exit.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.for.body.i.i.i_crit_edge
  %hash.08.i.i.i = phi i32 [ %xor.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.for.body.i.i.i_crit_edge ]
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %3, i32 %i.07.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %7 to i32
  %arrayidx.i.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i.i.i.i = icmp eq i8 %10, 0
  %sub.i.i.i.i = add i8 %7, 32
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, i8 %7, i8 %sub.i.i.i.i
  %conv.i.i.i = zext i8 %spec.select.i.i.i.i to i32
  %rem.i.i.i = urem i32 %i.07.i.i.i, 24
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, %rem.i.i.i
  %xor.i.i.i = xor i32 %shl.i.i.i, %hash.08.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %1
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.omfs_get_bucket.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.body.i.i.i.omfs_get_bucket.exit.i_crit_edge:  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit.i

omfs_get_bucket.exit.i:                           ; preds = %for.body.i.i.i.omfs_get_bucket.exit.i_crit_edge, %if.end.omfs_get_bucket.exit.i_crit_edge
  %hash.0.lcssa.i.i.i = phi i32 [ 0, %if.end.omfs_get_bucket.exit.i_crit_edge ], [ %xor.i.i.i, %for.body.i.i.i.omfs_get_bucket.exit.i_crit_edge ]
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i.i, align 8
  %conv1.i.i = zext i32 %14 to i64
  %call2.i.i = tail call ptr @omfs_bread(ptr noundef %12, i64 noundef %conv1.i.i) #5
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %if.else.thread, label %omfs_find_entry.exit

if.else.thread:                                   ; preds = %omfs_get_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy.i) #5
  br label %if.then11

omfs_find_entry.exit:                             ; preds = %omfs_get_bucket.exit.i
  %sub.i.i = add i64 %5, -440
  %div.i.i = sdiv i64 %sub.i.i, 8
  %conv.i.i = trunc i64 %div.i.i to i32
  %rem1.i.i.i = srem i32 %hash.0.lcssa.i.i.i, %conv.i.i
  %mul.i.i = shl i32 %rem1.i.i.i, 3
  %add.i.i = add i32 %mul.i.i, 440
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call2.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %16, i32 %add.i.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  tail call void @__brelse(ptr noundef nonnull %call2.i.i) #5
  %call2.i = call fastcc ptr @omfs_scan_list(ptr noundef %dir, i64 noundef %18, ptr noundef %3, i32 noundef %1, ptr noundef nonnull %dummy.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy.i) #5
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then6

if.then6:                                         ; preds = %omfs_find_entry.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2.i, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %conv = trunc i64 %22 to i32
  %tobool.not.i25 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i25, label %if.then6.brelse.exit_crit_edge, label %if.then.i

if.then6.brelse.exit_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %call2.i) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then6.brelse.exit_crit_edge
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %call7 = tail call ptr @omfs_iget(ptr noundef %24, i32 noundef %conv) #5
  br label %if.end14

if.else:                                          ; preds = %omfs_find_entry.exit
  %cmp9.not = icmp eq ptr %call2.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp9.not, label %if.else.if.end14_crit_edge, label %if.else.if.then11_crit_edge

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.else.if.then11_crit_edge, %if.else.thread
  %retval.0.i2831 = phi ptr [ inttoptr (i32 -5 to ptr), %if.else.thread ], [ %call2.i, %if.else.if.then11_crit_edge ]
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else.if.end14_crit_edge, %brelse.exit
  %inode.0 = phi ptr [ %retval.0.i2831, %if.then11 ], [ null, %if.else.if.end14_crit_edge ], [ %call7, %brelse.exit ]
  %call15 = tail call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %if.end14 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, -32768
  %call = tail call fastcc i32 @omfs_add_node(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_remove(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %6, -440
  %div.i = sdiv i64 %sub.i, 8
  %conv.i = trunc i64 %div.i to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  %conv1.i = zext i32 %10 to i64
  %call.i = tail call ptr @omfs_bread(ptr noundef %8, i64 noundef %conv1.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp19.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp19.i, label %for.body.preheader.i, label %if.end.i.omfs_dir_is_empty.exit_crit_edge

if.end.i.omfs_dir_is_empty.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_dir_is_empty.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %13 = shl i32 %conv.i, 3
  %14 = add i32 %13, 440
  %uglygep.i = getelementptr i8, ptr %12, i32 %14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ptr.020.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i, %for.body.preheader.i ]
  %15 = ptrtoint ptr %ptr.020.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptr.020.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp3.not.i = icmp eq i64 %16, -1
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.i.omfs_dir_is_empty.exit_crit_edge

for.body.i.omfs_dir_is_empty.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_dir_is_empty.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %incdec.ptr.i = getelementptr i64, ptr %ptr.020.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.omfs_dir_is_empty.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.omfs_dir_is_empty.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_dir_is_empty.exit

omfs_dir_is_empty.exit:                           ; preds = %for.inc.i.omfs_dir_is_empty.exit_crit_edge, %for.body.i.omfs_dir_is_empty.exit_crit_edge, %if.end.i.omfs_dir_is_empty.exit_crit_edge
  %ptr.0.lcssa.i = phi ptr [ %arrayidx.i, %if.end.i.omfs_dir_is_empty.exit_crit_edge ], [ %uglygep.i, %for.inc.i.omfs_dir_is_empty.exit_crit_edge ], [ %ptr.020.i, %for.body.i.omfs_dir_is_empty.exit_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  %17 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ptr.0.lcssa.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp7.i.not = icmp eq i64 %18, -1
  br i1 %cmp7.i.not, label %omfs_dir_is_empty.exit.cleanup_crit_edge, label %omfs_dir_is_empty.exit.if.end_crit_edge

omfs_dir_is_empty.exit.if.end_crit_edge:          ; preds = %omfs_dir_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

omfs_dir_is_empty.exit.cleanup_crit_edge:         ; preds = %omfs_dir_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %omfs_dir_is_empty.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @omfs_delete_entry(ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clear_nlink(ptr noundef %1) #5
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  tail call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %omfs_dir_is_empty.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -39, %omfs_dir_is_empty.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -39, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call fastcc i32 @omfs_add_node(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i28 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i28 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @omfs_remove(ptr noundef %new_dir, ptr noundef %new_dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @omfs_delete_entry(ptr noundef %old_dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  tail call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #5
  %call13 = tail call fastcc i32 @omfs_add_link(ptr noundef %new_dentry, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #5
  %4 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %tobool.not = icmp ult i64 %3, 4294967296
  br i1 %tobool.not, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %3)
  %cmp = icmp ult i64 %3, 1048576
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %if.then2.if.end5_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.then2.if.then6.i_crit_edge
  ]

if.then2.if.then6.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.i:                                        ; preds = %if.then2
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %11 to i64
  %call.i.i = tail call i32 %5(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup27_crit_edge

if.then.i.cleanup27_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %pos, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.then2.if.then6.i_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #5
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #5
  %conv.i20.i = zext i32 %22 to i64
  %call1.i.i = tail call i32 %14(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.then6.i.if.end5_crit_edge, label %if.then6.i.cleanup27_crit_edge

if.then6.i.cleanup27_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.then6.i.if.end5_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then6.i.if.end5_crit_edge, %if.then2.if.end5_crit_edge
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1048576, ptr %pos, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end.if.end7_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size, align 8
  %sub = add i64 %25, -440
  %div = sdiv i64 %sub, 8
  %conv = trunc i64 %div to i32
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %conv14 = zext i32 %31 to i64
  %call15 = tail call ptr @omfs_bread(ptr noundef %29, i64 noundef %conv14) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end7.cleanup27_crit_edge, label %if.end18

if.end7.cleanup27_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end18:                                         ; preds = %if.end7
  %32 = lshr i64 %27, 20
  %33 = trunc i64 %32 to i32
  %conv11 = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv)
  %cmp2065 = icmp ult i32 %conv11, %conv
  br i1 %cmp2065, label %for.body.preheader, label %if.end18.brelse.exit_crit_edge

if.end18.brelse.exit_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

for.body.preheader:                               ; preds = %if.end18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call15, i32 0, i32 5
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 440
  %add.ptr19 = getelementptr i64, ptr %add.ptr, i32 %conv11
  %36 = trunc i64 %27 to i32
  %conv13 = and i32 %36, 1048575
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %hindex.068 = phi i32 [ 0, %for.inc.for.body_crit_edge ], [ %conv13, %for.body.preheader ]
  %hchain.067 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv11, %for.body.preheader ]
  %p.066 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr19, %for.body.preheader ]
  %incdec.ptr = getelementptr i64, ptr %p.066, i32 1
  %37 = ptrtoint ptr %p.066 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %p.066, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %38)
  %cmp.not56.i = icmp eq i64 %38, -1
  br i1 %cmp.not56.i, label %for.body.for.inc_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %hindex.addr.058.i = phi i32 [ %hindex.addr.1.i, %cleanup.i.while.body.i_crit_edge ], [ %hindex.068, %for.body.while.body.i_crit_edge ]
  %fsblock.addr.057.i = phi i64 [ %54, %cleanup.i.while.body.i_crit_edge ], [ %38, %for.body.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call.i = tail call ptr @omfs_bread(ptr noundef %40, i64 noundef %fsblock.addr.057.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.for.inc_crit_edge, label %if.end.i

while.body.i.for.inc_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %while.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %42, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %fsblock.addr.057.i)
  %cmp.not.i.i = icmp eq i64 %48, %fsblock.addr.057.i
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.omfs_fill_chain.exit.thread57_crit_edge

if.end.i.omfs_fill_chain.exit.thread57_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_fill_chain.exit.thread57

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %s_root_ino.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %s_root_ino.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %s_root_ino.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %fsblock.addr.057.i)
  %cmp1.i.i = icmp ugt i64 %50, %fsblock.addr.057.i
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.omfs_fill_chain.exit.thread57_crit_edge, label %lor.end.i.i

lor.lhs.false.i.i.omfs_fill_chain.exit.thread57_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_fill_chain.exit.thread57

lor.end.i.i:                                      ; preds = %lor.lhs.false.i.i
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %46, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %fsblock.addr.057.i)
  %cmp2.i.i = icmp ult i64 %52, %fsblock.addr.057.i
  br i1 %cmp2.i.i, label %lor.end.i.i.omfs_fill_chain.exit.thread57_crit_edge, label %if.end6.i

lor.end.i.i.omfs_fill_chain.exit.thread57_crit_edge: ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_fill_chain.exit.thread57

omfs_fill_chain.exit.thread57:                    ; preds = %lor.end.i.i.omfs_fill_chain.exit.thread57_crit_edge, %lor.lhs.false.i.i.omfs_fill_chain.exit.thread57_crit_edge, %if.end.i.omfs_fill_chain.exit.thread57_crit_edge
  %call.i.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %for.inc

if.end6.i:                                        ; preds = %lor.end.i.i
  %i_sibling.i = getelementptr inbounds %struct.omfs_inode, ptr %42, i32 0, i32 2
  %53 = ptrtoint ptr %i_sibling.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_sibling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hindex.addr.058.i)
  %tobool7.not.i = icmp eq i32 %hindex.addr.058.i, 0
  br i1 %tobool7.not.i, label %if.end9.i51, label %brelse.exit40.i

brelse.exit40.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %hindex.addr.058.i, -1
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %cleanup.i

if.end9.i51:                                      ; preds = %if.end6.i
  %i_type.i = getelementptr inbounds %struct.omfs_inode, ptr %42, i32 0, i32 5
  %55 = ptrtoint ptr %i_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %i_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %56)
  %cmp10.i = icmp eq i8 %56, 68
  %conv12.i = select i1 %cmp10.i, i32 4, i32 8
  %i_name.i = getelementptr inbounds %struct.omfs_inode, ptr %42, i32 0, i32 8
  %call15.i = tail call i32 @strnlen(ptr noundef %i_name.i, i32 noundef 256) #9
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 8
  %59 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %pos, align 8
  %call.i41.i = tail call i32 %58(ptr noundef %ctx, ptr noundef %i_name.i, i32 noundef %call15.i, i64 noundef %60, i64 noundef %fsblock.addr.057.i, i32 noundef %conv12.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i.i50 = icmp eq i32 %call.i41.i, 0
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br i1 %cmp.i.i50, label %brelse.exit47.i, label %if.end9.i51.brelse.exit_crit_edge

if.end9.i51.brelse.exit_crit_edge:                ; preds = %if.end9.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

brelse.exit47.i:                                  ; preds = %if.end9.i51
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pos, align 8
  %inc.i = add i64 %62, 1
  store i64 %inc.i, ptr %pos, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %brelse.exit47.i, %brelse.exit40.i
  %hindex.addr.1.i = phi i32 [ %dec.i, %brelse.exit40.i ], [ 0, %brelse.exit47.i ]
  %cmp.not.i = icmp eq i64 %54, -1
  br i1 %cmp.not.i, label %cleanup.i.for.inc_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %cleanup.i.for.inc_crit_edge, %omfs_fill_chain.exit.thread57, %while.body.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = shl i32 %hchain.067, 20
  %shl = add i32 %add, 2097152
  %conv25 = zext i32 %shl to i64
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv25, ptr %pos, align 8
  %inc = add i32 %hchain.067, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.brelse.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.brelse.exit_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %for.inc.brelse.exit_crit_edge, %if.end9.i51.brelse.exit_crit_edge, %if.end18.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call15) #5
  br label %cleanup27

cleanup27:                                        ; preds = %brelse.exit, %if.end7.cleanup27_crit_edge, %if.then6.i.cleanup27_crit_edge, %if.then.i.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit ], [ -22, %entry.cleanup27_crit_edge ], [ -22, %if.end7.cleanup27_crit_edge ], [ 0, %if.then.i.cleanup27_crit_edge ], [ 0, %if.then6.i.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @omfs_scan_list(ptr nocapture noundef readonly %dir, i64 noundef %block, ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef writeonly %prev_block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prev_block to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %prev_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %block)
  %cmp.not30 = icmp eq i64 %block, -1
  br i1 %cmp.not30, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %brelse.exit28.while.body_crit_edge, %while.body.lr.ph
  %block.addr.031 = phi i64 [ %block, %while.body.lr.ph ], [ %17, %brelse.exit28.while.body_crit_edge ]
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @omfs_bread(ptr noundef %2, i64 noundef %block.addr.031) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %block.addr.031)
  %cmp.not.i = icmp eq i64 %10, %block.addr.031
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.brelse.exit_crit_edge

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %s_root_ino.i = getelementptr inbounds %struct.omfs_sb_info, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %s_root_ino.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_root_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %block.addr.031)
  %cmp1.i = icmp ugt i64 %12, %block.addr.031
  br i1 %cmp1.i, label %lor.lhs.false.i.brelse.exit_crit_edge, label %lor.end.i

lor.lhs.false.i.brelse.exit_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

lor.end.i:                                        ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %block.addr.031)
  %cmp2.i = icmp ult i64 %14, %block.addr.031
  br i1 %cmp2.i, label %lor.end.i.brelse.exit_crit_edge, label %if.end6

lor.end.i.brelse.exit_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %lor.end.i.brelse.exit_crit_edge, %lor.lhs.false.i.brelse.exit_crit_edge, %if.end.brelse.exit_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @__brelse(ptr noundef nonnull %call) #5
  br label %cleanup

if.end6:                                          ; preds = %lor.end.i
  %i_name = getelementptr inbounds %struct.omfs_inode, ptr %4, i32 0, i32 8
  %call7 = tail call i32 @strncmp(ptr noundef %i_name, ptr noundef %name, i32 noundef %namelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %brelse.exit28

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit28:                                    ; preds = %if.end6
  %15 = ptrtoint ptr %prev_block to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %block.addr.031, ptr %prev_block, align 8
  %i_sibling = getelementptr inbounds %struct.omfs_inode, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %i_sibling to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_sibling, align 8
  tail call void @__brelse(ptr noundef nonnull %call) #5
  %cmp.not = icmp eq i64 %17, -1
  br i1 %cmp.not, label %brelse.exit28.cleanup_crit_edge, label %brelse.exit28.while.body_crit_edge

brelse.exit28.while.body_crit_edge:               ; preds = %brelse.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

brelse.exit28.cleanup_crit_edge:                  ; preds = %brelse.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit28.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %brelse.exit, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %brelse.exit ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %while.body.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %brelse.exit28.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omfs_add_node(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @omfs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %6 to i64
  %call1.i = tail call ptr @omfs_bread(ptr noundef %2, i64 noundef %conv.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.out_free_inode_crit_edge, label %if.end.i

if.end.out_free_inode_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_inode

if.end.i:                                         ; preds = %if.end
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call1.i, i32 0, i32 5
  %7 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data.i, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 416)
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp.i20 = icmp eq i16 %12, 16384
  br i1 %cmp.i20, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %14, i32 440
  %s_sys_blocksize.i = getelementptr inbounds %struct.omfs_sb_info, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %s_sys_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_sys_blocksize.i, align 8
  %sub.i = add i32 %16, -440
  %17 = call ptr @memset(ptr %arrayidx.i, i32 255, i32 %sub.i)
  br label %if.end5

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omfs_make_empty_table(ptr noundef nonnull %call1.i, i32 noundef 464) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else.i, %if.then4.i
  %18 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i, align 4
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %conv9.i = zext i32 %21 to i64
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv9.i, ptr %19, align 8
  %i_sibling.i = getelementptr inbounds %struct.omfs_inode, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %i_sibling.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %i_sibling.i, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call1.i) #5
  tail call void @__brelse(ptr noundef nonnull %call1.i) #5
  %call6 = tail call fastcc i32 @omfs_add_link(ptr noundef %dentry, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_free_inode_crit_edge

if.end5.out_free_inode_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_inode

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %call) #5
  br label %cleanup

out_free_inode:                                   ; preds = %if.end5.out_free_inode_crit_edge, %if.end.out_free_inode_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.out_free_inode_crit_edge ], [ -12, %if.end.out_free_inode_crit_edge ]
  tail call void @iput(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free_inode, %if.end9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %out_free_inode ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omfs_new_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omfs_add_link(ptr nocapture noundef readonly %dentry, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i.i = icmp sgt i32 %7, 0
  br i1 %cmp6.i.i, label %entry.for.body.i.i_crit_edge, label %entry.omfs_get_bucket.exit_crit_edge

entry.omfs_get_bucket.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %hash.08.i.i = phi i32 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %i.07.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i.i.i = icmp eq i8 %14, 0
  %sub.i.i.i = add i8 %11, 32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %11, i8 %sub.i.i.i
  %conv.i.i = zext i8 %spec.select.i.i.i to i32
  %rem.i.i = urem i32 %i.07.i.i, 24
  %shl.i.i = shl nuw nsw i32 %conv.i.i, %rem.i.i
  %xor.i.i = xor i32 %shl.i.i, %hash.08.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.body.i.i.omfs_get_bucket.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.omfs_get_bucket.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit

omfs_get_bucket.exit:                             ; preds = %for.body.i.i.omfs_get_bucket.exit_crit_edge, %entry.omfs_get_bucket.exit_crit_edge
  %hash.0.lcssa.i.i = phi i32 [ 0, %entry.omfs_get_bucket.exit_crit_edge ], [ %xor.i.i, %for.body.i.i.omfs_get_bucket.exit_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  %conv1.i = zext i32 %18 to i64
  %call2.i = tail call ptr @omfs_bread(ptr noundef %16, i64 noundef %conv1.i) #5
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %omfs_get_bucket.exit.cleanup_crit_edge, label %brelse.exit

omfs_get_bucket.exit.cleanup_crit_edge:           ; preds = %omfs_get_bucket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit:                                      ; preds = %omfs_get_bucket.exit
  %sub.i = add i64 %9, -440
  %div.i = sdiv i64 %sub.i, 8
  %conv.i = trunc i64 %div.i to i32
  %rem1.i.i = srem i32 %hash.0.lcssa.i.i, %conv.i
  %mul.i = shl i32 %rem1.i.i, 3
  %add.i = add i32 %mul.i, 440
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2.i, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 %add.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %24 to i64
  store i64 %conv, ptr %arrayidx, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call2.i) #5
  tail call void @__brelse(ptr noundef nonnull %call2.i) #5
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %27 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_ino, align 8
  %conv6 = zext i32 %28 to i64
  %call7 = tail call ptr @omfs_bread(ptr noundef %26, i64 noundef %conv6) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit49

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit49:                                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  %b_data11 = getelementptr inbounds %struct.buffer_head, ptr %call7, i32 0, i32 5
  %29 = ptrtoint ptr %b_data11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data11, align 4
  %i_name = getelementptr inbounds %struct.omfs_inode, ptr %30, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %i_name, ptr %5, i32 %7)
  %add.ptr = getelementptr i8, ptr %i_name, i32 %7
  %sub = sub i32 256, %7
  %32 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %i_sibling = getelementptr inbounds %struct.omfs_inode, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %i_sibling to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %22, ptr %i_sibling, align 8
  %34 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino.i, align 8
  %conv15 = zext i32 %35 to i64
  %i_parent = getelementptr inbounds %struct.omfs_inode, ptr %30, i32 0, i32 1
  %36 = ptrtoint ptr %i_parent to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv15, ptr %i_parent, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call7) #5
  tail call void @__brelse(ptr noundef nonnull %call7) #5
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #5
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #5
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit49, %brelse.exit.cleanup_crit_edge, %omfs_get_bucket.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit49 ], [ -12, %brelse.exit.cleanup_crit_edge ], [ -12, %omfs_get_bucket.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omfs_delete_entry(ptr nocapture noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  %prev = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prev) #5
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %prev, align 8, !annotation !23
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i.i = icmp sgt i32 %7, 0
  br i1 %cmp6.i.i, label %entry.for.body.i.i_crit_edge, label %entry.omfs_get_bucket.exit_crit_edge

entry.omfs_get_bucket.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %hash.08.i.i = phi i32 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %i.07.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i.i = zext i8 %12 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i.i.i = icmp eq i8 %15, 0
  %sub.i.i.i = add i8 %12, 32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %12, i8 %sub.i.i.i
  %conv.i.i = zext i8 %spec.select.i.i.i to i32
  %rem.i.i = urem i32 %i.07.i.i, 24
  %shl.i.i = shl nuw nsw i32 %conv.i.i, %rem.i.i
  %xor.i.i = xor i32 %shl.i.i, %hash.08.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.body.i.i.omfs_get_bucket.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.omfs_get_bucket.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omfs_get_bucket.exit

omfs_get_bucket.exit:                             ; preds = %for.body.i.i.omfs_get_bucket.exit_crit_edge, %entry.omfs_get_bucket.exit_crit_edge
  %hash.0.lcssa.i.i = phi i32 [ 0, %entry.omfs_get_bucket.exit_crit_edge ], [ %xor.i.i, %for.body.i.i.omfs_get_bucket.exit_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino.i, align 8
  %conv1.i = zext i32 %19 to i64
  %call2.i = tail call ptr @omfs_bread(ptr noundef %17, i64 noundef %conv1.i) #5
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %omfs_get_bucket.exit.out_crit_edge, label %if.end

omfs_get_bucket.exit.out_crit_edge:               ; preds = %omfs_get_bucket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %omfs_get_bucket.exit
  %sub.i = add i64 %10, -440
  %div.i = sdiv i64 %sub.i, 8
  %conv.i = trunc i64 %div.i to i32
  %rem1.i.i = srem i32 %hash.0.lcssa.i.i, %conv.i
  %mul.i = shl i32 %rem1.i.i, 3
  %add.i = add i32 %mul.i, 440
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %21, i32 %add.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  %call5 = call fastcc ptr @omfs_scan_list(ptr noundef %3, i64 noundef %23, ptr noundef %5, i32 noundef %7, ptr noundef nonnull %prev)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call5 to i32
  br label %brelse.exit53

if.end9:                                          ; preds = %if.end
  %b_data10 = getelementptr inbounds %struct.buffer_head, ptr %call5, i32 0, i32 5
  %25 = ptrtoint ptr %b_data10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data10, align 4
  %i_sibling = getelementptr inbounds %struct.omfs_inode, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %i_sibling to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_sibling, align 8
  %tobool.not.i = icmp eq ptr %call5, null
  br i1 %tobool.not.i, label %if.end9.brelse.exit_crit_edge, label %if.then.i

if.end9.brelse.exit_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %call5) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end9.brelse.exit_crit_edge
  %29 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %prev, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %30)
  %cmp.not = icmp eq i64 %30, -1
  br i1 %cmp.not, label %if.end18.thread, label %brelse.exit49

if.end18.thread:                                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %arrayidx, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call2.i) #5
  br label %brelse.exit53

brelse.exit49:                                    ; preds = %brelse.exit
  tail call void @__brelse(ptr noundef nonnull %call2.i) #5
  %32 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i, align 4
  %call12 = tail call ptr @omfs_bread(ptr noundef %33, i64 noundef %30) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %brelse.exit49.out_crit_edge, label %if.then20

brelse.exit49.out_crit_edge:                      ; preds = %brelse.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then20:                                        ; preds = %brelse.exit49
  %b_data16 = getelementptr inbounds %struct.buffer_head, ptr %call12, i32 0, i32 5
  %34 = ptrtoint ptr %b_data16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data16, align 4
  %i_sibling17 = getelementptr inbounds %struct.omfs_inode, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %i_sibling17 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %28, ptr %i_sibling17, align 8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call12) #5
  %37 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i, align 4
  %conv = trunc i64 %30 to i32
  %call22 = tail call ptr @omfs_iget(ptr noundef %38, i32 noundef %conv) #5
  %cmp.i50 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then20.brelse.exit53_crit_edge, label %if.then24

if.then20.brelse.exit53_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit53

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mark_inode_dirty(ptr noundef %call22, i32 noundef 7) #5
  tail call void @iput(ptr noundef %call22) #5
  br label %brelse.exit53

brelse.exit53:                                    ; preds = %if.then24, %if.then20.brelse.exit53_crit_edge, %if.end18.thread, %if.then7
  %bh.1 = phi ptr [ %call2.i, %if.then7 ], [ %call12, %if.then20.brelse.exit53_crit_edge ], [ %call12, %if.then24 ], [ %call2.i, %if.end18.thread ]
  %err.0 = phi i32 [ %24, %if.then7 ], [ 0, %if.then20.brelse.exit53_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end18.thread ]
  tail call void @__brelse(ptr noundef nonnull %bh.1) #5
  br label %out

out:                                              ; preds = %brelse.exit53, %brelse.exit49.out_crit_edge, %omfs_get_bucket.exit.out_crit_edge
  %err.1 = phi i32 [ %err.0, %brelse.exit53 ], [ -12, %brelse.exit49.out_crit_edge ], [ -12, %omfs_get_bucket.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prev) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/omfs/dir.c", i32 325, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omfs_is_bad._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omfs_is_bad._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @omfs_dir_inops, !7, !"omfs_dir_inops", i1 false, i1 false}
!7 = !{!"../fs/omfs/dir.c", i32 448, i32 31}
!8 = !{ptr @omfs_dir_operations, !9, !"omfs_dir_operations", i1 false, i1 false}
!9 = !{!"../fs/omfs/dir.c", i32 457, i32 30}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/fs.h", i32 3571, i32 25}
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
