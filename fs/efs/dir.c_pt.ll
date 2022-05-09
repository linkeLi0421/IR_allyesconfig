; ModuleID = '/llk/IR_all_yes/fs/efs/dir.c_pt.bc'
source_filename = "../fs/efs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.dir_context = type { ptr, i64 }
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
%struct.efs_dir = type { i16, i8, i8, [508 x i8] }
%struct.efs_dentry = type { i32, i8, [3 x i8] }

@efs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@efs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @efs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@efs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014efs: %s(): directory size not a multiple of EFS_DIRBSIZE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"efs_readdir\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/efs/dir.c\00", [19 x i8] zeroinitializer }, align 32
@efs_readdir._entry_ptr = internal global ptr @efs_readdir._entry, section ".printk_index", align 4
@efs_readdir._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013efs: %s(): failed to read dir block %d\0A\00", [54 x i8] zeroinitializer }, align 32
@efs_readdir._entry_ptr.5 = internal global ptr @efs_readdir._entry.3, section ".printk_index", align 4
@efs_readdir._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013efs: %s(): invalid directory block\0A\00", [58 x i8] zeroinitializer }, align 32
@efs_readdir._entry_ptr.8 = internal global ptr @efs_readdir._entry.6, section ".printk_index", align 4
@efs_readdir.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"efs\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(): block %d slot %d/%d: inode %u, name \22%s\22, namelen %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"efs: %s(): block %d slot %d/%d: inode %u, name \22%s\22, namelen %u\0A\00", [63 x i8] zeroinitializer }, align 32
@efs_readdir._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014efs: directory entry %d exceeds directory block\0A\00", [45 x i8] zeroinitializer }, align 32
@efs_readdir._entry_ptr.14 = internal global ptr @efs_readdir._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"efs_dir_operations\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 13, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 30, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 48, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 56, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 75, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [16 x i8] c"../fs/efs/dir.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 85, i32 5 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @efs_readdir._entry, ptr @efs_readdir._entry.12, ptr @efs_readdir._entry.3, ptr @efs_readdir._entry.6, ptr @efs_readdir._entry_ptr, ptr @efs_readdir._entry_ptr.14, ptr @efs_readdir._entry_ptr.5, ptr @efs_readdir._entry_ptr.8, ptr @efs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_readdir._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_readdir._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efs_readdir._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  %and = and i64 %3, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %6 = lshr i64 %5, 9
  %conv = trunc i64 %6 to i32
  %7 = trunc i64 %5 to i32
  %conv4 = and i32 %7, 255
  %i_blocks = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %conv5157 = sext i32 %conv to i64
  %8 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv5157)
  %cmp158 = icmp ugt i64 %9, %conv5157
  br i1 %cmp158, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup78.while.body_crit_edge, %while.body.lr.ph
  %block.0160 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc77, %cleanup78.while.body_crit_edge ]
  %slot.0159 = phi i32 [ %conv4, %while.body.lr.ph ], [ 0, %cleanup78.while.body_crit_edge ]
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call7 = tail call i32 @efs_bmap(ptr noundef %1, i32 noundef %block.0160) #3
  %conv8 = sext i32 %call7 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %conv8, i32 noundef %15, i32 noundef 8) #3
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %block.0160) #6
  br label %while.end

if.end17:                                         ; preds = %while.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16657, i16 %19)
  %cmp19.not = icmp eq i16 %19, -16657
  br i1 %cmp19.not, label %for.cond.preheader, label %brelse.exit

for.cond.preheader:                               ; preds = %if.end17
  %slots = getelementptr inbounds %struct.efs_dir, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %slots, align 1
  %conv28154 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0159, i32 %conv28154)
  %cmp29155 = icmp ult i32 %slot.0159, %conv28154
  br i1 %cmp29155, label %for.body.lr.ph, label %for.cond.preheader.cleanup78_crit_edge

for.cond.preheader.cleanup78_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup78

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shl58 = shl i32 %block.0160, 9
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i32
  br label %for.body

brelse.exit:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #6
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  br label %while.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slot.1156 = phi i32 [ %slot.0159, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efs_dir, ptr %17, i32 0, i32 3, i32 %slot.1156
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp32 = icmp eq i8 %23, 0
  br i1 %cmp32, label %for.body.for.inc_crit_edge, label %if.end35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end35:                                         ; preds = %for.body
  %conv31 = zext i8 %23 to i32
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %shl = shl nuw nsw i32 %conv31, 1
  %add.ptr = getelementptr i8, ptr %25, i32 %shl
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %namelen41 = getelementptr inbounds %struct.efs_dentry, ptr %add.ptr, i32 0, i32 1
  %28 = ptrtoint ptr %namelen41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %namelen41, align 4
  %conv42 = zext i8 %29 to i32
  %name = getelementptr inbounds %struct.efs_dentry, ptr %add.ptr, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efs_readdir.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efs_readdir, %if.then49)) #3
          to label %do.end54 [label %if.then49], !srcloc !36

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %slots, align 1
  %conv51 = zext i8 %31 to i32
  %sub = add nsw i32 %conv51, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efs_readdir.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %block.0160, i32 noundef %slot.1156, i32 noundef %sub, i32 noundef %27, ptr noundef %name, i32 noundef %conv42) #3
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool55.not = icmp eq i8 %29, 0
  br i1 %tobool55.not, label %do.end54.for.inc_crit_edge, label %if.end57

do.end54.for.inc_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end57:                                         ; preds = %do.end54
  %or = or i32 %slot.1156, %shl58
  %conv59 = sext i32 %or to i64
  %32 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv59, ptr %pos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %conv42
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp61 = icmp sgt i32 %add, 512
  br i1 %cmp61, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %slot.1156) #6
  br label %for.inc

if.end69:                                         ; preds = %if.end57
  %conv70 = zext i32 %27 to i64
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 8
  %call.i128 = tail call i32 %34(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv42, i64 noundef %conv59, i64 noundef %conv70, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.i = icmp eq i32 %call.i128, 0
  br i1 %cmp.i, label %if.end69.for.inc_crit_edge, label %cleanup78.thread140

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

cleanup78.thread140:                              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  br label %cleanup86

for.inc:                                          ; preds = %if.end69.for.inc_crit_edge, %do.end66, %do.end54.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %slot.1156, 1
  %35 = ptrtoint ptr %slots to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %slots, align 1
  %conv28 = zext i8 %36 to i32
  %cmp29 = icmp ult i32 %inc, %conv28
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.cleanup78_crit_edge

for.inc.cleanup78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup78

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup78:                                        ; preds = %for.inc.cleanup78_crit_edge, %for.cond.preheader.cleanup78_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  %inc77 = add i32 %block.0160, 1
  %conv5 = sext i32 %inc77 to i64
  %37 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_blocks, align 8
  %cmp = icmp ugt i64 %38, %conv5
  br i1 %cmp, label %cleanup78.while.body_crit_edge, label %cleanup78.while.end_crit_edge

cleanup78.while.end_crit_edge:                    ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

cleanup78.while.body_crit_edge:                   ; preds = %cleanup78
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %cleanup78.while.end_crit_edge, %brelse.exit, %do.end14, %if.end.while.end_crit_edge
  %slot.0151 = phi i32 [ %slot.0159, %do.end14 ], [ %slot.0159, %brelse.exit ], [ %conv4, %if.end.while.end_crit_edge ], [ 0, %cleanup78.while.end_crit_edge ]
  %block.0147 = phi i32 [ %block.0160, %do.end14 ], [ %block.0160, %brelse.exit ], [ %conv, %if.end.while.end_crit_edge ], [ %inc77, %cleanup78.while.end_crit_edge ]
  %shl82 = shl i32 %block.0147, 9
  %or83 = add nuw nsw i32 %shl82, %slot.0151
  %conv84 = sext i32 %or83 to i64
  %39 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv84, ptr %pos, align 8
  br label %cleanup86

cleanup86:                                        ; preds = %while.end, %cleanup78.thread140
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efs_lookup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efs_bmap(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @efs_dir_operations, !1, !"efs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/efs/dir.c", i32 13, i32 30}
!2 = !{ptr @efs_dir_inode_operations, !3, !"efs_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/efs/dir.c", i32 19, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/efs/dir.c", i32 30, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @efs_readdir._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @efs_readdir._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/efs/dir.c", i32 48, i32 4}
!12 = !{ptr @efs_readdir._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @efs_readdir._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/efs/dir.c", i32 56, i32 4}
!16 = !{ptr @efs_readdir._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @efs_readdir._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/efs/dir.c", i32 75, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @efs_readdir.__UNIQUE_ID_ddebug234, !19, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/efs/dir.c", i32 85, i32 5}
!25 = !{ptr @efs_readdir._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @efs_readdir._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148491186, i64 2148491191, i64 2148491204, i64 2148491248, i64 2148491282, i64 2148491303}
